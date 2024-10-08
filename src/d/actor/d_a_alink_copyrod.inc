/**
 * d_a_alink_copyrod.inc
 * Player Dominion Rod action handling
 */

#include "d/actor/d_a_cstatue.h"

/* 800E12E0-800E1310 0DBC20 0030+00 1/1 0/0 0/0 .text            checkLv6BossRoom__9daAlink_cFv */
BOOL daAlink_c::checkLv6BossRoom() {
    return checkStageName("D_MN06A");
}

/* 800E1310-800E1320 0DBC50 0010+00 0/0 0/0 1/1 .text            getCopyRodBallSpeed__9daAlink_cCFv
 */
f32 daAlink_c::getCopyRodBallSpeed() const {
    return daAlinkHIO_copyRod_c0::m.mBallSpeed;
}

/* 800E1320-800E1330 0DBC60 0010+00 0/0 0/0 1/1 .text getCopyRodBallReturnSpeed__9daAlink_cCFv */
f32 daAlink_c::getCopyRodBallReturnSpeed() const {
    return daAlinkHIO_copyRod_c0::m.mBallReturnSpeed;
}

/* 800E1330-800E1374 0DBC70 0044+00 3/3 0/0 2/2 .text            getCopyRodBallDisMax__9daAlink_cCFv
 */
f32 daAlink_c::getCopyRodBallDisMax() const {
    if (checkLv6BossRoom()) {
        return daAlinkHIO_copyRod_c0::m.mBossBallMaxDistance;
    }

    return daAlinkHIO_copyRod_c0::m.mBallMaxDistance;
}

/* 800E1374-800E1390 0DBCB4 001C+00 6/6 0/0 7/7 .text getCopyRodControllActor__9daAlink_cFv */
fopAc_ac_c* daAlink_c::getCopyRodControllActor() {
    if (mCopyRodAcKeep.getActor() != NULL) {
        return static_cast<daCrod_c*>(mCopyRodAcKeep.getActor())->getControllActor();
    }

    return NULL;
}

/* 800E1390-800E13AC 0DBCD0 001C+00 0/0 4/4 1/1 .text            getCopyRodCameraActor__9daAlink_cFv
 */
fopAc_ac_c* daAlink_c::getCopyRodCameraActor() {
    if (mCopyRodAcKeep.getActor() != NULL) {
        return static_cast<daCrod_c*>(mCopyRodAcKeep.getActor())->getCameraActor();
    }

    return NULL;
}

/* 800E13AC-800E1408 0DBCEC 005C+00 2/2 0/0 0/0 .text initCopyRodUpperAnimeSpeed__9daAlink_cFi */
void daAlink_c::initCopyRodUpperAnimeSpeed(int param_0) {
    if (!checkCopyRodThrowAnime()) {
        if (param_0) {
            f32 tmp_0 = FLOAT_LABEL(lit_6108);
            mUpperFrameCtrl[2].setRate(tmp_0);
            mUpperFrameCtrl[2].setFrame(tmp_0);
            getNowAnmPackUpper(UPPER_2)->setFrame(tmp_0);
        } else {
            mUpperFrameCtrl[2].setRate(daAlinkHIO_boom_c0::m.mIdleAnmSpeed);
        }
    }
}

/* 800E1408-800E145C 0DBD48 0054+00 2/2 0/0 0/0 .text            checkForestOldCentury__9daAlink_cFv
 */
BOOL daAlink_c::checkForestOldCentury() {
    return checkStageName("F_SP117") && dComIfGp_roomControl_getStayNo() == 2;
}

/* 800E145C-800E1530 0DBD9C 00D4+00 1/0 0/0 0/0 .text            checkCopyRodTopUse__9daAlink_cFv */
BOOL daAlink_c::checkCopyRodTopUse() {
    // Event flag 0x2580: Dominion Rod power restored
    return (dComIfGs_isEventBit(0x2580) && !(mProcID == PROC_UNEQUIP && mProcVar3.field_0x300e.x != 0)) ||
           i_dStage_stagInfo_GetSaveTbl(dComIfGp_getStageStagInfo()) == 0x15 ||
           checkForestOldCentury();
}

/* 800E1530-800E158C 0DBE70 005C+00 4/4 0/0 0/0 .text            checkCopyRodAnime__9daAlink_cCFv */
BOOL daAlink_c::checkCopyRodAnime() const {
    return checkCopyRodReadyAnime() || checkCopyRodThrowAnime();
}

