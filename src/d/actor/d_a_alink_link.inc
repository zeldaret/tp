/**
 * d_a_alink_link.inc
 * General Player Human action handling
 */

#include "JSystem/J3DGraphBase/J3DDrawBuffer.h"
#include "d/actor/d_a_alink.h"
#include "d/actor/d_a_canoe.h"
#include "d/actor/d_a_tag_mstop.h"
#include "d/actor/d_a_tag_mhint.h"

/* 800C2DDC-800C2EAC 0BD71C 00D0+00 17/17 0/0 0/0 .text
 * procPreActionUnequipInit__9daAlink_cFiP10fopAc_ac_c          */
int daAlink_c::procPreActionUnequipInit(int i_procAfter, fopAc_ac_c* param_1) {
    commonProcInit(PROC_PREACTION_UNEQUIP);
    mNormalSpeed = 0.0f;
    setBlendMoveAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);
    allUnequip(0);
    mProcVar4.field_0x3010 = 0;

    if (param_1 != NULL) {
        field_0x280c.setData(param_1);
        mProcVar3.field_0x300e = 1;

        if (fopAcM_GetName(param_1) == PROC_Tag_Lv8Gate) {
            if (mEquipItem == KANTERA) {
                mProcVar4.field_0x3010 = 1;
            } else if (checkNoResetFlg2(FLG2_UNK_1)) {
                offKandelaarModel();
            }
        }
    } else {
        mProcVar3.field_0x300e = 0;
    }

    field_0x3198 = i_procAfter;
    return 1;
}

/* 800C2EAC-800C3098 0BD7EC 01EC+00 1/0 0/0 0/0 .text            procPreActionUnequip__9daAlink_cFv
 */
int daAlink_c::procPreActionUnequip() {
    if (checkNoUpperAnime()) {
        if (mProcVar3.field_0x300e != 0 && (field_0x27f4 == NULL || field_0x27f4 != field_0x280c.getActor()))
        {
            checkWaitAction();
        } else if (field_0x3198 == PROC_PUSH_PULL_WAIT) {
            procCoPushPullWaitInit(1);
        } else if (field_0x3198 == PROC_LADDER_DOWN_START) {
            procLadderDownStartInit();
        } else if (field_0x3198 == PROC_LADDER_UP_START) {
            procLadderUpStartInit();
        } else if (field_0x3198 == PROC_GRAB_READY) {
            procGrabReadyInit();
        } else if (field_0x3198 == PROC_GET_ITEM) {
            procCoGetItemInit();
        } else if (field_0x3198 == PROC_GET_READY_SIT) {
            procCoGetReadySitInit();
        } else if (field_0x3198 == PROC_CHAIN_UP) {
            procFmChainUpInit();
        } else if (field_0x3198 == PROC_PICK_UP) {
            procPickUpInit();
        } else if (field_0x3198 == PROC_CRAWL_START) {
            procCrawlStartInit();
        } else if (field_0x3198 == PROC_GRASS_WHISTLE_GET) {
            procGrassWhistleGetInit();
        } else if (field_0x3198 == PROC_GOAT_STROKE) {
            procGoatStrokeInit();
        } else if (field_0x3198 == PROC_HANG_READY) {
            procHangReadyInit();
        } else if (field_0x3198 == PROC_INSECT_CATCH) {
            procInsectCatchInit();
        } else if (field_0x3198 == PROC_GORON_MOVE) {
            procGoronMoveInit();
        } else if (field_0x3198 == PROC_BOTTLE_SWING) {
            procBottleSwingInit(NULL, 0);
        } else if (field_0x3198 == PROC_HANG_LEVER_DOWN) {
            procHangLeverDownInit();
        } else if (field_0x3198 == PROC_PICK_PUT) {
            procPickPutInit(1);
        } else {
            checkNextAction(0);
        }
    } else {
        setBlendMoveAnime(-1.0f);
    }

    return 1;
}

/* 800C3098-800C30F0 0BD9D8 0058+00 1/1 0/0 0/0 .text            procServiceWaitInit__9daAlink_cFv
 */
int daAlink_c::procServiceWaitInit() {
    commonProcInit(PROC_SERVICE_WAIT);
    setSingleAnimeBase(ANM_SERVICE_WAIT);
    mNormalSpeed = 0.0f;
    current.angle.y = shape_angle.y;
    field_0x2f98 = 4;
    return 1;
}

/* 800C30F0-800C3224 0BDA30 0134+00 1/0 0/0 0/0 .text            procServiceWait__9daAlink_cFv */
int daAlink_c::procServiceWait() {
    J3DFrameCtrl* frameCtrl_p = mUnderFrameCtrl;
    if ((!checkNextAction(0) && !checkFrontWallTypeAction()) &&
        (checkEventRun() || checkGuardActionChange() || shape_angle.y != field_0x2fe6))
    {
        frameCtrl_p->setRate(0.0f);
        procWaitInit();
    } else {
        if (frameCtrl_p->checkPass(60.0f)) {
            voiceStart(Z2SE_AL_V_RELAX_A);
        } else if (frameCtrl_p->checkPass(150.0f)) {
            voiceStart(Z2SE_AL_V_RELAX_B);
        } else if (frameCtrl_p->checkPass(190.0f)) {
            voiceStart(Z2SE_AL_V_RELAX_C);
        }
    }
    return 1;
}

/* 800C3224-800C3338 0BDB64 0114+00 2/2 0/0 0/0 .text            procTiredWaitInit__9daAlink_cFv */
int daAlink_c::procTiredWaitInit() {
    BOOL no_upper_anm = checkNoSetUpperAnime();

    if (!commonProcInitNotSameProc(PROC_TIRED_WAIT)) {
        return 0;
    }

    mNormalSpeed = 0.0f;
    BOOL tired_anm = checkUnderMove0BckNoArc(ANM_WAIT_TIRED);

    if (no_upper_anm &&
        ((tired_anm && mNowAnmPackUnder[0].getRatio() < 0.75f) ||
         checkUnderMove1BckNoArc(ANM_STEP_TURN) || checkUnderMove1BckNoArc(ANM_SMALL_GUARD)))
    {
        f32 var_f31;
        if (tired_anm) {
            var_f31 = mUnderFrameCtrl[0].getFrame();
        } else {
            var_f31 = mUpperFrameCtrl[1].getFrame();
        }

        setSingleAnimeBase(ANM_WAIT_TIRED);
        mUnderFrameCtrl[0].setFrame(var_f31);
        getNowAnmPackUnder(UNDER_0)->setFrame(var_f31);
    } else {
        setSingleAnimeBase(ANM_WAIT_TO_TIRED);
    }

    return 1;
}

/* 800C3338-800C33B8 0BDC78 0080+00 1/0 0/0 0/0 .text            procTiredWait__9daAlink_cFv */
int daAlink_c::procTiredWait() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    if (!checkNextAction(0)) {
        if (frameCtrl_p->checkAnmEnd()) {
            setSingleAnimeBase(ANM_WAIT_TIRED);
        } else if (frameCtrl_p->getAttribute() == 2) {
            setTiredVoice(frameCtrl_p);
        }
    }

    return 1;
}

/* 800C33B8-800C3504 0BDCF8 014C+00 26/26 0/0 0/0 .text            procWaitInit__9daAlink_cFv */
int daAlink_c::procWaitInit() {
    if (mProcID == PROC_TURN_BACK) {
        onEndResetFlg0(ERFLG0_UNK_8000000);
    }

    if (mProcID == PROC_WAIT) {
        return 0;
    }

    if (!checkEventRun() && mProcID == PROC_SERVICE_WAIT && !mUnderFrameCtrl[0].checkAnmEnd() &&
        checkNoUpperAnime())
    {
        return 0;
    }

    BOOL var_r30;
    if (mProcID == PROC_GUARD_ATTACK || mProcID == PROC_CUT_REVERSE) {
        var_r30 = false;
    } else {
        var_r30 = true;
    }

    commonProcInit(PROC_WAIT);
    mNormalSpeed = 0.0f;
    setBlendMoveAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);
    current.angle.y = shape_angle.y;

    if (var_r30) {
        field_0x2f98 = 4;
    }

    initServiceWaitTime();

    if (checkEndResetFlg0(ERFLG0_UNK_8000000) &&
        (checkUnderMove0BckNoArc(ANM_WAIT) || checkUnderMove0BckNoArc(ANM_WAIT_TIRED)))
    {
        setSingleAnimeBase(ANM_WAIT_B_TO_A);
    }

    return 1;
}

/* 800C3504-800C36CC 0BDE44 01C8+00 1/0 0/0 0/0 .text            procWait__9daAlink_cFv */
int daAlink_c::procWait() {
    BOOL anm_wait_b = checkUnderMove0BckNoArc(ANM_WAIT_B);

    if (!checkNextAction(0) && !checkFrontWallTypeAction()) {
        daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;
        field_0x33f0 = (s16)(shape_angle.y - field_0x2fe6) * 0.005f;

        if (frameCtrl_p->checkAnmEnd() || checkUpperGuardAnime() ||
            !checkUnderMove0BckNoArc(ANM_WAIT_B_TO_A))
        {
            if (checkRestHPAnime() && shape_angle.y == field_0x2fe6) {
                return procTiredWaitInit();
            }

            setBlendMoveAnime(-1.0f);
            if (anm_wait_b && !checkUnderMove0BckNoArc(ANM_WAIT_B)) {
                setSingleAnimeBase(ANM_WAIT_B_TO_A);
            }
        } else if (frameCtrl_p->checkPass(30.0f)) {
            field_0x2f92 = 4;
            field_0x2f93 = 10;
        }

        if (checkServiceWaitMode() && checkUnderMove0BckNoArc(ANM_WAIT)) {
            if (field_0x30ca != 0) {
                field_0x30ca--;
            }

            if (field_0x30ca == 0 && frameCtrl_p->checkPass(0.0f)) {
                procServiceWaitInit();
            }
        } else {
            initServiceWaitTime();
        }
    }

    return 1;
}

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
int daAlink_c::procMove() {
    setFootEffectProcType(3);
    if (!checkNextAction(0) && !checkFrontWallTypeAction()) {
        if (mDemo.getDemoMode() == 2 &&
            mNormalSpeed > field_0x594 * daAlinkHIO_move_c0::m.mWalkChangeRate)
        {
            mNormalSpeed = field_0x594 * daAlinkHIO_move_c0::m.mWalkChangeRate;
        }

        setBlendMoveAnime(-1.0f);
        if (field_0x3174 != 8) {
            field_0x30a0 =
                cLib_minMaxLimit2((s16)(field_0x2ff0 >> 1), daAlinkHIO_basic_c0::m.mNeckMaxUp,
                                 daAlinkHIO_basic_c0::m.mNeckMaxDown);
        }
    }

    return 1;
}

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
            setBlendAtnMoveAnime(-1.0f);
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

    mNormalSpeed = 0.0f;
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
            setBlendAtnMoveAnime(-1.0f);
        } else {
            setBlendMoveAnime(-1.0f);
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
        setBlendAtnMoveAnime(-1.0f);
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
        mNormalSpeed = 0.0f;
    }

    mProcVar3.field_0x300e = field_0x2fe2;
    current.angle.y = shape_angle.y;
    return 1;
}

/* 800C3B1C-800C3C3C 0BE45C 0120+00 1/0 0/0 0/0 .text            procWaitTurn__9daAlink_cFv */
int daAlink_c::procWaitTurn() {
    cLib_chaseF(&mNormalSpeed, 0.0f, daAlinkHIO_move_c0::m.mDeceleration);

    if (checkGroundSpecialMode()) {
        return 1;
    } else if (checkEndResetFlg0(ERFLG0_UNK_100000)) {
        return procFloorDownReboundInit();
    } else {
        s16 angle = cLib_addCalcAngleS(&shape_angle.y, mProcVar3.field_0x300e, 30, 0x3CDF, 8000);
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
        mProcVar3.field_0x300e = (daAlinkHIO_move_c0::m.mMaxTurnAngle * 4) + 19030;
        mProcVar4.field_0x3010 = daAlinkHIO_move_c0::m.mMaxTurnAngle * 2;
        mProcVar1.field_0x300a = 2;
        current.angle.y = field_0x2fe2;
        mNormalSpeed *= 0.5f;
    } else {
        mProcVar3.field_0x300e = daAlinkHIO_move_c0::m.mMaxTurnAngle * 2;
        mProcVar4.field_0x3010 = daAlinkHIO_move_c0::m.mMaxTurnAngle;
        mProcVar1.field_0x300a = 3;
    }

    mProcVar3.field_0x300e = daAlinkHIO_move_c0::m.mMaxTurnAngle * 2;
    mProcVar4.field_0x3010 = daAlinkHIO_move_c0::m.mMaxTurnAngle;
    return 1;
}

/* 800C3D38-800C3DA0 0BE678 0068+00 1/0 0/0 0/0 .text            procMoveTurn__9daAlink_cFv */
int daAlink_c::procMoveTurn() {
    setSpeedAndAngleNormal();
    cLib_addCalcAngleS(&shape_angle.y, current.angle.y, mProcVar1.field_0x300a, mProcVar3.field_0x300e, mProcVar4.field_0x3010);

    if (!checkNextAction(0)) {
        setBlendMoveAnime(-1.0f);
    }

    return 1;
}

/* 800C3DA0-800C3F60 0BE6E0 01C0+00 2/2 0/0 0/0 .text            procSideStepInit__9daAlink_cFi */
int daAlink_c::procSideStepInit(int jump_type) {
    if (jump_type == 1 && !checkHeavyStateOn(1, 1) &&
        (checkNoUpperAnime() || checkEquipAnime() || field_0x2fcc != 0 && checkUpperGuardAnime()))
    {
        return procBackJumpInit(0);
    }

    commonProcInit(PROC_SIDESTEP);
    field_0x2f98 = jump_type;

    if (field_0x2f98 == 1) {
        current.angle.y = shape_angle.y + 0x8000;
        setSingleAnimeParam(ANM_BACK_JUMP, &daAlinkHIO_sideStep_c0::m.mBackJumpAnm);
        mNormalSpeed = daAlinkHIO_sideStep_c0::m.mBackJumpSpeedH;
        speed.y = daAlinkHIO_sideStep_c0::m.mBackJumpSpeedV;
        mProcVar1.field_0x300a = 0;
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
        speed.y = daAlinkHIO_sideStep_c0::m.mSideJumpSpeedV;
        mProcVar1.field_0x300a = 1;
    }

    if (checkNoResetFlg0(FLG0_UNDERWATER)) {
        mNormalSpeed *= daAlinkHIO_magneBoots_c0::m.mWaterVelocityX;
        speed.y *= daAlinkHIO_magneBoots_c0::m.mWaterVelocityY;
    }

    voiceStart(Z2SE_AL_V_JUMP_S);
    mProcVar2.field_0x300c = 0;
    mProcVar3.field_0x300e = 0;
    return 1;
}

/* 800C3F60-800C40F0 0BE8A0 0190+00 1/0 0/0 0/0 .text            procSideStep__9daAlink_cFv */
int daAlink_c::procSideStep() {
    if (mTargetedActor != NULL && mProcVar1.field_0x300a != 0) {
        s16 actor_angle = fopAcM_searchActorAngleY(this, mTargetedActor);
        cLib_addCalcAngleS(&shape_angle.y, actor_angle, 5, 0x5E8, 0x13C);

        if (field_0x2f98 == 2) {
            current.angle.y = shape_angle.y + 0x4000;
        } else {
            current.angle.y = shape_angle.y - 0x4000;
        }
    }

    if (doTrigger() && mProcVar1.field_0x300a != 0) {
        mProcVar2.field_0x300c = 1;
    }

    if (checkUpperItemActionFly()) {
        return 1;
    } else if (mLinkAcch.ChkGroundHit() && mProcVar3.field_0x300e != 0) {
        if (mProcVar2.field_0x300c != 0 && checkSideRollAction(field_0x2f98)) {
            return 1;
        } else {
            return procSideStepLandInit();
        }
    } else if (checkNoUpperAnime() && checkForceSwordSwing()) {
        setCutDash(1, 0);
    } else if (mDemo.getDemoMode() != 16 &&
               current.pos.y < mLastJumpPos.y - daAlinkHIO_sideStep_c0::m.mFallHeight)
    {
        return procFallInit(2, daAlinkHIO_sideStep_c0::m.mFallInterpolation);
    }

    mProcVar3.field_0x300e = 1;
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
        field_0x3478 = daAlinkHIO_sideStep_c0::m.mBackLandAnm.mCheckFrame;
        field_0x2f98 = 2;
        mProcVar1.field_0x300a = 0;
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
        field_0x3478 = daAlinkHIO_sideStep_c0::m.mSideLandAnm.mCheckFrame;
        mProcVar1.field_0x300a = 1;
        field_0x2fb0 = 8;
        field_0x2fcc = 0;

        if (checkEnemyGroup(mTargetedActor) && mEquipItem == EQUIP_SWORD && checkNoUpperAnime()) {
            setUpperAnimeBaseSpeed(uvar3, daAlinkHIO_atnMove_c0::m.mWaitAnmSpeed, -1.0f);
            seStartSwordCut(Z2SE_AL_WAIT_SWORD_SWING);
        }
    }

    field_0x2f9d = 4;
    setFootEffectProcType(2);
    onResetFlg1(RFLG1_UNK_30);
    mNormalSpeed = 0.0f;
    mProcVar2.field_0x300c = 0;
    current.angle.y = shape_angle.y;
    setStepLandVibration();
    return 1;
}

/* 800C4278-800C4378 0BEBB8 0100+00 1/0 0/0 0/0 .text            procSideStepLand__9daAlink_cFv */
int daAlink_c::procSideStepLand() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;
    onEndResetFlg0(ERFLG0_UNK_8000000);

    if (field_0x2fcc != 0) {
        field_0x2fcc = 10;
    }

    if (doTrigger() && mProcVar1.field_0x300a != 0) {
        mProcVar2.field_0x300c = 1;
    }

    if (frameCtrl_p->checkAnmEnd()) {
        if (mDemo.getDemoMode() == 16) {
            dComIfGp_evmng_cutEnd(field_0x3184);
        } else {
            checkNextAction(0);
        }
    } else if (frameCtrl_p->getFrame() > field_0x3478) {
        if (mProcVar2.field_0x300c != 0 && checkSideRollAction(field_0x2f98)) {
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

    if (getMoveBGActorName(mLinkAcch.m_gnd, FALSE) == PROC_Obj_Lv3R10Saka) {
        mProcVar3.field_0x300e = 1;
    } else {
        mProcVar3.field_0x300e = 0;
    }

    if (cLib_distanceAngleS(param_0, shape_angle.y) < 0x3800 || mProcVar3.field_0x300e != 0) {
        field_0x3198 = 1;
        setSingleAnimeParam(ANM_SLIDE_FORWARD, &daAlinkHIO_slide_c0::m.mForwardSlideAnm);
        dComIfGp_setPlayerStatus1(0, 0x100);
        onModeFlg(MODE_UNK_8000);
        onModeFlg(MODE_UNK_2000000);
        onModeFlg(MODE_UNK_20000000);
        mNormalSpeed = 0.0f;
        field_0x2f9d = 4;
        setUpperAnimeBaseMorf(0xCE, -1.0f);
        onNoResetFlg1(FLG1_UNK_10000000);
        setFootEffectProcType(0);
    } else {
        field_0x3198 = 0;
        setSingleAnimeParam(ANM_SLIDE_BACKWARD, &daAlinkHIO_slide_c0::m.mBackwardSlideAnm);
        dComIfGp_setPlayerStatus1(0, 0x200);
        field_0x2f9d = 0x60;
        setFootEffectProcType(1);
    }

    field_0x594 = daAlinkHIO_slide_c0::m.mMaxSpeed;
    field_0x33cc = 0.0f;
    mProcVar2.field_0x300c = 0;
    mProcVar4.field_0x3010 = 0;
    return 1;
}

/* 800C4514-800C47AC 0BEE54 0298+00 1/0 0/0 0/0 .text            procSlide__9daAlink_cFv */
int daAlink_c::procSlide() {
    cM3dGPla slide_poly;

    if (getSlidePolygon(&slide_poly)) {
        s16 angleY = slide_poly.mNormal.atan2sX_Z();
        if (field_0x3198 != 0) {
            f32 sin = field_0x33a8 * cM_ssin(field_0x2fe2 - shape_angle.y);

            if (checkInputOnR()) {
                mProcVar2.field_0x300c =
                    cLib_minMaxLimit2<s16>((s16)(mProcVar2.field_0x300c + sin * 256.0f), -0x1000, 0x1000);
            } else {
                cLib_chaseS(&mProcVar2.field_0x300c, 0, 64);
            }

            angleY += mProcVar2.field_0x300c;
            cLib_addCalcAngleS(&mProcVar4.field_0x3010, sin * -4096.0f, 3, 300, 50);
        }

        cLib_addCalcAngleS(&current.angle.y, angleY, 4, 0x1000, 0x400);

        s16 shape_angleY;
        if (field_0x3198 != 0) {
            shape_angleY = current.angle.y;
            field_0x2f9d = 4;
        } else {
            shape_angleY = current.angle.y + 0x8000;
            field_0x2f9d = 0x60;
        }

        cLib_addCalcAngleS(&shape_angle.y, shape_angleY, 4, 0x1000, 0x400);

        if (field_0x3198 == 0 || mUnderFrameCtrl[0].getFrame() > 6.0f) {
            f32 accel = daAlinkHIO_slide_c0::m.mAcceleration;
            f32 var_f6 = field_0x594;

            if (checkNoResetFlg0(FLG0_UNDERWATER)) {
                accel *= 0.3f;
                var_f6 *= 0.3f;
            }

            mNormalSpeed += accel * ((1.0f - slide_poly.mNormal.y) * 0.5f + 1.0f) *
                            cM_scos(current.angle.y - angleY);
            if (mNormalSpeed > var_f6) {
                mNormalSpeed = var_f6;
            }

            if (field_0x3198 != 0) {
                field_0x33cc = 1.0f;
                onModeFlg(0x20000000);
            }

            seStartMapInfoLevel(Z2SE_FN_LINK_SLIP);
        }
    } else {
        procSlideLandInit(field_0x3198);
    }

    return 1;
}

/* 800C47AC-800C4894 0BF0EC 00E8+00 1/1 0/0 0/0 .text            procSlideLandInit__9daAlink_cFi */
int daAlink_c::procSlideLandInit(int param_0) {
    commonProcInit(PROC_SLIDE_LAND);

    if (param_0 != 0) {
        setSingleAnimeParam(ANM_SLIDE_FORWARD_END, &daAlinkHIO_slide_c0::m.mForwardLandAnm);
        field_0x3478 = daAlinkHIO_slide_c0::m.mForwardLandAnm.mCheckFrame;
        field_0x3198 = 1;
        field_0x2f99 = 4;
        field_0x3588 = l_waitBaseAnime;
    } else {
        setSingleAnimeParam(ANM_SLIDE_BACKWARD_END, &daAlinkHIO_slide_c0::m.mBackwardLandAnm);
        field_0x3478 = daAlinkHIO_slide_c0::m.mBackwardLandAnm.mCheckFrame;
        field_0x3198 = 0;
    }

    field_0x814.SetWeight(255);
    mNormalSpeed *= 0.5f;
    return 1;
}

/* 800C4894-800C494C 0BF1D4 00B8+00 1/0 0/0 0/0 .text            procSlideLand__9daAlink_cFv */
int daAlink_c::procSlideLand() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;

    cLib_chaseF(&mNormalSpeed, 0.0f, 4.0f);
    if (field_0x3198 != 0) {
        field_0x2f99 = 4;
    }

    if (frameCtrl_p->checkAnmEnd()) {
        current.angle.y = shape_angle.y;
        checkNextAction(0);
    } else if (frameCtrl_p->getFrame() > field_0x3478) {
        s16 tmp_angle = current.angle.y;
        current.angle.y = shape_angle.y;

        if (!checkNextAction(1)) {
            current.angle.y = tmp_angle;
        }
    }

    return 1;
}

