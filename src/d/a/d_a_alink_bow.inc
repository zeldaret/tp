#include "rel/d/a/d_a_arrow/d_a_arrow.h"

/* 800DE64C-800DE740 0D8F8C 00F4+00 1/1 0/0 2/2 .text            getArrowFlyData__9daAlink_cCFPfPfi
 */
void daAlink_c::getArrowFlyData(f32* param_0, f32* param_1, int param_2) const {
    if (mEquipItem == PACHINKO) {
        *param_0 = daAlinkHIO_bow_c0::m.field_0x6c;
        *param_1 = daAlinkHIO_bow_c0::m.field_0x68;
    } else if (i_dComIfGp_checkPlayerStatus0(0, 0x200000)) {
        *param_0 = daAlinkHIO_bow_c0::m.field_0x5c;
        *param_1 = daAlinkHIO_bow_c0::m.field_0x58;
    } else if (field_0x301c == 0 || param_2 != 0) {
        if (field_0x301e == 1) {
            *param_0 = daAlinkHIO_bow_c0::m.field_0x54;
            *param_1 = daAlinkHIO_bow_c0::m.field_0x50;
        } else {
            *param_0 = daAlinkHIO_bow_c0::m.field_0x40;
            *param_1 = daAlinkHIO_bow_c0::m.field_0x3c;
        }
    } else if (field_0x301e == 1) {
        *param_0 = daAlinkHIO_bow_c0::m.field_0x4c;
        *param_1 = daAlinkHIO_bow_c0::m.field_0x48;
    } else {
        *param_0 = daAlinkHIO_bow_c0::m.field_0x38;
        *param_1 = daAlinkHIO_bow_c0::m.field_0x34;
    }
}

/* 800DE740-800DE750 0D9080 0010+00 0/0 0/0 1/1 .text            getArrowIncAtR__9daAlink_cCFv */
f32 daAlink_c::getArrowIncAtR() const {
    return daAlinkHIO_bow_c0::m.field_0x44;
}

/* 800DE750-800DE760 0D9090 0010+00 0/0 0/0 1/1 .text getBombArrowFlyExplodeTime__9daAlink_cCFv */
s16 daAlink_c::getBombArrowFlyExplodeTime() const {
    return daAlinkHIO_bow_c0::m.mBombArrowFlyExplodeTime;
}

/* 800DE760-800DE770 0D90A0 0010+00 0/0 0/0 1/1 .text getArrowIncAtMaxStart__9daAlink_cCFv */
f32 daAlink_c::getArrowIncAtMaxStart() const {
    return daAlinkHIO_bow_c0::m.mArrowIncAtMaxStart;
}

/* 800DE770-800DE780 0D90B0 0010+00 0/0 0/0 1/1 .text            getArrowIncAtMax__9daAlink_cCFv */
f32 daAlink_c::getArrowIncAtMax() const {
    return daAlinkHIO_bow_c0::m.mArrowIncAtMax;
}

/* 800DE780-800DE7D4 0D90C0 0054+00 10/10 0/0 0/0 .text checkBowAndSlingItem__9daAlink_cFi */
BOOL daAlink_c::checkBowAndSlingItem(int i_itemNo) {
    return checkBowItem(i_itemNo) || i_itemNo == PACHINKO;
}

/* 800DE7D4-800DE884 0D9114 00B0+00 1/1 0/0 0/0 .text            setSlingModel__9daAlink_cFv */
void daAlink_c::setSlingModel() {
    J3DAnmTransform* bck = (J3DAnmTransform*)mAnmHeap9.loadDataIdx(0x1F9);
    JKRHeap* heap = setItemHeap();

    J3DModelData* model_data = loadAramBmd(0x319, 0x2C00);
    mHeldItemModel = initModel(model_data, 0);
    field_0x730.init(bck, 0, 2, lit_6040, 0, -1, false);

    mDoExt_setCurrentHeap(heap);
    field_0x2f95 = 5;
    field_0x2f94 = 103;
}

