/**
 * @file d_a_obj_magLiftRot.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_magLiftRot.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"
#ifdef DEBUG
#include "m_Do/m_Do_hostIO.h"
#endif
#include "d/d_bg_w.h"
#include "SSystem/SComponent/c_math.h"

/* 80C8FBB0-80C8FBBC -00001 000C+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName[3] = {"MagLiftS", "MagLiftM", "MagLiftL"};

/* 80C8E94C-80C8E9E0 0000EC 0094+00 1/1 0/0 0/0 .text            __ct__18daMagLiftRot_HIO_cFv */
daMagLiftRot_HIO_c::daMagLiftRot_HIO_c() {
    mWaitTime = 60;
    mInitSpeed = 0.0f;
    mAcceleration = 0.05f;
    mMaxSpeed = 8.0f;
    mShakeStrength = 200.0f;
    mShakeAmpY = 45.0f;
    mShakeDecay = 0.1f;
    mMaxShakeDecay = 10.0f;
    mMinShakeDecay = 1.0f;
    mMoveStrength = 7.0f;
    mMoveAmpX = 60.0f;
    mMoveAmpZ = 30.0f;
    mMoveDecay = 0.3f;
    mMaxMoveDecay = 30.0f;
    mMinMoveDecay = 1.0f;
}

/* 80C8EA28-80C8EB1C 0001C8 00F4+00 2/2 0/0 0/0 .text            setBaseMtx__14daMagLiftRot_cFv */
void daMagLiftRot_c::setBaseMtx() {
    scale.x = field_0x62c;
    scale.y = 1.0f;
    scale.z = field_0x630;

    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(current.angle.x, current.angle.y, current.angle.z);
    mDoMtx_stack_c::ZXYrotM(field_0x5e6.x, field_0x5e6.y, field_0x5e6.z);
    mDoMtx_stack_c::transM(field_0x5ec.x, field_0x5ec.y, field_0x5ec.z);
    mDoMtx_stack_c::scaleM(scale.x, scale.y, scale.z);

    cXyz dbg_0x8(1.0f, 1.0f, 1.0f);
    mpModel->setBaseScale(dbg_0x8);

    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}


/* ############################################################################################## */
/* 80C8FB18-80C8FB24 000030 000C+00 0/1 0/0 0/0 .rodata          l_bmdIdx */
static int const l_bmdIdx[] = {4, 4, 6};

/* 80C8FB24-80C8FB30 00003C 000C+00 0/1 0/0 0/0 .rodata          l_dzbIdx */
static int const l_dzbIdx[] = {7, 7, 15};

/* 80C8FB30-80C8FB3C 000048 000C+00 2/3 0/0 0/0 .rodata          l_btkIdx */
static int const l_btkIdx[] = {-1, -1, 12};

/* 80C8FB3C-80C8FB48 000054 000C+00 2/3 0/0 0/0 .rodata          l_brkIdx */
static int const l_brkIdx[] = {-1, -1, 9};

/* 80C8EB1C-80C8EC64 0002BC 0148+00 1/0 0/0 0/0 .text            CreateHeap__14daMagLiftRot_cFv */
int daMagLiftRot_c::CreateHeap() {
    J3DModelData* modelData =
        (J3DModelData*)dComIfG_getObjectRes(l_arcName[mType], l_bmdIdx[mType]);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);
    if (mpModel == NULL) {
        return 0;
    }

    if (l_btkIdx[mType] != -1) {
        J3DAnmTextureSRTKey* res =
            (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName[mType], l_btkIdx[mType]);
        mBtk.init(modelData, res, TRUE, J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1);
    }

    if (l_brkIdx[mType] != -1) {
        J3DAnmTevRegKey* res =
            (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName[mType], l_brkIdx[mType]);
        mBrk.init(modelData, res, TRUE, J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1);
    }

    return 1;
}