/* 800E158C-800E15FC 0DBECC 0070+00 2/2 0/0 0/0 .text setCopyRodControllAnime__9daAlink_cFv */
void daAlink_c::setCopyRodControllAnime() {
    if (checkNoUpperAnime() && getCopyRodControllActor()) {
        setUpperAnimeBaseSpeed(0x202, FLOAT_LABEL(lit_6108), lit_6109);
        field_0x2f96 = 2;
        field_0x2f97 = 5;
        field_0x33e8 = FLOAT_LABEL(lit_6108);
    }
}

/* 800E15FC-800E1748 0DBF3C 014C+00 1/1 0/0 0/0 .text
 * setCopyRodControllUpperSpeedRate__9daAlink_cFv               */
void daAlink_c::setCopyRodControllUpperSpeedRate() {
    // NONMATCHING
}

/* 800E1748-800E1840 0DC088 00F8+00 2/2 0/0 0/0 .text            setCopyRodModel__9daAlink_cFv */
void daAlink_c::setCopyRodModel() {
    JKRHeap* heap = setItemHeap();
    J3DModelData* mdl_data = loadAramBmd(0x315, 0x5400);
    mHeldItemModel = initModel(mdl_data, 0x80000, 0x1000000);
    field_0x0724 = loadAramItemBrk(0x323, mHeldItemModel);
    mDoExt_setCurrentHeap(heap);
    field_0x0724->setFrame(FLOAT_LABEL(lit_6108));
    field_0x2f94 = 2;
    mAtCps[0].SetAtSpl(dCcG_At_Spl_UNK_0);
    mAtCps[0].SetAtAtp(0);
    mAtCps[0].SetAtSe(20);
    mAtCps[0].SetAtHitMark(1);
    mAtCps[0].OnAtSetBit();
    mAtCps[0].SetAtHitCallback(NULL);
    mAtCps[0].SetAtMtrl(dCcD_MTRL_NONE);
    mHeldItemModel->setBaseTRMtx(mpLinkModel->getAnmMtx(field_0x30c0));
    mHeldItemModel->calc();
}

/* 800E1840-800E191C 0DC180 00DC+00 2/2 0/0 0/0 .text            setCopyRodReadyAnime__9daAlink_cFv
 */
void daAlink_c::setCopyRodReadyAnime() {
    f32 speed;
    if (checkAttentionLock()) {
        speed = daAlinkHIO_boom_c0::m.mIdleAnmSpeed;
    } else {
        speed = FLOAT_LABEL(lit_6108);
    }

    setUpperAnimeBaseSpeed(0x54, speed, lit_6109);

    if (checkCopyRodTopUse()) {
        seStartSwordCut(Z2SE_AL_COPYROD_READY);
    } else {
        seStartSwordCut(Z2SE_AL_COPYROD_READY_OFF);
    }

    mAtCps[0].SetR(lit_8676);
    mAtCps[0].SetAtType(0x1000000);
    initLockAt();
}

/* 800E191C-800E1A30 0DC25C 0114+00 1/1 0/0 0/0 .text            throwCopyRod__9daAlink_cFv */
void daAlink_c::throwCopyRod() {
    daCrod_c* copy_rod = static_cast<daCrod_c*>(mItemAcKeep.getActor());
    onNoResetFlg1(FLG1_UNK_10000);

    if (checkCopyRodTopUse()) {
        copy_rod->setThrow();
        mCopyRodAcKeep = mItemAcKeep;
        onNoResetFlg3(FLG3_COPY_ROD_THROW_AFTER);
        mItemAcKeep.clearData();
    }
    dComIfGp_clearPlayerStatus0(0, 0x80);
    mFastShotTime = -1;
    voiceStart(Z2SE_AL_V_ATTACK_S);
    seStartSwordCut(Z2SE_AL_COPYROD_SWING);

    if (mLinkAcch.ChkGroundHit()) {
        if (checkZeroSpeedF()) {
            field_0x2f98 = 3;
            procAtnActorWaitInit();
        } else {
            procAtnActorMoveInit();
        }
        field_0x2060->initOldFrameMorf(FLOAT_LABEL(lit_6108), 0, 35);
    }
}

/* 800E1A30-800E1ADC 0DC370 00AC+00 0/0 0/0 1/1 .text            returnCopyRod__9daAlink_cFv */
int daAlink_c::returnCopyRod() {
    offNoResetFlg3(FLG3_COPY_ROD_THROW_AFTER);

    int var_r31;
    if (mEquipItem == COPY_ROD) {
        mItemAcKeep = mCopyRodAcKeep;
        onNoResetFlg0(FLG0_UNK_20);
        var_r31 = 1;

        f32 tmp_0 = FLOAT_LABEL(lit_6108);
        dComIfGp_getVibration().StartShock(1, 1, cXyz(tmp_0, lit_6040, tmp_0));
    } else {
        var_r31 = 0;
    }

    mCopyRodAcKeep.clearData();
    return var_r31;
}

