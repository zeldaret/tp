/**
 * d_a_alink_boom.inc
 * Player Boomerang action handling
 */

#include "d/actor/d_a_boomerang.h"

/* 800DFFE0-800E0010 0DA920 0030+00 0/0 0/0 1/1 .text checkBoomerangLockAccept__9daAlink_cFv */
BOOL daAlink_c::checkBoomerangLockAccept() {
    return mSight.getDrawFlg() && dComIfGp_checkPlayerStatus0(0, 0x80000);
}

/* 800E0010-800E00B0 0DA950 00A0+00 0/0 0/0 1/1 .text            getBoomSpeed__9daAlink_cFv */
f32 daAlink_c::getBoomSpeed() {
    f32 speed;
    if (checkBoomerangChargeEndWait()) {
        speed = daAlinkHIO_boom_c0::m.mChargeFlySpeed;
    } else {
        speed = daAlinkHIO_boom_c0::m.mFlySpeed;
    }

    if (checkModeFlg(0x400)) {
        fopAc_ac_c* ride_actor = mRideAcKeep.getActor();
        if (ride_actor != NULL && ride_actor->speedF > 0.0f) {
            speed += ride_actor->speedF;
        }
    }

    return speed;
}

/* 800E00B0-800E00C0 0DA9F0 0010+00 0/0 0/0 1/1 .text            getBoomCatchSpeed__9daAlink_cCFv */
f32 daAlink_c::getBoomCatchSpeed() const {
    return daAlinkHIO_boom_c0::m.mCatchSpeed;
}

/* 800E00C0-800E011C 0DAA00 005C+00 1/1 0/0 1/1 .text            getBoomFlyMax__9daAlink_cCFv */
f32 daAlink_c::getBoomFlyMax() const {
    if (checkModeFlg(0x400) && !checkCanoeRide()) {
        return daAlinkHIO_boom_c0::m.mHorsebackFlyDistMax;
    } else {
        return daAlinkHIO_boom_c0::m.mFlyDistMax;
    }
}

/* 800E011C-800E0190 0DAA5C 0074+00 1/1 0/0 2/2 .text            getBoomLockMax__9daAlink_cFv */
f32 daAlink_c::getBoomLockMax() {
    f32 fly_max = getBoomFlyMax();

    if (checkBossBabaRoom()) {
        return 2600.0f;
    } else if (daAlinkHIO_boom_c0::m.mLockDistMax > fly_max) {
        return daAlinkHIO_boom_c0::m.mLockDistMax;
    } else {
        return fly_max;
    }
}

/* 800E0190-800E01A0 0DAAD0 0010+00 0/0 0/0 1/1 .text            getBoomBgThroughTime__9daAlink_cCFv
 */
s16 daAlink_c::getBoomBgThroughTime() const {
    return daAlinkHIO_boom_c0::m.mBgThroughTime;
}

/* 800E01A0-800E01CC 0DAAE0 002C+00 1/1 0/0 0/0 .text            checkBossBabaRoom__9daAlink_cFv */
bool daAlink_c::checkBossBabaRoom() {
    return checkStageName("D_MN05A");
}

/* 800E01CC-800E0210 0DAB0C 0044+00 0/0 1/1 0/0 .text
 * cancelBoomerangLock__9daAlink_cFP10fopAc_ac_c                */
void daAlink_c::cancelBoomerangLock(fopAc_ac_c* i_actor) {
    daBoomerang_c* boomerang = (daBoomerang_c*)getBoomerangActor();

    if (boomerang != NULL) {
        boomerang->cancelLockActor(i_actor);
    }
}

/* 800E0210-800E0244 0DAB50 0034+00 2/2 0/0 0/0 .text            getBoomerangActor__9daAlink_cFv */
fopAc_ac_c* daAlink_c::getBoomerangActor() {
    if (mThrowBoomerangAcKeep.getID() != 0xFFFFFFFF) {
        return mThrowBoomerangAcKeep.getActor();
    }

    if (mEquipItem == BOOMERANG) {
        return mItemAcKeep.getActor();
    }

    return NULL;
}

