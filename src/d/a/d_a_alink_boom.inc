#include "rel/d/a/d_a_boomerang/d_a_boomerang.h"

/* 800DFFE0-800E0010 0DA920 0030+00 0/0 0/0 1/1 .text checkBoomerangLockAccept__9daAlink_cFv */
BOOL daAlink_c::checkBoomerangLockAccept() {
    return mSight.getDrawFlg() && i_dComIfGp_checkPlayerStatus0(0, 0x80000);
}

/* 800E0010-800E00B0 0DA950 00A0+00 0/0 0/0 1/1 .text            getBoomSpeed__9daAlink_cFv */
f32 daAlink_c::getBoomSpeed() {
    f32 speed;
    if (checkBoomerangChargeEndWait()) {
        speed = daAlinkHIO_boom_c0::m.mFlySpeed2;
    } else {
        speed = daAlinkHIO_boom_c0::m.mFlySpeed;
    }

    if (i_checkModeFlg(0x400)) {
        fopAc_ac_c* ride_actor = mRideAcKeep.getActor();
        if (ride_actor != NULL && ride_actor->mSpeedF > FLOAT_LABEL(lit_6108)) {
            speed += ride_actor->mSpeedF;
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
    if (i_checkModeFlg(0x400) && !checkCanoeRide()) {
        return daAlinkHIO_boom_c0::m.mHorsebackFlyDistMax;
    } else {
        return daAlinkHIO_boom_c0::m.mFlyDistMax;
    }
}

/* 800E011C-800E0190 0DAA5C 0074+00 1/1 0/0 2/2 .text            getBoomLockMax__9daAlink_cFv */
f32 daAlink_c::getBoomLockMax() {
    f32 fly_max = getBoomFlyMax();

    if (checkBossBabaRoom()) {
        return lit_12475;
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
    if (i_checkNoResetFlg0(FLG0_UNK_20) && !checkEventRun() && !i_checkWolf() &&
        i_checkModeFlg(0x10000000) &&
        (checkHorseNoUpperAnime() || checkHorseTurnAnime() || checkBoomerangThrowAnime())) {
        deleteEquipItem(0, 0);
        seStartOnlyReverb(JA_SE_LK_BOOM_CATCH);
        i_offNoResetFlg0(FLG0_UNK_20);

        setGrabItemActor(i_grabActor);
        field_0x33e4 = lit_8785;
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
            f32 tmp = FLOAT_LABEL(lit_6108);
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
    return (mEquipItem == BOOMERANG || i_checkNoResetFlg1(FLG1_UNK_2) || mEquipItem == 0x102) &&
           checkUpperAnime(0x53);
}

/* 800E04E8-800E055C 0DAE28 0074+00 1/1 0/0 0/0 .text setBoomerangReadyQuake__9daAlink_cFv */
void daAlink_c::setBoomerangReadyQuake() {
    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    dComIfGp_getVibration().StartQuake(1, 1, cXyz(tmp_0, lit_6040, tmp_0));

    i_onNoResetFlg3(FLG3_UNK_4);
    field_0x3018 = daAlinkHIO_boom_c0::m.field_0x28;
}

/* 800E055C-800E05E8 0DAE9C 008C+00 2/2 0/0 0/0 .text setBoomerangReadyAnime__9daAlink_cFv */
#pragma push
#pragma optimization_level 2
void daAlink_c::setBoomerangReadyAnime() {
    f32 var_f31;
    if (i_checkAttentionLock()) {
        var_f31 = daAlinkHIO_boom_c0::m.mIdleAnmSpeed;
    } else {
        var_f31 = FLOAT_LABEL(lit_6108);
    }

    setUpperAnimeBaseSpeed(0x54, var_f31, lit_6109);
    setBoomerangReadyQuake();
}
#pragma pop

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
    i_onNoResetFlg1(FLG1_UNK_2);

    //! @bug `item` pointer is being accessed without checking if NULL first
    BOOL boomerang_item = fopAcM_GetName(item) == PROC_BOOMERANG;
    if (boomerang_item) {
        item->setThrow();
        item->current.angle.y = shape_angle.y + field_0x59e;
        item->current.angle.x = -mLookAngleY;

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
        item->mSpeedF = daAlinkHIO_pickUp_c0::m.field_0x28;
        item->mSpeed.y = daAlinkHIO_pickUp_c0::m.field_0x2C;
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

    if (i_checkModeFlg(MODE_RIDING)) {
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

        field_0x2060->initOldFrameMorf(FLOAT_LABEL(lit_6108), 0, 35);
    }
}

/* 800E08C4-800E0A9C 0DB204 01D8+00 0/0 0/0 1/1 .text            returnBoomerang__9daAlink_cFi */
int daAlink_c::returnBoomerang(int param_0) {
    dComIfGp_clearPlayerStatus0(0, 0x400000);

    if (mEquipItem == NO_ITEM && !i_checkMagneBootsOn() && mItemAcKeep.getActor() == NULL &&
        !checkBoardRide() && !checkBoarRide() && !i_checkWolf() &&
        (mProcID != PROC_HANG_READY || field_0x3198 != 3) && (!checkEventRun() || param_0 != 0) &&
        (checkNoUpperAnime() || checkPlayerGuard() || checkHorseTurnAnime() ||
         checkDashDamageAnime() || checkBoomerangAnime()) &&
        !i_checkModeFlg(0x1BD0810)) {
        mItemAcKeep = mThrowBoomerangAcKeep;
        mThrowBoomerangAcKeep.clearData();

        mEquipItem = BOOMERANG;
        field_0x2f94 = 2;
        i_onNoResetFlg0(FLG0_UNK_20);

        f32 tmp_0 = FLOAT_LABEL(lit_6108);
        dComIfGp_getVibration().StartShock(1, 1, cXyz(tmp_0, lit_6040, tmp_0));
        return 1;
    }

    mThrowBoomerangAcKeep.clearData();
    return 0;
}

/* 800E0A9C-800E0B58 0DB3DC 00BC+00 2/2 0/0 0/0 .text checkUpperItemActionBoomerang__9daAlink_cFv
 */
int daAlink_c::checkUpperItemActionBoomerang() {
    if (field_0x3018 != 0) {
        field_0x3018--;

        if (field_0x3018 == 0) {
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
#pragma push
#pragma optimization_level 2
int daAlink_c::checkNextActionBoomerang() {
    if ((checkBoomerangCatchAnime() &&
         mUpperFrameCtrl[2].getFrame() <= daAlinkHIO_boom_c0::m.mCatchAnm.field_0x10) ||
        i_checkNoResetFlg1(FLG1_UNK_2)) {
        return 0;
    }

    if (mFastShotTime != 0) {
        mFastShotTime--;
    }

    if (!checkBoomerangAnime()) {
        setBoomerangReadyAnime();
        setFastShotTimer();

        if (!i_checkAttentionLock()) {
            field_0x2fe4 = shape_angle.y;
        }
    }

    if (!i_checkAttentionLock() && mFastShotTime == 0) {
        if (i_checkModeFlg(0x400)) {
            if (checkCanoeRide()) {
                return procCanoeBoomerangSubjectInit();
            } else {
                return procHorseBoomerangSubjectInit();
            }
        } else {
            return procBoomerangSubjectInit();
        }
    } else if (i_checkModeFlg(0x400)) {
        if (checkCanoeRide()) {
            return procCanoeBoomerangMoveInit();
        } else {
            return procHorseBoomerangMoveInit();
        }
    } else {
        return procBoomerangMoveInit();
    }
}
#pragma pop

/* 800E0D8C-800E0E64 0DB6CC 00D8+00 1/1 0/0 0/0 .text checkBoomerangCatchAction__9daAlink_cFv */
int daAlink_c::checkBoomerangCatchAction() {
    if (i_checkNoResetFlg0(FLG0_UNK_20)) {
        if (!checkEventRun() && !i_checkWolf() && i_checkModeFlg(0x10000000)) {
            if (checkNoUpperAnime() || checkHorseTurnAnime() || checkBoomerangThrowAnime()) {
                if (i_checkModeFlg(0x1) && !i_checkModeFlg(0x400)) {
                    return procBoomerangCatchInit();
                }

                setBoomerangCatchAnime();
            }
        }

        i_offNoResetFlg0(FLG0_UNK_20);
    }

    return 0;
}

/* 800E0E64-800E0F10 0DB7A4 00AC+00 3/3 0/0 0/0 .text            setBoomerangSight__9daAlink_cFv */
void daAlink_c::setBoomerangSight() {
    if (mItemAcKeep.getActor() && !checkBoomerangThrowAnime()) {
        BOOL check_line = checkSightLine(getBoomLockMax(), &field_0x37e0);

        mSight.setPos(&field_0x37e0);
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

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    initBoomerangUpperAnimeSpeed(1);
    setSingleAnimeBaseSpeed(ANM_ATN_WAIT_RIGHT, FLOAT_LABEL(lit_6108),
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
        f32 var_f31 = lit_6041;

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
    i_offNoResetFlg0(FLG0_UNK_20);

    return 1;
}

/* 800E1248-800E12E0 0DBB88 0098+00 1/0 0/0 0/0 .text            procBoomerangCatch__9daAlink_cFv */
int daAlink_c::procBoomerangCatch() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;
    i_onEndResetFlg0(ERFLG0_UNK_8000000);

    if (frameCtrl->getFrame() > daAlinkHIO_boom_c0::m.mCatchAnm.field_0x10) {
        onModeFlg(4);
    }

    if (frameCtrl->checkAnmEnd()) {
        resetUpperAnime(UPPER_2, lit_6041);
        checkNextAction(0);
    } else {
        checkNextAction(1);
    }

    return 1;
}