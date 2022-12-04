/* 800C2DDC-800C2EAC 0BD71C 00D0+00 17/17 0/0 0/0 .text
 * procPreActionUnequipInit__9daAlink_cFiP10fopAc_ac_c          */
int daAlink_c::procPreActionUnequipInit(int param_0, fopAc_ac_c* param_1) {
    commonProcInit(PROC_PREACTION_UNEQUIP);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    setBlendMoveAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);
    allUnequip(0);
    field_0x3010 = 0;

    if (param_1 != NULL) {
        field_0x280c.setData(param_1);
        field_0x300e = 1;

        if (fopAcM_GetName(param_1) == PROC_Tag_Lv8Gate) {
            if (mEquipItem == KANTERA) {
                field_0x3010 = 1;
            } else if (i_checkNoResetFlg2(FLG2_UNK_1)) {
                offKandelaarModel();
            }
        }
    } else {
        field_0x300e = 0;
    }

    field_0x3198 = param_0;
    return 1;
}

/* 800C2EAC-800C3098 0BD7EC 01EC+00 1/0 0/0 0/0 .text            procPreActionUnequip__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procPreActionUnequip() {
    nofralloc
#include "asm/d/a/d_a_alink/procPreActionUnequip__9daAlink_cFv.s"
}
#pragma pop

/* 800C3098-800C30F0 0BD9D8 0058+00 1/1 0/0 0/0 .text            procServiceWaitInit__9daAlink_cFv
 */
int daAlink_c::procServiceWaitInit() {
    commonProcInit(PROC_SERVICE_WAIT);
    setSingleAnimeBase(ANM_SERVICE_WAIT);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    current.angle.y = shape_angle.y;
    field_0x2f98 = 4;
    return 1;
}

/* 800C30F0-800C3224 0BDA30 0134+00 1/0 0/0 0/0 .text            procServiceWait__9daAlink_cFv */
int daAlink_c::procServiceWait() {
    J3DFrameCtrl* ctrl = &mUnderFrameCtrl[0];
    if ((!checkNextAction(0) && !checkFrontWallTypeAction()) &&
        (checkEventRun() || checkGuardActionChange() || shape_angle.y != field_0x2fe6)) {
        ctrl->setRate(FLOAT_LABEL(lit_6108));
        procWaitInit();
    } else {
        if (ctrl->checkPass(lit_10040)) {
            voiceStart(Z2SE_AL_V_RELAX_A);
        } else if (ctrl->checkPass(lit_11673)) {
            voiceStart(Z2SE_AL_V_RELAX_B);
        } else if (ctrl->checkPass(lit_25684)) {
            voiceStart(Z2SE_AL_V_RELAX_C);
        }
    }
    return 1;
}

/* 800C3224-800C3338 0BDB64 0114+00 2/2 0/0 0/0 .text            procTiredWaitInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procTiredWaitInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procTiredWaitInit__9daAlink_cFv.s"
}
#pragma pop

/* 800C3338-800C33B8 0BDC78 0080+00 1/0 0/0 0/0 .text            procTiredWait__9daAlink_cFv */
int daAlink_c::procTiredWait() {
    daPy_frameCtrl_c* ctrl = &mUnderFrameCtrl[0];

    if (!checkNextAction(0)) {
        if (ctrl->checkAnmEnd()) {
            setSingleAnimeBase(ANM_WAIT_TIRED);
        } else if (ctrl->getAttribute() == 2) {
            setTiredVoice(ctrl);
        }
    }

    return 1;
}

/* 800C33B8-800C3504 0BDCF8 014C+00 26/26 0/0 0/0 .text            procWaitInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWaitInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWaitInit__9daAlink_cFv.s"
}
#pragma pop

/* 800C3504-800C36CC 0BDE44 01C8+00 1/0 0/0 0/0 .text            procWait__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procWait__9daAlink_cFv.s"
}
#pragma pop

/* 800C36CC-800C3730 0BE00C 0064+00 3/3 0/0 0/0 .text            procMoveInit__9daAlink_cFv */
int daAlink_c::procMoveInit() {
    if (!commonProcInitNotSameProc(PROC_MOVE)) {
        return 0;
    }

    setBlendMoveAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);
    setFootEffectProcType(3);
    return 1;
}

/* 800C3730-800C3810 0BE070 00E0+00 1/0 0/0 0/0 .text            procMove__9daAlink_cFv */
// reg swap
#ifdef NONMATCHING
int daAlink_c::procMove() {
    setFootEffectProcType(3);
    if (!checkNextAction(0) && !checkFrontWallTypeAction()) {
        if (mDemo.getDemoMode() == 2 &&
            mNormalSpeed > field_0x594 * daAlinkHIO_move_c0::m.mWalkChangeRate) {
            mNormalSpeed = field_0x594 * daAlinkHIO_move_c0::m.mWalkChangeRate;
        }

        setBlendMoveAnime(-1.0f);
        if (field_0x3174 != 8) {
            field_0x30a0 =
                cLib_minMaxLimit((s16)(field_0x2ff0 >> 1), daAlinkHIO_basic_c0::m.mNeckMaxUp,
                                 daAlinkHIO_basic_c0::m.mNeckMaxDown);
        }
    }
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procMove__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800C3810-800C3868 0BE150 0058+00 1/1 0/0 0/0 .text            procAtnMoveInit__9daAlink_cFv */
int daAlink_c::procAtnMoveInit() {
    if (!commonProcInitNotSameProc(PROC_ATN_MOVE)) {
        return 0;
    }

    setBlendAtnMoveAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);
    return 1;
}

/* 800C3868-800C38CC 0BE1A8 0064+00 1/0 0/0 0/0 .text            procAtnMove__9daAlink_cFv */
int daAlink_c::procAtnMove() {
    if (!checkNextAction(0)) {
        if (field_0x2f98 != 0 || !checkFrontWallTypeAction()) {
            setBlendAtnMoveAnime(lit_6041);
        }
    }

    return 1;
}

/* 800C38CC-800C397C 0BE20C 00B0+00 4/4 0/0 0/0 .text            procAtnActorWaitInit__9daAlink_cFv
 */
int daAlink_c::procAtnActorWaitInit() {
    if (!commonProcInitNotSameProc(PROC_ATN_ACTOR_WAIT)) {
        return 0;
    }

    if (mTargetedActor != NULL) {
        fopAcM_searchActorAngleY(this, mTargetedActor);
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    if (field_0x2f98 != 2) {
        field_0x2f98 = 3;
    }

    if (checkAtnWaitAnime()) {
        setBlendAtnMoveAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);
    } else {
        setBlendMoveAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);
    }

    return 1;
}

/* 800C397C-800C39EC 0BE2BC 0070+00 1/0 0/0 0/0 .text            procAtnActorWait__9daAlink_cFv */
int daAlink_c::procAtnActorWait() {
    if (!checkNextAction(0)) {
        if (checkAtnWaitAnime()) {
            setBlendAtnMoveAnime(lit_6041);
        } else {
            setBlendMoveAnime(lit_6041);
        }
        checkSwordTwirlAction();
    }

    return 1;
}

/* 800C39EC-800C3A44 0BE32C 0058+00 3/3 0/0 0/0 .text            procAtnActorMoveInit__9daAlink_cFv
 */
int daAlink_c::procAtnActorMoveInit() {
    if (!commonProcInitNotSameProc(PROC_ATN_ACTOR_MOVE)) {
        return 0;
    }

    setBlendAtnMoveAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);
    return 1;
}

/* 800C3A44-800C3A94 0BE384 0050+00 1/0 0/0 0/0 .text            procAtnActorMove__9daAlink_cFv */
int daAlink_c::procAtnActorMove() {
    if (!checkNextAction(0)) {
        setBlendAtnMoveAnime(lit_6041);
        checkSwordTwirlAction();
    }

    return 1;
}

/* 800C3A94-800C3B1C 0BE3D4 0088+00 2/2 0/0 0/0 .text            procWaitTurnInit__9daAlink_cFv */
int daAlink_c::procWaitTurnInit() {
    if (!commonProcInitNotSameProc(PROC_WAIT_TURN)) {
        return 0;
    }

    setSingleAnimeBaseSpeed(ANM_STEP_TURN, daAlinkHIO_basic_c0::m.mWaitTurnSpeed,
                            daAlinkHIO_basic_c0::m.mAnmBlendFactor);
    if (checkEventRun()) {
        mNormalSpeed = FLOAT_LABEL(lit_6108);
    }

    field_0x300e = field_0x2fe2;
    current.angle.y = shape_angle.y;
    return 1;
}

/* 800C3B1C-800C3C3C 0BE45C 0120+00 1/0 0/0 0/0 .text            procWaitTurn__9daAlink_cFv */
int daAlink_c::procWaitTurn() {
    cLib_chaseF(&mNormalSpeed, FLOAT_LABEL(lit_6108), daAlinkHIO_move_c0::m.mDeceleration);

    if (checkGroundSpecialMode()) {
        return 1;
    } else if (i_checkEndResetFlg0(ERFLG0_UNK_100000)) {
        return procFloorDownReboundInit();
    } else {
        s16 angle = cLib_addCalcAngleS(&shape_angle.y, field_0x300e, 30, 0x3CDF, 8000);
        current.angle.y = shape_angle.y;

        if (checkNextActionFromButton()) {
            return 1;
        } else if (angle == 0) {
            if (checkEventRun()) {
                if (mDemo.getDemoMode() == 5) {
                    dComIfGp_evmng_cutEnd(field_0x3184);
                } else if (!checkNextAction(0)) {
                    checkWaitAction();
                }
            } else {
                checkNextAction(0);
            }
        }
    }

    return 1;
}

/* 800C3C3C-800C3D38 0BE57C 00FC+00 2/2 0/0 0/0 .text            procMoveTurnInit__9daAlink_cFi */
int daAlink_c::procMoveTurnInit(int param_0) {
    if (!commonProcInitNotSameProc(PROC_MOVE_TURN)) {
        return 0;
    }

    setBlendMoveAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);
    dComIfGp_setPlayerStatus0(0, 0x800);

    if (param_0 != 0) {
        field_0x300e = (daAlinkHIO_move_c0::m.mMaxTurnAngle * 4) + 19030;
        field_0x3010 = daAlinkHIO_move_c0::m.mMaxTurnAngle * 2;
        field_0x300a = 2;
        current.angle.y = field_0x2fe2;
        mNormalSpeed *= lit_5943;
    } else {
        field_0x300e = daAlinkHIO_move_c0::m.mMaxTurnAngle * 2;
        field_0x3010 = daAlinkHIO_move_c0::m.mMaxTurnAngle;
        field_0x300a = 3;
    }

    field_0x300e = daAlinkHIO_move_c0::m.mMaxTurnAngle * 2;
    field_0x3010 = daAlinkHIO_move_c0::m.mMaxTurnAngle;
    return 1;
}

/* 800C3D38-800C3DA0 0BE678 0068+00 1/0 0/0 0/0 .text            procMoveTurn__9daAlink_cFv */
int daAlink_c::procMoveTurn() {
    setSpeedAndAngleNormal();
    cLib_addCalcAngleS(&shape_angle.y, current.angle.y, field_0x300a, field_0x300e,
                       field_0x3010);

    if (!checkNextAction(0)) {
        setBlendMoveAnime(lit_6041);
    }

    return 1;
}

/* 800C3DA0-800C3F60 0BE6E0 01C0+00 2/2 0/0 0/0 .text            procSideStepInit__9daAlink_cFi */
int daAlink_c::procSideStepInit(int jump_type) {
    if (jump_type == 1 && !checkHeavyStateOn(1, 1) &&
        (checkNoUpperAnime() || checkEquipAnime() || field_0x2fcc != 0 && checkUpperGuardAnime())) {
        return procBackJumpInit(0);
    }

    commonProcInit(PROC_SIDESTEP);
    field_0x2f98 = jump_type;

    if (field_0x2f98 == 1) {
        current.angle.y = shape_angle.y + 0x8000;
        setSingleAnimeParam(ANM_BACK_JUMP, &daAlinkHIO_sideStep_c0::m.mBackJumpAnm);
        mNormalSpeed = daAlinkHIO_sideStep_c0::m.mBackJumpSpeedH;
        mSpeed.y = daAlinkHIO_sideStep_c0::m.mBackJumpSpeedV;
        field_0x300a = 0;
    } else {
        daAlink_ANM anm_id;
        if (field_0x2f98 == 2) {
            anm_id = ANM_SIDE_JUMP_LEFT;
            current.angle.y = shape_angle.y + 0x4000;
        } else {
            anm_id = ANM_SIDE_JUMP_RIGHT;
            current.angle.y = shape_angle.y - 0x4000;
        }

        setSingleAnimeParam(anm_id, &daAlinkHIO_sideStep_c0::m.mSideJumpAnm);
        mNormalSpeed = daAlinkHIO_sideStep_c0::m.mSideJumpSpeedH;
        mSpeed.y = daAlinkHIO_sideStep_c0::m.mSideJumpSpeedV;
        field_0x300a = 1;
    }

    if (i_checkNoResetFlg0(FLG0_UNDERWATER)) {
        mNormalSpeed *= daAlinkHIO_magneBoots_c0::m.mWaterVelocityX;
        mSpeed.y *= daAlinkHIO_magneBoots_c0::m.mWaterVelocityY;
    }

    voiceStart(Z2SE_AL_V_JUMP_S);
    mCommonCounter = 0;
    field_0x300e = 0;
    return 1;
}

/* 800C3F60-800C40F0 0BE8A0 0190+00 1/0 0/0 0/0 .text            procSideStep__9daAlink_cFv */
int daAlink_c::procSideStep() {
    if (mTargetedActor != NULL && field_0x300a != 0) {
        s16 actor_angle = fopAcM_searchActorAngleY(this, mTargetedActor);
        cLib_addCalcAngleS(&shape_angle.y, actor_angle, 5, 0x5E8, 0x13C);

        if (field_0x2f98 == 2) {
            current.angle.y = shape_angle.y + 0x4000;
        } else {
            current.angle.y = shape_angle.y - 0x4000;
        }
    }

    if (doTrigger() && field_0x300a != 0) {
        mCommonCounter = 1;
    }

    if (checkUpperItemActionFly()) {
        return 1;
    } else if (mLinkAcch.ChkGroundHit() && field_0x300e != 0) {
        if (mCommonCounter != 0 && checkSideRollAction(field_0x2f98)) {
            return 1;
        } else {
            return procSideStepLandInit();
        }
    } else if (checkNoUpperAnime() && checkForceSwordSwing()) {
        setCutDash(1, 0);
    } else if (mDemo.getDemoMode() != 16 &&
               current.pos.y < mLastJumpPos.y - daAlinkHIO_sideStep_c0::m.mFallHeight) {
        return procFallInit(2, daAlinkHIO_sideStep_c0::m.mFallInterpolation);
    }

    field_0x300e = 1;
    checkItemChangeFromButton();
    return 1;
}

/* 800C40F0-800C4278 0BEA30 0188+00 1/1 0/0 0/0 .text            procSideStepLandInit__9daAlink_cFv
 */
int daAlink_c::procSideStepLandInit() {
    commonProcInit(PROC_SIDESTEP_LAND);

    if (field_0x2f98 == 1) {
        field_0x2f9d = 4;
        setSingleAnimeParam(ANM_BACK_JUMP_LAND, &daAlinkHIO_sideStep_c0::m.mBackLandAnm);
        field_0x3478 = daAlinkHIO_sideStep_c0::m.mBackLandAnm.field_0x10;
        field_0x2f98 = 2;
        field_0x300a = 0;
        field_0x2fb0 = 0;
        field_0x2fcc = 10;
    } else {
        daAlink_ANM anm_id;
        u16 uvar3;
        if (field_0x2f98 == 2) {
            anm_id = ANM_SIDE_JUMP_LEFT_LAND;
            uvar3 = 0x3F;
        } else {
            anm_id = ANM_SIDE_JUMP_RIGHT_LAND;
            uvar3 = 0x40;
        }

        setSingleAnimeParam(anm_id, &daAlinkHIO_sideStep_c0::m.mSideLandAnm);
        field_0x3478 = daAlinkHIO_sideStep_c0::m.mSideLandAnm.field_0x10;
        field_0x300a = 1;
        field_0x2fb0 = 8;
        field_0x2fcc = 0;

        if (checkEnemyGroup(mTargetedActor) && mEquipItem == EQUIP_SWORD && checkNoUpperAnime()) {
            setUpperAnimeBaseSpeed(uvar3, daAlinkHIO_atnMove_c0::m.mWaitAnmSpeed, lit_6041);
            seStartSwordCut(Z2SE_AL_WAIT_SWORD_SWING);
        }
    }

    field_0x2f9d = 4;
    setFootEffectProcType(2);
    i_onResetFlg1(0x30);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    mCommonCounter = 0;
    current.angle.y = shape_angle.y;
    setStepLandVibration();
    return 1;
}

/* 800C4278-800C4378 0BEBB8 0100+00 1/0 0/0 0/0 .text            procSideStepLand__9daAlink_cFv */
int daAlink_c::procSideStepLand() {
    daPy_frameCtrl_c* ctrl = &mUnderFrameCtrl[0];
    i_onEndResetFlg0(ERFLG0_UNK_8000000);

    if (field_0x2fcc != 0) {
        field_0x2fcc = 10;
    }

    if (doTrigger() && field_0x300a != 0) {
        mCommonCounter = 1;
    }

    if (ctrl->checkAnmEnd()) {
        if (mDemo.getDemoMode() == 16) {
            dComIfGp_evmng_cutEnd(field_0x3184);
        } else {
            checkNextAction(0);
        }
    } else if (ctrl->getFrame() > field_0x3478) {
        if (mCommonCounter != 0 && checkSideRollAction(field_0x2f98)) {
            return 1;
        }
        checkNextAction(1);
    }

    return 1;
}

/* 800C4378-800C4514 0BECB8 019C+00 1/1 0/0 0/0 .text            procSlideInit__9daAlink_cFs */
int daAlink_c::procSlideInit(s16 param_0) {
    commonProcInit(PROC_SLIDE);

    field_0x814.SetWeight(255);
    field_0x3090 = 8;
    current.angle.y = param_0;

    if (getMoveBGActorName(mLinkAcch.m_gnd, 0) == PROC_Obj_Lv3R10Saka) {
        field_0x300e = 1;
    } else {
        field_0x300e = 0;
    }

    if (cLib_distanceAngleS(param_0, shape_angle.y) < 0x3800 || field_0x300e != 0) {
        field_0x3198 = 1;
        setSingleAnimeParam(ANM_SLIDE_FORWARD, &daAlinkHIO_slide_c0::m.mForwardSlideAnm);
        dComIfGp_setPlayerStatus1(0, 0x100);
        onModeFlg(MODE_UNK_8000);
        onModeFlg(MODE_UNK_2000000);
        onModeFlg(MODE_UNK_20000000);
        mNormalSpeed = FLOAT_LABEL(lit_6108);
        field_0x2f9d = 4;
        setUpperAnimeBaseMorf(0xCE, lit_6041);
        i_onNoResetFlg1(FLG1_UNK_10000000);
        setFootEffectProcType(0);
    } else {
        field_0x3198 = 0;
        setSingleAnimeParam(ANM_SLIDE_BACKWARD, &daAlinkHIO_slide_c0::m.mBackwardSlideAnm);
        dComIfGp_setPlayerStatus1(0, 0x200);
        field_0x2f9d = 0x60;
        setFootEffectProcType(1);
    }

    field_0x594 = daAlinkHIO_slide_c0::m.mMaxSpeed;
    field_0x33cc = FLOAT_LABEL(lit_6108);
    mCommonCounter = 0;
    field_0x3010 = 0;
    return 1;
}