/* 800E0244-800E02B8 0DAB84 0074+00 0/0 1/1 0/0 .text checkBoomerangChargeEnd__9daAlink_cFv */
bool daAlink_c::checkBoomerangChargeEnd() {
    if (checkBoomerangChargeEndWait()) {
        return true;
    }

    daBoomerang_c* boomerang = (daBoomerang_c*)getBoomerangActor();
    if (boomerang != NULL && boomerang->checkCharge()) {
        return true;
    }

    return false;
}

/* 800E02B8-800E03D0 0DABF8 0118+00 0/0 1/1 0/0 .text
 * checkBoomerangCarry__9daAlink_cFP10fopAc_ac_c                */
BOOL daAlink_c::checkBoomerangCarry(fopAc_ac_c* i_grabActor) {
    if (checkNoResetFlg0(FLG0_UNK_20) && !checkEventRun() && !checkWolf() &&
        checkModeFlg(0x10000000) &&
        (checkHorseNoUpperAnime() || checkHorseTurnAnime() || checkBoomerangThrowAnime())) {
        deleteEquipItem(FALSE, FALSE);
        seStartOnlyReverb(JA_SE_LK_BOOM_CATCH);
        offNoResetFlg0(FLG0_UNK_20);

        setGrabItemActor(i_grabActor);
        field_0x33e4 = 38.0f;
        setGrabUpperAnime(daAlinkHIO_basic_c0::m.mAnmBlendFactor);
        return 1;
    }

    return 0;
}

/* 800E03D0-800E0440 0DAD10 0070+00 6/6 0/0 0/0 .text initBoomerangUpperAnimeSpeed__9daAlink_cFi
 */
void daAlink_c::initBoomerangUpperAnimeSpeed(int param_0) {
    if (!checkBoomerangThrowAnime()) {
        if (param_0 != 0) {
            f32 tmp = 0.0f;
            mUpperFrameCtrl[2].setRate(tmp);
            mUpperFrameCtrl[2].setFrame(tmp);
            getNowAnmPackUpper(UPPER_2)->setFrame(tmp);
        } else {
            mUpperFrameCtrl[2].setRate(daAlinkHIO_boom_c0::m.mIdleAnmSpeed);
        }
    }
}

/* 800E0440-800E04AC 0DAD80 006C+00 9/9 0/0 0/0 .text            checkBoomerangAnime__9daAlink_cCFv
 */
BOOL daAlink_c::checkBoomerangAnime() const {
    return checkBoomerangReadyAnime() || checkBoomerangThrowAnime();
}

/* 800E04AC-800E04E8 0DADEC 003C+00 13/13 0/0 0/0 .text checkBoomerangThrowAnime__9daAlink_cCFv */
BOOL daAlink_c::checkBoomerangThrowAnime() const {
    return (mEquipItem == BOOMERANG || checkNoResetFlg1(FLG1_UNK_2) || mEquipItem == noentry71) &&
           checkUpperAnime(0x53);
}

/* 800E04E8-800E055C 0DAE28 0074+00 1/1 0/0 0/0 .text setBoomerangReadyQuake__9daAlink_cFv */
void daAlink_c::setBoomerangReadyQuake() {
    f32 tmp_0 = 0.0f;
    dComIfGp_getVibration().StartQuake(1, 1, cXyz(tmp_0, 1.0f, tmp_0));

    onNoResetFlg3(FLG3_UNK_4);
    mItemVar0.field_0x3018 = daAlinkHIO_boom_c0::m.mChargeTime;
}

/* 800E055C-800E05E8 0DAE9C 008C+00 2/2 0/0 0/0 .text setBoomerangReadyAnime__9daAlink_cFv */
void daAlink_c::setBoomerangReadyAnime() {
    f32 var_f31;
    if (checkAttentionLock()) {
        var_f31 = daAlinkHIO_boom_c0::m.mIdleAnmSpeed;
    } else {
        var_f31 = 0.0f;
    }

    setUpperAnimeBaseSpeed(0x54, var_f31, 3.0f);
    setBoomerangReadyQuake();
}

/* 800E05E8-800E0630 0DAF28 0048+00 2/2 0/0 0/0 .text setThrowBoomerangAnime__9daAlink_cFv */
void daAlink_c::setThrowBoomerangAnime() {
    setUpperAnimeParam(0x53, UPPER_2, &daAlinkHIO_boom_c0::m.mThrowAnm);
    cancelItemUseQuake(0);
}

