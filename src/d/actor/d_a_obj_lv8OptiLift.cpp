/**
* @file d_a_obj_lv8OptiLift.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv8OptiLift.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "d/d_bg_w.h"
#include "d/d_com_inf_game.h"
#include "d/d_path.h"

/* 80C8A30C-80C8A368 0000EC 005C+00 1/1 0/0 0/0 .text            __ct__16daOptiLift_HIO_cFv */
daOptiLift_HIO_c::daOptiLift_HIO_c() {
    mStopDisappearTime = 30;
    mStartMoveTime = 30;
    mColorAnmFrame = 30;

    mColorR = 0x03;
    mColorG = 0x96;
    mColorB = 0xFF;

    mLightColorR = 0x03;
    mLightColorG = 0x96;
    mLightColorB = 0xFF;

    mLightRadius = 600.0f;
}

/* 80C8A3B0-80C8A438 000190 0088+00 2/2 0/0 0/0 .text            setBaseMtx__12daOptiLift_cFv */
void daOptiLift_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(current.angle.x, current.angle.y, current.angle.z);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C8B9B0-80C8B9F0 000004 0040+00 1/1 0/0 0/0 .rodata          mSpeed__12daOptiLift_c */
const f32 daOptiLift_c::mSpeed[] = {
    5.0f,       6.6666665f, 8.333333f,  10.0f,      11.666667f, 13.333333f, 15.0f,      16.666666f,
    18.333334f, 20.0f,      21.666666f, 23.333334f, 25.0f,      26.666666f, 28.333334f, 3.3333333f,
};

/* 80C8A438-80C8A500 000218 00C8+00 1/0 0/0 0/0 .text            CreateHeap__12daOptiLift_cFv */
int daOptiLift_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("Lv8Lift", 5);
    JUT_ASSERT(0xC4, modelData != 0);

    mpModel = mDoExt_J3DModel__create(modelData, 0, 0x11000284);
    if (mpModel == NULL) {
        return 0;
    }

    int res = mBtk.init(modelData, (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("Lv8Lift", 8), TRUE,
                        J3DFrameCtrl::EMode_NONE, 1.0f, 0, -1);
    JUT_ASSERT(0xD4, res == 1);
    return 1;
}

/* 80C8BBEC-80C8BC00 000014 0014+00 5/5 0/0 0/0 .bss             l_HIO */
static daOptiLift_HIO_c l_HIO;

/* 80C8A500-80C8A738 0002E0 0238+00 1/1 0/0 0/0 .text            create__12daOptiLift_cFv */
int daOptiLift_c::create() {
    fopAcM_SetupActor(this, daOptiLift_c);

    int phase_state = dComIfG_resLoad(&mPhase, "Lv8Lift");
    if (phase_state == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("Lv8Lift", 11, dBgS_MoveBGProc_TypicalRotY, 0xD20, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }

        mPathID = getPthID();

        dPath* pathp = dPath_GetRoomPath(mPathID, fopAcM_GetRoomNo(this));
        if (pathp == NULL) {
            // "[OptiLift]%d Path could not be found\n"
            OS_REPORT("[光燭台リフト]%d番のパスが見つかりませんでした\n", mPathID);
            return cPhs_INIT_e;
        }

        dPnt* pointp = pathp->m_points;
        current.pos.x = pointp->m_position.x;
        current.pos.y = pointp->m_position.y;
        current.pos.z = pointp->m_position.z;

        mPathDirection = 1;
        mCurrentPoint = 0;
        mMoveSpeed = mSpeed[getMoveSpped()];
        fopAcM_SetSpeedF(this, 0.0f);

        mSwBit = getSw();

        if (mpBgW != NULL) {
            dComIfG_Bgsp().Release(mpBgW);
        }

        mNoRideOffSwTimer = 0;
        mIsSwitch = fopAcM_isSwitch(this, mSwBit);

        init_modeWait();
        field_0x616 = 0;

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());
        setBaseMtx();

        mpBgW->SetRideCallback(rideCallBack);

        lightSet();
        mLightSet = false;

        J3DGXColor* color = mpModel->getModelData()->getMaterialNodePointer(0)->getTevKColor(1);
        color->r = l_HIO.mColorR;
        color->g = l_HIO.mColorG;
        color->b = l_HIO.mColorB;
    }

    return phase_state;
}