/* 800C494C-800C4B40 0BF28C 01F4+00 4/3 0/0 0/0 .text            procFrontRollInit__9daAlink_cFv */
int daAlink_c::procFrontRollInit() {
    BOOL is_guard_anime = checkUpperGuardAnime();

    if (mProcID == PROC_FRONT_ROLL && mDemo.getDemoMode() == 0x28) {
        return 0;
    }

    BOOL is_dive_jump = mProcID == PROC_DIVE_JUMP;
    commonProcInit(PROC_FRONT_ROLL);

    f32 roll_anm_speed = is_dive_jump ? 6.0f : daAlinkHIO_frontRoll_c0::m.mRollAnm.mStartFrame;

    setSingleAnime(ANM_FRONT_ROLL, daAlinkHIO_frontRoll_c0::m.mRollAnm.mSpeed, roll_anm_speed,
                   daAlinkHIO_frontRoll_c0::m.mRollAnm.mEndFrame,
                   daAlinkHIO_frontRoll_c0::m.mRollAnm.mInterpolation);

    mNormalSpeed =
        speedF * daAlinkHIO_frontRoll_c0::m.mSpeedRate + daAlinkHIO_frontRoll_c0::m.mInitSpeed;

    f32 var_f30 = daAlinkHIO_frontRoll_c0::m.mInitSpeed + daAlinkHIO_move_c0::m.mMaxSpeed * daAlinkHIO_frontRoll_c0::m.mSpeedRate;
    if (mNormalSpeed > var_f30) {
        mNormalSpeed = var_f30;
    }

    if (mNormalSpeed < daAlinkHIO_frontRoll_c0::m.mMinSpeed) {
        mNormalSpeed = daAlinkHIO_frontRoll_c0::m.mMinSpeed;
    }

    if (checkNoResetFlg0(FLG0_UNDERWATER)) {
        mNormalSpeed *= daAlinkHIO_magneBoots_c0::m.mWaterVelocityX;
    } else if (checkHeavyStateOn(1, 1)) {
        mNormalSpeed *= mHeavySpeedMultiplier;
    }

    current.angle.y = shape_angle.y;
    voiceStart(Z2SE_AL_V_BACKTEN);
    mProcVar2.field_0x300c = 0;
    setFootEffectProcType(0);

    if (is_guard_anime) {
        onNoResetFlg0(FLG0_UNK_2);
    }

    if (checkEquipHeavyBoots()) {
        field_0xFB8.SetAtType(AT_TYPE_HEAVY_BOOTS);
        field_0xFB8.SetAtHitMark(1);
        field_0xFB8.SetAtSe(9);
        field_0xFB8.SetAtAtp(2);
        field_0xFB8.SetAtMtrl(dCcD_MTRL_NONE);
        field_0xFB8.ResetAtHit();
        field_0xFB8.SetR(daAlinkHIO_frontRoll_c0::m.mBootsAttackRadius);
        field_0xFB8.OnAtSetBit();
    }

    return 1;
}

/* 800C4B40-800C4F14 0BF480 03D4+00 1/0 0/0 0/0 .text            procFrontRoll__9daAlink_cFv */
int daAlink_c::procFrontRoll() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;
    onEndResetFlg0(ERFLG0_UNK_8000000);

    cM3dGPla poly;
    if (getSlidePolygon(&poly)) {
        cLib_chaseF(&mNormalSpeed, 0.0f, 2.5f);
    }

    if (checkInputOnR()) {
        cLib_addCalcAngleS(&current.angle.y, field_0x2fe2, daAlinkHIO_frontRoll_c0::m.mTurnRate,
                           daAlinkHIO_frontRoll_c0::m.mTurnMaxAngle,
                           daAlinkHIO_frontRoll_c0::m.mTurnMinAngle);
        shape_angle.y = current.angle.y;
    }

    if (checkNoResetFlg0(FLG0_UNK_2)) {
        setUpperGuardAnime(-1.0f);
    }

    if (frameCtrl_p->checkAnmEnd()) {
        if (mDemo.getDemoMode() == 0x28) {
            dComIfGp_evmng_cutEnd(field_0x3184);
        } else {
            if (!checkInputOnR()) {
                mNormalSpeed -= daAlinkHIO_frontRoll_c0::m.mMinSpeed;
                if (mNormalSpeed < 0.0f) {
                    mNormalSpeed = 0.0f;
                }
            }

            checkNextAction(0);
        }
    } else if (frameCtrl_p->getFrame() > daAlinkHIO_frontRoll_c0::m.mRollAnm.mCheckFrame) {
        onModeFlg(4);
        cLib_chaseF(&mNormalSpeed, 0.0f, 2.5f);

        if (checkZeroSpeedF()) {
            onModeFlg(1);
        }

        if (mProcVar2.field_0x300c != 0) {
            procCutFinishInit(2);
        } else if (!checkNextAction(1)) {
            cLib_chaseF(&mNormalSpeed, 0.0f, 2.5f);
        }
    } else if (mDemo.getDemoMode() != 0x28 &&
               speedF >= daAlinkHIO_frontRoll_c0::m.mCrashSpeedThreshold &&
               (checkNoResetFlg0(FLG0_UNK_18) ||
                (mAcchCir[0].ChkWallHit() &&
                 !dComIfG_Bgsp().GetPolyAttackThrough(mAcchCir[0])) &&
                    dComIfG_Bgsp().GetWallCode(mAcchCir[0]) != 7 &&
                    cLib_distanceAngleS(current.angle.y + 0x8000,
                                        mAcchCir[0].GetWallAngleY()) <=
                        daAlinkHIO_frontRoll_c0::m.mCrashAngleThreshold &&
                    frameCtrl_p->getFrame() >= daAlinkHIO_frontRoll_c0::m.mCrashInitF &&
                    frameCtrl_p->getFrame() <= daAlinkHIO_frontRoll_c0::m.mCrashEndF))
    {
        if (!checkNoResetFlg0(FLG0_UNK_18)) {
            mRollCrashFlg = dKy_pol_sound_get(&mAcchCir[0]);
        }

        if (checkNoResetFlg0(FLG0_UNK_10) ||
            (mLinkAcch.ChkWallHit() && mAcchCir[0].ChkWallHit() &&
             (getMoveBGActorName(mAcchCir[0], FALSE) == PROC_Obj_Pillar ||
              getMoveBGActorName(mAcchCir[0], FALSE) == PROC_Obj_TaFence)))
        {
            procFrontRollSuccessInit();
        } else {
            procFrontRollCrashInit();
        }
    } else {
        if (frameCtrl_p->checkPass(21.0f)) {
            dComIfGp_getVibration().StartShock(1, 1, cXyz(0.0f, 1.0f, 0.0f));
        }

        if (checkForceSwordSwing()) {
            mProcVar2.field_0x300c = 1;
        }

        if (frameCtrl_p->getFrame() > 16.0f) {
            if (frameCtrl_p->getFrame() >= 18.0f) {
                field_0x2f92 = 1;
                field_0x2f93 = 6;
            }

            cLib_chaseF(&mNormalSpeed, 0.0f, 1.0f);
        } else if (frameCtrl_p->getFrame() > 6.0f) {
            field_0x2f9d = 4;
        }
    }

    return 1;
}

/* 800C4F14-800C4FFC 0BF854 00E8+00 1/1 0/0 0/0 .text procFrontRollCrashInit__9daAlink_cFv */
int daAlink_c::procFrontRollCrashInit() {
    commonProcInit(PROC_FRONT_ROLL_CRASH);
    setSingleAnime(ANM_ROLL_CRASH, 0.0f,
                   daAlinkHIO_frontRoll_c0::m.mCrashAnm.mStartFrame,
                   daAlinkHIO_frontRoll_c0::m.mCrashAnm.mEndFrame,
                   daAlinkHIO_frontRoll_c0::m.mCrashAnm.mInterpolation);

    mNormalSpeed = daAlinkHIO_frontRoll_c0::m.mCrashSpeedH;
    speed.y = daAlinkHIO_frontRoll_c0::m.mCrashSpeedV;

    if (checkNoResetFlg0(FLG0_UNDERWATER)) {
        mNormalSpeed *= daAlinkHIO_magneBoots_c0::m.mWaterVelocityX;
        speed.y *= daAlinkHIO_magneBoots_c0::m.mWaterVelocityY;
    }

    current.angle.y -= -0x8000;
    setFrontRollCrashShock(mRollCrashFlg);
    voiceStart(Z2SE_AL_V_ZENTEN_FAIL);
    onResetFlg0(RFLG0_FRONT_ROLL_CRASH);

    return 1;
}

/* 800C4FFC-800C5160 0BF93C 0164+00 1/0 0/0 0/0 .text            procFrontRollCrash__9daAlink_cFv */
int daAlink_c::procFrontRollCrash() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (!checkModeFlg(2)) {
        if (frameCtrl->checkAnmEnd()) {
            checkNextAction(0);
        } else if (frameCtrl->getFrame() > daAlinkHIO_frontRoll_c0::m.mCrashAnm.mCheckFrame) {
            onModeFlg(4);
            checkNextAction(1);
        } else if (frameCtrl->getFrame() >= 18.0f) {
            field_0x2f92 = 4;
        } else if (frameCtrl->getFrame() >= 14.0f) {
            field_0x2f93 = 10;
        }
    } else if ((mLinkAcch.ChkGroundHit() || checkEndResetFlg2(ERFLG2_UNK_100) ||
                checkMagneBootsOn()) &&
               checkModeFlg(2))
    {
        mNormalSpeed = 0.0f;
        setWaterInAnmRate(frameCtrl, daAlinkHIO_frontRoll_c0::m.mCrashAnm.mSpeed);
        frameCtrl->offEndFlg();
        current.angle.y = shape_angle.y;
        voiceStart(Z2SE_AL_V_ZENTEN_FAIL_2);
        offModeFlg(2);
        onModeFlg(0x8001);
    }

    return 1;
}