/* ############################################################################################## */
/* 804532E0-804532E4 0018E0 0004+00 1/1 0/0 0/0 .sdata2          @73057 */
SECTION_SDATA2 static f32 lit_73057 = -4096.0f;

/* 800C4514-800C47AC 0BEE54 0298+00 1/0 0/0 0/0 .text            procSlide__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procSlide() {
    nofralloc
#include "asm/d/a/d_a_alink/procSlide__9daAlink_cFv.s"
}
#pragma pop

/* 800C47AC-800C4894 0BF0EC 00E8+00 1/1 0/0 0/0 .text            procSlideLandInit__9daAlink_cFi */
int daAlink_c::procSlideLandInit(int param_0) {
    commonProcInit(PROC_SLIDE_LAND);

    if (param_0 != 0) {
        setSingleAnimeParam(ANM_SLIDE_FORWARD_END, &daAlinkHIO_slide_c0::m.mForwardLandAnm);
        field_0x3478 = daAlinkHIO_slide_c0::m.mForwardLandAnm.field_0x10;
        field_0x3198 = 1;
        field_0x2f99 = 4;
        field_0x3588 = l_waitBaseAnime;
    } else {
        setSingleAnimeParam(ANM_SLIDE_BACKWARD_END, &daAlinkHIO_slide_c0::m.mBackwardLandAnm);
        field_0x3478 = daAlinkHIO_slide_c0::m.mBackwardLandAnm.field_0x10;
        field_0x3198 = 0;
    }

    field_0x814.SetWeight(255);
    mNormalSpeed *= lit_5943;
    return 1;
}

/* 800C4894-800C494C 0BF1D4 00B8+00 1/0 0/0 0/0 .text            procSlideLand__9daAlink_cFv */
int daAlink_c::procSlideLand() {
    daPy_frameCtrl_c* ctrl = &mUnderFrameCtrl[0];

    cLib_chaseF(&mNormalSpeed, FLOAT_LABEL(lit_6108), lit_7450);
    if (field_0x3198 != 0) {
        field_0x2f99 = 4;
    }

    if (ctrl->checkAnmEnd()) {
        current.angle.y = shape_angle.y;
        checkNextAction(0);
    } else if (ctrl->getFrame() > field_0x3478) {
        s16 tmp_angle = current.angle.y;
        current.angle.y = shape_angle.y;

        if (!checkNextAction(1)) {
            current.angle.y = tmp_angle;
        }
    }

    return 1;
}