/* 80C8A780-80C8A7D0 000560 0050+00 2/2 0/0 0/0 .text            lightSet__12daOptiLift_cFv */
void daOptiLift_c::lightSet() {
    mLight.mPosition = current.pos;
    mLight.mColor.r = l_HIO.mLightColorR;
    mLight.mColor.g = l_HIO.mLightColorG;
    mLight.mColor.b = l_HIO.mLightColorB;
    mLight.mPow = l_HIO.mLightRadius;
    mLight.mFluctuation = 1.0f;
}

/* 80C8A7D0-80C8A7E8 0005B0 0018+00 1/1 0/0 0/0 .text
 * rideCallBack__12daOptiLift_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c */
void daOptiLift_c::rideCallBack(dBgW* i_bgw, fopAc_ac_c* i_this, fopAc_ac_c* i_rideActor) {
    if (fopAcM_GetName(i_rideActor) == PROC_ALINK) {
        ((daOptiLift_c*)i_this)->mPlayerRide = true;
    }
}

/* 80C8A7E8-80C8A848 0005C8 0060+00 1/0 0/0 0/0 .text            Execute__12daOptiLift_cFPPA3_A4_f
 */
int daOptiLift_c::Execute(f32 (**param_0)[3][4]) {
    moveLift();
    lightSet();

    *param_0 = &mpModel->getBaseTRMtx();
    setBaseMtx();

    mPlayerRide = false;
    return 1;
}

/* 80C8A848-80C8AAC4 000628 027C+00 1/1 0/0 0/0 .text            moveLift__12daOptiLift_cFv */
void daOptiLift_c::moveLift() {
    if (mPathID != 0xFF) {
        typedef void (daOptiLift_c::*mode_func)();
        static mode_func mode_proc[] = {
            &daOptiLift_c::modeAcc,  &daOptiLift_c::modeMove,     &daOptiLift_c::modeBrk,
            &daOptiLift_c::modeWait, &daOptiLift_c::modeMoveInit, &daOptiLift_c::modeMoveWait,
            &daOptiLift_c::modeStop, &daOptiLift_c::modeInitSet,  &daOptiLift_c::modeInitSet2,
        };

        if (mPlayerRide != mPrevPlayerRide) {
            if (mIsSwitch && !mPlayerRide) {
                mNoRideOffSwTimer++;
            }

            if (mPlayerRide == true) {
                mNoRideOffSwTimer = 0;
            }
        }

        if (mNoRideOffSwTimer != 0 && !mPlayerRide) {
            mNoRideOffSwTimer++;

            if (mNoRideOffSwTimer == 3) {
                fopAcM_offSwitch(this, mSwBit);
                mNoRideOffSwTimer = 0;
            }
        }

        if (field_0x616 == 0) {
            u8 switch_prev = mIsSwitch;
            mIsSwitch = fopAcM_isSwitch(this, mSwBit);

            if (switch_prev != mIsSwitch) {
                if (mIsSwitch) {
                    mNoRideOffSwTimer = 0;

                    if (mMode == MODE_STOP_e) {
                        if (mpBgW != NULL) {
                            dComIfG_Bgsp().Release(mpBgW);
                        }

                        init_modeInitSet2();
                    } else {
                        init_modeMoveInit();
                    }
                } else {
                    init_modeStop();
                }
            }
        }

        mPrevPlayerRide = mPlayerRide;
        (this->*mode_proc[mMode])();
    }
}

/* 80C8AAC4-80C8AAD0 0008A4 000C+00 2/2 0/0 0/0 .text            init_modeAcc__12daOptiLift_cFv */
void daOptiLift_c::init_modeAcc() {
    mMode = MODE_ACC_e;
}

/* 80C8AAD0-80C8ABB0 0008B0 00E0+00 1/0 0/0 0/0 .text            modeAcc__12daOptiLift_cFv */
void daOptiLift_c::modeAcc() {
    if (cLib_chaseF(&speedF, mMoveSpeed, mMoveSpeed / 30.0f) == 1 || current.pos == mTargetPos) {
        init_modeMove();
    }

    cLib_addCalcPos(&current.pos, mTargetPos, 1.0f, fopAcM_GetSpeedF(this), 0.1f);

    s8 reverb = dComIfGp_getReverb(fopAcM_GetRoomNo(this));
    mDoAud_seStartLevel(Z2SE_OBJ_L8_L_LIFT_MV, &current.pos, fopAcM_GetSpeedF(this), reverb);
}

