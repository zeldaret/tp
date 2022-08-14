/* 800C2DDC-800C2EAC 0BD71C 00D0+00 17/17 0/0 0/0 .text
 * procPreActionUnequipInit__9daAlink_cFiP10fopAc_ac_c          */
#ifdef NONMATCHING
void daAlink_c::procPreActionUnequipInit(int param_0, fopAc_ac_c* param_1) {
    commonProcInit(ACT_PROC_PREACTION_UNEQUIP);
    mNormalSpeed = 0.0f;
    setBlendMoveAnime(4.0f);
    allUnequip(0);
    field_0x3010 = 0;

    if (param_1 == NULL) {
        field_0x300e = 0;
    } else {
        field_0x280c.setData(param_1);
        field_0x300e = 1;
        if (fopAcM_GetName(param_1) == 0x2cb) {
            if (mEquipItem == KANTERA) {
                field_0x3010 = 1;
            } else {
                if (i_checkNoResetFlg2(1) != 0) {
                    offKandelaarModel();
                }
            }
        }
    }

    field_0x3198 = param_0;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procPreActionUnequipInit(int param_0, fopAc_ac_c* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procPreActionUnequipInit__9daAlink_cFiP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* 800C2EAC-800C3098 0BD7EC 01EC+00 1/0 0/0 0/0 .text            procPreActionUnequip__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procPreActionUnequip() {
    nofralloc
#include "asm/d/a/d_a_alink/procPreActionUnequip__9daAlink_cFv.s"
}
#pragma pop

/* 800C3098-800C30F0 0BD9D8 0058+00 1/1 0/0 0/0 .text            procServiceWaitInit__9daAlink_cFv
 */
bool daAlink_c::procServiceWaitInit() {
    commonProcInit(PROC_SERVICE_WAIT);
    setSingleAnimeBase(ANM_SERVICE_WAIT);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    mCurrent.mAngle.y = mCollisionRot.y;
    field_0x2f98 = 4;
    return true;
}

/* 800C30F0-800C3224 0BDA30 0134+00 1/0 0/0 0/0 .text            procServiceWait__9daAlink_cFv */
bool daAlink_c::procServiceWait() {
    J3DFrameCtrl* ctrl = &mFrameCtrl1[0];
    if ((!checkNextAction(0) && !checkFrontWallTypeAction()) &&
        (checkEventRun() || checkGuardActionChange() || mCollisionRot.y != field_0x2fe6)) {
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
    return true;
}

/* 800C3224-800C3338 0BDB64 0114+00 2/2 0/0 0/0 .text            procTiredWaitInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procTiredWaitInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procTiredWaitInit__9daAlink_cFv.s"
}
#pragma pop

/* 800C3338-800C33B8 0BDC78 0080+00 1/0 0/0 0/0 .text            procTiredWait__9daAlink_cFv */
bool daAlink_c::procTiredWait() {
    daPy_frameCtrl_c* ctrl = &mFrameCtrl1[0];
    if (!checkNextAction(0)) {
        if (ctrl->checkAnmEnd()) {
            setSingleAnimeBase(ANM_TIRED_WAIT);
        } else if (ctrl->getAttribute() == 2) {
            setTiredVoice(ctrl);
        }
    }
    return true;
}

/* 800C33B8-800C3504 0BDCF8 014C+00 26/26 0/0 0/0 .text            procWaitInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::procWaitInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procWaitInit__9daAlink_cFv.s"
}
#pragma pop

/* 800C3504-800C36CC 0BDE44 01C8+00 1/0 0/0 0/0 .text            procWait__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procWait__9daAlink_cFv.s"
}
#pragma pop

/* 800C36CC-800C3730 0BE00C 0064+00 3/3 0/0 0/0 .text            procMoveInit__9daAlink_cFv */
bool daAlink_c::procMoveInit() {
    if (!commonProcInitNotSameProc(PROC_MOVE)) {
        return false;
    }
    setBlendMoveAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);
    setFootEffectProcType(3);
    return true;
}

/* 800C3730-800C3810 0BE070 00E0+00 1/0 0/0 0/0 .text            procMove__9daAlink_cFv */
// results of cLib_minMaxLimit are put in r4 instead of r3
#ifdef NONMATCHING
bool daAlink_c::procMove() {
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
    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::procMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procMove__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800C3810-800C3868 0BE150 0058+00 1/1 0/0 0/0 .text            procAtnMoveInit__9daAlink_cFv */
bool daAlink_c::procAtnMoveInit() {
    if (!commonProcInitNotSameProc(PROC_ATN_MOVE)) {
        return false;
    }
    setBlendAtnMoveAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);
    return true;
}

/* 800C3868-800C38CC 0BE1A8 0064+00 1/0 0/0 0/0 .text            procAtnMove__9daAlink_cFv */
bool daAlink_c::procAtnMove() {
    if (!checkNextAction(0)) {
        if (field_0x2f98 != 0 || !checkFrontWallTypeAction()) {
            setBlendAtnMoveAnime(lit_6041);
        }
    }
    return true;
}

/* 800C38CC-800C397C 0BE20C 00B0+00 4/4 0/0 0/0 .text            procAtnActorWaitInit__9daAlink_cFv
 */
bool daAlink_c::procAtnActorWaitInit() {
    if (!commonProcInitNotSameProc(PROC_ATN_ACTOR_WAIT)) {
        return false;
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

    return true;
}

/* 800C397C-800C39EC 0BE2BC 0070+00 1/0 0/0 0/0 .text            procAtnActorWait__9daAlink_cFv */
bool daAlink_c::procAtnActorWait() {
    if (!checkNextAction(0)) {
        if (checkAtnWaitAnime()) {
            setBlendAtnMoveAnime(lit_6041);
        } else {
            setBlendMoveAnime(lit_6041);
        }
        checkSwordTwirlAction();
    }
    return true;
}

/* 800C39EC-800C3A44 0BE32C 0058+00 3/3 0/0 0/0 .text            procAtnActorMoveInit__9daAlink_cFv
 */
bool daAlink_c::procAtnActorMoveInit() {
    if (!commonProcInitNotSameProc(PROC_ATN_ACTOR_MOVE)) {
        return false;
    }
    setBlendAtnMoveAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);
    return true;
}

/* 800C3A44-800C3A94 0BE384 0050+00 1/0 0/0 0/0 .text            procAtnActorMove__9daAlink_cFv */
bool daAlink_c::procAtnActorMove() {
    if (!checkNextAction(0)) {
        setBlendAtnMoveAnime(lit_6041);
        checkSwordTwirlAction();
    }
    return 1;
}

/* 800C3A94-800C3B1C 0BE3D4 0088+00 2/2 0/0 0/0 .text            procWaitTurnInit__9daAlink_cFv */
bool daAlink_c::procWaitTurnInit() {
    if (!commonProcInitNotSameProc(PROC_WAIT_TURN)) {
        return false;
    }

    setSingleAnimeBaseSpeed(ANM_WAIT_TURN, daAlinkHIO_basic_c0::m.mWaitTurnSpeed,
                            daAlinkHIO_basic_c0::m.mAnmBlendFactor);
    if (checkEventRun()) {
        mNormalSpeed = FLOAT_LABEL(lit_6108);
    }
    field_0x300e = field_0x2fe2;
    mCurrent.mAngle.y = mCollisionRot.y;
    return true;
}

/* 800C3B1C-800C3C3C 0BE45C 0120+00 1/0 0/0 0/0 .text            procWaitTurn__9daAlink_cFv */
BOOL daAlink_c::procWaitTurn() {
    cLib_chaseF(&mNormalSpeed, FLOAT_LABEL(lit_6108), daAlinkHIO_move_c0::m.mDeceleration);
    if (checkGroundSpecialMode()) {
        return true;
    } else {
        if (i_checkEndResetFlg0(ERFLG0_UNK_100000)) {
            return procFloorDownReboundInit();
        } else {
            s16 angle = cLib_addCalcAngleS(&mCollisionRot.y, field_0x300e, 30, 0x3CDF, 8000);
            mCurrent.mAngle.y = mCollisionRot.y;
            if (checkNextActionFromButton()) {
                return true;
            } else {
                if (angle == 0) {
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
        }
    }
    return true;
}

/* 800C3C3C-800C3D38 0BE57C 00FC+00 2/2 0/0 0/0 .text            procMoveTurnInit__9daAlink_cFi */
bool daAlink_c::procMoveTurnInit(int param_0) {
    if (!commonProcInitNotSameProc(PROC_MOVE_TURN)) {
        return false;
    }

    setBlendMoveAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);
    dComIfGp_setPlayerStatus0(0, 0x800);

    if (param_0 != 0) {
        field_0x300e = (daAlinkHIO_move_c0::m.mMaxTurnAngle << 2) + 19030;
        field_0x3010 = daAlinkHIO_move_c0::m.mMaxTurnAngle << 1;
        field_0x300a = 2;
        mCurrent.mAngle.y = field_0x2fe2;
        mNormalSpeed *= lit_5943;
    } else {
        field_0x300e = daAlinkHIO_move_c0::m.mMaxTurnAngle << 1;
        field_0x3010 = daAlinkHIO_move_c0::m.mMaxTurnAngle;
        field_0x300a = 3;
    }
    field_0x300e = daAlinkHIO_move_c0::m.mMaxTurnAngle << 1;
    field_0x3010 = daAlinkHIO_move_c0::m.mMaxTurnAngle;
    return true;
}

/* 800C3D38-800C3DA0 0BE678 0068+00 1/0 0/0 0/0 .text            procMoveTurn__9daAlink_cFv */
bool daAlink_c::procMoveTurn() {
    setSpeedAndAngleNormal();
    cLib_addCalcAngleS(&mCollisionRot.y, mCurrent.mAngle.y, field_0x300a, field_0x300e,
                       field_0x3010);

    if (!checkNextAction(0)) {
        setBlendMoveAnime(lit_6041);
    }
    return true;
}

/* 800C3DA0-800C3F60 0BE6E0 01C0+00 2/2 0/0 0/0 .text            procSideStepInit__9daAlink_cFi */
bool daAlink_c::procSideStepInit(int jump_type) {
    if (jump_type == 1 && !checkHeavyStateOn(1, 1) &&
        (checkNoUpperAnime() || checkEquipAnime() || field_0x2fcc != 0 && checkUpperGuardAnime())) {
        return procBackJumpInit(0);
    } else {
        commonProcInit(PROC_SIDESTEP);
        field_0x2f98 = jump_type;

        if (field_0x2f98 == 1) {
            mCurrent.mAngle.y = mCollisionRot.y + 0x8000;
            setSingleAnimeParam(ANM_BACK_JUMP, &daAlinkHIO_sideStep_c0::m.mBackJumpAnm);
            mNormalSpeed = daAlinkHIO_sideStep_c0::m.mBackJumpSpeedH;
            mSpeed.y = daAlinkHIO_sideStep_c0::m.mBackJumpSpeedV;
            field_0x300a = 0;
        } else {
            daAlink_ANM anm_id;
            if (field_0x2f98 == 2) {
                anm_id = ANM_SIDE_STEP_LEFT;
                mCurrent.mAngle.y = mCollisionRot.y + 0x4000;
            } else {
                anm_id = ANM_SIDE_STEP_RIGHT;
                mCurrent.mAngle.y = mCollisionRot.y - 0x4000;
            }
            setSingleAnimeParam(anm_id, &daAlinkHIO_sideStep_c0::m.mSideJumpAnm);
            mNormalSpeed = daAlinkHIO_sideStep_c0::m.mSideJumpSpeedH;
            mSpeed.y = daAlinkHIO_sideStep_c0::m.mSideJumpSpeedV;
            field_0x300a = 1;
        }
        if (i_checkNoResetFlg0(UNDER_WATER_MOVEMENT)) {
            mNormalSpeed *= daAlinkHIO_magneBoots_c0::m.mWaterVelocityX;
            mSpeed.y *= daAlinkHIO_magneBoots_c0::m.mWaterVelocityY;
        }
        voiceStart(Z2SE_AL_V_JUMP_S);
        mCommonCounter = 0;
        field_0x300e = 0;
        return 1;
    }
}

/* 800C3F60-800C40F0 0BE8A0 0190+00 1/0 0/0 0/0 .text            procSideStep__9daAlink_cFv */
bool daAlink_c::procSideStep() {
    if (mTargetedActor != NULL && field_0x300a != 0) {
        s16 actor_angle = fopAcM_searchActorAngleY(this, mTargetedActor);
        cLib_addCalcAngleS(&mCollisionRot.y, actor_angle, 5, 0x5E8, 0x13C);
        if (field_0x2f98 == 2) {
            mCurrent.mAngle.y = mCollisionRot.y + 0x4000;
        } else {
            mCurrent.mAngle.y = mCollisionRot.y - 0x4000;
        }
    }
    if (doTrigger() && field_0x300a != 0) {
        mCommonCounter = 1;
    }

    if (checkUpperItemActionFly()) {
        return true;
    } else if (mLinkAcch.ChkGroundHit() && field_0x300e != 0) {
        if (mCommonCounter != 0 && checkSideRollAction(field_0x2f98)) {
            return true;
        } else {
            return procSideStepLandInit();
        }
    } else if (checkNoUpperAnime() && checkForceSwordSwing()) {
        setCutDash(1, 0);
    } else if (mDemo.getDemoMode() != 16 &&
               mCurrent.mPosition.y < mLastJumpPos.y - daAlinkHIO_sideStep_c0::m.mFallHeight) {
        return procFallInit(2, daAlinkHIO_sideStep_c0::m.mFallInterpolation);
    }

    field_0x300e = 1;
    checkItemChangeFromButton();
    return true;
}

/* 800C40F0-800C4278 0BEA30 0188+00 1/1 0/0 0/0 .text            procSideStepLandInit__9daAlink_cFv
 */
bool daAlink_c::procSideStepLandInit() {
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
            anm_id = ANM_SIDE_STEP_LEFT_LAND;
            uvar3 = 0x3F;
        } else {
            anm_id = ANM_SIDE_STEP_RIGHT_LAND;
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
    mCurrent.mAngle.y = mCollisionRot.y;
    setStepLandVibration();
    return true;
}

/* 800C4278-800C4378 0BEBB8 0100+00 1/0 0/0 0/0 .text            procSideStepLand__9daAlink_cFv */
bool daAlink_c::procSideStepLand() {
    daPy_frameCtrl_c* ctrl = &mFrameCtrl1[0];
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
            return true;
        }
        checkNextAction(1);
    }

    return true;
}

/* 800C4378-800C4514 0BECB8 019C+00 1/1 0/0 0/0 .text            procSlideInit__9daAlink_cFs */
bool daAlink_c::procSlideInit(s16 param_0) {
    commonProcInit(PROC_SLIDE);

    field_0x814.SetWeight(255);
    field_0x3090 = 8;
    mCurrent.mAngle.y = param_0;

    if (getMoveBGActorName(mLinkAcch.m_gnd, 0) == 0xD4) {
        field_0x300e = 1;
    } else {
        field_0x300e = 0;
    }

    if (cLib_distanceAngleS(param_0, mCollisionRot.y) < 0x3800 || field_0x300e != 0) {
        field_0x3198 = 1;
        setSingleAnimeParam(ANM_FORWARD_SLIDE, &daAlinkHIO_slide_c0::m.mForwardSlideAnm);
        dComIfGp_setPlayerStatus1(0, 0x100);
        onModeFlg(MODE_UNK_8000);
        onModeFlg(MODE_UNK_2000000);
        onModeFlg(MODE_UNK_20000000);
        mNormalSpeed = FLOAT_LABEL(lit_6108);
        field_0x2f9d = 4;
        setUpperAnimeBaseMorf(0xCE, lit_6041);
        i_onNoResetFlg1(0x10000000);
        setFootEffectProcType(0);
    } else {
        field_0x3198 = 0;
        setSingleAnimeParam(ANM_BACKWARD_SLIDE, &daAlinkHIO_slide_c0::m.mBackwardSlideAnm);
        dComIfGp_setPlayerStatus1(0, 0x200);
        field_0x2f9d = 0x60;
        setFootEffectProcType(1);
    }
    field_0x594 = daAlinkHIO_slide_c0::m.mMaxSpeed;
    field_0x33cc = FLOAT_LABEL(lit_6108);
    mCommonCounter = 0;
    field_0x3010 = 0;
    return true;
}

/* ############################################################################################## */
/* 804532E0-804532E4 0018E0 0004+00 1/1 0/0 0/0 .sdata2          @73057 */
SECTION_SDATA2 static f32 lit_73057 = -4096.0f;

/* 800C4514-800C47AC 0BEE54 0298+00 1/0 0/0 0/0 .text            procSlide__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procSlide() {
    nofralloc
#include "asm/d/a/d_a_alink/procSlide__9daAlink_cFv.s"
}
#pragma pop

/* 800C47AC-800C4894 0BF0EC 00E8+00 1/1 0/0 0/0 .text            procSlideLandInit__9daAlink_cFi */
bool daAlink_c::procSlideLandInit(int param_0) {
    commonProcInit(PROC_SLIDE_LAND);

    if (param_0 != 0) {
        setSingleAnimeParam(ANM_BACKWARD_SLIDE_LAND, &daAlinkHIO_slide_c0::m.mForwardLandAnm);
        field_0x3478 = daAlinkHIO_slide_c0::m.mForwardLandAnm.field_0x10;
        field_0x3198 = 1;
        field_0x2f99 = 4;
        field_0x3588 = l_waitBaseAnime;
    } else {
        setSingleAnimeParam(ANM_FORWARD_SLIDE_LAND, &daAlinkHIO_slide_c0::m.mBackwardLandAnm);
        field_0x3478 = daAlinkHIO_slide_c0::m.mBackwardLandAnm.field_0x10;
        field_0x3198 = 0;
    }
    field_0x814.SetWeight(255);
    mNormalSpeed *= lit_5943;
    return true;
}

/* 800C4894-800C494C 0BF1D4 00B8+00 1/0 0/0 0/0 .text            procSlideLand__9daAlink_cFv */
bool daAlink_c::procSlideLand() {
    daPy_frameCtrl_c* ctrl = &mFrameCtrl1[0];

    cLib_chaseF(&mNormalSpeed, FLOAT_LABEL(lit_6108), lit_7450);
    if (field_0x3198 != 0) {
        field_0x2f99 = 4;
    }

    if (ctrl->checkAnmEnd()) {
        mCurrent.mAngle.y = mCollisionRot.y;
        checkNextAction(0);
    } else {
        if (ctrl->getFrame() > field_0x3478) {
            s16 tmp_angle = mCurrent.mAngle.y;
            mCurrent.mAngle.y = mCollisionRot.y;
            if (!checkNextAction(1)) {
                mCurrent.mAngle.y = tmp_angle;
            }
        }
    }
    return true;
}

/* 800C494C-800C4B40 0BF28C 01F4+00 4/3 0/0 0/0 .text            procFrontRollInit__9daAlink_cFv */
#ifdef NONMATCHING
bool daAlink_c::procFrontRollInit() {
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

        if (!i_checkNoResetFlg0(UNDER_WATER_MOVEMENT)) {
            if (checkHeavyStateOn(1, 1)) {
                mNormalSpeed *= mHeavySpeedMultiplier;
            }
        } else {
            mNormalSpeed *= daAlinkHIO_magneBoots_c0::m.mWaterVelocityX;
        }
        mCurrent.mAngle.y = mCollisionRot.y;
        voiceStart(Z2SE_AL_V_BACKTEN);
        mCommonCounter = 0;
        setFootEffectProcType(0);
        if (check) {
            i_onNoResetFlg0(2);
        }
        if (i_checkEquipHeavyBoots()) {
            field_0xFB8.SetAtType(0x200000);
            field_0xFB8.SetAtHitMark(1);
            field_0xFB8.SetAtSe(9);
            field_0xFB8.SetAtAtp(2);
            field_0xFB8.SetAtMtrl(0);
            field_0xFB8.ResetAtHit();
            field_0xFB8.SetR(daAlinkHIO_frontRoll_c0::m.mBootsAttackRadius);
            field_0xFB8.OnAtSetBit();
        }
        return true;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::procFrontRollInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procFrontRollInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800C4B40-800C4F14 0BF480 03D4+00 1/0 0/0 0/0 .text            procFrontRoll__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procFrontRoll() {
    nofralloc
#include "asm/d/a/d_a_alink/procFrontRoll__9daAlink_cFv.s"
}
#pragma pop

/* 800C4F14-800C4FFC 0BF854 00E8+00 1/1 0/0 0/0 .text procFrontRollCrashInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procFrontRollCrashInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procFrontRollCrashInit__9daAlink_cFv.s"
}
#pragma pop

/* 800C4FFC-800C5160 0BF93C 0164+00 1/0 0/0 0/0 .text            procFrontRollCrash__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procFrontRollCrash() {
    nofralloc
#include "asm/d/a/d_a_alink/procFrontRollCrash__9daAlink_cFv.s"
}
#pragma pop

/* 800C5160-800C5240 0BFAA0 00E0+00 3/3 0/0 0/0 .text procFrontRollSuccessInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procFrontRollSuccessInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procFrontRollSuccessInit__9daAlink_cFv.s"
}
#pragma pop

/* 800C5240-800C5328 0BFB80 00E8+00 1/0 0/0 0/0 .text            procFrontRollSuccess__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procFrontRollSuccess() {
    nofralloc
#include "asm/d/a/d_a_alink/procFrontRollSuccess__9daAlink_cFv.s"
}
#pragma pop

/* 800C5328-800C5484 0BFC68 015C+00 3/3 0/0 0/0 .text            procSideRollInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::procSideRollInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procSideRollInit__9daAlink_cFi.s"
}
#pragma pop

/* 800C5484-800C5700 0BFDC4 027C+00 1/0 0/0 0/0 .text            procSideRoll__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procSideRoll() {
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
asm bool daAlink_c::procBackJumpInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procBackJumpInit__9daAlink_cFi.s"
}
#pragma pop

/* 800C5964-800C5A54 0C02A4 00F0+00 1/0 0/0 0/0 .text            procBackJump__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procBackJump() {
    nofralloc
#include "asm/d/a/d_a_alink/procBackJump__9daAlink_cFv.s"
}
#pragma pop

/* 800C5A54-800C5AF0 0C0394 009C+00 1/1 0/0 0/0 .text            procBackJumpLandInit__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procBackJumpLandInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procBackJumpLandInit__9daAlink_cFi.s"
}
#pragma pop

/* 800C5AF0-800C5C28 0C0430 0138+00 1/0 0/0 0/0 .text            procBackJumpLand__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procBackJumpLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procBackJumpLand__9daAlink_cFv.s"
}
#pragma pop

/* 800C5C28-800C5CA4 0C0568 007C+00 1/1 0/0 0/0 .text            procSlipInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procSlipInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procSlipInit__9daAlink_cFv.s"
}
#pragma pop

/* 800C5CA4-800C5E68 0C05E4 01C4+00 1/0 0/0 0/0 .text            procSlip__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procSlip() {
    nofralloc
#include "asm/d/a/d_a_alink/procSlip__9daAlink_cFv.s"
}
#pragma pop

/* 800C5E68-800C61EC 0C07A8 0384+00 4/4 0/0 0/0 .text            procAutoJumpInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procAutoJumpInit(int param_0) {
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
asm void daAlink_c::procAutoJump() {
    nofralloc
#include "asm/d/a/d_a_alink/procAutoJump__9daAlink_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 804532E8-804532EC 0018E8 0004+00 1/1 0/0 0/0 .sdata2          @73790 */
SECTION_SDATA2 static f32 lit_73790 = 92.0f;

/* 800C66DC-800C6798 0C101C 00BC+00 1/1 0/0 0/0 .text            procDiveJumpInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procDiveJumpInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procDiveJumpInit__9daAlink_cFv.s"
}
#pragma pop

/* 800C6798-800C6850 0C10D8 00B8+00 1/0 0/0 0/0 .text            procDiveJump__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procDiveJump() {
    nofralloc
#include "asm/d/a/d_a_alink/procDiveJump__9daAlink_cFv.s"
}
#pragma pop

/* 800C6850-800C692C 0C1190 00DC+00 1/1 0/0 0/0 .text            procRollJumpInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procRollJumpInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procRollJumpInit__9daAlink_cFv.s"
}
#pragma pop

/* 800C692C-800C6A48 0C126C 011C+00 1/0 0/0 0/0 .text            procRollJump__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procRollJump() {
    nofralloc
#include "asm/d/a/d_a_alink/procRollJump__9daAlink_cFv.s"
}
#pragma pop

/* 800C6A48-800C6D20 0C1388 02D8+00 30/30 0/0 0/0 .text            procFallInit__9daAlink_cFif */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::procFallInit(int param_0, f32 param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procFallInit__9daAlink_cFif.s"
}
#pragma pop

/* 800C6D20-800C6F18 0C1660 01F8+00 1/0 0/0 0/0 .text            procFall__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procFall() {
    nofralloc
#include "asm/d/a/d_a_alink/procFall__9daAlink_cFv.s"
}
#pragma pop

/* 800C6F18-800C6FE4 0C1858 00CC+00 6/6 0/0 0/0 .text            procLandInit__9daAlink_cFf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procLandInit(f32 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procLandInit__9daAlink_cFf.s"
}
#pragma pop

/* 800C6FE4-800C70F8 0C1924 0114+00 1/0 0/0 0/0 .text            procLand__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procLand__9daAlink_cFv.s"
}
#pragma pop

/* 800C70F8-800C72D4 0C1A38 01DC+00 3/3 0/0 0/0 .text            procSmallJumpInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procSmallJumpInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procSmallJumpInit__9daAlink_cFi.s"
}
#pragma pop

/* 800C72D4-800C74D4 0C1C14 0200+00 1/0 0/0 0/0 .text            procSmallJump__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procSmallJump() {
    nofralloc
#include "asm/d/a/d_a_alink/procSmallJump__9daAlink_cFv.s"
}
#pragma pop

/* 800C74D4-800C755C 0C1E14 0088+00 1/1 0/0 0/0 .text            procStepMoveInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procStepMoveInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procStepMoveInit__9daAlink_cFv.s"
}
#pragma pop

/* 800C755C-800C7690 0C1E9C 0134+00 1/0 0/0 0/0 .text            procStepMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procStepMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procStepMove__9daAlink_cFv.s"
}
#pragma pop

/* 800C7690-800C76F8 0C1FD0 0068+00 1/0 0/0 0/0 .text            procCrouchInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCrouchInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCrouchInit__9daAlink_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 804532EC-804532F0 0018EC 0004+00 1/1 0/0 0/0 .sdata2          @74138 */
SECTION_SDATA2 static f32 lit_74138 = -80.0f;

/* 800C76F8-800C77F4 0C2038 00FC+00 1/0 0/0 0/0 .text            procCrouch__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCrouch() {
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

bool daMidna_c::checkMidnaRealBody() {
    return dKy_darkworld_check() == 1 || dComIfGs_isTransformLV(3);
}

/* 800C77F4-800C7C64 0C2134 0470+00 4/2 0/0 0/0 .text procCoMetamorphoseInit__9daAlink_cFv */
// 1 missing instruction, lots of regalloc. maybe related
#ifdef NONMATCHING
bool daAlink_c::procCoMetamorphoseInit() {
    int svar8 = 0;

    if (i_dComIfGp_getEvent().i_isOrderOK()) {
        if (!dComIfGp_event_compulsory(this, NULL, 0xFFFF)) {
            return 0;
        }
        mDemo.i_setSpecialDemoType();
        mDamageTimer = 0;
        svar8 = 1;
    }

    if (!commonProcInitNotSameProc(METAMORPHOSE)) {
        return 1;
    }

    field_0x3198 = svar8;
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
            mCommonCounter = mCollisionRot.x;
        }
    } else {
        deleteEquipItem(0, 1);

        if (i_checkEndResetFlg0(ERFLG0_UNK_2) && checkStageName("D_MN08")) {
            field_0x3010 = 1;
        }
        field_0x300a = 0;

        if (i_checkWolf()) {
            // Transform Wolf -> Human
            setSingleAnimeWolfBase(ANM_TRANFORM_HUMAN);
            field_0x3588 = l_wolfBaseAnime;
            field_0x347c = 0.5f;
            field_0x3480 = daAlinkHIO_basic_c0::m.mWolfLinkTransformSpeed;
            mCommonCounter = mCollisionRot.x;

            daMidna_c* midna = getMidnaActor();
            if (i_checkMidnaRide() && midna->checkMidnaRealBody() && midna->checkDemoTypeNone()) {
                midna->changeOriginalDemo();
                midna->changeDemoMode(15);
            }
        } else {
            // Transform Human -> Wolf
            if (mDemo.getDemoMode() == 0x39 && mDemo.getParam1() == 1) {
                voiceStart(Z2SE_AL_V_TRANSFORM);
            }
            setSingleAnimeBase(ANM_TRANSFORM_WOLF);
            setMetamorphoseModel(1);
            field_0x3588 = l_waitBaseAnime;
            field_0x3480 = daAlinkHIO_basic_c0::m.mLinkWolfTransformSpeed;

            cXyz pos(mCurrent.mPosition.x + (cM_ssin(mCollisionRot.y) * 100.0f),
                     mCurrent.mPosition.y + 300.0f,
                     mCurrent.mPosition.z + (cM_scos(mCollisionRot.y) * 100.0f));
            mLinkGndChk.SetPos(&pos);

            f32 gnd_cross = dComIfG_Bgsp().GroundCross(&mLinkGndChk);
            if (gnd_cross != -1000000000.0f) {
                pos.y = -1000000000.0f;
                cXyz tmp_4c = mCurrent.mPosition;
                cXyz tmp_58 = pos;
                BOOL check = false;
                for (int i = 0; i < 4; i++) {
                    if (i == 3) {
                        tmp_4c.y = gnd_cross + 5.0f;
                    } else {
                        tmp_4c.y = mCurrent.mPosition.y + field_0x18B0[i].GetWallH();
                    }
                    tmp_58.y = tmp_4c.y;

                    if (commonLineCheck(&tmp_4c, &tmp_58) && dBgS_CheckBWallPoly(mLinkLinChk)) {
                        if (dComIfG_Bgsp().GetWallCode(mLinkLinChk) != 7) {
                            check = true;
                            break;
                        }
                    }
                }

                if (check) {
                    mCommonCounter = field_0x2ff0;
                } else {
                    pos -= mCurrent.mPosition;
                    pos.atan2sY_XZ();
                    mCommonCounter = svar8;

                    if (cM_deg2s(70.0f) < abs(mCommonCounter)) {
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

    field_0x3484 = mCurrent.mPosition.y;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::procCoMetamorphoseInit() {
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
asm void daAlink_c::procCoMetamorphose() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoMetamorphose__9daAlink_cFv.s"
}
#pragma pop

/* 800C82E8-800C83A0 0C2C28 00B8+00 2/0 0/0 0/0 .text procCoMetamorphoseOnlyInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoMetamorphoseOnlyInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoMetamorphoseOnlyInit__9daAlink_cFv.s"
}
#pragma pop

/* 800C83A0-800C8460 0C2CE0 00C0+00 1/0 0/0 0/0 .text procCoMetamorphoseOnly__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoMetamorphoseOnly() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoMetamorphoseOnly__9daAlink_cFv.s"
}
#pragma pop

/* 800C8460-800C84D0 0C2DA0 0070+00 2/2 0/0 0/0 .text procFloorDownReboundInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::procFloorDownReboundInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procFloorDownReboundInit__9daAlink_cFv.s"
}
#pragma pop

/* 800C84D0-800C854C 0C2E10 007C+00 1/0 0/0 0/0 .text            procFloorDownRebound__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procFloorDownRebound() {
    nofralloc
#include "asm/d/a/d_a_alink/procFloorDownRebound__9daAlink_cFv.s"
}
#pragma pop

/* 800C854C-800C85D8 0C2E8C 008C+00 1/1 0/0 0/0 .text
 * procGoronRideWaitInit__9daAlink_cFP10fopAc_ac_c              */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procGoronRideWaitInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procGoronRideWaitInit__9daAlink_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 800C85D8-800C8700 0C2F18 0128+00 1/0 0/0 0/0 .text            procGoronRideWait__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procGoronRideWait() {
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
SECTION_RODATA static u8 const localBoomCatchPos[12] = {
    0x41, 0x95, 0x99, 0x9A, 0x43, 0x12, 0x4C, 0xCD, 0x42, 0x8A, 0x66, 0x66,
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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::execute() {
    nofralloc
#include "asm/d/a/d_a_alink/execute__9daAlink_cFv.s"
}
#pragma pop

/* 800CAFA8-800CAFC8 0C58E8 0020+00 1/0 0/0 0/0 .text            daAlink_Execute__FP9daAlink_c */
static void daAlink_Execute(daAlink_c* pLinkPtr) {
    pLinkPtr->execute();
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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::basicModelDraw(J3DModel* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/basicModelDraw__9daAlink_cFP8J3DModel.s"
}
#pragma pop

/* 800CC2E0-800CC364 0C6C20 0084+00 1/1 0/0 0/0 .text            modelDraw__9daAlink_cFP8J3DModeli
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::modelDraw(J3DModel* param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/modelDraw__9daAlink_cFP8J3DModeli.s"
}
#pragma pop

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
asm void daAlink_c::setBodyAngleToCamera() {
    nofralloc
#include "asm/d/a/d_a_alink/setBodyAngleToCamera__9daAlink_cFv.s"
}
#pragma pop

/* 800CEAF4-800CEB58 0C9434 0064+00 9/9 0/0 0/0 .text            setSubjectMode__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSubjectMode() {
    nofralloc
#include "asm/d/a/d_a_alink/setSubjectMode__9daAlink_cFv.s"
}
#pragma pop

/* 800CEB58-800CEBD8 0C9498 0080+00 2/2 0/0 0/0 .text            subjectCancelTrigger__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::subjectCancelTrigger() {
    nofralloc
#include "asm/d/a/d_a_alink/subjectCancelTrigger__9daAlink_cFv.s"
}
#pragma pop

/* 800CEBD8-800CECE4 0C9518 010C+00 9/9 0/0 0/0 .text            checkSubjectEnd__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkSubjectEnd(int param_0) {
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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daAlink_searchPeepObj(fopAc_ac_c* param_0, void* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/daAlink_searchPeepObj__FP10fopAc_ac_cPv.s"
}
#pragma pop

/* 800CED84-800CEE08 0C96C4 0084+00 2/2 0/0 0/0 .text procCoSubjectivityInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoSubjectivityInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoSubjectivityInit__9daAlink_cFv.s"
}
#pragma pop

/* 800CEE08-800CEF70 0C9748 0168+00 1/0 0/0 0/0 .text            procCoSubjectivity__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoSubjectivity() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoSubjectivity__9daAlink_cFv.s"
}
#pragma pop

/* 800CEF70-800CF018 0C98B0 00A8+00 1/1 0/0 0/0 .text procCoSwimSubjectivityInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoSwimSubjectivityInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoSwimSubjectivityInit__9daAlink_cFv.s"
}
#pragma pop

/* 800CF018-800CF100 0C9958 00E8+00 1/0 0/0 0/0 .text procCoSwimSubjectivity__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoSwimSubjectivity() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoSwimSubjectivity__9daAlink_cFv.s"
}
#pragma pop

/* 800CF100-800CF1B8 0C9A40 00B8+00 1/1 0/0 0/0 .text procCoPeepSubjectivityInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoPeepSubjectivityInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoPeepSubjectivityInit__9daAlink_cFv.s"
}
#pragma pop

/* 800CF1B8-800CF25C 0C9AF8 00A4+00 1/0 0/0 0/0 .text procCoPeepSubjectivity__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCoPeepSubjectivity() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoPeepSubjectivity__9daAlink_cFv.s"
}
#pragma pop

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
    return field_0x0650->i_getAnmMtx(field_0x30c0);
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
    return field_0x0650->i_getAnmMtx(field_0x30b8);
}

/* 800CF2F8-800CF314 0C9C38 001C+00 1/0 0/0 0/0 .text            getRightHandMatrix__9daAlink_cFv */
MtxP daAlink_c::getRightHandMatrix() {
    return field_0x0650->i_getAnmMtx(field_0x30ba);
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
    return field_0x0650->i_getAnmMtx(field_0x30c2);
}

/* 800CF344-800CF380 0C9C84 003C+00 1/0 0/0 0/0 .text            checkPlayerNoDraw__9daAlink_cFv */
BOOL daAlink_c::checkPlayerNoDraw() {
    return dComIfGp_checkCameraAttentionStatus(field_0x317c, 2) ||
           i_checkNoResetFlg0(PLAYER_NO_DRAW);
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
static asm void dComIfGp_att_getCatghTarget() {
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
    return checkUpperAnime(ANM_HUMAN_CHAIN_GRAB) || checkUpperAnime(ANM_WOLF_CHAIN_GRAB);
}

/* 800D0048-800D005C 0CA988 0014+00 1/1 0/0 0/0 .text checkSmallUpperGuardAnime__9daAlink_cCFv */
BOOL daAlink_c::checkSmallUpperGuardAnime() const {
    return checkUpperAnime(ANM_SMALL_GUARD);
}

/* 800D005C-800D008C 0CA99C 0030+00 1/1 0/0 0/0 .text            dComIfGp_evmng_startCheck__FPCc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void dComIfGp_evmng_startCheck(char const* param_0) {
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
asm void mDoExt_MtxCalcAnmBlendTbl::getAnm(int param_0) {
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
BOOL daAlink_c::checkReinRide() const {
    return mRideStatus == 1 || mRideStatus == 2;
}

/* 800D0110-800D0138 0CAA50 0028+00 1/1 0/0 0/0 .text checkWolfEnemyThrowAnime__9daAlink_cCFv */
BOOL daAlink_c::checkWolfEnemyThrowAnime() const {
    return checkUpperAnime(ANM_WOLF_ENEMY_THROW_LEFT) ||
           checkUpperAnime(ANM_WOLF_ENEMY_THROW_RIGHT);
}

/* 800D0138-800D014C 0CAA78 0014+00 1/1 0/0 0/0 .text            checkSpecialDemoMode__9daAlink_cCFv
 */
u16 daAlink_c::checkSpecialDemoMode() const {
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
        spinnerActor = mRideActor.getActor();
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
    return field_0x0650->getBaseTRMtx();
}

/* 800D029C-800D02A4 0CABDC 0008+00 1/0 0/0 0/0 .text            getInvMtx__9daAlink_cFv */
MtxP daAlink_c::getInvMtx() {
    return mInvMtx;
}

/* 800D02A4-800D02B8 0CABE4 0014+00 1/0 0/0 0/0 .text getLinkBackBone1Matrix__9daAlink_cFv */
MtxP daAlink_c::getLinkBackBone1Matrix() {
    return field_0x0650->i_getAnmMtx(1);
}

/* 800D02B8-800D02CC 0CABF8 0014+00 1/0 0/0 0/0 .text            getWolfMouthMatrix__9daAlink_cFv */
MtxP daAlink_c::getWolfMouthMatrix() {
    return field_0x0650->i_getAnmMtx(13);
}

/* 800D02CC-800D02E0 0CAC0C 0014+00 1/0 0/0 0/0 .text getWolfBackbone2Matrix__9daAlink_cFv */
MtxP daAlink_c::getWolfBackbone2Matrix() {
    return field_0x0650->i_getAnmMtx(2);
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
    return field_0x0650->i_getAnmMtx(field_0x30b4);
}

/* 800D0350-800D0358 0CAC90 0008+00 1/0 0/0 0/0 .text            getGroundY__9daAlink_cFv */
f32 daAlink_c::getGroundY() {
    return mLinkAcch.GetGroundH();
}

/* 800D0358-800D0360 0CAC98 0008+00 1/0 0/0 0/0 .text getBaseAnimeFrameRate__9daAlink_cCFv */
f32 daAlink_c::getBaseAnimeFrameRate() const {
    return mFrameCtrl1[0].getRate();
}

/* 800D0360-800D0368 0CACA0 0008+00 1/0 0/0 0/0 .text            getAtnActorID__9daAlink_cCFv */
s32 daAlink_c::getAtnActorID() const {
    return mAtnActorID;
}

/* 800D0368-800D0370 0CACA8 0008+00 1/0 0/0 0/0 .text            getItemID__9daAlink_cCFv */
s32 daAlink_c::getItemID() const {
    return mItemActor.getID();
}

/* 800D0370-800D038C 0CACB0 001C+00 1/0 0/0 0/0 .text            getGrabActorID__9daAlink_cCFv */
s32 daAlink_c::getGrabActorID() const {
    if (mEquipItem == 0x102) {
        return mItemActor.getID();
    } else {
        return mGrabItemActor.getID();
    }
}

/* 800D038C-800D03B4 0CACCC 0028+00 1/0 0/0 0/0 .text            setForcePutPos__9daAlink_cFRC4cXyz
 */
void daAlink_c::setForcePutPos(cXyz const& pPutPos) {
    mForcePutPos = pPutPos;
    i_onEndResetFlg1(UNK_FORCE_PUT_POS);
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
    mCargoCarryActor.setData(p_actor);
}

/* 800D08B0-800D08DC 0CB1F0 002C+00 1/0 0/0 0/0 .text setGoronSideMove__9daAlink_cFP10fopAc_ac_c
 */
void daAlink_c::setGoronSideMove(fopAc_ac_c* p_actor) {
    mSpecialMode = SMODE_GORON_THROW;
    mCargoCarryActor.setData(p_actor);
}

/* 800D08DC-800D091C 0CB21C 0040+00 1/0 0/0 0/0 .text setSumouReady__9daAlink_cFP10fopAc_ac_c */
void daAlink_c::setSumouReady(fopAc_ac_c* p_actor) {
    mSpecialMode = SMODE_SUMO_READY;
    mCargoCarryActor.setData(p_actor);
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
    return checkUnderMove0BckNoArcWolf(ANM_WOLF_HOWL_SUCCESS);
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