/**
 * @file d_a_obj_lv8Lift.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv8Lift.h"
#include "d/d_com_inf_game.h"
#include "d/d_path.h"
#include "d/d_bg_w.h"

/* 80C8872C-80C88790 0000EC 0064+00 1/1 0/0 0/0 .text            __ct__14daL8Lift_HIO_cFv */
daL8Lift_HIO_c::daL8Lift_HIO_c() {
    mStopDisappearTime = 30;
    mStartMoveTime = 60;
    mColorAnmFrame = 1;

    mColorR = 3;
    mColorG = 150;
    mColorB = 255;

    mLightColorR = 3;
    mLightColorG = 150;
    mLightColorB = 255;

    mLightRadius = 600.0f;
}

/* 80C887D8-80C88860 000198 0088+00 2/2 0/0 0/0 .text            setBaseMtx__10daL8Lift_cFv */
void daL8Lift_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(current.angle.x, current.angle.y, current.angle.z);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::now);
}

/* 80C89F64-80C89FA4 000004 0040+00 0/1 0/0 0/0 .rodata          mSpeed__10daL8Lift_c */
f32 const daL8Lift_c::mSpeed[16] = {
    5.0f, 6.6666665f, 8.333333f, 10.0f, 11.666667f, 13.333333f,
    15.0f, 16.666666f, 18.333334f, 20.0f, 21.666666, 23.333334,
    25.0f, 26.666666f, 28.333334f, 3.3333333f
};

/* 80C88860-80C88928 000220 00C8+00 1/0 0/0 0/0 .text            CreateHeap__10daL8Lift_cFv */
int daL8Lift_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("L8Lift", 5);
    JUT_ASSERT(190, modelData != 0);
    mpModel = mDoExt_J3DModel__create(modelData, 0, 0x11000284);
    if (!mpModel) {
        return 0;
    }

    int res = mBtk.init(modelData, (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("L8Lift", 8),
        1, 0, 1.0f, 0, -1);
    JUT_ASSERT(207, res == 1);

    return 1;
}

/* 80C8A1F4-80C8A208 000014 0014+00 5/5 0/0 0/0 .bss             l_HIO */
static daL8Lift_HIO_c l_HIO;

/* 80C88928-80C88C44 0002E8 031C+00 1/1 0/0 0/0 .text            create__10daL8Lift_cFv */
int daL8Lift_c::create() {
    fopAcM_SetupActor(this, daL8Lift_c);

    int phase_state = dComIfG_resLoad(&mPhase, "L8Lift");
    if (phase_state == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("L8Lift", 11, dBgS_MoveBGProc_TypicalRotY, 0xd40, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }

        mAcchCir.SetWall(100.0f, 150.0f);
        mAcch.Set(&current.pos, &old.pos, this, 1, &mAcchCir, &speed, NULL, NULL);

        mPathID = getPthID();
        dPath* mPath = dPath_GetRoomPath(mPathID, fopAcM_GetRoomNo(this));
        if (!mPath) {
            OS_REPORT("[マグネ岩空中リフト]%d番のパスが見つかりませんでした\n", mPathID);
            return cPhs_INIT_e;
        }

        dPnt* dPnt = mPath->m_points;
        current.pos = dPnt->m_position;
        mPathDirection = 1;
        mCurrentPoint = 0;
        mMoveSpeed = mSpeed[getMoveSpeed()];
        speedF = 0.0f;
        mSwbit = getSw();
        lightSet();
        mLightSet = 0;
        field_0x808 = 1;
        
        if (mSwbit == 0xff) {
            mBtk.setFrame(mBtk.getEndFrame() - 1.0f);
            mLightSet = 1;
            dKy_plight_set(&mLight);
            init_modeWaitInit();
        } else {
            mNoRideOffSwTimer = 0;
            mIsSwitch = fopAcM_isSwitch(this, mSwbit);
            if (mIsSwitch) {
                init_modeOnAnm();
            } else {
                if (mpBgW) {
                    dComIfG_Bgsp().Release(mpBgW);
                }
                field_0x808 = 0;
                init_modeMoveWait();
            }
        }

        setBaseMtx();
        mpBgW->SetRideCallback(rideCallBack);
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());
        
        J3DGXColor* color = mpModel->getModelData()->getMaterialNodePointer(0)->getTevKColor(1);
        color->r = l_HIO.mColorR;
        color->g = l_HIO.mColorG;
        color->b = l_HIO.mColorB;
    }

    return phase_state;
}

