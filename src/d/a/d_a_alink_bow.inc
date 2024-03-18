/**
 * d_a_alink_bow.inc
 * Player Bow and Arrow action handling
 */

#include "d/a/d_a_alink.h"
#include "d/com/d_com_inf_game.h"
#include "rel/d/a/d_a_arrow/d_a_arrow.h"

/* 800DE64C-800DE740 0D8F8C 00F4+00 1/1 0/0 2/2 .text            getArrowFlyData__9daAlink_cCFPfPfi
 */
void daAlink_c::getArrowFlyData(f32* o_distance, f32* o_speed, int i_forceCharge) const {
    if (mEquipItem == PACHINKO) {
        *o_distance = daAlinkHIO_bow_c0::m.mSlingshotDistance;
        *o_speed = daAlinkHIO_bow_c0::m.mSlingshotSpeed;
    } else if (dComIfGp_checkPlayerStatus0(0, 0x200000)) {
        *o_distance = daAlinkHIO_bow_c0::m.mScopeArrowDistance;
        *o_speed = daAlinkHIO_bow_c0::m.mScopeArrowSpeed;
    } else if (field_0x301c == 0 || i_forceCharge) {
        if (field_0x301e == 1) {
            *o_distance = daAlinkHIO_bow_c0::m.mChargeBombArrowDistance;
            *o_speed = daAlinkHIO_bow_c0::m.mChargeBombArrowSpeed;
        } else {
            *o_distance = daAlinkHIO_bow_c0::m.mChargeArrowDistance;
            *o_speed = daAlinkHIO_bow_c0::m.mChargeArrowSpeed;
        }
    } else if (field_0x301e == 1) {
        *o_distance = daAlinkHIO_bow_c0::m.mBombArrowDistance;
        *o_speed = daAlinkHIO_bow_c0::m.mBombArrowSpeed;
    } else {
        *o_distance = daAlinkHIO_bow_c0::m.mArrowDistance;
        *o_speed = daAlinkHIO_bow_c0::m.mArrowSpeed;
    }
}

/* 800DE740-800DE750 0D9080 0010+00 0/0 0/0 1/1 .text            getArrowIncAtR__9daAlink_cCFv */
f32 daAlink_c::getArrowIncAtR() const {
    return daAlinkHIO_bow_c0::m.mArrowAttackRadius;
}

/* 800DE750-800DE760 0D9090 0010+00 0/0 0/0 1/1 .text getBombArrowFlyExplodeTime__9daAlink_cCFv */
s16 daAlink_c::getBombArrowFlyExplodeTime() const {
    return daAlinkHIO_bow_c0::m.mBombArrowFlyExplodeTime;
}

/* 800DE760-800DE770 0D90A0 0010+00 0/0 0/0 1/1 .text getArrowIncAtMaxStart__9daAlink_cCFv */
f32 daAlink_c::getArrowIncAtMaxStart() const {
    return daAlinkHIO_bow_c0::m.mArrowIncAttackMaxStart;
}

/* 800DE770-800DE780 0D90B0 0010+00 0/0 0/0 1/1 .text            getArrowIncAtMax__9daAlink_cCFv */
f32 daAlink_c::getArrowIncAtMax() const {
    return daAlinkHIO_bow_c0::m.mArrowIncAttackMax;
}

/* 800DE780-800DE7D4 0D90C0 0054+00 10/10 0/0 0/0 .text checkBowAndSlingItem__9daAlink_cFi */
BOOL daAlink_c::checkBowAndSlingItem(int i_itemNo) {
    return checkBowItem(i_itemNo) || i_itemNo == PACHINKO;
}

/* 800DE7D4-800DE884 0D9114 00B0+00 1/1 0/0 0/0 .text            setSlingModel__9daAlink_cFv */
void daAlink_c::setSlingModel() {
    J3DAnmTransform* bck = (J3DAnmTransform*)mAnmHeap9.loadDataIdx(0x1F9);
    JKRHeap* prev_heap = setItemHeap();

    J3DModelData* model_data = loadAramBmd(0x319, 0x2C00);
    mHeldItemModel = initModel(model_data, 0);
    mItemBck.init(bck, 0, 2, lit_6040, 0, -1, false);

    mDoExt_setCurrentHeap(prev_heap);
    field_0x2f95 = 5;
    field_0x2f94 = 103;
}

