/**
 * d_a_alink_ironball.inc
 * Player Ball & Chain action handling
 */

/* 8011243C-80112458 10CD7C 001C+00 1/0 0/0 0/0 .text            getIronBallCenterPos__9daAlink_cFv
 */
cXyz* daAlink_c::getIronBallCenterPos() {
    if (mEquipItem == IRONBALL) {
        return &mIronBallCenterPos;
    }

    return NULL;
}

/* 80112458-80112474 10CD98 001C+00 1/0 0/0 0/0 .text            getIronBallBgHit__9daAlink_cCFv */
s16 daAlink_c::getIronBallBgHit() const {
    if (mEquipItem == IRONBALL) {
        return field_0x301c;
    }

    return 0;
}

/* 80112474-801124B4 10CDB4 0040+00 0/0 2/2 1/1 .text checkIronBallThrowMode__9daAlink_cCFv */
bool daAlink_c::checkIronBallThrowMode() const {
    return mEquipItem == IRONBALL &&
           (field_0x3018 == 4 || field_0x3018 == 5 || field_0x3018 == 6 || field_0x3018 == 3);
}

/* 801124B4-801124FC 10CDF4 0048+00 0/0 1/1 1/1 .text checkIronBallThrowReturnMode__9daAlink_cCFv
 */
bool daAlink_c::checkIronBallThrowReturnMode() const {
    return mEquipItem == IRONBALL && (field_0x3018 == 4 || field_0x3018 == 5 || field_0x3018 == 6 ||
                                      field_0x3018 == 7 || field_0x3018 == 3);
}

/* 801124FC-80112524 10CE3C 0028+00 1/0 0/0 0/0 .text            checkIronBallReturn__9daAlink_cCFv
 */
bool daAlink_c::checkIronBallReturn() const {
    return mEquipItem == IRONBALL && field_0x3018 == 7;
}

/* 80112524-80112568 10CE64 0044+00 1/0 0/0 0/0 .text checkIronBallGroundStop__9daAlink_cCFv */
bool daAlink_c::checkIronBallGroundStop() const {
    return mEquipItem == IRONBALL && field_0x3018 != 0 && field_0x3018 != 8 && field_0x301e == 0 &&
           field_0x301e < 10;
}

/* 80112568-80112628 10CEA8 00C0+00 5/5 0/0 0/0 .text setIronBallWaitUpperAnime__9daAlink_cFi */
void daAlink_c::setIronBallWaitUpperAnime(int param_0) {
    if (!checkIronBallWaitAnime() && !checkIronBallPreSwingAnime() &&
        (field_0x3018 == 0 || field_0x3018 == 8) && (param_0 || checkNoUpperAnime())) {
        setUpperAnimeBaseSpeed(0x19C, daAlinkHIO_ironBall_c0::m.mWaitAnmSpeed,
                               daAlinkHIO_basic_c0::m.mAnmBlendFactor);
        setFacePriBck(0xE8);
        field_0x2f96 = 254;
        field_0x2f97 = 5;
        field_0x3018 = 0;
    }
}

/* 80112628-801126F8 10CF68 00D0+00 1/1 0/0 0/0 .text            checkIronBallDelete__9daAlink_cFv
 */
void daAlink_c::checkIronBallDelete() {
    if (mProcID == PROC_IRON_BALL_SUBJECT || mProcID == PROC_IRON_BALL_MOVE ||
        mProcID == PROC_IRON_BALL_THROW || mProcID == PROC_IRON_BALL_RETURN) {
        return;
    }

    if (field_0x3018 == 1 || field_0x3018 == 2 || field_0x3018 == 3 ||
        ((field_0x3018 == 0 || field_0x3018 == 8) && !checkIronBallWaitAnime() &&
         !checkEquipAnime() &&
         (!i_checkModeFlg(4) || i_checkModeFlg(0x70C52) || !mLinkAcch.ChkGroundHit()))) {
        deleteEquipItem(1, 0);
    }
}

/* 801126F8-80112768 10D038 0070+00 2/2 0/0 0/0 .text            setIronBallReturn__9daAlink_cFi */
void daAlink_c::setIronBallReturn(int param_0) {
    if (param_0 && field_0x301e != 0) {
        field_0x301e--;
    } else if (field_0x3018 != 7) {
        field_0x3018 = 7;
        field_0x301e = 0;
        seStartOnlyReverb(Z2SE_AL_IB_PULLBACK);
    }
}

/* 80112768-801127F0 10D0A8 0088+00 2/2 0/0 0/0 .text            setIronBallBgCheckPos__9daAlink_cFv
 */