/* 800C5160-800C5240 0BFAA0 00E0+00 3/3 0/0 0/0 .text procFrontRollSuccessInit__9daAlink_cFv */
int daAlink_c::procFrontRollSuccessInit() {
    BOOL dk_caught = mProcID == PROC_DK_CAUGHT;

    commonProcInit(PROC_FRONT_ROLL_SUCCESS);
    setSingleAnimeParam(ANM_BARRIER_RECOIL, &daAlinkHIO_frontRoll_c0::m.mCrashHitAnm);
    mNormalSpeed = 0.0f;

    if (!dk_caught) {
        setFrontRollCrashShock(mRollCrashFlg);
        onResetFlg0(RFLG0_FRONT_ROLL_CRASH);
    } else {
        f32 tmp_3 = 3.0f;
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
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    field_0x2f99 = 4;
    onEndResetFlg0(ERFLG0_UNK_8000000);

    if (frameCtrl->checkAnmEnd()) {
        current.angle.y = shape_angle.y;
        checkNextAction(0);
    } else if (frameCtrl->getFrame() > daAlinkHIO_frontRoll_c0::m.mCrashHitAnm.mCheckFrame) {
        onModeFlg(4);
        current.angle.y = shape_angle.y;
        checkNextAction(1);
    } else if (frameCtrl->getFrame() >= 14.0f) {
        field_0x2f92 = 1;
        field_0x2f93 = 6;
    } else if (frameCtrl->getFrame() > 9.0f) {
        field_0x2f9d = 0x60;
    }

    return 1;
}

/* 800C5328-800C5484 0BFC68 015C+00 3/3 0/0 0/0 .text            procSideRollInit__9daAlink_cFi */
int daAlink_c::procSideRollInit(int param_0) {
    BOOL guard_anime = checkUpperGuardAnime();

    if (!commonProcInitNotSameProc(PROC_SIDE_ROLL)) {
        return 0;
    }

    field_0x2f98 = param_0;

    daAlink_ANM anmID;
    if (field_0x2f98 == 2) {
        anmID = ANM_SIDE_ROLL_LEFT;
        current.angle.y = shape_angle.y + 0x4000;
    } else {
        anmID = ANM_SIDE_ROLL_RIGHT;
        current.angle.y = shape_angle.y + -0x4000;
    }

    setSingleAnime(anmID, daAlinkHIO_turnMove_c0::m.mSideRollAnmSpeed,
                   daAlinkHIO_turnMove_c0::m.mTurnAnm.mStartFrame,
                   daAlinkHIO_turnMove_c0::m.mTurnAnm.mEndFrame,
                   daAlinkHIO_turnMove_c0::m.mTurnAnm.mInterpolation);
    mNormalSpeed = daAlinkHIO_turnMove_c0::m.mSideRollSpeed;

    if (checkNoResetFlg0(FLG0_UNDERWATER)) {
        mNormalSpeed *= daAlinkHIO_magneBoots_c0::m.mWaterVelocityX;
    } else if (checkHeavyStateOn(1, 1)) {
        mNormalSpeed *= mHeavySpeedMultiplier;
    }

    setFootEffectProcType(0);
    field_0x2f9d = 4;
    voiceStart(Z2SE_AL_V_SOTOMO_ROLL);

    if (guard_anime) {
        onNoResetFlg0(FLG0_UNK_2);
    }
    mProcVar2.field_0x300c = 0;

    return 1;
}

/* 800C5484-800C5700 0BFDC4 027C+00 1/0 0/0 0/0 .text            procSideRoll__9daAlink_cFv */
int daAlink_c::procSideRoll() {
    onEndResetFlg0(ERFLG0_UNK_8000000);
    if (mTargetedActor != NULL) {
        s16 actor_angle = fopAcM_searchActorAngleY(this, mTargetedActor);
        cLib_addCalcAngleS(&shape_angle.y, actor_angle, 5, 0x5E8, 0x13C);

        if (field_0x2f98 == 2) {
            current.angle.y = shape_angle.y + 0x4000;
        } else {
            current.angle.y = shape_angle.y - 0x4000;
        }
    }

    mProcVar2.field_0x300c |= checkCutFinishJumpUp();

    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;
    cM3dGPla poly;

    if (getSlidePolygon(&poly)) {
        cLib_chaseF(&mNormalSpeed, 0.0f, 2.5f);
    }

    if (checkNoResetFlg0(FLG0_UNK_2)) {
        setUpperGuardAnime(-1.0f);
    }

    if (frameCtrl_p->checkAnmEnd()) {
        if (mDemo.getDemoMode() == 0x49) {
            dComIfGp_evmng_cutEnd(field_0x3184);
        } else {
            if (!checkAttentionLock()) {
                offNoResetFlg2(FLG2_UNK_8000000);
            }

            checkNextAction(0);
        }
    } else if (mProcVar2.field_0x300c != 0 && !checkNotJumpSinkLimit() &&
               frameCtrl_p->getFrame() > daAlinkHIO_turnMove_c0::m.mTurnAnm.mCheckFrame)
    {
        procCutFinishJumpUpInit();
    } else if (frameCtrl_p->getFrame() > daAlinkHIO_turnMove_c0::m.mTurnAnm.mCheckFrame) {
        onModeFlg(4);
        if (!checkNextAction(1)) {
            cLib_chaseF(&mNormalSpeed, 0.0f, 7.5f);
        }
    } else {
        if (frameCtrl_p->checkPass(19.0f)) {
            dComIfGp_getVibration().StartShock(1, 1, cXyz(0.0f, 1.0f, 0.0f));
        }

        if (frameCtrl_p->getFrame() < 18.0f) {
            field_0x2f9d = 4;
        } else {
            cLib_chaseF(&mNormalSpeed, 0.0f, 0.5f);
        }
    }

    return 1;
}

/* 800C5700-800C57A4 0C0040 00A4+00 2/2 0/0 0/0 .text            backJumpSpeedDec__9daAlink_cFv */
void daAlink_c::backJumpSpeedDec() {
    if (mLinkAcch.ChkGroundHit()) {
        if (dComIfG_Bgsp().ChkPolySafe(mLinkAcch.m_gnd)) {
            f32 jump_speed;
            if (dBgS_CheckBWallPoly(mLinkAcch.m_gnd)) {
                jump_speed = 0.0f;
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
int daAlink_c::procBackJumpInit(int param_0) {
    u32 horse_ride = checkHorseRide();
    BOOL guard_anime = checkUpperGuardAnime();
    BOOL ganon_finish = mProcID == PROC_GANON_FINISH;

    commonProcInit(PROC_BACK_JUMP);

    if (param_0) {
        setSingleAnimeParam(ANM_BACKFLIP, &daAlinkHIO_cutDown_c0::m.mRecoverAnm);
        mNormalSpeed = daAlinkHIO_cutDown_c0::m.mRecoverSpeedV;
        speed.y = daAlinkHIO_cutDown_c0::m.mSpeedV;
        voiceStart(Z2SE_AL_V_TODOME_RETURN);
    } else {
        setSingleAnimeParam(ANM_BACKFLIP, &daAlinkHIO_backJump_c0::m.mBackflipAnm);
        mNormalSpeed = daAlinkHIO_backJump_c0::m.mBackflipSpeedH;
        speed.y = daAlinkHIO_backJump_c0::m.mBackflipSpeedV;
        voiceStart(Z2SE_AL_V_BACKTEN);
    }

    field_0x3478 = mNormalSpeed;

    if (horse_ride) {
        onModeFlg(0x2000);
        mProcVar0.field_0x3008 = 5;
    } else {
        mProcVar0.field_0x3008 = 0;
    }

    if (ganon_finish) {
        shape_angle.y -= -0x8000;
        setOldRootQuaternion(0, -0x8000, 0);
        field_0x2060->getOldFrameTransInfo(0)->mTranslate.z += 55.0f;
        onNoResetFlg3(FLG3_UNK_4000000);
    }

    current.angle.y = shape_angle.y - -0x8000;
    field_0x3198 = 2;

    if (guard_anime) {
        onNoResetFlg0(FLG0_UNK_2);
    }

    return 1;
}

/* 800C5964-800C5A54 0C02A4 00F0+00 1/0 0/0 0/0 .text            procBackJump__9daAlink_cFv */
int daAlink_c::procBackJump() {
    if (mProcVar0.field_0x3008 != 0) {
        mProcVar0.field_0x3008--;
    } else {
        offModeFlg(0x2000);
    }

    if (checkCutTurnInput() && mEquipItem == EQUIP_SWORD) {
        field_0x3198 = getCutTurnDirection();
    }

    backJumpSpeedDec();

    if (mLinkAcch.ChkGroundHit() && mUnderFrameCtrl[0].checkAnmEnd()) {
        procBackJumpLandInit(field_0x3198);
    } else if (mDemo.getDemoMode() != 0x10 &&
               current.pos.y < mLastJumpPos.y - daAlinkHIO_backJump_c0::m.mFallHeight)
    {
        procFallInit(2, daAlinkHIO_backJump_c0::m.mFallInterpolation);
    }

    checkItemChangeFromButton();
    return 1;
}

/* 800C5A54-800C5AF0 0C0394 009C+00 1/1 0/0 0/0 .text            procBackJumpLandInit__9daAlink_cFi
 */
int daAlink_c::procBackJumpLandInit(int i_cutDirection) {
    commonProcInit(PROC_BACK_JUMP_LAND);
    setSingleAnimeParam(ANM_BACKFLIP_LAND, &daAlinkHIO_backJump_c0::m.mLandAnm);
    mNormalSpeed = 0.0f;

    field_0x2f9d = 4;
    setFootEffectProcType(2);
    onResetFlg1(RFLG1_UNK_30);

    field_0x3198 = i_cutDirection;
    current.angle.y = shape_angle.y;
    field_0x2fcc = 10;
    setStepLandVibration();

    return 1;
}

/* 800C5AF0-800C5C28 0C0430 0138+00 1/0 0/0 0/0 .text            procBackJumpLand__9daAlink_cFv */
int daAlink_c::procBackJumpLand() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (field_0x2fcc != 0) {
        field_0x2fcc = 10;
    }

    onEndResetFlg0(ERFLG0_UNK_8000000);

    if (frameCtrl->checkAnmEnd()) {
        if (mDemo.getDemoMode() == 0x10) {
            dComIfGp_getPEvtManager()->cutEnd(field_0x3184);
        } else {
            if (!checkAttentionLock()) {
                offNoResetFlg2(FLG2_UNK_8000000);
            }
            checkNextAction(0);
        }
    } else if (frameCtrl->getFrame() > daAlinkHIO_backJump_c0::m.mLandAnm.mCheckFrame) {
        if (mEquipItem == EQUIP_SWORD && (field_0x3198 != 2 || checkCutTurnInput())) {
            return procCutTurnInit(1, field_0x3198);
        }

        checkNextAction(1);
    }

    return 1;
}

/* 800C5C28-800C5CA4 0C0568 007C+00 1/1 0/0 0/0 .text            procSlipInit__9daAlink_cFv */
int daAlink_c::procSlipInit() {
    commonProcInit(PROC_SLIP);
    setSingleAnimeParam(ANM_SLIP, &daAlinkHIO_move_c0::m.mSlideAnm);
    mNormalSpeed = speedF * daAlinkHIO_move_c0::m.mSlideSpeed;

    field_0x2f9d = 0x40;
    setFootEffectProcType(1);
    mProcVar0.field_0x3008 = 5;

    return 1;
}

/* 800C5CA4-800C5E68 0C05E4 01C4+00 1/0 0/0 0/0 .text            procSlip__9daAlink_cFv */
int daAlink_c::procSlip() {
    cLib_chaseF(&mNormalSpeed, 0.0f, daAlinkHIO_move_c0::m.mSlideDeceleration);

    if (checkZeroSpeedF()) {
        if (checkInputOnR()) {
            current.angle.y = shape_angle.y + 0x8000;
            shape_angle.y += 0x100;
            mNormalSpeed = field_0x594 * 0.5f;
            procMoveTurnInit(0);
        } else {
            checkNextAction(0);
        }
    } else {
        cXyz sp14;
        cXyz sp8;
        mProcVar0.field_0x3008--;

        if (mLinkAcch.ChkWallHit() || (field_0x3174 == 8 && mProcVar0.field_0x3008 == 0)) {
            mNormalSpeed = 0.0f;
            checkNextAction(0);
            return 1;
        }

        if (mNormalSpeed > 2.5f) {
            field_0x2f9d = 0x40;
        }

        sp14 = current.pos;
        sp14.y += 2.5f;

        sp8.set(sp14.x + cM_ssin(current.angle.y) * 50.0f, sp14.y,
                sp14.z + cM_scos(current.angle.y) * 50.0f);
        if (commonLineCheck(&sp14, &sp8) && dBgS_CheckBWallPoly(mLinkLinChk)) {
            mNormalSpeed = 0.0f;
            return checkNextAction(0);
        }

        seStartMapInfoLevel(Z2SE_FN_LINK_SLIP);
    }

    return 1;
}

// TODO: Move / setup later
class ni_class : public fopAc_ac_c {
public:
    bool checkGold() { return mType == 3; }

    /* 0x568 */ u8 field_0x568[0x5F0 - 0x568];
    /* 0x5F0 */ s8 mType;
};

/* 800C5E68-800C61EC 0C07A8 0384+00 4/4 0/0 0/0 .text            procAutoJumpInit__9daAlink_cFi */
int daAlink_c::procAutoJumpInit(int param_0) {
    u32 chk_mode_400 = checkModeFlg(0x400);
    BOOL not_front_roll = mProcID != PROC_FRONT_ROLL ? TRUE : FALSE;

    if (checkIronBallWaitAnime()) {
        resetUpperAnime(UPPER_2, -1.0f);
        deleteEquipItem(TRUE, FALSE);
    }

    if (field_0x27f4 != NULL && fopAcM_GetName(field_0x27f4) == PROC_CANOE) {
        return procSmallJumpInit(1);
    }

    if (!commonProcInitNotSameProc(PROC_AUTO_JUMP)) {
        return 0;
    }

    mProcVar0.field_0x3008 = 0;

    if (chk_mode_400 || (mDemo.getDemoMode() == 0x18 && mDemo.getParam0() == 1)) {
        if (chk_mode_400) {
            onModeFlg(0x2000);
            mProcVar0.field_0x3008 = 5;
        }

        setSingleAnimeBaseSpeed(ANM_JUMP_LAND, 0.0f,
                                daAlinkHIO_autoJump_c0::m.mJumpFallInterpolation);
        field_0x3198 = 0x33;
        current.angle.y = shape_angle.y + 0x8000;
    } else {
        setSingleAnimeParam(ANM_JUMP_START, &daAlinkHIO_autoJump_c0::m.mJumpAnm);
        if (!not_front_roll) {
            field_0x2060->initOldFrameMorf(0.0f, 0, 35);
        }

        field_0x3198 = 0x31;
        current.angle.y = shape_angle.y;
    }

    s16 grab_actor_name;
    if (mGrabItemAcKeep.getActor() != NULL) {
        grab_actor_name = fopAcM_GetName(mGrabItemAcKeep.getActor());
    } else {
        grab_actor_name = PROC_ALINK;
    }

    s16 angle = daAlinkHIO_autoJump_c0::m.mJumpAngle;
    BOOL cucco_jump = false;
    field_0x3478 = -10.0f;
    if (grab_actor_name == PROC_NI || grab_actor_name == PROC_NPC_TKJ2) {
        if (grab_actor_name == PROC_NI &&
            ((ni_class*)mGrabItemAcKeep.getActor())->checkGold() == true)
        {
            field_0x594 = 30.0f;
        } else {
            if (checkStageName("F_SP115")) {
                field_0x594 = 27.0f;
                field_0x3478 = -10.0f;
            } else {
                field_0x594 = daAlinkHIO_autoJump_c0::m.mCuccoJumpMaxSpeed;
                field_0x3478 = daAlinkHIO_autoJump_c0::m.mCuccoFallMaxSpeed;
            }

            angle = daAlinkHIO_autoJump_c0::m.mCuccoJumpAngle;
            cucco_jump = true;
        }
    } else {
        field_0x594 = daAlinkHIO_autoJump_c0::m.mMaxJumpSpeed;
    }

    if (checkGrabGlide()) {
        offModeFlg(4);
    }

    if (chk_mode_400) {
        speedF = field_0x594 * 0.75f;
    } else {
        if (speedF > field_0x594 || param_0 ||
            daAlinkHIO_autoJump_c0::m.mAlwaysMaxSpeedJump == true)
        {
            speedF = field_0x594;
        } else if (speedF < daAlinkHIO_autoJump_c0::m.mMinJumpSpeed) {
            speedF = daAlinkHIO_autoJump_c0::m.mMinJumpSpeed;
        }
    }

    mNormalSpeed = speedF * daAlinkHIO_autoJump_c0::m.mJumpSpeedRate;
    speed.y = mNormalSpeed * cM_ssin(angle);
    mNormalSpeed *= cM_scos(angle);

    if (cucco_jump) {
        mNormalSpeed = daAlinkHIO_autoJump_c0::m.mCuccoStartSpeed;
    }

    field_0x3588 = l_waitBaseAnime;
    voiceStart(Z2SE_AL_V_JUMP_L);

    offNoResetFlg0(FLG0_UNK_40000);
    mProcVar2.field_0x300c = 0;
    onResetFlg0(RFLG0_UNK_100);
    mFallVoiceInit = false;
    return 1;
}

/* 800C61EC-800C66DC 0C0B2C 04F0+00 1/0 0/0 0/0 .text            procAutoJump__9daAlink_cFv */
int daAlink_c::procAutoJump() {
    int direction = getDirectionFromCurrentAngle();

    if (checkInputOnR() && direction == DIR_BACKWARD) {
        cLib_chaseF(&mNormalSpeed, 0.0f, field_0x33a8 * 0.2f);
    } else if (checkGrabGlide()) {
        cLib_chaseF(&mNormalSpeed, field_0x594, 0.1f);
    } else if (!checkInputOnR()) {
        cLib_chaseF(&mNormalSpeed, 0.0f, 0.1f);
    }

    if (mProcVar0.field_0x3008 != 0) {
        mProcVar0.field_0x3008--;
    } else {
        offModeFlg(0x2000);
    }

    setLandPassiveData();

    if (!checkModeFlg(4) && checkSetItemTrigger(HVY_BOOTS)) {
        setHeavyBoots(1);
    }

    if (checkUpperItemActionFly()) {
        return 1;
    }

    if (mLinkAcch.ChkGroundHit()) {
        return checkLandAction(0);
    }

    if (!checkGrabAnime()) {
        dCcD_Cyl* cyl_p = field_0x850;
        for (int i = 0; i < 3; i++) {
            fopAc_ac_c* hit_ac = cyl_p->GetCoHitAc();
            if (cyl_p->ChkCoHit() && hit_ac != NULL) {
                if (fopAcM_GetName(hit_ac) == PROC_Obj_SwHang) {
                    return procRoofSwitchHangInit(hit_ac);
                }
            }

            cyl_p++;
        }

        if (checkFrontWallTypeAction() || checkCutJumpInFly()) {
            return 1;
        }
    }

    if (field_0x3198 == 0x31 || field_0x3198 == 0x32) {
        field_0x2f99 = 4;
    }

    if (mProcVar2.field_0x300c != 0) {
        setDoStatus(1);

        if (doTrigger()) {
            freeGrabItem();
            onModeFlg(4);
        }

        if (!checkGrabGlide()) {
            setSpecialGravity(daAlinkHIO_autoJump_c0::m.mGravity,
                              daAlinkHIO_autoJump_c0::m.mMaxFallSpeed, 1);
            mProcVar2.field_0x300c = 0;
            resetUpperAnime(UPPER_1, 3.0f);
            field_0x30a0 = 0;
            onModeFlg(4);
        } else {
            field_0x30a0 = 0x1800;

            if (!checkBootsOrArmorHeavy()) {
                mFallHeight = current.pos.y;
                setSpecialGravity(-1.0f, field_0x3478, 0);
            } else {
                setSpecialGravity(daAlinkHIO_autoJump_c0::m.mGravity,
                                  daAlinkHIO_autoJump_c0::m.mMaxFallSpeed * 0.66f, 0);
            }

            s16 diff;
            if (checkInputOnR() && direction != DIR_BACKWARD) {
                cLib_addCalcAngleS(&current.angle.y, field_0x2fe2, 5, 200, 50);
                diff = current.angle.y - shape_angle.y;
                shape_angle.y = current.angle.y;
            } else {
                diff = 0;
            }

            cLib_addCalcAngleS(&field_0x3082, -diff * 7, 10, 1000, 50);
            cLib_addCalcAngleS(&field_0x308a, -diff * 12, 10, 1000, 50);
        }
    }

    setFallVoice();

    f32 temp_f1 = (mFallHeight - current.pos.y) * 0.01f;
    if (field_0x3198 != 0x8C && temp_f1 > daAlinkHIO_damFall_c0::m.mFallAnmTransitionHeight) {
        setSingleAnimeBaseSpeed(ANM_DMG_FALL, 0.0f, daAlinkHIO_damFall_c0::m.mFallAnmMorf);
        field_0x3198 = 0x8C;
    } else if (speed.y < -gravity && field_0x2f99 == 4) {
        if (checkGrabGlide()) {
            setSpecialGravity(-1.0f, field_0x3478, 0);
            mProcVar2.field_0x300c = 1;
        }

        setSingleAnimeBaseSpeed(ANM_JUMP_LAND, 0.0f,
                                daAlinkHIO_autoJump_c0::m.mJumpFallInterpolation);

        if (mProcVar2.field_0x300c != 0) {
            setUpperAnime(0x276, UPPER_1, 1.0f, 0.0f, -1, 3.0f);
        }

        field_0x2f99 = 0x20;
        field_0x3198 = 0x33;
    } else if (field_0x3198 == 0x31 && mUnderFrameCtrl[0].checkAnmEnd()) {
        setSingleAnimeBaseSpeed(ANM_JUMP, 0.0f, daAlinkHIO_autoJump_c0::m.mAirborneInterpolation);
        field_0x3198 = 0x32;
    }

    if (checkGrabGlide() && field_0x35ac.y > 0.0f) {
        speed.y = 0.0f;
    }

    checkItemChangeFromButton();

    return 1;
}

/* 800C66DC-800C6798 0C101C 00BC+00 1/1 0/0 0/0 .text            procDiveJumpInit__9daAlink_cFv */
int daAlink_c::procDiveJumpInit() {
    commonProcInit(PROC_DIVE_JUMP);
    setSingleAnimeParam(ANM_DIVE_START, &daAlinkHIO_autoJump_c0::m.mDiveAnm);
    deleteEquipItem(TRUE, TRUE);
    setHeavyBoots(0);

    speed.y = daAlinkHIO_autoJump_c0::m.mDiveSpeedV;
    mNormalSpeed = daAlinkHIO_autoJump_c0::m.mDiveSpeedH;
    gravity = daAlinkHIO_autoJump_c0::m.mDiveGravity;

    mProcVar2.field_0x300c = 0;
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

    if (mProcVar2.field_0x300c == 0) {
        if (frameCtrl->checkAnmEnd()) {
            setSingleAnimeParam(ANM_DIVE, &daAlinkHIO_autoJump_c0::m.mDiveConnectAnm);
            mProcVar2.field_0x300c = 1;
            field_0x2f99 = 2;
        }
    } else {
        field_0x2f99 = 2;

        if (frameCtrl->getFrame() >= 3.0f) {
            cLib_chaseF(&mNormalSpeed, 0.0f, 0.5f);
        }
    }

    return 1;
}

/* 800C6850-800C692C 0C1190 00DC+00 1/1 0/0 0/0 .text            procRollJumpInit__9daAlink_cFv */
int daAlink_c::procRollJumpInit() {
    commonProcInit(PROC_ROLL_JUMP);
    setSingleAnimeBaseSpeed(ANM_ROLL_JUMP, 0.0f,
                            daAlinkHIO_autoJump_c0::m.mSpinJumpInterpolation);

    field_0x3478 = field_0x3410;
    mNormalSpeed = field_0x3410;
    speed.y = field_0x3414;

    field_0x2fe6 = field_0x30ee;
    shape_angle.y = field_0x30ee;
    current.angle.y = shape_angle.y;

    mLinkAcch.i_ClrGroundHit();
    field_0x347c = 0.0f;
    shape_angle.x = 1;

    voiceStart(Z2SE_AL_V_GORONJUMP);
    seStartOnlyReverb(Z2SE_AL_GORON_JUMP_START);
    mProcVar2.field_0x300c = 1;

    return 1;
}

/* 800C692C-800C6A48 0C126C 011C+00 1/0 0/0 0/0 .text            procRollJump__9daAlink_cFv */
int daAlink_c::procRollJump() {
    if (mLinkAcch.ChkGroundHit()) {
        return checkLandAction(0);
    }

    if (speed.y < 0.0f) {
        procFallInit(3, daAlinkHIO_autoJump_c0::m.mSpinJumpFallInterpolation);
    } else {
        s16 old_angle = shape_angle.x;
        shape_angle.x += daAlinkHIO_autoJump_c0::m.mSpinJumpRotateSpeed;

        if (shape_angle.x * old_angle <= 0) {
            if (mProcVar2.field_0x300c != 0) {
                seStartOnlyReverb(Z2SE_AL_GORON_JUMP_ROLLING);
                mProcVar2.field_0x300c = 0;
            } else {
                mProcVar2.field_0x300c = 1;
            }
        }

        cLib_chaseF(&field_0x347c,
                    field_0x33a8 * cM_scos(field_0x2fe2 - shape_angle.y) *
                        daAlinkHIO_autoJump_c0::m.mSpinJumpAddSpeed,
                    daAlinkHIO_autoJump_c0::m.mSpinJumpAccel);
        mNormalSpeed = field_0x3478 + field_0x347c;
    }

    return 1;
}

#include "d/d_com_inf_game.h"

/* 800C6A48-800C6D20 0C1388 02D8+00 30/30 0/0 0/0 .text            procFallInit__9daAlink_cFif */
int daAlink_c::procFallInit(int param_0, f32 param_1) {
    if (mDemo.getDemoMode() == 0x11) {
        mLinkAcch.SetGrndNone();
        mLinkAcch.OnLineCheckNone();
    }

    u32 var_r3 = checkModeFlg(0x10000) && !dComIfGp_checkPlayerStatus0(0, 8);
    u8 temp_r30 = mProcID != PROC_CANOE_GETOFF;
    BOOL temp_r29 = mProcID == PROC_ROOF_HANG_FRONT_MOVE;

    if (mProcID == PROC_HORSE_GETOFF) {
        horseGetOffEnd();
    }

    if (!commonProcInitNotSameProc(PROC_FALL)) {
        return 0;
    }

    if (checkNoResetFlg0(FLG0_UNDERWATER)) {
        offNoResetFlg0(FLG0_UNDERWATER);
    }

    mProcVar5.field_0x3012 = 0;

    if (param_0 == 1) {
        mNormalSpeed = 0.0f;
        speed.y = 0.0f;
        current.angle.y = shape_angle.y;

        if (var_r3) {
            current.pos.x += cM_ssin(shape_angle.y) * 5.0f;
            current.pos.z += cM_scos(shape_angle.y) * 5.0f;
        }
    } else if (param_0 == 4) {
        current.angle.y = field_0x2ffe;
        dComIfGp_getVibration().StartShock(6, 31, cXyz(0.0f, 1.0f, 0.0f));
        setDamagePoint(field_0x318c, FALSE, TRUE, 0);

        onNoResetFlg1(FLG1_THROW_DAMAGE);
        if (mDamageTimer != 0) {
            onModeFlg(8);
        }

        mNormalSpeed = field_0x3408;
        speed.y = field_0x340c;
        mProcVar5.field_0x3012 = 1;
    }

    mProcVar4.field_0x3010 = temp_r30;
    setSingleAnimeBaseSpeed(ANM_JUMP_LAND, 0.0f, param_1);
    resetBasAnime();

    if (param_0 != 4 && current.angle.y == shape_angle.y && !checkGrabAnime()) {
        if (mNormalSpeed > 1.0f) {
            mProcVar0.field_0x3008 = 2;
        } else {
            mProcVar0.field_0x3008 = 1;
        }
    } else {
        mProcVar0.field_0x3008 = 0;
    }

    if (temp_r29) {
        mProcVar1.field_0x300a = 2;
        field_0x32cc = 1;
    } else {
        mProcVar1.field_0x300a = 7;
        field_0x32cc = 0;
    }

    mProcVar2.field_0x300c = 0;
    mProcVar3.field_0x300e = param_0 == 3;
    offNoResetFlg0(FLG0_UNK_40000);
    mFallVoiceInit = 0;
    return 1;
}

/* 800C6D20-800C6F18 0C1660 01F8+00 1/0 0/0 0/0 .text            procFall__9daAlink_cFv */
int daAlink_c::procFall() {
    if (mProcVar5.field_0x3012 == 0) {
        cLib_chaseF(&mNormalSpeed, 0.0f, 0.1f);
    } else if (mProcVar5.field_0x3012 > 0) {
        mProcVar5.field_0x3012 = -1;
        return 1;
    }

    setLandPassiveData();
    if (checkUpperItemActionFly()) {
        return 1;
    }

    if (mLinkAcch.ChkGroundHit()) {
        return checkLandAction(mProcVar3.field_0x300e);
    }

    if (dComIfGs_getLife() != 0) {
        if (mProcVar0.field_0x3008 == 1) {
            if (mProcVar1.field_0x300a > 0) {
                mProcVar1.field_0x300a--;
            } else {
                setFrontWallType();

                if ((field_0x32cc != 0 ||
                     ((checkInputOnR() && getDirectionFromShapeAngle() == 0) || doTrigger())) &&
                    checkFrontWallTypeAction())
                {
                    return 1;
                }
            }
        } else if (mProcVar0.field_0x3008 == 2 && checkFrontWallTypeAction()) {
            return 1;
        }

        setFallVoice();

        f32 tmp_f1 = (mFallHeight - current.pos.y) * 0.0099999998f;
        if (mProcVar2.field_0x300c == 0 && tmp_f1 > daAlinkHIO_damFall_c0::m.mFallAnmTransitionHeight) {
            setSingleAnimeBaseSpeed(ANM_DMG_FALL, 0.0f,
                                    daAlinkHIO_damFall_c0::m.mFallAnmMorf);
            mProcVar2.field_0x300c = 1;
        }

        if (current.angle.y == shape_angle.y && checkCutJumpInFly()) {
            return 1;
        }
    }

    if (dComIfGs_getLife() != 0) {
        checkItemChangeFromButton();
    }

    return 1;
}

/* 800C6F18-800C6FE4 0C1858 00CC+00 6/6 0/0 0/0 .text            procLandInit__9daAlink_cFf */
int daAlink_c::procLandInit(f32 param_0) {
    commonProcInit(PROC_LAND);
    mNormalSpeed = 0.0f;

    setSingleAnimeParam(ANM_JUMP_LAND, &daAlinkHIO_autoJump_c0::m.mLandAnm);

    if (checkGrabGlide()) {
        mUnderFrameCtrl[0].setRate(0.5f);
    } else if (checkNoResetFlg0(FLG0_UNDERWATER)) {
        f32 rate = mUnderFrameCtrl[0].getRate() * 0.34999999f;
        mUnderFrameCtrl[0].setRate(rate);
    }

    field_0x2f9d = 4;
    setFootEffectProcType(4);

    onResetFlg1(RFLG1_UNK_30);
    current.angle.y = shape_angle.y;
    field_0x3478 = param_0;

    return 1;
}

/* 800C6FE4-800C70F8 0C1924 0114+00 1/0 0/0 0/0 .text            procLand__9daAlink_cFv */
int daAlink_c::procLand() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (frameCtrl->checkAnmEnd()) {
        checkNextAction(0);
    } else if (frameCtrl->getFrame() > daAlinkHIO_autoJump_c0::m.mLandAnm.mCheckFrame) {
        checkNextAction(1);
    } else if (frameCtrl->checkPass(4.0f)) {
        int var_r4;
        if (checkBootsOrArmorHeavy()) {
            var_r4 = 3;
        } else if (checkNoResetFlg0(FLG0_UNDERWATER) ||
                   field_0x3478 < daAlinkHIO_damFall_c0::m.mMinRollHeight)
        {
            var_r4 = 1;
        } else {
            var_r4 = 2;
        }

        f32 tmp_0 = 0.0f;
        dComIfGp_getVibration().StartShock(var_r4, 15, cXyz(tmp_0, 1.0f, tmp_0));
    }

    return 1;
}

/* 800C70F8-800C72D4 0C1A38 01DC+00 3/3 0/0 0/0 .text            procSmallJumpInit__9daAlink_cFi */
int daAlink_c::procSmallJumpInit(int param_0) {
    commonProcInit(PROC_SMALL_JUMP);

    if (param_0 == 2) {
        setSingleAnime(ANM_VJUMP_START, daAlinkHIO_smallJump_c0::m.mSmallJumpAnm.mSpeed, 6.0f,
                       daAlinkHIO_smallJump_c0::m.mSmallJumpAnm.mEndFrame,
                       daAlinkHIO_smallJump_c0::m.mSmallJumpAnm.mInterpolation);
        setJumpMode();
        speed.y = 24.0f;
        voiceStart(Z2SE_AL_V_JUMP_S);
        field_0x2f99 = 15;
        field_0x33b0 = field_0x3588.y;
        field_0x34d4 = l_waitBaseAnime;
    } else {
        setSingleAnimeParam(ANM_VJUMP_START, &daAlinkHIO_smallJump_c0::m.mSmallJumpAnm);

        if (param_0 == 1) {
            field_0x3478 = field_0x27f4->current.pos.y + 20.0f;
            if (field_0x3478 < current.pos.y + 30.0f) {
                field_0x3478 = current.pos.y + 30.0f;
            }

            daCanoe_c* canoe_p = (daCanoe_c*)field_0x27f4;
            cXyz sp8(canoe_p->current.pos);
            if (canoe_p->checkTandem()) {
                sp8.x += cM_ssin(canoe_p->shape_angle.y) * 175.0f;
                sp8.z += cM_scos(canoe_p->shape_angle.y) * 175.0f;
            }

            mProcVar2.field_0x300c = cLib_targetAngleY(&current.pos, &sp8);
            mProcVar3.field_0x300e = 1;
            setHeavyBoots(0);
        } else {
            field_0x3478 = field_0x34ec.y;
            mProcVar3.field_0x300e = 0;
        }
    }

    mNormalSpeed = 0.0f;
    field_0x33b0 = l_waitBaseAnime.y;
    field_0x3588 = l_waitBaseAnime;
    return 1;
}

/* 800C72D4-800C74D4 0C1C14 0200+00 1/0 0/0 0/0 .text            procSmallJump__9daAlink_cFv */
// NONMATCHING - one out of order block with sqrt
int daAlink_c::procSmallJump() {
    if (checkModeFlg(2)) {
        if (checkCanoeJumpRide()) {
            return 1;
        }

        if (mLinkAcch.ChkGroundHit()) {
            checkLandAction(0);
        } else if (speed.y < -gravity) {
            procFallInit(2, daAlinkHIO_smallJump_c0::m.mFallInterpolation);
        } else {
            field_0x2f99 = 7;
        }
    } else if (mUnderFrameCtrl[0].checkPass(6.0f)) {
        setJumpMode();
        mNormalSpeed = daAlinkHIO_smallJump_c0::m.mSpeedH;

        if (checkHeavyStateOn(1, 1) && !checkNoResetFlg0(FLG0_UNDERWATER)) {
            speed.y = JMAFastSqrt(2.0f * ((daAlinkHIO_smallJump_c0::m.mTargetHeightOffset +
                                           (field_0x3478 - current.pos.y)) *
                                          -(gravity * 2.25f)));
        } else {
            speed.y =
                JMAFastSqrt(2.0f * (-gravity * (daAlinkHIO_smallJump_c0::m.mTargetHeightOffset +
                                                 (field_0x3478 - current.pos.y))));
        }

        voiceStart(Z2SE_AL_V_JUMP_S);
        field_0x2f99 = 7;

        if (mProcVar3.field_0x300e != 0) {
            shape_angle.y = mProcVar2.field_0x300c;
            current.angle.y = shape_angle.y;
        }
    } else if (mProcVar3.field_0x300e != 0) {
        cLib_addCalcAngleS(&shape_angle.y, mProcVar2.field_0x300c, 3, 0x1000, 0x400);
        current.angle.y = shape_angle.y;
    }

    return 1;
}

/* 800C74D4-800C755C 0C1E14 0088+00 1/1 0/0 0/0 .text            procStepMoveInit__9daAlink_cFv */
int daAlink_c::procStepMoveInit() {
    commonProcInit(PROC_STEP_MOVE);
    setSingleAnimeParam(ANM_S_JUMP_START, &daAlinkHIO_smallJump_c0::m.mStepClimbAnm);
    field_0x3478 = 0.5f * mNormalSpeed;
    mNormalSpeed = 0.0f;

    mProcVar2.field_0x300c = 0;
    field_0x3588 = l_waitBaseAnime;

    return 1;
}

/* 800C755C-800C7690 0C1E9C 0134+00 1/0 0/0 0/0 .text            procStepMove__9daAlink_cFv */
int daAlink_c::procStepMove() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (mProcVar2.field_0x300c != 0) {
        field_0x2f99 = 4;

        if (frameCtrl->checkAnmEnd()) {
            return checkNextAction(0);
        }

        if (frameCtrl->getFrame() > daAlinkHIO_smallJump_c0::m.mStepLandAnm.mCheckFrame) {
            mNormalSpeed = field_0x3478;

            if (checkNextAction(1)) {
                return 1;
            }

            mNormalSpeed = 0.0f;
        }
    } else if (frameCtrl->checkAnmEnd()) {
        setSingleAnimeParam(ANM_S_JUMP_END, &daAlinkHIO_smallJump_c0::m.mStepLandAnm);
        current.pos.set(field_0x34ec.x + cM_ssin(shape_angle.y) * 2.0f, field_0x34ec.y,
                        field_0x34ec.z + cM_scos(shape_angle.y) * 2.0f);
        field_0x2f99 = 80;
        mProcVar2.field_0x300c = 1;
    }

    return 1;
}

/* 800C7690-800C76F8 0C1FD0 0068+00 1/0 0/0 0/0 .text            procCrouchInit__9daAlink_cFv */
int daAlink_c::procCrouchInit() {
    if (!commonProcInitNotSameProc(PROC_CROUCH)) {
        return 0;
    }

    setSingleAnimeBaseSpeed(ANM_CROUCH, daAlinkHIO_crouch_c0::m.mCrouchAnmSpeed,
                            daAlinkHIO_crouch_c0::m.mCrouchInterpolation);
    current.angle.y = shape_angle.y;
    return 1;
}

/* 800C76F8-800C77F4 0C2038 00FC+00 1/0 0/0 0/0 .text            procCrouch__9daAlink_cFv */
int daAlink_c::procCrouch() {
    cLib_chaseF(&mNormalSpeed, 0.0f, daAlinkHIO_move_c0::m.mDeceleration);

    if (checkAttentionState()) {
        setFaceBasicBck(0xE8);
    } else {
        setFaceBasicBck(0);
    }

    if (mDemo.getDemoMode() != 0x29 &&
        (mSinkShapeOffset <= -80.0f || (checkAttentionLock() && checkGuardAccept())))
    {
        checkNextActionFromCrouch(0);
    }

    return 1;
}

BOOL daMidna_c::checkMidnaRealBody() {
    return dKy_darkworld_check() == 1 || dComIfGs_isTransformLV(3);
}

/* 800C77F4-800C7C64 0C2134 0470+00 4/2 0/0 0/0 .text procCoMetamorphoseInit__9daAlink_cFv */
int daAlink_c::procCoMetamorphoseInit() {
    int var_r29 = 0;

    if (dComIfGp_getEvent().isOrderOK()) {
        if (!dComIfGp_event_compulsory(this, NULL, 0xFFFF)) {
            return 0;
        }
        mDemo.setSpecialDemoType();
        mDamageTimer = 0;
        var_r29 = 1;
    }

    if (!commonProcInitNotSameProc(PROC_METAMORPHOSE)) {
        return 1;
    }

    field_0x3198 = var_r29;
    mProcVar0.field_0x3008 = 0;
    mProcVar3.field_0x300e = 0;
    mProcVar4.field_0x3010 = 0;
    field_0x347c = 1.0f;
    mFallVoiceInit = 0;

    if ((checkWolf() && mDemo.getDemoMode() == 0x39) ||
        (!checkWolf() && mDemo.getDemoMode() == 0x3A))
    {
        mProcVar1.field_0x300a = 1;
        speed.y = 0.0f;
        mNormalSpeed = 0.0f;

        if (checkWolf()) {
            mProcVar2.field_0x300c = shape_angle.x;
        }
    } else {
        deleteEquipItem(FALSE, TRUE);

        if (checkEndResetFlg0(ERFLG0_UNK_2) && checkStageName("D_MN08")) {
            mProcVar4.field_0x3010 = 1;
        }
        mProcVar1.field_0x300a = 0;

        if (checkWolf()) {
            // Transform Wolf -> Human
            setSingleAnimeWolfBase(WANM_TRANSFORM_TO_HUMAN);
            field_0x3588 = l_wolfBaseAnime;
            field_0x347c = 0.5f;
            field_0x3480 = daAlinkHIO_basic_c0::m.mWolfLinkTransformSpeed;
            mProcVar2.field_0x300c = shape_angle.x;

            daMidna_c* midna = (daMidna_c*)getMidnaActor();
            if (checkMidnaRide() && daMidna_c::checkMidnaRealBody() && midna->checkDemoTypeNone())
            {
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

            cXyz pos(current.pos.x + (cM_ssin(shape_angle.y) * 100.0f), current.pos.y + 300.0f,
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
                        sp14.y = current.pos.y + mAcchCir[i].GetWallH();
                    }
                    sp8.y = sp14.y;

                    if (commonLineCheck(&sp14, &sp8) && dBgS_CheckBWallPoly(mLinkLinChk) &&
                        dComIfG_Bgsp().GetWallCode(mLinkLinChk) != 7)
                    {
                        var_r28 = true;
                        break;
                    }
                }

                if (var_r28) {
                    mProcVar2.field_0x300c = field_0x2ff0;
                } else {
                    pos -= current.pos;
                    mProcVar2.field_0x300c = pos.atan2sY_XZ();

                    if (abs(mProcVar2.field_0x300c) > cM_deg2s(70.0f)) {
                        mProcVar2.field_0x300c = field_0x2ff0;
                    }
                }
            } else {
                mProcVar2.field_0x300c = 0;
            }
        }
        speed.y = 0.0f;
        mNormalSpeed = 0.0f;
        mProcVar5.field_0x3012 = 0;
    }

    field_0x3484 = current.pos.y;
    return 1;
}

/* 800C7C64-800C82E8 0C25A4 0684+00 1/0 0/0 0/0 .text            procCoMetamorphose__9daAlink_cFv */
int daAlink_c::procCoMetamorphose() {
    if (mProcVar1.field_0x300a != 0) {
        if (!checkEventRun()) {
            checkWaitAction();
        } else {
            dComIfGp_evmng_cutEnd(field_0x3184);
        }
        return 1;
    }

    daPy_frameCtrl_c* temp_r29 = mUnderFrameCtrl;
    if (!mLinkAcch.i_ChkGroundHit()) {
        current.pos.y = field_0x3484;
        speed.y = 0.0f;
    } else {
        field_0x3484 = current.pos.y;
    }

    field_0x2f99 = 4;

    if (mProcVar0.field_0x3008 != 0 && mProcVar5.field_0x3012 == 0) {
        if (mClothesChangeWaitTimer == 0) {
            mProcVar5.field_0x3012 = 1;

            if (mDemo.getParam0() == 1 && (mDemo.getDemoMode() == 0x39 || mDemo.getDemoMode() == 0x3A)) {
                dComIfGp_evmng_cutEnd(field_0x3184);

                if (checkWolf()) {
                    setSingleAnimeWolfBaseSpeed(WANM_WAIT, daAlinkHIO_wlMoveNoP_c0::m.field_0x14, -1.0f);
                } else {
                    setSingleAnimeBaseSpeed(ANM_WAIT, daAlinkHIO_move_c0::m.mWaitAnmSpeed, -1.0f);
                }

                field_0x2f99 = 0xC;
                mProcVar1.field_0x300a = 1;
                return 1;
            }

            Vec sp8 = {0.0f, 0.0f, 0.0f};
            sp8.z = l_wolfBaseAnime.z - l_waitBaseAnime.z;

            if (!checkWolf()) {
                setSingleAnimeBaseMorf(ANM_TRANSFORM_TO_HUMAN, -1.0f);
                setMetamorphoseModel(0);
                field_0x3588 = l_waitBaseAnime;
            } else {
                setSingleAnimeWolfBaseMorf(WANM_TRANSFORM_TO_WOLF, -1.0f);
                field_0x3588 = l_wolfBaseAnime;
                sp8.z *= -1.0f;
                offModeFlg(0x8000);
            }

            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::ZXYrotM(shape_angle);
            mDoMtx_stack_c::multVec(&sp8, &current.pos);

            field_0x2f99 = 0xC;
            if (mDemo.getDemoType() == 3) {
                mFallVoiceInit = 1;
            }

        }
    } else if (checkAnmEnd(temp_r29) || ((mDemo.getParam0() == 1) && (mDemo.getDemoMode() == 0x39 || mDemo.getDemoMode() == 0x3A)) || (mProcVar5.field_0x3012 != 0 && temp_r29->getFrame() > field_0x3480 && (checkInputOnR() || doTrigger() || grassCancelTrigger()))) {
        if (mProcVar5.field_0x3012 != 0) {
            deleteEquipItem(0, 0);

            if (field_0x3198 != 0) {
                resetSpecialEvent();
                return checkWaitAction();
            }

            dComIfGp_evmng_cutEnd(field_0x3184);

            if (checkWolf()) {
                setSingleAnimeWolfBaseSpeed(WANM_WAIT, daAlinkHIO_wlMoveNoP_c0::m.field_0x14, -1.0f);
            } else {
                setSingleAnimeBaseSpeed(ANM_WAIT, daAlinkHIO_move_c0::m.mWaitAnmSpeed, -1.0f);
            }

            field_0x2f99 = 0xC;
            mProcVar1.field_0x300a = 1;
            return 1;
        }

        mClothesChangeWaitTimer = 4;
        mpWlMidnaModel = NULL;
        mProcVar0.field_0x3008 = 1;

        if (mProcVar4.field_0x3010 != 0) {
            dComIfGs_onEventBit(0x5E40);
        }
    }

    field_0x33dc = temp_r29->getFrame();

    if (mProcVar5.field_0x3012 != 0) {
        if (checkWolf()) {
            f32 var_f31 = 1.0f - (0.03846154f * field_0x33dc);
            if (var_f31 < 0.0f) {
                var_f31 = 0.0f;
            }

            mProcVar3.field_0x300e = -64.0f * var_f31;
        } else if (field_0x33dc < 14.0f) {
            mProcVar3.field_0x300e = 15.0 + (49.0 * (1.0 - (0.07142857142857142 * field_0x33dc)));
        } else {
            f32 var_f31_2 = 1.0f - (0.2f * (field_0x33dc - 14.0f));
            if (var_f31_2 < 0.0f) {
                var_f31_2 = 0.0f;
            }

            mProcVar3.field_0x300e = 15.0f * var_f31_2;
        }
    } else if (checkWolf() != 0) {
        mProcVar3.field_0x300e = -64.0 * (0.07142857142857142 * field_0x33dc);
    } else if (field_0x33dc < 9.0f) {
        mProcVar3.field_0x300e = -15.0 * (0.1111111111111111 * field_0x33dc);
    } else {
        f32 var_f31_3 = 0.2f * (field_0x33dc - 9.0f);
        if (var_f31_3 > 1.0f) {
            var_f31_3 = 1.0f;
        }

        mProcVar3.field_0x300e = -(15.0f + (49.0f * var_f31_3));
    }

    if (!checkWolf()) {
        f32 var_f30;
        if (mProcVar5.field_0x3012 != 0) {
            var_f30 = (field_0x33dc - 13.0f) / 4.0f;
        } else {
            var_f30 = (field_0x33dc - 8.0f) / 5.0f;
        }

        var_f30 = cLib_minMaxLimit<f32>(var_f30, 0.0f, 1.0f);

        if (mProcVar5.field_0x3012 != 0) {
            field_0x347c = 0.5f + (0.027777778f * field_0x33dc);
            var_f30 = 1.0f - var_f30;
        } else {
            field_0x347c = 1.0f - (0.033333335f * (field_0x33dc - 9.0f));
            if (var_f30 > 0.0f) {
                swimBgCheck(150.0f * var_f30);
            }
        }

        if (field_0x347c > 1.0f) {
            field_0x347c = 1.0f;
        }

        shape_angle.x = var_f30 * mProcVar2.field_0x300c;
    }

    return 1;
}

/* 800C82E8-800C83A0 0C2C28 00B8+00 2/0 0/0 0/0 .text procCoMetamorphoseOnlyInit__9daAlink_cFv */
int daAlink_c::procCoMetamorphoseOnlyInit() {
    if (!commonProcInitNotSameProc(PROC_METAMORPHOSE_ONLY)) {
        return 1;
    }

    deleteEquipItem(0, 1);
    if ((checkWolf() && mDemo.getDemoMode() == 0x46) ||
        (!checkWolf() && mDemo.getDemoMode() == 0x47))
    {
        mProcVar2.field_0x300c = 1;
        mProcVar3.field_0x300e = 1;
    } else {
        mProcVar2.field_0x300c = 0;
        mProcVar3.field_0x300e = 0;
    }

    mNormalSpeed = 0.0f;
    speed.y = 0.0f;
    setSpecialGravity(0.0f, maxFallSpeed, 0);

    return 1;
}

/* 800C83A0-800C8460 0C2CE0 00C0+00 1/0 0/0 0/0 .text procCoMetamorphoseOnly__9daAlink_cFv */
int daAlink_c::procCoMetamorphoseOnly() {
    if (mProcVar2.field_0x300c == 0) {
        mClothesChangeWaitTimer = 4;
        mProcVar2.field_0x300c = 1;
    } else if (mClothesChangeWaitTimer == 0) {
        if (mProcVar3.field_0x300e == 0) {
            mProcVar3.field_0x300e = 1;

            if (checkWolf()) {
                setSingleAnimeWolfBaseSpeed(WANM_WAIT, daAlinkHIO_wlMoveNoP_c0::m.field_0x14,
                                            -1.0f);
            } else {
                setSingleAnimeBaseSpeed(ANM_WAIT, daAlinkHIO_move_c0::m.mWaitAnmSpeed, -1.0f);
            }
        }

        dComIfGp_evmng_cutEnd(field_0x3184);
    }

    return 1;
}

/* 800C8460-800C84D0 0C2DA0 0070+00 2/2 0/0 0/0 .text procFloorDownReboundInit__9daAlink_cFv */
int daAlink_c::procFloorDownReboundInit() {
    commonProcInit(PROC_FLOOR_DOWN_REBOUND);
    setSingleAnime(ANM_JUMP_LAND, 0.69999999f, daAlinkHIO_autoJump_c0::m.mLandAnm.mStartFrame,
                   daAlinkHIO_autoJump_c0::m.mLandAnm.mEndFrame, 10.0f);
    mNormalSpeed = 0.0f;
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
    } else if (frameCtrl->getFrame() > daAlinkHIO_autoJump_c0::m.mLandAnm.mCheckFrame) {
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

    mNormalSpeed = 0.0f;
    current.pos.x = param_0->current.pos.x;
    current.pos.z = param_0->current.pos.z;
    field_0x2f99 = 0x50;
    current.angle.y = shape_angle.y;
    setBlendMoveAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);

    return 1;
}