/* 800DE884-800DE990 0D91C4 010C+00 0/0 1/1 1/1 .text checkBowCameraArrowPosP__9daAlink_cFPsPs */
cXyz* daAlink_c::checkBowCameraArrowPosP(s16* param_0, s16* param_1) {
    if (!checkBowAnime() || mEquipItem == PACHINKO) {
        return NULL;
    }

    s16 var_28;
    if (checkHorseRide() && checkBoarSingleBattle() && dComIfGp_getHorseActor() != NULL) {
        var_28 = dComIfGp_getHorseActor()->shape_angle.y;
    } else if (checkMagneBootsOn()) {
        var_28 = field_0x3118;
    } else {
        var_28 = shape_angle.y;
    }

    var_28 += mBodyAngle.y;

    mDoMtx_stack_c::transS(field_0x3834);
    concatMagneBootMtx();
    mDoMtx_stack_c::ZXYrotM(mBodyAngle.x, var_28, 0);
    mDoMtx_stack_c::multVec(&localPos, &mHeldItemRootPos);

    *param_0 = mBodyAngle.x;
    *param_1 = var_28;
    return &mHeldItemRootPos;
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

        fopAc_ac_c* arrow_p = daArrow_c::makeArrow(this, field_0x301e);
        mItemAcKeep.setData(arrow_p);
    }

    mItemVar0.field_0x3018 = 0;
}

