/**
 * @file d_a_obj_bubblePilar.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_bubblePilar.h"
#include "d/d_com_inf_game.h"
#include "d/d_bg_w.h"

/* 80BC4224-80BC422C 000014 0008+00 1/1 0/0 0/0 .bss             l_HIO */
static daBubbPilar_HIO_c l_HIO;

/* 80BC4070-80BC40A0 000000 0030+00 3/3 0/0 0/0 .rodata          mCcDObjInfo__13daBubbPilar_c */
const dCcD_SrcGObjInf daBubbPilar_c::mCcDObjInfo = {
    {0, {{0, 0, 0}, {0x20, 0x11}, {0}}},
    {dCcD_SE_NONE, 0, 1, 0, 0},
    {dCcD_SE_NONE, 0, 0, 0, 2},
    {0},
};

/* 80BC40DC-80BC4120 000020 0044+00 2/2 0/0 0/0 .data            mCcDCyl__13daBubbPilar_c */
dCcD_SrcCyl daBubbPilar_c::mCcDCyl = {
    daBubbPilar_c::mCcDObjInfo,
    {{0.0f, 0.0f, 0.0f}, 0.0f, 0.0f}
};

/* 80BC33EC-80BC3418 0000EC 002C+00 1/1 0/0 0/0 .text            __ct__17daBubbPilar_HIO_cFv */
daBubbPilar_HIO_c::daBubbPilar_HIO_c() {
    field_0x4 = 20;
    field_0x5 = 0;
}

/* 80BC3460-80BC3518 000160 00B8+00 2/2 0/0 0/0 .text            setBaseMtx__13daBubbPilar_cFv */
void daBubbPilar_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::scaleM(scale.x, scale.y, scale.z);
    cXyz baseScale(1.0f, 1.0f, 1.0f);
    mModels[mModelMode]->setBaseScale(baseScale);
    mModels[mModelMode]->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80BC3518-80BC35D0 000218 00B8+00 1/0 0/0 0/0 .text            CreateHeap__13daBubbPilar_cFv */
int daBubbPilar_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("M_Crack", 4);
    JUT_ASSERT(226, modelData != 0);
    mModels[MODE_WAIT] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mModels[MODE_WAIT] == NULL) {
        return 0;
    }
    modelData = (J3DModelData*)dComIfG_getObjectRes("M_Crack", 5);
    JUT_ASSERT(237, modelData != 0);
    mModels[MODE_EFF_ON] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mModels[MODE_EFF_ON] == NULL) {
        return 0;
    }
    return 1;
}