/* 80C8EC64-80C8EF4C 000404 02E8+00 1/1 0/0 0/0 .text            create__14daMagLiftRot_cFv */
int daMagLiftRot_c::create() {
    fopAcM_SetupActor(this, daMagLiftRot_c);

    mType = 0;

    u8 prm = (fopAcM_GetParam(this) >> 8) & 0xFF;
    if (prm == 0 || prm == 0xFF) {
        mType = (fopAcM_GetParam(this) >> 0x10) & 0xFF;
    }

    int phase = dComIfG_resLoad(&mPhase, l_arcName[mType]);
    if (phase == cPhs_COMPLEATE_e) {
        u32 tmp = 0x1500;
        if (mType == 2) {
            tmp = 0x2500;
        }

        if (MoveBGCreate(l_arcName[mType], l_dzbIdx[mType], dBgS_MoveBGProc_TypicalRotY, tmp,
                         NULL) == cPhs_ERROR_e)
        {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());

        mpBgW->onStickWall();
        mpBgW->onStickRoof();

        field_0x5e1 = fopAcM_GetParam(this) & 0xFF;
        field_0x5e2 = -0x8000;
        field_0x5e4 = 0;

        if (field_0x5e1 == 0) {
            current.angle.y += 0x8000;
        }

        u8 prm = (fopAcM_GetParam(this) >> 8) & 0xFF;
        if (prm == 0 || prm == 0xFF) {
            field_0x62c = 1.0f;
        } else {
            field_0x62c = prm * 0.5f;
        }

        u8 prm2 = (fopAcM_GetParam(this) >> 0x10) & 0xFF;
        if (prm2 == 0 || prm2 == 0xFF) {
            field_0x630 = 1.0f;
        } else if (prm == 0 || prm == 0xFF) {
            field_0x630 = 1.0f;
        } else {
            field_0x630 = prm2 * 0.5f;
        }

        u8 prm3 = (fopAcM_GetParam(this) >> 0x18) & 0xFF;
        setBaseMtx();

        if (prm3 == 0xFF) {
            init_modeWait();
        } else {
            init_modeMoveWait();
        }

        mTimer = 0;
        field_0x5f8 = 0.0f;
        field_0x5e6.x = 0;
        field_0x5e6.y = 0;
        field_0x5e6.z = 0;
        mShakeStrength = 0.0f;
        mMoveStrength = 0.0f;
        field_0x5ec.x = 0.0f;
        field_0x5ec.y = 0.0f;
        field_0x5ec.z = 0.0f;
        mShakeYAmp = 0.0f;
        field_0x600 = 0.0f;
        mShakeDecay = 0.0f;
        mMaxShakeDecay = 0.0f;
        mMinShakeDecay = 0.0f;
        mXMoveAmp = 0.0f;
        mZMoveAmp = 0.0f;
        mMoveDecay = 0.0f;
        mMaxMoveDecay = 0.0f;
        mMinMoveDecay = 0.0f;
    }

    return phase;
}

/* 80C8EF94-80C8F02C 000734 0098+00 1/0 0/0 0/0 .text            Execute__14daMagLiftRot_cFPPA3_A4_f
 */
int daMagLiftRot_c::Execute(Mtx** param_0) {
    moveLift();

    if (l_btkIdx[mType] != -1) {
        mBtk.play();
    }

    if (l_brkIdx[mType] != -1) {
        mBrk.play();
    }

    *param_0 = &mpModel->getBaseTRMtx();
    setBaseMtx();
    return 1;
}

/* 80C8FCCC-80C8FD0C 000014 0040+00 4/4 0/0 0/0 .bss             l_HIO */
static daMagLiftRot_HIO_c l_HIO;

