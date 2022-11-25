/* 80105A84-80105A98 1003C4 0014+00 1/1 0/0 0/0 .text daAlink_searchIceLeaf__FP10fopAc_ac_cPv */
static fopAc_ac_c* daAlink_searchIceLeaf(fopAc_ac_c* i_actor, void* param_1) {
    if (fopAcM_GetName(i_actor) == PROC_Obj_IceLeaf) {
        return i_actor;
    }

    return NULL;
}

/* 80105A98-80105ABC 1003D8 0024+00 3/3 0/0 0/0 .text            checkSnowCode__9daAlink_cCFv */
bool daAlink_c::checkSnowCode() const {
    return field_0x2fa8 == 6 || field_0x2fa8 == 5;
}

/* 80105ABC-80105B10 1003FC 0054+00 1/1 0/0 1/1 .text
 * checkSnowCodePolygon__9daAlink_cFR13cBgS_PolyInfo            */
bool daAlink_c::checkSnowCodePolygon(cBgS_PolyInfo& i_poly) {
    int code = dComIfG_Bgsp().GetSpecialCode(i_poly);
    return code == 6 || code == 5;
}

/* 80105B10-80105B58 100450 0048+00 2/2 0/0 0/0 .text            checkBoardRestart__9daAlink_cFv */
bool daAlink_c::checkBoardRestart() {
    return (mRideStatus == 0 && mRideAcKeep.getActor() != NULL) && fopAcM_GetName(mRideAcKeep.getActor()) == PROC_Obj_IceLeaf;
}

/* 80105B58-80106534 100498 09DC+00 7/7 0/0 0/0 .text            boardCommon__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::boardCommon(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/boardCommon__9daAlink_cFi.s"
}
#pragma pop

/* 80106534-8010658C 100E74 0058+00 6/6 0/0 0/0 .text            setCommonBoardAnime__9daAlink_cFi
 */
void daAlink_c::setCommonBoardAnime(int param_0) {
    setDoubleAnime(FLOAT_LABEL(lit_6108), daAlinkHIO_board_c0::m.mStandAnmSpeed, lit_6040,
                   param_0 != 0 ? ANM_RIDE_FRONT : ANM_RIDE_WAIT, ANM_RIDE_STOP,
                   11, daAlinkHIO_board_c0::m.mStandInterpolation);
}

/* 8010658C-80106618 100ECC 008C+00 5/5 0/0 0/0 .text            checkNextActionBoard__9daAlink_cFv
 */
int daAlink_c::checkNextActionBoard() {
    if (checkNextActionFromButton()) {
        return 1;
    }

    if ((!doButton() && (mProcID == PROC_BOARD_ROW || mProcID == PROC_BOARD_TURN)) ||
         mProcID == PROC_BOARD_CUT || mProcID == PROC_BOARD_ROW || mProcID == PROC_BOARD_JUMP) {
        return 0;
    }

    return procBoardWaitInit(NULL);
}

/* 80106618-80106650 100F58 0038+00 2/2 0/0 0/0 .text checkBoardSwordTriggerAction__9daAlink_cFv
 */
void daAlink_c::checkBoardSwordTriggerAction() {
    if (i_checkModeFlg(2)) {
        procBoardCutInit();
    } else {
        procBoardWaitInit(NULL);
    }
}

/* 80106650-801066B8 100F90 0068+00 3/3 0/0 0/0 .text
 * commonProcBoardInit__9daAlink_cFQ29daAlink_c12daAlink_PROC   */
int daAlink_c::commonProcBoardInit(daAlink_c::daAlink_PROC i_procID) {
    if (mProcID == i_procID) {
        return 0;
    }

    u32 check = i_checkModeFlg(2);
    commonProcInit(i_procID);

    if (check) {
        onModeFlg(2);
    }

    return 1;
}

/* 801066B8-801066EC 100FF8 0034+00 1/1 0/0 0/0 .text            getBoardRowAnmSpeed__9daAlink_cFv
 */
