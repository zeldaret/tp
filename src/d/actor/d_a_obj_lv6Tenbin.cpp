/**
 * @file d_a_obj_lv6Tenbin.cpp
 *
 */

#include "d/dolzel_rel.h"  // IWYU pragma: keep
#include "d/actor/d_a_obj_lv6Tenbin.h"
#include "d/actor/d_a_cstatue.h"
#include "d/actor/d_a_player.h"

//
// Declarations:
//

/* 80C768EC-80C76988 0000EC 009C+00 1/1 0/0 0/0 .text            __ct__14daTenbin_HIO_cFv */
daTenbin_HIO_c::daTenbin_HIO_c() {
    mPlateSpacing = 480.0f;
    mFallAmount = 160.0f;
    mPlateYAngle = 0.0f;
    mXAmplitude = 45.0f;
    mZAmplitude = 45.0f;
    mShakeStrength = 50.0f;
    mShakeDamping = 0.06f;
    mXZMaximumChange = 5.0f;
    mXZMinimumChange = 1.0f;
    field_0x2C = 90.0f;
    mYAmplitude = 30.0f;
    mMovementStrength = 10.0f;
    mRotationDamping = 0.01f;
    mYMaximumChange = 5.0f;
    mYMinimumChange = 0.3f;
    mWaitTime = 15;
}

#if DEBUG
void daTenbin_HIO_c::genMessage(JORMContext* context) {
    context->genSlider("台の間隔", &mPlateSpacing, 0.0f, 10000.0f, 0, NULL, -1, -1, 0x200, 0x18);
    context->genSlider("下がる量", &mFallAmount, 0.0f, 1000.0f, 0, NULL, -1, -1, 0x200, 0x18);
    context->genSlider("皿のYangle", &mPlateYAngle, 0.0f, 90.0f, 0, NULL, -1, -1, 0x200, 0x18);
    context->genSlider("WaitTime", &mWaitTime, 0, 255, 0, NULL, -1, -1, 0x200, 0x18);
    context->genLabel("\n====揺れ====", 0, 0, NULL, -1, -1, 0x200, 0x18);
    context->genLabel("--- Ｘ，Ｚ回転 ---", 0, 0, NULL, -1, -1, 0x200, 0x18);
    context->genSlider("振幅Ｘ", &mXAmplitude, 0.0f, 180.0f, 0, NULL, -1, -1, 0x200, 0x18);
    context->genSlider("振幅Ｚ", &mZAmplitude, 0.0f, 180.0f, 0, NULL, -1, -1, 0x200, 0x18);
    context->genSlider("揺れ強さ", &mShakeStrength, 0.0f, 10000.0f, 0, NULL, -1, -1, 0x200, 0x18);
    context->genSlider("揺れ減衰", &mShakeDamping, 0.0f, 1.0f, 0, NULL, -1, -1, 0x200, 0x18);
    context->genSlider("最大減衰量", &mXZMaximumChange, 0.0f, 100.0f, 0, NULL, -1, -1, 0x200, 0x18);
    context->genSlider("最小減衰量", &mXZMinimumChange, 0.0f, 100.0f, 0, NULL, -1, -1, 0x200, 0x18);
    context->genLabel("--- Ｙ移動 ---", 0, 0, NULL, -1, -1, 0x200, 0x18);
    context->genSlider("振幅Ｙ", &mYAmplitude, 0.0f, 180.0f, 0, NULL, -1, -1, 0x200, 0x18);
    context->genSlider("移動強さ", &mMovementStrength, 0.0f, 10000.0f, 0, NULL, -1, -1, 0x200,
                       0x18);
    context->genSlider("揺れ減衰", &mRotationDamping, 0.0f, 1.0f, 0, NULL, -1, -1, 0x200, 0x18);
    context->genSlider("最大減衰量", &mYMaximumChange, 0.0f, 100.0f, 0, NULL, -1, -1, 0x200, 0x18);
    context->genSlider("最小減衰量", &mYMinimumChange, 0.0f, 100.0f, 0, NULL, -1, -1, 0x200, 0x18);
}
#endif

