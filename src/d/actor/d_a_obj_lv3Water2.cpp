/**
 * @file d_a_obj_lv3Water2.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv3Water2.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_msg_mng.h"
#include "m_Do/m_Do_graphic.h"

struct daLv3Water2_HIO_c : public mDoHIO_entry_c {
    /* 80C5A40C */ daLv3Water2_HIO_c();
    /* 80C5B14C */ ~daLv3Water2_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x04 */ u8 mLevelControlWaitFrames;
};

typedef void (daLv3Water2_c::*actionFunc)(void);

static int daLv3Water2_Draw(daLv3Water2_c* i_this);
static int daLv3Water2_Execute(daLv3Water2_c* i_this);
static int daLv3Water2_Delete(daLv3Water2_c* i_this);
static int daLv3Water2_Create(fopAc_ac_c* i_this);

static daLv3Water2_HIO_c l_HIO;

/* 80C5A40C-80C5A430 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__17daLv3Water2_HIO_cFv */
daLv3Water2_HIO_c::daLv3Water2_HIO_c() {
    mLevelControlWaitFrames = 0;
}

#ifdef DEBUG
void daLv3Water2_HIO_c::genMessage(JORMContext* ctx) {
    ctx->genSlider("wait time", &mLevelControlWaitFrames, 0, 255, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
}
#endif

/* 80C5B3C4-80C5B3C8 -00001 0004+00 3/3 0/0 0/0 .data            l_resNameIdx */
static char* l_resNameIdx[] = {"Kr03wat04"};

/* 80C5B3E0-80C5B3F8 00003C 0018+00 1/2 0/0 0/0 .data            l_mode_func */
static actionFunc l_mode_func[] = {
    &daLv3Water2_c::mode_proc_wait, &daLv3Water2_c::mode_proc_levelCtrl 
};

/* 80C5B3F8-80C5B418 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv3Water2_Method */
static actor_method_class l_daLv3Water2_Method = {
    (process_method_func)daLv3Water2_Create,
    (process_method_func)daLv3Water2_Delete,
    (process_method_func)daLv3Water2_Execute,
    0,
    (process_method_func)daLv3Water2_Draw,
};

/* 80C5B418-80C5B448 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv3Water2 */
extern actor_process_profile_definition g_profile_Obj_Lv3Water2 = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv3Water2,     // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daLv3Water2_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  617,                    // mPriority
  &l_daLv3Water2_Method,  // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C5A478-80C5A4F8 000158 0080+00 2/2 0/0 0/0 .text            setBaseMtx__13daLv3Water2_cFv */
void daLv3Water2_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);

    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* ############################################################################################## */
/* 80C5B364-80C5B368 000000 0004+00 3/3 0/0 0/0 .rodata          l_bmdIdx */
static const int l_bmdIdx[] = {5};

/* 80C5B368-80C5B36C 000004 0004+00 1/1 0/0 0/0 .rodata          l_dzbIdx */
static const int l_dzbIdx[] = {13};

/* 80C5B36C-80C5B370 000008 0004+00 0/1 0/0 0/0 .rodata          l_btkIdx */
static const int l_btkIdx[] = {9};

/* 80C5A4F8-80C5A5E4 0001D8 00EC+00 1/0 0/0 0/0 .text            CreateHeap__13daLv3Water2_cFv */
int daLv3Water2_c::CreateHeap() {
    J3DModelData* modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_resNameIdx[mResourceIndex], l_bmdIdx[mResourceIndex]));
    JUT_ASSERT(171, modelData != 0);
    mpModel = mDoExt_J3DModel__create(modelData, (1 << 19), 0x19000284);
    if(!mpModel)
        return 0;

    int res = mWaterSurfaceRefractionAnm.init(modelData, static_cast<J3DAnmTextureSRTKey*>(dComIfG_getObjectRes(l_resNameIdx[mResourceIndex], l_btkIdx[mResourceIndex])), 1, 2, 1.0f, 0, -1);
    JUT_ASSERT(188, res == 1);

    return 1;
}