/* 800E1ADC-800E1BB4 0DC41C 00D8+00 2/2 0/0 0/0 .text checkUpperItemActionCopyRod__9daAlink_cFv */
BOOL daAlink_c::checkUpperItemActionCopyRod() {
    if (mItemVar0.field_0x3018 != 0) {
        mItemVar0.field_0x3018--;
    }

    if (checkReadyItem() && !itemButton() && checkCopyRodReadyAnime()) {
        setUpperAnimeParam(0x53, UPPER_2, &daAlinkHIO_boom_c0::m.mThrowAnm);
        mSearchBallScale = getCopyRodBallDisMax();

        if (!mSight.getLockFlg()) {
            mSearchBallScale -= lit_7308;
        }

        return true;
    }

    return cancelUpperItemReadyAnime(0);
}

/* 800E1BB4-800E1C44 0DC4F4 0090+00 1/1 0/0 0/0 .text checkUpperItemActionCopyRodFly__9daAlink_cFv
 */
void daAlink_c::checkUpperItemActionCopyRodFly() {
    if (mCopyRodAcKeep.getActor() == NULL) {
        if (checkCopyRodReadyAnime()) {
            checkUpperItemActionCopyRod();
        } else if (checkReadyItem() && itemTrigger()) {
            setCopyRodReadyAnime();
        }
    }
}

/* 800E1C44-800E1D6C 0DC584 0128+00 2/2 0/0 0/0 .text checkNextActionCopyRod__9daAlink_cFv */
int daAlink_c::checkNextActionCopyRod() {
    if ((checkBoomerangCatchAnime() &&
         mUpperFrameCtrl[2].getFrame() <= daAlinkHIO_boom_c0::m.mCatchAnm.mCheckFrame) ||
        checkNoResetFlg1(FLG1_UNK_10000)) {
        return 0;
    }

    if (mFastShotTime != 0) {
        mFastShotTime--;
    }

    if (!checkCopyRodAnime()) {
        setCopyRodReadyAnime();
        setFastShotTimer();

        if (!checkAttentionLock()) {
            field_0x2fe4 = shape_angle.y;
        }
    }

    if (!checkAttentionLock() && mFastShotTime == 0) {
        return procCopyRodSubjectInit();
    }

    return procCopyRodMoveInit();
}

/* 800E1D6C-800E1E20 0DC6AC 00B4+00 1/1 0/0 0/0 .text            setCopyRodSight__9daAlink_cFv */
void daAlink_c::setCopyRodSight() {
    if (mItemAcKeep.getActor() && !checkCopyRodThrowAnime()) {
        cXyz sight_pos;

        checkSightLine(getCopyRodBallDisMax(), &sight_pos);
        mSight.setPos(&sight_pos);
        mSight.onDrawFlg();

        if (mAtCps[0].ChkAtHit()) {
            mSight.onLockFlg();
        } else {
            mSight.offLockFlg();
        }
    }
}

/* 800E1E20-800E1EB0 0DC760 0090+00 1/1 0/0 0/0 .text procCopyRodSubjectInit__9daAlink_cFv */
int daAlink_c::procCopyRodSubjectInit() {
    if (!commonProcInitNotSameProc(PROC_COPY_ROD_SUBJECT)) {
        return 0;
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    initCopyRodUpperAnimeSpeed(1);
    setSingleAnimeBaseSpeed(ANM_ATN_WAIT_RIGHT, FLOAT_LABEL(lit_6108), daAlinkHIO_boom_c0::m.mStartInterpolation);

    dComIfGp_setPlayerStatus0(0, 0x80);
    current.angle.y = shape_angle.y;
    return 1;
}

/* 800E1EB0-800E1F68 0DC7F0 00B8+00 1/0 0/0 0/0 .text            procCopyRodSubject__9daAlink_cFv */
int daAlink_c::procCopyRodSubject() {
    if (!checkItemActorPointer()) {
        return 1;
    }

    if (checkCopyRodReadyAnime()) {
        setDoStatus(0x12);
    }

    setShapeAngleToAtnActor(0);

    if (!checkNextAction(0)) {
        if (setBodyAngleToCamera()) {
            setCopyRodSight();
        }
    } else {
        mSight.offDrawFlg();
    }

    return 1;
}

/* 800E1F68-800E1FFC 0DC8A8 0094+00 1/1 0/0 0/0 .text            procCopyRodMoveInit__9daAlink_cFv
 */
int daAlink_c::procCopyRodMoveInit() {
    if (!commonProcInitNotSameProc(PROC_COPY_ROD_MOVE)) {
        return 0;
    }

    if (checkZeroSpeedF()) {
        onModeFlg(1);
    }

    initCopyRodUpperAnimeSpeed(0);
    setBlendAtnMoveAnime(daAlinkHIO_boom_c0::m.mStartInterpolation);

    dComIfGp_setPlayerStatus0(0, 0x80);
    return 1;
}

/* 800E1FFC-800E20C8 0DC93C 00CC+00 1/0 0/0 0/0 .text            procCopyRodMove__9daAlink_cFv */
int daAlink_c::procCopyRodMove() {
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
        }

        setBlendAtnMoveAnime(var_f31);
        setBodyAngleXReadyAnime(0);
    }

    return 1;
}