/* 800C85D8-800C8700 0C2F18 0128+00 1/0 0/0 0/0 .text            procGoronRideWait__9daAlink_cFv */
int daAlink_c::procGoronRideWait() {
    if (!checkGoronRide()) {
        checkNextAction(0);
    } else {
        if (checkInputOnR()) {
            cLib_addCalcAngleS(&shape_angle.y, field_0x2fe2, 2, 500, 100);
        }

        s16 temp_r0 = shape_angle.y - current.angle.y;
        daAlink_ANM var_r28;
        if (temp_r0 > 0) {
            var_r28 = ANM_STEP_TURN;
        } else if (temp_r0 < 0) {
            var_r28 = ANM_SMALL_GUARD;
        } else {
            var_r28 = ANM_WAIT;
        }

        f32 var_f31 = 0.8f + (0.002f * abs(temp_r0));
        if (var_f31 > 1.0f) {
            var_f31 = 1.0f;
        }

        var_f31 = 1.0f - var_f31;

        setDoubleAnime(var_f31, daAlinkHIO_basic_c0::m.mWaitTurnSpeed, daAlinkHIO_move_c0::m.mWaitAnmSpeed, var_r28, ANM_WAIT, 2, -1.0f);
        current.angle.y = shape_angle.y;
    }

    return 1;
}