/* 80C77A08-80C77A20 000000 0018+00 2/2 0/0 0/0 .data            l_cull_box */
static cull_box l_cull_box = {-300.0f, -500.0f, -400.0f, 1200.0f, 300.0f, 1300.0f};

/* 80C77ADC-80C77B20 000014 0044+00 5/5 0/0 0/0 .bss             l_HIO */
static daTenbin_HIO_c l_HIO;

/* 80C769D0-80C76BCC 0001D0 01FC+00 2/2 0/0 0/0 .text            setBaseMtx__10daTenbin_cFv */
void daTenbin_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::transM(l_HIO.mPlateSpacing, field_0x5BC, 0.0f);
    mDoMtx_stack_c::ZXYrotM(0, cM_deg2s(l_HIO.mPlateYAngle), 0);
    mDoMtx_stack_c::ZXYrotM(field_0x5D4.x, field_0x5D4.y, field_0x5D4.z);
    mDoMtx_stack_c::transM(field_0x5F4.x, field_0x5F4.y, field_0x5F4.z);
    mModel1->setBaseScale(scale);
    mModel1->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), field_0x620);
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::transM(-l_HIO.mPlateSpacing, field_0x5C0, 0.0f);
    mDoMtx_stack_c::ZXYrotM(0, cM_deg2s(l_HIO.mPlateYAngle), 0);
    mDoMtx_stack_c::ZXYrotM(field_0x5D4.x, field_0x5D4.y, field_0x5D4.z);
    mDoMtx_stack_c::transM(field_0x5F4.x, field_0x5F4.y, field_0x5F4.z);
    mModel2->setBaseScale(scale);
    mModel2->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80C76BCC-80C76D10 0003CC 0144+00 1/0 0/0 0/0 .text            CreateHeap__10daTenbin_cFv */
int daTenbin_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("L6Tenbin", 5);
    JUT_ASSERT(261, modelData != NULL);
    mModel1 = mDoExt_J3DModel__create(modelData, 0, 0x11000084);
    if (mModel1 == NULL) {
        return FALSE;
    }
    modelData = (J3DModelData*)dComIfG_getObjectRes("L6Tenbin", 4);
    JUT_ASSERT(273, modelData != NULL);
    mModel2 = mDoExt_J3DModel__create(modelData, 0, 0x11000084);
    if (mModel2 == NULL) {
        return FALSE;
    }
    mdBgW = new dBgW();
    if (mdBgW != NULL && !mdBgW->Set((cBgD_t*)dComIfG_getObjectRes("L6Tenbin", 8), 1, &field_0x620)) {
        mdBgW->SetCrrFunc(dBgS_MoveBGProc_Typical);
    } else {
        mdBgW = NULL;
        return FALSE;
    }
    return TRUE;
}

/* 80C76D10-80C76EE0 000510 01D0+00 1/1 0/0 0/0 .text            create__10daTenbin_cFv */
int daTenbin_c::create() {
    fopAcM_ct(this, daTenbin_c);
    int phase = dComIfG_resLoad(&mPhase, "L6Tenbin");
    if (phase == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("L6Tenbin", 8, dBgS_MoveBGProc_Typical, 0x6a00, 0) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }
        fopAcM_SetMtx(this, mModel2->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, l_cull_box.min.x, l_cull_box.min.y, l_cull_box.min.z,
                              l_cull_box.max.x, l_cull_box.max.y, l_cull_box.max.y);
        mpBgW->SetRideCallback(rideCallBackLeft);
        mdBgW->SetRideCallback(rideCallBackRight);
        field_0x5B2 = 0;
        field_0x5B4 = 0;
        field_0x5B6 = 0;
        field_0x5B8 = 0;
        field_0x650 = -1;
        field_0x5BC = 0.0f;
        field_0x5C0 = 0.0f;
        mUnkFallAmt1 = 0.0f;
        mUnkFallAmt2 = 0.0f;
        field_0x5D4.x = 0;
        field_0x5D4.y = 0;
        field_0x5D4.z = 0;
        mShakeStrength = 0.0f;
        field_0x5F4.x = 0.0f;
        field_0x5F4.y = 0.0f;
        field_0x5F4.z = 0.0f;
        mMovementStrength = 0.0f;
        mZAmplitude = 0.0f;
        mXAmplitude = 0.0f;
        mShakeDamping = 0.0f;
        mXZMaximumChange = 0.0f;
        mXZMinimumChange = 0.0f;
        field_0x600 = 0.0f;
        mYAmplitude = 0.0f;
        mRotationDamping = 0.0f;
        mYMaximumChange = 0.0f;
        mYMinimumChange = 0.0f;
        field_0x618 = true;
        field_0x5D0 = 0;
        setBaseMtx();
        if (mdBgW != NULL) {
            dComIfG_Bgsp().Regist(mdBgW, this);
            mdBgW->Move();
        }
        MoveBGExecute();
        init_modeWait();
#if DEBUG
        l_HIO.entryHIO("天秤");
#endif
    }
    return phase;
}