/* 800DE884-800DE990 0D91C4 010C+00 0/0 1/1 1/1 .text checkBowCameraArrowPosP__9daAlink_cFPsPs */
cXyz* daAlink_c::checkBowCameraArrowPosP(s16* param_0, s16* param_1) {
    if (!checkBowAnime() || mEquipItem == PACHINKO) {
        return NULL;
    }

    s16 var_28;
    if (checkHorseRide() && i_checkBoarSingleBattle() && i_dComIfGp_getHorseActor() != NULL) {
        var_28 = i_dComIfGp_getHorseActor()->shape_angle.y;
    } else if (i_checkMagneBootsOn()) {
        var_28 = field_0x3118;
    } else {
        var_28 = shape_angle.y;
    }

    var_28 += field_0x59e;

    mDoMtx_stack_c::transS(field_0x3834);
    concatMagneBootMtx();
    mDoMtx_stack_c::ZXYrotM(mLookAngleY, var_28, 0);
    mDoMtx_stack_c::multVec(&localPos, &field_0x37e0);

    *param_0 = mLookAngleY;
    *param_1 = var_28;
    return &field_0x37e0;
}

/* 800DE990-800DE9B8 0D92D0 0028+00 1/0 0/0 0/0 .text            checkArrowChargeEnd__9daAlink_cCFv
 */
bool daAlink_c::checkArrowChargeEnd() const {
    return checkBowChargeWaitAnime() && field_0x301c == 0;
}

/* 800DE9B8-800DE9E8 0D92F8 0030+00 3/3 0/0 0/0 .text            checkBowReadyAnime__9daAlink_cCFv
 */
BOOL daAlink_c::checkBowReadyAnime() const {
    return checkBowReloadAnime() || checkBowChargeWaitAnime() || checkBowWaitAnime();
}

/* 800DE9E8-800DEA3C 0D9328 0054+00 16/16 0/0 0/0 .text            checkBowAnime__9daAlink_cCFv */
BOOL daAlink_c::checkBowAnime() const {
    return checkBowReadyAnime() || checkBowShootAnime();
}

/* 800DEA3C-800DEAE4 0D937C 00A8+00 2/2 0/0 0/0 .text            makeArrow__9daAlink_cFv */
void daAlink_c::makeArrow() {
    if (dComIfGs_getArrowNum() != 0) {
        if (field_0x301e == 1 && dComIfGp_getSelectItemNum(mSelectItemId) == 0) {
            field_0x301e = 0;
        }

        fopAc_ac_c* arrow_actor = daArrow_c::makeArrow(this, field_0x301e);
        mItemAcKeep.setData(arrow_actor);
    }

    field_0x3018 = 0;
}

/* 800DEAE4-800DEB8C 0D9424 00A8+00 3/3 0/0 0/0 .text            deleteArrow__9daAlink_cFv */
void daAlink_c::deleteArrow() {
    daArrow_c* arrow = (daArrow_c*)mItemAcKeep.getActor();

    if (arrow != NULL && fopAcM_GetName(arrow) == PROC_ARROW) {
        if (arrow->checkBombArrow() &&
            (mDamageTimer == daAlinkHIO_damage_c0::m.field_0x2A || i_checkModeFlg(8))) {
            arrow->setBombArrowExplode();
            dComIfGp_addSelectItemNum(mSelectItemId, -1);
            dComIfGp_setItemArrowNumCount(-1);
        } else {
            fopAcM_delete(arrow);
        }
        mItemAcKeep.clearData();
    }
}

/* 800DEB8C-800DEBC8 0D94CC 003C+00 6/6 0/0 0/0 .text            setBowOrSlingStatus__9daAlink_cFv
 */
void daAlink_c::setBowOrSlingStatus() {
    if (mEquipItem == PACHINKO) {
        dComIfGp_setPlayerStatus0(0, 0x40);
    } else {
        dComIfGp_setPlayerStatus0(0, 0x1000);
    }
}

/* 800DEBC8-800DED88 0D9508 01C0+00 1/1 0/0 0/0 .text            changeArrowType__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::changeArrowType() {
    nofralloc
#include "asm/d/a/d_a_alink/changeArrowType__9daAlink_cFv.s"
}
#pragma pop

/* 800DED88-800DEE1C 0D96C8 0094+00 1/1 0/0 0/0 .text cancelBowMoveRideNotAtn__9daAlink_cFv */
#pragma push
#pragma optimization_level 2
BOOL daAlink_c::cancelBowMoveRideNotAtn() {
    return i_checkModeFlg(0x400) && i_checkAttentionLock() && mTargetedActor == NULL;
}
#pragma pop