void daAlink_c::setIronBallBgCheckPos() {
    cXyz sp8;
    mDoMtx_stack_c::transS(*mIronBallChainPos);
    mDoMtx_stack_c::ZXYrotM(*mIronBallChainAngle);
    mDoMtx_stack_c::multVec(&l_ironBallCenterVec, &sp8);

    mIronBallBgChkPos.set(sp8.x, (sp8.y - lit_14621) - mSearchBallScale, sp8.z);
    cLib_chaseF(&mSearchBallScale, FLOAT_LABEL(lit_6108), lit_7307);
}

/* 801127F0-80112C80 10D130 0490+00 1/1 0/0 0/0 .text            setIronBallModel__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setIronBallModel() {
    nofralloc
#include "asm/d/a/d_a_alink/setIronBallModel__9daAlink_cFv.s"
}
#pragma pop

/* 80112C80-80112C84 10D5C0 0004+00 2/2 2/2 0/0 .text            __ct__5csXyzFv */
extern "C" void __ct__5csXyzFv() {}

/* 80112C84-80112E7C 10D5C4 01F8+00 1/1 0/0 0/0 .text
 * setIronBallGroundVec__9daAlink_cFPC4cXyzP4cXyz               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setIronBallGroundVec(cXyz const* param_0, cXyz* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/setIronBallGroundVec__9daAlink_cFPC4cXyzP4cXyz.s"
}
#pragma pop

/* 80112E7C-80113CA0 10D7BC 0E24+00 1/1 0/0 0/0 .text            setIronBallChainPos__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setIronBallChainPos() {
    nofralloc
#include "asm/d/a/d_a_alink/setIronBallChainPos__9daAlink_cFv.s"
}
#pragma pop

/* 80113CA0-80113D58 10E5E0 00B8+00 1/1 0/0 0/0 .text checkIronBallReturnChange__9daAlink_cFv */
BOOL daAlink_c::checkIronBallReturnChange() {
    if (mProcID != PROC_IRON_BALL_THROW ||
        (!(mBodyAngle.x > 0x400) && mIronBallBgChkPos.y < (current.pos.y - lit_8472)) ||
        (mBodyAngle.x > 0x400 && mItemMode == 0x64) ||
        (field_0xFB8.ChkAtHit() && field_0xFB8.GetAtHitGObj() != NULL &&
         static_cast<dCcD_GObjInf*>(field_0xFB8.GetAtHitGObj())->ChkTgIronBallRebound())) {
        setIronBallReturn(0);
        return true;
    }

    return false;
}

/* 80113D58-801150E4 10E698 138C+00 1/1 0/0 0/0 .text            setIronBallPos__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setIronBallPos() {
    nofralloc
#include "asm/d/a/d_a_alink/setIronBallPos__9daAlink_cFv.s"
}
#pragma pop

/* 801150E4-8011510C 10FA24 0028+00 10/10 0/0 0/0 .text            checkIronBallAnime__9daAlink_cCFv
 */
BOOL daAlink_c::checkIronBallAnime() const {
    return checkIronBallPreSwingAnime() || checkIronBallSwingAnime();
}

/* 8011510C-801151E0 10FA4C 00D4+00 1/1 0/0 0/0 .text            setIronBallReadyAnime__9daAlink_cFv
 */
void daAlink_c::setIronBallReadyAnime() {
    resetUpperAnime(UPPER_2, lit_6041);
    setSingleAnime(ANM_IRONBALL_ATTACK, daAlinkHIO_ironBall_c0::m.mPrepareAnmSpeed, FLOAT_LABEL(lit_6108),
                   0x15, daAlinkHIO_ironBall_c0::m.mPrepareInterpolation);
    setUpperAnimeBaseSpeed(0x19A, daAlinkHIO_ironBall_c0::m.mPrepareAnmSpeed, lit_6041);
    mNowAnmPackUpper[2].setRatio(FLOAT_LABEL(lit_6108));
    voiceStart(Z2SE_AL_V_SWING_IB);

    field_0xFB8.OffAtSetBit();
    field_0xFB8.ResetAtHit();
    field_0xFB8.SetAtAtp(2);

    field_0x301e = 10;
    field_0x3020 = 0;
    field_0x3494 = lit_7808;
    mSearchBallScale = FLOAT_LABEL(lit_6108);
}

/* 801151E0-80115254 10FB20 0074+00 2/2 0/0 0/0 .text            setIronBallBaseAnime__9daAlink_cFv
 */
void daAlink_c::setIronBallBaseAnime() {
    if (checkIronBallSwingAnime() && !checkUnderMove0BckNoArc(ANM_IRONBALL_TURN)) {
        setSingleAnimeBaseSpeed(ANM_IRONBALL_TURN, daAlinkHIO_ironBall_c0::m.mTurnAnmSpeed, daAlinkHIO_ironBall_c0::m.mTurnInterpolation);
        mUnderFrameCtrl[0].setFrame(mUpperFrameCtrl[2].getFrame());
        getNowAnmPackUnder(UNDER_0)->setFrame(mUpperFrameCtrl[2].getFrame());
    }
}