/* 80C76EE0-80C77078 0006E0 0198+00 1/1 0/0 0/0 .text
 * rideCallBackRight__10daTenbin_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c */
void daTenbin_c::rideCallBackRight(dBgW* i_dBgW, fopAc_ac_c* i_act1, fopAc_ac_c* i_act2) {
    (void)i_dBgW;
    daTenbin_c* i_tenbin = (daTenbin_c*)i_act1;
    daPy_py_c* player = dComIfGp_getLinkPlayer();
    if (fopAcM_GetName(i_act2) == PROC_SPINNER) {
        if (player->checkSpinnerRide()) {
            i_tenbin->field_0x5B2 += 2;
        }
    }
    if (fopAcM_GetName(i_act2) == PROC_ALINK && dComIfGp_checkPlayerStatus0(0, 0x100) == 0) {
        i_tenbin->field_0x5B2 += 2;
        if (player->checkBootsOrArmorHeavy()) {
            i_tenbin->field_0x5B2 += 60000;
        }
        if (player->getGrabActorID() != -1) {
            fopAc_ac_c* found = fopAcM_SearchByID(player->getGrabActorID());
            if (fopAcM_GetName(found) == PROC_CSTATUE) {
                i_tenbin->field_0x5B2++;
                i_tenbin->field_0x650 = fopAcM_GetID(found);
            }
        }
    }
    if (fopAcM_GetName(i_act2) == PROC_CSTATUE) {
        daCstatue_c* i_statue = (daCstatue_c*)i_act2;
        if (i_statue->checkNormalType()) {
            i_tenbin->field_0x5B2 += 4;
        } else if (fopAcM_GetID(i_statue) != i_tenbin->field_0x650) {
            i_tenbin->field_0x5B2++;
        }
    }
}

/* 80C77078-80C77200 000878 0188+00 1/1 0/0 0/0 .text
 * rideCallBackLeft__10daTenbin_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c */
void daTenbin_c::rideCallBackLeft(dBgW* i_dBgW, fopAc_ac_c* i_act1, fopAc_ac_c* i_act2) {
    (void)i_dBgW;
    daTenbin_c* i_tenbin = (daTenbin_c*)i_act1;
    daPy_py_c* player = dComIfGp_getLinkPlayer();
    if (fopAcM_GetName(i_act2) == PROC_SPINNER) {
        if (player->checkSpinnerRide()) {
            i_tenbin->field_0x5B4 += 2;
        }
    }
    if (fopAcM_GetName(i_act2) == PROC_ALINK && dComIfGp_checkPlayerStatus0(0, 0x100) == 0) {
        i_tenbin->field_0x5B4 += 2;
        if (player->checkEquipHeavyBoots()) {
            i_tenbin->field_0x5B4 += 60000;
        }
        if (player->getGrabActorID() != -1) {
            fopAc_ac_c* found = fopAcM_SearchByID(player->getGrabActorID());
            if (fopAcM_GetName(found) == PROC_CSTATUE) {
                i_tenbin->field_0x5B4++;
                i_tenbin->field_0x650 = fopAcM_GetID(found);
            }
        }
    }
    if (fopAcM_GetName(i_act2) == PROC_CSTATUE) {
        daCstatue_c* i_statue = (daCstatue_c*)i_act2;
        if (i_statue->checkNormalType()) {
            i_tenbin->field_0x5B4 += 4;
        } else if (fopAcM_GetID(i_statue) != i_tenbin->field_0x650) {
            i_tenbin->field_0x5B4++;
        }
    }
}