/* 800E0630-800E06B8 0DAF70 0088+00 2/2 0/0 0/0 .text setBoomerangCatchAnime__9daAlink_cFv */
void daAlink_c::setBoomerangCatchAnime() {
    setUpperAnimeParam(0x52, UPPER_2, &daAlinkHIO_boom_c0::m.mCatchAnm);
    setFacePriBck(0xE8);
    field_0x2f97 = 254;

    if (mEquipItem != COPY_ROD) {
        seStartOnlyReverb(JA_SE_LK_BOOM_CATCH);
    }
}

/* 800E06B8-800E08C4 0DAFF8 020C+00 1/1 0/0 0/0 .text            throwBoomerang__9daAlink_cFv */
void daAlink_c::throwBoomerang() {
    daBoomerang_c* item = (daBoomerang_c*)mItemAcKeep.getActor();
    onNoResetFlg1(FLG1_UNK_2);

    //! @bug `item` pointer is being accessed without checking if NULL first
    BOOL boomerang_item = fopAcM_GetName(item) == PROC_BOOMERANG;
    if (boomerang_item) {
        item->setThrow();
        item->current.angle.y = shape_angle.y + mBodyAngle.y;
        item->current.angle.x = -mBodyAngle.x;

        if (mTargetedActor != NULL) {
            item->setAimActor(mTargetedActor);
        }

        item->shape_angle.y = shape_angle.y;
        mThrowBoomerangAcKeep = mItemAcKeep;
        dComIfGp_setPlayerStatus0(0, 0x400000);
        daPy_boomerangMove_c::initDropAngleY();
        dComIfGp_clearPlayerStatus0(0, 0x80000);
        mFastShotTime = -1;
        daPy_boomerangMove_c::offEventKeepFlg();
    } else {
        item->speedF = daAlinkHIO_pickUp_c0::m.field_0x28;
        item->speed.y = daAlinkHIO_pickUp_c0::m.field_0x2C;
        item->current.angle.y = shape_angle.y;

        fopAcM_cancelCarryNow(item);
        item = NULL;
        mEquipItem = NO_ITEM;
        field_0x2f94 = 0xFF;
        field_0x2f96 = 0xFE;
    }

    mItemAcKeep.clearData();
    mEquipItem = NO_ITEM;
    field_0x2f94 = 0xFF;
    field_0x2f96 = 0xFE;

    voiceStart(Z2SE_AL_V_ATTACK_S);

    if (checkModeFlg(MODE_RIDING)) {
        if (checkCanoeRide()) {
            procCanoeWaitInit(0);
        } else {
            procHorseWaitInit();
        }
    } else if (mLinkAcch.ChkGroundHit() && boomerang_item) {
        if (mTargetedActor == NULL && item != NULL) {
            mTargetedActor = item;
            field_0x27f4 = item;
        }

        if (checkZeroSpeedF()) {
            field_0x2f98 = 3;
            procAtnActorWaitInit();
        } else {
            procAtnActorMoveInit();
        }

        field_0x2060->initOldFrameMorf(0.0f, 0, 35);
    }
}

/* 800E08C4-800E0A9C 0DB204 01D8+00 0/0 0/0 1/1 .text            returnBoomerang__9daAlink_cFi */
int daAlink_c::returnBoomerang(int param_0) {
    dComIfGp_clearPlayerStatus0(0, 0x400000);

    if (mEquipItem == NO_ITEM && !checkMagneBootsOn() && mItemAcKeep.getActor() == NULL &&
        !checkBoardRide() && !checkBoarRide() && !checkWolf() &&
        (mProcID != PROC_HANG_READY || field_0x3198 != 3) && (!checkEventRun() || param_0 != 0) &&
        (checkNoUpperAnime() || checkPlayerGuard() || checkHorseTurnAnime() ||
         checkDashDamageAnime() || checkBoomerangAnime()) &&
        !checkModeFlg(0x1BD0810)) {
        mItemAcKeep = mThrowBoomerangAcKeep;
        mThrowBoomerangAcKeep.clearData();

        mEquipItem = BOOMERANG;
        field_0x2f94 = 2;
        onNoResetFlg0(FLG0_UNK_20);

        f32 tmp_0 = 0.0f;
        dComIfGp_getVibration().StartShock(1, 1, cXyz(tmp_0, 1.0f, tmp_0));
        return 1;
    }

    mThrowBoomerangAcKeep.clearData();
    return 0;
}