/* 80115254-801153F8 10FB94 01A4+00 1/1 0/0 0/0 .text checkUpperItemActionIronBall__9daAlink_cFv
 */
BOOL daAlink_c::checkUpperItemActionIronBall() {
    if (!itemButton() && checkReadyItem()) {
        field_0x3020 = 1;
    }

    if (checkIronBallPreSwingAnime()) {
        daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;
        if (field_0x3020 != 0 && frameCtrl->checkPass(lit_10286)) {
            return procIronBallThrowInit();
        }

        if (frameCtrl->checkAnmEnd()) {
            if (i_checkModeFlg(1)) {
                setSingleAnimeBaseSpeed(ANM_IRONBALL_TURN, daAlinkHIO_ironBall_c0::m.mTurnAnmSpeed, daAlinkHIO_ironBall_c0::m.mTurnInterpolation);
            }

            u16 upperId = getMainBckData(ANM_IRONBALL_TURN)->m_upperID;
            setUpperAnimeBaseSpeed(upperId, daAlinkHIO_ironBall_c0::m.mTurnAnmSpeed, daAlinkHIO_ironBall_c0::m.mTurnInterpolation);
            field_0x3018 = 2;
            seStartOnlyReverb(Z2SE_AL_IB_SWING);
            return 1;
        }

        if (frameCtrl->getFrame() > lit_8781) {
            field_0x3018 = 1;
        }
    } else {
        daPy_frameCtrl_c* frameCtrl = &mUpperFrameCtrl[2];

        if (field_0x3020 != 0 && frameCtrl->checkPass(lit_10193)) {
            return procIronBallThrowInit();
        } else if (frameCtrl->checkPass(FLOAT_LABEL(lit_6108))) {
            seStartOnlyReverb(Z2SE_AL_IB_SWING);
        }
    }

    return cancelUpperItemReadyAnime(0);
}

/* 801153F8-801154E4 10FD38 00EC+00 2/2 0/0 0/0 .text checkNextActionIronBall__9daAlink_cFv */
#pragma push
#pragma optimization_level 2
int daAlink_c::checkNextActionIronBall() {
    if (mFastShotTime != 0) {
        mFastShotTime--;
    }

    if (!checkIronBallAnime()) {
        setIronBallReadyAnime();
        setFastShotTimer();
        
        if (!i_checkAttentionLock()) {
            field_0x2fe4 = shape_angle.y;
        }
    }

    if (!i_checkAttentionLock() && mFastShotTime == 0) {
        return procIronBallSubjectInit();
    } else {
        return procIronBallMoveInit();
    }
}
#pragma pop

/* 801154E4-80115564 10FE24 0080+00 1/1 0/0 0/0 .text procIronBallSubjectInit__9daAlink_cFv */
int daAlink_c::procIronBallSubjectInit() {
    if (!commonProcInitNotSameProc(PROC_IRON_BALL_SUBJECT)) {
        return 0;
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);

    if (checkIronBallAnime()) {
        setIronBallBaseAnime();
    }

    current.angle.y = shape_angle.y;
    dComIfGp_setPlayerStatus0(0, 0x400);
    return 1;
}

/* 80115564-801155EC 10FEA4 0088+00 1/0 0/0 0/0 .text            procIronBallSubject__9daAlink_cFv
 */
int daAlink_c::procIronBallSubject() {
    if (checkIronBallAnime()) {
        setDoStatus(0x12);
    }

    setShapeAngleToAtnActor(0);

    if (!checkNextAction(0) && itemButton() && field_0x3018 == 2) {
        setBodyAngleToCamera();
    }

    return 1;
}

/* 801155EC-80115674 10FF2C 0088+00 1/1 0/0 0/0 .text            procIronBallMoveInit__9daAlink_cFv
 */
int daAlink_c::procIronBallMoveInit() {
    if (!commonProcInitNotSameProc(PROC_IRON_BALL_MOVE)) {
        return 0;
    }

    if (checkZeroSpeedF()) {
        onModeFlg(1);
    }

    if (checkIronBallPreSwingAnime()) {
        mNormalSpeed = FLOAT_LABEL(lit_6108);
    }

    dComIfGp_setPlayerStatus0(0, 0x400);
    return 1;
}