f32 daAlink_c::getBoardRowAnmSpeed() {
    return daAlinkHIO_board_c0::m.mPushAnmMinSpeed +
           ((daAlinkHIO_board_c0::m.mPushAnmMaxSpeed - daAlinkHIO_board_c0::m.mPushAnmMinSpeed) *
           (lit_6040 - (mNormalSpeed / daAlinkHIO_board_c0::m.mFastPushSwitchSpeed)));
}

/* 801066EC-80106774 10102C 0088+00 3/3 0/0 0/0 .text            setBoardLandAnime__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBoardLandAnime() {
    nofralloc
#include "asm/d/a/d_a_alink/setBoardLandAnime__9daAlink_cFv.s"
}
#pragma pop

/* 80106774-801069D0 1010B4 025C+00 1/1 0/0 0/0 .text            procBoardRideInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procBoardRideInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procBoardRideInit__9daAlink_cFv.s"
}
#pragma pop

/* 801069D0-80106A38 101310 0068+00 1/0 0/0 0/0 .text            procBoardRide__9daAlink_cFv */
int daAlink_c::procBoardRide() {
    field_0x2f99 = 15;

    if (mLinkAcch.ChkGroundHit()) {
        if (field_0x280c.getActor()) {
            mCollisionRot.y = field_0x280c.getActor()->mCollisionRot.y + -0x4000;
            current.angle.y = mCollisionRot.y;
            procBoardWaitInit(field_0x280c.getActor());
        } else {
            checkNextAction(1);
        }
    }

    return 1;
}

/* 80106A38-80106BCC 101378 0194+00 13/13 0/0 0/0 .text
 * procBoardWaitInit__9daAlink_cFP10fopAc_ac_c                  */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procBoardWaitInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procBoardWaitInit__9daAlink_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 80106BCC-80106E88 10150C 02BC+00 1/0 0/0 0/0 .text            procBoardWait__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procBoardWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procBoardWait__9daAlink_cFv.s"
}
#pragma pop

/* 80106E88-80106F00 1017C8 0078+00 1/1 0/0 0/0 .text            procBoardRowInit__9daAlink_cFv */
int daAlink_c::procBoardRowInit() {
    commonProcInit(PROC_BOARD_ROW);
    setSingleAnimeBaseSpeed(ANM_RIDE_KICK, getBoardRowAnmSpeed(), daAlinkHIO_board_c0::m.mPushInterpolation);
    i_onResetFlg1(0x40);
    field_0x3008 = 4;
    field_0x3010 = 1;
    field_0x3012 = 0;

    return 1;
}

/* 80106F00-80107060 101840 0160+00 1/0 0/0 0/0 .text            procBoardRow__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procBoardRow() {
    nofralloc
#include "asm/d/a/d_a_alink/procBoardRow__9daAlink_cFv.s"
}
#pragma pop

/* 80107060-801070DC 1019A0 007C+00 1/1 0/0 0/0 .text            procBoardTurnInit__9daAlink_cFv */
int daAlink_c::procBoardTurnInit() {
    commonProcInit(PROC_BOARD_TURN);
    setSingleAnime(ANM_RIDE_JUMP, FLOAT_LABEL(lit_6108), lit_6040, daAlinkHIO_board_c0::m.mAirborneAnm.mEndF, lit_6109);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    field_0x3010 = mCollisionRot.y + 0x8000;
    field_0x3012 = 0;
    field_0x300a = 0;

    return 1;
}