/* 80C5A5E4-80C5A7FC 0002C4 0218+00 1/1 0/0 0/0 .text            create__13daLv3Water2_cFv */
cPhs__Step daLv3Water2_c::create() {
    fopAcM_SetupActor(this, daLv3Water2_c);
    mResourceIndex = getParam(0, 4);

    cPhs__Step resPhase = static_cast<cPhs__Step>(dComIfG_resLoad(&mPhase, l_resNameIdx[mResourceIndex]));
    if(resPhase == cPhs_COMPLEATE_e) {
        if(MoveBGCreate(l_resNameIdx[mResourceIndex], l_dzbIdx[mResourceIndex], NULL, 0x2D00, NULL) == cPhs_ERROR_e)
            return cPhs_ERROR_e;

        mEastSwInitialStatus = fopAcM_isSwitch(this, getParamSw1());
        mWestSwInitialStatus = fopAcM_isSwitch(this, getParamSw2());

        setBaseMtx();
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());

        if(mEastSwInitialStatus)
            current.pos.y = home.pos.y + getParamLevel1() * 5.0f;

        if(mWestSwInitialStatus)
            current.pos.y = home.pos.y + getParamLevel1() * 5.0f + getParamLevel1() * 5.0f;

        mMode = WAIT;

        // "LV3 Water surface (2SW)"
        #ifdef DEBUG
        l_HIO.entryHIO("ＬＶ３水面(2SW)");
        #endif
    }

    return resPhase;
}

/* 80C5A844-80C5AC10 000524 03CC+00 1/0 0/0 0/0 .text            Execute__13daLv3Water2_cFPPA3_A4_f
 */
int daLv3Water2_c::Execute(Mtx** i_mtx) {
    mWaterSurfaceRefractionAnm.play();

    eventUpdate();

    mEastSwCurrentStatus = fopAcM_isSwitch(this, getParamSw1());
    mWestSwCurrentStatus = fopAcM_isSwitch(this, getParamSw2());

    (this->*l_mode_func[mMode])();

    if(fopAcM_isSwitch(this, 0xE)) {
        mEastWaterParticles[0] = dComIfGp_particle_set(mEastWaterParticles[0], 0x8AAC, &current.pos, NULL, NULL);
        mEastWaterParticles[1] = dComIfGp_particle_set(mEastWaterParticles[1], 0x8AAD, &current.pos, NULL, NULL);
        mEastWaterParticles[2] = dComIfGp_particle_set(mEastWaterParticles[2], 0x8AAE, &current.pos, NULL, NULL);
        mEastWaterParticles[3] = dComIfGp_particle_set(mEastWaterParticles[3], 0x8AAF, &current.pos, NULL, NULL);
    }

    if(fopAcM_isSwitch(this, 0xF)) {
        mWestWaterParticles[0] = dComIfGp_particle_set(mWestWaterParticles[0], 0x8AA8, &current.pos, NULL, NULL);
        mWestWaterParticles[1] = dComIfGp_particle_set(mWestWaterParticles[1], 0x8AA9, &current.pos, NULL, NULL);
        mWestWaterParticles[2] = dComIfGp_particle_set(mWestWaterParticles[2], 0x8AAA, &current.pos, NULL, NULL);
        mWestWaterParticles[3] = dComIfGp_particle_set(mWestWaterParticles[3], 0x8AAB, &current.pos, NULL, NULL);
    }

    *i_mtx = &mpModel->getBaseTRMtx();
    setBaseMtx();

    return 1;
}

/* 80C5AC10-80C5ACB8 0008F0 00A8+00 1/0 0/0 0/0 .text            mode_proc_wait__13daLv3Water2_cFv
 */
void daLv3Water2_c::mode_proc_wait() {
    if(mEastSwInitialStatus != mEastSwCurrentStatus) {
        if(getParamEvent() != 0xFF)
            orderEvent(getParamEvent(), 0xFF, 1);
        else
            eventStart();
    }
    else if(mWestSwInitialStatus != mWestSwCurrentStatus) {
        if(getParamEvent2() != 0xFF)
            orderEvent(getParamEvent2(), 0xFF, 1);
        else
            eventStart();
    }
}

/* 80C5ACB8-80C5ACE4 000998 002C+00 1/1 0/0 0/0 .text mode_init_levelCtrl__13daLv3Water2_cFv */
void daLv3Water2_c::mode_init_levelCtrl() {
    mCurrentWaterLvFrame = 0;
    mLevelControlWaitFrames = l_HIO.mLevelControlWaitFrames;
    mBaseYPos = current.pos.y;
    mMode = LEVEL_CTRL;
}

/* 80C5ACE4-80C5ADA4 0009C4 00C0+00 1/0 0/0 0/0 .text mode_proc_levelCtrl__13daLv3Water2_cFv */
void daLv3Water2_c::mode_proc_levelCtrl() {
    if(mLevelControlWaitFrames) {
        mLevelControlWaitFrames--;
    }
    else {
        f32 currentRatio = fopMsgM_valueIncrease(mWaterLvFrame, mCurrentWaterLvFrame, mFullRatio);

        if(!mEastSwInitialStatus)
            currentRatio = 1.0f - currentRatio;

        mCurrentWaterLvFrame++;

        if(mCurrentWaterLvFrame >= mWaterLvFrame) {
            currentRatio = mFullRatio;
            mMode = WAIT;
        }

        current.pos.y = mWaterLv * currentRatio + mBaseYPos;
    }
}