/* 800E0A9C-800E0B58 0DB3DC 00BC+00 2/2 0/0 0/0 .text checkUpperItemActionBoomerang__9daAlink_cFv
 */
int daAlink_c::checkUpperItemActionBoomerang() {
    if (mItemVar0.field_0x3018 != 0) {
        mItemVar0.field_0x3018--;

        if (mItemVar0.field_0x3018 == 0) {
            cancelItemUseQuake(0);
        }
    }

    if (checkReadyItem() && !itemButton() && checkBoomerangReadyAnime()) {
        setThrowBoomerangAnime();
        return 1;
    }

    return cancelUpperItemReadyAnime(0);
}

/* 800E0B58-800E0BE4 0DB498 008C+00 1/1 0/0 0/0 .text
 * checkUpperItemActionBoomerangFly__9daAlink_cFv               */
void daAlink_c::checkUpperItemActionBoomerangFly() {
    if (checkBoomerangReadyAnime()) {
        checkUpperItemActionBoomerang();
    } else if (checkReadyItem() && itemTrigger()) {
        setBoomerangReadyAnime();
    }
}

/* 800E0BE4-800E0D8C 0DB524 01A8+00 4/4 0/0 0/0 .text checkNextActionBoomerang__9daAlink_cFv */
int daAlink_c::checkNextActionBoomerang() {
    if ((checkBoomerangCatchAnime() &&
         mUpperFrameCtrl[2].getFrame() <= daAlinkHIO_boom_c0::m.mCatchAnm.mCheckFrame) ||
        checkNoResetFlg1(FLG1_UNK_2)) {
        return 0;
    }

    if (mFastShotTime != 0) {
        mFastShotTime--;
    }

    if (!checkBoomerangAnime()) {
        setBoomerangReadyAnime();
        setFastShotTimer();

        if (!checkAttentionLock()) {
            field_0x2fe4 = shape_angle.y;
        }
    }

    if (!checkAttentionLock() && mFastShotTime == 0) {
        if (checkModeFlg(0x400)) {
            if (checkCanoeRide()) {
                return procCanoeBoomerangSubjectInit();
            } else {
                return procHorseBoomerangSubjectInit();
            }
        } else {
            return procBoomerangSubjectInit();
        }
    } else if (checkModeFlg(0x400)) {
        if (checkCanoeRide()) {
            return procCanoeBoomerangMoveInit();
        } else {
            return procHorseBoomerangMoveInit();
        }
    } else {
        return procBoomerangMoveInit();
    }
}

/* 800E0D8C-800E0E64 0DB6CC 00D8+00 1/1 0/0 0/0 .text checkBoomerangCatchAction__9daAlink_cFv */
int daAlink_c::checkBoomerangCatchAction() {
    if (checkNoResetFlg0(FLG0_UNK_20)) {
        if (!checkEventRun() && !checkWolf() && checkModeFlg(0x10000000)) {
            if (checkNoUpperAnime() || checkHorseTurnAnime() || checkBoomerangThrowAnime()) {
                if (checkModeFlg(0x1) && !checkModeFlg(0x400)) {
                    return procBoomerangCatchInit();
                }

                setBoomerangCatchAnime();
            }
        }

        offNoResetFlg0(FLG0_UNK_20);
    }

    return FALSE;
}

/* 800E0E64-800E0F10 0DB7A4 00AC+00 3/3 0/0 0/0 .text            setBoomerangSight__9daAlink_cFv */
void daAlink_c::setBoomerangSight() {
    if (mItemAcKeep.getActor() && !checkBoomerangThrowAnime()) {
        BOOL check_line = checkSightLine(getBoomLockMax(), &mHeldItemRootPos);

        mSight.setPos(&mHeldItemRootPos);
        mSight.onDrawFlg();

        daBoomerang_c* boomerang = (daBoomerang_c*)mItemAcKeep.getActor();
        if (boomerang->getLockReserve() || (check_line && !boomerang->getLockCntMax())) {
            setItemActionButtonStatus(0x10);
            itemActionTrigger();
        }
    }
}