/* 80115674-8011577C 10FFB4 0108+00 1/0 0/0 0/0 .text            procIronBallMove__9daAlink_cFv */
int daAlink_c::procIronBallMove() {
    if (checkIronBallAnime()) {
        setDoStatus(0x12);
    }

    setShapeAngleToAtnActor(0);

    if (!checkNextAction(0)) {
        f32 var_f31 = lit_6041;

        if (checkIronBallPreSwingAnime()) {
            mNormalSpeed = FLOAT_LABEL(lit_6108);
        }

        if (checkZeroSpeedF()) {
            onModeFlg(1);

            if (field_0x2f98 != 2) {
                field_0x2f98 = 2;
                var_f31 = daAlinkHIO_basic_c0::m.mAnmBlendFactor;
            }
        } else {
            offModeFlg(1);
        }

        if (i_checkModeFlg(1)) {
            setIronBallBaseAnime();
        } else {
            setBlendAtnMoveAnime(var_f31);
        }

        setBodyAngleXReadyAnime(0);
    }

    return 1;
}

/* 8011577C-80115860 1100BC 00E4+00 1/1 0/0 0/0 .text            procIronBallThrowInit__9daAlink_cFv
 */
int daAlink_c::procIronBallThrowInit() {
    commonProcInit(PROC_IRON_BALL_THROW);
    setSingleAnime(ANM_IRONBALL_ATTACK, daAlinkHIO_ironBall_c0::m.mPreThrowAnmSpeed, lit_34957, 30, daAlinkHIO_ironBall_c0::m.mPreThrowAnmInterpolation);
    field_0x2f99 = 12;
    field_0x3588 = l_ironBallBaseAnime;
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    current.angle.y = shape_angle.y;
    mProcVar2.field_0x300c = 0;
    field_0x3018 = 3;
    field_0x3024 = 0;
    field_0x3026 = 0;

    voiceStart(Z2SE_AL_V_THROW_IB);
    seStartOnlyReverb(Z2SE_AL_IB_THROW);
    field_0xFB8.SetAtAtp(3);
    return 1;
}

/* 80115860-801159F0 1101A0 0190+00 1/0 0/0 0/0 .text            procIronBallThrow__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procIronBallThrow() {
    nofralloc
#include "asm/d/a/d_a_alink/procIronBallThrow__9daAlink_cFv.s"
}
#pragma pop

/* 801159F0-80115AA0 110330 00B0+00 2/2 0/0 0/0 .text procIronBallReturnInit__9daAlink_cFv */
int daAlink_c::procIronBallReturnInit() {
    commonProcInit(PROC_IRON_BALL_RETURN);

    if (field_0x3018 == 8) {
        mProcVar2.field_0x300c = 1;
        setSingleAnimeParam(ANM_IRONBALL_CATCH, &daAlinkHIO_ironBall_c0::m.mCatchAnm);
        field_0x2f99 = 12;
    } else {
        setSingleAnimeBaseSpeed(ANM_IRONBALL_PULL, daAlinkHIO_ironBall_c0::m.mPullAnmSpeed, daAlinkHIO_ironBall_c0::m.mPullInterpolation);
        field_0x2f99 = 12;
        mProcVar2.field_0x300c = 0;
    }

    field_0x3588 = l_ironBallBaseAnime;
    return 1;
}

/* 80115AA0-80115C20 1103E0 0180+00 1/0 0/0 0/0 .text            procIronBallReturn__9daAlink_cFv */
int daAlink_c::procIronBallReturn() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (mEquipItem != IRONBALL) {
        return checkWaitAction();
    }

    field_0x2f99 = 4;

    if (field_0x3018 == 8 && mProcVar2.field_0x300c == 0) {
        mProcVar2.field_0x300c = 1;
        setSingleAnimeParam(ANM_IRONBALL_CATCH, &daAlinkHIO_ironBall_c0::m.mCatchAnm);
        field_0x2f99 = 12;
        seStartOnlyReverb(Z2SE_AL_IB_CATCH);

        f32 tmp_0 = FLOAT_LABEL(lit_6108);
        dComIfGp_getVibration().StartShock(3, 1, cXyz(tmp_0, lit_6040, tmp_0));
    } else if (frameCtrl->checkAnmEnd()) {
        if (field_0x3018 == 8) {
            field_0x3018 = 0;
            setIronBallWaitUpperAnime(1);
            checkNextAction(0);
        }
    } else if (field_0x3018 == 8 && frameCtrl->getFrame() > daAlinkHIO_ironBall_c0::m.mCatchAnm.mCheckFrame) {
        field_0x3018 = 0;
        setIronBallWaitUpperAnime(1);
        
        if (!checkNextAction(1)) {
            field_0x3018 = 8;
            resetUpperAnime(UPPER_2, FLOAT_LABEL(lit_6108));
        }
    }

    return 1;
}