/* 800C8700-800CAFA8 0C3040 28A8+00 1/1 0/0 0/0 .text            execute__9daAlink_cFv */
int daAlink_c::execute() {
    loadModelDVD();

    if (checkEndResetFlg0(ERFLG0_BOSS_ROOM_WAIT) && getMidnaActor() != NULL) {
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

        if (eventInfo.checkCommandDoor() && !dComIfGp_event_chkEventFlag(4) &&
            mEquipItem == noentry71)
        {
            deleteEquipItem(FALSE, FALSE);
        }
    }

    if (mSwordUpTimer != 0) {
        mSwordUpTimer--;
    }

    field_0x317c = dComIfGp_getPlayerCameraID(0);
    field_0x3510 = current.pos;

    if (checkMagneBootsOn()) {
        if (checkNoResetFlg0(FLG0_UNK_2000) && dComIfG_Bgsp().ChkPolySafe(mMagneLineChk) &&
            dComIfG_Bgsp().ChkMoveBG(mMagneLineChk))
        {
            s16 shape_angle_y = shape_angle.y;
            s16 angle_y = current.angle.y;
            f32 pos_y = current.pos.y;

            dComIfG_Bgsp().MoveBgCrrPos(mMagneLineChk, true, &current.pos, &current.angle,
                                        &shape_angle, false, false);

            if (field_0x3114 > 0x6000 || field_0x3114 == -0x8000) {
                shape_angle.y = shape_angle_y - (s16)(shape_angle.y - shape_angle_y);
                current.angle.y = angle_y - (s16)(current.angle.y - angle_y);
            }

            dComIfG_Bgsp().MoveBgCrrPos(mMagneLineChk, true, &old.pos, NULL, NULL, false, false);

            if (getMoveBGActorName(mMagneLineChk, FALSE) == PROC_Obj_MagneArm) {
                field_0x34c8.y += current.pos.y - pos_y;
            } else {
                field_0x34c8.y += (current.pos.y - pos_y) * 0.1f;
            }
        }
    } else if (mProcID != PROC_HOOKSHOT_FLY && !checkModeFlg(MODE_VINE_CLIMB | MODE_UNK_800) &&
               mProcID != PROC_TOOL_DEMO && mLinkAcch.GetGroundH() != -1000000000.0f &&
               dComIfG_Bgsp().ChkPolySafe(mLinkAcch.m_gnd) &&
               dComIfG_Bgsp().ChkMoveBG(mLinkAcch.m_gnd))
    {
        bool uvar23;
        if (mProcID == PROC_SPINNER_READY) {
            uvar23 = true;
        } else {
            uvar23 = mLinkAcch.ChkGroundHit();
        }
        f32 pos_y = current.pos.y;

        dComIfG_Bgsp().MoveBgCrrPos(mLinkAcch.m_gnd, uvar23, &current.pos, &current.angle,
                                    &shape_angle, false, false);
        dComIfG_Bgsp().MoveBgCrrPos(mLinkAcch.m_gnd, uvar23, &old.pos, NULL, NULL, false, false);
        field_0x34c8.y += (current.pos.y - pos_y) * 0.1f;
    }

    field_0x3798 = old.pos;
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

    if (!checkSwordGet() && mEquipItem == EQUIP_SWORD) {
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

    if (mProcID == PROC_BOTTLE_SWING && eventInfo.checkCommandCatch()) {
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
    mHookTargetAcKeep.setActor();
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

    if (field_0x2fd3 != 0 && mProcID != PROC_BOTTLE_DRINK && mProcID != PROC_CANOE_BOTTLE_DRINK &&
        mProcID != PROC_HORSE_BOTTLE_DRINK)
    {
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

        if (event_name != NULL && (!strcmp(event_name, "kiko_yami") || !strcmp(event_name, "fire_insect") ||
            (checkStageName("F_SP108") &&
                (!strcmp(event_name, "MapToolCamera19") || !strcmp(event_name, "yami_mog"))) ||
            (checkStageName("R_SP109") &&
                (!strcmp(event_name, "MapToolCamera1") || !strcmp(event_name, "MapToolCamera2") ||
                !strcmp(event_name, "MapToolCamera19") || !strcmp(event_name, "fire_insect"))) ||
            (checkStageName("F_SP115") && !strcmp(event_name, "MapToolCamera23"))))
        {
                mWolfEyeUp = daAlinkHIO_wolf_c0::m.mSensesLingerTime + 1;
        } else if (checkEndResetFlg1(ERFLG1_WOLF_EYE_KEEP) || (checkDungeon() && eventInfo.checkCommandDoor()) ||
            mProcID == PROC_WOLF_GET_SMELL || mProcID == PROC_WOLF_DIG ||
            mProcID == PROC_WOLF_DIG_THROUGH || checkNoResetFlg0(FLG0_UNK_4000) ||
            dComIfGp_checkPlayerStatus1(0, 0x1000000) ||
            (checkEventRun() && partner != NULL && (partner->attention_info.flags & 0x400000)) ||
            !strcmp(dComIfGp_getEventManager().getRunEventName(), l_defaultGetEventName))
        {
            mWolfEyeUp = daAlinkHIO_wolf_c0::m.mSensesLingerTime;
        } else if (mTargetedActor != NULL || dComIfGp_checkPlayerStatus0(0, 0x2000)) {
            mWolfEyeUp = daAlinkHIO_wolf_c0::m.mSensesLingerTime - 1;
        } else if (!dComIfGp_getEvent().isOrderOK() && mProcID != PROC_GET_ITEM &&
                   mWolfEyeUp <= daAlinkHIO_wolf_c0::m.mSensesLingerTime)
        {
            offWolfEyeUp();
        } else {
            mWolfEyeUp = 1;
        }
    }

    if (checkEndResetFlg0(ERFLG0_UNK_1000000) && mEquipItem == EQUIP_SWORD) {
        mSwordFlourishTimer = daAlinkHIO_cut_c0::m.mFlourishTime;
    }

    if ((checkWolf() && field_0x2fbc == 11 && checkWaterPolygonUnder()) || field_0x2fbb == 11) {
        onNoResetFlg0(FLG0_UNK_40000000);
    }

    fopAc_ac_c* item_actor = mGrabItemAcKeep.getActor();
    if (item_actor != NULL && (!fopAcM_checkCarryNow(item_actor) ||
                               (checkNoResetFlg0(FLG0_UNDERWATER) &&
                                (checkGrabRooster() || fopAcM_GetName(item_actor) == PROC_E_NEST ||
                                 checkGrabCarryActor()))))
    {
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
        if (!checkDemoAction() && !checkDeadAction(0) && !checkNoResetFlg0(FLG0_UNK_100000) &&
            !checkAutoJumpAction())
        {
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
                setUpperAnime(0x255, UPPER_2, daAlinkHIO_cut_c0::m.mEquipAnm.mSpeed, 12.0f,
                              daAlinkHIO_cut_c0::m.mEquipAnm.mEndFrame,
                              daAlinkHIO_cut_c0::m.mEquipAnm.mInterpolation);
                onNoResetFlg0(FLG0_UNK_1000000);
            }
        } else if (checkNoResetFlg0(FLG0_UNK_1000000)) {
            resetUpperAnime(UPPER_2, 5.0f);
        }

        if (mEquipItem == KANTERA && checkNoUpperAnime() && !checkKandelaarEquipAnime() &&
            (checkModeFlg(MODE_UNK_1000) || mProcID == PROC_CROUCH))
        {
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

    {
        cXyz old_pos = current.pos;
        posMove();

        if (checkWolf()) {
            wolfBgCheck();
        } else if (checkModeFlg(MODE_SWIMMING)) {
            swimBgCheck(120.0f);
        }

        cXyz pos = current.pos;
        field_0x3528 = speed;

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

        if (checkNoResetFlg0(FLG0_UNDERWATER) ||
            (checkPossibleWaterInMode() && !checkNoResetFlg0(FLG0_SWIM_UP)))
        {
            f32 var_f31;
            if (mProcID == PROC_HOOKSHOT_FLY) {
                var_f31 = current.pos.y - (field_0x598 * 0.5f);
            } else if (dComIfGp_checkPlayerStatus1(0, 0x2000000)) {
                var_f31 = (current.pos.y + -65.0f) - (daAlinkHIO_swim_c0::m.mInitHeight - 5.0f);
            } else {
                var_f31 = current.pos.y;
            }

            if (!checkNoResetFlg0(FLG0_UNK_80) ||
                mWaterY - var_f31 <= daAlinkHIO_swim_c0::m.mInitHeight - 5.0f)
            {
                swimOutAfter(0);
            }
        }

        if (mProcID == PROC_TOOL_DEMO || mProcID == PROC_GANON_FINISH) {
            J3DTransformInfo ti;
            field_0x1f20->getAnm(0)->getTransform(0, &ti);
            mDoMtx_stack_c::transS(old_pos);
            mDoMtx_stack_c::YrotM(shape_angle.y);

            Vec tmp = {0.0f, 0.0f, 0.0f};
            tmp.x = ti.mTranslate.x;
            tmp.z = ti.mTranslate.z;
            mDoMtx_stack_c::multVec(&tmp, &current.pos);
            speed.y = 0.0f;

            if (field_0x3198 != 0) {
                if (mLinkAcch.GetGroundH() != -1000000000.0f) {
                    current.pos.y = mLinkAcch.GetGroundH();
                }
            }
        } else if (mProcID == PROC_HOOKSHOT_FLY || mProcID == PROC_MAGNE_BOOTS_FLY ||
                (checkModeFlg(MODE_ROPE_WALK | MODE_VINE_CLIMB | MODE_UNK_800 | MODE_RIDING) &&
                    mProcID != PROC_HORSE_GETOFF && mProcID != PROC_WOLF_CHAIN_READY &&
                    !checkBoardRide()))
        {
            current.pos = pos;
        } else if (checkModeFlg(MODE_UNK_4000)) {
            if (mProcID == PROC_DOOR_OPEN || mProcID == PROC_HANG_LEVER_DOWN) {
                current.pos.y = old_pos.y;
                speed.y = 0.0f;
            }
            current.pos.x = pos.x;
            current.pos.z = pos.z;
        } else if (checkFlyAtnWait() || mProcID == PROC_WARP) {
            current.pos.y = old_pos.y;
            speed.y = 0.0f;
        }

        field_0x3178 = field_0x3174;

        if (mLinkAcch.GetGroundH() != -1000000000.0f) {
            setRoomInfo();

            if (!checkModeFlg(MODE_PLAYER_FLY) && !checkMagneBootsOn() && mProcID != PROC_TOOL_DEMO &&
                mProcID != PROC_GANON_FINISH && mProcID != PROC_DUNGEON_WARP &&
                (field_0x2f8c == 1 || field_0x2f8c == 3))
            {
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

                if (checkNoResetFlg0(FLG0_UNK_80) && !checkNoResetFlg0(FLG0_UNDERWATER) &&
                    mWaterY >= mLinkAcch.GetGroundH())
                {
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
            mGndPolySpecialCode = dBgW_SPCODE_NORMAL;

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
                mGndPolySpecialCode = dComIfG_Bgsp().GetSpecialCode(mMagneLineChk);
                setMagneBootsMtx(&mMagneLineChk, 0);
            } else {
                mPolySound = 0;
                field_0x2ff0 = 0;
                field_0x3174 = -1;
                field_0x2fbb = 16;
                mGndPolySpecialCode = dBgW_SPCODE_NORMAL;
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

        if (checkModeFlg(MODE_VINE_CLIMB) && mProcVar2.field_0x300c != 0 &&
            dComIfG_Bgsp().ChkPolySafe(mPolyInfo1))
        {
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
                        cLib_addCalcAngleS(&mBodyAngle.x, 0, 4, 0x0C00, 0x0180);
                    }
                }

                if (!checkModeFlg(MODE_UNK_40000000)) {
                    cLib_addCalcAngleS(&mBodyAngle.y, 0, 4, 0x0C00, 0x0180);
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

            field_0x30c8 = mBodyAngle.y >> 1;
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
                        if (dStage_stagInfo_GetSaveTbl(pstag) == 0x11 &&
                            !dComIfGs_isItemFirstBit(HYLIA_SHIELD))
                        {
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
            daMidna_c* pmidna = (daMidna_c*)getMidnaActor();

            if (mClothesChangeWaitTimer == 0) {
                if ((pmidna->checkMidnaTired() || pmidna->checkForceTiredColor()) &&
                    !pmidna->checkForceNormalColor())
                {
                    mpWlMidnaModel->getModelData()->entryTevRegAnimator(mpDMidnaBrk);
                    mpWlMidnaMaskModel->getModelData()->entryTevRegAnimator(mpDMidnaMaskBrk);
                    mpWlMidnaHandModel->getModelData()->entryTevRegAnimator(mpDMidnaHandBrk);
                    mpWlMidnaHairModel->getModelData()->entryTevRegAnimator(mpDMidnaHairHandBrk);
                } else {
                    mpWlMidnaModel->getModelData()->removeTevRegAnimator(mpDMidnaBrk);
                    mpWlMidnaMaskModel->getModelData()->removeTevRegAnimator(mpDMidnaMaskBrk);
                    mpWlMidnaHandModel->getModelData()->removeTevRegAnimator(mpDMidnaHandBrk);
                    mpWlMidnaHairModel->getModelData()->removeTevRegAnimator(mpDMidnaHairHandBrk);
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

        static Vec const localBoomCatchPos = {18.7f, 146.3f, 69.2f};
        cMtx_multVec(mpLinkModel->getAnmMtx(0), &localBoomCatchPos, &field_0x3534);

        if (checkResetFlg0(RFLG0_UNK_10)) {
            mZ2Link.setResumeAttack(true);
        } else {
            mZ2Link.setResumeAttack(false);
        }

        if (!checkEventRun() && checkNoResetFlg0(FLG0_UNK_80) &&
            (mWaterY > current.pos.y + 40.0f || checkModeFlg(MODE_SWIMMING)) &&
            getMoveBGActorName(mLinkAcch.m_wtr, TRUE) == PROC_Obj_Onsen)
        {
            if (mHotspringRecoverTimer != 0) {
                mHotspringRecoverTimer--;
            } else {
                mHotspringRecoverTimer = daAlinkHIO_basic_c0::m.mHotspringRecoverTime;
                dComIfGp_setItemLifeCount(1.0f, 1);
            }
        } else {
            mHotspringRecoverTimer = daAlinkHIO_basic_c0::m.mHotspringRecoverTime;
        }

        if (checkAttentionLock() || (!checkUpperReadyThrowAnime() &&
            mProcID != PROC_HOOKSHOT_WALL_SHOOT && mProcID != PROC_HOOKSHOT_ROOF_SHOOT))
        {
            mFastShotTime = 0;
        }

        if (checkDeadHP()) {
            eventInfo.offCondition(fopAcCnd_NOEXEC_e);
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
                eventInfo.onCondition(0x5D);
            } else if (checkModeFlg(MODE_SWIMMING) || mProcID == PROC_WOLF_ROPE_MOVE ||
                    ((checkReinRide() || checkCanoeRide() || checkSpinnerRide()) &&
                        !checkNoResetFlg3(FLG3_UNK_80000) && !checkModeFlg(MODE_JUMP)))
            {
                eventInfo.onCondition(dEvtCnd_CANTALK_e);
                if (checkReinRide() || checkCanoeRide()) {
                    eventInfo.onCondition(dEvtCnd_CANGETITEM_e);
                }
            }
        } else if (checkMagneBootsOn() && cBgW_CheckBGround(mMagneBootsTopVec.y)) {
            eventInfo.onCondition(dEvtCnd_CANTALK_e);
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
            } else if (dComIfGs_getRupee() != 0 && field_0x2fd7 == 0) {
                setMagicArmorBrk(1);
                seStartOnlyReverb(Z2SE_AL_M_ARMER_RECOVER);
                mZ2Link.setLinkState(4);
            }
        }

        if (!checkWolf()) {
            for (u8 i = 0; i < 2; i++) {
                u8 tmp = (i + 1) % 2;
                if (dComIfGp_getSelectItem(i) == EMPTY_BOTTLE && (field_0x2fae & (1 << i)) &&
                    dComIfGp_getSelectItem(tmp) == EMPTY_BOTTLE)
                {
                    field_0x2fae |= (u8)(1 << tmp);
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
        } else {
            if (dComIfGp_getDoStatus() == 0x86 || dComIfGp_getDoStatus() == 0x8B) {
                setDoStatus(3);
            } else if (dComIfGp_getDoStatus() == 0x89) {
                setDoStatus(8);
            } else if (dComIfGp_getDoStatus() == 0x93) {
                setDoStatusEmphasys(0x19);
            } else if (dComIfGp_getDoStatus() == 0x8E) {
                setDoStatusEmphasys(0x15);
            } else if (dComIfGp_getDoStatus() == 0x8C) {
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
                if (checkWolf() ||
                    (field_0x27f4 != NULL &&
                        (field_0x27f4->speedF > 0.1f ||
                        (checkGoatCatchActor(field_0x27f4) && fopAcM_GetName(field_0x27f4) != PROC_COW))))
                {
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
            } else if (dComIfGp_getDoStatus() == 0x19 && dComIfGp_getHorseActor() != NULL &&
                        dComIfGp_getHorseActor()->getZeldaActor() != NULL)
            {
                setDoStatus(0x19);
            } else if (dComIfGp_getDoStatus() == 5 && field_0x27f4 != NULL &&
                        (fopAcM_GetName(field_0x27f4) == PROC_Obj_WindStone ||
                        fopAcM_GetName(field_0x27f4) == PROC_Obj_SmWStone))
            {
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
    }

    if (dComIfGp_att_getCatghTarget() != NULL && !checkWolf()) {
        if (!checkRideOn() && checkCastleTownUseItem(EMPTY_BOTTLE)) {
            dComIfGp_setBottleStatus(0x6C, 0);
        }
    }

    if (checkEndResetFlg2(ERFLG2_UNK_20) && dComIfGp_checkPlayerStatus0(0, 0x200000) &&
        (field_0x310e != field_0x310a || field_0x3110 != field_0x310c))
    {
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

    field_0x3540 = old.pos;
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

/* 800CAFA8-800CAFC8 0C58E8 0020+00 1/0 0/0 0/0 .text            daAlink_Execute__FP9daAlink_c */
static int daAlink_Execute(daAlink_c* i_this) {
    return i_this->execute();
}

/* 800CAFC8-800CB480 0C5908 04B8+00 2/2 0/0 0/0 .text            setDrawHand__9daAlink_cFv */
void daAlink_c::setDrawHand() {
    field_0x06d0->hide();
    field_0x06d4->hide();

    u8 var_r30;
    u8 var_r29;
    if (checkNoResetFlg2(FLG2_STATUS_WINDOW_DRAW)) {
        if (i_checkSwordGet()) {
            var_r30 = 0;
        } else {
            var_r30 = 0xFE;
        }

        if (i_checkShieldGet()) {
            var_r29 = 6;
        } else {
            var_r29 = 0xFE;
        }
    } else if (mProcID == PROC_TOOL_DEMO) {
        var_r30 = field_0x2f92;
        var_r29 = field_0x2f93;
    } else {
        if (field_0x2f92 == 0x64) {
            if (mProcID == PROC_BOSS_BODY_HANG || mProcID == PROC_MASTER_SWORD_PULL || (mProcID == PROC_CUT_DOWN_LAND && mProcVar2.field_0x300c != 0)) {
                var_r30 = mProcVar4.field_0x3010;
            } else if (checkUnderMove0BckNoArc(ANM_RIDE_CUT_TURN_CHARGE) && mUnderFrameCtrl[0].getFrame() < 6.0f) {
                var_r30 = 0;
            } else {
                var_r30 = 2;
            }
        } else if (field_0x2f96 != 0xFF && (!checkNoResetFlg1(FLG1_UNK_100000) || field_0x2f94 == 0xFF)) {
            var_r30 = field_0x2f96;
        } else if (field_0x2f94 != 0xFF) {
            if (field_0x2f94 == 0x67) {
                if (checkBowGrabLeftHand()) {
                    var_r30 = 0;
                } else {
                    var_r30 = field_0x2f92;
                }
            } else if (field_0x2f94 == 0x65) {
                if (mUpperAnmHeap[0].getIdx() == 0xC7) {
                    var_r30 = 0;
                } else if (mItemVar0.field_0x3018 == 1) {
                    var_r30 = 4;
                } else {
                    var_r30 = 2;
                }
            } else if (field_0x2f94 == 0 && mProcID == PROC_SWORD_UNEQUIP_SP) {
                var_r30 = field_0x2f92;
            } else if (field_0x2f94 == 0 && mEquipItem == 0x103 && (checkHorseRide() || checkUnderMove0BckNoArc(ANM_SWIM_DIE))) {
                var_r30 = 2;
            } else {
                var_r30 = field_0x2f94;
            }
        } else {
            var_r30 = field_0x2f92;
        }

        if ((mCutType == CUT_TYPE_FINISH_STAB || mCutType == CUT_TYPE_DOWN) && mProcID != PROC_BOSS_BODY_HANG) {
            var_r29 = 5;
        } else if (field_0x2f97 != 0xFF && (!checkNoResetFlg1(FLG1_UNK_100000) || (field_0x2f95 == 0xFF && field_0x2e44.checkPassNum(0xF)))) {
            var_r29 = field_0x2f97;
        } else if (field_0x2f95 != 0xFF) {
            if (field_0x2f95 == 0x65) {
                if (mItemVar0.field_0x3018 == 1) {
                    var_r29 = 5;
                } else {
                    var_r29 = field_0x2f93;
                }
            } else {
                var_r29 = field_0x2f95;
            }
        } else if (!field_0x2e44.checkPassNum(0xF)) {
            var_r29 = 6;
        } else {
            var_r29 = field_0x2f93;
        }
    }

    mpLinkHandModel->setBaseTRMtx(mpLinkModel->getBaseTRMtx());
    mpLinkHandModel->calc();

    if (var_r30 == 0xFE || var_r30 == 0xFB) {
        field_0x06d0 = field_0x06d8;
    } else {
        field_0x06d0 = mpLinkHandModel->getModelData()->getMaterialNodePointer(var_r30)->getShape();
        mpLinkHandModel->setAnmMtx(1, mpLinkModel->getAnmMtx(9));
    }

    if (var_r30 == 0xFB) {
        mpDemoHLTmpModel->setBaseTRMtx(mpLinkModel->getAnmMtx(9));
        if (mpDemoHLTmpBck != NULL) {
            mpDemoHLTmpBck->entry(mpDemoHLTmpModel->getModelData());
        }

        mpDemoHLTmpModel->calc();
        field_0x06d0->hide();
    } else {
        field_0x06d0->show();
    }

    if (var_r29 == 0xFE || var_r29 == 0xFB) {
        field_0x06d4 = field_0x06dc;
    } else {
        field_0x06d4 = mpLinkHandModel->getModelData()->getMaterialNodePointer(var_r29)->getShape();
        mpLinkHandModel->setAnmMtx(2, mpLinkModel->getAnmMtx(0xE));
    }

    if (var_r29 == 0xFB) {
        mpDemoHRTmpModel->setBaseTRMtx(mpLinkModel->getAnmMtx(0xE));
        if (mpDemoHRTmpBck != NULL) {
            mpDemoHRTmpBck->entry(mpDemoHRTmpModel->getModelData());
        }

        mpDemoHRTmpModel->calc();
        field_0x06d4->hide();
    } else {
        field_0x06d4->show();
    }
}

/* 800CB480-800CB53C 0C5DC0 00BC+00 3/3 0/0 0/0 .text            checkSwordDraw__9daAlink_cFv */
bool daAlink_c::checkSwordDraw() {
    return ((i_checkSwordGet() && mSwordChangeWaitTimer == 0) &&
            !checkNoResetFlg2(FLG2_UNK_2080000)) &&
           (!checkWolf() || !dComIfGs_isEventBit(0x0C08));
}

/* 800CB53C-800CB5F8 0C5E7C 00BC+00 3/3 0/0 0/0 .text            checkShieldDraw__9daAlink_cFv */
bool daAlink_c::checkShieldDraw() {
    return ((i_checkShieldGet() && mShieldChangeWaitTimer == 0) &&
            !checkNoResetFlg2(FLG2_UNK_4080000)) &&
           (!checkWolf() || !dComIfGs_isEventBit(0x0C08));
}

/* 800CB5F8-800CB694 0C5F38 009C+00 2/2 0/0 0/0 .text            checkItemDraw__9daAlink_cFv */
bool daAlink_c::checkItemDraw() {
    if (mHeldItemModel != NULL && (mEquipItem != IRONBALL || !checkSwordEquipAnime())) {
        if (!checkBowAndSlingItem(mEquipItem) || checkBowGrabLeftHand() || !i_checkShieldGet() ||
            field_0x2e44.checkPassNum(15))
        {
            return true;
        }
    }
    return false;
}

/* 800CB694-800CBA38 0C5FD4 03A4+00 0/0 0/0 1/1 .text            initShadowScaleLight__9daAlink_cFv
 */
// NONMATCHING - float stuff
int daAlink_c::initShadowScaleLight() {
    dKy_shadow_mode_set(4);

    if (checkWolf()) {
        f32 temp_f26 = 0.5f * field_0x850[0].GetH();
        field_0x850[0].GetC();
    }

    cXyz sp20(tevStr.mLightPosWorld.x - field_0x3834.x, tevStr.mLightPosWorld.y - field_0x3454, tevStr.mLightPosWorld.z - field_0x3834.z);
    field_0x2ff6 = sp20.atan2sX_Z();
    
    fopAc_ac_c* temp_r29 = fopAcM_getTalkEventPartner(this);

    f32 var_f30;
    if (dComIfGp_checkPlayerStatus0(0, 0x100000)) {
        var_f30 = 0.0f;
    } else {
        var_f30 = 150.0f;
    }

    BOOL var_r28;
    f32 var_f31;
    if (temp_r29 != NULL && ((fopAcM_GetName(temp_r29) == PROC_Tag_Mhint && !((daTagMhint_c*)temp_r29)->checkNoAttention()) || (fopAcM_GetName(temp_r29) == PROC_Tag_Mstop && !((daTagMstop_c*)temp_r29)->checkNoAttention()))) {
        field_0x2ff8 = cLib_targetAngleY(&temp_r29->eyePos, &current.pos);
        var_r28 = 1;
    } else {
        field_0x2ff8 = shape_angle.y + 0x8000;

        if (checkWolf()) {
            var_f31 = 200.0f;
        } else {
            var_f31 = 120.0f;
        }
    
        cXyz sp14(current.pos.x, current.pos.y + var_f30, current.pos.z);
        cXyz sp8(sp14.x + ((30.0f + var_f31) * cM_ssin(shape_angle.y)), sp14.y, sp14.z + ((30.0f + var_f31) * cM_scos(shape_angle.y)));

        if (fopAcM_lc_c::lineCheck(&sp14, &sp8, this)) {
            var_r28 = 1;
        } else {
            var_r28 = 0;
        }
    }

    field_0x2ffa = field_0x2ff8 + 0x8000;
    field_0x2ff4 = cM_atan2s(sp20.y, sp20.absXZ());
    offNoResetFlg2(FLG2_UNK_800);
    field_0x2ffc = 0;
    field_0x375c.y = current.pos.y + var_f30;

    f32 temp_f29 = cM_ssin(field_0x2ff8);
    f32 temp_f28 = cM_scos(field_0x2ff8);

    if (var_r28 == 0) {
        field_0x375c.x = current.pos.x - (var_f31 * temp_f29);
        field_0x375c.z = current.pos.z - (var_f31 * temp_f28);
    } else {
        field_0x375c.x = (current.pos.x - (temp_f29 * -30.0f)) - (temp_f28 * 65.0f);
        field_0x375c.z = (current.pos.z - (temp_f28 * -30.0f)) + (temp_f29 * 65.0f);
    }

    if (checkReinRide()) {
        var_r28 = 1;
    }

    return var_r28;
}

/* 800CBA38-800CBC18 0C6378 01E0+00 0/0 0/0 1/1 .text            moveShadowScaleLight__9daAlink_cFv
 */
int daAlink_c::moveShadowScaleLight() {
    int var_r29 = 0;

    if (field_0x2ff8 != field_0x2ffa) {
        s16 temp_r0 = field_0x2ff6 - field_0x2ff8;
        if (abs(temp_r0) < 0x4000) {
            if (temp_r0 >= 0) {
                field_0x2ff8 -= 0x4000;
            } else {
                field_0x2ff8 += 0x4000;
            }

            if (cLib_distanceAngleS(field_0x2ff8, field_0x2ffa) < 0x100) {
                field_0x2ff8 = field_0x2ffa;
            }
        }
    } else if (cLib_distanceAngleS(field_0x2ff8, field_0x2ff6) < 0x1600) {
        onNoResetFlg2(FLG2_UNK_800);
    }

    if (cLib_addCalcAngleS(&field_0x2ff6, field_0x2ff8, 4, 0x1800, 0x200) == 0) {
        if (cLib_chaseS(&field_0x2ff4, 0x4000, 0x650)) {
            dKy_shadow_mode_reset(4);
            tevStr.field_0x344 = 1.0f;
        } else {
            tevStr.field_0x344 = 2.0f;
        }

        if (field_0x2ff4 > 0x3000) {
            var_r29 = 1;
        }
    } else {
        if (!checkNoResetFlg2(FLG2_UNK_800)) {
            cLib_chaseS(&field_0x2ff4, 0x2600, 0x800);
        } else {
            cLib_chaseS(&field_0x2ffc, 0x800, 0x100);
            cLib_chaseS(&field_0x2ff4, 0, field_0x2ffc);
        }

        cLib_chaseF(&tevStr.field_0x344, 2.0f, 0.1f);
    }

    f32 temp_f31 = 50000.0f * cM_scos(field_0x2ff4);
    tevStr.mLightPosWorld.set(field_0x3834.x + (temp_f31 * cM_ssin(field_0x2ff6)), field_0x3454 + (50000.0f * cM_ssin(field_0x2ff4)), field_0x3834.z + (temp_f31 * cM_scos(field_0x2ff6)));
    return var_r29;
}

/* 800CBC18-800CC25C 0C6558 0644+00 1/1 0/0 0/0 .text            shadowDraw__9daAlink_cFv */
void daAlink_c::shadowDraw() {
    // NONMATCHING
}

/* 800CC25C-800CC298 0C6B9C 003C+00 3/3 0/0 0/0 .text            modelCalc__9daAlink_cFP8J3DModel */
void daAlink_c::modelCalc(J3DModel* p_model) {
    if (mClothesChangeWaitTimer == 0) {
        p_model->calc();
    }
}

/* 800CC298-800CC2E0 0C6BD8 0048+00 2/2 0/0 0/0 .text basicModelDraw__9daAlink_cFP8J3DModel */
void daAlink_c::basicModelDraw(J3DModel* i_model) {
    g_env_light.setLightTevColorType_MAJI(i_model, &tevStr);
    mDoExt_modelEntryDL(i_model);
}

/* 800CC2E0-800CC364 0C6C20 0084+00 1/1 0/0 0/0 .text            modelDraw__9daAlink_cFP8J3DModeli
 */
void daAlink_c::modelDraw(J3DModel* i_model, int param_1) {
    g_env_light.setLightTevColorType_MAJI(i_model, &tevStr);

    if (param_1 == 0) {
        mDoExt_modelEntryDL(i_model);
    } else {
        i_model->calcMaterial();
        i_model->diff();
    }

    daMirror_c::entry(i_model);
}

/* 800CC364-800CC7DC 0C6CA4 0478+00 2/2 0/0 0/0 .text
 * setWaterDropColor__9daAlink_cFPC13J3DGXColorS10              */
void daAlink_c::setWaterDropColor(const J3DGXColorS10* i_color) {
    static const GXColorS10 notColor0 = {0x00, 0x00, 0x00, 0xFF};
    J3DGXColorS10* var_r31;

    if (&field_0x32a0[0] == i_color) {
        if (checkNoResetFlg2(FLG2_UNK_80000) || checkZoraWearAbility() ||
            checkMagicArmorWearAbility())
        {
            var_r31 = (J3DGXColorS10*)&notColor0;
            i_color = (J3DGXColorS10*)&notColor0;
        } else {
            var_r31 = (J3DGXColorS10*)&i_color[1];
        }
    } else {
        var_r31 = (J3DGXColorS10*)i_color;
    }

    if (!checkNoResetFlg2(FLG2_UNK_80000)) {
        if (checkZoraWearAbility()) {
            field_0x064C->getMaterialNodePointer(13)->setTevColor(1, i_color);
            field_0x064C->getMaterialNodePointer(0)->setTevColor(1, i_color);
            field_0x064C->getMaterialNodePointer(1)->setTevColor(1, i_color);
            mpLinkHatModel->getModelData()->getMaterialNodePointer(1)->setTevColor(1, i_color);
        } else if (checkMagicArmorWearAbility()) {
            field_0x064C->getMaterialNodePointer(11)->setTevColor(1, i_color);
            field_0x064C->getMaterialNodePointer(10)->setTevColor(1, i_color);
            field_0x064C->getMaterialNodePointer(9)->setTevColor(1, i_color);
            field_0x064C->getMaterialNodePointer(8)->setTevColor(1, i_color);
            field_0x064C->getMaterialNodePointer(6)->setTevColor(1, i_color);
            mpLinkHatModel->getModelData()->getMaterialNodePointer(2)->setTevColor(1, i_color);
            mpLinkHatModel->getModelData()->getMaterialNodePointer(1)->setTevColor(1, i_color);
        } else if (checkCasualWearFlg()) {
            field_0x064C->getMaterialNodePointer(7)->setTevColor(1, i_color);
            mpLinkHatModel->getModelData()->getMaterialNodePointer(0)->setTevColor(1, i_color);
            field_0x064C->getMaterialNodePointer(5)->setTevColor(1, var_r31);
        } else {
            field_0x064C->getMaterialNodePointer(17)->setTevColor(1, i_color);
            field_0x064C->getMaterialNodePointer(9)->setTevColor(1, i_color);
            field_0x064C->getMaterialNodePointer(0)->setTevColor(1, i_color);
            field_0x064C->getMaterialNodePointer(1)->setTevColor(1, i_color);
            field_0x064C->getMaterialNodePointer(2)->setTevColor(1, i_color);
            mpLinkHatModel->getModelData()->getMaterialNodePointer(0)->setTevColor(1, i_color);
            field_0x064C->getMaterialNodePointer(16)->setTevColor(1, var_r31);
            field_0x064C->getMaterialNodePointer(15)->setTevColor(1, var_r31);
            field_0x064C->getMaterialNodePointer(14)->setTevColor(1, var_r31);
        }
    }
}

/* 800CC7DC-800CC7FC 0C711C 0020+00 2/2 0/0 0/0 .text            initTevCustomColor__9daAlink_cFv */
void daAlink_c::initTevCustomColor() {
    tevStr.field_0x367 = 0;
    tevStr.mFogColor.r = 0;
    tevStr.mFogColor.g = 0;
    tevStr.mFogColor.b = 0;
    tevStr.field_0x360 = 0;
    tevStr.field_0x362 = 0;
}

/* 800CC7FC-800CD78C 0C713C 0F90+00 1/1 0/0 0/0 .text            draw__9daAlink_cFv */
int daAlink_c::draw() {
    if (checkWolf()) {
        g_env_light.settingTevStruct(9, &current.pos, &tevStr);
    } else {
        g_env_light.settingTevStruct(10, &current.pos, &tevStr);
    }

    initTevCustomColor();

    if (mSight.getDrawFlg() && !checkEventRun()) {
        mSight.setSight();
    }

    if (checkNoResetFlg1(FLG1_UNK_80)) {
        JPABaseEmitter* emitter_p = dComIfGp_particle_getEmitter(field_0x31c4);
        if (emitter_p != NULL) {
            if (checkPlayerNoDraw() && !checkEndResetFlg1(ERFLG1_UNK_4)) {
                emitter_p->stopDrawParticle();
            } else {
                emitter_p->playDrawParticle();
            }
        }
    }

    if (mClothesChangeWaitTimer != 0) {
        if (mProcID == PROC_METAMORPHOSE) {
            if (mProcVar3.field_0x300e > 0) {
                tevStr.mFogColor.r = 255;
            } else {
                tevStr.mFogColor.r = -255;
            }

            tevStr.mFogColor.g = tevStr.mFogColor.r;
            tevStr.mFogColor.b = tevStr.mFogColor.r;

            g_env_light.setLightTevColorType_MAJI(mpWlChangeModel, &tevStr);
            mDoExt_modelEntryDL(mpWlChangeModel);
        }
        return 1;
    }

    BOOL temp_r30 = checkPlayerNoDraw();
    BOOL var_r29 = 0;
    BOOL var_r31 = 1;

    if (field_0x06f4 != NULL) {
        field_0x06f4->getTevColorReg(0, &tevStr.mFogColor);
    } else if (mProcID == PROC_METAMORPHOSE || mProcID == PROC_DUNGEON_WARP ||
               mProcID == PROC_DUNGEON_WARP_SCN_START)
    {
        tevStr.mFogColor.r = mProcVar3.field_0x300e;
        tevStr.mFogColor.g = mProcVar3.field_0x300e;
        tevStr.mFogColor.b = mProcVar3.field_0x300e;
    } else if (field_0x346c != 0.0f) {
        f32 var_f2 = fabsf(field_0x346c);
        tevStr.mFogColor.r = var_f2 * daAlinkHIO_wolf_c0::m.mLightDropR;
        tevStr.mFogColor.g = var_f2 * daAlinkHIO_wolf_c0::m.mLightDropG;
        tevStr.mFogColor.b = var_f2 * daAlinkHIO_wolf_c0::m.mLightDropB;
    } else if (checkFreezeDamage()) {
        tevStr.mFogColor.r = daAlinkHIO_damage_c0::m.mFreezeR;
        tevStr.mFogColor.g = daAlinkHIO_damage_c0::m.mFreezeG;
        tevStr.mFogColor.b = daAlinkHIO_damage_c0::m.mFreezeB;
    } else if (mDamageTimer != 0) {
        if (!checkMagicArmorNoDamage()) {
            int color_timer = mDamageTimer + mDamageColorTime;

            int r, g, b;
            if (color_timer > 32) {
                r = daAlinkHIO_damage_c0::m.mDamageR0;
                g = daAlinkHIO_damage_c0::m.mDamageG0;
                b = daAlinkHIO_damage_c0::m.mDamageB0;
            } else if (color_timer > 16) {
                r = daAlinkHIO_damage_c0::m.mDamageR1;
                g = daAlinkHIO_damage_c0::m.mDamageG1;
                b = daAlinkHIO_damage_c0::m.mDamageB1;
            } else {
                r = daAlinkHIO_damage_c0::m.mDamageR2;
                g = daAlinkHIO_damage_c0::m.mDamageG2;
                b = daAlinkHIO_damage_c0::m.mDamageB2;
            }

            f32 var_f2 = fabsf(cM_ssin(color_timer * 0x800));
            tevStr.field_0x360 = r * var_f2;
            tevStr.field_0x361 = g * var_f2;
            tevStr.field_0x362 = b * var_f2;
            var_r31 = 0;
        }
    } else if (field_0x3006 != 0) {
        f32 temp_f4 = 1.0f - (field_0x3006 * (1.0f / daAlinkHIO_damage_c0::m.mFreezeTime));
        f32 temp_f3 = 1.0f - temp_f4;

        tevStr.mFogColor.r = (temp_f4 * daAlinkHIO_damage_c0::m.mFreezeInitR) +
                              (temp_f3 * daAlinkHIO_damage_c0::m.mFreezeR);
        tevStr.mFogColor.g = (temp_f4 * daAlinkHIO_damage_c0::m.mFreezeInitG) +
                              (temp_f3 * daAlinkHIO_damage_c0::m.mFreezeG);
        tevStr.mFogColor.b = (temp_f4 * daAlinkHIO_damage_c0::m.mFreezeInitB) +
                              (temp_f3 * daAlinkHIO_damage_c0::m.mFreezeB);
    } else if (field_0x32b0[0].r != 0) {
        tevStr.mFogColor.r = field_0x32b0[0].r;
        tevStr.mFogColor.g = field_0x32b0[0].g;
        tevStr.mFogColor.b = field_0x32b0[0].b;
        var_r29 = 1;
    } else {
        var_r31 = 0;
    }

    if (!checkWolf()) {
        if (var_r31) {
            if (checkMagicArmorWearAbility() && mClothesChangeWaitTimer == 0) {
                mpLinkModel->getModelData()->removeTevRegAnimator(mMagicArmorBodyBrk);
                mpLinkHatModel->getModelData()->removeTevRegAnimator(mMagicArmorHeadBrk);
            }

            if (var_r29) {
                setWaterDropColor(&field_0x32b0[1]);
            } else {
                mSwordUpColorIntensity = 0.0f;
                setWaterDropColor((J3DGXColorS10*)&tevStr.mFogColor);
            }
        } else {
            if (checkMagicArmorWearAbility()) {
                mpLinkModel->getModelData()->entryTevRegAnimator(mMagicArmorBodyBrk);
                mpLinkHatModel->getModelData()->entryTevRegAnimator(mMagicArmorHeadBrk);
            }

            setWaterDropColor(&field_0x32a0[0]);
        }
    } else if (var_r31 && !var_r29) {
        mSwordUpColorIntensity = 0.0f;
    }

    if (checkWolf()) {
        dComIfGd_setListDark();
        modelDraw(mpLinkModel, temp_r30);

        if (dComIfGs_isEventBit(0x510)) {
            for (int i = 0; i < 4; i++) {
                modelDraw(mpWlChainModels[i], temp_r30);
            }
        }

        tevStr.field_0x360 = 0;
        tevStr.field_0x361 = 0;
        tevStr.field_0x362 = 0;

        if (checkSwordDraw()) {
            modelDraw(mSwordModel, temp_r30);
            modelDraw(mSheathModel, temp_r30);
        }

        if (checkShieldDraw()) {
            modelDraw(mShieldModel, temp_r30);
        }

        if (mHeldItemModel != NULL) {
            if (mEquipItem == 0x109) {
                dComIfGd_setListMiddle();
            } else if (mEquipItem == 0x10A) {
                mHeldItemModel->getModelData()->entryTexMtxAnimator(field_0x0718);
            }

            modelDraw(mHeldItemModel, temp_r30);
        }

        dComIfGd_setList();
    } else {
        setDrawHand();

        if (dComIfGp_checkCameraAttentionStatus(field_0x317c, 0x20)) {
            if (field_0x06e8 != NULL) {
                field_0x06e8->hide();
            }

            field_0x06f0->hide();

            if (checkHookshotReadyMaterialOffMode()) {
                for (u16 i = 0; i < mFallVoiceInit; i++) {
                    if (!(field_0x32cc & (1 << i))) {
                        field_0x064C->getMaterialNodePointer(i)->getShape()->hide();
                    }
                }
            }
        }

        modelDraw(mpLinkModel, temp_r30);

        if (dComIfGp_checkCameraAttentionStatus(field_0x317c, 0x20)) {
            if (checkHookshotReadyMaterialOffMode()) {
                for (u16 i = 0; i < mFallVoiceInit; i++) {
                    if (!(field_0x32cc & (1 << i))) {
                        field_0x064C->getMaterialNodePointer(i)->getShape()->show();
                    }
                }

                if (!checkZoraWearMaskDraw() && checkZoraWearAbility()) {
                    field_0x06f0->hide();
                }
            }

            if (field_0x06e8 != NULL) {
                field_0x06e8->show();
            }

            if (checkZoraWearMaskDraw() || !checkZoraWearAbility()) {
                field_0x06f0->show();
            }
        }

        modelDraw(mpLinkHandModel, temp_r30);
        if (field_0x2f92 == 0xFB) {
            modelDraw(mpDemoHLTmpModel, temp_r30);
        }

        if (field_0x2f93 == 0xFB) {
            modelDraw(mpDemoHRTmpModel, temp_r30);
        }

        BOOL var_r3 = temp_r30 || dComIfGp_checkCameraAttentionStatus(field_0x317c, 0x20);

        modelDraw(mpLinkHatModel, var_r3);

        if (checkNoResetFlg1(FLG1_UNK_10)) {
            modelDraw(mpDemoFCBlendModel, var_r3);
            modelDraw(mpDemoFCTongueModel, var_r3);
        } else {
            modelDraw(mpLinkFaceModel, var_r3);
        }

        tevStr.field_0x360 = 0;
        tevStr.field_0x361 = 0;
        tevStr.field_0x362 = 0;

        if (checkSwordDraw()) {
            if (!checkNoResetFlg3(FLG3_UNK_80000000)) {
                modelDraw(mSwordModel, var_r3);
            }

            if (!checkWoodSwordEquip()) {
                modelDraw(mSheathModel, var_r3);
            }
        }

        if (checkShieldDraw()) {
            BOOL var_r24_2;
            if (checkWoodShieldEquip() && field_0x2fcb != 0 && mProcID != PROC_METAMORPHOSE) {
                tevStr.mFogColor.r = -((120 - field_0x2fcb) * 32) / 120;
                tevStr.mFogColor.g = tevStr.mFogColor.r;
                tevStr.mFogColor.b = tevStr.mFogColor.r;
                var_r24_2 = 1;
            } else {
                var_r24_2 = 0;
            }

            modelDraw(mShieldModel, var_r3);
            if (var_r24_2) {
                tevStr.mFogColor.r = 0;
                tevStr.mFogColor.g = 0;
                tevStr.mFogColor.b = 0;
            }
        }

        if (var_r29) {
            tevStr.mFogColor.r = 0;
            tevStr.mFogColor.g = 0;
            tevStr.mFogColor.b = 0;
        }

        if (checkItemDraw()) {
            changeHookshotDrawModel();
            modelDraw(mHeldItemModel, temp_r30);

            if (mpHookTipModel != NULL) {
                modelDraw(mpHookTipModel, temp_r30);
            }

            if (mEquipItem == W_HOOKSHOT && !checkPlayerGuardAndAttack() &&
                !checkNoResetFlg0(FLG0_UNK_2))
            {
                if (field_0x0710 != NULL) {
                    modelDraw(field_0x0710, temp_r30);
                }

                if (field_0x0714 != NULL) {
                    modelDraw(field_0x0714, temp_r30);
                }
            }

            changeHookshotDrawModel();

            if (mpHookChain != NULL && !temp_r30 &&
                ((checkHookshotItem(mEquipItem) && (mHeldItemRootPos.abs(mHookshotTopPos) > 1.0f ||
                                                    field_0x3810.abs(mIronBallBgChkPos) > 1.0f)) ||
                 mEquipItem == IRONBALL))
            {
                dComIfGd_getOpaListDark()->entryImm(mpHookChain, 0);
            }
        }

        if (checkNoResetFlg2(FLG2_UNK_1)) {
            modelDraw(mpKanteraModel, temp_r30);
            preKandelaarDraw();
            modelDraw(mpKanteraGlowModel, temp_r30);
        } else if (checkNoResetFlg2(FLG2_UNK_20000)) {
            basicModelDraw(mpKanteraModel);
            preKandelaarDraw();
            basicModelDraw(mpKanteraGlowModel);
        }

        if (checkEquipHeavyBoots()) {
            GXColorS10 color = tevStr.mFogColor;
            for (int i = 0; i < 2; i++) {
                JPABaseEmitter* emitter_p = dComIfGp_particle_getEmitter(field_0x3228[i][0]);

                if (emitter_p != NULL) {
                    tevStr.mFogColor.r = 5;
                    tevStr.mFogColor.g = tevStr.mFogColor.r;
                    tevStr.mFogColor.b = tevStr.mFogColor.r;
                } else {
                    tevStr.mFogColor = color;
                }

                modelDraw(mpLinkBootModels[i], temp_r30);
            }

            tevStr.mFogColor = color;
        }
    }

    if (!checkCanoeRide() && !dComIfGp_checkCameraAttentionStatus(field_0x317c, 0x10000) &&
        !checkNoResetFlg2(FLG2_PLAYER_SHADOW))
    {
        shadowDraw();
    }

    if (m_swordBlur.field_0x14 > 0) {
        dComIfGd_entryZSortXluList(&m_swordBlur, m_swordBlur.field_0x308[0]);
    }

    return 1;
}

/* 800CD78C-800CD7AC 0C80CC 0020+00 1/0 0/0 0/0 .text            daAlink_Draw__FP9daAlink_c */
static int daAlink_Draw(daAlink_c* i_this) {
    return i_this->draw();
}

/* 800CD7AC-800CE208 0C80EC 0A5C+00 1/1 0/0 0/0 .text            __dt__9daAlink_cFv */
daAlink_c::~daAlink_c() {
    dComIfGp_clearPlayerStatus0(0, ~0x400030);
    dComIfGp_clearPlayerStatus1(0, 0x7FB7B78);

    mZ2Link.deleteKantera();
    mZ2Link.deleteObject();
    if (mpHookSound != NULL) {
        mpHookSound->deleteObject();
        mpHookSound = NULL;
    }

    if (checkNoResetFlg2(FLG2_UNK_80)) {
        offNoResetFlg2(FLG2_UNK_80);
        dComIfGp_2dShowOn();
    }

    if (mProcID == PROC_WARP || (mProcID == PROC_TOOL_DEMO && mProcVar2.field_0x300c != 0)) {
        changeWarpMaterial(WARP_MAT_MODE_1);
    }

    dComIfG_resDelete(&mPhaseReq, mArcName);
    if (mpArcHeap != NULL) {
        mDoExt_destroyExpHeap(mpArcHeap);
    }

    dComIfG_resDelete(&mShieldPhaseReq, mShieldArcName);
    if (mpShieldArcHeap != NULL) {
        mDoExt_destroyExpHeap(mpShieldArcHeap);
    }

    dKy_plight_cut(&field_0x2f5c);

    dComIfGp_setPlayer(0, NULL);
    dComIfGp_setLinkPlayer(NULL);
}

/* 800CE208-800CE294 0C8B48 008C+00 1/0 0/0 0/0 .text            daAlink_Delete__FP9daAlink_c */
static int daAlink_Delete(daAlink_c* i_this) {
    if (i_this->getClothesChangeWaitTimer() != 0) {
        i_this->loadModelDVD();
        return 0;
    } else if (i_this->getShieldChangeWaitTimer() != 0) {
        i_this->loadShieldModelDVD();
        return 0;
    } else {
        i_this->~daAlink_c();
        return 1;
    }
}

/* 800CE294-800CE468 0C8BD4 01D4+00 1/1 0/0 0/0 .text checkNoSubjectModeCamera__9daAlink_cFv */
bool daAlink_c::checkNoSubjectModeCamera() {
    return dCam_getBody()->Type() == dCam_getBody()->GetCameraTypeFromCameraName("Rotary") ||
           dCam_getBody()->Type() == dCam_getBody()->GetCameraTypeFromCameraName("Rampart2") ||
           dCam_getBody()->Type() == dCam_getBody()->GetCameraTypeFromCameraName("Allay") ||
           dCam_getBody()->Type() == dCam_getBody()->GetCameraTypeFromCameraName("AllayR") ||
           dCam_getBody()->Type() == dCam_getBody()->GetCameraTypeFromCameraName("AllayR2") ||
           dCam_getBody()->Type() == dCam_getBody()->GetCameraTypeFromCameraName("AllayS") ||
           checkCargoCarry() ||
           dCam_getBody()->Type() == dCam_getBody()->GetCameraTypeFromCameraName("StreetP") ||
           dCam_getBody()->Type() == dCam_getBody()->GetCameraTypeFromCameraName("Street");
}

/* 800CE468-800CE628 0C8DA8 01C0+00 2/2 0/0 0/0 .text acceptSubjectModeChange__9daAlink_cFv */
bool daAlink_c::acceptSubjectModeChange() {
    return dCam_getBody()->ChangeModeOK(4) &&
           !checkNoSubjectModeCamera() &&
           !checkAttentionLock() &&
           !checkHorseLieAnime() &&
           !checkEventRun() &&
           !checkModeFlg(0x310040) &&
           (checkNoUpperAnime() || checkHorseTiredAnime() || checkGrabAnime() || checkWolfGrabAnime()) &&
           !(checkWolf() && checkWolfWaitSlipPolygon() && mLinkAcch.i_ChkGroundHit());
}

/* 800CE628-800CE728 0C8F68 0100+00 5/5 0/0 0/0 .text            checkSubjectAction__9daAlink_cFv */
int daAlink_c::checkSubjectAction() {
    if (acceptSubjectModeChange()) {
        onResetFlg0(RFLG0_UNK_4000000);

        if (dComIfGp_checkCameraAttentionStatus(field_0x317c, 0x1000)) {
            if (checkModeFlg(0x400)) {
                if (checkCanoeRide()) {
                    return procCanoeSubjectivityInit();
                } else if (checkBoardRide()) {
                    return procBoardSubjectivityInit();
                } else {
                    return procHorseSubjectivityInit();
                }
            }

            if (checkModeFlg(0x20000)) {
                return procWolfRopeSubjectivityInit();
            }

            if (checkModeFlg(0x40000)) {
                return procCoSwimSubjectivityInit();
            }

            return procCoSubjectivityInit();
        }
    }

    return 0;
}

/* 800CE728-800CE8A0 0C9068 0178+00 1/1 0/0 0/0 .text            checkBodyAngleX__9daAlink_cFs */
void daAlink_c::checkBodyAngleX(s16 param_0) {
    // NONMATCHING
}

/* 800CE8A0-800CEAF4 0C91E0 0254+00 15/15 0/0 0/0 .text setBodyAngleToCamera__9daAlink_cFv */
BOOL daAlink_c::setBodyAngleToCamera() {
    // NONMATCHING
    return 0;
}

/* 800CEAF4-800CEB58 0C9434 0064+00 9/9 0/0 0/0 .text            setSubjectMode__9daAlink_cFv */
void daAlink_c::setSubjectMode() {
    dComIfGp_setPlayerStatus0(0, 0x2000);
    seStartSystem(Z2SE_SUBJ_VIEW_IN);
}

/* 800CEB58-800CEBD8 0C9498 0080+00 2/2 0/0 0/0 .text            subjectCancelTrigger__9daAlink_cFv
 */
BOOL daAlink_c::subjectCancelTrigger() {
    if (checkWolf() || checkNotBattleStage() || !i_checkSwordGet() ||
        (checkModeFlg(0x40000) && !checkEquipHeavyBoots()))
    {
        return itemTriggerCheck(BTN_B);
    }

    return false;
}

/* 800CEBD8-800CECE4 0C9518 010C+00 9/9 0/0 0/0 .text            checkSubjectEnd__9daAlink_cFi */
int daAlink_c::checkSubjectEnd(BOOL i_playSound) {
    setDoStatus(0x12);

    if (checkEventRun() || checkEquipAnime() || doTrigger() || checkSetItemTrigger(HAWK_EYE) || subjectCancelTrigger() || checkEndResetFlg0(ERFLG0_UNK_80000000) || dComIfGp_checkCameraAttentionStatus(field_0x317c, 0x2000)) {
        if (i_playSound) {
            seStartSystem(Z2SE_SUBJ_VIEW_OUT);
        }

        onResetFlg0(RFLG0_UNK_10000000);
        return true;
    }

    return false;
}

/* 800CECE4-800CED48 0C9624 0064+00 1/1 0/0 0/0 .text searchPeepObj__9daAlink_cFP10fopAc_ac_cPv */
void daAlink_c::searchPeepObj(fopAc_ac_c* i_actor, void* i_data) {
    if (fopAcM_GetName(i_actor) == PROC_KYTAG05) {
        f32 var_f31 = current.pos.abs2(i_actor->current.pos);
        if (var_f31 < field_0x3478) {
            field_0x3478 = var_f31;
            *(fopAc_ac_c**)i_data = i_actor;
        }
    }
}

/* 800CED48-800CED84 0C9688 003C+00 1/1 0/0 0/0 .text daAlink_searchPeepObj__FP10fopAc_ac_cPv */
static int daAlink_searchPeepObj(fopAc_ac_c* i_actor, void* i_data) {
    daAlink_getAlinkActorClass()->searchPeepObj(i_actor, i_data);
    return 0;
}

/* 800CED84-800CEE08 0C96C4 0084+00 2/2 0/0 0/0 .text procCoSubjectivityInit__9daAlink_cFv */
int daAlink_c::procCoSubjectivityInit() {
    commonProcInit(PROC_SUBJECTIVITY);
    mNormalSpeed = 0.0f;

    setSubjectMode();
    field_0x2fe6 = shape_angle.y;

    if (checkWolf()) {
        setSingleAnimeWolfBaseSpeed(WANM_WAIT, 0.0f, 3.0f);
    } else {
        setSingleAnimeBaseSpeed(ANM_WAIT, 0.0f, 3.0f);
    }

    return 1;
}

/* 800CEE08-800CEF70 0C9748 0168+00 1/0 0/0 0/0 .text            procCoSubjectivity__9daAlink_cFv */
int daAlink_c::procCoSubjectivity() {
    onResetFlg0(RFLG0_UNK_4000000);
    setTalkStatus();

    if (orderTalk(1)) {
        return 1;
    }

    if ((checkWolf() && checkWolfGroundSpecialMode()) || (!checkWolf() && checkGroundSpecialMode())) {
        return 1;
    }

    if (checkSubjectEnd(FALSE) || (dComIfGp_checkPlayerStatus0(0, 0x200000) && checkSetItemTrigger(HAWK_EYE))) {
        seStartSystem(Z2SE_SUBJ_VIEW_OUT);
        checkWaitAction();
    } else if (!checkWolf() && (checkItemAction() || checkItemChangeFromButton())) {
        if (checkUpperReadyThrowAnime()) {
            field_0x310a = mBodyAngle.x;
        }

        return 1;
    } else {
        setBodyAngleToCamera();
    }

    return 1;
}

/* 800CEF70-800CF018 0C98B0 00A8+00 1/1 0/0 0/0 .text procCoSwimSubjectivityInit__9daAlink_cFv */
int daAlink_c::procCoSwimSubjectivityInit() {
    commonProcInit(PROC_SWIM_SUBJECTIVITY);
    mNormalSpeed = 0.0f;

    setSubjectMode();

    if (checkWolf()) {
        setSingleAnimeWolfBaseSpeed(WANM_SWIM_WAIT, daAlinkHIO_wlSwim_c0::m.field_0x88,
                                    daAlinkHIO_wlSwim_c0::m.field_0x68);
    } else {
        setSingleAnimeBaseSpeed(ANM_SWIM_WAIT, daAlinkHIO_swim_c0::m.mWaitAnmSpeed,
                                daAlinkHIO_swim_c0::m.mWaitInterpolation);
    }

    dComIfGp_setPlayerStatus0(0, 0x100000);
    mProcVar2.field_0x300c = 0;

    return 1;
}

/* 800CF018-800CF100 0C9958 00E8+00 1/0 0/0 0/0 .text procCoSwimSubjectivity__9daAlink_cFv */
int daAlink_c::procCoSwimSubjectivity() {
    onResetFlg0(RFLG0_UNK_4000000);
    setTalkStatus();

    if (orderTalk(1)) {
        return 1;
    }

    if (checkNoResetFlg0(FLG0_SWIM_UP)) {
        setSwimUpDownOffset();
    }

    if (checkSubjectEnd(FALSE)) {
        seStartSystem(Z2SE_SUBJ_VIEW_OUT);

        if (checkWolf()) {
            procWolfSwimWaitInit(0);
        } else {
            procSwimWaitInit(0);
        }
    } else {
        setBodyAngleToCamera();
    }

    return 1;
}

/* 800CF100-800CF1B8 0C9A40 00B8+00 1/1 0/0 0/0 .text procCoPeepSubjectivityInit__9daAlink_cFv */
int daAlink_c::procCoPeepSubjectivityInit() {
    commonProcInit(PROC_PEEP_SUBJECTIVITY);
    mNormalSpeed = 0.0f;

    if (checkWolf()) {
        setSingleAnimeWolfBaseSpeed(WANM_WAIT, 0.0f, 3.0f);
    } else {
        setSingleAnimeBaseSpeed(ANM_WAIT, 0.0f, 3.0f);
    }

    onPlayerNoDraw();
    setSpecialGravity(0.0f, maxFallSpeed, 0);
    speed.y = 0.0f;
    dComIfGp_setPlayerStatus0(0, 0x2000);
    field_0x3478 = 10000000.0f;
    mProcVar2.field_0x300c = shape_angle.y;

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
    return mpLinkModel->getAnmMtx(field_0x30c0);
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
    return mpLinkModel->getAnmMtx(field_0x30b8);
}

/* 800CF2F8-800CF314 0C9C38 001C+00 1/0 0/0 0/0 .text            getRightHandMatrix__9daAlink_cFv */
MtxP daAlink_c::getRightHandMatrix() {
    return mpLinkModel->getAnmMtx(field_0x30ba);
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
    return mpLinkModel->getAnmMtx(field_0x30c2);
}

/* 800CF344-800CF380 0C9C84 003C+00 1/0 0/0 0/0 .text            checkPlayerNoDraw__9daAlink_cFv */
u32 daAlink_c::checkPlayerNoDraw() {
    return dComIfGp_checkCameraAttentionStatus(field_0x317c, 2) ||
           checkNoResetFlg0(FLG0_PLAYER_NO_DRAW);
}

/* 800CF380-800CFC3C 0C9CC0 08BC+00 1/1 0/0 0/0 .text            __ct__9daAlink_cFv */
daAlink_c::daAlink_c()
    : mAnmHeap3(0), mAnmHeap4(0), mFaceBtpHeap(0x800), mFaceBtkHeap(0x400), mFaceBckHeap(0xC00),
      mAnmHeap9(0x800) {}

/* 800CFC3C-800CFC78 0CA57C 003C+00 2/2 0/0 0/0 .text __dt__Q29daAlink_c14firePointEff_cFv */
daAlink_c::firePointEff_c::~firePointEff_c() {}

/* 800CFC78-800CFC7C 0CA5B8 0004+00 1/1 0/0 0/0 .text __ct__Q29daAlink_c14firePointEff_cFv */
daAlink_c::firePointEff_c::firePointEff_c() {
    /* empty function */
}

/* 800CFC7C-800CFCB8 0CA5BC 003C+00 0/0 2/2 0/0 .text            __dt__15LIGHT_INFLUENCEFv */
extern "C" void __dt__15LIGHT_INFLUENCEFv() {
    // NONMATCHING
}

/* 800CFCB8-800CFCF4 0CA5F8 003C+00 2/2 0/0 0/0 .text            __dt__18daAlink_footData_cFv */
daAlink_footData_c::~daAlink_footData_c() {}

/* 800CFCF4-800CFCF8 0CA634 0004+00 1/1 0/0 0/0 .text            __ct__18daAlink_footData_cFv */
daAlink_footData_c::daAlink_footData_c() {
    /* empty function */
}

/* 800CFCF8-800CFD58 0CA638 0060+00 1/0 0/0 0/0 .text __dt__29dAlink_bottleWaterPcallBack_cFv */
// dAlink_bottleWaterPcallBack_c::~dAlink_bottleWaterPcallBack_c() {
extern "C" void __dt__29dAlink_bottleWaterPcallBack_cFv() {
    // NONMATCHING
}

/* 800CFD58-800CFDF4 0CA698 009C+00 1/0 0/0 0/0 .text            __dt__14daAlink_blur_cFv */
// daAlink_blur_c::~daAlink_blur_c() {
extern "C" void __dt__14daAlink_blur_cFv() {
    // NONMATCHING
}

/* 800CFDF4-800CFE68 0CA734 0074+00 1/0 0/0 0/0 .text            __dt__15daAlink_sight_cFv */
// daAlink_sight_c::~daAlink_sight_c() {
extern "C" void __dt__15daAlink_sight_cFv() {
    // NONMATCHING
}

/* 800CFE68-800CFEB0 0CA7A8 0048+00 1/0 0/0 0/0 .text            __dt__20daAlink_lockCursor_cFv */
// daAlink_lockCursor_c::~daAlink_lockCursor_c() {
extern "C" void __dt__20daAlink_lockCursor_cFv() {
    // NONMATCHING
}

/* 800CFEB0-800CFEC4 0CA7F0 0014+00 1/1 0/0 0/0 .text            checkRideOn__9daAlink_cCFv */
extern "C" BOOL checkRideOn__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mRideStatus != 0;
}

/* 800CFEC4-800CFEF4 0CA804 0030+00 1/1 0/0 0/0 .text            dComIfGp_att_getCatghTarget__Fv */
extern "C" dAttCatch_c* dComIfGp_att_getCatghTarget__Fv() {
    // NONMATCHING
    return 0;
}

/* 800CFEF4-800CFF2C 0CA834 0038+00 1/1 0/0 0/0 .text            mDoAud_setLinkHp__Fll */
extern "C" void mDoAud_setLinkHp__Fll(s32 param_0, s32 param_1) {
    if (Z2GetLink() != NULL) {
        Z2GetLink()->setLinkHp(param_0, param_1);
    }
}

/* 800CFF2C-800CFF3C 0CA86C 0010+00 1/1 0/0 0/0 .text            dComIfGs_getLife__Fv */
extern "C" u16 dComIfGs_getLife__Fv() {
    return g_dComIfG_gameInfo.info.getPlayer().getPlayerStatusA().getLife();
}

/* 800CFF3C-800CFF4C 0CA87C 0010+00 1/1 0/0 0/0 .text            dComIfGp_getRStatus__Fv */
extern "C" u8 dComIfGp_getRStatus__Fv() {
    return g_dComIfG_gameInfo.play.getRStatus();
}

/* 800CFF4C-800CFFA4 0CA88C 0058+00 1/1 0/0 0/0 .text            checkAttentionLock__9daAlink_cFv */
extern "C" BOOL checkAttentionLock__9daAlink_cFv(daAlink_c* this_) {
    return this_->mAttention->Lockon();
}

/* 800CFFA4-800CFFC0 0CA8E4 001C+00 1/1 0/0 0/0 .text            dComIfGp_setItemLifeCount__FfUc */
extern "C" void dComIfGp_setItemLifeCount__FfUc(f32 amount, u8 type) {
    g_dComIfG_gameInfo.play.setItemLifeCount(amount, type);
}

/* 800CFFC0-800CFFE0 0CA900 0020+00 1/1 0/0 0/0 .text            cMtx_multVec__FPA4_CfPC3VecP3Vec */
extern "C" void cMtx_multVec__FPA4_CfPC3VecP3Vec() {
    // NONMATCHING
}

/* 800CFFE0-800CFFF4 0CA920 0014+00 1/1 0/0 0/0 .text            getAnmMtx__8J3DModelFi */
extern "C" MtxP getAnmMtx__8J3DModelFi(J3DModel* this_, int i) {
    return this_->mMtxBuffer->getAnmMtx(i);
}

/* 800CFFF4-800D0020 0CA934 002C+00 1/1 0/0 0/0 .text            setBaseTRMtx__8J3DModelFPA4_f */
extern "C" void setBaseTRMtx__8J3DModelFPA4_f(J3DModel* this_, MtxP matrix) {
    MTXCopy(matrix, this_->mBaseTransformMtx);
}

/* 800D0020-800D0048 0CA960 0028+00 1/1 0/0 0/0 .text checkFmChainGrabAnime__9daAlink_cCFv */
extern "C" BOOL checkFmChainGrabAnime__9daAlink_cCFv(daAlink_c* this_) {
    return this_->checkUpperAnime(0x62) || this_->checkUpperAnime(0x2A0);
}

/* 800D0048-800D005C 0CA988 0014+00 1/1 0/0 0/0 .text checkSmallUpperGuardAnime__9daAlink_cCFv */
extern "C" BOOL checkSmallUpperGuardAnime__9daAlink_cCFv(daAlink_c* this_) {
    return this_->checkUpperAnime(daAlink_c::ANM_SMALL_GUARD);
}

/* 800D005C-800D008C 0CA99C 0030+00 1/1 0/0 0/0 .text            dComIfGp_evmng_startCheck__FPCc */
extern "C" void dComIfGp_evmng_startCheck__FPCc() {
    // NONMATCHING
}

/* 800D008C-800D00BC 0CA9CC 0030+00 1/1 0/0 0/0 .text            mDoAud_setLinkGroupInfo__FUc */
extern "C" void mDoAud_setLinkGroupInfo__FUc(u8 param_0) {
    if (Z2GetLink() != NULL) {
        Z2GetLink()->setLinkGroupInfo(param_0);
    }
}

/* 800D00BC-800D00D0 0CA9FC 0014+00 1/1 0/0 0/0 .text getAnm__25mDoExt_MtxCalcAnmBlendTblFi */
extern "C" void getAnm__25mDoExt_MtxCalcAnmBlendTblFi() {
    // NONMATCHING
}

/* 800D00D0-800D00DC 0CAA10 000C+00 1/1 0/0 0/0 .text            ChkRoofHit__9dBgS_AcchCFv */
extern "C" bool ChkRoofHit__9dBgS_AcchCFv(dBgS_Acch* this_) {
    return this_->m_flags & dBgS_Acch::ROOF_HIT;
}

/* 800D00DC-800D00EC 0CAA1C 0010+00 1/1 0/0 0/0 .text            ClrGroundHit__9dBgS_AcchFv */
extern "C" void ClrGroundHit__9dBgS_AcchFv(dBgS_Acch* this_) {
    this_->m_flags &= ~dBgS_Acch::GROUND_HIT;
}

/* 800D00EC-800D0110 0CAA2C 0024+00 1/1 0/0 0/0 .text            checkReinRide__9daAlink_cCFv */
extern "C" u32 checkReinRide__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mRideStatus == 1 || this_->mRideStatus == 2;
}

/* 800D0110-800D0138 0CAA50 0028+00 1/1 0/0 0/0 .text checkWolfEnemyThrowAnime__9daAlink_cCFv */
extern "C" BOOL checkWolfEnemyThrowAnime__9daAlink_cCFv(daAlink_c* this_) {
    return this_->checkUpperAnime(0x2BD) || this_->checkUpperAnime(0x2BE);
}

/* 800D0138-800D014C 0CAA78 0014+00 1/1 0/0 0/0 .text            checkSpecialDemoMode__9daAlink_cCFv
 */
extern "C" BOOL checkSpecialDemoMode__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mDemo.getDemoType() == 5;
}

/* 800D014C-800D0164 0CAA8C 0018+00 1/1 0/0 0/0 .text            setMidnaTalkStatus__9daAlink_cFUc
 */
extern "C" void setMidnaTalkStatus__9daAlink_cFUc(daAlink_c* this_, u8 status) {
    dComIfGp_setZStatus(status, 0);
}

/* 800D0164-800D0180 0CAAA4 001C+00 1/1 0/0 0/0 .text            set3DStatus__9daAlink_cFUcUc */
extern "C" void set3DStatus__9daAlink_cFUcUc(daAlink_c* this_, u8 status, u8 direction) {
    dComIfGp_set3DStatus(status, direction, 0);
}

/* 800D0180-800D018C 0CAAC0 000C+00 1/1 0/0 0/0 .text            offSetFlg__16daAlink_matAnm_cFv */
extern "C" void offSetFlg__16daAlink_matAnm_cFv(daAlink_matAnm_c* this_) {
    this_->mSetFlag = 0;
}

/* 800D018C-800D0198 0CAACC 000C+00 1/1 0/0 0/0 .text            checkModeFlg__9daAlink_cCFUl */
extern "C" u32 checkModeFlg__9daAlink_cCFUl(daAlink_c* this_, u32 pFlag) {
    return this_->mModeFlg & pFlag;
}

/* 800D0198-800D01A0 0CAAD8 0008+00 1/0 0/0 0/0 .text getShieldChangeWaitTimer__9daAlink_cCFv */
extern "C" u8 getShieldChangeWaitTimer__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mShieldChangeWaitTimer;
}

/* 800D01A0-800D01A8 0CAAE0 0008+00 1/0 0/0 0/0 .text getClothesChangeWaitTimer__9daAlink_cCFv */
extern "C" u8 getClothesChangeWaitTimer__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mClothesChangeWaitTimer;
}

/* 800D01A8-800D01E0 0CAAE8 0038+00 1/0 0/0 0/0 .text            checkHorseStart__9daAlink_cFv */
extern "C" BOOL checkHorseStart__9daAlink_cFv(daAlink_c* this_) {
    return this_->checkHorseStart(this_->getLastSceneMode(), this_->getStartMode());
}

/* 800D01E0-800D0208 0CAB20 0028+00 1/0 0/0 0/0 .text            checkCutTurnCharge__9daAlink_cCFv
 */
extern "C" BOOL checkCutTurnCharge__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_CUT_TURN_MOVE && this_->mProcVar2.field_0x300c == 0;
}

/* 800D0208-800D0228 0CAB48 0020+00 1/0 0/0 0/0 .text checkAcceptDungeonWarpAlink__9daAlink_cFi */
extern "C" bool checkAcceptDungeonWarpAlink__9daAlink_cFi(daAlink_c* this_) {
    return this_->checkAcceptWarp();
}

/* 800D0228-800D0274 0CAB68 004C+00 1/0 0/0 0/0 .text            getSpinnerActor__9daAlink_cFv */
extern "C" daSpinner_c* getSpinnerActor__9daAlink_cFv(daAlink_c* this_) {
    daSpinner_c* spinnerActor;

    if (!this_->checkSpinnerRide()) {
        spinnerActor = NULL;
    } else {
        spinnerActor = (daSpinner_c*)this_->mRideAcKeep.getActor();
    }
    return static_cast<daSpinner_c*>(spinnerActor);
}

/* 800D0274-800D027C 0CABB4 0008+00 1/0 0/0 0/0 .text            getSumouCounter__9daAlink_cCFv */
extern "C" s16 getSumouCounter__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcVar2.field_0x300c;
}

/* 800D027C-800D0284 0CABBC 0008+00 1/0 0/0 0/0 .text            checkSumouWithstand__9daAlink_cCFv
 */
extern "C" s16 checkSumouWithstand__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcVar3.field_0x300e;
}

/* 800D0284-800D0290 0CABC4 000C+00 1/0 0/0 0/0 .text setMidnaMsgNum__9daAlink_cFP10fopAc_ac_cUs
 */
extern "C" void setMidnaMsgNum__9daAlink_cFP10fopAc_ac_cUs(daAlink_c* this_, fopAc_ac_c* param_0, u16 pMsgNum) {
    this_->mMidnaMsgNum = pMsgNum;
    static_cast<fopAc_ac_c*>(this_->mMidnaMsg) = param_0;
}

/* 800D0290-800D029C 0CABD0 000C+00 1/0 0/0 0/0 .text            getModelMtx__9daAlink_cFv */
extern "C" MtxP getModelMtx__9daAlink_cFv(daAlink_c* this_) {
    return this_->mpLinkModel->getBaseTRMtx();
}

/* 800D029C-800D02A4 0CABDC 0008+00 1/0 0/0 0/0 .text            getInvMtx__9daAlink_cFv */
extern "C" MtxP getInvMtx__9daAlink_cFv(daAlink_c* this_) {
    return this_->mInvMtx;
}

/* 800D02A4-800D02B8 0CABE4 0014+00 1/0 0/0 0/0 .text getLinkBackBone1Matrix__9daAlink_cFv */
extern "C" MtxP getLinkBackBone1Matrix__9daAlink_cFv(daAlink_c* this_) {
    return this_->mpLinkModel->getAnmMtx(1);
}

/* 800D02B8-800D02CC 0CABF8 0014+00 1/0 0/0 0/0 .text            getWolfMouthMatrix__9daAlink_cFv */
extern "C" MtxP getWolfMouthMatrix__9daAlink_cFv(daAlink_c* this_) {
    return this_->mpLinkModel->getAnmMtx(13);
}

/* 800D02CC-800D02E0 0CAC0C 0014+00 1/0 0/0 0/0 .text getWolfBackbone2Matrix__9daAlink_cFv */
extern "C" MtxP getWolfBackbone2Matrix__9daAlink_cFv(daAlink_c* this_) {
    return this_->mpLinkModel->getAnmMtx(2);
}

/* 800D02E0-800D0334 0CAC20 0054+00 1/0 0/0 0/0 .text            getBottleMtx__9daAlink_cFv */
extern "C" MtxP getBottleMtx__9daAlink_cFv(daAlink_c* this_) {
    if (this_->mHeldItemModel != NULL && this_->checkBottleItem(this_->mEquipItem)) {
        return this_->mHeldItemModel->getBaseTRMtx();
    }

    return NULL;
}

/* 800D0334-800D0350 0CAC74 001C+00 1/0 0/0 0/0 .text            getHeadMtx__9daAlink_cFv */
extern "C" MtxP getHeadMtx__9daAlink_cFv(daAlink_c* this_) {
    return this_->mpLinkModel->getAnmMtx(this_->field_0x30b4);
}

/* 800D0350-800D0358 0CAC90 0008+00 1/0 0/0 0/0 .text            getGroundY__9daAlink_cFv */
extern "C" f32 getGroundY__9daAlink_cFv(daAlink_c* this_) {
    return this_->mLinkAcch.GetGroundH();
}

/* 800D0358-800D0360 0CAC98 0008+00 1/0 0/0 0/0 .text getBaseAnimeFrameRate__9daAlink_cCFv */
extern "C" f32 getBaseAnimeFrameRate__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mUnderFrameCtrl[0].getRate();
}

/* 800D0360-800D0368 0CACA0 0008+00 1/0 0/0 0/0 .text            getAtnActorID__9daAlink_cCFv */
extern "C" s32 getAtnActorID__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mAtnActorID;
}

/* 800D0368-800D0370 0CACA8 0008+00 1/0 0/0 0/0 .text            getItemID__9daAlink_cCFv */
extern "C" s32 getItemID__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mItemAcKeep.getID();
}

/* 800D0370-800D038C 0CACB0 001C+00 1/0 0/0 0/0 .text            getGrabActorID__9daAlink_cCFv */
extern "C" s32 getGrabActorID__9daAlink_cCFv(daAlink_c* this_) {
    if (this_->mEquipItem == noentry71) {
        return this_->mItemAcKeep.getID();
    } else {
        return this_->mGrabItemAcKeep.getID();
    }
}

/* 800D038C-800D03B4 0CACCC 0028+00 1/0 0/0 0/0 .text            setForcePutPos__9daAlink_cFRC4cXyz
 */
extern "C" void setForcePutPos__9daAlink_cFRC4cXyz(daAlink_c* this_, cXyz const& pPutPos) {
    this_->mForcePutPos = pPutPos;
    this_->onEndResetFlg1(daAlink_c::ERFLG1_UNK_2000);
}

/* 800D03B4-800D03C8 0CACF4 0014+00 1/0 0/0 0/0 .text            checkPlayerFly__9daAlink_cCFv */
extern "C" u32 checkPlayerFly__9daAlink_cCFv(daAlink_c* this_) {
    return this_->checkModeFlg(daAlink_c::MODE_SWIMMING | daAlink_c::MODE_ROPE_WALK | daAlink_c::MODE_VINE_CLIMB | daAlink_c::MODE_UNK_800 |
                          daAlink_c::MODE_NO_COLLISION | daAlink_c::MODE_CLIMB | daAlink_c::MODE_JUMP);
}

/* 800D03C8-800D03DC 0CAD08 0014+00 1/0 0/0 0/0 .text            checkFrontRoll__9daAlink_cCFv */
extern "C" BOOL checkFrontRoll__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_FRONT_ROLL;
}

/* 800D03DC-800D03F0 0CAD1C 0014+00 1/0 0/0 0/0 .text            checkWolfDash__9daAlink_cCFv */
extern "C" BOOL checkWolfDash__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_WOLF_DASH;
}

/* 800D03F0-800D0414 0CAD30 0024+00 1/0 0/0 0/0 .text            checkAutoJump__9daAlink_cCFv */
extern "C" BOOL checkAutoJump__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_AUTO_JUMP || this_->mProcID == daAlink_c::PROC_WOLF_AUTO_JUMP;
}