/* 80C77200-80C772BC 000A00 00BC+00 1/0 0/0 0/0 .text            Execute__10daTenbin_cFPPA3_A4_f */
int daTenbin_c::Execute(Mtx** i_pMtx) {
    fopAcM_setCullSizeBox(this, l_cull_box.min.x - l_HIO.mPlateSpacing / 2.0f, l_cull_box.min.y,
                          l_cull_box.min.z, l_cull_box.max.x + l_HIO.mPlateSpacing / 2.0f,
                          l_cull_box.max.y, l_cull_box.max.y);
    procMain();
    setBaseMtx();
    *i_pMtx = &mModel2->getBaseTRMtx();
    if (mdBgW != NULL) {
        mdBgW->Move();
    }
    field_0x5B2 = 0;
    field_0x5B4 = 0;
    field_0x650 = -1;
    return TRUE;
}

/* 80C772BC-80C77464 000ABC 01A8+00 1/1 0/0 0/0 .text            procMain__10daTenbin_cFv */
void daTenbin_c::procMain() {
    typedef void (daTenbin_c::*func_call)(void);
    static const func_call mode_proc[] = {&daTenbin_c::modeWait};
    (this->*mode_proc[mMode])();
    // casts here are necessary to match debug
    field_0x5D4.z = mShakeStrength * cM_scos(field_0x5D0 * (s16)cM_deg2s(mZAmplitude));
    field_0x5D4.x = mShakeStrength * cM_ssin(field_0x5D0 * (s16)cM_deg2s(mXAmplitude));
    cLib_addCalc(&mShakeStrength, 0.0f, mShakeDamping, mXZMaximumChange, mXZMinimumChange);
    field_0x5F4.y = mMovementStrength * cM_ssin(field_0x5D0 * (s16)cM_deg2s(mYAmplitude));
    cLib_addCalc(&mMovementStrength, 0.0f, mRotationDamping, mYMaximumChange, mYMinimumChange);
    field_0x5D0++;
}

/* 80C77464-80C77470 000C64 000C+00 1/1 0/0 0/0 .text            init_modeWait__10daTenbin_cFv */
void daTenbin_c::init_modeWait() {
    mMode = 0;
}