/* 800E20C8-800E21FC 0DCA08 0134+00 1/1 0/0 0/0 .text            procCopyRodSwingInit__9daAlink_cFv
 */
int daAlink_c::procCopyRodSwingInit() {
    commonProcInit(PROC_COPY_ROD_SWING);
    daCstatue_c* statue = (daCstatue_c*)getCopyRodControllActor();

    if (statue != NULL && ((fopAcM_GetName(statue) == PROC_CSTATUE && !statue->checkNotSmallType()) || fopAcM_GetName(statue) != PROC_CSTATUE)) {
        setSingleAnimeParam(ANM_COPYROD_SWING_LARGE, &daAlinkHIO_copyRod_c0::m.mBigSwingAnm);
        field_0x3478 = lit_8781;
        field_0x347c = lit_13382;
        field_0x3480 = daAlinkHIO_copyRod_c0::m.mBigSwingAnm.mCheckFrame;
        field_0x3484 = lit_7807;
    } else {
        setSingleAnimeParam(ANM_COPYROD_SWING, &daAlinkHIO_copyRod_c0::m.mSwingAnm);
        field_0x3478 = lit_7450;
        field_0x347c = lit_8783;
        field_0x3480 = daAlinkHIO_copyRod_c0::m.mSwingAnm.mCheckFrame;
        field_0x3484 = lit_8130;
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    current.angle.y = shape_angle.y;
    mProcVar2.field_0x300c = 1;
    mProcVar3.field_0x300e.x = 0;

    voiceStart(Z2SE_AL_V_ATTACK_S);
    mAtCps[0].SetR(lit_11442);
    mAtCps[0].SetAtType(AT_TYPE_COPY_ROD);
    cancelLockAt();
    return 1;
}

/* 800E21FC-800E2308 0DCB3C 010C+00 1/0 0/0 0/0 .text            procCopyRodSwing__9daAlink_cFv */
int daAlink_c::procCopyRodSwing() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;
    mProcVar2.field_0x300c = 0;

    if (frameCtrl->checkAnmEnd()) {
        setCopyRodControllAnime();
        checkNextAction(0);
    } else if (frameCtrl->getFrame() > field_0x3480 && checkNextAction(1)) {
        if (checkModeFlg(0x1000)) {
            setCopyRodControllAnime();
        }
    } else if (frameCtrl->getFrame() >= field_0x3478 && frameCtrl->getFrame() < field_0x347c) {
        if (mProcVar3.field_0x300e.x == 0) {
            seStartSwordCut(Z2SE_AL_COPYROD_SWING);
        }

        mProcVar3.field_0x300e.x = 1;
        if (changeCutReverseProc(ANM_CUT_RECOIL_A)) {
            return 1;
        }
    } else {
        mProcVar3.field_0x300e.x = 0;
    }

    return 1;
}

/* 800E2308-800E23A4 0DCC48 009C+00 1/0 0/0 0/0 .text            procCopyRodReviveInit__9daAlink_cFv
 */
int daAlink_c::procCopyRodReviveInit() {
    if (!commonProcInitNotSameProc(PROC_COPY_ROD_REVIVE)) {
        return 1;
    }

    if (mDemo.getParam0() == 0) {
        if (mEquipItem != COPY_ROD) {
            deleteEquipItem(0, 0);
            mEquipItem = COPY_ROD;
            setCopyRodModel();
        }
        field_0x0724->setFrame(FLOAT_LABEL(lit_6108));
    }

    setSingleAnimeBase(ANM_GET_MASTER_SWORD);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    return 1;
}

/* 800E23A4-800E23FC 0DCCE4 0058+00 1/0 0/0 0/0 .text            procCopyRodRevive__9daAlink_cFv */
int daAlink_c::procCopyRodRevive() {
    simpleAnmPlay(field_0x0724);

    if (mUnderFrameCtrl[0].checkAnmEnd()) {
        dComIfGp_evmng_cutEnd(field_0x3184);
    }

    return 1;
}