/* 800D0414-800D0444 0CAD54 0030+00 1/0 0/0 0/0 .text            checkSideStep__9daAlink_cCFv */
extern "C" bool checkSideStep__9daAlink_cCFv(daAlink_c* this_) {
    return (this_->mProcID == daAlink_c::PROC_SIDESTEP || this_->mProcID == daAlink_c::PROC_WOLF_SIDESTEP) && this_->mProcVar1.field_0x300a != 0;
}

/* 800D0444-800D0468 0CAD84 0024+00 1/0 0/0 0/0 .text            checkWolfTriggerJump__9daAlink_cCFv
 */
extern "C" bool checkWolfTriggerJump__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_WOLF_SIDESTEP || this_->mProcID == daAlink_c::PROC_WOLF_JUMP_ATTACK;
}

/* 800D0468-800D047C 0CADA8 0014+00 1/0 0/0 0/0 .text            checkGuardBreakMode__9daAlink_cCFv
 */
extern "C" BOOL checkGuardBreakMode__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_GUARD_BREAK;
}

/* 800D047C-800D04A4 0CADBC 0028+00 1/0 0/0 0/0 .text            checkLv3Slide__9daAlink_cCFv */
extern "C" bool checkLv3Slide__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_SLIDE && this_->mProcVar3.field_0x300e != 0;
}