/* 80BC35D0-80BC3848 0002D0 0278+00 1/1 0/0 0/0 .text            create__13daBubbPilar_cFv */
int daBubbPilar_c::create() {
    fopAcM_SetupActor(this, daBubbPilar_c);
    int rv = dComIfG_resLoad(&mPhase, "M_Crack");
    switch (rv) {
    case cPhs_COMPLEATE_e:
        if (MoveBGCreate("M_Crack", 8, dBgS_MoveBGProc_Typical, 0x1900, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }
        mStts.Init(200, 0xff, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mStts);
        mArg0 = getArg0();
        mSw = getSw();
        if (mArg0 != 0) {
            if (mpBgW != NULL) {
                dComIfG_Bgsp().Release(mpBgW);
            }
            mCyl.OffTgSetBit();
        }
        if (mSw == 0xff) {
            initModeEffOn();
            mModelMode = MODE_EFF_ON;
        } else {
            mIsSw = fopAcM_isSwitch(this, mSw);
            if (mIsSw != 0) {
                initModeEffOn();
                mModelMode = MODE_EFF_ON;
            } else {
                initModeWait();
                mModelMode = MODE_WAIT;
            }
        }
        fopAcM_SetMtx(this, mModels[mModelMode]->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mModels[mModelMode]->getModelData());
        setBaseMtx();
        for (int i = 0; i < 4; i++) {
            mEmitters[i] = NULL;
        }
        rv = cPhs_COMPLEATE_e;
        break;
    }
    return rv;
}

/* 80BC3934-80BC3AB8 000634 0184+00 1/0 0/0 0/0 .text            Execute__13daBubbPilar_cFPPA3_A4_f
 */
int daBubbPilar_c::Execute(Mtx** param_1) {
    static daBubbPilar_c::modeProc const mode_proc[2] = {
        &daBubbPilar_c::modeWait,
        &daBubbPilar_c::modeEffOn,
    };
    if (mSw != 0xff) {
        u8 prevIsSw = mIsSw;
        mIsSw = fopAcM_isSwitch(this, mSw);
        if (prevIsSw != mIsSw) {
            if (mIsSw != 0) {
                initModeEffOn();
            } else {
                initModeWait();
            }
        }
    }
    (this->*(mode_proc[mMode]))();
    if (dKy_camera_water_in_status_check()) {
        for (int i = 0; i < 4; i++) {
            if (mEmitters[i] != NULL) {
                mEmitters[i]->setGlobalAlpha(0xff);
            }
        }
    } else {
        for (int i = 0; i < 4; i++) {
            if (mEmitters[i] != NULL) {
                mEmitters[i]->setGlobalAlpha(0x20);
            }
        }
    }
    *param_1 = &mModels[mModelMode]->getBaseTRMtx();
    setBaseMtx();
    return 1;
}

/* 80BC3AB8-80BC3AC4 0007B8 000C+00 2/2 0/0 0/0 .text            initModeWait__13daBubbPilar_cFv */
void daBubbPilar_c::initModeWait() {
    mMode = 0;
}

/* 80BC3AC4-80BC3C74 0007C4 01B0+00 1/0 0/0 0/0 .text            modeWait__13daBubbPilar_cFv */
void daBubbPilar_c::modeWait() {
    if (mArg0 == 0) {
        s8 reverb = dComIfGp_getReverb(fopAcM_GetRoomNo(this));
        mDoAud_seStartLevel(Z2SE_OBJ_WTR_STREAM_S, &current.pos, 0, reverb);
        mEmitterId = dComIfGp_particle_set(mEmitterId, 0x88bd, &current.pos, &shape_angle, &scale);
        mEmitters[3] = (JPABaseEmitter*)dComIfGp_particle_getEmitter(mEmitterId);
        if (mCyl.ChkTgHit()) {
            if ((mCyl.GetTgHitGObj()->GetAtType() & AT_TYPE_BOMB) != 0) {
                mModelMode = MODE_EFF_ON;
                fopAcM_SetMtx(this, mModels[mModelMode]->getBaseTRMtx());
                fopAcM_setCullSizeBox2(this, mModels[mModelMode]->getModelData());
                fopAcM_onSwitch(this, mSw);
            }
        }
        mCyl.SetR(100.0f);
        mCyl.SetH(100.0f);
        mCyl.SetC(current.pos);
        dComIfG_Ccsp()->Set(&mCyl);
    }
}

/* 80BC3C74-80BC3C98 000974 0024+00 2/2 0/0 0/0 .text            initModeEffOn__13daBubbPilar_cFv */
void daBubbPilar_c::initModeEffOn() {
    if (mArg0 == 0) {
        mCyl.OffTgSetBit();
    }
    mMode = 1;
}

/* 80BC40AC-80BC40B4 00003C 0006+02 0/1 0/0 0/0 .rodata          particle_id$3953 */
static u16 const particle_id[3] = {
    0x88BE,
    0x88BF,
    0x88C0,
};

/* 80BC3C98-80BC3DB0 000998 0118+00 1/0 0/0 0/0 .text            modeEffOn__13daBubbPilar_cFv */
void daBubbPilar_c::modeEffOn() {
    s8 reverb = dComIfGp_getReverb(fopAcM_GetRoomNo(this));
    mDoAud_seStartLevel(Z2SE_OBJ_WTR_STREAM, &current.pos, 0, reverb);
    for (int i = 0; i < 3; i = i + 1) {
        mEmitterIds[i] = dComIfGp_particle_set(
            mEmitterIds[i],
            particle_id[i],
            &current.pos, &shape_angle,
            &scale);
        mEmitters[i] = dComIfGp_particle_getEmitter(mEmitterIds[i]);
    }
}

/* 80BC3DB0-80BC3E8C 000AB0 00DC+00 1/0 0/0 0/0 .text            Draw__13daBubbPilar_cFv */
int daBubbPilar_c::Draw() {
    if (mArg0 == 0) {
        g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(mModels[mModelMode], &tevStr);
        dKy_bg_MAxx_proc(mModels[mModelMode]);
        dComIfGd_setListBG();
        mDoExt_modelUpdateDL(mModels[mModelMode]);
        dComIfGd_setList();
    }
    return 1;
}

/* 80BC3E8C-80BC3EBC 000B8C 0030+00 1/0 0/0 0/0 .text            Delete__13daBubbPilar_cFv */
int daBubbPilar_c::Delete() {
    dComIfG_resDelete(&mPhase, "M_Crack");
    return 1;
}

/* 80BC3EBC-80BC3EE8 000BBC 002C+00 1/0 0/0 0/0 .text            daBubbPilar_Draw__FP13daBubbPilar_c
 */
static int daBubbPilar_Draw(daBubbPilar_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80BC3EE8-80BC3F08 000BE8 0020+00 1/0 0/0 0/0 .text daBubbPilar_Execute__FP13daBubbPilar_c */
static int daBubbPilar_Execute(daBubbPilar_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80BC3F08-80BC3F28 000C08 0020+00 1/0 0/0 0/0 .text daBubbPilar_Delete__FP13daBubbPilar_c */
static int daBubbPilar_Delete(daBubbPilar_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80BC3F28-80BC3F48 000C28 0020+00 1/0 0/0 0/0 .text            daBubbPilar_Create__FP10fopAc_ac_c
 */
static int daBubbPilar_Create(fopAc_ac_c* i_this) {
    return static_cast<daBubbPilar_c*>(i_this)->create();
}

/* 80BC4150-80BC4170 -00001 0020+00 1/0 0/0 0/0 .data            l_daBubbPilar_Method */
static actor_method_class l_daBubbPilar_Method = {
    (process_method_func)daBubbPilar_Create,
    (process_method_func)daBubbPilar_Delete,
    (process_method_func)daBubbPilar_Execute,
    NULL,
    (process_method_func)daBubbPilar_Draw,
};

/* 80BC4170-80BC41A0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_awaPlar */
extern actor_process_profile_definition g_profile_Obj_awaPlar = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_awaPlar,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daBubbPilar_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  659,                    // mPriority
  &l_daBubbPilar_Method,  // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80BC40B4-80BC40B4 000044 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