/* 801070DC-80107218 101A1C 013C+00 1/0 0/0 0/0 .text            procBoardTurn__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procBoardTurn() {
    nofralloc
#include "asm/d/a/d_a_alink/procBoardTurn__9daAlink_cFv.s"
}
#pragma pop

/* 80107218-80107300 101B58 00E8+00 4/4 0/0 0/0 .text            procBoardJumpInit__9daAlink_cFfi */
#ifdef NONMATCHING
int daAlink_c::procBoardJumpInit(f32 param_0, int param_1) {
    commonProcInit(PROC_BOARD_JUMP);
    field_0x3008 = 0;
    field_0x3012 = 1;

    setSingleAnime(ANM_RIDE_JUMP, FLOAT_LABEL(lit_6108),
                   daAlinkHIO_board_c0::m.mAirborneAnm.mStart,
                   daAlinkHIO_board_c0::m.mAirborneAnm.mEndF,
                   daAlinkHIO_board_c0::m.mAirborneAnm.mInterpolation);

    if (param_1 == 0) {
        mSpeed.y = cLib_minMaxLimit(param_0, daAlinkHIO_board_c0::m.mMinJumpSpeedY, daAlinkHIO_board_c0::m.mMaxJumpSpeedY);
    }

    field_0x3010 = 0;
    seStartOnlyReverb(Z2SE_AL_SNOBO_JUMP);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procBoardJumpInit(f32 param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procBoardJumpInit__9daAlink_cFfi.s"
}
#pragma pop
#endif

/* 80107300-801073D0 101C40 00D0+00 1/0 0/0 0/0 .text            procBoardJump__9daAlink_cFv */
int daAlink_c::procBoardJump() {
    if (boardCommon(1)) {
        return 1;
    }

    if (!checkNextActionBoard()) {
        if (!i_checkModeFlg(2)) {
            setBoardLandAnime();
            procBoardWaitInit(NULL);
        } else if (field_0x3012 != 0 && field_0x3010 == 0 && field_0x2060->getOldFrameRate() < lit_8782) {
            setSingleAnime(ANM_RIDE_JUMP, daAlinkHIO_board_c0::m.mAirborneAnm.mRate,
                           daAlinkHIO_board_c0::m.mAirborneAnm.mStart,
                           daAlinkHIO_board_c0::m.mAirborneAnm.mEndF,
                           lit_6041);
            field_0x3010 = 1;
        }
    }

    return 1;
}

/* 801073D0-80107418 101D10 0048+00 1/1 0/0 0/0 .text procBoardSubjectivityInit__9daAlink_cFv */
int daAlink_c::procBoardSubjectivityInit() {
    commonProcBoardInit(PROC_BOARD_SUBJECTIVITY);
    setSubjectMode();
    setCommonBoardAnime(0);

    return 1;
}

/* 80107418-801074AC 101D58 0094+00 1/0 0/0 0/0 .text            procBoardSubjectivity__9daAlink_cFv
 */
int daAlink_c::procBoardSubjectivity() {
    i_onResetFlg0(0x4000000);
    s16 shape_angle = mCollisionRot.y;
    s16 angle = current.angle.y;

    if (boardCommon(0)) {
        return 1;
    }

    mCollisionRot.y = shape_angle;

    if (checkSubjectEnd(1)) {
        procBoardWaitInit(NULL);
    } else {
        setRideSubjectAngle(angle);
    }

    return 1;
}

/* 801074AC-8010755C 101DEC 00B0+00 3/3 0/0 0/0 .text            procBoardCutInit__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procBoardCutInit() {
    commonProcBoardInit(PROC_BOARD_CUT);

    bool var_r31 = false;
    if (checkUnderMove0BckNoArc(ANM_RIDE_CUT_TURN_CHARGE)) {
        if (mUnderFrameCtrl[0].getFrame() > daAlinkHIO_cut_c0::m.mNormalSwingDuration) {
            var_r31 = true;
        }
    }

    setCommonBoardAnime(0);
    setCutDash(1, var_r31);
    field_0x3012 = 0;

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procBoardCutInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procBoardCutInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8010755C-801075D4 101E9C 0078+00 1/0 0/0 0/0 .text            procBoardCut__9daAlink_cFv */
int daAlink_c::procBoardCut() {
    if (boardCommon(1)) {
        return 1;
    }

    checkCutTurnCharge();
    if (!checkNextActionBoard() && checkNoUpperAnime()) {
        procBoardWaitInit(NULL);
    }

    return 1;
}

/* 801075D4-80107744 101F14 0170+00 2/2 0/0 0/0 .text            procBoardCutTurnInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procBoardCutTurnInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procBoardCutTurnInit__9daAlink_cFv.s"
}
#pragma pop

/* 80107744-80107900 102084 01BC+00 1/0 0/0 0/0 .text            procBoardCutTurn__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procBoardCutTurn() {
    nofralloc
#include "asm/d/a/d_a_alink/procBoardCutTurn__9daAlink_cFv.s"
}
#pragma pop