/* 800DEE1C-800DEEDC 0D975C 00C0+00 3/3 0/0 0/0 .text            cancelBowMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 2
BOOL daAlink_c::cancelBowMove() {
    if (mTargetedActor == NULL && !i_checkAttentionLock() && mFastShotTime == 0 &&
        !checkBowReadyAnime() && (!checkBowShootAnime() || mUpperFrameCtrl[2].checkAnmEnd())) {
        resetUpperAnime(UPPER_2, lit_6041);
        return true;
    }

    return false;
}
#pragma pop

/* 800DEEDC-800DEFB8 0D981C 00DC+00 3/3 0/0 0/0 .text            setBowReadyAnime__9daAlink_cFv */
void daAlink_c::setBowReadyAnime() {
    if (!checkBowAnime()) {
        if (mEquipItem == BOMB_ARROW) {
            if (dComIfGp_getSelectItemNum(mSelectItemId) != 0) {
                field_0x301e = 1;
            } else {
                field_0x301e = 0;
            }
        } else {
            field_0x301e = 0;
        }
    }

    setUpperAnimeBase(0xD);

    if (i_checkResetFlg0(RFLG0_UNK_80)) {
        mItemMode = 0;
    } else {
        mItemMode = 3;
    }

    field_0x2f97 = 5;
    field_0x2f96 = 4;

    if (mEquipItem == PACHINKO) {
        changeItemBck(0x1F1, lit_6041);
    } else {
        changeItemBck(0x43, lit_6041);
    }
}

/* 800DEFB8-800DF0BC 0D98F8 0104+00 2/2 0/0 0/0 .text            setBowReloadAnime__9daAlink_cFv */
void daAlink_c::setBowReloadAnime() {
    setUpperAnimeParam(9, UPPER_2, &daAlinkHIO_bow_c0::m.field_0x14);
    setFacePriTexture(FTANM_UNK_8);
    setFacePriBck(0xE5);

    if (mEquipItem == PACHINKO) {
        changeItemBck(0x1F0, daAlinkHIO_bow_c0::m.field_0x14.mStart);
        field_0x2f97 = 5;
        seStartOnlyReverb(Z2SE_AL_PACHINKO_DRAW);
    } else {
        changeItemBck(0x41, daAlinkHIO_bow_c0::m.field_0x14.mStart);
        field_0x2f97 = 7;
        seStartOnlyReverb(Z2SE_AL_DRAW_BOW);
    }

    field_0x2f96 = 0;
    field_0x301c = daAlinkHIO_bow_c0::m.field_0x28;
}

/* 800DF0BC-800DF798 0D99FC 06DC+00 2/2 0/0 0/0 .text checkUpperItemActionBow__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkUpperItemActionBow() {
    nofralloc
#include "asm/d/a/d_a_alink/checkUpperItemActionBow__9daAlink_cFv.s"
}
#pragma pop

/* 800DF798-800DF814 0DA0D8 007C+00 1/1 0/0 0/0 .text checkUpperItemActionBowFly__9daAlink_cFv */
void daAlink_c::checkUpperItemActionBowFly() {
    if (checkBowAnime()) {
        checkUpperItemActionBow();
        setBodyAngleXReadyAnime(0);
    } else if (checkReadyItem() && itemTrigger()) {
        setBowReadyAnime();
        mItemMode = 0;
    }
}

/* 800DF814-800DFAE8 0DA154 02D4+00 4/4 0/0 0/0 .text            checkNextActionBow__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::checkNextActionBow() {
    nofralloc
#include "asm/d/a/d_a_alink/checkNextActionBow__9daAlink_cFv.s"
}
#pragma pop

/* 800DFAE8-800DFBC8 0DA428 00E0+00 1/1 0/0 0/0 .text            setBowModel__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBowModel() {
    nofralloc
#include "asm/d/a/d_a_alink/setBowModel__9daAlink_cFv.s"
}
#pragma pop

/* 800DFBC8-800DFC28 0DA508 0060+00 4/4 0/0 0/0 .text            checkBowGrabLeftHand__9daAlink_cCFv
 */