/* 80C8F02C-80C8F264 0007CC 0238+00 1/1 0/0 0/0 .text            moveLift__14daMagLiftRot_cFv */
void daMagLiftRot_c::moveLift() {
    typedef void (daMagLiftRot_c::*modeFunc)();
    static modeFunc mode_proc[] = {&daMagLiftRot_c::modeMove, &daMagLiftRot_c::modeWait,
                                   &daMagLiftRot_c::modeMoveWait};

    (this->*mode_proc[mMode])();

    field_0x5e6.z = mShakeStrength * cM_scos(field_0x5f8 * cM_deg2s(mShakeYAmp));
    cLib_addCalc(&mShakeStrength, 0.0f, mShakeDecay, mMaxShakeDecay, mMinShakeDecay);

    field_0x5ec.x = mMoveStrength * cM_scos(field_0x5f8 * cM_deg2s(mXMoveAmp));
    field_0x5ec.y = mMoveStrength * cM_ssin(field_0x5f8 * cM_deg2s(mZMoveAmp));
    cLib_addCalc(&mMoveStrength, 0.0f, mMoveDecay, mMaxMoveDecay, mMinMoveDecay);

    field_0x5f8 += 1.0f;
}

/* 80C8F264-80C8F4A0 000A04 023C+00 1/1 0/0 0/0 .text            init_modeMove__14daMagLiftRot_cFv
 */