/* 80C88D6C-80C88DBC 00072C 0050+00 2/2 0/0 0/0 .text            lightSet__10daL8Lift_cFv */
void daL8Lift_c::lightSet() {
    mLight.mPosition = current.pos;
    mLight.mColor.r = l_HIO.mLightColorR;
    mLight.mColor.g = l_HIO.mLightColorG;
    mLight.mColor.b = l_HIO.mLightColorB;
    mLight.mPow = l_HIO.mLightRadius;
    mLight.mFluctuation = 1.0f;
}

/* 80C88DBC-80C88DD4 00077C 0018+00 1/1 0/0 0/0 .text       rideCallBack__10daL8Lift_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c */
void daL8Lift_c::rideCallBack(dBgW* i_bgw, fopAc_ac_c* i_this, fopAc_ac_c* i_rideActor) {
    if (fopAcM_GetName(i_rideActor) == PROC_ALINK) {
        ((daL8Lift_c*)i_this)->mPlayerRide = true;
    }
}

/* 80C88DD4-80C88E34 000794 0060+00 1/0 0/0 0/0 .text            Execute__10daL8Lift_cFPPA3_A4_f */
int daL8Lift_c::Execute(f32 (**param_1)[3][4]) {
    moveLift();
    lightSet();
    *param_1 = &mpModel->getBaseTRMtx();
    setBaseMtx();
    mPlayerRide = 0;
    return 1;
}

/* 80C88E34-80C890B8 0007F4 0284+00 1/1 0/0 0/0 .text            moveLift__10daL8Lift_cFv */
void daL8Lift_c::moveLift() {
    if (mPathID != 0xff) {
        typedef void (daL8Lift_c::*mode_func)();
        static mode_func mode_proc[] = {
            &daL8Lift_c::modeAcc,  &daL8Lift_c::modeMove,     &daL8Lift_c::modeBrk,
            &daL8Lift_c::modeWait, &daL8Lift_c::modeWaitInit, &daL8Lift_c::modeOnAnm, 
            &daL8Lift_c::modeMoveWait,  &daL8Lift_c::modeStop, &daL8Lift_c::modeInitSet,
            &daL8Lift_c::modeInitSet2
        };

        if (mSwbit != 0xff) {
            if (mPlayerRide != mPrevPlayerRide) {
                if (mIsSwitch && !mPlayerRide) {
                    mNoRideOffSwTimer++;
                }

                if (mPlayerRide == 1) {
                    mNoRideOffSwTimer = 0;
                }
            }

            if (mNoRideOffSwTimer && !mPlayerRide) {
                mNoRideOffSwTimer++;
                if (mNoRideOffSwTimer == 3) {
                    init_modeStop();
                    mNoRideOffSwTimer = 0;
                }
            }

            u8 switch_prev = mIsSwitch;
            mIsSwitch = fopAcM_isSwitch(this, getSw());
            if (switch_prev != mIsSwitch) {
                if (mIsSwitch) {
                    if (mMode == MODE_STOP_e) {
                        if (mpBgW) {
                            dComIfG_Bgsp().Release(mpBgW);
                        }
                    
                        init_modeInitSet();
                    } else {
                        init_modeOnAnm();
                    }
                } else {
                    init_modeStop();
                }
            }

            mPrevPlayerRide = mPlayerRide;
        }
        
        (this->*mode_proc[mMode])();
    }
}