/* 800C494C-800C4B40 0BF28C 01F4+00 4/3 0/0 0/0 .text            procFrontRollInit__9daAlink_cFv */
#ifdef NONMATCHING
int daAlink_c::procFrontRollInit() {
    BOOL check = checkUpperGuardAnime();
    if (mProcID == PROC_FRONT_ROLL && mDemo.getDemoMode() == 0x28) {
        return 0;
    } else {
        BOOL check = mProcID == PROC_DIVE_JUMP;
        commonProcInit(PROC_FRONT_ROLL);

        f32 fvar1;
        if (!check) {
            fvar1 = daAlinkHIO_frontRoll_c0::m.mRollAnm.field_0x04;
        } else {
            fvar1 = lit_7977;
        }
        setSingleAnime(ANM_FRONT_ROLL, daAlinkHIO_frontRoll_c0::m.mRollAnm.field_0x04, fvar1,
                       daAlinkHIO_frontRoll_c0::m.mRollAnm.field_0x00,
                       daAlinkHIO_frontRoll_c0::m.mRollAnm.field_0x0c);
        mNormalSpeed =
            mSpeedF * daAlinkHIO_frontRoll_c0::m.mInitSpeed + daAlinkHIO_frontRoll_c0::m.mSpeedRate;
        if (mNormalSpeed > daAlinkHIO_frontRoll_c0::m.mCrashHitAnm.field_0x08) {
            mNormalSpeed = daAlinkHIO_frontRoll_c0::m.mCrashHitAnm.field_0x08;
        }
        if (mNormalSpeed < daAlinkHIO_frontRoll_c0::m.mMinSpeed) {
            mNormalSpeed = daAlinkHIO_frontRoll_c0::m.mMinSpeed;
        }

        if (!i_checkNoResetFlg0(FLG0_UNDERWATER)) {
            if (checkHeavyStateOn(1, 1)) {
                mNormalSpeed *= mHeavySpeedMultiplier;
            }
        } else {
            mNormalSpeed *= daAlinkHIO_magneBoots_c0::m.mWaterVelocityX;
        }
        current.angle.y = shape_angle.y;
        voiceStart(Z2SE_AL_V_BACKTEN);
        mCommonCounter = 0;
        setFootEffectProcType(0);
        if (check) {
            i_onNoResetFlg0(2);
        }
        if (i_checkEquipHeavyBoots()) {
            field_0xFB8.SetAtType(AT_TYPE_HEAVY_BOOTS);
            field_0xFB8.SetAtHitMark(1);
            field_0xFB8.SetAtSe(9);
            field_0xFB8.SetAtAtp(2);
            field_0xFB8.SetAtMtrl(0);
            field_0xFB8.ResetAtHit();
            field_0xFB8.SetR(daAlinkHIO_frontRoll_c0::m.mBootsAttackRadius);
            field_0xFB8.OnAtSetBit();
        }
        return 1;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procFrontRollInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procFrontRollInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800C4B40-800C4F14 0BF480 03D4+00 1/0 0/0 0/0 .text            procFrontRoll__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procFrontRoll() {
    nofralloc
#include "asm/d/a/d_a_alink/procFrontRoll__9daAlink_cFv.s"
}
#pragma pop

/* 800C4F14-800C4FFC 0BF854 00E8+00 1/1 0/0 0/0 .text procFrontRollCrashInit__9daAlink_cFv */
int daAlink_c::procFrontRollCrashInit() {
    commonProcInit(PROC_FRONT_ROLL_CRASH);
    setSingleAnime(ANM_ROLL_CRASH, FLOAT_LABEL(lit_6108),
                   daAlinkHIO_frontRoll_c0::m.mCrashAnm.mStart,
                   daAlinkHIO_frontRoll_c0::m.mCrashAnm.mEndF,
                   daAlinkHIO_frontRoll_c0::m.mCrashAnm.mInterpolation);
    
    mNormalSpeed = daAlinkHIO_frontRoll_c0::m.mCrashSpeedH;
    mSpeed.y = daAlinkHIO_frontRoll_c0::m.mCrashSpeedV;

    if (i_checkNoResetFlg0(FLG0_UNDERWATER)) {
        mNormalSpeed *= daAlinkHIO_magneBoots_c0::m.mWaterVelocityX;
        mSpeed.y *= daAlinkHIO_magneBoots_c0::m.mWaterVelocityY;
    }

    current.angle.y -= -0x8000;
    setFrontRollCrashShock(mRollCrashFlg);
    voiceStart(Z2SE_AL_V_ZENTEN_FAIL);
    i_onResetFlg0(0x2000);

    return 1;
}

/* 800C4FFC-800C5160 0BF93C 0164+00 1/0 0/0 0/0 .text            procFrontRollCrash__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procFrontRollCrash() {
    nofralloc
#include "asm/d/a/d_a_alink/procFrontRollCrash__9daAlink_cFv.s"
}
#pragma pop

/* 800C5160-800C5240 0BFAA0 00E0+00 3/3 0/0 0/0 .text procFrontRollSuccessInit__9daAlink_cFv */
int daAlink_c::procFrontRollSuccessInit() {
    BOOL dk_caught = mProcID == PROC_DK_CAUGHT;

    commonProcInit(PROC_FRONT_ROLL_SUCCESS);
    setSingleAnimeParam(ANM_BARRIER_RECOIL, &daAlinkHIO_frontRoll_c0::m.mCrashHitAnm);
    mNormalSpeed = FLOAT_LABEL(lit_6108);

    if (!dk_caught) {
        setFrontRollCrashShock(mRollCrashFlg);
        i_onResetFlg0(0x2000);
    } else {
        f32 tmp_3 = lit_6109;
        mUnderFrameCtrl[0].setFrame(tmp_3);
        getNowAnmPackUnder(UNDER_0)->setFrame(tmp_3);
    }

    field_0x3588 = l_halfAtnWaitBaseAnime;
    field_0x2f99 = 4;
    setFootEffectProcType(1);
    current.angle.y = shape_angle.y - -0x8000;

    return 1;
}

/* 800C5240-800C5328 0BFB80 00E8+00 1/0 0/0 0/0 .text            procFrontRollSuccess__9daAlink_cFv
 */
int daAlink_c::procFrontRollSuccess() {
    daPy_frameCtrl_c* frameCtrl = &mUnderFrameCtrl[0];

    field_0x2f99 = 4;
    i_onEndResetFlg0(0x8000000);

    if (frameCtrl->checkAnmEnd()) {
        current.angle.y = shape_angle.y;
        checkNextAction(0);
    } else if (frameCtrl->getFrame() > daAlinkHIO_frontRoll_c0::m.mCrashHitAnm.field_0x10) {
        onModeFlg(4);
        current.angle.y = shape_angle.y;
        checkNextAction(1);
    } else if (frameCtrl->getFrame() >= lit_8130) {
        field_0x2f92 = 1;
        field_0x2f93 = 6;
    } else if (frameCtrl->getFrame() > lit_7710) {
        field_0x2f9d = 0x60;
    }

    return 1;
}

/* 800C5328-800C5484 0BFC68 015C+00 3/3 0/0 0/0 .text            procSideRollInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procSideRollInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procSideRollInit__9daAlink_cFi.s"
}
#pragma pop

/* 800C5484-800C5700 0BFDC4 027C+00 1/0 0/0 0/0 .text            procSideRoll__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procSideRoll() {
    nofralloc
#include "asm/d/a/d_a_alink/procSideRoll__9daAlink_cFv.s"
}
#pragma pop

/* 800C5700-800C57A4 0C0040 00A4+00 2/2 0/0 0/0 .text            backJumpSpeedDec__9daAlink_cFv */
void daAlink_c::backJumpSpeedDec() {
    if (mLinkAcch.ChkGroundHit()) {
        if (dComIfG_Bgsp().ChkPolySafe(mLinkAcch.m_gnd)) {
            f32 jump_speed;
            if (dBgS_CheckBWallPoly(mLinkAcch.m_gnd)) {
                jump_speed = FLOAT_LABEL(lit_6108);
            } else {
                jump_speed = field_0x3478 * cM_scos(field_0x2ff0);
                if (field_0x2ff0 > 0) {
                    jump_speed *= cM_scos(field_0x2ff0);
                }
            }

            if (mNormalSpeed > jump_speed) {
                mNormalSpeed = jump_speed;
            }
        }
    }
}

/* 800C57A4-800C5964 0C00E4 01C0+00 6/6 0/0 0/0 .text            procBackJumpInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procBackJumpInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procBackJumpInit__9daAlink_cFi.s"
}
#pragma pop

/* 800C5964-800C5A54 0C02A4 00F0+00 1/0 0/0 0/0 .text            procBackJump__9daAlink_cFv */
int daAlink_c::procBackJump() {
    if (field_0x3008 != 0) {
        field_0x3008--;
    } else {
        offModeFlg(0x2000);
    }

    if (checkCutTurnInput() && mEquipItem == 0x103) {
        field_0x3198 = getCutTurnDirection();
    }

    backJumpSpeedDec();

    if (mLinkAcch.ChkGroundHit() && mUnderFrameCtrl[0].checkAnmEnd()) {
        procBackJumpLandInit(field_0x3198);
    } else if (mDemo.getDemoMode() != 0x10 && current.pos.y < mLastJumpPos.y - daAlinkHIO_backJump_c0::m.field_0x30) {
        procFallInit(2, daAlinkHIO_backJump_c0::m.field_0x34);
    }

    checkItemChangeFromButton();
    return 1;
}

/* 800C5A54-800C5AF0 0C0394 009C+00 1/1 0/0 0/0 .text            procBackJumpLandInit__9daAlink_cFi
 */
int daAlink_c::procBackJumpLandInit(int i_cutDirection) {
    commonProcInit(PROC_BACK_JUMP_LAND);
    setSingleAnimeParam(ANM_BACKFLIP_LAND, &daAlinkHIO_backJump_c0::m.field_0x14);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    
    field_0x2f9d = 4;
    setFootEffectProcType(2);
    i_onResetFlg1(0x30);

    field_0x3198 = i_cutDirection;
    current.angle.y = shape_angle.y;
    field_0x2fcc = 10;
    setStepLandVibration();

    return 1;
}

/* 800C5AF0-800C5C28 0C0430 0138+00 1/0 0/0 0/0 .text            procBackJumpLand__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procBackJumpLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procBackJumpLand__9daAlink_cFv.s"
}
#pragma pop

/* 800C5C28-800C5CA4 0C0568 007C+00 1/1 0/0 0/0 .text            procSlipInit__9daAlink_cFv */
int daAlink_c::procSlipInit() {
    commonProcInit(PROC_SLIP);
    setSingleAnimeParam(ANM_SLIP, &daAlinkHIO_move_c0::m.mSlideAnm);
    mNormalSpeed = mSpeedF * daAlinkHIO_move_c0::m.mSlideSpeed;
    
    field_0x2f9d = 0x40;
    setFootEffectProcType(1);
    field_0x3008 = 5;

    return 1;
}

/* 800C5CA4-800C5E68 0C05E4 01C4+00 1/0 0/0 0/0 .text            procSlip__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procSlip() {
    nofralloc
#include "asm/d/a/d_a_alink/procSlip__9daAlink_cFv.s"
}
#pragma pop

/* 800C5E68-800C61EC 0C07A8 0384+00 4/4 0/0 0/0 .text            procAutoJumpInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procAutoJumpInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procAutoJumpInit__9daAlink_cFi.s"
}
#pragma pop

/* ############################################################################################## */
/* 804532E4-804532E8 0018E4 0004+00 1/1 0/0 0/0 .sdata2          @73781 */
SECTION_SDATA2 static f32 lit_73781 = 2.0f / 3.0f;

/* 800C61EC-800C66DC 0C0B2C 04F0+00 1/0 0/0 0/0 .text            procAutoJump__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procAutoJump() {
    nofralloc
#include "asm/d/a/d_a_alink/procAutoJump__9daAlink_cFv.s"
}
#pragma pop

/* 800C66DC-800C6798 0C101C 00BC+00 1/1 0/0 0/0 .text            procDiveJumpInit__9daAlink_cFv */
int daAlink_c::procDiveJumpInit() {
    commonProcInit(PROC_DIVE_JUMP);
    setSingleAnimeParam(ANM_DIVE_START, &daAlinkHIO_autoJump_c0::m.mDiveAnm);
    deleteEquipItem(TRUE, TRUE);
    setHeavyBoots(0);

    mSpeed.y = daAlinkHIO_autoJump_c0::m.mDiveSpeedV;
    mNormalSpeed = daAlinkHIO_autoJump_c0::m.mDiveSpeedH;
    mGravity = daAlinkHIO_autoJump_c0::m.mDiveGravity;

    mCommonCounter = 0;
    current.angle.y = shape_angle.y;
    field_0x33b0 = 92.0f;

    voiceStart(Z2SE_AL_V_JUMP_DIVING);
    return 1;
}

/* 800C6798-800C6850 0C10D8 00B8+00 1/0 0/0 0/0 .text            procDiveJump__9daAlink_cFv */
int daAlink_c::procDiveJump() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (mLinkAcch.ChkGroundHit()) {
        return procFrontRollInit();
    }

    if (mCommonCounter == 0) {
        if (frameCtrl->checkAnmEnd()) {
            setSingleAnimeParam(ANM_DIVE, &daAlinkHIO_autoJump_c0::m.mDiveUnkAnm);
            mCommonCounter = 1;
            field_0x2f99 = 2;
        }
    } else {
        field_0x2f99 = 2;
        
        if (frameCtrl->getFrame() >= lit_6109) {
            cLib_chaseF(&mNormalSpeed, FLOAT_LABEL(lit_6108), lit_5943);
        }
    }

    return 1;
}

/* 800C6850-800C692C 0C1190 00DC+00 1/1 0/0 0/0 .text            procRollJumpInit__9daAlink_cFv */
int daAlink_c::procRollJumpInit() {
    commonProcInit(PROC_ROLL_JUMP);
    setSingleAnimeBaseSpeed(ANM_ROLL_JUMP, FLOAT_LABEL(lit_6108), daAlinkHIO_autoJump_c0::m.mSpinJumpInterpolation);

    field_0x3478 = field_0x3410;
    mNormalSpeed = field_0x3410;
    mSpeed.y = field_0x3414;

    field_0x2fe6 = field_0x30ee;
    shape_angle.y = field_0x30ee;
    current.angle.y = shape_angle.y;

    mLinkAcch.i_ClrGroundHit();
    field_0x347c = FLOAT_LABEL(lit_6108);
    shape_angle.x = 1;

    voiceStart(Z2SE_AL_V_GORONJUMP);
    seStartOnlyReverb(Z2SE_AL_GORON_JUMP_START);
    mCommonCounter = 1;

    return 1;
}

/* 800C692C-800C6A48 0C126C 011C+00 1/0 0/0 0/0 .text            procRollJump__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procRollJump() {
    nofralloc
#include "asm/d/a/d_a_alink/procRollJump__9daAlink_cFv.s"
}
#pragma pop

/* 800C6A48-800C6D20 0C1388 02D8+00 30/30 0/0 0/0 .text            procFallInit__9daAlink_cFif */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procFallInit(int param_0, f32 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procFallInit__9daAlink_cFif.s"
}
#pragma pop

/* 800C6D20-800C6F18 0C1660 01F8+00 1/0 0/0 0/0 .text            procFall__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procFall() {
    nofralloc
#include "asm/d/a/d_a_alink/procFall__9daAlink_cFv.s"
}
#pragma pop

/* 800C6F18-800C6FE4 0C1858 00CC+00 6/6 0/0 0/0 .text            procLandInit__9daAlink_cFf */
int daAlink_c::procLandInit(f32 param_0) {
    commonProcInit(PROC_LAND);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    
    setSingleAnimeParam(ANM_JUMP_LAND, &daAlinkHIO_autoJump_c0::m.mLandAnm);

    if (checkGrabGlide()) {
        mUnderFrameCtrl[0].setRate(lit_5943);
    } else if (i_checkNoResetFlg0(FLG0_UNDERWATER)) {
        f32 rate = mUnderFrameCtrl[0].getRate() * lit_28286;
        mUnderFrameCtrl[0].setRate(rate);
    }

    field_0x2f9d = 4;
    setFootEffectProcType(4);

    i_onResetFlg1(0x30);
    current.angle.y = shape_angle.y;
    field_0x3478 = param_0;

    return 1;
}

/* 800C6FE4-800C70F8 0C1924 0114+00 1/0 0/0 0/0 .text            procLand__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procLand__9daAlink_cFv.s"
}
#pragma pop

/* 800C70F8-800C72D4 0C1A38 01DC+00 3/3 0/0 0/0 .text            procSmallJumpInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procSmallJumpInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procSmallJumpInit__9daAlink_cFi.s"
}
#pragma pop

/* 800C72D4-800C74D4 0C1C14 0200+00 1/0 0/0 0/0 .text            procSmallJump__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procSmallJump() {
    nofralloc
#include "asm/d/a/d_a_alink/procSmallJump__9daAlink_cFv.s"
}
#pragma pop

/* 800C74D4-800C755C 0C1E14 0088+00 1/1 0/0 0/0 .text            procStepMoveInit__9daAlink_cFv */
int daAlink_c::procStepMoveInit() {
    commonProcInit(PROC_STEP_MOVE);
    setSingleAnimeParam(ANM_S_JUMP_START, &daAlinkHIO_smallJump_c0::m.mStepClimbAnm);
    field_0x3478 = lit_5943 * mNormalSpeed;
    mNormalSpeed = FLOAT_LABEL(lit_6108);

    mCommonCounter = 0;
    field_0x3588 = l_waitBaseAnime;

    return 1;
}

/* 800C755C-800C7690 0C1E9C 0134+00 1/0 0/0 0/0 .text            procStepMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procStepMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procStepMove__9daAlink_cFv.s"
}
#pragma pop

/* 800C7690-800C76F8 0C1FD0 0068+00 1/0 0/0 0/0 .text            procCrouchInit__9daAlink_cFv */
int daAlink_c::procCrouchInit() {
    if (!commonProcInitNotSameProc(PROC_CROUCH)) {
        return 0;
    }

    setSingleAnimeBaseSpeed(ANM_CROUCH, daAlinkHIO_crouch_c0::m.field_0x30, daAlinkHIO_crouch_c0::m.field_0x34);
    current.angle.y = shape_angle.y;
    return 1;
}

/* ############################################################################################## */
/* 804532EC-804532F0 0018EC 0004+00 1/1 0/0 0/0 .sdata2          @74138 */
SECTION_SDATA2 static f32 lit_74138 = -80.0f;

/* 800C76F8-800C77F4 0C2038 00FC+00 1/0 0/0 0/0 .text            procCrouch__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCrouch() {
    nofralloc
#include "asm/d/a/d_a_alink/procCrouch__9daAlink_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 804255F8-80425604 052318 000C+00 0/1 0/0 0/0 .bss             @4419 */
#pragma push
#pragma force_active on
static u8 lit_4419[12];
#pragma pop

/* 80425604-80425610 052324 000C+00 0/1 0/0 0/0 .bss             l_sumouBaseAnimeSp */
#pragma push
#pragma force_active on
static u8 l_sumouBaseAnimeSp[12];
#pragma pop

/* 80425610-8042561C 052330 000C+00 0/1 0/0 0/0 .bss             @4420 */
#pragma push
#pragma force_active on
static u8 lit_4420[12];
#pragma pop

/* 8042561C-80425628 05233C 000C+00 37/39 0/0 0/0 .bss             l_wolfBaseAnime */
static Vec l_wolfBaseAnime;

BOOL daMidna_c::checkMidnaRealBody() {
    return dKy_darkworld_check() == 1 || dComIfGs_isTransformLV(3);
}

/* 800C77F4-800C7C64 0C2134 0470+00 4/2 0/0 0/0 .text procCoMetamorphoseInit__9daAlink_cFv */
// small regalloc
#ifdef NONMATCHING
int daAlink_c::procCoMetamorphoseInit() {
    int var_r29 = 0;

    if (i_dComIfGp_getEvent().i_isOrderOK()) {
        if (!dComIfGp_event_compulsory(this, NULL, 0xFFFF)) {
            return 0;
        }
        mDemo.i_setSpecialDemoType();
        mDamageTimer = 0;
        var_r29 = 1;
    }

    if (!commonProcInitNotSameProc(PROC_METAMORPHOSE)) {
        return 1;
    }

    field_0x3198 = var_r29;
    field_0x3008 = 0;
    field_0x300e = 0;
    field_0x3010 = 0;
    field_0x347c = 1.0f;
    mFallVoiceInit = 0;

    if ((i_checkWolf() && mDemo.getDemoMode() == 0x39) ||
        (!i_checkWolf() && mDemo.getDemoMode() == 0x3A)) {
        field_0x300a = 1;
        mSpeed.y = 0.0f;
        mNormalSpeed = 0.0f;

        if (i_checkWolf()) {
            mCommonCounter = shape_angle.x;
        }
    } else {
        deleteEquipItem(FALSE, TRUE);

        if (i_checkEndResetFlg0(ERFLG0_UNK_2) && checkStageName("D_MN08")) {
            field_0x3010 = 1;
        }
        field_0x300a = 0;

        if (i_checkWolf()) {
            // Transform Wolf -> Human
            setSingleAnimeWolfBase(WANM_TRANSFORM_TO_HUMAN);
            field_0x3588 = l_wolfBaseAnime;
            field_0x347c = 0.5f;
            field_0x3480 = daAlinkHIO_basic_c0::m.mWolfLinkTransformSpeed;
            mCommonCounter = shape_angle.x;

            daMidna_c* midna = getMidnaActor();
            if (i_checkMidnaRide() && daMidna_c::checkMidnaRealBody() && midna->checkDemoTypeNone()) {
                midna->changeOriginalDemo();
                midna->changeDemoMode(15);
            }
        } else {
            // Transform Human -> Wolf
            if (mDemo.getDemoMode() == 0x39 && mDemo.getParam1() == 1) {
                voiceStart(Z2SE_AL_V_TRANSFORM);
            }

            setSingleAnimeBase(ANM_TRANSFORM_TO_WOLF);
            setMetamorphoseModel(1);
            field_0x3588 = l_waitBaseAnime;
            field_0x3480 = daAlinkHIO_basic_c0::m.mLinkWolfTransformSpeed;

            cXyz pos(current.pos.x + (cM_ssin(shape_angle.y) * 100.0f),
                     current.pos.y + 300.0f,
                     current.pos.z + (cM_scos(shape_angle.y) * 100.0f));
            mLinkGndChk.SetPos(&pos);

            f32 gnd_cross = dComIfG_Bgsp().GroundCross(&mLinkGndChk);
            if (gnd_cross != -1000000000.0f) {
                pos.y = gnd_cross;

                cXyz sp14 = current.pos;
                cXyz sp8 = pos;

                BOOL var_r28 = false;
                for (int i = 0; i < 4; i++) {
                    if (i == 3) {
                        sp14.y = gnd_cross + 5.0f;
                    } else {
                        sp14.y = current.pos.y + field_0x18B0[i].GetWallH();
                    }
                    sp8.y = sp14.y;

                    if (commonLineCheck(&sp14, &sp8) && dBgS_CheckBWallPoly(mLinkLinChk) && dComIfG_Bgsp().GetWallCode(mLinkLinChk) != 7) {
                        var_r28 = true;
                        break;
                    }
                }

                if (var_r28) {
                    mCommonCounter = field_0x2ff0;
                } else {
                    pos -= current.pos;
                    mCommonCounter = pos.atan2sY_XZ();

                    if (abs(mCommonCounter) > cM_deg2s(70.0f)) {
                        mCommonCounter = field_0x2ff0;
                    }
                }
            } else {
                mCommonCounter = 0;
            }
        }
        mSpeed.y = 0.0f;
        mNormalSpeed = 0.0f;
        field_0x3012 = 0;
    }

    field_0x3484 = current.pos.y;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoMetamorphoseInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoMetamorphoseInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80392070-8039207C 01E6D0 000C+00 0/1 0/0 0/0 .rodata          @74273 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_74273[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80392070, &lit_74273);
#pragma pop

/* 804532F0-804532F4 0018F0 0004+00 1/1 0/0 0/0 .sdata2          @74385 */
SECTION_SDATA2 static f32 lit_74385 = 1.0f / 26.0f;

/* 804532F4-804532F8 0018F4 0004+00 1/1 0/0 0/0 .sdata2          @74386 */
SECTION_SDATA2 static f32 lit_74386 = -64.0f;

/* 804532F8-80453300 0018F8 0008+00 1/1 0/0 0/0 .sdata2          @74387 */
SECTION_SDATA2 static f64 lit_74387 = 15.0;

/* 80453300-80453308 001900 0008+00 1/1 0/0 0/0 .sdata2          @74388 */
SECTION_SDATA2 static f64 lit_74388 = 49.0;

/* 80453308-80453310 001908 0008+00 1/1 0/0 0/0 .sdata2          @74389 */
SECTION_SDATA2 static f64 lit_74389 = 1.0;

/* 80453310-80453318 001910 0008+00 1/1 0/0 0/0 .sdata2          @74390 */
SECTION_SDATA2 static f64 lit_74390 = 1.0 / 14.0;

/* 80453318-80453320 001918 0008+00 1/1 0/0 0/0 .sdata2          @74391 */
SECTION_SDATA2 static f64 lit_74391 = -64.0;

/* 80453320-80453328 001920 0008+00 1/1 0/0 0/0 .sdata2          @74392 */
SECTION_SDATA2 static f64 lit_74392 = -15.0;

/* 80453328-80453330 001928 0008+00 1/1 0/0 0/0 .sdata2          @74393 */
SECTION_SDATA2 static f64 lit_74393 = 1.0 / 9.0;

/* 80453330-80453334 001930 0004+00 1/1 0/0 0/0 .sdata2          @74394 */
SECTION_SDATA2 static f32 lit_74394 = 49.0f;

/* 80453334-80453338 001934 0004+00 1/1 0/0 0/0 .sdata2          @74395 */
SECTION_SDATA2 static f32 lit_74395 = 1.0f / 36.0f;

/* 800C7C64-800C82E8 0C25A4 0684+00 1/0 0/0 0/0 .text            procCoMetamorphose__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoMetamorphose() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoMetamorphose__9daAlink_cFv.s"
}
#pragma pop

/* 800C82E8-800C83A0 0C2C28 00B8+00 2/0 0/0 0/0 .text procCoMetamorphoseOnlyInit__9daAlink_cFv */
int daAlink_c::procCoMetamorphoseOnlyInit() {
    if (!commonProcInitNotSameProc(PROC_METAMORPHOSE_ONLY)) {
        return 1;
    }

    deleteEquipItem(0, 1);
    if ((i_checkWolf() && mDemo.getDemoMode() == 0x46) || (!i_checkWolf() && mDemo.getDemoMode() == 0x47)) {
        mCommonCounter = 1;
        field_0x300e = 1;
    } else {
        mCommonCounter = 0;
        field_0x300e = 0;
    }

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    mNormalSpeed = tmp_0;
    mSpeed.y = tmp_0;
    setSpecialGravity(tmp_0, mMaxFallSpeed, 0);

    return 1;
}

/* 800C83A0-800C8460 0C2CE0 00C0+00 1/0 0/0 0/0 .text procCoMetamorphoseOnly__9daAlink_cFv */
int daAlink_c::procCoMetamorphoseOnly() {
    if (mCommonCounter == 0) {
        mClothesChangeWaitTimer = 4;
        mCommonCounter = 1;
    } else if (mClothesChangeWaitTimer == 0) {
        if (field_0x300e == 0) {
            field_0x300e = 1;

            if (i_checkWolf()) {
                setSingleAnimeWolfBaseSpeed(WANM_WAIT, daAlinkHIO_wlMoveNoP_c0::m.field_0x14, lit_6041);
            } else {
                setSingleAnimeBaseSpeed(ANM_WAIT, daAlinkHIO_move_c0::m.mWaitAnmSpeed, lit_6041);
            }
        }

        dComIfGp_evmng_cutEnd(field_0x3184);
    }

    return 1;
}

/* 800C8460-800C84D0 0C2DA0 0070+00 2/2 0/0 0/0 .text procFloorDownReboundInit__9daAlink_cFv */
int daAlink_c::procFloorDownReboundInit() {
    commonProcInit(PROC_FLOOR_DOWN_REBOUND);
    setSingleAnime(ANM_JUMP_LAND, lit_9652,
                   daAlinkHIO_autoJump_c0::m.mLandAnm.mStart,
                   daAlinkHIO_autoJump_c0::m.mLandAnm.mEndF, lit_7625);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    current.angle.y = shape_angle.y;
    field_0x2f98 = 4;

    return 1;
}

/* 800C84D0-800C854C 0C2E10 007C+00 1/0 0/0 0/0 .text            procFloorDownRebound__9daAlink_cFv
 */
int daAlink_c::procFloorDownRebound() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (frameCtrl->checkAnmEnd()) {
        checkNextAction(0);
    } else if (frameCtrl->getFrame() > daAlinkHIO_autoJump_c0::m.mLandAnm.field_0x10) {
        checkNextAction(1);
    }

    return 1;
}

/* 800C854C-800C85D8 0C2E8C 008C+00 1/1 0/0 0/0 .text
 * procGoronRideWaitInit__9daAlink_cFP10fopAc_ac_c              */
int daAlink_c::procGoronRideWaitInit(fopAc_ac_c* param_0) {
    if (!commonProcInitNotSameProc(PROC_GORON_RIDE_WAIT)) {
        return 0;
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    current.pos.x = param_0->current.pos.x;
    current.pos.z = param_0->current.pos.z;
    field_0x2f99 = 0x50;
    current.angle.y = shape_angle.y;
    setBlendMoveAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);

    return 1;
}

/* 800C85D8-800C8700 0C2F18 0128+00 1/0 0/0 0/0 .text            procGoronRideWait__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGoronRideWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procGoronRideWait__9daAlink_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8039207C-80392088 01E6DC 000C+00 0/1 0/0 0/0 .rodata          @74748 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_74748[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8039207C, &lit_74748);
#pragma pop

/* 80392088-80392094 01E6E8 000C+00 0/1 0/0 0/0 .rodata          localBoomCatchPos$74910 */
#pragma push
#pragma force_active on
SECTION_RODATA static Vec const localBoomCatchPos = {
    18.7f, 146.3f, 69.2f,
};
COMPILER_STRIP_GATE(0x80392088, &localBoomCatchPos);
#pragma pop

/* 80392094-80392094 01E6F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803925D1 = "Alink";
SECTION_DEAD static char const* const stringBase_803925D7 = "kiko_yami";
SECTION_DEAD static char const* const stringBase_803925E1 = "fire_insect";
SECTION_DEAD static char const* const stringBase_803925ED = "MapToolCamera19";
SECTION_DEAD static char const* const stringBase_803925FD = "yami_mog";
SECTION_DEAD static char const* const stringBase_80392606 = "R_SP109";
SECTION_DEAD static char const* const stringBase_8039260E = "MapToolCamera1";
SECTION_DEAD static char const* const stringBase_8039261D = "MapToolCamera2";
SECTION_DEAD static char const* const stringBase_8039262C = "MapToolCamera23";
/* @stringBase0 padding */
SECTION_DEAD static char const* const pad_8039263C = "\0\0\0";
#pragma pop

/* 800C8700-800CAFA8 0C3040 28A8+00 1/1 0/0 0/0 .text            execute__9daAlink_cFv */
#ifdef NONMATCHING
int daAlink_c::execute() {
    loadModelDVD();

    if (checkEndResetFlg0(ERFLG0_UNK_2000000) && getMidnaActor() != NULL) {
        getMidnaActor()->onNoServiceWait();
    }

    if (field_0x30fe != 0) {
        *field_0x814.GetCCMoveP() = field_0x372c * (1.0f / (f32)field_0x30fe);
    }

    if (checkHorseRide() && checkBoarSingleBattle() && dComIfGp_getHorseActor() != NULL) {
        shape_angle.y = dComIfGp_getHorseActor()->shape_angle.y;
        current.angle.y = shape_angle.y;
    } else if (checkMagneBootsOn()) {
        shape_angle.y = field_0x3118;
    } else if (checkModeFlg(MODE_VINE_CLIMB) || checkCargoCarry()) {
        shape_angle.y = field_0x3108;
    }

    if (checkNoResetFlg2(FLG2_UNK_1) && mEquipItem != KANTERA && checkItemSetButton(KANTERA) == 2) {
        offKandelaarModel();
    }

    mSwordChangeWaitTimer = 0;
    setSelectEquipItem(0);

    if (dComIfGp_event_runCheck()) {
        field_0x3184 = dComIfGp_evmng_getMyStaffId("Alink", this, 0);

        if (mEvtInfo.checkCommandDoor() && !dComIfGp_event_chkEventFlag(4) && mEquipItem == 0x102) {
            deleteEquipItem(FALSE, FALSE);
        }
    }

    if (mSwordUpTimer != 0) {
        mSwordUpTimer--;
    }

    field_0x317c = dComIfGp_getPlayerCameraID(0);
    field_0x3510 = current.pos;

    if (checkMagneBootsOn()) {
        if (checkNoResetFlg0(FLG0_UNK_2000) && dComIfG_Bgsp().ChkPolySafe(mMagneLineChk) && dComIfG_Bgsp().ChkMoveBG(mMagneLineChk)) {
            s16 shape_angle_y = shape_angle.y;
            s16 angle_y = current.angle.y;
            f32 pos_y = current.pos.y;

            dComIfG_Bgsp().MoveBgCrrPos(mMagneLineChk, true, &current.pos, &current.angle, &shape_angle, false, false);
            
            if (field_0x3114 > 0x6000 || field_0x3114 == -0x8000) {
                shape_angle.y = shape_angle_y - (s16)(shape_angle.y - shape_angle_y);
                current.angle.y = angle_y - (s16)(current.angle.y - angle_y);
            }

            dComIfG_Bgsp().MoveBgCrrPos(mMagneLineChk, true, &next.pos, NULL, NULL, false, false);

            if (getMoveBGActorName(mMagneLineChk, 0) == PROC_Obj_MagneArm) {
                field_0x34c8.y += current.pos.y - pos_y;
            }  else {
                field_0x34c8.y += (current.pos.y - pos_y) * 0.1f;
            }
        }
    } else if (mProcID != PROC_HOOKSHOT_FLY && !checkModeFlg(MODE_VINE_CLIMB | MODE_UNK_800) && mProcID != PROC_TOOL_DEMO && 
               mLinkAcch.GetGroundH() != -1000000000.0f &&
               dComIfG_Bgsp().ChkPolySafe(mLinkAcch.m_gnd) && dComIfG_Bgsp().ChkMoveBG(mLinkAcch.m_gnd)) {
        bool uvar23;
        if (mProcID == PROC_SPINNER_READY) {
            uvar23 = true;
        } else {
            uvar23 = mLinkAcch.ChkGroundHit();
        }
        f32 pos_y = current.pos.y;

        dComIfG_Bgsp().MoveBgCrrPos(mLinkAcch.m_gnd, uvar23, &current.pos, &current.angle, &shape_angle, false, false);
        dComIfG_Bgsp().MoveBgCrrPos(mLinkAcch.m_gnd, uvar23, &next.pos, NULL, NULL, false, false);
        field_0x34c8.y += (current.pos.y - pos_y) * 0.1f;
    }

    field_0x3798 = next.pos;
    field_0x2fe6 = shape_angle.y;
    mPrevStickAngle = mStickAngle;
    field_0x33a4 = field_0x33ac;

    if (checkResetFlg0(RFLG0_UNK_8000000) && !checkCutDashAnime()) {
        mCutType = 0;
    }

    mResetFlg0 = 0;
    mResetFlg1 = 0;
    
    daAlink_matAnm_c::decMorfFrame();
    field_0x2180[0]->offSetFlg();
    field_0x2180[1]->offSetFlg();

    field_0x2f99 = 0;
    field_0x2f9d = 0;
    field_0x2fc1 = 6;

    if (!checkSwordGet() && mEquipItem == 0x103) {
        deleteEquipItem(FALSE, FALSE);
    }

    field_0x2fae = 0;

    setDoStatus(0);
    setRStatus(0);
    set3DStatus(0, 0);
    setMidnaTalkStatus(0);

    if (checkWolf()) {
        setBStatus(ACTION_STR_ATTACK);
        setWolfDigStatus(ACTION_STR_NONE);

        // Have wolf sense ability
        if (dComIfGs_isEventBit(0x4308)) {
            setWolfSenceStatus(ACTION_STR_SENSE);
        } else {
            setWolfSenceStatus(ACTION_STR_NONE);
        }
    } else {
        if (checkCanoeRide() && checkStageName("F_SP127")) {
            setBStatus(ACTION_STR_NONE5);
        } else if (checkSwordGet()) {
            setBStatus(ACTION_STR_NONE3);
        } else {
            setBStatus(ACTION_STR_NONE);
        }
    }

    field_0x2f91 = 0;

    if (mProcID == PROC_BOTTLE_SWING && mEvtInfo.checkCommandCatch()) {
        mDemo.setSpecialDemoType();
    }

    field_0x280c.setActor();
    mRideAcKeep.setActor();

    if (checkNoResetFlg2(FLG2_UNK_58)) {
        field_0x281c.setActor();
        if (field_0x281c.getActor() == NULL) {
            offNoResetFlg2(FLG2_UNK_58);
        }
    } else {
        field_0x281c.clearData();
    }

    field_0x2844.setActor();
    mThrowBoomerangAcKeep.setActor();
    mCopyRodAcKeep.setActor();

    if (mCopyRodAcKeep.getActor() != NULL) {
        static_cast<daCrod_c*>(mCopyRodAcKeep.getActor())->setControllActorData();
    }

    mGrabItemAcKeep.setActor();
    field_0x284c.setActor();
    field_0x285c.setActor();

    if (checkFishingRodAndLureItem() && mItemAcKeep.getActor() == NULL) {
        fopAc_ac_c* item_actor = fopAcM_SearchByID(mItemAcKeep.getID());
        if (item_actor != NULL) {
            mItemAcKeep.setData(item_actor);
        }
    } else {
        mItemAcKeep.setActor();
    }

    if (checkWolf()) {
        checkWolfLockData();
    }

    setAtnList();
    setDemoData();
    setStickData();

    if (mFastShotTime < 0) {
        mFastShotTime = 0;
    }

    checkOxygenTimer();

    if (field_0x2fce != 0) {
        field_0x2fce--;
    }

    if (field_0x2fcd != 0) {
        field_0x2fcd--;
    }

    if (field_0x3000 != 0) {
        field_0x3000--;
    }

    if (field_0x30fc != 0) {
        field_0x30fc--;
    }

    if (field_0x2fb4 != 0) {
        field_0x2fb4--;
    }

    if (field_0x30a4 != 0) {
        field_0x30a4--;
    }

    if (field_0x30a6 != 0) {
        field_0x30a6--;
    }

    if (field_0x30ec != 0) {
        field_0x30ec--;
    }

    if (mSwordFlourishTimer != 0) {
        mSwordFlourishTimer--;
    }

    if (field_0x3100 != 0) {
        field_0x3100--;
    }

    if (field_0x2fc4 != 0) {
        field_0x2fc4--;
    }

    if (field_0x30d2 != 0) {
        field_0x30d2--;
    }

    if (field_0x30d0 != 0) {
        field_0x30d0--;
    } else {
        offNoResetFlg1(FLG1_DASH_MODE);
    }

    if (field_0x2fd2 != 0) {
        field_0x2fd2--;
    }

    if (field_0x2fd3 != 0 && mProcID != PROC_BOTTLE_DRINK && mProcID != PROC_CANOE_BOTTLE_DRINK && mProcID != PROC_HORSE_BOTTLE_DRINK) {
        field_0x2fd3--;
    }
    
    if (field_0x2fd4 != 0 && mProcID != PROC_GUARD_SLIP) {
        field_0x2fd4--;

        if (field_0x2fd4 == 0) {
            field_0x2fd5 = 0;
        }
    }

    if (checkWolfEyeUp()) {
        fopAc_ac_c* partner = (fopAc_ac_c*)fopAcM_getTalkEventPartner(this);

        const char* event_name;
        if (checkEventRun()) {
            event_name = dComIfGp_getEventManager().getRunEventName();
        } else {
            event_name = NULL;
        }

        if (event_name != NULL) {
            if (!strcmp(event_name, "kiko_yami") || !strcmp(event_name, "fire_insect") ||
               (checkStageName("F_SP108") && (!strcmp(event_name, "MapToolCamera19") || !strcmp(event_name, "yami_mog"))) ||
               (checkStageName("R_SP109") && (!strcmp(event_name, "MapToolCamera1") || !strcmp(event_name, "MapToolCamera2") || !strcmp(event_name, "MapToolCamera19") || !strcmp(event_name, "fire_insect"))) ||
               (checkStageName("F_SP115") && !strcmp(event_name, "MapToolCamera23"))) {
                mWolfEyeUp = daAlinkHIO_wolf_c0::m.mSensesLingerTime + 1;
            }
        }
        
        if (checkEndResetFlg1(ERFLG1_UNK_200) || (checkDungeon() && mEvtInfo.checkCommandDoor()) ||
            mProcID == PROC_WOLF_GET_SMELL || mProcID == PROC_WOLF_DIG || mProcID == PROC_WOLF_DIG_THROUGH ||
            checkNoResetFlg0(FLG0_UNK_4000) || dComIfGp_checkPlayerStatus1(0, 0x1000000) ||
            (checkEventRun() && partner != NULL && (partner->mAttentionInfo.mFlags & 0x400000)) ||
            !strcmp(dComIfGp_getEventManager().getRunEventName(), l_defaultGetEventName)) {
            mWolfEyeUp = daAlinkHIO_wolf_c0::m.mSensesLingerTime;
        } else if (mTargetedActor != NULL || dComIfGp_checkPlayerStatus0(0, 0x2000)) {
            mWolfEyeUp = daAlinkHIO_wolf_c0::m.mSensesLingerTime - 1;
        } else if (!dComIfGp_getEvent().isOrderOK() && mProcID != PROC_GET_ITEM && 
                   mWolfEyeUp <= daAlinkHIO_wolf_c0::m.mSensesLingerTime) {
            offWolfEyeUp();
        } else {
            mWolfEyeUp = 1;
        }
    }

    if (checkEndResetFlg0(ERFLG0_UNK_1000000) && mEquipItem == 0x103) {
        mSwordFlourishTimer = daAlinkHIO_cut_c0::m.mFlourishTime;
    }

    if ((checkWolf() && field_0x2fbc == 11 && checkWaterPolygonUnder()) || field_0x2fbb == 11) {
        onNoResetFlg0(FLG0_UNK_40000000);
    }

    fopAc_ac_c* item_actor = mGrabItemAcKeep.getActor();
    if (item_actor != NULL && (!fopAcM_checkCarryNow(item_actor) || (checkNoResetFlg0(FLG0_UNDERWATER) && (checkGrabRooster() || fopAcM_GetName(item_actor) == PROC_E_NEST || checkGrabCarryActor())))) {
        freeGrabItem();
    }

    allAnimePlay();

    if (mDamageTimer != 0) {
        damageTimerCount();
    }

    if (checkEquipHeavyBoots()) {
        int temp_r3_22 = checkItemSetButton(HVY_BOOTS);
        if (temp_r3_22 == 2 || checkNotHeavyBootsStage()) {
            if (!dComIfGp_checkPlayerStatus1(0, 0x10000) || !checkHookshotRoofLv7Boss()) {
                setHeavyBoots(0);
            }
        } else {
            dMeter2Info_onDirectUseItem(temp_r3_22);
        }
    }

    checkWarpStart();

    if (!checkSpecialDemoMode() && mClothesChangeWaitTimer == 0) {
        if (!checkDemoAction() && !checkDeadAction(0) && !checkNoResetFlg0(FLG0_UNK_100000) && !checkAutoJumpAction()) {
            checkSwimAction(0);
        }

        if (checkDamageAction() && mProcID == PROC_LARGE_DAMAGE && checkMagneBootsOn()) {
            cancelMagneBootsOn();
        }

        checkBoomerangCatchAction();
    }

    offNoResetFlg1(FLG1_UNK_20);

    if (checkWolf()) {
        checkWolfComboCnt();

        if (checkWolfEnemyThrowAnime()) {
            checkWolfEnemyThrowAction();
        }
    } else {
        checkItemButtonChange();
        setItemAction();
        checkComboCnt();
        setShieldGuard();

        if (checkCutFastReady()) {
            if (checkNoUpperAnime()) {
                setUpperAnime(0x255, UPPER_2, daAlinkHIO_cut_c0::m.mEquipAnm.mRate, 12.0f, daAlinkHIO_cut_c0::m.mEquipAnm.mEndF, daAlinkHIO_cut_c0::m.mEquipAnm.mInterpolation);
                onNoResetFlg0(FLG0_UNK_1000000);
            }
        } else if (checkNoResetFlg0(FLG0_UNK_1000000)) {
            resetUpperAnime(UPPER_2, 5.0f);
        }

        if (mEquipItem == KANTERA && checkNoUpperAnime() && !checkKandelaarEquipAnime() && (checkModeFlg(MODE_UNK_1000) || mProcID == PROC_CROUCH)) {
            if (checkReinRide()) {
                setUpperAnimeBase(0x264);
            } else {
                setUpperAnimeBase(0x268);
            }

            mNowAnmPackUpper[2].setRatio(0.0f);
        }
    }

    checkLightSwordMtrl();
    (this->*mpProcFunc)();

    if (!checkEndResetFlg0(ERFLG0_UNK_2000) && checkWindDashAnime()) {
        resetUpperAnime(UPPER_2, 3.0f);
    }

    playFaceTextureAnime();
    
    cXyz old_pos = current.pos;
    posMove();

    if (checkWolf()) {
        wolfBgCheck();
    } else if (checkModeFlg(MODE_SWIMMING)) {
        swimBgCheck(120.0f);
    }

    cXyz pos = current.pos;
    field_0x3528 = mSpeed;

    mLinkAcch.ClrGroundHit();
    mLinkAcch.CrrPos(dComIfG_Bgsp());

    if (checkMagneBootsOn()) {
        current.pos = pos;
    }

    if (!mLinkAcch.ChkGroundHit() && !mLinkAcch.ChkRoofHit() && getZoraSwim()) {
        current.pos.y = pos.y;
    }

    iceSlipBgCheck();
    setWaterY();
    autoGroundHit();

    if (checkNoResetFlg0(FLG0_UNDERWATER) || (checkPossibleWaterInMode() && !checkNoResetFlg0(FLG0_UNK_100))) {
        f32 var_f31;
        if (mProcID == PROC_HOOKSHOT_FLY) {
            var_f31 = current.pos.y - (field_0x598 * 0.5f);
        } else if (dComIfGp_checkPlayerStatus1(0, 0x2000000)) {
            var_f31 = (-65.0f + current.pos.y) - daAlinkHIO_swim_c0::m.mInitHeight;
        } else {
            var_f31 = current.pos.y;
        }

        if (!checkNoResetFlg0(FLG0_UNK_80) || mWaterY - var_f31 <= daAlinkHIO_swim_c0::m.mInitHeight) {
            swimOutAfter(0);
        }
    }

    if (mProcID == PROC_TOOL_DEMO || mProcID == PROC_GANON_FINISH) {
        J3DTransformInfo ti;
        field_0x1f20->getAnm(0)->getTransform(0, &ti);
        mDoMtx_stack_c::transS(old_pos);
        mDoMtx_stack_c::YrotM(shape_angle.y);

        Vec tmp;
        mDoMtx_stack_c::multVec(&tmp, &current.pos);
        mSpeed.y = 0.0f;

        if (field_0x3198 != 0) {
            if (mLinkAcch.GetGroundH() != -1000000000.0f) {
                current.pos.y = mLinkAcch.GetGroundH();
            }
        }
    } else if (mProcID == PROC_HOOKSHOT_FLY || mProcID == PROC_MAGNE_BOOTS_FLY || (checkModeFlg(MODE_ROPE_WALK | MODE_VINE_CLIMB | MODE_UNK_800 | MODE_RIDING) && mProcID != PROC_HORSE_GETOFF && mProcID != PROC_WOLF_CHAIN_READY && !checkBoardRide())) {
        current.pos = pos;
    } else if (checkModeFlg(MODE_UNK_4000)) {
        if (mProcID == PROC_DOOR_OPEN || mProcID == PROC_HANG_LEVER_DOWN) {
            current.pos.y = old_pos.y;
            mSpeed.y = 0.0f;
        }
        current.pos.x = pos.x;
        current.pos.z = pos.z;
    } else if (checkFlyAtnWait() || mProcID == PROC_WARP) {
        current.pos.y = old_pos.y;
        mSpeed.y = 0.0f;
    }

    field_0x3178 = field_0x3174;

    if (mLinkAcch.GetGroundH() != -1000000000.0f) {
        setRoomInfo();

        if (!checkModeFlg(MODE_PLAYER_FLY) && !checkMagneBootsOn() && mProcID != PROC_TOOL_DEMO && mProcID != PROC_GANON_FINISH && mProcID != PROC_DUNGEON_WARP && (field_0x2f8c == 1 || field_0x2f8c == 3)) {
            setStepsOffset();
        } else {
            field_0x2b9c = 0.0f;
            if (!checkModeFlg(MODE_SWIMMING)) {
                field_0x2b98 = 0.0f;
            }
        }

        if (checkModeFlg(MODE_UNK_2000000)) {
            setShapeAngleOnGround();
        }

        if (!checkRestartRoom() && !checkDeadHP()) {
            checkSceneChange(dComIfG_Bgsp().GetExitId(mLinkAcch.m_gnd));
        }

        if (mLinkAcch.ChkGroundHit()) {
            if (dComIfG_Bgsp().ChkMoveBG(mLinkAcch.m_gnd)) {
                dComIfG_Bgsp().MoveBgTransPos(mLinkAcch.m_gnd, true, &field_0x34ec, NULL, NULL);
            }

            if (checkNoResetFlg0(FLG0_UNK_80) && !checkNoResetFlg0(FLG0_UNDERWATER) && mWaterY >= mLinkAcch.GetGroundH()) {
                mPolySound = dKy_pol_sound_get(&mLinkAcch.m_wtr);
            } else if (checkEndResetFlg0(ERFLG0_UNK_200000)) {
                mPolySound = 11;
            } else {
                mPolySound = dKy_pol_sound_get(&mLinkAcch.m_gnd);
            }

            field_0x2ff0 = getGroundAngle(&mLinkAcch.m_gnd, shape_angle.y);
        } else {
            if (mProcID == PROC_TOOL_DEMO || mProcID == PROC_GANON_FINISH) {
                if (checkNoResetFlg0(FLG0_UNK_80) && mWaterY >= mLinkAcch.GetGroundH()) {
                    mPolySound = dKy_pol_sound_get(&mLinkAcch.m_wtr);
                } else if (checkEndResetFlg0(ERFLG0_UNK_200000)) {
                    mPolySound = 11;
                } else {
                    mPolySound = dKy_pol_sound_get(&mLinkAcch.m_gnd);
                }
            } else if (checkModeFlg(MODE_SWIMMING) && checkNoResetFlg0(FLG0_UNK_80)) {
                mPolySound = dKy_pol_sound_get(&mLinkAcch.m_wtr);
            } else {
                mPolySound = 0;
            }

            field_0x2ff0 = 0;
        }
        mDoAud_setLinkGroupInfo(dComIfG_Bgsp().GetGrpSoundId(mLinkAcch.m_gnd));
    } else {
        field_0x3174 = -1;
        field_0x2ff0 = 0;
        field_0x2fbb = 16;
        field_0x2fbd = 0;
        field_0x2fa8 = 0;

        if (checkModeFlg(MODE_SWIMMING) && dComIfG_Bgsp().ChkPolySafe(mLinkAcch.m_wtr)) {
            mPolySound = dKy_pol_sound_get(&mLinkAcch.m_wtr);
        } else {
            mPolySound = 0;
        }

        if (!checkRestartRoom() && !checkDeadHP()) {
            checkSceneChange(0x3F);
        }
    }

    if (checkMagneBootsOn()) {
        field_0x2fbd = 0;
        field_0x2f5c.mPosition = current.pos;
        field_0x2f5c.mPow = 100.0f;

        if (checkNoResetFlg0(FLG0_UNK_2000)) {
            mPolySound = dKy_pol_sound_get(&mMagneLineChk);
            field_0x2ff0 = 0;
            field_0x3174 = dComIfG_Bgsp().GetGroundCode(mMagneLineChk);
            field_0x2fbb = dComIfG_Bgsp().GetPolyAtt0(mMagneLineChk);
            field_0x2fa8 = dComIfG_Bgsp().GetSpecialCode(mMagneLineChk);
            setMagneBootsMtx(&mMagneLineChk, 0);
        } else {
            mPolySound = 0;
            field_0x2ff0 = 0;
            field_0x3174 = -1;
            field_0x2fbb = 16;
            field_0x2fa8 = 0;
        }
    } else {
        field_0x2f5c.mPow = 0.0f;
        if (mProcID != PROC_MAGNE_BOOTS_FLY) {
            mMagneBootsTopVec = cXyz::BaseY;
        }
    }

    if (dComIfGp_evmng_startCheck(l_peepEventName)) {
        if (field_0x2ff2 > 0) {
            field_0x2ff2--;
        } else if (dComIfGp_evmng_startCheck(l_peepEventName)) {
            startPeepChange();
        }
    }

    if (checkModeFlg(MODE_VINE_CLIMB) && mCommonCounter != 0 && dComIfG_Bgsp().ChkPolySafe(mPolyInfo1)) {
        mZ2Link.framework(dKy_pol_sound_get(&mPolyInfo1), mVoiceReverbIntensity);
    } else {
        mZ2Link.framework(mPolySound, mVoiceReverbIntensity);
    }

    if (field_0x2d7c != NULL) {
        mZ2Link.updateAnime(field_0x2d7c->getFrame(), field_0x2d7c->getRate());
    }

    if (mProcID != PROC_DAMAGE && mProcID != PROC_SWIM_DAMAGE && mProcID != PROC_HORSE_DAMAGE) {
        setMoveSlantAngle();

        if (checkReinRide() && checkUpperGuardAnime()) {
            setBodyAngleRideReadyAnime();
        } else if (!checkSmallUpperGuardAnime() && !checkWolf()) {
            if (!checkModeFlg(MODE_UNK_20000000)) {
                if (checkUpperGuardAnime()) {
                    setBodyAngleXReadyAnime(0);
                } else if (!checkUpperReadyThrowAnime()) {
                    cLib_addCalcAngleS(&mLookAngleY, 0, 4, 0x0C00, 0x0180);
                }
            }

            if (!checkModeFlg(MODE_UNK_40000000)) {
                cLib_addCalcAngleS(&field_0x59e, 0, 4, 0x0C00, 0x0180);
            }
        }
    }

    setMatrix();
    setNeckAngle();

    if (field_0x2fcc != 0) {
        field_0x2fcc--;
    }

    if (!checkWolf()) {
        setHatAngle();

        if (field_0x2fb0 != 0) {
            field_0x2fb0--;
        }

        footBgCheck();
        handBgCheck();

        field_0x30c8 = field_0x59e >> 1;
        modelCalc(mpLinkModel);

        if (field_0x2fcb != 0) {
            if (checkWoodShieldEquip() && mWaterY < mShieldModel->getBaseTRMtx()[1][3]) {
                field_0x2fcb--;
                
                if (field_0x2fcb == 0) {
                    dMeter2Info_setShield(NO_ITEM, true);
                    stickArrowIncrement(1);
                    setWoodShieldBurnOutEffect();

                    // "Your shield burned up..."
                    dMeter2Info_setFloatingMessage(2047, 90, false);

                    stage_stag_info_class* pstag = dComIfGp_getStage()->getStagInfo();
                    if (dStage_stagInfo_GetSaveTbl(pstag) == 0x11 && !dComIfGs_isItemFirstBit(HYLIA_SHIELD)) {
                        fopAcM_onSwitch(this, 0x6F);
                    }
                    seStartOnlyReverb(Z2SE_AL_WOOD_SHIELD_BURN);
                }
            } else {
                clearWoodShieldBurnEffect();
            }
        }

        if (checkShieldGet() && !checkWoodShieldEquip()) {
            stickArrowIncrement(1);
        }
        setItemMatrix(0);
    } else {
        daMidna_c* pmidna = getMidnaActor();

        if (mClothesChangeWaitTimer == 0) {
            if ((pmidna->checkMidnaTired() || pmidna->checkForceTiredColor()) && !pmidna->checkForceNormalColor()) {
                field_0x79c->getModelData()->entryTevRegAnimator(field_0x7ac);
                mpWlMidnaHatModel->getModelData()->entryTevRegAnimator(field_0x7b0);
                field_0x7a4->getModelData()->entryTevRegAnimator(field_0x7b4);
                mpWlMidnaHairModel->getModelData()->entryTevRegAnimator(field_0x7b8);
            }  else {
                field_0x79c->getModelData()->removeTevRegAnimator(field_0x7ac);
                mpWlMidnaHatModel->getModelData()->removeTevRegAnimator(field_0x7b0);
                field_0x7a4->getModelData()->removeTevRegAnimator(field_0x7b4);
                mpWlMidnaHairModel->getModelData()->removeTevRegAnimator(field_0x7b8);
            }
        }

        wolfFootBgCheck();
        setWolfTailAngle();
        modelCalc(mpLinkModel);
        checkWolfUseAbility();

        if (checkWolfEyeUp() != 0) {
            mWolfEyeUpTimer++;
            if (mWolfEyeUpTimer > 30) {
                mWolfEyeUpTimer = 30;
            }
        } else if (mWolfEyeUpTimer != 0) {
            mWolfEyeUpTimer--;
        }

        setWolfItemMatrix();
    }

    if (checkFmChainGrabAnime()) {
        mNowAnmPackUpper[2].setRatio(1.0f);
    }

    setBodyPartPos();

    if (!checkWolf() && checkEndResetFlg0(ERFLG0_UNK_800000)) {
        setHatAngle();
        modelCalc(mpLinkModel);
    }

    setHangWaterY();
    setCollision();
    setAttentionPos();
    setLight();
    setEffect();

    if (mClothesChangeWaitTimer != 0) {
        mDoMtx_stack_c::copy(mpLinkModel->getBaseTRMtx());

        if (!checkWolf()) {
            mDoMtx_stack_c::transM(0.0f, 0.0f, 30.0f);
        }

        mpWlChangeModel->setBaseTRMtx(mDoMtx_stack_c::get());
        mpWlChangeModel->calc();
    }

    mSight.mLockCursor.update();
    setGrabItemPos();
    
    checkRoofRestart();
    mExitID = 0x3F;
    mpScnChg = NULL;

    cMtx_multVec(mpLinkModel->getAnmMtx(0), &localBoomCatchPos, &field_0x3534);
    
    if (checkResetFlg0(RFLG0_UNK_10)) {
        mZ2Link.setResumeAttack(true);
    } else {
        mZ2Link.setResumeAttack(false);
    }

    if (!checkEventRun() && checkNoResetFlg0(FLG0_UNK_80) && (mWaterY > current.pos.y + 40.0f || checkModeFlg(MODE_SWIMMING)) && getMoveBGActorName(mLinkAcch.m_wtr, 1) == PROC_Obj_Onsen) {
        if (mHotspringRecoverTimer != 0) {
            mHotspringRecoverTimer--;
        } else {
            mHotspringRecoverTimer = daAlinkHIO_basic_c0::m.mHotspringRecoverTime;
            dComIfGp_setItemLifeCount(1.0f, 1);
        }
    } else {
        mHotspringRecoverTimer = daAlinkHIO_basic_c0::m.mHotspringRecoverTime;
    }

    if ((checkAttentionLock() || !checkUpperReadyThrowAnime()) && mProcID != PROC_HOOKSHOT_WALL_SHOOT && mProcID != PROC_HOOKSHOT_ROOF_SHOOT) {
        mFastShotTime = 0;
    }

    if (checkDeadHP()) {
        mEvtInfo.offCondition(2);
    } else if (!checkMagneBootsOn()) {
        f32 var_f31_2;
        if (mLinkAcch.ChkGroundHit()) {
            cM3dGPla plane;
            dComIfG_Bgsp().GetTriPla(mLinkAcch.m_gnd, &plane);
            var_f31_2 = plane.mNormal.y;
        } else {
            var_f31_2 = -1.0f;
        }

        if (cBgW_CheckBGround(var_f31_2) && !checkModeFlg(MODE_PLAYER_FLY)) {
            mEvtInfo.onCondition(0x5D);
        } else if (checkModeFlg(MODE_SWIMMING) || mProcID == PROC_WOLF_ROPE_MOVE ||
                  ((checkReinRide() || checkCanoeRide() || checkSpinnerRide()) &&
                  !checkNoResetFlg3(FLG3_UNK_80000) && !checkModeFlg(MODE_JUMP))) {
            mEvtInfo.onCondition(1);
            if (checkReinRide() || checkCanoeRide()) {
                mEvtInfo.onCondition(8);
            }
        }
    } else if (checkMagneBootsOn() && cBgW_CheckBGround(mMagneBootsTopVec.y)) {
        mEvtInfo.onCondition(1);
    }

    if (checkEndResetFlg1(ERFLG1_UNK_40000) && checkMidnaRide() && checkWolf()) {
        getMidnaActor()->onForcePanic();
    }

    field_0x30fe = 0;
    field_0x372c = cXyz::Zero;
    field_0x2fb8 = 0;

    if (checkMagicArmorWearAbility() && mClothesChangeWaitTimer == 0) {
        if (checkMagicArmorNoDamage() && !checkEventRun()) {
            if (field_0x2fc3 == 0) {
                field_0x2fc3 = 10;
                dComIfGp_setItemRupeeCount(-1);
            } else {
                field_0x2fc3--;
            }
        }

        if (dComIfGs_getRupee() == 0 && field_0x2fd7 != 0) {
            setMagicArmorBrk(0);
            seStartOnlyReverb(Z2SE_AL_M_ARMER_TURNOFF);
            mZ2Link.setLinkState(5);
        } else if (dComIfGs_getRupee() == 0 && field_0x2fd7 == 0) {
            setMagicArmorBrk(1);
            seStartOnlyReverb(Z2SE_AL_M_ARMER_RECOVER);
            mZ2Link.setLinkState(4);
        }
    }

    if (!checkWolf()) {
        for (int i = 0; i < 2; i++) {
            u8 tmp = (i + 1) & 1;
            if (dComIfGp_getSelectItem(i) == EMPTY_BOTTLE && (field_0x2fae & (1 << i)) && dComIfGp_getSelectItem(tmp) == EMPTY_BOTTLE) {
                field_0x2fae |= (1 << tmp);
            }
        }
    }

    for (int i = 0; i < 2; i++) {
        if (!(field_0x2fae & (1 << i)) && !(field_0x2faf & (1 << i))) {
            dMeter2Info_offUseButton(4 << i);
        }
    }

    if (!(field_0x2fae & 0x40) && !(field_0x2faf & 0x40)) {
        dMeter2Info_offUseButton(0x40);
    }

    if (!(field_0x2fae & 0x8) && !(field_0x2faf & 0x8)) {
        dMeter2Info_offUseButton(2);
        if (getSumouMode()) {
            dMeter2Info_offUseButton(1);
        }
    }

    field_0x2faf = field_0x2fae;

    for (int i = 0; i < 4; i++) {
        cXyz tmp(current.pos.x + 500.0f, current.pos.y + 500.0f, current.pos.z + 500.0f);
        if (i != field_0x2fa3 - 1) {
            field_0x354c[i] = tmp;
        }
    }

    if (checkEventRun()) {
        if (mProcID != PROC_GRASS_WHISTLE_WAIT) {
            setDoStatus(0);
        }
        setRStatus(0);
    } else if (dComIfGp_getDoStatus() == 0x86 || dComIfGp_getDoStatus() == 0x8B) {
        setDoStatus(3);
    } else if (dComIfGp_getDoStatus() == 0x89) {
        setDoStatus(8);
    } else if (dComIfGp_getDoStatus() == 0x93) {
        setDoStatusEmphasys(0x19);
    } else if (dComIfGp_getDoStatus() == 0x8E) {
        setDoStatusEmphasys(0x15);
    } else {
        if (dComIfGp_getDoStatus() == 0x8C) {
            setDoStatus(0);
        } else if (checkStageName("F_SP127") && checkCanoeRide() && dComIfGp_getDoStatus() == 4) {
            setDoStatus(0);
        } else if (dComIfGp_getDoStatus() == 0x90) {
            setDoStatus(0);
        } else if (dComIfGp_getDoStatus() == 0x98) {
            setDoStatusEmphasys(0x39);
        } else if (dComIfGp_getDoStatus() == 0x99) {
            setDoStatusEmphasys(0x15);
        } else if (dComIfGp_getDoStatus() == 0x91) {
            if (checkWolf() || (field_0x27f4 != NULL && (field_0x27f4->mSpeedF > 0.1f || (checkGoatCatchActor(field_0x27f4) && fopAcM_GetName(field_0x27f4) != PROC_COW)))) {
                setDoStatusEmphasys(0x15);
            } else {
                setDoStatus(0);
            }
        } else if (dComIfGp_getDoStatus() == 0x97) {
            if (current.pos.y + 200.0f < mWaterY) {
                setDoStatus(0x4C);
            } else {
                setDoStatus(0);
            }
        } else if (dComIfGp_getDoStatus() == 0x19 && dComIfGp_getHorseActor() != NULL && dComIfGp_getHorseActor()->getZeldaActor() != NULL) {
            setDoStatus(0x19);
        } else if (dComIfGp_getDoStatus() == 5 && field_0x27f4 != NULL && (fopAcM_GetName(field_0x27f4) == PROC_Obj_WindStone || fopAcM_GetName(field_0x27f4) == PROC_Obj_SmWStone)) {
            setDoStatusEmphasys(0x3B);
        } else if (dComIfGp_getDoStatus() == 0x14) {
            if (checkEndResetFlg1(ERFLG1_UNK_4000000)) {
                setDoStatusEmphasys(0x61);
            } else if (checkEndResetFlg1(ERFLG1_UNK_10000000)) {
                setDoStatusEmphasys(0x14);
            }
        }

        int grab_status = getWallGrabStatus();
        if (checkWolf()) {
            if (grab_status == 0x15) {
                setWallGrabStatus(0x3F, 2);
            } else if (grab_status == 0x96) {
                setWallGrabStatus(0xC, checkChainEmphasys());
            }
        } else {
            if (grab_status == 0x96) {
                setWallGrabStatus(0x15, checkChainEmphasys());
            }

            if (dComIfGp_getRStatus() == 0x3A && checkShieldAttackEmphasys() == 0) {
                setRStatus(0);
            }
        }
    }

    mDoAud_setLinkHp(dComIfGs_getLife(), dComIfGs_getMaxLifeGauge());
    
    if (dComIfGp_att_getCatghTarget() != NULL && !checkWolf()) {
        if (checkRideOn() && checkCastleTownUseItem(EMPTY_BOTTLE) ) {
            dComIfGp_setBottleStatus(0x6C, 0);
        }
    }

    if (checkEndResetFlg2(ERFLG2_UNK_20) && dComIfGp_checkPlayerStatus0(0, 0x200000) && (field_0x310e != field_0x310a || field_0x3110 != field_0x310c)) {
        mDoAud_seStartLevel(Z2SE_AL_HAWK_EYE_PAN, NULL, 0, 0);
    }

    offNoResetFlg0(FLG0_UNK_40000000);
    mEndResetFlg0 = 0;

    if (checkEndResetFlg1(ERFLG1_UNK_4)) {
        onNoResetFlg2(FLG2_UNK_20000);
    } else {
        offNoResetFlg2(FLG2_UNK_20000);
    }

    mEndResetFlg1 = 0;
    mEndResetFlg2 = 0;

    field_0x3540 = next.pos;
    field_0x3108 = shape_angle.y;

    if (checkHorseRide() && checkBoarSingleBattle()) {
        if (abs(shape_angle.y) < 0x4000) {
            shape_angle.y = 0;
        } else {
            shape_angle.y = -0x8000;
        }
    } else if (checkMagneBootsOn()) {
        field_0x3118 = shape_angle.y;
        shape_angle.y = getMagneBootsLocalAngleY(shape_angle.y, 0);
    } else if (checkModeFlg(MODE_VINE_CLIMB)) {
        field_0x3108 = shape_angle.y;
        shape_angle.y += field_0x308c;
    } else if (checkCargoCarry() && mCargoCarryAcKeep.getActor() != NULL) {
        field_0x3108 = shape_angle.y;
        shape_angle.y = mCargoCarryAcKeep.getActor()->shape_angle.y;
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::execute() {
    nofralloc
#include "asm/d/a/d_a_alink/execute__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800CAFA8-800CAFC8 0C58E8 0020+00 1/0 0/0 0/0 .text            daAlink_Execute__FP9daAlink_c */
static void daAlink_Execute(daAlink_c* i_this) {
    i_this->execute();
}

/* 800CAFC8-800CB480 0C5908 04B8+00 2/2 0/0 0/0 .text            setDrawHand__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setDrawHand() {
    nofralloc
#include "asm/d/a/d_a_alink/setDrawHand__9daAlink_cFv.s"
}
#pragma pop

/* 800CB480-800CB53C 0C5DC0 00BC+00 3/3 0/0 0/0 .text            checkSwordDraw__9daAlink_cFv */
bool daAlink_c::checkSwordDraw() {
    return ((i_checkSwordGet() && mSwordChangeWaitTimer == 0) &&
            !i_checkNoResetFlg2(FLG2_UNK_2080000)) &&
           (!i_checkWolf() || !i_dComIfGs_isEventBit(0x0C08));
}

bool daPy_py_c::i_checkShieldGet() const {
    return dComIfGs_getSelectEquipShield() != NO_ITEM;
}

/* 800CB53C-800CB5F8 0C5E7C 00BC+00 3/3 0/0 0/0 .text            checkShieldDraw__9daAlink_cFv */
bool daAlink_c::checkShieldDraw() {
    return ((i_checkShieldGet() && mShieldChangeWaitTimer == 0) &&
            !i_checkNoResetFlg2(FLG2_UNK_4080000)) &&
           (!i_checkWolf() || !i_dComIfGs_isEventBit(0x0C08));
}

/* 800CB5F8-800CB694 0C5F38 009C+00 2/2 0/0 0/0 .text            checkItemDraw__9daAlink_cFv */
bool daAlink_c::checkItemDraw() {
    if (mHeldItemModel != NULL && (mEquipItem != IRONBALL || !checkSwordEquipAnime())) {
        if (!checkBowAndSlingItem(mEquipItem) || checkBowGrabLeftHand() || !i_checkShieldGet() ||
            field_0x2e44.checkPassNum(15)) {
            return true;
        }
    }
    return false;
}

/* 800CB694-800CBA38 0C5FD4 03A4+00 0/0 0/0 1/1 .text            initShadowScaleLight__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::initShadowScaleLight() {
    nofralloc
#include "asm/d/a/d_a_alink/initShadowScaleLight__9daAlink_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80453338-8045333C 001938 0004+00 1/1 0/0 0/0 .sdata2          @75939 */
SECTION_SDATA2 static f32 lit_75939 = 50000.0f;

/* 800CBA38-800CBC18 0C6378 01E0+00 0/0 0/0 1/1 .text            moveShadowScaleLight__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::moveShadowScaleLight() {
    nofralloc
#include "asm/d/a/d_a_alink/moveShadowScaleLight__9daAlink_cFv.s"
}
#pragma pop

/* 800CBC18-800CC25C 0C6558 0644+00 1/1 0/0 0/0 .text            shadowDraw__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::shadowDraw() {
    nofralloc
#include "asm/d/a/d_a_alink/shadowDraw__9daAlink_cFv.s"
}
#pragma pop

/* 800CC25C-800CC298 0C6B9C 003C+00 3/3 0/0 0/0 .text            modelCalc__9daAlink_cFP8J3DModel */
void daAlink_c::modelCalc(J3DModel* p_model) {
    if (mClothesChangeWaitTimer == 0) {
        p_model->calc();
    }
}

/* 800CC298-800CC2E0 0C6BD8 0048+00 2/2 0/0 0/0 .text basicModelDraw__9daAlink_cFP8J3DModel */
void daAlink_c::basicModelDraw(J3DModel* i_model) {
    g_env_light.setLightTevColorType_MAJI(i_model, &mTevStr);
    mDoExt_modelEntryDL(i_model);
}

/* 800CC2E0-800CC364 0C6C20 0084+00 1/1 0/0 0/0 .text            modelDraw__9daAlink_cFP8J3DModeli
 */
void daAlink_c::modelDraw(J3DModel* i_model, int param_1) {
    g_env_light.setLightTevColorType_MAJI(i_model, &mTevStr);

    if (param_1 == 0) {
        mDoExt_modelEntryDL(i_model);
    } else {
        i_model->calcMaterial();
        i_model->diff();
    }

    daMirror_c::entry(i_model);
}

/* ############################################################################################## */
/* 8045333C-80453344 00193C 0008+00 1/1 0/0 0/0 .sdata2          notColor0$76211 */
SECTION_SDATA2 static u8 notColor0[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF,
};

/* 800CC364-800CC7DC 0C6CA4 0478+00 2/2 0/0 0/0 .text
 * setWaterDropColor__9daAlink_cFPC13J3DGXColorS10              */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setWaterDropColor(J3DGXColorS10 const* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setWaterDropColor__9daAlink_cFPC13J3DGXColorS10.s"
}
#pragma pop

/* 800CC7DC-800CC7FC 0C711C 0020+00 2/2 0/0 0/0 .text            initTevCustomColor__9daAlink_cFv */
void daAlink_c::initTevCustomColor() {
    mTevStr.field_0x367 = 0;
    mTevStr.mFogColor.r = 0;
    mTevStr.mFogColor.g = 0;
    mTevStr.mFogColor.b = 0;
    mTevStr.field_0x360 = 0;
    mTevStr.field_0x362 = 0;
}

/* 800CC7FC-800CD78C 0C713C 0F90+00 1/1 0/0 0/0 .text            draw__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::draw() {
    nofralloc
#include "asm/d/a/d_a_alink/draw__9daAlink_cFv.s"
}
#pragma pop

/* 800CD78C-800CD7AC 0C80CC 0020+00 1/0 0/0 0/0 .text            daAlink_Draw__FP9daAlink_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daAlink_Draw(daAlink_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/daAlink_Draw__FP9daAlink_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 803B3580-803B3590 0106A0 0010+00 3/3 0/0 0/0 .data            __vt__15daAlink_sight_c */
SECTION_DATA extern void* __vt__15daAlink_sight_c[4] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)draw__15daAlink_sight_cFv,
    (void*)__dt__15daAlink_sight_cFv,
};

/* 803B3590-803B35A0 0106B0 0010+00 4/4 0/0 0/0 .data            __vt__20daAlink_lockCursor_c */
SECTION_DATA extern void* __vt__20daAlink_lockCursor_c[4] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)draw__20daAlink_lockCursor_cFv,
    (void*)__dt__20daAlink_lockCursor_cFv,
};