void daMagLiftRot_c::init_modeMove() {
    fopAcM_SetSpeedF(this, l_HIO.mInitSpeed);

    static u32 selLabel[] = {Z2SE_OBJ_MAGNELIFT_TURN_S, Z2SE_OBJ_MAGNELIFT_TURN_M,
                                  Z2SE_OBJ_MAGNELIFT_TURN_L};

    if (mType != 2) {
        mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);

        cXyz sp20(0.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::multVec(&sp20, &sp20);
        sp20 += current.pos;

        mDoAud_seStart(selLabel[mType], &sp20, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    } else {
        mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);

        cXyz sp2C(0.0f, 0.0f, 1515.0f);
        mDoMtx_stack_c::multVec(&sp2C, &sp2C);
        sp2C += current.pos;

        cXyz sp38(0.0f, 0.0f, -1515.0f);
        mDoMtx_stack_c::multVec(&sp38, &sp38);
        sp38 += current.pos;

        mDoAud_seStart(selLabel[mType], &sp2C, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        mDoAud_seStart(selLabel[mType], &sp38, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }

    mMode = 0;
}


/* 80C8F4A0-80C8F538 000C40 0098+00 1/0 0/0 0/0 .text            modeMove__14daMagLiftRot_cFv */
void daMagLiftRot_c::modeMove() {
    cLib_chaseF(&speedF, l_HIO.mMaxSpeed, l_HIO.mAcceleration);

    if (cLib_addCalcAngleS(&current.angle.z, field_0x5e2, 1, fopAcM_GetSpeedF(this) * 182.04445f,
                           1) == 0)
    {
        field_0x5e2 += 0x8000;
        field_0x5e4 = 0;
        init_modeWait();
    }
}


/* 80C8F538-80C8F7CC 000CD8 0294+00 3/3 0/0 0/0 .text            init_modeWait__14daMagLiftRot_cFv
 */
void daMagLiftRot_c::init_modeWait() {
    static u32 selLabel[] = {Z2SE_OBJ_MAGNELIFT_STOP_S, Z2SE_OBJ_MAGNELIFT_STOP_M,
                                  Z2SE_OBJ_MAGNELIFT_STOP_L};
    if (mType != 2) {
        mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);

        cXyz sp20(0.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::multVec(&sp20, &sp20);
        sp20 += current.pos;

        mDoAud_seStart(selLabel[mType], &sp20, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    } else {
        mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);

        cXyz sp2C(0.0f, 0.0f, 1515.0f);
        mDoMtx_stack_c::multVec(&sp2C, &sp2C);
        sp2C += current.pos;

        cXyz sp38(0.0f, 0.0f, -1515.0f);
        mDoMtx_stack_c::multVec(&sp38, &sp38);
        sp38 += current.pos;

        mDoAud_seStart(selLabel[mType], &sp2C, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        mDoAud_seStart(selLabel[mType], &sp38, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }

    mTimer = l_HIO.mWaitTime;
    mShakeStrength = l_HIO.mShakeStrength;
    mShakeYAmp = l_HIO.mShakeAmpY;
    mShakeDecay = l_HIO.mShakeDecay;
    mMaxShakeDecay = l_HIO.mMaxShakeDecay;
    mMinShakeDecay = l_HIO.mMinShakeDecay;
    mMoveStrength = l_HIO.mMoveStrength;
    mXMoveAmp = l_HIO.mMoveAmpX;
    mZMoveAmp = l_HIO.mMoveAmpZ;
    mMoveDecay = l_HIO.mMoveDecay;
    mMaxMoveDecay = l_HIO.mMaxMoveDecay;
    mMinMoveDecay = l_HIO.mMinMoveDecay;
    mMode = 1;
}


/* 80C8F7CC-80C8F804 000F6C 0038+00 1/0 0/0 0/0 .text            modeWait__14daMagLiftRot_cFv */
void daMagLiftRot_c::modeWait() {
    if (mTimer == 0) {
        init_modeMove();
    } else {
        mTimer--;
    }
}

/* 80C8F804-80C8F810 000FA4 000C+00 1/1 0/0 0/0 .text init_modeMoveWait__14daMagLiftRot_cFv */
void daMagLiftRot_c::init_modeMoveWait() {
    mMode = 2;
}

/* 80C8F810-80C8F86C 000FB0 005C+00 1/0 0/0 0/0 .text            modeMoveWait__14daMagLiftRot_cFv */
void daMagLiftRot_c::modeMoveWait() {
    u8 sw_on = fopAcM_isSwitch(this, (fopAcM_GetParam(this) >> 0x18) & 0xFF);

    if (sw_on) {
        mTimer = 15;
        init_modeWait();
    }
}

/* 80C8F86C-80C8F970 00100C 0104+00 1/0 0/0 0/0 .text            Draw__14daMagLiftRot_cFv */
int daMagLiftRot_c::Draw() {
    g_env_light.settingTevStruct(0x40, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    J3DModelData* modelData = mpModel->getModelData();
    if (l_btkIdx[mType] != -1) {
        mBtk.entry(modelData);
    }

    if (l_brkIdx[mType] != -1) {
        mBrk.entry(modelData);
    }

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C8F970-80C8F9B0 001110 0040+00 1/0 0/0 0/0 .text            Delete__14daMagLiftRot_cFv */
int daMagLiftRot_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName[mType]);
    return 1;
}

/* 80C8F9B0-80C8F9DC 001150 002C+00 1/0 0/0 0/0 .text daMagLiftRot_Draw__FP14daMagLiftRot_c */
static int daMagLiftRot_Draw(daMagLiftRot_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C8F9DC-80C8F9FC 00117C 0020+00 1/0 0/0 0/0 .text daMagLiftRot_Execute__FP14daMagLiftRot_c */
static int daMagLiftRot_Execute(daMagLiftRot_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C8F9FC-80C8FA1C 00119C 0020+00 1/0 0/0 0/0 .text daMagLiftRot_Delete__FP14daMagLiftRot_c */
static int daMagLiftRot_Delete(daMagLiftRot_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C8FA1C-80C8FA3C 0011BC 0020+00 1/0 0/0 0/0 .text            daMagLiftRot_Create__FP10fopAc_ac_c
 */
static int daMagLiftRot_Create(fopAc_ac_c* i_this) {
    return static_cast<daMagLiftRot_c*>(i_this)->create();
}

/* 80C8FC1C-80C8FC3C -00001 0020+00 1/0 0/0 0/0 .data            l_daMagLiftRot_Method */
static actor_method_class l_daMagLiftRot_Method = {
    (process_method_func)daMagLiftRot_Create,
    (process_method_func)daMagLiftRot_Delete,
    (process_method_func)daMagLiftRot_Execute,
    0,
    (process_method_func)daMagLiftRot_Draw,
};

/* 80C8FC3C-80C8FC6C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_MagLiftRot */
extern actor_process_profile_definition g_profile_Obj_MagLiftRot = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_MagLiftRot,    // mProcName
  &g_fpcLf_Method.base,  // sub_method
  0x00000634,             // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  493,                    // mPriority
  &l_daMagLiftRot_Method, // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