/* 800DEAE4-800DEB8C 0D9424 00A8+00 3/3 0/0 0/0 .text            deleteArrow__9daAlink_cFv */
void daAlink_c::deleteArrow() {
    daArrow_c* arrow_p = (daArrow_c*)mItemAcKeep.getActor();

    if (arrow_p != NULL && fopAcM_GetName(arrow_p) == PROC_ARROW) {
        if (arrow_p->checkBombArrow() &&
            (mDamageTimer == daAlinkHIO_damage_c0::m.mInvincibleTime || checkModeFlg(8)))
        {
            arrow_p->setBombArrowExplode();
            dComIfGp_addSelectItemNum(mSelectItemId, -1);
            dComIfGp_setItemArrowNumCount(-1);
        } else {
            fopAcM_delete(arrow_p);
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
// matches with literals
#ifdef NONMATCHING
void daAlink_c::changeArrowType() {
    if (checkCanoeSlider() || (mEquipItem == BOW && field_0x301e == 0) ||
        (mEquipItem == BOMB_ARROW && field_0x301e == 0 &&
         dComIfGp_getSelectItemNum(mSelectItemId) == 0) ||
        (mEquipItem == HAWK_ARROW && checkAttentionLock()))
    {
        return;
    }

    setItemActionButtonStatus(0x11);

    if (arrowChangeTrigger()) {
        if (mEquipItem == HAWK_ARROW) {
            if (dComIfGp_checkPlayerStatus0(0, 0x200000)) {
                dComIfGp_clearPlayerStatus0(0, 0x200000);
                seStartSystem(Z2SE_AL_HAWK_EYE_PUTOFF);
            } else {
                dComIfGp_setPlayerStatus0(0, 0x200000);
                seStartSystem(Z2SE_AL_HAWK_EYE_PUTON);
            }
        } else {
            if (field_0x301e == 1) {
                field_0x301e = 0;
            } else {
                field_0x301e = 1;
            }

            if (mItemAcKeep.getActor() != NULL) {
                deleteArrow();
                makeArrow();
                setBowReloadAnime();
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::changeArrowType() {
    nofralloc
#include "asm/d/a/d_a_alink/changeArrowType__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800DED88-800DEE1C 0D96C8 0094+00 1/1 0/0 0/0 .text cancelBowMoveRideNotAtn__9daAlink_cFv */
BOOL daAlink_c::cancelBowMoveRideNotAtn() {
    return checkModeFlg(0x400) && checkAttentionLock() && mTargetedActor == NULL;
}

/* 800DEE1C-800DEEDC 0D975C 00C0+00 3/3 0/0 0/0 .text            cancelBowMove__9daAlink_cFv */
BOOL daAlink_c::cancelBowMove() {
    if (mTargetedActor == NULL && !checkAttentionLock() && mFastShotTime == 0 &&
        !checkBowReadyAnime() && (!checkBowShootAnime() || mUpperFrameCtrl[2].checkAnmEnd()))
    {
        resetUpperAnime(UPPER_2, lit_6041);
        return true;
    }

    return false;
}

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

    if (checkResetFlg0(RFLG0_UNK_80)) {
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
    setUpperAnimeParam(9, UPPER_2, &daAlinkHIO_bow_c0::m.mLoadAnm);
    setFacePriTexture(FTANM_UNK_8);
    setFacePriBck(0xE5);

    if (mEquipItem == PACHINKO) {
        changeItemBck(0x1F0, daAlinkHIO_bow_c0::m.mLoadAnm.mStartFrame);
        field_0x2f97 = 5;
        seStartOnlyReverb(Z2SE_AL_PACHINKO_DRAW);
    } else {
        changeItemBck(0x41, daAlinkHIO_bow_c0::m.mLoadAnm.mStartFrame);
        field_0x2f97 = 7;
        seStartOnlyReverb(Z2SE_AL_DRAW_BOW);
    }

    field_0x2f96 = 0;
    field_0x301c = daAlinkHIO_bow_c0::m.mChargeArrowTime;
}

/* 800DF0BC-800DF798 0D99FC 06DC+00 2/2 0/0 0/0 .text checkUpperItemActionBow__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
BOOL daAlink_c::checkUpperItemActionBow() {
    daPy_frameCtrl_c* frameCtrl_p = &mUpperFrameCtrl[2];

    if (mEquipItem == PACHINKO) {
        mDoMtx_multVec(getLeftItemMatrix(), &slingLocalPos, &mHeldItemRootPos);
    }

    if (checkBowChargeWaitAnime()) {
        daArrow_c* arrow_p = (daArrow_c*)mItemAcKeep.getActor();

        if (mEquipItem != PACHINKO) {
            if (field_0x301c > 0) {
                field_0x301c--;

                if (field_0x301c <= frameCtrl_p->getEnd() && frameCtrl_p->getFrame() < 0.1f &&
                    frameCtrl_p->getRate() < 0.1f)
                {
                    frameCtrl_p->setRate(1.0f);
                }
            } else {
                onResetFlg0(RFLG0_UNK_10);
                cancelItemUseQuake(0);
            }
        }

        if (checkReadyItem()) {
            if (mItemVar0.field_0x3018 != 0) {
                setUpperAnimeParam(0xC, UPPER_2, &daAlinkHIO_bow_c0::m.mShootAnm);
                setFacePriBck(0xE8);
                field_0x2f96 = 0;

                u16 var_r29;
                if (mEquipItem == PACHINKO) {
                    var_r29 = 0x1F1;
                    if (dComIfGs_getPachinkoNum() != 0 &&
                        daArrow_c::makeSlingStone(this, &mHeldItemRootPos) != NULL)
                    {
                        dComIfGp_setItemPachinkoNumCount(-1);
                    }
                } else if (field_0x301c != 0) {
                    var_r29 = 0x43;
                } else {
                    var_r29 = 0x44;
                }

                changeItemBck(var_r29, daAlinkHIO_bow_c0::m.mShootAnm.mStartFrame);
                mItemVar0.field_0x3018 = 0;
            } else if (mEquipItem == PACHINKO) {
                if (!itemButton()) {
                    dComIfGp_getVibration().StartShock(1, 1, cXyz(0.0f, 1.0f, 0.0f));
                    seStartOnlyReverb(Z2SE_AL_PACHINKO_SHOT);
                    mItemVar0.field_0x3018 = 1;
                    resetFacePriAnime();
                }
            } else if (!itemButton()) {
                if (arrow_p != NULL) {
                    u32 sound;
                    int shock_strength;

                    if (field_0x301c != 0) {
                        arrow_p->setShoot();
                        shock_strength = 1;

                        if (arrow_p->checkBombArrow()) {
                            sound = Z2SE_OBJ_ARROWBOMB_SHOT;
                        } else {
                            sound = Z2SE_OBJ_ARROW_SHOT_NORMAL;
                        }
                    } else {
                        arrow_p->setChargeShoot();
                        shock_strength = 2;

                        if (arrow_p->checkBombArrow()) {
                            sound = Z2SE_OBJ_ARROWBOMB_SHOTGAIN;
                        } else {
                            sound = Z2SE_OBJ_ARROW_SHOT_GAIN;
                        }
                    }

                    dComIfGp_getVibration().StartShock(shock_strength, 1, cXyz(0.0f, 1.0f, 0.0f));
                    seStartOnlyReverb(sound);

                    if (field_0x301e == 1) {
                        dComIfGp_addSelectItemNum(mSelectItemId, -1);
                    }

                    dComIfGp_setItemArrowNumCount(-1);
                    mItemAcKeep.clearData();
                    onResetFlg0(RFLG0_UNK_20000000);
                    field_0x30a4 = daAlinkHIO_bow_c0::m.mBombArrowHoldTime;
                } else {
                    seStartOnlyReverb(Z2SE_AL_ARROW_EMPTY);
                }

                mItemVar0.field_0x3018 = 1;
                resetFacePriAnime();

                if (mEquipItem == BOW) {
                    field_0x301e = 0;
                }
            } else {
                changeArrowType();
            }
        }
    } else if (checkBowReloadAnime()) {
        if (checkAnmEnd(frameCtrl_p)) {
            setUpperAnimeBaseSpeed(10, 0.0f, -1.0f);
            setFacePriTexture(FTANM_UNK_9);
            setFacePriBck(0xE6);

            if (mEquipItem != PACHINKO) {
                changeItemBck(0x42, 0.0f);
                dComIfGp_getVibration().StartQuake(1, 1, cXyz(0.0f, 1.0f, 0.0f));
                onNoResetFlg3(FLG3_UNK_4);
            }
        }
    } else if (checkBowWaitAnime()) {
        if ((mItemVar0.field_0x3018 == 0 && mFastShotTime != 0) ||
            (mItemMode == 0 && !itemButton() && mItemVar0.field_0x3018 == 0 &&
             cancelBowMoveRideNotAtn()))
        {
            resetUpperAnime(UPPER_2, 3.0f);
            dComIfGp_clearPlayerStatus0(0, 0x1040);
            return 1;
        }

        if (mItemMode == 0 && (itemButton() || mItemVar0.field_0x3018 != 0) && checkReadyItem() &&
            (field_0x30a4 == 0 || field_0x301e != 1))
        {
            setBowReloadAnime();

            if (mEquipItem == PACHINKO) {
                mItemVar0.field_0x3018 = 0;
            } else {
                makeArrow();
            }
        } else if (mEquipItem == HAWK_ARROW) {
            changeArrowType();
        }

        if (mItemMode != 0) {
            mItemMode--;
        }
    } else if (checkBowShootAnime()) {
        if (mUpperFrameCtrl[2].getFrame() >= 6.0f) {
            field_0x2f97 = 5;
        } else if (mUpperFrameCtrl[2].getFrame() >= 1.0f) {
            field_0x2f96 = 4;
        }

        if (checkAnmEnd(&mUpperFrameCtrl[2]) && cancelBowMoveRideNotAtn()) {
            resetUpperAnime(UPPER_2, 3.0f);
            dComIfGp_clearPlayerStatus0(0, 0x1040);
            return 1;
        }

        if (checkAnmEnd(&mUpperFrameCtrl[2]) ||
            (mUpperFrameCtrl[2].getFrame() > daAlinkHIO_bow_c0::m.mShootAnm.mCheckFrame &&
             itemButton()))
        {
            setBowReadyAnime();
        }

        if (mItemMode != 0) {
            mItemMode--;
        }
    }

    if (checkBowWaitAnime() || (mEquipItem == PACHINKO && checkBowChargeWaitAnime())) {
        field_0x33dc += daAlinkHIO_bow_c0::m.mShootAnm.mSpeed;
    } else {
        field_0x33dc = mUpperFrameCtrl[2].getFrame();
    }

    return cancelUpperItemReadyAnime(0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkUpperItemActionBow() {
    nofralloc
#include "asm/d/a/d_a_alink/checkUpperItemActionBow__9daAlink_cFv.s"
}
#pragma pop
#endif

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
// matches with literals
#ifdef NONMATCHING
int daAlink_c::checkNextActionBow() {
    if (mFastShotTime != 0 && checkBowReadyAnime()) {
        mFastShotTime--;
    }

    BOOL var_r31 = false;
    if (!checkBowAnime()) {
        setBowReadyAnime();
        setFastShotTimer();

        if (!checkAttentionLock()) {
            field_0x2fe4 = shape_angle.y;
        }

        mItemMode = 0;
        mItemVar0.field_0x3018 = 1;

        if (mEquipItem == HAWK_ARROW) {
            var_r31 = true;
            mFastShotTime = 0;
        }

        if ((!checkAttentionLock() && !checkDashAnime()) || checkModeFlg(0x400)) {
            mFastShotTime = 0;

            if (checkAttentionLock() && checkModeFlg(0x400)) {
                mItemVar0.field_0x3018 = 1;
            } else {
                mItemVar0.field_0x3018 = 0;
            }

            if (!checkResetFlg0(RFLG0_UNK_80)) {
                mItemMode = 3;
            }
        }
    }

    BOOL rt;
    if (!checkAttentionLock() && mFastShotTime == 0) {
        if (checkModeFlg(0x400)) {
            if (checkCanoeRide()) {
                rt = procCanoeBowSubjectInit();
            } else {
                rt = procHorseBowSubjectInit();
            }
        } else {
            rt = procBowSubjectInit();
        }
    } else {
        if (checkModeFlg(0x400)) {
            if (checkCanoeRide()) {
                rt = procCanoeBowMoveInit();
            } else {
                rt = procHorseBowMoveInit();
            }
        } else {
            rt = procBowMoveInit();
        }
    }

    if (rt && var_r31) {
        dComIfGp_setPlayerStatus0(0, 0x200000);
        seStartSystem(Z2SE_AL_HAWK_EYE_PUTON);
    }

    return rt;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::checkNextActionBow() {
    nofralloc
#include "asm/d/a/d_a_alink/checkNextActionBow__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800DFAE8-800DFBC8 0DA428 00E0+00 1/1 0/0 0/0 .text            setBowModel__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setBowModel() {
    J3DAnmTransform* bck = (J3DAnmTransform*)mAnmHeap9.loadDataIdx(0x59);
    JKRHeap* old_heap = setItemHeap();

    mHeldItemModel = initModel(loadAramBmd(0x314, 0x4C00), 0);
    mItemBck.init(bck, FALSE, 2, 1.0f, 0, -1, false);

    mDoExt_setCurrentHeap(old_heap);
    field_0x33dc = mItemBck.getBckAnm()->getFrameMax() - 0.001f;
    field_0x2f95 = 5;
    field_0x2f94 = 0x67;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setBowModel() {
    nofralloc
#include "asm/d/a/d_a_alink/setBowModel__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800DFBC8-800DFC28 0DA508 0060+00 4/4 0/0 0/0 .text            checkBowGrabLeftHand__9daAlink_cCFv
 */
bool daAlink_c::checkBowGrabLeftHand() const {
    return checkReinRide() && !checkBowAnime();
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
    if (checkBowChargeWaitAnime() && !dComIfGp_checkPlayerStatus0(0, 0x200000)) {
        cXyz sight_pos;
        f32 dist;
        f32 speed;

        getArrowFlyData(&dist, &speed, TRUE);
        checkSightLine(dist, &sight_pos);
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
                            daAlinkHIO_bow_c0::m.mStartInterpolation);
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

    setBlendAtnMoveAnime(daAlinkHIO_bow_c0::m.mStartInterpolation);
    mProcVar2.field_0x300c = 0;
    setBowOrSlingStatus();
    return 1;
}

/* 800DFEC0-800DFFE0 0DA800 0120+00 1/0 0/0 0/0 .text            procBowMove__9daAlink_cFv */
int daAlink_c::procBowMove() {
    cancelBowMove();

    if (mFastShotTime == 0 && mProcVar2.field_0x300c != 0 && checkBowWaitAnime() && !itemButton()) {
        resetUpperAnime(UPPER_2, lit_6041);
    }

    mProcVar2.field_0x300c = 1;
    onEndResetFlg0(ERFLG0_UNK_8000000);

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