/* 803B35A0-803B35B4 0106C0 0014+00 3/3 0/0 0/0 .data            __vt__14daAlink_blur_c */
SECTION_DATA extern void* __vt__14daAlink_blur_c[5] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)entry__9J3DPacketFP13J3DDrawBuffer,
    (void*)draw__14daAlink_blur_cFv,
    (void*)__dt__14daAlink_blur_cFv,
};

/* 803B35B4-803B35C8 0106D4 0014+00 3/3 0/0 0/0 .data __vt__29dAlink_bottleWaterPcallBack_c */
SECTION_DATA extern void* __vt__29dAlink_bottleWaterPcallBack_c[5] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__29dAlink_bottleWaterPcallBack_cFv,
    (void*)execute__29dAlink_bottleWaterPcallBack_cFP14JPABaseEmitterP15JPABaseParticle,
    (void*)draw__19JPAParticleCallBackFP14JPABaseEmitterP15JPABaseParticle,
};

/* 800CD7AC-800CE208 0C80EC 0A5C+00 1/1 0/0 0/0 .text            __dt__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daAlink_c::~daAlink_c() {
    nofralloc
#include "asm/d/a/d_a_alink/__dt__9daAlink_cFv.s"
}
#pragma pop

/* 800CE208-800CE294 0C8B48 008C+00 1/0 0/0 0/0 .text            daAlink_Delete__FP9daAlink_c */
// destructor issue
#ifdef NONMATCHING
static bool daAlink_Delete(daAlink_c* p_link) {
    if (p_link->getClothesChangeWaitTimer() != 0) {
        p_link->loadModelDVD();
        return false;
    } else if (p_link->getShieldChangeWaitTimer() != 0) {
        p_link->loadShieldModelDVD();
        return false;
    } else {
        delete p_link;
        return true;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm bool daAlink_Delete(daAlink_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/daAlink_Delete__FP9daAlink_c.s"
}
#pragma pop
#endif

/* 800CE294-800CE468 0C8BD4 01D4+00 1/1 0/0 0/0 .text checkNoSubjectModeCamera__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkNoSubjectModeCamera() {
    nofralloc
#include "asm/d/a/d_a_alink/checkNoSubjectModeCamera__9daAlink_cFv.s"
}
#pragma pop

/* 800CE468-800CE628 0C8DA8 01C0+00 2/2 0/0 0/0 .text acceptSubjectModeChange__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::acceptSubjectModeChange() {
    nofralloc
#include "asm/d/a/d_a_alink/acceptSubjectModeChange__9daAlink_cFv.s"
}
#pragma pop

/* 800CE628-800CE728 0C8F68 0100+00 5/5 0/0 0/0 .text            checkSubjectAction__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkSubjectAction() {
    nofralloc
#include "asm/d/a/d_a_alink/checkSubjectAction__9daAlink_cFv.s"
}
#pragma pop

/* 800CE728-800CE8A0 0C9068 0178+00 1/1 0/0 0/0 .text            checkBodyAngleX__9daAlink_cFs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkBodyAngleX(s16 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkBodyAngleX__9daAlink_cFs.s"
}
#pragma pop

/* 800CE8A0-800CEAF4 0C91E0 0254+00 15/15 0/0 0/0 .text setBodyAngleToCamera__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::setBodyAngleToCamera() {
    nofralloc
#include "asm/d/a/d_a_alink/setBodyAngleToCamera__9daAlink_cFv.s"
}
#pragma pop

/* 800CEAF4-800CEB58 0C9434 0064+00 9/9 0/0 0/0 .text            setSubjectMode__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setSubjectMode() {
    dComIfGp_setPlayerStatus0(0, 0x2000);
    seStartSystem(Z2SE_SUBJ_VIEW_IN);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSubjectMode() {
    nofralloc
#include "asm/d/a/d_a_alink/setSubjectMode__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800CEB58-800CEBD8 0C9498 0080+00 2/2 0/0 0/0 .text            subjectCancelTrigger__9daAlink_cFv
 */
BOOL daAlink_c::subjectCancelTrigger() {
    if (i_checkWolf() || checkNotBattleStage() || !i_checkSwordGet() || (i_checkModeFlg(0x40000) && !i_checkEquipHeavyBoots())) {
        return itemTriggerCheck(BTN_B);
    }

    return false;
}

/* 800CEBD8-800CECE4 0C9518 010C+00 9/9 0/0 0/0 .text            checkSubjectEnd__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::checkSubjectEnd(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkSubjectEnd__9daAlink_cFi.s"
}
#pragma pop

/* 800CECE4-800CED48 0C9624 0064+00 1/1 0/0 0/0 .text searchPeepObj__9daAlink_cFP10fopAc_ac_cPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::searchPeepObj(fopAc_ac_c* param_0, void* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/searchPeepObj__9daAlink_cFP10fopAc_ac_cPv.s"
}
#pragma pop

/* 800CED48-800CED84 0C9688 003C+00 1/1 0/0 0/0 .text daAlink_searchPeepObj__FP10fopAc_ac_cPv */
static int daAlink_searchPeepObj(fopAc_ac_c* param_0, void* param_1) {
    daAlink_getAlinkActorClass()->searchPeepObj(param_0, param_1);
    return 0;
}

/* 800CED84-800CEE08 0C96C4 0084+00 2/2 0/0 0/0 .text procCoSubjectivityInit__9daAlink_cFv */
int daAlink_c::procCoSubjectivityInit() {
    commonProcInit(PROC_SUBJECTIVITY);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    
    setSubjectMode();
    field_0x2fe6 = shape_angle.y;

    if (i_checkWolf()) {
        setSingleAnimeWolfBaseSpeed(WANM_WAIT, FLOAT_LABEL(lit_6108), lit_6109);
    } else {
        setSingleAnimeBaseSpeed(ANM_WAIT, FLOAT_LABEL(lit_6108), lit_6109);
    }

    return 1;
}

/* 800CEE08-800CEF70 0C9748 0168+00 1/0 0/0 0/0 .text            procCoSubjectivity__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoSubjectivity() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoSubjectivity__9daAlink_cFv.s"
}
#pragma pop

/* 800CEF70-800CF018 0C98B0 00A8+00 1/1 0/0 0/0 .text procCoSwimSubjectivityInit__9daAlink_cFv */
int daAlink_c::procCoSwimSubjectivityInit() {
    commonProcInit(PROC_SWIM_SUBJECTIVITY);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    
    setSubjectMode();

    if (i_checkWolf()) {
        setSingleAnimeWolfBaseSpeed(WANM_SWIM_WAIT, daAlinkHIO_wlSwim_c0::m.field_0x88, daAlinkHIO_wlSwim_c0::m.field_0x68);
    } else {
        setSingleAnimeBaseSpeed(ANM_SWIM_WAIT, daAlinkHIO_swim_c0::m.mWaitAnmSpeed, daAlinkHIO_swim_c0::m.mWaitInterpolation);
    }

    dComIfGp_setPlayerStatus0(0, 0x100000);
    mCommonCounter = 0;

    return 1;
}

/* 800CF018-800CF100 0C9958 00E8+00 1/0 0/0 0/0 .text procCoSwimSubjectivity__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoSwimSubjectivity() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoSwimSubjectivity__9daAlink_cFv.s"
}
#pragma pop

/* 800CF100-800CF1B8 0C9A40 00B8+00 1/1 0/0 0/0 .text procCoPeepSubjectivityInit__9daAlink_cFv */
int daAlink_c::procCoPeepSubjectivityInit() {
    commonProcInit(PROC_PEEP_SUBJECTIVITY);
    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    mNormalSpeed = tmp_0;

    if (i_checkWolf()) {
        setSingleAnimeWolfBaseSpeed(WANM_WAIT, tmp_0, lit_6109);
    } else {
        setSingleAnimeBaseSpeed(ANM_WAIT, tmp_0, lit_6109);
    }

    i_onPlayerNoDraw();
    setSpecialGravity(FLOAT_LABEL(lit_6108), mMaxFallSpeed, 0);
    mSpeed.y = FLOAT_LABEL(lit_6108);
    dComIfGp_setPlayerStatus0(0, 0x2000);
    field_0x3478 = lit_6183;
    mCommonCounter = shape_angle.y;

    return 1;
}

/* 800CF1B8-800CF25C 0C9AF8 00A4+00 1/0 0/0 0/0 .text procCoPeepSubjectivity__9daAlink_cFv */
int daAlink_c::procCoPeepSubjectivity() {
    if (doTrigger() || peepSubjectCancelTrigger()) {
        kytag05_class* peep = NULL;
        fopAcIt_Executor((fopAcIt_ExecutorFunc)daAlink_searchPeepObj, &peep);

        if (peep != NULL) {
            mPeepExitID = peep->getSceneListID();
        }

        if (dComIfGp_event_compulsory(this, 0, 0xFFFF)) {
            startPeepChange();
        }
    }

    return 1;
}

/* 800CF25C-800CF270 0C9B9C 0014+00 1/0 0/0 0/0 .text            checkBoardRide__9daAlink_cCFv */
u32 daAlink_c::checkBoardRide() const {
    return mRideStatus == 4;
}

/* 800CF270-800CF284 0C9BB0 0014+00 1/0 0/0 0/0 .text            checkCanoeRide__9daAlink_cCFv */
u32 daAlink_c::checkCanoeRide() const {
    return mRideStatus == 3;
}

/* 800CF284-800CF298 0C9BC4 0014+00 1/0 0/0 0/0 .text            checkHorseRide__9daAlink_cCFv */
u32 daAlink_c::checkHorseRide() const {
    return mRideStatus == 1;
}

/* 800CF298-800CF2B4 0C9BD8 001C+00 1/0 0/0 0/0 .text            getLeftItemMatrix__9daAlink_cFv */
MtxP daAlink_c::getLeftItemMatrix() {
    return mpLinkModel->i_getAnmMtx(field_0x30c0);
}

/* 800CF2B4-800CF2C8 0C9BF4 0014+00 1/0 0/0 0/0 .text            checkBoarRide__9daAlink_cCFv */
u32 daAlink_c::checkBoarRide() const {
    return mRideStatus == 2;
}

/* 800CF2C8-800CF2DC 0C9C08 0014+00 1/0 0/0 0/0 .text            checkSpinnerRide__9daAlink_cCFv */
u32 daAlink_c::checkSpinnerRide() const {
    return mRideStatus == 5;
}

/* 800CF2DC-800CF2F8 0C9C1C 001C+00 1/0 0/0 0/0 .text            getLeftHandMatrix__9daAlink_cFv */
MtxP daAlink_c::getLeftHandMatrix() {
    return mpLinkModel->i_getAnmMtx(field_0x30b8);
}

/* 800CF2F8-800CF314 0C9C38 001C+00 1/0 0/0 0/0 .text            getRightHandMatrix__9daAlink_cFv */
MtxP daAlink_c::getRightHandMatrix() {
    return mpLinkModel->i_getAnmMtx(field_0x30ba);
}

/* 800CF314-800CF328 0C9C54 0014+00 1/0 0/0 0/0 .text
 * onSceneChangeArea__9daAlink_cFUcUcP10fopAc_ac_c              */
void daAlink_c::onSceneChangeArea(u8 exitID, u8 exitDirection, fopAc_ac_c* scexAc) {
    mExitID = exitID;
    mExitDirection = exitDirection;
    mpScnChg = (daScex_c*)scexAc;
}

/* 800CF328-800CF344 0C9C68 001C+00 1/0 0/0 0/0 .text            getRightItemMatrix__9daAlink_cFv */
MtxP daAlink_c::getRightItemMatrix() {
    return mpLinkModel->i_getAnmMtx(field_0x30c2);
}

/* 800CF344-800CF380 0C9C84 003C+00 1/0 0/0 0/0 .text            checkPlayerNoDraw__9daAlink_cFv */
BOOL daAlink_c::checkPlayerNoDraw() {
    return dComIfGp_checkCameraAttentionStatus(field_0x317c, 2) ||
           i_checkNoResetFlg0(FLG0_PLAYER_NO_DRAW);
}

/* 800CF380-800CFC3C 0C9CC0 08BC+00 1/1 0/0 0/0 .text            __ct__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daAlink_c::daAlink_c() {
    nofralloc
#include "asm/d/a/d_a_alink/__ct__9daAlink_cFv.s"
}
#pragma pop

/* 800CFC3C-800CFC78 0CA57C 003C+00 2/2 0/0 0/0 .text __dt__Q29daAlink_c14firePointEff_cFv */
daAlink_c::firePointEff_c::~firePointEff_c() {}

/* 800CFC78-800CFC7C 0CA5B8 0004+00 1/1 0/0 0/0 .text __ct__Q29daAlink_c14firePointEff_cFv */
daAlink_c::firePointEff_c::firePointEff_c() {
    /* empty function */
}

/* 800CFC7C-800CFCB8 0CA5BC 003C+00 0/0 2/2 0/0 .text            __dt__15LIGHT_INFLUENCEFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void __dt__15LIGHT_INFLUENCEFv() {
    nofralloc
#include "asm/d/a/d_a_alink/__dt__15LIGHT_INFLUENCEFv.s"
}
#pragma pop

/* 800CFCB8-800CFCF4 0CA5F8 003C+00 2/2 0/0 0/0 .text            __dt__18daAlink_footData_cFv */
daAlink_footData_c::~daAlink_footData_c() {}

/* 800CFCF4-800CFCF8 0CA634 0004+00 1/1 0/0 0/0 .text            __ct__18daAlink_footData_cFv */
daAlink_footData_c::daAlink_footData_c() {
    /* empty function */
}

/* 800CFCF8-800CFD58 0CA638 0060+00 1/0 0/0 0/0 .text __dt__29dAlink_bottleWaterPcallBack_cFv */
dAlink_bottleWaterPcallBack_c::~dAlink_bottleWaterPcallBack_c() {}

/* 800CFD58-800CFDF4 0CA698 009C+00 1/0 0/0 0/0 .text            __dt__14daAlink_blur_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daAlink_blur_c::~daAlink_blur_c() {
    nofralloc
#include "asm/d/a/d_a_alink/__dt__14daAlink_blur_cFv.s"
}
#pragma pop

/* 800CFDF4-800CFE68 0CA734 0074+00 1/0 0/0 0/0 .text            __dt__15daAlink_sight_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daAlink_sight_c::~daAlink_sight_c() {
    nofralloc
#include "asm/d/a/d_a_alink/__dt__15daAlink_sight_cFv.s"
}
#pragma pop

/* 800CFE68-800CFEB0 0CA7A8 0048+00 1/0 0/0 0/0 .text            __dt__20daAlink_lockCursor_cFv */
daAlink_lockCursor_c::~daAlink_lockCursor_c() {}

/* 800CFEB0-800CFEC4 0CA7F0 0014+00 1/1 0/0 0/0 .text            checkRideOn__9daAlink_cCFv */
BOOL daAlink_c::checkRideOn() const {
    return mRideStatus != 0;
}

/* 800CFEC4-800CFEF4 0CA804 0030+00 1/1 0/0 0/0 .text            dComIfGp_att_getCatghTarget__Fv */
#ifdef NONMATCHING
static s32 dComIfGp_att_getCatghTarget() {
    return dComIfGp_getAttention().getCatghTarget().getCatghTarget();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm dAttCatch_c* dComIfGp_att_getCatghTarget() {
    nofralloc
#include "asm/d/a/d_a_alink/dComIfGp_att_getCatghTarget__Fv.s"
}
#pragma pop
#endif

/* 800CFEF4-800CFF2C 0CA834 0038+00 1/1 0/0 0/0 .text            mDoAud_setLinkHp__Fll */
static void mDoAud_setLinkHp(s32 param_0, s32 param_1) {
    if (Z2GetLink() != NULL) {
        Z2GetLink()->setLinkHp(param_0, param_1);
    }
}

/* 800CFF2C-800CFF3C 0CA86C 0010+00 1/1 0/0 0/0 .text            dComIfGs_getLife__Fv */
static u16 dComIfGs_getLife() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getLife();
}

/* 800CFF3C-800CFF4C 0CA87C 0010+00 1/1 0/0 0/0 .text            dComIfGp_getRStatus__Fv */
static u8 dComIfGp_getRStatus() {
    return g_dComIfG_gameInfo.play.getRStatus();
}

/* 800CFF4C-800CFFA4 0CA88C 0058+00 1/1 0/0 0/0 .text            checkAttentionLock__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkAttentionLock() {
    nofralloc
#include "asm/d/a/d_a_alink/checkAttentionLock__9daAlink_cFv.s"
}
#pragma pop

/* 800CFFA4-800CFFC0 0CA8E4 001C+00 1/1 0/0 0/0 .text            dComIfGp_setItemLifeCount__FfUc */
void dComIfGp_setItemLifeCount(f32 amount, u8 type) {
    g_dComIfG_gameInfo.play.setItemLifeCount(amount, type);
}

/* 800CFFC0-800CFFE0 0CA900 0020+00 1/1 0/0 0/0 .text            cMtx_multVec__FPA4_CfPC3VecP3Vec */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void cMtx_multVec(f32 const (*param_0)[4], Vec const* param_1, Vec* param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/cMtx_multVec__FPA4_CfPC3VecP3Vec.s"
}
#pragma pop

/* 800CFFE0-800CFFF4 0CA920 0014+00 1/1 0/0 0/0 .text            getAnmMtx__8J3DModelFi */
MtxP J3DModel::getAnmMtx(int i) {
    return mMtxBuffer->getAnmMtx(i);
}

/* 800CFFF4-800D0020 0CA934 002C+00 1/1 0/0 0/0 .text            setBaseTRMtx__8J3DModelFPA4_f */
void J3DModel::setBaseTRMtx(MtxP matrix) {
    PSMTXCopy(matrix, mBaseTransformMtx);
}

/* 800D0020-800D0048 0CA960 0028+00 1/1 0/0 0/0 .text checkFmChainGrabAnime__9daAlink_cCFv */
BOOL daAlink_c::checkFmChainGrabAnime() const {
    return checkUpperAnime(0x62) || checkUpperAnime(0x2A0);
}

/* 800D0048-800D005C 0CA988 0014+00 1/1 0/0 0/0 .text checkSmallUpperGuardAnime__9daAlink_cCFv */
BOOL daAlink_c::checkSmallUpperGuardAnime() const {
    return checkUpperAnime(ANM_SMALL_GUARD);
}

/* 800D005C-800D008C 0CA99C 0030+00 1/1 0/0 0/0 .text            dComIfGp_evmng_startCheck__FPCc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm bool dComIfGp_evmng_startCheck(char const* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/dComIfGp_evmng_startCheck__FPCc.s"
}
#pragma pop

/* 800D008C-800D00BC 0CA9CC 0030+00 1/1 0/0 0/0 .text            mDoAud_setLinkGroupInfo__FUc */
static void mDoAud_setLinkGroupInfo(u8 param_0) {
    if (Z2GetLink() != NULL) {
        Z2GetLink()->setLinkGroupInfo(param_0);
    }
}

/* 800D00BC-800D00D0 0CA9FC 0014+00 1/1 0/0 0/0 .text getAnm__25mDoExt_MtxCalcAnmBlendTblFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm J3DAnmTransform* mDoExt_MtxCalcAnmBlendTbl::getAnm(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/getAnm__25mDoExt_MtxCalcAnmBlendTblFi.s"
}
#pragma pop

/* 800D00D0-800D00DC 0CAA10 000C+00 1/1 0/0 0/0 .text            ChkRoofHit__9dBgS_AcchCFv */
bool dBgS_Acch::ChkRoofHit() const {
    return m_flags & ROOF_HIT;
}

/* 800D00DC-800D00EC 0CAA1C 0010+00 1/1 0/0 0/0 .text            ClrGroundHit__9dBgS_AcchFv */
void dBgS_Acch::ClrGroundHit() {
    m_flags &= ~GROUND_HIT;
}

/* 800D00EC-800D0110 0CAA2C 0024+00 1/1 0/0 0/0 .text            checkReinRide__9daAlink_cCFv */
u32 daAlink_c::checkReinRide() const {
    return mRideStatus == 1 || mRideStatus == 2;
}

/* 800D0110-800D0138 0CAA50 0028+00 1/1 0/0 0/0 .text checkWolfEnemyThrowAnime__9daAlink_cCFv */
BOOL daAlink_c::checkWolfEnemyThrowAnime() const {
    return checkUpperAnime(0x2BD) ||
           checkUpperAnime(0x2BE);
}

/* 800D0138-800D014C 0CAA78 0014+00 1/1 0/0 0/0 .text            checkSpecialDemoMode__9daAlink_cCFv
 */
int daAlink_c::checkSpecialDemoMode() const {
    return mDemo.getDemoType() == 5;
}

/* 800D014C-800D0164 0CAA8C 0018+00 1/1 0/0 0/0 .text            setMidnaTalkStatus__9daAlink_cFUc
 */
void daAlink_c::setMidnaTalkStatus(u8 status) {
    dComIfGp_setZStatus(status, 0);
}

/* 800D0164-800D0180 0CAAA4 001C+00 1/1 0/0 0/0 .text            set3DStatus__9daAlink_cFUcUc */
void daAlink_c::set3DStatus(u8 status, u8 direction) {
    dComIfGp_set3DStatus(status, direction, 0);
}

/* 800D0180-800D018C 0CAAC0 000C+00 1/1 0/0 0/0 .text            offSetFlg__16daAlink_matAnm_cFv */
void daAlink_matAnm_c::offSetFlg() {
    mSetFlag = 0;
}

/* 800D018C-800D0198 0CAACC 000C+00 1/1 0/0 0/0 .text            checkModeFlg__9daAlink_cCFUl */
u32 daAlink_c::checkModeFlg(u32 pFlag) const {
    return mModeFlg & pFlag;
}

/* 800D0198-800D01A0 0CAAD8 0008+00 1/0 0/0 0/0 .text getShieldChangeWaitTimer__9daAlink_cCFv */
u8 daAlink_c::getShieldChangeWaitTimer() const {
    return mShieldChangeWaitTimer;
}

/* 800D01A0-800D01A8 0CAAE0 0008+00 1/0 0/0 0/0 .text getClothesChangeWaitTimer__9daAlink_cCFv */
u8 daAlink_c::getClothesChangeWaitTimer() const {
    return mClothesChangeWaitTimer;
}

/* 800D01A8-800D01E0 0CAAE8 0038+00 1/0 0/0 0/0 .text            checkHorseStart__9daAlink_cFv */
u32 daPy_py_c::getLastSceneMode() {
    return dComIfGs_getLastSceneMode() & 0xF;
}

BOOL daAlink_c::checkHorseStart() {
    return checkHorseStart(getLastSceneMode(), getStartMode());
}

/* 800D01E0-800D0208 0CAB20 0028+00 1/0 0/0 0/0 .text            checkCutTurnCharge__9daAlink_cCFv
 */
BOOL daAlink_c::checkCutTurnCharge() const {
    return mProcID == PROC_CUT_TURN_MOVE && mCommonCounter == 0;
}

/* 800D0208-800D0228 0CAB48 0020+00 1/0 0/0 0/0 .text checkAcceptDungeonWarpAlink__9daAlink_cFi */
bool daAlink_c::checkAcceptDungeonWarpAlink(int param_0) {
    return checkAcceptWarp();
}

/* 800D0228-800D0274 0CAB68 004C+00 1/0 0/0 0/0 .text            getSpinnerActor__9daAlink_cFv */
fopAc_ac_c* daAlink_c::getSpinnerActor() {
    fopAc_ac_c* spinnerActor;

    if (!checkSpinnerRide()) {
        spinnerActor = NULL;
    } else {
        spinnerActor = mRideAcKeep.getActor();
    }
    return spinnerActor;
}

/* 800D0274-800D027C 0CABB4 0008+00 1/0 0/0 0/0 .text            getSumouCounter__9daAlink_cCFv */
s16 daAlink_c::getSumouCounter() const {
    return mCommonCounter;
}

/* 800D027C-800D0284 0CABBC 0008+00 1/0 0/0 0/0 .text            checkSumouWithstand__9daAlink_cCFv
 */
s16 daAlink_c::checkSumouWithstand() const {
    return field_0x300e;
}

/* 800D0284-800D0290 0CABC4 000C+00 1/0 0/0 0/0 .text setMidnaMsgNum__9daAlink_cFP10fopAc_ac_cUs
 */
void daAlink_c::setMidnaMsgNum(fopAc_ac_c* param_0, u16 pMsgNum) {
    mMidnaMsgNum = pMsgNum;
    static_cast<fopAc_ac_c*>(mMidnaMsg) = param_0;
}

/* 800D0290-800D029C 0CABD0 000C+00 1/0 0/0 0/0 .text            getModelMtx__9daAlink_cFv */
MtxP daAlink_c::getModelMtx() {
    return mpLinkModel->getBaseTRMtx();
}

/* 800D029C-800D02A4 0CABDC 0008+00 1/0 0/0 0/0 .text            getInvMtx__9daAlink_cFv */
MtxP daAlink_c::getInvMtx() {
    return mInvMtx;
}

/* 800D02A4-800D02B8 0CABE4 0014+00 1/0 0/0 0/0 .text getLinkBackBone1Matrix__9daAlink_cFv */
MtxP daAlink_c::getLinkBackBone1Matrix() {
    return mpLinkModel->i_getAnmMtx(1);
}

/* 800D02B8-800D02CC 0CABF8 0014+00 1/0 0/0 0/0 .text            getWolfMouthMatrix__9daAlink_cFv */
MtxP daAlink_c::getWolfMouthMatrix() {
    return mpLinkModel->i_getAnmMtx(13);
}

/* 800D02CC-800D02E0 0CAC0C 0014+00 1/0 0/0 0/0 .text getWolfBackbone2Matrix__9daAlink_cFv */
MtxP daAlink_c::getWolfBackbone2Matrix() {
    return mpLinkModel->i_getAnmMtx(2);
}

/* 800D02E0-800D0334 0CAC20 0054+00 1/0 0/0 0/0 .text            getBottleMtx__9daAlink_cFv */
MtxP daAlink_c::getBottleMtx() {
    if (mHeldItemModel != NULL && checkBottleItem(mEquipItem)) {
        return mHeldItemModel->getBaseTRMtx();
    }

    return NULL;
}

/* 800D0334-800D0350 0CAC74 001C+00 1/0 0/0 0/0 .text            getHeadMtx__9daAlink_cFv */
MtxP daAlink_c::getHeadMtx() {
    return mpLinkModel->i_getAnmMtx(field_0x30b4);
}

/* 800D0350-800D0358 0CAC90 0008+00 1/0 0/0 0/0 .text            getGroundY__9daAlink_cFv */
f32 daAlink_c::getGroundY() {
    return mLinkAcch.GetGroundH();
}

/* 800D0358-800D0360 0CAC98 0008+00 1/0 0/0 0/0 .text getBaseAnimeFrameRate__9daAlink_cCFv */
f32 daAlink_c::getBaseAnimeFrameRate() const {
    return mUnderFrameCtrl[0].getRate();
}

/* 800D0360-800D0368 0CACA0 0008+00 1/0 0/0 0/0 .text            getAtnActorID__9daAlink_cCFv */
s32 daAlink_c::getAtnActorID() const {
    return mAtnActorID;
}

/* 800D0368-800D0370 0CACA8 0008+00 1/0 0/0 0/0 .text            getItemID__9daAlink_cCFv */
s32 daAlink_c::getItemID() const {
    return mItemAcKeep.getID();
}

/* 800D0370-800D038C 0CACB0 001C+00 1/0 0/0 0/0 .text            getGrabActorID__9daAlink_cCFv */
s32 daAlink_c::getGrabActorID() const {
    if (mEquipItem == 0x102) {
        return mItemAcKeep.getID();
    } else {
        return mGrabItemAcKeep.getID();
    }
}

/* 800D038C-800D03B4 0CACCC 0028+00 1/0 0/0 0/0 .text            setForcePutPos__9daAlink_cFRC4cXyz
 */
void daAlink_c::setForcePutPos(cXyz const& pPutPos) {
    mForcePutPos = pPutPos;
    i_onEndResetFlg1(ERFLG1_UNK_2000);
}

/* 800D03B4-800D03C8 0CACF4 0014+00 1/0 0/0 0/0 .text            checkPlayerFly__9daAlink_cCFv */
u32 daAlink_c::checkPlayerFly() const {
    return i_checkModeFlg(MODE_SWIMMING | MODE_ROPE_WALK | MODE_VINE_CLIMB | MODE_UNK_800 |
                          MODE_NO_COLLISION | MODE_CLIMB | MODE_JUMP);
}

/* 800D03C8-800D03DC 0CAD08 0014+00 1/0 0/0 0/0 .text            checkFrontRoll__9daAlink_cCFv */
BOOL daAlink_c::checkFrontRoll() const {
    return mProcID == PROC_FRONT_ROLL;
}

/* 800D03DC-800D03F0 0CAD1C 0014+00 1/0 0/0 0/0 .text            checkWolfDash__9daAlink_cCFv */
BOOL daAlink_c::checkWolfDash() const {
    return mProcID == PROC_WOLF_DASH;
}

/* 800D03F0-800D0414 0CAD30 0024+00 1/0 0/0 0/0 .text            checkAutoJump__9daAlink_cCFv */
BOOL daAlink_c::checkAutoJump() const {
    return mProcID == PROC_AUTO_JUMP || mProcID == PROC_WOLF_AUTO_JUMP;
}

/* 800D0414-800D0444 0CAD54 0030+00 1/0 0/0 0/0 .text            checkSideStep__9daAlink_cCFv */
bool daAlink_c::checkSideStep() const {
    return (mProcID == PROC_SIDESTEP || mProcID == PROC_WOLF_SIDESTEP) && field_0x300a != 0;
}

/* 800D0444-800D0468 0CAD84 0024+00 1/0 0/0 0/0 .text            checkWolfTriggerJump__9daAlink_cCFv
 */
bool daAlink_c::checkWolfTriggerJump() const {
    return mProcID == PROC_WOLF_SIDESTEP || mProcID == PROC_WOLF_JUMP_ATTACK;
}

/* 800D0468-800D047C 0CADA8 0014+00 1/0 0/0 0/0 .text            checkGuardBreakMode__9daAlink_cCFv
 */
BOOL daAlink_c::checkGuardBreakMode() const {
    return mProcID == PROC_GUARD_BREAK;
}

/* 800D047C-800D04A4 0CADBC 0028+00 1/0 0/0 0/0 .text            checkLv3Slide__9daAlink_cCFv */
bool daAlink_c::checkLv3Slide() const {
    return mProcID == PROC_SLIDE && field_0x300e != 0;
}

/* 800D04A4-800D04B8 0CADE4 0014+00 1/0 0/0 0/0 .text checkWolfHowlDemoMode__9daAlink_cCFv */
bool daAlink_c::checkWolfHowlDemoMode() const {
    return mProcID == PROC_WOLF_HOWL_DEMO;
}

/* 800D04B8-800D04CC 0CADF8 0014+00 1/0 0/0 0/0 .text            checkElecDamage__9daAlink_cCFv */
BOOL daAlink_c::checkElecDamage() const {
    return mProcID == PROC_ELEC_DAMAGE;
}

/* 800D04CC-800D04F4 0CAE0C 0028+00 1/0 0/0 0/0 .text checkEmptyBottleSwing__9daAlink_cCFv */
BOOL daAlink_c::checkEmptyBottleSwing() const {
    return mEquipItem == EMPTY_BOTTLE && mProcID == PROC_BOTTLE_SWING;
}

/* 800D04F4-800D0508 0CAE34 0014+00 1/0 0/0 0/0 .text            checkBottleSwingMode__9daAlink_cCFv
 */
BOOL daAlink_c::checkBottleSwingMode() const {
    return mProcID == PROC_BOTTLE_SWING;
}

/* 800D0508-800D051C 0CAE48 0014+00 1/0 0/0 0/0 .text            checkHawkWait__9daAlink_cCFv */
BOOL daAlink_c::checkHawkWait() const {
    return mProcID == PROC_HAWK_SUBJECT;
}

/* 800D051C-800D0544 0CAE5C 0028+00 1/0 0/0 0/0 .text            checkGoatThrow__9daAlink_cCFv */
BOOL daAlink_c::checkGoatThrow() const {
    return mProcID == PROC_GOAT_CATCH && mCommonCounter != 0;
}

/* 800D0544-800D0570 0CAE84 002C+00 1/0 0/0 0/0 .text            checkGoatThrowAfter__9daAlink_cCFv
 */
BOOL daAlink_c::checkGoatThrowAfter() const {
    return mProcID == PROC_GOAT_CATCH && field_0x3478 > FLOAT_LABEL(lit_6108);
}

/* 800D0570-800D0598 0CAEB0 0028+00 1/0 0/0 0/0 .text            checkWolfTagLockJump__9daAlink_cCFv
 */
BOOL daAlink_c::checkWolfTagLockJump() const {
    return mProcID == PROC_WOLF_TAG_JUMP && field_0x3198 == 0;
}

/* 800D0598-800D05AC 0CAED8 0014+00 1/0 0/0 0/0 .text checkWolfTagLockJumpLand__9daAlink_cCFv */
BOOL daAlink_c::checkWolfTagLockJumpLand() const {
    return mProcID == PROC_WOLF_TAG_JUMP_LAND;
}

/* 800D05AC-800D05C0 0CAEEC 0014+00 1/0 0/0 0/0 .text            checkWolfRopeHang__9daAlink_cCFv */
BOOL daAlink_c::checkWolfRopeHang() const {
    return mProcID == PROC_WOLF_ROPE_HANG;
}

/* 800D05C0-800D05D4 0CAF00 0014+00 1/0 0/0 0/0 .text            checkRollJump__9daAlink_cCFv */
BOOL daAlink_c::checkRollJump() const {
    return mProcID == PROC_ROLL_JUMP;
}

/* 800D05D4-800D05E8 0CAF14 0014+00 1/0 0/0 0/0 .text            checkGoronRideWait__9daAlink_cCFv
 */
BOOL daAlink_c::checkGoronRideWait() const {
    return mProcID == PROC_GORON_RIDE_WAIT;
}

/* 800D05E8-800D05FC 0CAF28 0014+00 1/0 0/0 0/0 .text            checkWolfChain__9daAlink_cCFv */
BOOL daAlink_c::checkWolfChain() const {
    return mProcID == PROC_WOLF_CHAIN_WAIT;
}

/* 800D05FC-800D0610 0CAF3C 0014+00 1/0 0/0 0/0 .text            checkWolfWait__9daAlink_cCFv */
BOOL daAlink_c::checkWolfWait() const {
    return mProcID == PROC_WOLF_WAIT;
}

/* 800D0610-800D0624 0CAF50 0014+00 1/0 0/0 0/0 .text            checkWolfJumpAttack__9daAlink_cCFv
 */
BOOL daAlink_c::checkWolfJumpAttack() const {
    return mProcID == PROC_WOLF_JUMP_ATTACK;
}

/* 800D0624-800D0638 0CAF64 0014+00 1/0 0/0 0/0 .text            checkWolfRSit__9daAlink_cCFv */
BOOL daAlink_c::checkWolfRSit() const {
    return mProcID == PROC_WOLF_SIT;
}

/* 800D0638-800D0660 0CAF78 0028+00 1/0 0/0 0/0 .text            checkBottleDrinkEnd__9daAlink_cCFv
 */
BOOL daAlink_c::checkBottleDrinkEnd() const {
    return mProcID == PROC_BOTTLE_DRINK && field_0x300e != 0;
}

/* 800D0660-800D0674 0CAFA0 0014+00 1/0 0/0 0/0 .text            checkWolfDig__9daAlink_cCFv */
BOOL daAlink_c::checkWolfDig() const {
    return mProcID == PROC_WOLF_DIG;
}

/* 800D0674-800D0688 0CAFB4 0014+00 1/0 0/0 0/0 .text            checkCutCharge__9daAlink_cCFv */
BOOL daAlink_c::checkCutCharge() const {
    return mProcID == PROC_CUT_TURN_MOVE;
}

/* 800D0688-800D06B0 0CAFC8 0028+00 1/0 0/0 0/0 .text checkCutLargeJumpCharge__9daAlink_cCFv */
BOOL daAlink_c::checkCutLargeJumpCharge() const {
    return mProcID == PROC_CUT_TURN_MOVE && mCommonCounter != 0;
}

/* 800D06B0-800D06D8 0CAFF0 0028+00 1/0 0/0 0/0 .text            checkComboCutTurn__9daAlink_cCFv */
BOOL daAlink_c::checkComboCutTurn() const {
    return mProcID == PROC_CUT_TURN && mComboCutCount != 0;
}

/* 800D06D8-800D0704 0CB018 002C+00 1/0 0/0 0/0 .text            checkClimbMove__9daAlink_cCFv */
BOOL daAlink_c::checkClimbMove() const {
    return mProcID == PROC_CLIMB_MOVE_UPDOWN || mProcID == PROC_LADDER_MOVE ||
           mProcID == PROC_CLIMB_MOVE_SIDE;
}

/* 800D0704-800D0718 0CB044 0014+00 1/0 0/0 0/0 .text            checkGrassWhistle__9daAlink_cCFv */
BOOL daAlink_c::checkGrassWhistle() const {
    return mProcID == PROC_GRASS_WHISTLE_WAIT;
}

/* 800D0718-800D072C 0CB058 0014+00 1/0 0/0 0/0 .text            checkBoarRun__9daAlink_cCFv */
BOOL daAlink_c::checkBoarRun() const {
    return mProcID == PROC_BOAR_RUN;
}

/* 800D072C-800D0794 0CB06C 0068+00 1/0 0/0 0/0 .text checkHorseRideNotReady__9daAlink_cCFv */
BOOL daAlink_c::checkHorseRideNotReady() const {
    return checkHorseRide() && mProcID != PROC_HORSE_RIDE && mProcID != PROC_HORSE_GETOFF;
}

/* 800D0794-800D079C 0CB0D4 0008+00 1/0 0/0 0/0 .text            getSearchBallScale__9daAlink_cCFv
 */
f32 daAlink_c::getSearchBallScale() const {
    return mSearchBallScale;
}

/* 800D079C-800D07A4 0CB0DC 0008+00 1/0 0/0 0/0 .text            checkFastShotTime__9daAlink_cFv */
s16 daAlink_c::checkFastShotTime() {
    return mFastShotTime;
}

/* 800D07A4-800D07D4 0CB0E4 0030+00 1/0 0/0 0/0 .text checkCutJumpCancelTurn__9daAlink_cCFv */
BOOL daAlink_c::checkCutJumpCancelTurn() const {
    return (mProcID == PROC_CUT_JUMP || mProcID == PROC_CUT_JUMP_LAND) && field_0x3198 != 2;
}

/* 800D07D4-800D07FC 0CB114 0028+00 1/0 0/0 0/0 .text
 * checkSingleBoarBattleSecondBowReady__9daAlink_cCFv           */
BOOL daAlink_c::checkSingleBoarBattleSecondBowReady() const {
    return mProcID == PROC_HORSE_BOW_SUBJECT && mCommonCounter != 0;
}

/* 800D07FC-800D0818 0CB13C 001C+00 1/0 0/0 0/0 .text cancelDungeonWarpReadyNeck__9daAlink_cFv */
void daAlink_c::cancelDungeonWarpReadyNeck() {
    if (mProcID != PROC_DUNGEON_WARP_READY) {
        return;
    }
    offModeFlg(MODE_UNK_100);
}

/* 800D0818-800D0830 0CB158 0018+00 1/0 0/0 0/0 .text
 * onSceneChangeAreaJump__9daAlink_cFUcUcP10fopAc_ac_c          */
void daAlink_c::onSceneChangeAreaJump(u8 exitID, u8 exitDirection, fopAc_ac_c* scexAc) {
    mExitID = exitID | 0x8000;
    mExitDirection = exitDirection;
    mpScnChg = (daScex_c*)scexAc;
}

/* 800D0830-800D084C 0CB170 001C+00 1/0 0/0 0/0 .text            onSceneChangeDead__9daAlink_cFUci
 */
void daAlink_c::onSceneChangeDead(u8 param_0, int param_1) {
    if (mProcID != PROC_DEAD) {
        return;
    }
    field_0x3012 = param_0;
    field_0x3198 = param_1;
}

/* 800D084C-800D0860 0CB18C 0014+00 1/0 0/0 0/0 .text            checkNoEquipItem__9daAlink_cCFv */
bool daAlink_c::checkNoEquipItem() const {
    return mEquipItem == NO_ITEM;
}

/* 800D0860-800D087C 0CB1A0 001C+00 1/0 0/0 0/0 .text getBoardCutTurnOffsetAngleY__9daAlink_cCFv
 */
s16 daAlink_c::getBoardCutTurnOffsetAngleY() const {
    if (mProcID == PROC_BOARD_CUT_TURN) {
        return field_0x3012;
    }
    return 0;
}

/* 800D087C-800D0884 0CB1BC 0008+00 1/0 0/0 0/0 .text            getMagneBootsTopVec__9daAlink_cFv
 */
cXyz* daAlink_c::getMagneBootsTopVec() {
    return &mMagneBootsTopVec;
}

/* 800D0884-800D08B0 0CB1C4 002C+00 1/0 0/0 0/0 .text setCargoCarry__9daAlink_cFP10fopAc_ac_c */
void daAlink_c::setCargoCarry(fopAc_ac_c* p_actor) {
    mSpecialMode = SMODE_CARGO_CARRY;
    mCargoCarryAcKeep.setData(p_actor);
}

/* 800D08B0-800D08DC 0CB1F0 002C+00 1/0 0/0 0/0 .text setGoronSideMove__9daAlink_cFP10fopAc_ac_c
 */
void daAlink_c::setGoronSideMove(fopAc_ac_c* p_actor) {
    mSpecialMode = SMODE_GORON_THROW;
    mCargoCarryAcKeep.setData(p_actor);
}

/* 800D08DC-800D091C 0CB21C 0040+00 1/0 0/0 0/0 .text setSumouReady__9daAlink_cFP10fopAc_ac_c */
void daAlink_c::setSumouReady(fopAc_ac_c* p_actor) {
    mSpecialMode = SMODE_SUMO_READY;
    mCargoCarryAcKeep.setData(p_actor);
    mDemo.setDemoMode(1);
}

/* 800D091C-800D0930 0CB25C 0014+00 1/0 0/0 0/0 .text setSumouPushBackDirection__9daAlink_cFs */
void daAlink_c::setSumouPushBackDirection(s16 param_0) {
    if (mProcID != PROC_SUMOU_MOVE) {
        return;
    }
    field_0x3010 = param_0;
}

/* 800D0930-800D0948 0CB270 0018+00 1/0 0/0 0/0 .text            setSumouLoseHeadUp__9daAlink_cFv */
void daAlink_c::setSumouLoseHeadUp() {
    if (mProcID != PROC_SUMOU_WIN_LOSE) {
        return;
    }
    mSpecialMode = SMODE_SUMO_LOSE;
}

/* 800D0948-800D095C 0CB288 0014+00 1/0 0/0 0/0 .text checkPriActorOwn__9daAlink_cCFPC10fopAc_ac_c
 */
bool daAlink_c::checkPriActorOwn(fopAc_ac_c const* p_actor) const {
    return field_0x27f4 == p_actor;
}

/* 800D095C-800D0970 0CB29C 0014+00 1/0 0/0 0/0 .text
 * checkWolfEnemyBiteAllOwn__9daAlink_cCFPC10fopAc_ac_c         */
bool daAlink_c::checkWolfEnemyBiteAllOwn(fopAc_ac_c const* p_actor) const {
    return field_0x281c.getActorConst() == p_actor;
}

/* 800D0970-800D0984 0CB2B0 0014+00 1/0 0/0 0/0 .text setWolfEnemyHangBiteAngle__9daAlink_cFs */
void daAlink_c::setWolfEnemyHangBiteAngle(s16 angle) {
    if (mProcID != PROC_WOLF_ENEMY_HANG_BITE) {
        return;
    }
    field_0x3010 = angle;
}

/* 800D0984-800D0998 0CB2C4 0014+00 1/0 0/0 0/0 .text setSumouGraspCancelCount__9daAlink_cFi */
void daAlink_c::setSumouGraspCancelCount(int param_0) {
    if (mProcID != PROC_SUMOU_MOVE) {
        return;
    }
    mCommonCounter = param_0;
}

/* 800D0998-800D09AC 0CB2D8 0014+00 1/0 0/0 0/0 .text            checkItemSwordEquip__9daAlink_cCFv
 */
bool daAlink_c::checkItemSwordEquip() const {
    return mEquipItem == EQUIP_SWORD;
}

/* 800D09AC-800D09B4 0CB2EC 0008+00 1/0 0/0 0/0 .text            getSinkShapeOffset__9daAlink_cCFv
 */
f32 daAlink_c::getSinkShapeOffset() const {
    return mSinkShapeOffset;
}

/* 800D09B4-800D09C8 0CB2F4 0014+00 1/0 0/0 0/0 .text            checkSinkDead__9daAlink_cCFv */
BOOL daAlink_c::checkSinkDead() const {
    return field_0x2fbd == 0xFF;
}

/* 800D09C8-800D09DC 0CB308 0014+00 1/0 0/0 0/0 .text            checkCutJumpMode__9daAlink_cCFv */
BOOL daAlink_c::checkCutJumpMode() const {
    return mProcID == PROC_CUT_JUMP;
}

/* 800D09DC-800D09E4 0CB31C 0008+00 1/0 0/0 0/0 .text getGiantPuzzleAimAngle__9daAlink_cCFv */
s16 daAlink_c::getGiantPuzzleAimAngle() const {
    return mCommonCounter;
}

/* 800D09E4-800D09EC 0CB324 0008+00 1/0 0/0 0/0 .text getSwordChangeWaitTimer__9daAlink_cCFv */
u8 daAlink_c::getSwordChangeWaitTimer() const {
    return mSwordChangeWaitTimer;
}

/* 800D09EC-800D0A14 0CB32C 0028+00 1/0 0/0 0/0 .text            checkMetamorphose__9daAlink_cCFv */
BOOL daAlink_c::checkMetamorphose() const {
    return mProcID == PROC_METAMORPHOSE && field_0x300a == 0;
}

/* 800D0A14-800D0A28 0CB354 0014+00 1/0 0/0 0/0 .text checkWolfDownAttackPullOut__9daAlink_cCFv */
BOOL daAlink_c::checkWolfDownAttackPullOut() const {
    return mProcID == PROC_WOLF_DOWN_AT_LAND;
}

/* 800D0A28-800D0A30 0CB368 0008+00 1/0 0/0 0/0 .text            getMidnaAtnPos__9daAlink_cCFv */
// vtable issue
#ifdef NONMATCHING
cXyz* daAlink_c::getMidnaAtnPos() const {
    return &mMidnaAtnPos;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void getMidnaAtnPos__9daAlink_cCFv() {
    // asm bool daAlink_c::getMidnaAtnPos() const {
    nofralloc
#include "asm/d/a/d_a_alink/getMidnaAtnPos__9daAlink_cCFv.s"
}
#pragma pop
#endif

/* 800D0A30-800D0A44 0CB370 0014+00 1/0 0/0 0/0 .text            checkCopyRodEquip__9daAlink_cCFv */
bool daAlink_c::checkCopyRodEquip() const {
    return mEquipItem == COPY_ROD;
}

/* 800D0A44-800D0A6C 0CB384 0028+00 1/0 0/0 0/0 .text checkCanoeFishingGetLeft__9daAlink_cCFv */
bool daAlink_c::checkCanoeFishingGetLeft() const {
    return mProcID == PROC_CANOE_FISHING_GET && field_0x300e == 0;
}

/* 800D0A6C-800D0A94 0CB3AC 0028+00 1/0 0/0 0/0 .text checkCanoeFishingGetRight__9daAlink_cCFv */
bool daAlink_c::checkCanoeFishingGetRight() const {
    return mProcID == PROC_CANOE_FISHING_GET && field_0x300e == 1;
}

/* 800D0A94-800D0A9C 0CB3D4 0008+00 1/0 0/0 0/0 .text            checkBeeChildDrink__9daAlink_cCFv
 */
u8 daAlink_c::checkBeeChildDrink() const {
    return field_0x2fd3;
}

/* 800D0A9C-800D0AA4 0CB3DC 0008+00 1/0 0/0 0/0 .text            getWolfHowlMgrP__9daAlink_cFv */
Z2WolfHowlMgr* daAlink_c::getWolfHowlMgrP() {
    return &mZ2WolfHowlMgr;
}

/* 800D0AA4-800D0AC8 0CB3E4 0024+00 1/0 0/0 0/0 .text checkWolfHowlSuccessAnime__9daAlink_cCFv */
BOOL daAlink_c::checkWolfHowlSuccessAnime() const {
    return checkUnderMove0BckNoArcWolf(WANM_HOWL_SUCCESS);
}

/* 800D0AC8-800D0AF0 0CB408 0028+00 1/0 0/0 0/0 .text            checkOctaIealHang__9daAlink_cCFv */
bool daAlink_c::checkOctaIealHang() const {
    return mProcID == PROC_BOSS_BODY_HANG && field_0x32cc == 0;
}

/* 800D0AF0-800D0B08 0CB430 0018+00 1/0 0/0 0/0 .text            cancelOctaIealHang__9daAlink_cFv */
void daAlink_c::cancelOctaIealHang() {
    if (mProcID != PROC_BOSS_BODY_HANG) {
        return;
    }
    field_0x300e = 1;
}

/* 800D0B08-800D0B20 0CB448 0018+00 1/0 0/0 0/0 .text cancelDragonHangBackJump__9daAlink_cFv */
void daAlink_c::cancelDragonHangBackJump() {
    if (mProcID != PROC_BOSS_BODY_HANG) {
        return;
    }
    field_0x300e = -1;
}

/* 800D0B20-800D0B38 0CB460 0018+00 1/0 0/0 0/0 .text            setOctaIealWildHang__9daAlink_cFv
 */
void daAlink_c::setOctaIealWildHang() {
    if (mProcID != PROC_BOSS_BODY_HANG) {
        return;
    }
    field_0x3008 = 1;
}

/* 800D0B38-800D0B60 0CB478 0028+00 1/0 0/0 0/0 .text            checkDragonHangRide__9daAlink_cCFv
 */
bool daAlink_c::checkDragonHangRide() const {
    return mProcID == PROC_BOSS_BODY_HANG && field_0x32cc != 0;
}

/* 800D0B60-800D0B8C 0CB4A0 002C+00 1/0 0/0 0/0 .text playerStartCollisionSE__9daAlink_cFUlUl */
void daAlink_c::playerStartCollisionSE(u32 param_0, u32 param_1) {
    mZ2Link.startCollisionSE(param_0, param_1);
}

/* 800D0B8C-800D0C6C 0CB4CC 00E0+00 1/0 0/0 0/0 .text            __dt__16daAlink_matAnm_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daAlink_matAnm_c::~daAlink_matAnm_c() {
extern "C" asm void __dt__16daAlink_matAnm_cFv() {
    nofralloc
#include "asm/d/a/d_a_alink/__dt__16daAlink_matAnm_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 803B35C8-803B35EC 0106E8 0024+00 2/2 5/5 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_801446DC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_801446D4,
};

/* 800D0C6C-800D0CDC 0CB5AC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/d/a/d_a_alink/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 803B35EC-803B3610 01070C 0014+10 3/3 0/0 0/0 .data            __vt__Q29daAlink_c14hsChainShape_c
 */
SECTION_DATA extern void* __vt__Q29daAlink_c14hsChainShape_c[5 + 4 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)entry__9J3DPacketFP13J3DDrawBuffer,
    (void*)draw__Q29daAlink_c14hsChainShape_cFv,
    (void*)__dt__Q29daAlink_c14hsChainShape_cFv,
    /* padding */
    NULL,
    NULL,
    NULL,
    NULL,
};

/* 800D0CDC-800D0D38 0CB61C 005C+00 1/0 0/0 0/0 .text __dt__Q29daAlink_c14hsChainShape_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daAlink_c::hsChainShape_c::~hsChainShape_c() {
    nofralloc
#include "asm/d/a/d_a_alink/__dt__Q29daAlink_c14hsChainShape_cFv.s"
}
#pragma pop