/* 80C890B8-80C89198 000A78 00E0+00 1/0 0/0 0/0 .text            modeAcc__10daL8Lift_cFv */
void daL8Lift_c::modeAcc() {
    int iVar1 = cLib_chaseF(&speedF, mMoveSpeed, mMoveSpeed / 30.0f);
    if (iVar1 == 1 || current.pos == mTargetPos) {
        init_modeMove();
    }
    cLib_addCalcPos(&current.pos, mTargetPos, 1.0f, speedF, 0.1f);
    mDoAud_seStartLevel(Z2SE_OBJ_L8_L_LIFT_MV, &current.pos, fopAcM_GetSpeedF(this), dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
}

/* 80C89198-80C891A4 000B58 000C+00 1/1 0/0 0/0 .text            init_modeMove__10daL8Lift_cFv */
void daL8Lift_c::init_modeMove() {
    mMode = MODE_MOVE_e;
}

/* 80C891A4-80C894BC 000B64 0318+00 1/0 0/0 0/0 .text            modeMove__10daL8Lift_cFv */
void daL8Lift_c::modeMove() {
    cXyz sp38 = mPrevTargetPos;
    cXyz sp44 = mTargetPos;

    f32 fVar9 = (sp38 - sp44).abs() * 0.3f;
    if (fVar9 < 30.0f) {
        fVar9 = 30.0f;
    }
    if (fVar9 > 300.0f) {
        fVar9 = 300.0f;
    }

    if (fVar9 > (current.pos - mTargetPos).abs()) {
        init_modeBrk();
    }

    cLib_addCalcPos(&current.pos, mTargetPos, 1.0f, fopAcM_GetSpeedF(this), 0.1f);
    mDoAud_seStartLevel(Z2SE_OBJ_L8_L_LIFT_MV, &current.pos, fopAcM_GetSpeedF(this), dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
}

/* 80C894BC-80C894C8 000E7C 000C+00 1/1 0/0 0/0 .text            init_modeBrk__10daL8Lift_cFv */
void daL8Lift_c::init_modeBrk() {
    mMode = MODE_BRK_e;
}

/* 80C894C8-80C896C8 000E88 0200+00 1/0 0/0 0/0 .text            modeBrk__10daL8Lift_cFv */
void daL8Lift_c::modeBrk() {
    cXyz sp44 = current.pos;
    f32 fVar6 = cLib_addCalcPos(&current.pos, mTargetPos, 0.1f, speedF, 0.5f);
    f32 fVar7 = (sp44 - current.pos).abs();
    mDoAud_seStartLevel(Z2SE_OBJ_L8_L_LIFT_MV, &current.pos, fVar7, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if (fVar6 == 0.0f) {
        fopAcM_SetSpeedF(this, 0.0f);
        init_modeWaitInit();
    }
}

/* 80C896C8-80C896D4 001088 000C+00 3/3 0/0 0/0 .text            init_modeWaitInit__10daL8Lift_cFv */
void daL8Lift_c::init_modeWaitInit() {
    mMode = MODE_WAIT_INIT_e;
}

/* 80C896D4-80C89708 001094 0034+00 1/0 0/0 0/0 .text            modeWaitInit__10daL8Lift_cFv */
void daL8Lift_c::modeWaitInit() {
    setNextPoint();
    init_modeWait();
}

/* 80C89708-80C89714 0010C8 000C+00 1/1 0/0 0/0 .text            init_modeWait__10daL8Lift_cFv */
void daL8Lift_c::init_modeWait() {
    mMode = MODE_WAIT_e;
}

/* 80C89714-80C89720 0010D4 000C+00 1/0 0/0 0/0 .text            modeWait__10daL8Lift_cFv */
void daL8Lift_c::modeWait() {
    mMode = MODE_ACC_e;
}

/* 80C89720-80C8972C 0010E0 000C+00 3/3 0/0 0/0 .text            init_modeMoveWait__10daL8Lift_cFv */
void daL8Lift_c::init_modeMoveWait() {
    mMode = MODE_MOVE_WAIT_e;
}

/* 80C8972C-80C89770 0010EC 0044+00 1/0 0/0 0/0 .text            modeMoveWait__10daL8Lift_cFv */
void daL8Lift_c::modeMoveWait() {
    if ((mSwbit != 0xff && mIsSwitch) && mPlayerRide) {
        init_modeWaitInit();
    }
}

/* 80C89770-80C89820 001130 00B0+00 3/3 0/0 0/0 .text            init_modeOnAnm__10daL8Lift_cFv */
void daL8Lift_c::init_modeOnAnm() {
    if (mpBgW) {
        dComIfG_Bgsp().Regist(mpBgW, this);
    }

    mBtk.setPlaySpeed(1.0f);
    mDoAud_seStart(Z2SE_OBJ_L8_L_LIFT_ON, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mMode = MODE_ON_ANM_e;
}

/* 80C89820-80C89874 0011E0 0054+00 1/0 0/0 0/0 .text            modeOnAnm__10daL8Lift_cFv */
void daL8Lift_c::modeOnAnm() {
    if (mBtk.play() == 1) {
        field_0x808 = 1;
        mLightSet = 1;
        dKy_plight_set(&mLight);
        init_modeMoveWait();
    }
}

/* 80C89874-80C898DC 001234 0068+00 1/1 0/0 0/0 .text            init_modeStop__10daL8Lift_cFv */
void daL8Lift_c::init_modeStop() {
    if (mLightSet) {
        mLightSet = 0;
        dKy_plight_cut(&mLight);
    }

    mStopDisappearTimer = l_HIO.mStopDisappearTime;
    mBtk.setPlaySpeed(-1.0f);
    mMode = MODE_STOP_e;
}

/* 80C898DC-80C899D0 00129C 00F4+00 1/0 0/0 0/0 .text            modeStop__10daL8Lift_cFv */
void daL8Lift_c::modeStop() {
    if (mStopDisappearTimer) {
        mStopDisappearTimer--;
    } else {
        int iVar1 = mBtk.play();
        if ((mBtk.getFrame() <= mBtk.getStartFrame() - 1.0f + 20.0f) &&
            mpBgW && mpBgW->ChkUsed()) {
            dComIfG_Bgsp().Release(mpBgW);
        }

        if (iVar1 == 1) {
            if (mIsSwitch) {
                init_modeInitSet();
            } else {
                init_modeInitSet2();
            }
        }
    }
}

/* 80C899D0-80C89A04 001390 0034+00 2/2 0/0 0/0 .text            init_modeInitSet__10daL8Lift_cFv */
void daL8Lift_c::init_modeInitSet() {
    liftReset();
    mMode = MODE_INIT_SET_e;
}

/* 80C89A04-80C89A24 0013C4 0020+00 1/0 0/0 0/0 .text            modeInitSet__10daL8Lift_cFv */
void daL8Lift_c::modeInitSet() {
    init_modeOnAnm();
}

/* 80C89A24-80C89A58 0013E4 0034+00 1/1 0/0 0/0 .text            init_modeInitSet2__10daL8Lift_cFv */
void daL8Lift_c::init_modeInitSet2() {
    liftReset();
    mMode = MODE_INIT_SET2_e;
}

/* 80C89A58-80C89A78 001418 0020+00 1/0 0/0 0/0 .text            modeInitSet2__10daL8Lift_cFv */
void daL8Lift_c::modeInitSet2() {
    init_modeMoveWait();
}

/* 80C89A78-80C89ADC 001438 0064+00 2/2 0/0 0/0 .text            liftReset__10daL8Lift_cFv */
void daL8Lift_c::liftReset() {
    dPath* mPath = dPath_GetRoomPath(mPathID, fopAcM_GetRoomNo(this));
    dPnt* mPnt = mPath->m_points;
    current.pos = mPnt->m_position;
    mPathDirection = 1;
    mCurrentPoint = 0;
}

/* 80C89ADC-80C89C10 00149C 0134+00 1/1 0/0 0/0 .text            setNextPoint__10daL8Lift_cFv */
void daL8Lift_c::setNextPoint() {
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
            mPathDirection = 0xff;
            next_point = (s8)(pathp->m_num - 2);
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

    mPrevTargetPos = mTargetPos;
    dPnt* mPnt = pathp->m_points;
    mTargetPos = mPnt[next_point].m_position;
    mCurrentPoint = next_point;
}

/* 80C89C10-80C89DC8 0015D0 01B8+00 1/0 0/0 0/0 .text            Draw__10daL8Lift_cFv */
int daL8Lift_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    J3DModelData* modelData = mpModel->getModelData();
    J3DMaterial* mpMatNode = modelData->getMaterialNodePointer(0);
    dComIfGd_setListDarkBG();

    if (mpMatNode->getTexGenBlock()->getTexMtx(1)) {
        J3DTexMtxInfo* texMtxInfo = &mpMatNode->getTexGenBlock()->getTexMtx(1)->getTexMtxInfo();
        if (texMtxInfo) {
            Mtx mMtx58;
            C_MTXLightOrtho(mMtx58, 100.0f, -100.0f, -100.0f, 100.0f, 1.0f, 1.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::XrotS(0x4000);
            mDoMtx_stack_c::transM(-current.pos.x, -current.pos.y, -current.pos.z);
            cMtx_concat(mMtx58, mDoMtx_stack_c::get(), texMtxInfo->mEffectMtx);
        }
    }

    mBtk.entry(modelData);
    mDoExt_modelUpdateDL(mpModel);
    mBtk.remove(modelData);
    dComIfGd_setList();

    J3DGXColor* mColor = mpMatNode->getTevKColor(1);
    mColor->r = l_HIO.mColorR;
    mColor->g = l_HIO.mColorG;
    mColor->b = l_HIO.mColorB;

    return 1;
}

/* 80C89DC8-80C89E18 001788 0050+00 1/0 0/0 0/0 .text            Delete__10daL8Lift_cFv */
int daL8Lift_c::Delete() {
    dComIfG_resDelete(&mPhase, "L8Lift");
    if (mLightSet) {
        dKy_plight_cut(&mLight);
    }
    return 1;
}

/* 80C89E18-80C89E44 0017D8 002C+00 1/0 0/0 0/0 .text            daL8Lift_Draw__FP10daL8Lift_c */
static int daL8Lift_Draw(daL8Lift_c* i_this) {
    return i_this->Draw();
}

/* 80C89E44-80C89E64 001804 0020+00 1/0 0/0 0/0 .text            daL8Lift_Execute__FP10daL8Lift_c */
static int daL8Lift_Execute(daL8Lift_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C89E64-80C89E84 001824 0020+00 1/0 0/0 0/0 .text            daL8Lift_Delete__FP10daL8Lift_c */
static int daL8Lift_Delete(daL8Lift_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C89E84-80C89EA4 001844 0020+00 1/0 0/0 0/0 .text            daL8Lift_Create__FP10fopAc_ac_c */
static int daL8Lift_Create(fopAc_ac_c* a_this) {
    daL8Lift_c* i_this = (daL8Lift_c*)a_this;
    return i_this->create();
}

/* 80C8A114-80C8A134 -00001 0020+00 1/0 0/0 0/0 .data            l_daL8Lift_Method */
static actor_method_class l_daL8Lift_Method = {
    (process_method_func)daL8Lift_Create,
    (process_method_func)daL8Lift_Delete,
    (process_method_func)daL8Lift_Execute,
    0,
    (process_method_func)daL8Lift_Draw,
};

/* 80C8A134-80C8A164 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv8Lift */
extern actor_process_profile_definition g_profile_Obj_Lv8Lift = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv8Lift,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daL8Lift_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  645,                    // mPriority
  &l_daL8Lift_Method,     // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
