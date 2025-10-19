/**
 * @file d_a_obj_lv6FurikoTrap.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep
#include "d/d_s_play.h"

#include "d/actor/d_a_obj_lv6FurikoTrap.h"


/* 80C7248C-80C724C8 0000EC 003C+00 1/1 0/0 0/0 .text            __ct__21daLv6FurikoTrap_HIO_cFv */
daLv6FurikoTrap_HIO_c::daLv6FurikoTrap_HIO_c() {
    mIntervalSeconds = 1.0f;
    mMaxAngle = 45.0f;
    unk10 = 3;
}

#if DEBUG
void daLv6FurikoTrap_HIO_c::genMessage(JORMContext* context) {
    context->genSlider("周期（秒）", &mIntervalSeconds, 0.1f, 100.0f, 0, NULL, -1, -1, 0x200, 0x18);
    context->genSlider("最大角度", &mMaxAngle, 0.1f, 90.0f, 0, NULL, -1, -1, 0x200, 0x18);
}
#endif

static daLv6FurikoTrap_HIO_c l_HIO;

const dCcD_SrcGObjInf daLv6FurikoTrap_c::mCcDObjInfo = {
    {0, {{0x800, 1, 0x1f}, {0, 0}, {0x79}}},
    {1, 0, 1, 0, 1},
    {0xa, 5, 0, 0, 0},
    {0},
};
dCcD_SrcSph daLv6FurikoTrap_c::mCcDSph = {mCcDObjInfo};

/* 80C72510-80C72598 000170 0088+00 2/2 0/0 0/0 .text            setBaseMtx__17daLv6FurikoTrap_cFv */
void daLv6FurikoTrap_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mModel->setBaseScale(scale);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C72598-80C72604 0001F8 006C+00 1/0 0/0 0/0 .text            CreateHeap__17daLv6FurikoTrap_cFv */
int daLv6FurikoTrap_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("L6Furiko", 4);
    JUT_ASSERT(236, modelData != NULL);
    mModel = mDoExt_J3DModel__create(modelData, 0, 0x11000084);
    if (mModel == NULL) {
        return FALSE;
    }
    return TRUE;
}

/* 80C72604-80C727D4 000264 01D0+00 1/1 0/0 0/0 .text            create__17daLv6FurikoTrap_cFv */
int daLv6FurikoTrap_c::create() {
    fopAcM_ct(this, daLv6FurikoTrap_c);
    int phase = dComIfG_resLoad(&mPhase, "L6Furiko");
    if (phase == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("L6Furiko", 7, dBgS_MoveBGProc_TypicalRotY, 0x2e80, NULL) == cPhs_ERROR_e)
        {
            return cPhs_ERROR_e;
        }
        fopAcM_SetMtx(this, mModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mModel->getModelData());
        init_modeMove();
        setBaseMtx();
        mCcStts.Init(0xff, 0, this);
        for (int i = 0; i < 13; i++) {
            mCcSph1[i].Set(mCcDSph);
            mCcSph1[i].SetStts(&mCcStts);
        }
        for (int i = 0; i < 6; i++) {
            mCcSph2[i].Set(mCcDSph);
            mCcSph2[i].SetStts(&mCcStts);
        }
#if DEBUG
        l_HIO.entryHIO("振り子トラップ(Lv6)");
#endif
    }
    return phase;
}

/* 80C729B4-80C72CA8 000614 02F4+00 1/0 0/0 0/0 .text Execute__17daLv6FurikoTrap_cFPPA3_A4_f */
int daLv6FurikoTrap_c::Execute(Mtx** i_pMtx) {
    move();
    *i_pMtx = &mModel->getBaseTRMtx();
    setBaseMtx();
    for (int i = 0; i < 13; i++) {
        cXyz c(0.0f, -850.0f + oREG_F(0), 0.0f);
        mDoMtx_stack_c::ZrotS(cM_deg2s((-21.5f + oREG_F(2)) + i * (3.6f + oREG_F(3))));
        mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
        mDoMtx_stack_c::multVec(&c, &c);
        c += current.pos;
        mCcSph1[i].SetR(30.0f + oREG_F(4));
        mCcSph1[i].SetC(c);
        dComIfG_Ccsp()->Set(&mCcSph1[i]);
        mCcSph1[i].ClrAtHit();
    }
    for (int i = 0; i < 3; i++) {
        static f32 posx[] = {383.0f, 356.0f, 329.0f};
        static f32 posy[] = {-660.0f, -700.0f, -740.0f};
        cXyz c(posx[i] + oREG_F(5), posy[i] + oREG_F(6), 0.0f);
        cXyz c2(-posx[i] + oREG_F(5), posy[i] + oREG_F(6), 0.0f);
        mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);
        mDoMtx_stack_c::multVec(&c, &c);
        mDoMtx_stack_c::multVec(&c2, &c2);
        c += current.pos;
        c2 += current.pos;
        mCcSph2[i].SetR(30.0f + oREG_F(4));
        mCcSph2[i + 3].SetR(30.0f + oREG_F(4));
        mCcSph2[i].SetC(c);
        mCcSph2[i + 3].SetC(c2);
        dComIfG_Ccsp()->Set(&mCcSph2[i]);
        dComIfG_Ccsp()->Set(&mCcSph2[i + 3]);
        mCcSph2[i].ClrAtHit();
    }
    mCcStts.Move();
    return TRUE;
}