/* 80C5ADA4-80C5AEFC 000A84 0158+00 1/0 0/0 0/0 .text            Draw__13daLv3Water2_cFv */
int daLv3Water2_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    J3DModelData* modelData = mpModel->getModelData();
    mWaterSurfaceRefractionAnm.entry(modelData);
    J3DMaterial* const btkMaterial = modelData->getMaterialNodePointer(0);

    dComIfGd_setListInvisisble();

    if(btkMaterial->getTexGenBlock()->getTexMtx(0)) {
        J3DTexMtxInfo* texMtxInfo = &btkMaterial->getTexGenBlock()->getTexMtx(0)->getTexMtxInfo();
        if(texMtxInfo) {
            Mtx lightProjMtx;
            C_MTXLightPerspective(lightProjMtx, dComIfGd_getView()->fovy, dComIfGd_getView()->aspect, 1.0f, 1.0f, -0.01f, 0);

            #ifdef DEBUG
            mDoGph_gInf_c::setWideZoomLightProjection(lightProjMtx);
            /* TODO: Handle screen capture perspective calculations */
            #endif

            texMtxInfo->setEffectMtx(lightProjMtx);
            modelData->simpleCalcMaterial(const_cast<MtxP>(j3dDefaultMtx));
        }
    }

    mDoExt_modelUpdateDL(mpModel);

    dComIfGd_setList();

    return 1;
}

/* 80C5AEFC-80C5AF3C 000BDC 0040+00 1/0 0/0 0/0 .text            Delete__13daLv3Water2_cFv */
int daLv3Water2_c::Delete() {
    dComIfG_resDelete(&mPhase, l_resNameIdx[mResourceIndex]);

    #ifdef DEBUG
    l_HIO.removeHIO();
    #endif

    return 1;
}

/* 80C5AF3C-80C5B0C0 000C1C 0184+00 2/1 0/0 0/0 .text            eventStart__13daLv3Water2_cFv */
bool daLv3Water2_c::eventStart() {
    if(mEastSwInitialStatus != mEastSwCurrentStatus) {
        mWaterLv = getParamLevel1() * 5.0f;
        mWaterLvFrame = static_cast<u8>(getParamFrame1());
        mFullRatio = mEastSwCurrentStatus;
        mEastSwInitialStatus = mEastSwCurrentStatus;

        mDoAud_seStart(Z2SE_ENV_FILL_UP_LV3WTR1, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }
    else {
        mWaterLv = getParamLevel1() * 5.0f;
        mWaterLvFrame = static_cast<u8>(getParamFrame2());
        mFullRatio = mWestSwCurrentStatus;
        mWestSwInitialStatus = mWestSwCurrentStatus;

        mDoAud_seStart(Z2SE_ENV_FILL_UP_LV3WTR2, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }

    OS_REPORT("== mWaterLv %f mWaterLvFrame %d ==\n", mWaterLv, mWaterLvFrame);

    mode_init_levelCtrl();

    return true;
}

/* 80C5B0C0-80C5B0EC 000DA0 002C+00 1/0 0/0 0/0 .text            daLv3Water2_Draw__FP13daLv3Water2_c
 */
static int daLv3Water2_Draw(daLv3Water2_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C5B0EC-80C5B10C 000DCC 0020+00 1/0 0/0 0/0 .text daLv3Water2_Execute__FP13daLv3Water2_c */
static int daLv3Water2_Execute(daLv3Water2_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C5B10C-80C5B12C 000DEC 0020+00 1/0 0/0 0/0 .text daLv3Water2_Delete__FP13daLv3Water2_c */
static int daLv3Water2_Delete(daLv3Water2_c* i_this) {
    const fpc_ProcID procID = fopAcM_GetID(i_this);
    return i_this->MoveBGDelete();
}

/* 80C5B12C-80C5B14C 000E0C 0020+00 1/0 0/0 0/0 .text            daLv3Water2_Create__FP10fopAc_ac_c
 */
static int daLv3Water2_Create(fopAc_ac_c* i_this) {
    daLv3Water2_c* const lv3Water2 = static_cast<daLv3Water2_c*>(i_this);
    const fpc_ProcID procID = fopAcM_GetID(i_this);
    return lv3Water2->create();
}