bool daAlink_c::checkBowGrabLeftHand() const {
    return i_checkReinRide() && !checkBowAnime();
}

/* 800DFC28-800DFC70 0DA568 0048+00 6/6 0/0 0/0 .text            setBowHangAnime__9daAlink_cFv */
void daAlink_c::setBowHangAnime() {
    if (checkBowItem(mEquipItem)) {
        changeItemBck(0x58, FLOAT_LABEL(lit_6108));
    }
}

/* 800DFC70-800DFCD8 0DA5B0 0068+00 3/3 0/0 0/0 .text            setBowNormalAnime__9daAlink_cFv */
void daAlink_c::setBowNormalAnime() {
    if (checkBowItem(mEquipItem)) {
        changeItemBck(0x59, lit_6041);
    } else if (mEquipItem == PACHINKO) {
        changeItemBck(0x1F9, lit_6041);
    }
}

/* 800DFCD8-800DFD6C 0DA618 0094+00 3/3 0/0 0/0 .text            setBowSight__9daAlink_cFv */
void daAlink_c::setBowSight() {
    if (checkBowChargeWaitAnime() && !i_dComIfGp_checkPlayerStatus0(0, 0x200000)) {
        cXyz sight_pos;
        f32 spC;
        f32 sp8;

        getArrowFlyData(&spC, &sp8, 1);
        checkSightLine(spC, &sight_pos);
        mSight.setPos(&sight_pos);
        mSight.offDrawFlg();
    } else {
        mSight.offDrawFlg();
    }
}

/* 800DFD6C-800DFDDC 0DA6AC 0070+00 1/1 0/0 0/0 .text            procBowSubjectInit__9daAlink_cFv */
int daAlink_c::procBowSubjectInit() {
    if (!commonProcInitNotSameProc(PROC_BOW_SUBJECT)) {
        return 0;
    }

    setSingleAnimeBaseSpeed(ANM_ATN_WAIT_RIGHT, FLOAT_LABEL(lit_6108),
                            daAlinkHIO_bow_c0::m.field_0x30);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    setBowOrSlingStatus();
    return 1;
}

/* 800DFDDC-800DFE3C 0DA71C 0060+00 1/0 0/0 0/0 .text            procBowSubject__9daAlink_cFv */
int daAlink_c::procBowSubject() {
    setDoStatus(0x12);
    if (!checkNextAction(0) && setBodyAngleToCamera()) {
        setBowSight();
    }

    return 1;
}

/* 800DFE3C-800DFEC0 0DA77C 0084+00 1/1 0/0 0/0 .text            procBowMoveInit__9daAlink_cFv */
int daAlink_c::procBowMoveInit() {
    if (!commonProcInitNotSameProc(PROC_BOW_MOVE)) {
        return 0;
    }

    if (checkZeroSpeedF()) {
        onModeFlg(1);
    }

    setBlendAtnMoveAnime(daAlinkHIO_bow_c0::m.field_0x30);
    mCommonCounter = 0;
    setBowOrSlingStatus();
    return 1;
}

/* 800DFEC0-800DFFE0 0DA800 0120+00 1/0 0/0 0/0 .text            procBowMove__9daAlink_cFv */
int daAlink_c::procBowMove() {
    cancelBowMove();

    if (mFastShotTime == 0 && mCommonCounter != 0 && checkBowWaitAnime() && !itemButton()) {
        resetUpperAnime(UPPER_2, lit_6041);
    }

    mCommonCounter = 1;
    i_onEndResetFlg0(ERFLG0_UNK_8000000);

    if (!checkNextAction(0)) {
        f32 var_f31 = lit_6041;

        if (checkZeroSpeedF()) {
            onModeFlg(1);

            if (field_0x2f98 != 3) {
                field_0x2f98 = 3;
                var_f31 = daAlinkHIO_basic_c0::m.mAnmBlendFactor;
            }
            current.angle.y = shape_angle.y - 0x4000;
        } else {
            offModeFlg(1);
        }

        setBlendAtnMoveAnime(var_f31);
        setBodyAngleXReadyAnime(0);
    }

    return 1;
}