/* 80C8ABB0-80C8ABBC 000990 000C+00 1/1 0/0 0/0 .text            init_modeMove__12daOptiLift_cFv */
void daOptiLift_c::init_modeMove() {
    mMode = MODE_MOVE_e;
}

/* 80C8ABBC-80C8AED4 00099C 0318+00 1/0 0/0 0/0 .text            modeMove__12daOptiLift_cFv */
void daOptiLift_c::modeMove() {
    cXyz sp54(mPrevTargetPos);
    cXyz sp60(mTargetPos);

    f32 var_f31 = (sp54 - sp60).abs() * 0.3f;
    f32 min = 30.0f;
    f32 max = 300.0f;

    if (var_f31 < min) {
        var_f31 = min;
    }

    if (var_f31 > max) {
        var_f31 = max;
    }

    if (var_f31 > (current.pos - mTargetPos).abs()) {
        init_modeBrk();
    }

    cLib_addCalcPos(&current.pos, mTargetPos, 1.0f, fopAcM_GetSpeedF(this), 0.1f);

    s8 reverb = dComIfGp_getReverb(fopAcM_GetRoomNo(this));
    mDoAud_seStartLevel(Z2SE_OBJ_L8_L_LIFT_MV, &current.pos, fopAcM_GetSpeedF(this), reverb);
}

/* 80C8AED4-80C8AEE0 000CB4 000C+00 1/1 0/0 0/0 .text            init_modeBrk__12daOptiLift_cFv */
void daOptiLift_c::init_modeBrk() {
    mMode = MODE_BRK_e;
}

/* 80C8AEE0-80C8B100 000CC0 0220+00 1/0 0/0 0/0 .text            modeBrk__12daOptiLift_cFv */
void daOptiLift_c::modeBrk() {
    cXyz prev_pos(current.pos);

    f32 dist_to_target =
        cLib_addCalcPos(&current.pos, mTargetPos, 0.1f, fopAcM_GetSpeedF(this), 0.5f);

    f32 var_f30 = (prev_pos - current.pos).abs();
    s8 reverb = dComIfGp_getReverb(fopAcM_GetRoomNo(this));
    mDoAud_seStartLevel(Z2SE_OBJ_L8_L_LIFT_MV, &current.pos, var_f30, reverb);

    if (dist_to_target == 0.0f) {
        fopAcM_SetSpeedF(this, 0.0f);
        setNextPoint();

        if (mCurrentPoint != -1) {
            init_modeAcc();
        } else {
            init_modeStop();
        }
    }
}

/* 80C8B100-80C8B1B0 000EE0 00B0+00 2/2 0/0 0/0 .text            init_modeMoveInit__12daOptiLift_cFv
 */
void daOptiLift_c::init_modeMoveInit() {
    if (mpBgW != NULL) {
        dComIfG_Bgsp().Regist(mpBgW, this);
    }

    mBtk.setPlaySpeed(1.0f);

    s8 reverb = dComIfGp_getReverb(fopAcM_GetRoomNo(this));
    mDoAud_seStart(Z2SE_OBJ_L8_L_LIFT_ON, &current.pos, 0, reverb);

    mMode = MODE_MOVE_INIT_e;
}

/* 80C8B1B0-80C8B1F0 000F90 0040+00 1/0 0/0 0/0 .text            modeMoveInit__12daOptiLift_cFv */
void daOptiLift_c::modeMoveInit() {
    if (mBtk.play() == TRUE) {
        init_modeMoveWait();
    }
}

/* 80C8B1F0-80C8B230 000FD0 0040+00 1/1 0/0 0/0 .text            init_modeMoveWait__12daOptiLift_cFv
 */
void daOptiLift_c::init_modeMoveWait() {
    dKy_plight_set(&mLight);
    mLightSet = true;
    mMode = MODE_MOVE_WAIT_e;
}