/* 800D04A4-800D04B8 0CADE4 0014+00 1/0 0/0 0/0 .text checkWolfHowlDemoMode__9daAlink_cCFv */
extern "C" bool checkWolfHowlDemoMode__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_WOLF_HOWL_DEMO;
}

/* 800D04B8-800D04CC 0CADF8 0014+00 1/0 0/0 0/0 .text            checkElecDamage__9daAlink_cCFv */
extern "C" BOOL checkElecDamage__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_ELEC_DAMAGE;
}

/* 800D04CC-800D04F4 0CAE0C 0028+00 1/0 0/0 0/0 .text checkEmptyBottleSwing__9daAlink_cCFv */
extern "C" BOOL checkEmptyBottleSwing__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mEquipItem == EMPTY_BOTTLE && this_->mProcID == daAlink_c::PROC_BOTTLE_SWING;
}

/* 800D04F4-800D0508 0CAE34 0014+00 1/0 0/0 0/0 .text            checkBottleSwingMode__9daAlink_cCFv
 */
extern "C" BOOL checkBottleSwingMode__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_BOTTLE_SWING;
}

/* 800D0508-800D051C 0CAE48 0014+00 1/0 0/0 0/0 .text            checkHawkWait__9daAlink_cCFv */
extern "C" BOOL checkHawkWait__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_HAWK_SUBJECT;
}