/* 800E0F10-800E0FA0 0DB850 0090+00 1/1 0/0 0/0 .text procBoomerangSubjectInit__9daAlink_cFv */
int daAlink_c::procBoomerangSubjectInit() {
    if (!commonProcInitNotSameProc(PROC_BOOMERANG_SUBJECT)) {
        return 0;
    }

    mNormalSpeed = 0.0f;
    initBoomerangUpperAnimeSpeed(1);
    setSingleAnimeBaseSpeed(ANM_ATN_WAIT_RIGHT, 0.0f,
                            daAlinkHIO_boom_c0::m.mStartInterpolation);
    dComIfGp_setPlayerStatus0(0, 0x80000);
    current.angle.y = shape_angle.y;

    return 1;
}

/* 800E0FA0-800E1060 0DB8E0 00C0+00 1/0 0/0 0/0 .text            procBoomerangSubject__9daAlink_cFv
 */
int daAlink_c::procBoomerangSubject() {
    if (!checkItemActorPointer()) {
        return 1;
    }

    if (checkBoomerangReadyAnime()) {
        setDoStatus(0x12);
    }

    setShapeAngleToAtnActor(0);

    if (!checkNextAction(0)) {
        if (setBodyAngleToCamera()) {
            setBoomerangSight();
        }
    } else {
        mSight.offDrawFlg();
    }

    return 1;
}

/* 800E1060-800E10F4 0DB9A0 0094+00 1/1 0/0 0/0 .text            procBoomerangMoveInit__9daAlink_cFv
 */
int daAlink_c::procBoomerangMoveInit() {
    if (!commonProcInitNotSameProc(PROC_BOOMERANG_MOVE)) {
        return 0;
    }

    if (checkZeroSpeedF()) {
        onModeFlg(1);
    }

    initBoomerangUpperAnimeSpeed(0);
    setBlendAtnMoveAnime(daAlinkHIO_boom_c0::m.mStartInterpolation);

    dComIfGp_setPlayerStatus0(0, 0x80000);
    return 1;
}

/* 800E10F4-800E11D8 0DBA34 00E4+00 1/0 0/0 0/0 .text            procBoomerangMove__9daAlink_cFv */
int daAlink_c::procBoomerangMove() {
    if (!checkItemActorPointer()) {
        return 1;
    }

    if (!checkNextAction(0)) {
        f32 var_f31 = -1.0f;

        if (checkZeroSpeedF()) {
            onModeFlg(1);

            if (field_0x2f98 != 3) {
                field_0x2f98 = 3;
                var_f31 = daAlinkHIO_basic_c0::m.mAnmBlendFactor;
            }
        } else {
            offModeFlg(1);

            daBoomerang_c* boomerang = (daBoomerang_c*)mItemAcKeep.getActor();
            if (boomerang != NULL) {
                boomerang->onLockDistanceCancel();
            }
        }

        setBlendAtnMoveAnime(var_f31);
        setBodyAngleXReadyAnime(0);
    }

    return 1;
}

/* 800E11D8-800E1248 0DBB18 0070+00 1/1 0/0 0/0 .text procBoomerangCatchInit__9daAlink_cFv */
int daAlink_c::procBoomerangCatchInit() {
    if (!commonProcInitNotSameProc(PROC_BOOMERANG_CATCH)) {
        return 0;
    }

    setSingleAnimeParam(ANM_BOOMERANG_CATCH, &daAlinkHIO_boom_c0::m.mCatchAnm);
    setBoomerangCatchAnime();
    offNoResetFlg0(FLG0_UNK_20);

    return 1;
}

/* 800E1248-800E12E0 0DBB88 0098+00 1/0 0/0 0/0 .text            procBoomerangCatch__9daAlink_cFv */
int daAlink_c::procBoomerangCatch() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;
    onEndResetFlg0(ERFLG0_UNK_8000000);

    if (frameCtrl->getFrame() > daAlinkHIO_boom_c0::m.mCatchAnm.mCheckFrame) {
        onModeFlg(4);
    }

    if (frameCtrl->checkAnmEnd()) {
        resetUpperAnime(UPPER_2, -1.0f);
        checkNextAction(0);
    } else {
        checkNextAction(1);
    }

    return 1;
}