/* 80C72CA8-80C72D24 000908 007C+00 1/1 0/0 0/0 .text            move__17daLv6FurikoTrap_cFv */
void daLv6FurikoTrap_c::move() {
    typedef void (daLv6FurikoTrap_c::*func_call)();
    static const func_call mode_proc[] = {
        &daLv6FurikoTrap_c::modeMove
    };
    (this->*mode_proc[mMode])();
}

/* 80C72D24-80C72D38 000984 0014+00 1/1 0/0 0/0 .text init_modeMove__17daLv6FurikoTrap_cFv */
void daLv6FurikoTrap_c::init_modeMove() {
    mAngle = 0;
    mTimer = 0;
    mMode = 0;
}

/* 80C72D38-80C72EE0 000998 01A8+00 1/0 0/0 0/0 .text            modeMove__17daLv6FurikoTrap_cFv */
void daLv6FurikoTrap_c::modeMove() {
    int unused = shape_angle.z;
    mAngleIncrement = cM_deg2s((2.0f * l_HIO.mMaxAngle) / (30.0f * l_HIO.mIntervalSeconds));
    s16 s = cM_deg2s(cM_scos(mAngle) * l_HIO.mMaxAngle);
    shape_angle.z = s;
    mAngle += mAngleIncrement;
    if (std::fabs(cM_scos(mAngle)) > 0.999f && mTimer == 0) {
        mTimer = 3;
        cXyz c(0.0f, -940.0f, 0.0f);
        mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);
        mDoMtx_stack_c::multVec(&c, &c);
        c += current.pos;
        mDoAud_seStart(Z2SE_OBJ_L6_BLADE, &c, (u32)fopAcM_GetSpeedF(this),
                       dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }
    if (mTimer != 0) {
        mTimer--;
    }
}

/* 80C72EE0-80C72F94 000B40 00B4+00 1/0 0/0 0/0 .text            Draw__17daLv6FurikoTrap_cFv */
int daLv6FurikoTrap_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
    fopAcM_setEffectMtx(this, mModel->getModelData());
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mModel);
    dComIfGd_setList();
    return TRUE;
}

/* 80C72F94-80C72FC4 000BF4 0030+00 1/0 0/0 0/0 .text            Delete__17daLv6FurikoTrap_cFv */
int daLv6FurikoTrap_c::Delete() {
    dComIfG_resDelete(&mPhase, "L6Furiko");
#if DEBUG
    l_HIO.removeHIO();
#endif
    return TRUE;
}

/* 80C72FC4-80C72FF0 000C24 002C+00 1/0 0/0 0/0 .text            daLv6FurikoTrap_Draw__FP17daLv6FurikoTrap_c */
static int daLv6FurikoTrap_Draw(daLv6FurikoTrap_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C72FF0-80C73010 000C50 0020+00 1/0 0/0 0/0 .text            daLv6FurikoTrap_Execute__FP17daLv6FurikoTrap_c */
static int daLv6FurikoTrap_Execute(daLv6FurikoTrap_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C73010-80C73030 000C70 0020+00 1/0 0/0 0/0 .text            daLv6FurikoTrap_Delete__FP17daLv6FurikoTrap_c */
static int daLv6FurikoTrap_Delete(daLv6FurikoTrap_c* i_this) {
    fpc_ProcID id = fopAcM_GetID(i_this);
    return i_this->MoveBGDelete();
}

/* 80C73030-80C73050 000C90 0020+00 1/0 0/0 0/0 .text            daLv6FurikoTrap_Create__FP10fopAc_ac_c */
static int daLv6FurikoTrap_Create(fopAc_ac_c* i_this) {
    daLv6FurikoTrap_c* this_trap = (daLv6FurikoTrap_c*)i_this;
    fpc_ProcID id = fopAcM_GetID(i_this);
    return this_trap->create();
}

/* 80C73214-80C73234 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv6FurikoTrap_Method */
static actor_method_class l_daLv6FurikoTrap_Method = {
    (process_method_func)daLv6FurikoTrap_Create,
    (process_method_func)daLv6FurikoTrap_Delete,
    (process_method_func)daLv6FurikoTrap_Execute,
    0,
    (process_method_func)daLv6FurikoTrap_Draw,
};

/* 80C73234-80C73264 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6FuriTrap */
extern actor_process_profile_definition g_profile_Obj_Lv6FuriTrap = {
  fpcLy_CURRENT_e,           // mLayerID
  3,                         // mListID
  fpcPi_CURRENT_e,           // mListPrio
  PROC_Obj_Lv6FuriTrap,      // mProcName
  &g_fpcLf_Method.base,     // sub_method
  sizeof(daLv6FurikoTrap_c), // mSize
  0,                         // mSizeOther
  0,                         // mParameters
  &g_fopAc_Method.base,      // sub_method
  627,                       // mPriority
  &l_daLv6FurikoTrap_Method, // sub_method
  0x00040000,                // mStatus
  fopAc_ACTOR_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,    // cullType
};