/* 800D051C-800D0544 0CAE5C 0028+00 1/0 0/0 0/0 .text            checkGoatThrow__9daAlink_cCFv */
extern "C" BOOL checkGoatThrow__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_GOAT_CATCH && this_->mProcVar2.field_0x300c != 0;
}

/* 800D0544-800D0570 0CAE84 002C+00 1/0 0/0 0/0 .text            checkGoatThrowAfter__9daAlink_cCFv
 */
extern "C" BOOL checkGoatThrowAfter__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_GOAT_CATCH && this_->field_0x3478 > 0.0f;
}

/* 800D0570-800D0598 0CAEB0 0028+00 1/0 0/0 0/0 .text            checkWolfTagLockJump__9daAlink_cCFv
 */
extern "C" BOOL checkWolfTagLockJump__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_WOLF_TAG_JUMP && this_->field_0x3198 == 0;
}

/* 800D0598-800D05AC 0CAED8 0014+00 1/0 0/0 0/0 .text checkWolfTagLockJumpLand__9daAlink_cCFv */
extern "C" BOOL checkWolfTagLockJumpLand__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_WOLF_TAG_JUMP_LAND;
}

/* 800D05AC-800D05C0 0CAEEC 0014+00 1/0 0/0 0/0 .text            checkWolfRopeHang__9daAlink_cCFv */
extern "C" BOOL checkWolfRopeHang__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_WOLF_ROPE_HANG;
}

/* 800D05C0-800D05D4 0CAF00 0014+00 1/0 0/0 0/0 .text            checkRollJump__9daAlink_cCFv */
extern "C" BOOL checkRollJump__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_ROLL_JUMP;
}

/* 800D05D4-800D05E8 0CAF14 0014+00 1/0 0/0 0/0 .text            checkGoronRideWait__9daAlink_cCFv
 */
extern "C" BOOL checkGoronRideWait__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_GORON_RIDE_WAIT;
}

/* 800D05E8-800D05FC 0CAF28 0014+00 1/0 0/0 0/0 .text            checkWolfChain__9daAlink_cCFv */
extern "C" BOOL checkWolfChain__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_WOLF_CHAIN_WAIT;
}

/* 800D05FC-800D0610 0CAF3C 0014+00 1/0 0/0 0/0 .text            checkWolfWait__9daAlink_cCFv */
extern "C" BOOL checkWolfWait__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_WOLF_WAIT;
}

/* 800D0610-800D0624 0CAF50 0014+00 1/0 0/0 0/0 .text            checkWolfJumpAttack__9daAlink_cCFv
 */
extern "C" BOOL checkWolfJumpAttack__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_WOLF_JUMP_ATTACK;
}

/* 800D0624-800D0638 0CAF64 0014+00 1/0 0/0 0/0 .text            checkWolfRSit__9daAlink_cCFv */
extern "C" BOOL checkWolfRSit__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_WOLF_SIT;
}

/* 800D0638-800D0660 0CAF78 0028+00 1/0 0/0 0/0 .text            checkBottleDrinkEnd__9daAlink_cCFv
 */
extern "C" BOOL checkBottleDrinkEnd__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_BOTTLE_DRINK && this_->mProcVar3.field_0x300e != 0;
}

/* 800D0660-800D0674 0CAFA0 0014+00 1/0 0/0 0/0 .text            checkWolfDig__9daAlink_cCFv */
extern "C" BOOL checkWolfDig__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_WOLF_DIG;
}

/* 800D0674-800D0688 0CAFB4 0014+00 1/0 0/0 0/0 .text            checkCutCharge__9daAlink_cCFv */
extern "C" BOOL checkCutCharge__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_CUT_TURN_MOVE;
}

/* 800D0688-800D06B0 0CAFC8 0028+00 1/0 0/0 0/0 .text checkCutLargeJumpCharge__9daAlink_cCFv */
extern "C" BOOL checkCutLargeJumpCharge__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_CUT_TURN_MOVE && this_->mProcVar2.field_0x300c != 0;
}

/* 800D06B0-800D06D8 0CAFF0 0028+00 1/0 0/0 0/0 .text            checkComboCutTurn__9daAlink_cCFv */
extern "C" BOOL checkComboCutTurn__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_CUT_TURN && this_->mComboCutCount != 0;
}

/* 800D06D8-800D0704 0CB018 002C+00 1/0 0/0 0/0 .text            checkClimbMove__9daAlink_cCFv */
extern "C" BOOL checkClimbMove__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_CLIMB_MOVE_UPDOWN || this_->mProcID == daAlink_c::PROC_LADDER_MOVE ||
           this_->mProcID == daAlink_c::PROC_CLIMB_MOVE_SIDE;
}

/* 800D0704-800D0718 0CB044 0014+00 1/0 0/0 0/0 .text            checkGrassWhistle__9daAlink_cCFv */
extern "C" BOOL checkGrassWhistle__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_GRASS_WHISTLE_WAIT;
}

/* 800D0718-800D072C 0CB058 0014+00 1/0 0/0 0/0 .text            checkBoarRun__9daAlink_cCFv */
extern "C" BOOL checkBoarRun__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_BOAR_RUN;
}

/* 800D072C-800D0794 0CB06C 0068+00 1/0 0/0 0/0 .text checkHorseRideNotReady__9daAlink_cCFv */
extern "C" BOOL checkHorseRideNotReady__9daAlink_cCFv(daAlink_c* this_) {
    return this_->checkHorseRide() && this_->mProcID != daAlink_c::PROC_HORSE_RIDE && this_->mProcID != daAlink_c::PROC_HORSE_GETOFF;
}

/* 800D0794-800D079C 0CB0D4 0008+00 1/0 0/0 0/0 .text            getSearchBallScale__9daAlink_cCFv
 */
extern "C" f32 getSearchBallScale__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mSearchBallScale;
}

/* 800D079C-800D07A4 0CB0DC 0008+00 1/0 0/0 0/0 .text            checkFastShotTime__9daAlink_cFv */
extern "C" int checkFastShotTime__9daAlink_cFv(daAlink_c* this_) {
    return this_->mFastShotTime;
}

/* 800D07A4-800D07D4 0CB0E4 0030+00 1/0 0/0 0/0 .text checkCutJumpCancelTurn__9daAlink_cCFv */
extern "C" BOOL checkCutJumpCancelTurn__9daAlink_cCFv(daAlink_c* this_) {
    return (this_->mProcID == daAlink_c::PROC_CUT_JUMP || this_->mProcID == daAlink_c::PROC_CUT_JUMP_LAND) && this_->field_0x3198 != 2;
}

/* 800D07D4-800D07FC 0CB114 0028+00 1/0 0/0 0/0 .text
 * checkSingleBoarBattleSecondBowReady__9daAlink_cCFv           */
extern "C" BOOL checkSingleBoarBattleSecondBowReady__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_HORSE_BOW_SUBJECT && this_->mProcVar2.field_0x300c != 0;
}

/* 800D07FC-800D0818 0CB13C 001C+00 1/0 0/0 0/0 .text cancelDungeonWarpReadyNeck__9daAlink_cFv */
extern "C" void cancelDungeonWarpReadyNeck__9daAlink_cFv(daAlink_c* this_) {
    if (this_->mProcID != daAlink_c::PROC_DUNGEON_WARP_READY) {
        return;
    }
    this_->offModeFlg(daAlink_c::MODE_UNK_100);
}

/* 800D0818-800D0830 0CB158 0018+00 1/0 0/0 0/0 .text
 * onSceneChangeAreaJump__9daAlink_cFUcUcP10fopAc_ac_c          */
extern "C" void onSceneChangeAreaJump__9daAlink_cFUcUcP10fopAc_ac_c(daAlink_c* this_, u8 exitID, u8 exitDirection, fopAc_ac_c* scexAc) {
    this_->mExitID = exitID | 0x8000;
    this_->mExitDirection = exitDirection;
    this_->mpScnChg = (daScex_c*)scexAc;
}

/* 800D0830-800D084C 0CB170 001C+00 1/0 0/0 0/0 .text            onSceneChangeDead__9daAlink_cFUci
 */
extern "C" void onSceneChangeDead__9daAlink_cFUci(daAlink_c* this_, u8 param_0, int param_1) {
    if (this_->mProcID != daAlink_c::PROC_DEAD) {
        return;
    }
    this_->mProcVar5.field_0x3012 = param_0;
    this_->field_0x3198 = param_1;
}

/* 800D084C-800D0860 0CB18C 0014+00 1/0 0/0 0/0 .text            checkNoEquipItem__9daAlink_cCFv */
extern "C" bool checkNoEquipItem__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mEquipItem == NO_ITEM;
}

/* 800D0860-800D087C 0CB1A0 001C+00 1/0 0/0 0/0 .text getBoardCutTurnOffsetAngleY__9daAlink_cCFv
 */
extern "C" s16 getBoardCutTurnOffsetAngleY__9daAlink_cCFv(daAlink_c* this_) {
    if (this_->mProcID == daAlink_c::PROC_BOARD_CUT_TURN) {
        return this_->mProcVar5.field_0x3012;
    }
    return 0;
}

/* 800D087C-800D0884 0CB1BC 0008+00 1/0 0/0 0/0 .text            getMagneBootsTopVec__9daAlink_cFv
 */
extern "C" cXyz* getMagneBootsTopVec__9daAlink_cFv(daAlink_c* this_) {
    return &this_->mMagneBootsTopVec;
}

/* 800D0884-800D08B0 0CB1C4 002C+00 1/0 0/0 0/0 .text setCargoCarry__9daAlink_cFP10fopAc_ac_c */
extern "C" void setCargoCarry__9daAlink_cFP10fopAc_ac_c(daAlink_c* this_, fopAc_ac_c* p_actor) {
    this_->mSpecialMode = daAlink_c::SMODE_CARGO_CARRY;
    this_->mCargoCarryAcKeep.setData(p_actor);
}

/* 800D08B0-800D08DC 0CB1F0 002C+00 1/0 0/0 0/0 .text setGoronSideMove__9daAlink_cFP10fopAc_ac_c
 */
extern "C" void setGoronSideMove__9daAlink_cFP10fopAc_ac_c(daAlink_c* this_, fopAc_ac_c* p_actor) {
    this_->mSpecialMode = daAlink_c::SMODE_GORON_THROW;
    this_->mCargoCarryAcKeep.setData(p_actor);
}

/* 800D08DC-800D091C 0CB21C 0040+00 1/0 0/0 0/0 .text setSumouReady__9daAlink_cFP10fopAc_ac_c */
extern "C" void setSumouReady__9daAlink_cFP10fopAc_ac_c(daAlink_c* this_, fopAc_ac_c* p_actor) {
    this_->mSpecialMode = daAlink_c::SMODE_SUMO_READY;
    this_->mCargoCarryAcKeep.setData(p_actor);
    this_->mDemo.setDemoMode(1);
}

/* 800D091C-800D0930 0CB25C 0014+00 1/0 0/0 0/0 .text setSumouPushBackDirection__9daAlink_cFs */
extern "C" void setSumouPushBackDirection__9daAlink_cFs(daAlink_c* this_, s16 param_0) {
    if (this_->mProcID != daAlink_c::PROC_SUMOU_MOVE) {
        return;
    }
    this_->mProcVar4.field_0x3010 = param_0;
}

/* 800D0930-800D0948 0CB270 0018+00 1/0 0/0 0/0 .text            setSumouLoseHeadUp__9daAlink_cFv */
extern "C" void setSumouLoseHeadUp__9daAlink_cFv(daAlink_c* this_) {
    if (this_->mProcID != daAlink_c::PROC_SUMOU_WIN_LOSE) {
        return;
    }
    this_->mSpecialMode = daAlink_c::SMODE_SUMO_LOSE;
}

/* 800D0948-800D095C 0CB288 0014+00 1/0 0/0 0/0 .text checkPriActorOwn__9daAlink_cCFPC10fopAc_ac_c
 */
extern "C" bool checkPriActorOwn__9daAlink_cCFPC10fopAc_ac_c(daAlink_c* this_, const fopAc_ac_c* p_actor) {
    return this_->field_0x27f4 == p_actor;
}

/* 800D095C-800D0970 0CB29C 0014+00 1/0 0/0 0/0 .text
 * checkWolfEnemyBiteAllOwn__9daAlink_cCFPC10fopAc_ac_c         */
extern "C" bool checkWolfEnemyBiteAllOwn__9daAlink_cCFPC10fopAc_ac_c(daAlink_c* this_, const fopAc_ac_c* p_actor) {
    return this_->field_0x281c.getActorConst() == p_actor;
}

/* 800D0970-800D0984 0CB2B0 0014+00 1/0 0/0 0/0 .text setWolfEnemyHangBiteAngle__9daAlink_cFs */
extern "C" void setWolfEnemyHangBiteAngle__9daAlink_cFs(daAlink_c* this_, s16 angle) {
    if (this_->mProcID != daAlink_c::PROC_WOLF_ENEMY_HANG_BITE) {
        return;
    }
    this_->mProcVar4.field_0x3010 = angle;
}

/* 800D0984-800D0998 0CB2C4 0014+00 1/0 0/0 0/0 .text setSumouGraspCancelCount__9daAlink_cFi */
extern "C" void setSumouGraspCancelCount__9daAlink_cFi(daAlink_c* this_, int param_0) {
    if (this_->mProcID != daAlink_c::PROC_SUMOU_MOVE) {
        return;
    }
    this_->mProcVar2.field_0x300c = param_0;
}

/* 800D0998-800D09AC 0CB2D8 0014+00 1/0 0/0 0/0 .text            checkItemSwordEquip__9daAlink_cCFv
 */
extern "C" bool checkItemSwordEquip__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mEquipItem == EQUIP_SWORD;
}

/* 800D09AC-800D09B4 0CB2EC 0008+00 1/0 0/0 0/0 .text            getSinkShapeOffset__9daAlink_cCFv
 */
extern "C" f32 getSinkShapeOffset__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mSinkShapeOffset;
}

/* 800D09B4-800D09C8 0CB2F4 0014+00 1/0 0/0 0/0 .text            checkSinkDead__9daAlink_cCFv */
extern "C" BOOL checkSinkDead__9daAlink_cCFv(daAlink_c* this_) {
    return this_->field_0x2fbd == 0xFF;
}

/* 800D09C8-800D09DC 0CB308 0014+00 1/0 0/0 0/0 .text            checkCutJumpMode__9daAlink_cCFv */
extern "C" BOOL checkCutJumpMode__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_CUT_JUMP;
}

/* 800D09DC-800D09E4 0CB31C 0008+00 1/0 0/0 0/0 .text getGiantPuzzleAimAngle__9daAlink_cCFv */
extern "C" s16 getGiantPuzzleAimAngle__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcVar2.mPuzzleAimAngle;
}

/* 800D09E4-800D09EC 0CB324 0008+00 1/0 0/0 0/0 .text getSwordChangeWaitTimer__9daAlink_cCFv */
extern "C" u8 getSwordChangeWaitTimer__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mSwordChangeWaitTimer;
}

/* 800D09EC-800D0A14 0CB32C 0028+00 1/0 0/0 0/0 .text            checkMetamorphose__9daAlink_cCFv */
extern "C" BOOL checkMetamorphose__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_METAMORPHOSE && this_->mProcVar1.field_0x300a == 0;
}

/* 800D0A14-800D0A28 0CB354 0014+00 1/0 0/0 0/0 .text checkWolfDownAttackPullOut__9daAlink_cCFv */
extern "C" BOOL checkWolfDownAttackPullOut__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_WOLF_DOWN_AT_LAND;
}

/* 800D0A28-800D0A30 0CB368 0008+00 1/0 0/0 0/0 .text            getMidnaAtnPos__9daAlink_cCFv */
extern "C" void getMidnaAtnPos__9daAlink_cCFv() {
    // asm bool daAlink_c::getMidnaAtnPos() const {
    // NONMATCHING
}

/* 800D0A30-800D0A44 0CB370 0014+00 1/0 0/0 0/0 .text            checkCopyRodEquip__9daAlink_cCFv */
extern "C" bool checkCopyRodEquip__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mEquipItem == COPY_ROD;
}

/* 800D0A44-800D0A6C 0CB384 0028+00 1/0 0/0 0/0 .text checkCanoeFishingGetLeft__9daAlink_cCFv */
extern "C" bool checkCanoeFishingGetLeft__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_CANOE_FISHING_GET && this_->mProcVar3.field_0x300e == 0;
}

/* 800D0A6C-800D0A94 0CB3AC 0028+00 1/0 0/0 0/0 .text checkCanoeFishingGetRight__9daAlink_cCFv */
extern "C" bool checkCanoeFishingGetRight__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_CANOE_FISHING_GET && this_->mProcVar3.field_0x300e == 1;
}

/* 800D0A94-800D0A9C 0CB3D4 0008+00 1/0 0/0 0/0 .text            checkBeeChildDrink__9daAlink_cCFv
 */
extern "C" u8 checkBeeChildDrink__9daAlink_cCFv(daAlink_c* this_) {
    return this_->field_0x2fd3;
}

/* 800D0A9C-800D0AA4 0CB3DC 0008+00 1/0 0/0 0/0 .text            getWolfHowlMgrP__9daAlink_cFv */
extern "C" Z2WolfHowlMgr* getWolfHowlMgrP__9daAlink_cFv(daAlink_c* this_) {
    return &this_->mZ2WolfHowlMgr;
}

/* 800D0AA4-800D0AC8 0CB3E4 0024+00 1/0 0/0 0/0 .text checkWolfHowlSuccessAnime__9daAlink_cCFv */
extern "C" BOOL checkWolfHowlSuccessAnime__9daAlink_cCFv(daAlink_c* this_) {
    return this_->checkUnderMove0BckNoArcWolf(daAlink_c::WANM_HOWL_SUCCESS);
}

/* 800D0AC8-800D0AF0 0CB408 0028+00 1/0 0/0 0/0 .text            checkOctaIealHang__9daAlink_cCFv */
extern "C" bool checkOctaIealHang__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_BOSS_BODY_HANG && this_->field_0x32cc == 0;
}

/* 800D0AF0-800D0B08 0CB430 0018+00 1/0 0/0 0/0 .text            cancelOctaIealHang__9daAlink_cFv */
extern "C" void cancelOctaIealHang__9daAlink_cFv(daAlink_c* this_) {
    if (this_->mProcID != daAlink_c::PROC_BOSS_BODY_HANG) {
        return;
    }
    this_->mProcVar3.field_0x300e = 1;
}

/* 800D0B08-800D0B20 0CB448 0018+00 1/0 0/0 0/0 .text cancelDragonHangBackJump__9daAlink_cFv */
extern "C" void cancelDragonHangBackJump__9daAlink_cFv(daAlink_c* this_) {
    if (this_->mProcID != daAlink_c::PROC_BOSS_BODY_HANG) {
        return;
    }
    this_->mProcVar3.field_0x300e = -1;
}

/* 800D0B20-800D0B38 0CB460 0018+00 1/0 0/0 0/0 .text            setOctaIealWildHang__9daAlink_cFv
 */
extern "C" void setOctaIealWildHang__9daAlink_cFv(daAlink_c* this_) {
    if (this_->mProcID != daAlink_c::PROC_BOSS_BODY_HANG) {
        return;
    }
    this_->mProcVar0.field_0x3008 = 1;
}

/* 800D0B38-800D0B60 0CB478 0028+00 1/0 0/0 0/0 .text            checkDragonHangRide__9daAlink_cCFv
 */
extern "C" bool checkDragonHangRide__9daAlink_cCFv(daAlink_c* this_) {
    return this_->mProcID == daAlink_c::PROC_BOSS_BODY_HANG && this_->field_0x32cc != 0;
}

/* 800D0B60-800D0B8C 0CB4A0 002C+00 1/0 0/0 0/0 .text playerStartCollisionSE__9daAlink_cFUlUl */
extern "C" void playerStartCollisionSE__9daAlink_cFUlUl(daAlink_c* this_, u32 param_0, u32 param_1) {
    this_->mZ2Link.startCollisionSE(param_0, param_1);
}

/* 800D0B8C-800D0C6C 0CB4CC 00E0+00 1/0 0/0 0/0 .text            __dt__16daAlink_matAnm_cFv */
// daAlink_matAnm_c::~daAlink_matAnm_c() {
extern "C" void __dt__16daAlink_matAnm_cFv() {
    // NONMATCHING
}

/* 800D0C6C-800D0CDC 0CB5AC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 800D0CDC-800D0D38 0CB61C 005C+00 1/0 0/0 0/0 .text __dt__Q29daAlink_c14hsChainShape_cFv */
extern "C" void __dt__Q29daAlink_c14hsChainShape_cFv() {
    // NONMATCHING
}