/* 80C8B230-80C8B288 001010 0058+00 1/0 0/0 0/0 .text            modeMoveWait__12daOptiLift_cFv */
void daOptiLift_c::modeMoveWait() {
    if (mPlayerRide) {
        setNextPoint();

        if (mCurrentPoint != -1) {
            init_modeAcc();
        } else {
            init_modeStop();
        }
    }
}

/* 80C8B288-80C8B294 001068 000C+00 2/2 0/0 0/0 .text            init_modeWait__12daOptiLift_cFv */
void daOptiLift_c::init_modeWait() {
    mMode = MODE_WAIT_e;
}

/* 80C8B294-80C8B298 001074 0004+00 1/0 0/0 0/0 .text            modeWait__12daOptiLift_cFv */
void daOptiLift_c::modeWait() {}

/* 80C8B298-80C8B318 001078 0080+00 3/3 0/0 0/0 .text            init_modeStop__12daOptiLift_cFv */
void daOptiLift_c::init_modeStop() {
    if (getArg1() != 0xF) {
        field_0x616 = 1;
    }

    if (mLightSet) {
        dKy_plight_cut(&mLight);
        mLightSet = false;
    }

    mStopDisappearTimer = l_HIO.mStopDisappearTime;
    mBtk.setPlaySpeed(-1.0f);
    mMode = MODE_STOP_e;
}

/* 80C8B318-80C8B428 0010F8 0110+00 1/0 0/0 0/0 .text            modeStop__12daOptiLift_cFv */
void daOptiLift_c::modeStop() {
    if (mStopDisappearTimer != 0) {
        mStopDisappearTimer--;
    } else {
        BOOL btk_play = mBtk.play();

        f32 var_f31 = (mBtk.getStartFrame() - 1.0f) + 20.0f;
        if (mBtk.getFrame() <= var_f31 && mpBgW != NULL && mpBgW->ChkUsed()) {
            dComIfG_Bgsp().Release(mpBgW);
        }

        if (btk_play == TRUE) {
            fopAcM_offSwitch(this, mSwBit);
            mIsSwitch = fopAcM_isSwitch(this, mSwBit);
            init_modeInitSet();
        }
    }
}

/* 80C8B428-80C8B464 001208 003C+00 1/1 0/0 0/0 .text            init_modeInitSet__12daOptiLift_cFv
 */
void daOptiLift_c::init_modeInitSet() {
    liftReset();
    field_0x616 = 0;
    mMode = MODE_INIT_SET_e;
}

/* 80C8B464-80C8B484 001244 0020+00 1/0 0/0 0/0 .text            modeInitSet__12daOptiLift_cFv */
void daOptiLift_c::modeInitSet() {
    init_modeWait();
}

/* 80C8B484-80C8B4B8 001264 0034+00 1/1 0/0 0/0 .text            init_modeInitSet2__12daOptiLift_cFv
 */
void daOptiLift_c::init_modeInitSet2() {
    liftReset();
    mMode = MODE_INIT_SET2_e;
}

/* 80C8B4B8-80C8B4D8 001298 0020+00 1/0 0/0 0/0 .text            modeInitSet2__12daOptiLift_cFv */
void daOptiLift_c::modeInitSet2() {
    init_modeMoveInit();
}

/* 80C8B4D8-80C8B53C 0012B8 0064+00 2/2 0/0 0/0 .text            liftReset__12daOptiLift_cFv */
void daOptiLift_c::liftReset() {
    dPath* pathp = dPath_GetRoomPath(mPathID, fopAcM_GetRoomNo(this));
    dPnt* pointp = pathp->m_points;

    current.pos.x = pointp->m_position.x;
    current.pos.y = pointp->m_position.y;
    current.pos.z = pointp->m_position.z;

    mPathDirection = 1;
    mCurrentPoint = 0;
}