/* 80C77470-80C77668 000C70 01F8+00 1/0 0/0 0/0 .text            modeWait__10daTenbin_cFv */
void daTenbin_c::modeWait() {
    balanceCheck();
    if (mWaitTime == 0) {
        f32 v1 = cLib_addCalc(&field_0x5BC, mUnkFallAmt1, 0.4f, 8.0f, 0.1f);
        f32 v2 = cLib_addCalc(&field_0x5C0, mUnkFallAmt2, 0.4f, 8.0f, 0.1f);
        if (v1 != 0.0f || v2 != 0.0f) {
            mDoAud_seStartLevel(Z2SE_OBJ_L6_BALANCE_MV, &current.pos, 0,
                                dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        }
        if (v1 == 0.0f && v2 == 0.0f && mShakeStrength == 0.0f && !field_0x618) {
            mDoAud_seStart(Z2SE_OBJ_L6_BALANCE_ST, &current.pos, 0,
                           dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            mShakeStrength = l_HIO.mShakeStrength;
            mZAmplitude = l_HIO.mZAmplitude;
            mXAmplitude = l_HIO.mXAmplitude;
            mShakeDamping = l_HIO.mShakeDamping;
            mXZMaximumChange = l_HIO.mXZMaximumChange;
            mXZMinimumChange = l_HIO.mXZMinimumChange;
            mMovementStrength = l_HIO.mMovementStrength;
            field_0x600 = l_HIO.field_0x2C;
            mYAmplitude = l_HIO.mYAmplitude;
            mRotationDamping = l_HIO.mRotationDamping;
            mYMaximumChange = l_HIO.mYMaximumChange;
            mYMinimumChange = l_HIO.mYMinimumChange;
            field_0x618 = true;
        }
    }
    field_0x5B6 = field_0x5B2;
    field_0x5B8 = field_0x5B4;
}

/* 80C77668-80C7772C 000E68 00C4+00 1/1 0/0 0/0 .text            balanceCheck__10daTenbin_cFv */
void daTenbin_c::balanceCheck() {
    if (field_0x5B6 != field_0x5B2 || field_0x5B8 != field_0x5B4) {
        if (field_0x5B2 == field_0x5B4) {
            mUnkFallAmt1 = 0.0f;
            mUnkFallAmt2 = 0.0f;
        } else if (field_0x5B2 > field_0x5B4) {
            mUnkFallAmt1 = -l_HIO.mFallAmount;
            mUnkFallAmt2 = l_HIO.mFallAmount;
        } else if (field_0x5B2 < field_0x5B4) {
            mUnkFallAmt1 = l_HIO.mFallAmount;
            mUnkFallAmt2 = -l_HIO.mFallAmount;
        }
        mWaitTime = l_HIO.mWaitTime;
        mShakeStrength = 0.0f;
        mMovementStrength = 0.0f;
        field_0x618 = false;
    }
    if (mWaitTime != 0) {
        mWaitTime--;
    }
}

/* 80C7772C-80C77810 000F2C 00E4+00 1/0 0/0 0/0 .text            Draw__10daTenbin_cFv */
int daTenbin_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel1, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel2, &tevStr);
    fopAcM_setEffectMtx(this, mModel1->getModelData());
    fopAcM_setEffectMtx(this, mModel2->getModelData());
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mModel1);
    mDoExt_modelUpdateDL(mModel2);
    dComIfGd_setList();
    return TRUE;
}

/* 80C77810-80C77878 001010 0068+00 1/0 0/0 0/0 .text            Delete__10daTenbin_cFv */
int daTenbin_c::Delete() {
    dComIfG_resDelete(&mPhase, "L6Tenbin");
    if (mdBgW != NULL && mdBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mdBgW);
    }
#if DEBUG
    l_HIO.removeHIO();
#endif
    return TRUE;
}

/* 80C77878-80C778A4 001078 002C+00 1/0 0/0 0/0 .text            daTenbin_Draw__FP10daTenbin_c */
static int daTenbin_Draw(daTenbin_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C778A4-80C778C4 0010A4 0020+00 1/0 0/0 0/0 .text            daTenbin_Execute__FP10daTenbin_c */
static int daTenbin_Execute(daTenbin_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C778C4-80C778E4 0010C4 0020+00 1/0 0/0 0/0 .text            daTenbin_Delete__FP10daTenbin_c */
static int daTenbin_Delete(daTenbin_c* i_this) {
    fpc_ProcID id = fopAcM_GetID(i_this);
    return i_this->MoveBGDelete();
}

/* 80C778E4-80C77904 0010E4 0020+00 1/0 0/0 0/0 .text            daTenbin_Create__FP10fopAc_ac_c */
static int daTenbin_Create(fopAc_ac_c* i_this) {
    daTenbin_c* this_tenbin = (daTenbin_c*)i_this;
    fpc_ProcID id = fopAcM_GetID(i_this);
    return this_tenbin->create();
}

/* 80C77A38-80C77A58 -00001 0020+00 1/0 0/0 0/0 .data            l_daTenbin_Method */
static actor_method_class l_daTenbin_Method = {
    (process_method_func)daTenbin_Create,  
    (process_method_func)daTenbin_Delete,
    (process_method_func)daTenbin_Execute, 
    NULL,
    (process_method_func)daTenbin_Draw,
};

/* 80C77A58-80C77A88 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6Tenbin */
extern actor_process_profile_definition g_profile_Obj_Lv6Tenbin = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_Lv6Tenbin,      // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daTenbin_c),      // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    623,                     // mPriority
    &l_daTenbin_Method,      // sub_method
    0x00060100,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