/* 80C8B53C-80C8B66C 00131C 0130+00 2/2 0/0 0/0 .text            setNextPoint__12daOptiLift_cFv */
void daOptiLift_c::setNextPoint() {
    s16 next_point = mCurrentPoint + mPathDirection;
    dPath* pathp = dPath_GetRoomPath(mPathID, fopAcM_GetRoomNo(this));

    if (dPath_ChkClose(pathp)) {
        if (next_point > pathp->m_num - 1) {
            next_point = 0;
        } else if (next_point < 0) {
            next_point = (s8)(pathp->m_num - 1);
        }
    } else {
        if (next_point > pathp->m_num - 1) {
            mPathDirection = -1;
            next_point = -1;
        } else if (next_point < 0) {
            mPathDirection = 1;
            next_point = 1;
        } else {
            dPnt* pointp = &pathp->m_points[mCurrentPoint];
            if (pointp->mArg0 == 0) {
                next_point = mCurrentPoint;
            }
        }
    }

    if (next_point != -1) {
        mPrevTargetPos = mTargetPos;

        dPnt* pointp = &pathp->m_points[next_point];
        mTargetPos.x = pointp->m_position.x;
        mTargetPos.y = pointp->m_position.y;
        mTargetPos.z = pointp->m_position.z;
    }

    mCurrentPoint = next_point;
}

/* 80C8B66C-80C8B824 00144C 01B8+00 1/0 0/0 0/0 .text            Draw__12daOptiLift_cFv */
int daOptiLift_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    J3DModelData* modelData = mpModel->getModelData();
    J3DMaterial* materialp = modelData->getMaterialNodePointer(0);

    dComIfGd_setListDarkBG();

    if (materialp->getTexGenBlock()->getTexMtx(1) != NULL) {
        J3DTexMtxInfo* mtx_info = &materialp->getTexGenBlock()->getTexMtx(1)->getTexMtxInfo();
        if (mtx_info != NULL) {
            Mtx m;
            C_MTXLightOrtho(m, 100.0f, -100.0f, -100.0f, 100.0f, 1.0f, 1.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::XrotS(0x4000);
            mDoMtx_stack_c::transM(-current.pos.x, -current.pos.y, -current.pos.z);
            cMtx_concat(m, mDoMtx_stack_c::get(), mtx_info->mEffectMtx);
        }
    }

    mBtk.entry(modelData);
    mDoExt_modelUpdateDL(mpModel);
    mBtk.remove(modelData);

    dComIfGd_setList();

    J3DGXColor* color = materialp->getTevKColor(1);
    color->r = l_HIO.mColorR;
    color->g = l_HIO.mColorG;
    color->b = l_HIO.mColorB;
    return 1;
}

/* 80C8B824-80C8B874 001604 0050+00 1/0 0/0 0/0 .text            Delete__12daOptiLift_cFv */
int daOptiLift_c::Delete() {
    dComIfG_resDelete(&mPhase, "Lv8Lift");
    if (mLightSet) {
        dKy_plight_cut(&mLight);
    }

    return 1;
}

/* 80C8B874-80C8B8A0 001654 002C+00 1/0 0/0 0/0 .text            daOptiLift_Draw__FP12daOptiLift_c
 */
static int daOptiLift_Draw(daOptiLift_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C8B8A0-80C8B8C0 001680 0020+00 1/0 0/0 0/0 .text daOptiLift_Execute__FP12daOptiLift_c */
static int daOptiLift_Execute(daOptiLift_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C8B8C0-80C8B8E0 0016A0 0020+00 1/0 0/0 0/0 .text            daOptiLift_Delete__FP12daOptiLift_c
 */
static int daOptiLift_Delete(daOptiLift_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C8B8E0-80C8B900 0016C0 0020+00 1/0 0/0 0/0 .text            daOptiLift_Create__FP10fopAc_ac_c
 */
static int daOptiLift_Create(fopAc_ac_c* i_this) {
    return ((daOptiLift_c*)i_this)->create();
}

/* 80C8BB3C-80C8BB5C -00001 0020+00 1/0 0/0 0/0 .data            l_daOptiLift_Method */
static actor_method_class l_daOptiLift_Method = {
    (process_method_func)daOptiLift_Create,  (process_method_func)daOptiLift_Delete,
    (process_method_func)daOptiLift_Execute, (process_method_func)NULL,
    (process_method_func)daOptiLift_Draw,
};

/* 80C8BB5C-80C8BB8C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv8OptiLift */
extern actor_process_profile_definition g_profile_Obj_Lv8OptiLift = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_Lv8OptiLift,    // mProcName
    &g_fpcLf_Method.base,   // sub_method
    sizeof(daOptiLift_c),    // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    643,                     // mPriority
    &l_daOptiLift_Method,    // sub_method
    0x00040100,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
