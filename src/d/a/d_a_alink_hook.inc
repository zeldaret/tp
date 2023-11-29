/**
 * d_a_alink_hook.inc
 * Player Clawshot action handling
 */

#include "rel/d/a/b/d_a_b_dr/d_a_b_dr.h"

enum {
    HS_MODE_NONE_e,
    HS_MODE_READY_e,
    HS_MODE_SHOOT_e = 3,
    HS_MODE_FLY_e,
    HS_MODE_RETURN_e = 6,
};

/* 80107900-801083C8 102240 0AC8+00 1/0 0/0 0/0 .text draw__Q29daAlink_c14hsChainShape_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void draw__Q29daAlink_c14hsChainShape_cFv() {
    // asm void daAlink_c::hsChainShape_c::draw() {
    nofralloc
#include "asm/d/a/d_a_alink/draw__Q29daAlink_c14hsChainShape_cFv.s"
}
#pragma pop

/* 801083C8-8010859C 102D08 01D4+00 1/1 0/0 0/0 .text
 * hookshotAtHitCallBack__9daAlink_cFP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::hookshotAtHitCallBack(dCcD_GObjInf* i_atObjInf, fopAc_ac_c* i_tgActor,
                                      dCcD_GObjInf* i_tgObjInf) {
    if (i_tgActor != NULL && fopAcM_IsActor(i_tgActor) && !i_tgObjInf->ChkTgHookshotThrough()) {
        cXyz* hit_pos_p = i_atObjInf->GetAtHitPosP();
        f32 dist_to_hitpos = getHsChainTopPos().abs(*hit_pos_p);

        if (dist_to_hitpos < mSearchBallScale) {
            mSearchBallScale = dist_to_hitpos;

            if (checkHookshotWait()) {
                if (fopAcM_checkStatus(i_tgActor, 0x280000)) {
                    mHookTargetAcKeep.setData(i_tgActor);
                } else {
                    field_0x3494 = 1.0f;
                }
            } else if (!i_tgObjInf->ChkTgShield()) {
                mHookTargetAcKeep.setData(i_tgActor);
                field_0x381c = *i_atObjInf->GetAtHitPosP();
            } else {
                field_0x3494 = 1.0f;
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::hookshotAtHitCallBack(dCcD_GObjInf* param_0, fopAc_ac_c* param_1,
                                          dCcD_GObjInf* param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/hookshotAtHitCallBack__9daAlink_cFP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf.s"
}
#pragma pop
#endif

/* 8010859C-801085BC 102EDC 0020+00 1/1 0/0 0/0 .text
 * daAlink_hookshotAtHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void daAlink_hookshotAtHitCallBack(fopAc_ac_c* i_atActor, dCcD_GObjInf* i_atObjInf,
                                          fopAc_ac_c* i_tgActor, dCcD_GObjInf* i_tgObjInf) {
    static_cast<daAlink_c*>(i_atActor)->hookshotAtHitCallBack(i_atObjInf, i_tgActor, i_tgObjInf);
}

/* 801085BC-80108600 102EFC 0044+00 1/0 0/0 0/0 .text            getHookshotTopPos__9daAlink_cFv */
cXyz* daAlink_c::getHookshotTopPos() {
    if (checkHookshotItem(mEquipItem)) {
        return &mHookshotTopPos;
    }

    return NULL;
}

/* 80108600-80108668 102F40 0068+00 1/0 0/0 0/0 .text checkHookshotReturnMode__9daAlink_cCFv */
bool daAlink_c::checkHookshotReturnMode() const {
    return checkHookshotItem(mEquipItem) &&
           (mItemMode == HS_MODE_FLY_e || mItemMode == 5 || mItemMode == HS_MODE_RETURN_e);
}

/* 80108668-801086DC 102FA8 0074+00 1/0 0/0 0/0 .text checkHookshotShootReturnMode__9daAlink_cCFv
 */
bool daAlink_c::checkHookshotShootReturnMode() const {
    return (checkHookshotItem(mEquipItem) && mItemMode == HS_MODE_SHOOT_e) ||
           checkHookshotReturnMode();
}

/* 801086DC-8010871C 10301C 0040+00 6/6 0/0 0/0 .text            resetHookshotMode__9daAlink_cFv */
void daAlink_c::resetHookshotMode() {
    mItemMode = HS_MODE_NONE_e;
    initLockAt();
    mSearchBallScale = FLT_MAX;
}

/* 8010871C-80108784 10305C 0068+00 0/0 0/0 1/1 .text
 * setEnemyBombHookshot__9daAlink_cFP10fopAc_ac_c               */
bool daAlink_c::setEnemyBombHookshot(fopAc_ac_c* i_actor) {
    if (mHookTargetAcKeep.getActor() != NULL) {
        cancelHookshotCarry();
        mHookTargetAcKeep.setData(i_actor);
        fopAcM_setHookCarryNow(i_actor);
        return true;
    }
    return false;
}

/* 80108784-801087B0 1030C4 002C+00 3/3 0/0 0/0 .text            checkLv7BossRoom__9daAlink_cFv */
bool daAlink_c::checkLv7BossRoom() {
    return checkStageName("D_MN07A");
}

/* 801087B0-80108828 1030F0 0078+00 6/6 0/0 0/0 .text
 * checkHookshotStickBG__9daAlink_cFR13cBgS_PolyInfo            */
BOOL daAlink_c::checkHookshotStickBG(cBgS_PolyInfo& i_poly) {
    if (dComIfG_Bgsp().ChkPolyHSStick(i_poly)) {
        dBgW_Base* bgw_p = dComIfG_Bgsp().GetBgWBasePointer(i_poly);
        if (bgw_p != NULL && bgw_p->ChkPushPullOk()) {
            return true;
        }
    }

    return false;
}

/* 80108828-80108864 103168 003C+00 4/4 0/0 0/0 .text            cancelHookshotCarry__9daAlink_cFv
 */
void daAlink_c::cancelHookshotCarry() {
    if (mHookTargetAcKeep.getActor() != NULL) {
        fopAcM_cancelHookCarryNow(mHookTargetAcKeep.getActor());
        mHookTargetAcKeep.clearData();
    }
}

/* 80108864-801088A0 1031A4 003C+00 2/2 0/0 0/0 .text changeHookshotDrawModel__9daAlink_cFv */
void daAlink_c::changeHookshotDrawModel() {
    if (mEquipItem == HOOKSHOT && field_0x3020 == 1) {
        J3DModel* old_item = mHeldItemModel;
        mHeldItemModel = field_0x0710;
        field_0x0710 = old_item;

        J3DModel* old_item2 = mpHookTipModel;
        mpHookTipModel = field_0x0714;
        field_0x0714 = old_item2;
    }
}

/* 801088A0-801088C8 1031E0 0028+00 6/6 0/0 0/0 .text checkHookshotRoofLv7Boss__9daAlink_cFv */
BOOL daAlink_c::checkHookshotRoofLv7Boss() {
    return mCargoCarryAcKeep.getActor() != NULL &&
           fopAcM_GetName(mCargoCarryAcKeep.getActor()) == PROC_B_DR;
}

/* 801088C8-80108980 103208 00B8+00 2/2 0/0 0/0 .text            checkChaseHookshot__9daAlink_cFv */
BOOL daAlink_c::checkChaseHookshot() {
    if (field_0x2804 == NULL) {
        if (mTargetedActor != NULL) {
            field_0x2804 = mTargetedActor;
        } else {
            field_0x2804 = this;
        }
    } else if (field_0x2804 != mTargetedActor) {
        field_0x2804 = this;
    }

    if (mTargetedActor != NULL) {
        s16 actorName = fopAcM_GetName(mTargetedActor);
        return field_0x2804 == mTargetedActor &&
               (checkBossOctaIealRoom() || actorName == PROC_Obj_FallObj ||
                actorName == PROC_B_DR || actorName == PROC_E_PH);
    }

    return false;
}

/* 80108980-801089E8 1032C0 0068+00 2/2 0/0 0/0 .text checkOctaIealSpecialCollect__9daAlink_cFv */
BOOL daAlink_c::checkOctaIealSpecialCollect() {
    return mProcID == PROC_HOOKSHOT_FLY && checkHookshotItem(mEquipItem) && checkBossOctaIealRoom();
}

/* 801089E8-80108A18 103328 0030+00 5/5 0/0 0/0 .text            checkBossOctaIealRoom__9daAlink_cFv
 */
BOOL daAlink_c::checkBossOctaIealRoom() {
    return checkStageName("D_MN01A");
}

/* 80108A18-80108A3C 103358 0024+00 19/19 0/0 0/0 .text            checkHookshotWait__9daAlink_cCFv
 */
BOOL daAlink_c::checkHookshotWait() const {
    return mItemMode == HS_MODE_NONE_e || mItemMode == HS_MODE_READY_e;
}

/* 80108A3C-80108A90 10337C 0054+00 1/1 0/0 0/0 .text            setHookshotCatchNow__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setHookshotCatchNow() {
    field_0x3026 = 5;
    dComIfGp_getVibration().StartShock(4, 1, cXyz(0.0f, 1.0f, 0.0f));
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHookshotCatchNow() {
    nofralloc
#include "asm/d/a/d_a_alink/setHookshotCatchNow__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80108A90-80108B34 1033D0 00A4+00 1/0 0/0 0/0 .text setHookshotCarryOffset__9daAlink_cFUiPC4cXyz
 */
bool daAlink_c::setHookshotCarryOffset(unsigned int i_carryActorID, cXyz const* i_posOffset) {
    if (i_dComIfGp_checkPlayerStatus1(0, 0x10000)) {
        fopAc_ac_c* carryActor_p = mCargoCarryAcKeep.getActor();

        if (carryActor_p != NULL && fopAcM_checkHookCarryNow(carryActor_p) &&
            i_carryActorID == mCargoCarryAcKeep.getID())
        {
            field_0x37c8 = *i_posOffset;
            return true;
        }
    }

    fopAc_ac_c* hookTargetAc_p = mHookTargetAcKeep.getActor();
    if (hookTargetAc_p != NULL && fopAcM_checkHookCarryNow(hookTargetAc_p) &&
        i_carryActorID == mHookTargetAcKeep.getID())
    {
        mIronBallCenterPos = *i_posOffset;
        return true;
    }

    return false;
}

/* 80108B34-80108DB4 103474 0280+00 1/1 0/0 0/0 .text            setHookshotModel__9daAlink_cFv */
void daAlink_c::setHookshotModel() {
    J3DAnmTransform* bck = (J3DAnmTransform*)mAnmHeap9.loadDataIdx(0x17E);

    JKRHeap* heap = setItemHeap();
    mItemBck.init(bck, 0, 2, lit_6040, 0, -1, false);

    J3DModelData* hookModelData = loadAramBmd(0x316, 0x5C00);
    mHeldItemModel = initModel(hookModelData, 0x80000, 0);

    J3DModelData* hookTipModelData = loadAramBmd(0x318, 0x3800);
    mpHookTipModel = initModel(hookTipModelData, 0x80000, 0);
    field_0x0710 = initModel(mHeldItemModel->getModelData(), 0x80000, 0);
    field_0x0714 = initModel(mpHookTipModel->getModelData(), 0x80000, 0);

    mpHookKusariModelData = loadAramBmd(0x317, 0x1000);
    mpHookChain = new hsChainShape_c();
    mpHookSound = new Z2SoundObjSimple();

    mpHookshotLinChk = new dBgS_ObjLinChk();
    mpHookshotLinChk->OffFullGrp();
    mpHookshotLinChk->OnWaterGrp();

    J3DAnmTransform* bck2 = (J3DAnmTransform*)loadAram(0x17F, 0x800);
    mHookTipBck.init(bck2, 0, 2, lit_6040, 0, -1, false);
    mDoExt_setCurrentHeap(heap);

    resetHookshotMode();
    mpHookChain->setUserArea((u32)this);
    field_0x2f94 = 1;
    if (mEquipItem == W_HOOKSHOT) {
        field_0x2f95 = 6;
    }

    field_0x3020 = 0;
    field_0x3024 = 0;

    mAtCps[0].SetAtSpl(dCcG_At_Spl_UNK_0);
    mAtCps[0].OffAtNoHitMark();
    mAtCps[0].SetAtAtp(0);
    mAtCps[0].SetR(lit_7808);
    mAtCps[0].SetAtSe(dCcD_SE_HOOKSHOT_STICK);
    mAtCps[0].SetAtType(AT_TYPE_HOOKSHOT);
    mAtCps[0].SetAtHitMark(1);
    mAtCps[0].OnAtSetBit();
    mAtCps[0].SetAtHitCallback(daAlink_hookshotAtHitCallBack);
    mAtCps[0].SetAtMtrl(0);
    mpHookSound->init(&mHookshotTopPos, 1);
}

/* 80108DB4-80108EEC 1036F4 0138+00 6/6 0/0 0/0 .text            setHookshotSight__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setHookshotSight() {
    cXyz sight_pos;
    f32 length;
    if (checkLv7BossRoom()) {
        length = daAlinkHIO_hookshot_c0::m.mBossMaxLength;
    } else {
        length = daAlinkHIO_hookshot_c0::m.mMaxLength;
    }

    BOOL line_cross = checkSightLine(length, &sight_pos);

    if (mHookTargetAcKeep.getActor() != NULL) {
        mSight.setPos(&mHookTargetAcKeep.getActor()->mEyePos);
    } else {
        mSight.setPos(&sight_pos);
    }

    if (mItemMode == HS_MODE_READY_e) {
        mSight.onDrawFlg();

        if ((line_cross && field_0x3494 < 0.0f && checkHookshotStickBG(mRopeLinChk)) ||
            mHookTargetAcKeep.getActor() != NULL)
        {
            mSight.onLockFlg();

            if (mHookTargetAcKeep.getActor() != NULL &&
                fopAcM_GetName(mHookTargetAcKeep.getActor()) == PROC_B_DR)
            {
                daB_DR_c* dr_p = (daB_DR_c*)mHookTargetAcKeep.getActor();
                dr_p->onTarget();
            }
        } else {
            mSight.offLockFlg();
        }
    } else {
        mSight.offDrawFlg();
    }

    mHookTargetAcKeep.clearData();
    field_0x3494 = -1.0f;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHookshotSight() {
    nofralloc
#include "asm/d/a/d_a_alink/setHookshotSight__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80108EEC-80108F64 10382C 0078+00 1/1 0/0 0/0 .text            cancelHookshotShot__9daAlink_cFv */
void daAlink_c::cancelHookshotShot() {
    if (checkHookshotItem(mEquipItem) &&
        (mItemMode == HS_MODE_SHOOT_e || mItemMode == 5 || mItemMode == HS_MODE_FLY_e))
    {
        if (mProcID != PROC_HOOKSHOT_MOVE && mProcID != PROC_HOOKSHOT_FLY &&
            mProcID != PROC_HOOKSHOT_SUBJECT)
        {
            mItemMode = HS_MODE_RETURN_e;
        }
    }
}

/* 80108F64-8010903C 1038A4 00D8+00 4/4 0/0 0/0 .text            cancelHookshotMove__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
bool daAlink_c::cancelHookshotMove() {
    if (mFastShotTime == 0 && mItemMode == HS_MODE_NONE_e) {
        if (checkHookshotAnime() &&
            (mTargetedActor == NULL && !i_checkAttentionLock() || !itemButton()))
        {
            resetUpperAnime(UPPER_2, -1.0f);
            return 1;
        }
    }

    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::cancelHookshotMove() {
    nofralloc
#include "asm/d/a/d_a_alink/cancelHookshotMove__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8010903C-80109070 10397C 0034+00 2/2 0/0 0/0 .text
 * checkHookshotReadyMaterialOffMode__9daAlink_cCFv             */
BOOL daAlink_c::checkHookshotReadyMaterialOffMode() const {
    return mProcID == PROC_HOOKSHOT_WALL_SHOOT || mProcID == PROC_HORSE_HOOKSHOT_SUBJECT ||
           mProcID == PROC_SWIM_HOOKSHOT_SUBJECT || mProcID == PROC_HOOKSHOT_SUBJECT;
}

/* 80109070-801090EC 1039B0 007C+00 5/5 0/0 0/0 .text setHookshotReadyMaterial__9daAlink_cFv */
void daAlink_c::setHookshotReadyMaterial() {
    if (i_checkNoResetFlg2(FLG2_UNK_80000) || checkCasualWearFlg()) {
        mFallVoiceInit = 0;
    } else if (checkZoraWearFlg()) {
        field_0x32cc = 0x37B;
        mFallVoiceInit = 14;
    } else if (checkMagicArmorWearFlg()) {
        field_0x32cc = 0xC80;
        mFallVoiceInit = 13;
    } else {
        field_0x32cc = 0x11C47;
        mFallVoiceInit = 18;
    }
}

/* 801090EC-80109170 103A2C 0084+00 8/8 0/0 0/0 .text initHookshotUpperAnimeSpeed__9daAlink_cFi */
int daAlink_c::initHookshotUpperAnimeSpeed(int param_0) {
    if (checkHookshotWait()) {
        if (param_0) {
            f32 tmp_0 = FLOAT_LABEL(lit_6108);
            mUpperFrameCtrl[2].setRate(tmp_0);
            mUpperFrameCtrl[2].setFrame(tmp_0);
            getNowAnmPackUpper(UPPER_2)->setFrame(tmp_0);
        } else {
            setWaterInAnmRate(&mUpperFrameCtrl[2], daAlinkHIO_hookshot_c0::m.mWaitAnmSpeed);
        }

        return 1;
    }

    return 0;
}

/* 80109170-801091E4 103AB0 0074+00 4/4 0/0 0/0 .text            initHookshotReady__9daAlink_cFv */
void daAlink_c::initHookshotReady() {
    mItemMode = HS_MODE_READY_e;

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    field_0x33e0 = tmp_0;

    dComIfGp_getVibration().StartShock(1, 1, cXyz(tmp_0, lit_6040, tmp_0));

    mItemVar0.field_0x3018 = 3;
    field_0x3494 = lit_6041;
}

/* 801091E4-80109284 103B24 00A0+00 1/1 0/0 0/0 .text            setHookshotReadyAnime__9daAlink_cFv
 */
void daAlink_c::setHookshotReadyAnime() {
    f32 speed;
    if (!i_checkAttentionLock() && mFastShotTime == 0) {
        speed = FLOAT_LABEL(lit_6108);
    } else {
        speed = daAlinkHIO_hookshot_c0::m.mWaitAnmSpeed;
    }

    setUpperAnimeBaseSpeed(0x18D, speed, lit_6109);
    field_0x3020 = 0;
    initHookshotReady();
}

/* 80109284-801095C8 103BC4 0344+00 3/3 0/0 0/0 .text checkUpperItemActionHookshot__9daAlink_cFv
 */
int daAlink_c::checkUpperItemActionHookshot() {
    if (checkHookshotWait()) {
        mSearchBallScale = FLT_MAX;
    }

    if (mItemMode == HS_MODE_READY_e) {
        if (!itemButton() && mItemVar0.field_0x3018 == 0 && checkReadyItem()) {
            mItemMode = 2;
            field_0x3026 = 0;
            field_0x3494 = lit_6041;
            mHookTargetAcKeep.clearData();
            cancelLockAt();
            field_0x2804 = NULL;

            if (mProcID == PROC_HOOKSHOT_ROOF_SHOOT || mProcID == PROC_HOOKSHOT_WALL_SHOOT) {
                daAlink_ANM anmID;
                if (mProcID == PROC_HOOKSHOT_ROOF_SHOOT) {
                    if (field_0x3020 == 0) {
                        anmID = ANM_HOOKSHOT_HANG_SHOOT_RIGHT;
                    } else {
                        anmID = ANM_HOOKSHOT_HANG_SHOOT_LEFT;
                    }
                } else if (field_0x3020 == 0) {
                    anmID = ANM_HOOKSHOT_WALL_SHOOT_RIGHT;
                } else {
                    anmID = ANM_HOOKSHOT_WALL_SHOOT_LEFT;
                }

                setSingleAnimeBaseMorf(anmID, FLOAT_LABEL(lit_6108));
            } else if (i_checkModeFlg(0x40400)) {
                setUpperAnimeParam(0x18C, UPPER_2, &daAlinkHIO_hookshot_c0::m.mShootAnm);

                if (i_checkModeFlg(0x40000)) {
                    mNormalSpeed = FLOAT_LABEL(lit_6108);
                }
            } else {
                f32 tmp_0 = FLOAT_LABEL(lit_6108);
                mUpperFrameCtrl[2].setRate(tmp_0);
                mUpperFrameCtrl[2].setFrame(tmp_0);
                getNowAnmPackUpper(UPPER_2)->setFrame(tmp_0);

                mNormalSpeed = tmp_0;
                onModeFlg(1);
                mSpeedModifier = tmp_0;
                mNowAnmPackUpper[2].setRatio(tmp_0);

                setSingleAnimeParam(ANM_HOOKSHOT_SHOOT, &daAlinkHIO_hookshot_c0::m.mShootAnm);
            }

            if (!i_checkNoResetFlg3(FLG3_UNK_4)) {
                f32 tmp_0 = FLOAT_LABEL(lit_6108);
                dComIfGp_getVibration().StartQuake(1, 1, cXyz(tmp_0, lit_6040, tmp_0));
                i_onNoResetFlg3(FLG3_UNK_4);
            }

            return 1;
        }
    } else if (mItemMode == HS_MODE_NONE_e) {
        if (i_checkModeFlg(0x400) && i_checkAttentionLock() && mTargetedActor == NULL) {
            resetUpperAnime(UPPER_2, lit_6109);
            dComIfGp_clearPlayerStatus0(0, 0x4000);
            return 1;
        }

        if (checkReadyItem() && itemButton()) {
            initHookshotReady();
        }
    } else if (mItemMode == HS_MODE_SHOOT_e) {
        if (checkReadyItem() && itemTrigger()) {
            mItemMode = HS_MODE_RETURN_e;
        }

        checkNextActionHookshot();
        return 1;
    } else if (mItemMode == HS_MODE_RETURN_e) {
        checkNextActionHookshot();
        return 1;
    } else if (mItemMode == 5 || mItemMode == HS_MODE_FLY_e) {
        if (field_0x3026 != 0) {
            field_0x3026--;
            setHookshotTopPosFly();
            return 1;
        }

        return procHookshotFlyInit();
    }

    if (mItemVar0.field_0x3018 > 0) {
        mItemVar0.field_0x3018--;
    }

    return cancelUpperItemReadyAnime(0);
}

/* 801095C8-801097A0 103F08 01D8+00 7/7 0/0 0/0 .text checkNextActionHookshot__9daAlink_cFv */
int daAlink_c::checkNextActionHookshot() {
    if (mProcID == PROC_HOOKSHOT_ROOF_SHOOT || mProcID == PROC_HOOKSHOT_WALL_SHOOT) {
        return 0;
    }

    if (mFastShotTime != 0 && checkHookshotWait()) {
        mFastShotTime--;
    }

    if (!checkHookshotAnime()) {
        setHookshotReadyAnime();
        setFastShotTimer();

        if (!i_checkAttentionLock()) {
            field_0x2fe4 = shape_angle.y;
        }
    }

    if (!i_checkAttentionLock() && mFastShotTime == 0) {
        if (i_checkModeFlg(0x400)) {
            if (checkCanoeRide()) {
                return procCanoeHookshotSubjectInit();
            } else {
                return procHorseHookshotSubjectInit();
            }
        } else if (i_checkModeFlg(0x40000)) {
            return procSwimHookshotSubjectInit();
        } else {
            return procHookshotSubjectInit();
        }
    } else if (i_checkModeFlg(0x400)) {
        if (checkCanoeRide()) {
            return procCanoeHookshotMoveInit();
        } else {
            return procHorseHookshotMoveInit();
        }
    } else if (i_checkModeFlg(0x40000)) {
        return procSwimHookshotMoveInit();
    } else {
        return procHookshotMoveInit();
    }
}

/* 801097A0-80109890 1040E0 00F0+00 2/2 0/0 0/0 .text            setHookshotReturnEnd__9daAlink_cFv
 */
#ifdef NONMATCHING
void daAlink_c::setHookshotReturnEnd() {
    resetHookshotMode();
    cancelItemUseQuake(0);

    seStartOnlyReverb(Z2SE_LK_HS_WIND_UP_FIN);

    if (checkHookshotReadyAnime()) {
        mNowAnmPackUpper[2].setRatio(1.0f);
        field_0x2060->initOldFrameMorf(3.0f, field_0x30a8, field_0x30aa);
    } else if (checkHookshotShootAnime()) {
        setUpperAnimeBaseSpeed(
            0x18D, i_checkAttentionLock() ? daAlinkHIO_hookshot_c0::m.mWaitAnmSpeed : 0.0f, 3.0f);
    }

    mFastShotTime = 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHookshotReturnEnd() {
    nofralloc
#include "asm/d/a/d_a_alink/setHookshotReturnEnd__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80109890-80109AAC 1041D0 021C+00 3/3 0/0 0/0 .text setHookshotHangMoveBGCollect__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::setHookshotHangMoveBGCollect() {
    nofralloc
#include "asm/d/a/d_a_alink/setHookshotHangMoveBGCollect__9daAlink_cFv.s"
}
#pragma pop

/* 80109AAC-80109BDC 1043EC 0130+00 2/2 0/0 0/0 .text            setHookshotTopPosFly__9daAlink_cFv
 */
void daAlink_c::setHookshotTopPosFly() {
    fopAc_ac_c* targetAc_p = mHookTargetAcKeep.getActor();

    if (mItemMode == 5) {
        if (targetAc_p != NULL && fopAcM_checkHookCarryNow(targetAc_p)) {
            mDoMtx_stack_c::transS(targetAc_p->current.pos);
            mDoMtx_stack_c::ZXYrotM(targetAc_p->shape_angle);
            mDoMtx_stack_c::multVec(&mIronBallCenterPos, &mHookshotTopPos);
        } else {
            mItemMode = HS_MODE_RETURN_e;
        }
    } else if (!dComIfG_Bgsp().ChkPolySafe(mPolyInfo2) || !checkHookshotStickBG(mPolyInfo2) ||
               (targetAc_p != NULL && !fopAcM_checkHookCarryNow(targetAc_p)))
    {
        mItemMode = HS_MODE_RETURN_e;
    } else if (dComIfG_Bgsp().ChkMoveBG(mPolyInfo2)) {
        csXyz angle(field_0x301c, field_0x301e, 0);
        dComIfG_Bgsp().MoveBgTransPos(mPolyInfo2, true, &mHookshotTopPos, NULL, &angle);
        field_0x301c = angle.x;
        field_0x301e = angle.y;
    }
}

/* ############################################################################################## */
/* 804256A0-804256AC 0523C0 000C+00 0/1 0/0 0/0 .bss             @29722 */
#pragma push
#pragma force_active on
static u8 lit_29722[12];
#pragma pop

/* 804256AC-804256B8 0523CC 000C+00 1/2 0/0 0/0 .bss             l_hookSnowSandHitScale */
static Vec l_hookSnowSandHitScale;

/* 80109BDC-8010B2DC 10451C 1700+00 1/1 0/0 0/0 .text            setHookshotPos__9daAlink_cFv */
// almost, just stack order
#ifdef NONMATCHING
void daAlink_c::setHookshotPos() {
    mDoMtx_stack_c::copy(mpLinkModel->i_getAnmMtx(field_0x30c0));
    mDoMtx_stack_c::transM(-2.0f, 1.0f, 1.0f);
    mDoMtx_stack_c::XYZrotM(cM_deg2s(5.7f), cM_deg2s(162.0f), 0);

    J3DModel* var_r27;
    if (field_0x3020 == 0) {
        var_r27 = mHeldItemModel;
    } else {
        var_r27 = field_0x0710;
    }
    var_r27->i_setBaseTRMtx(mDoMtx_stack_c::get());

    mDoMtx_stack_c::copy(mpLinkModel->i_getAnmMtx(field_0x30c2));
    mDoMtx_stack_c::transM(-2.0f, 0.0f, 1.0f);
    mDoMtx_stack_c::XYZrotM(cM_deg2s(-78.0f), cM_deg2s(182.0f), cM_deg2s(-99.0f));

    J3DModel* var_r27_2;
    if (field_0x3020 == 0) {
        var_r27_2 = field_0x0710;
    } else {
        var_r27_2 = mHeldItemModel;
    }
    var_r27_2->i_setBaseTRMtx(mDoMtx_stack_c::get());

    cXyz sp134;

    if (mItemMode == 2 || mItemMode == HS_MODE_SHOOT_e) {
        field_0x33dc += 1.0f;

        if (field_0x33dc >= mItemBck.getBckAnm()->getFrameMax()) {
            field_0x33dc -= mItemBck.getBckAnm()->getFrameMax();
        }

        field_0x33e0 = mHookTipBck.getBckAnm()->getFrameMax();
    } else if (mItemMode == HS_MODE_FLY_e || mItemMode == 5 || mItemMode == HS_MODE_RETURN_e) {
        field_0x33dc -= 1.0f;
        if (field_0x33dc < 0.0f) {
            field_0x33dc += mItemBck.getBckAnm()->getFrameMax();
        }

        if (mItemMode == HS_MODE_RETURN_e && mHookTargetAcKeep.getActor() == NULL) {
            field_0x33e0 = 0.0f;
        } else {
            field_0x33e0 = 14.0f;
        }
    } else if (mItemMode == HS_MODE_READY_e) {
        if (!checkHookshotAnime() && mProcID != PROC_HOOKSHOT_WALL_SHOOT &&
            mProcID != PROC_HOOKSHOT_ROOF_SHOOT)
        {
            resetHookshotMode();
            field_0x33e0 = 0.0f;
        } else {
            if (field_0x33e0 < 0.1f) {
                seStartOnlyReverb(Z2SE_AL_HS_OPEN);
            }

            field_0x33e0 += 1.0f;
            if (field_0x33e0 > mHookTipBck.getBckAnm()->getFrameMax()) {
                field_0x33e0 = mHookTipBck.getBckAnm()->getFrameMax();
            }
        }
    } else {
        field_0x33e0 = 0.0f;
    }

    mItemBck.entry(field_0x0710->getModelData(), 0.0f);
    field_0x0710->calc();

    mDoMtx_multVec(mHeldItemModel->getBaseTRMtx(), &hookRoot, &mHeldItemRootPos);
    mDoMtx_multVec(field_0x0710->getBaseTRMtx(), &hookRoot, &field_0x3810);

    mpHookSound->framework(0, mVoiceReverbIntensity);

    fopAc_ac_c* targetAc_p = mHookTargetAcKeep.getActor();
    f32 return_speed;
    f32 shoot_speed;
    f32 length;
    if (checkLv7BossRoom()) {
        return_speed = daAlinkHIO_hookshot_c0::m.mBossReturnSpeed;
        shoot_speed = daAlinkHIO_hookshot_c0::m.mBossShootSpeed;
        length = daAlinkHIO_hookshot_c0::m.mBossMaxLength;
    } else {
        return_speed = daAlinkHIO_hookshot_c0::m.mReturnSpeed;
        shoot_speed = daAlinkHIO_hookshot_c0::m.mShootSpeed;
        length = daAlinkHIO_hookshot_c0::m.mMaxLength;
    }

    if (mItemMode == HS_MODE_RETURN_e) {
        if (targetAc_p != NULL) {
            if (checkLv7BossRoom()) {
                return_speed = daAlinkHIO_hookshot_c0::m.mBossStickReturnSpeed;
            } else {
                return_speed = daAlinkHIO_hookshot_c0::m.mStickReturnSpeed;
            }
        }

        if (i_checkModeFlg(0x400)) {
            return_speed += current.pos.abs(field_0x3798);
        }

        if (field_0x3026 != 0) {
            field_0x3026--;
        } else if (mProcID != PROC_ELEC_DAMAGE || !checkHookshotAnime()) {
            if (cLib_chasePos(&mHookshotTopPos, mHeldItemRootPos, return_speed)) {
                setHookshotReturnEnd();
            } else {
                cXyz sp1AC = mHookshotTopPos - mHeldItemRootPos;
                field_0x301c = sp1AC.atan2sY_XZ();
                field_0x301e = sp1AC.atan2sX_Z();
                seStartOnlyReverbLevel(Z2SE_LK_HS_WIND_UP);
            }
        }

        if (targetAc_p != NULL) {
            if (fopAcM_checkHookCarryNow(targetAc_p)) {
                targetAc_p->current.pos = mHookshotTopPos - mIronBallCenterPos;

                if (mItemMode == HS_MODE_NONE_e) {
                    cancelHookshotCarry();
                }
            } else {
                mHookTargetAcKeep.clearData();
            }
        }
    }

    if (checkHookshotWait() || mItemMode == 2) {
        csXyz* var_r28;
        if (mProcID == PROC_HOOKSHOT_WALL_SHOOT || mProcID == PROC_HOOKSHOT_ROOF_SHOOT) {
            var_r28 = &mProcVar3.field_0x300e.x;
        } else {
            var_r28 = &mBodyAngle;
        }

        if (mProcID == PROC_HOOKSHOT_WALL_SHOOT) {
            field_0x301e = mProcVar3.field_0x300e.y;
        } else {
            field_0x301e = (s16)(shape_angle.y + mBodyAngle.y);
        }

        if (mTargetedActor != NULL && mItemMode == 2) {
            s16 var_r25 = getBodyAngleXAtnActor(0);
            if (cLib_distanceAngleS(var_r25, var_r28->x) < 0x3000) {
                cXyz sp1A0;
                getBodyAngleXBasePos(&sp1A0);
                mDoMtx_stack_c::transS(sp1A0);
                mDoMtx_stack_c::ZXYrotM(var_r25, field_0x301e, 0);
                mDoMtx_stack_c::XrotM(-var_r28->x);
                mDoMtx_stack_c::YrotM(-field_0x301e);
                mDoMtx_stack_c::transM(-sp1A0.x, -sp1A0.y, -sp1A0.z);
                mDoMtx_stack_c::multVec(&mHookshotTopPos, &mHookshotTopPos);
                var_r28->x = var_r25;
            }
        }

        field_0x301c = var_r28->x;
        mDoMtx_stack_c::ZXYrotS(field_0x301c, field_0x301e, 0);
        mDoMtx_stack_c::multVec(&cXyz::BaseZ, &mIronBallCenterPos);

        if (mItemMode == 2) {
            seStartOnlyReverb(Z2SE_LK_HS_SHOOT);
            if (mTargetedActor != NULL) {
                field_0x3028 = 1;
            } else {
                field_0x3028 = 0;
            }
        } else {
            field_0x3828 = mHeldItemRootPos;
        }

        mDoMtx_stack_c::copy(mHeldItemModel->getBaseTRMtx());

        cXyz sp134(hookRoot);
        mDoMtx_stack_c::transM(sp134);
        if (mTargetedActor != NULL || mItemMode != 2) {
            mDoMtx_stack_c::multVecZero(&mHookshotTopPos);
        }

        if (mItemMode == 2) {
            mItemMode = HS_MODE_SHOOT_e;
        }
    } else {
        cXyz sp194(mHookshotTopPos);

        if (mItemMode != HS_MODE_RETURN_e && mItemMode == HS_MODE_SHOOT_e) {
            if (mAtCps[0].ChkAtHit() &&
                (mHookTargetAcKeep.getActor() != NULL || field_0x3494 > 0.0f))
            {
                if (mHookTargetAcKeep.getActor() != NULL) {
                    mHookshotTopPos = field_0x381c;

                    fopAc_ac_c* targetAc_p = mHookTargetAcKeep.getActor();
                    if (targetAc_p != NULL && (targetAc_p->mStatus & 0x280000)) {
                        mHookTargetAcKeep.setData(targetAc_p);
                        mIronBallCenterPos = mHookshotTopPos - targetAc_p->current.pos;
                        setHookshotCatchNow();

                        if (targetAc_p->mStatus & 0x200000) {
                            mItemMode = 5;
                            field_0x316c.set(field_0x301c, field_0x301e, 0);
                            mDoMtx_stack_c::ZrotS(-targetAc_p->shape_angle.z);
                            mDoMtx_stack_c::XrotM(-targetAc_p->shape_angle.x);
                            mDoMtx_stack_c::YrotM(-targetAc_p->shape_angle.y);
                            mDoMtx_stack_c::multVecSR(&mIronBallCenterPos, &mIronBallCenterPos);
                        } else {
                            mItemMode = HS_MODE_RETURN_e;
                        }

                        fopAcM_setHookCarryNow(targetAc_p);
                    } else {
                        mHookTargetAcKeep.clearData();
                        mItemMode = HS_MODE_RETURN_e;
                        dComIfGp_getVibration().StartShock(1, 1, cXyz(0.0f, 1.0f, 0.0f));
                    }
                } else {
                    mItemMode = HS_MODE_RETURN_e;
                    dComIfGp_getVibration().StartShock(1, 1, cXyz(0.0f, 1.0f, 0.0f));
                }
            } else {
                if (checkChaseHookshot()) {
                    cXyz sp188 = mTargetedActor->mEyePos - mHookshotTopPos;
                    if (sp188.inprod(mIronBallCenterPos) >= 0.0f) {
                        mIronBallCenterPos = sp188;
                        mIronBallCenterPos.normalizeZP();
                        field_0x301c = mIronBallCenterPos.atan2sY_XZ();
                        field_0x301e = mIronBallCenterPos.atan2sX_Z();
                    }
                }

                mHookshotTopPos += mIronBallCenterPos * shoot_speed;

                if (i_checkModeFlg(0x400)) {
                    mHookshotTopPos += current.pos - field_0x3798;
                }

                cXyz sp17C = mHookshotTopPos - mHeldItemRootPos;
                f32 temp_f1 = sp17C.abs();
                sp17C *= 1.0f / temp_f1;

                if (temp_f1 >= length - 15.0f) {
                    mHookshotTopPos = mHeldItemRootPos + (sp17C * (length - 15.0f));
                    mItemMode = HS_MODE_RETURN_e;
                }

                cXyz sp170;
                if (field_0x3828.abs2(mHeldItemRootPos) > 400.0f ||
                    current.pos.abs2(field_0x3798) > 1.0f || shape_angle.y != field_0x2fe6)
                {
                    field_0x3028 = 1;
                }

                if (field_0x3028 != 0) {
                    sp170 = mHeldItemRootPos;
                } else {
                    sp170 = field_0x3828;
                }

                sp170 -= mIronBallCenterPos * 100.0f;
                cXyz sp164 = mHookshotTopPos + (mIronBallCenterPos * 15.0f);
                mRopeLinChk.Set(&sp170, &sp164, this);

                if (dComIfG_Bgsp().LineCross(&mRopeLinChk)) {
                    u32 hit_se;

                    if (checkHookshotStickBG(mRopeLinChk)) {
                        setHookshotCatchNow();
                        mItemMode = HS_MODE_FLY_e;
                        hit_se = Z2SE_HIT_HOOKSHOT_STICK;

                        if (i_dComIfGp_checkPlayerStatus1(0, 0x2010000) != 0 &&
                            mCargoCarryAcKeep.getActor() == NULL)
                        {
                            mPolyInfo3.SetPolyInfo(mPolyInfo2);
                        } else {
                            mPolyInfo3.ClearPi();
                        }

                        mPolyInfo2.SetPolyInfo(mRopeLinChk);
                        if (dComIfG_Bgsp().ChkMoveBG_NoDABg(mRopeLinChk)) {
                            fopAc_ac_c* target_ac = dComIfG_Bgsp().GetActorPointer(mRopeLinChk);
                            mHookTargetAcKeep.setData(target_ac);
                            fopAcM_setHookCarryNow(target_ac);
                        }
                    } else {
                        int poly_att0 = dComIfG_Bgsp().GetPolyAtt0(mRopeLinChk);
                        dComIfGp_getVibration().StartShock(1, 1, cXyz(0.0f, 1.0f, 0.0f));
                        mItemMode = HS_MODE_RETURN_e;
                        hit_se = Z2SE_HIT_HOOKSHOT_REBOUND;

                        cM3dGPla poly;
                        dComIfG_Bgsp().GetTriPla(mRopeLinChk, &poly);

                        csXyz sp30;
                        if (poly_att0 == 0xD || poly_att0 == 3) {
                            u16 particle_id;
                            if (poly_att0 == 0xD) {
                                particle_id = 0x881F;
                            } else {
                                particle_id = 0x881E;
                            }

                            sp30.set(cM_atan2s(poly.mNormal.absXZ(), poly.mNormal.y),
                                     poly.mNormal.atan2sX_Z(), 0);

                            dComIfGp_particle_setPolyColor(
                                particle_id, mRopeLinChk, mRopeLinChk.GetCrossP(), &mTevStr, &sp30,
                                (cXyz*)&l_hookSnowSandHitScale, 0, NULL, -1, NULL);
                            if (poly_att0 == 0xD) {
                                dComIfGp_particle_setPolyColor(
                                    0x8820, mRopeLinChk, mRopeLinChk.GetCrossP(), &mTevStr, &sp30,
                                    (cXyz*)&l_hookSnowSandHitScale, 0, NULL, -1, NULL);
                            }
                        } else {
                            sp30.set(cM_atan2s(poly.mNormal.y, poly.mNormal.absXZ()),
                                     cM_atan2s(-poly.mNormal.x, -poly.mNormal.z), 0);
                            i_dComIfGp_setHitMark(9, NULL, mRopeLinChk.GetCrossP(), &sp30, NULL, 0);
                        }
                    }

                    mHookshotTopPos = mRopeLinChk.i_GetCross() - (mIronBallCenterPos * 15.0f);

                    cM3dGPla poly;
                    dComIfG_Bgsp().GetTriPla(mRopeLinChk, &poly);
                    field_0x316c.set(cM_atan2s(poly.mNormal.y, poly.mNormal.absXZ()),
                                     cM_atan2s(-poly.mNormal.x, -poly.mNormal.z), 0);

                    mZ2Link.startHitItemSE(hit_se, dKy_pol_sound_get(&mRopeLinChk), mpHookSound,
                                           -1.0f);
                } else {
                    seStartOnlyReverbLevel(Z2SE_LK_HS_CHAIN);
                }
            }
        }

        mDoMtx_stack_c::transS(mHookshotTopPos);
        mDoMtx_stack_c::ZXYrotM(field_0x301c, field_0x301e, 0);
        mpHookshotLinChk->Set(&sp194, &mHookshotTopPos, this);

        if (dComIfG_Bgsp().LineCross(mpHookshotLinChk) &&
            dComIfG_Bgsp().GetPolyAtt0(*mpHookshotLinChk) != 6)
        {
            fopKyM_createWpillar(mpHookshotLinChk->GetCrossP(), 0.5f, 0);
            mDoAud_seStart(Z2SE_CM_BODYFALL_WATER_S, mpHookshotLinChk->GetCrossP(), 0,
                           mVoiceReverbIntensity);
        }
    }

    mHookTipBck.entry(mpHookTipModel->getModelData(), field_0x33e0);
    mpHookTipModel->i_setBaseTRMtx(mDoMtx_stack_c::get());
    mpHookTipModel->calc();

    f32 bck_frame;
    if (i_dComIfGp_checkPlayerStatus1(0, 0x10000)) {
        mDoMtx_stack_c::transS(mIronBallBgChkPos);
        mDoMtx_stack_c::ZXYrotM(-0x4000, field_0x3022, 0);
        bck_frame = 14.0f;
    } else if (i_dComIfGp_checkPlayerStatus1(0, 0x2000000)) {
        mDoMtx_stack_c::transS(mIronBallBgChkPos);
        mDoMtx_stack_c::ZXYrotM(0, field_0x3022, 0);
        bck_frame = 14.0f;
    } else {
        if (field_0x3024 != 0) {
            cLib_chasePos(&mIronBallBgChkPos, field_0x3810, 2.0f * return_speed);
            cXyz sp158 = mIronBallBgChkPos - field_0x3810;

            if (sp158.abs2() < 1.0f) {
                field_0x3024 = 0;
            } else {
                mDoMtx_stack_c::transS(mIronBallBgChkPos);
                mDoMtx_stack_c::ZXYrotM(sp158.atan2sY_XZ(), sp158.atan2sX_Z(), 0);
            }
        }

        if (field_0x3024 == 0) {
            mDoMtx_stack_c::copy(field_0x0710->getBaseTRMtx());

            cXyz sp5C(hookRoot);
            mDoMtx_stack_c::transM(sp5C);

            mIronBallBgChkPos = field_0x3810;
        }
        bck_frame = 0.0f;
    }

    mHookTipBck.entry(field_0x0714->getModelData(), bck_frame);
    field_0x0714->i_setBaseTRMtx(mDoMtx_stack_c::get());
    field_0x0714->calc();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setHookshotPos() {
    nofralloc
#include "asm/d/a/d_a_alink/setHookshotPos__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8010B2DC-8010B35C 105C1C 0080+00 2/2 0/0 0/0 .text setHookshotRoofWaitAnime__9daAlink_cFv */
void daAlink_c::setHookshotRoofWaitAnime() {
    daAlink_ANM anm;
    if (checkHookshotRoofLv7Boss()) {
        if (field_0x3020 == 0) {
            anm = ANM_DRAGON_HANG_RIGHT;
        } else {
            anm = ANM_DRAGON_HANG_LEFT;
        }
    } else {
        if (field_0x3020 == 0) {
            anm = ANM_HOOKSHOT_HANG_RIGHT;
        } else {
            anm = ANM_HOOKSHOT_HANG_LEFT;
        }

        onModeFlg(0x100);
    }

    setSingleAnimeBaseMorf(anm, lit_7307);
}

/* 8010B35C-8010B3AC 105C9C 0050+00 2/2 0/0 0/0 .text setHookshotWallWaitAnime__9daAlink_cFv */
void daAlink_c::setHookshotWallWaitAnime() {
    daAlink_ANM anm;
    if (field_0x3020 == 0) {
        anm = ANM_HOOKSHOT_WALL_RIGHT;
    } else {
        anm = ANM_HOOKSHOT_WALL_LEFT;
    }

    setSingleAnimeBaseMorf(anm, lit_7307);
    onModeFlg(0x100);
}

/* 8010B3AC-8010B644 105CEC 0298+00 2/2 0/0 0/0 .text            hookshotRoofTurn__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::hookshotRoofTurn() {
    BOOL play_sound = false;
    if (!i_dComIfGp_checkPlayerStatus0(0, 0x2000)) {
        f32 max_rise_y = (mIronBallBgChkPos.y + 15.0f) - 1.5f;
        f32 min_descend_y = mIronBallBgChkPos.y - daAlinkHIO_hookshot_c0::m.mMaxLength;

        if (checkInputOnR()) {
            int stick_direction = getDirectionFromAngle(mStickAngle);
            int angle = (int)(1024.0f * field_0x33ac * field_0x33ac);

            if (stick_direction == DIR_LEFT) {
                shape_angle.y += angle;
            } else if (stick_direction == DIR_RIGHT) {
                shape_angle.y -= angle;
            }
            current.angle.y = shape_angle.y;

            if (stick_direction == DIR_FORWARD) {
                current.pos.y += daAlinkHIO_hookshot_c0::m.mRoofHangRiseSpeed * field_0x33a8;
                if (current.pos.y > max_rise_y) {
                    current.pos.y = max_rise_y;
                } else {
                    seStartOnlyReverbLevel(Z2SE_AL_HS_HANGING_UP);
                    play_sound = true;
                }
            } else if (stick_direction == DIR_BACKWARD) {
                f32 descend_speed = daAlinkHIO_hookshot_c0::m.mRoofHangDecendSpeed * field_0x33ac;
                if (checkBootsOrArmorHeavy()) {
                    descend_speed *= 1.5f;
                }
                current.pos.y -= descend_speed;

                if (min_descend_y > current.pos.y) {
                    current.pos.y = min_descend_y;
                } else {
                    seStartOnlyReverbLevel(Z2SE_AL_HS_HANGING_DOWN);
                    play_sound = true;
                }
            }
        }

        u8 status_dir = 0;
        if (current.pos.y < max_rise_y) {
            status_dir |= 8;
        }

        if (current.pos.y > min_descend_y) {
            status_dir |= 2;
        }

        if (!checkEventRun()) {
            dComIfGp_set3DStatusForce(0x78, status_dir, 0);
        }
    }

    if (play_sound) {
        if (!i_checkNoResetFlg3(FLG3_UNK_4)) {
            dComIfGp_getVibration().StartQuake(1, 1, cXyz(0.0f, 1.0f, 0.0f));
            i_onNoResetFlg3(FLG3_UNK_4);
        }
    } else {
        cancelItemUseQuake(0);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::hookshotRoofTurn() {
    nofralloc
#include "asm/d/a/d_a_alink/hookshotRoofTurn__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8010B644-8010B720 105F84 00DC+00 3/3 0/0 0/0 .text
 * initHookshotRoofWaitActor__9daAlink_cFP10fopAc_ac_c          */
void daAlink_c::initHookshotRoofWaitActor(fopAc_ac_c* i_actor) {
    if (i_actor != NULL) {
        mCargoCarryAcKeep.setData(i_actor);
        field_0x37c8 = mIronBallBgChkPos - i_actor->current.pos;

        mDoMtx_stack_c::XrotS(-i_actor->shape_angle.x);
        mDoMtx_stack_c::YrotM(-i_actor->shape_angle.y);
        mDoMtx_stack_c::multVecSR(&field_0x37c8, &field_0x37c8);
        mProcVar0.field_0x3008 = i_actor->shape_angle.y;

        fopAcM_setHookCarryNow(i_actor);
        mProcVar3.field_0x300e.y = 1;
    } else {
        mCargoCarryAcKeep.clearData();
        mProcVar3.field_0x300e.y = 0;
    }
}

/* 8010B720-8010B84C 106060 012C+00 2/2 0/0 0/0 .text            checkNextHookPoint__9daAlink_cFv */
int daAlink_c::checkNextHookPoint() {
    if (field_0x3026 != 0) {
        fopAc_ac_c* targetAc_p = mHookTargetAcKeep.getActor();

        if ((mItemMode == 5 && targetAc_p != NULL && fopAcM_checkHookCarryNow(targetAc_p)) ||
            (mItemMode == HS_MODE_FLY_e && dComIfG_Bgsp().ChkPolySafe(mPolyInfo2) &&
             checkHookshotStickBG(mPolyInfo2) &&
             (targetAc_p == NULL || fopAcM_checkHookCarryNow(targetAc_p))))
        {
            field_0x3026 = 0;
            return procHookshotFlyInit();
        }
    } else if (i_dComIfGp_checkPlayerStatus1(0, 0x10000) && checkHookshotRoofLv7Boss()) {
        if (!fopAcM_checkHookCarryNow(mCargoCarryAcKeep.getActor())) {
            field_0x3102 = shape_angle.y;
            return procCoLargeDamageInit(-6, 1, 0, 0, NULL, 0);
        }
    }

    return procFallInit(1, lit_7808);
}

/* 8010B84C-8010B96C 10618C 0120+00 2/2 0/0 0/0 .text            checkLandHookshotHang__9daAlink_cFv
 */
int daAlink_c::checkLandHookshotHang() {
    mLinkGndChk.SetPos(&field_0x3834);

    f32 ground_cross = dComIfG_Bgsp().GroundCross(&mLinkGndChk);
    if (!setHookshotHangMoveBGCollect() || ground_cross > mLeftFootPos.y ||
        ground_cross > mRightFootPos.y)
    {
        return checkNextHookPoint();
    }

    if (mProcID != PROC_HOOKSHOT_ROOF_BOOTS &&
        ((mProcID != PROC_HOOKSHOT_ROOF_SHOOT && mProcID != PROC_HOOKSHOT_WALL_SHOOT) ||
         checkHookshotWait()) &&
        (!checkHookshotRoofLv7Boss() || !i_checkEquipHeavyBoots()) &&
        checkSetItemTrigger(HVY_BOOTS))
    {
        if (i_dComIfGp_checkPlayerStatus1(0, 0x10000)) {
            return procHookshotRoofBootsInit(mCargoCarryAcKeep.getActor());
        }
        setHeavyBoots(1);
    }

    return 0;
}

/* 8010B96C-8010BA6C 1062AC 0100+00 3/3 0/0 0/0 .text commonHookshotRoofWait__9daAlink_cFv */
int daAlink_c::commonHookshotRoofWait() {
    setJumpMode();
    if (mProcVar3.field_0x300e.y != 0) {
        mCargoCarryAcKeep.setActor();
        fopAc_ac_c* carryAc_p = mCargoCarryAcKeep.getActor();

        if (carryAc_p == NULL || !fopAcM_checkHookCarryNow(carryAc_p)) {
            return checkNextHookPoint();
        }
    }

    if (mLinkAcch.ChkWallHit()) {
        return checkNextHookPoint();
    }

    cXyz start_pos = field_0x3810 + (current.pos - field_0x3798);
    mRopeLinChk.Set(&start_pos, &mIronBallBgChkPos, this);

    if (dComIfG_Bgsp().LineCross(&mRopeLinChk)) {
        return checkNextHookPoint();
    }

    if (checkLandHookshotHang()) {
        return 1;
    }

    return 0;
}

/* 8010BA6C-8010BAA8 1063AC 003C+00 2/2 0/0 0/0 .text commonHookshotWallWait__9daAlink_cFv */
int daAlink_c::commonHookshotWallWait() {
    setJumpMode();
    return checkLandHookshotHang() ? TRUE : FALSE;
}

/* 8010BAA8-8010BB48 1063E8 00A0+00 1/1 0/0 0/0 .text procHookshotSubjectInit__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHookshotSubjectInit() {
    if (!commonProcInitNotSameProc(PROC_HOOKSHOT_SUBJECT)) {
        return 0;
    }

    mNormalSpeed = 0.0f;

    if (initHookshotUpperAnimeSpeed(1)) {
        setSingleAnimeBaseSpeed(ANM_ATN_WAIT_LEFT, 0.0f,
                                daAlinkHIO_hookshot_c0::m.mStartInterpolation);
    }

    dComIfGp_setPlayerStatus0(0, 0x4000);
    current.angle.y = shape_angle.y;
    setHookshotReadyMaterial();
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotSubjectInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotSubjectInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8010BB48-8010BC08 106488 00C0+00 1/0 0/0 0/0 .text            procHookshotSubject__9daAlink_cFv
 */
int daAlink_c::procHookshotSubject() {
    if (checkHookshotWait()) {
        setDoStatus(0x12);
    }

    setShapeAngleToAtnActor(0);
    mSight.offDrawFlg();

    if (!checkNextAction(0)) {
        if (checkHookshotWait()) {
            if (setBodyAngleToCamera()) {
                setHookshotSight();
            }

            dComIfGp_clearPlayerStatus0(0, 0x40000);
        } else {
            dComIfGp_setPlayerStatus0(0, 0x40000);
        }
    }

    return 1;
}

/* 8010BC08-8010BCA4 106548 009C+00 1/1 0/0 0/0 .text            procHookshotMoveInit__9daAlink_cFv
 */
int daAlink_c::procHookshotMoveInit() {
    if (!commonProcInitNotSameProc(PROC_HOOKSHOT_MOVE)) {
        return 0;
    }

    if (checkZeroSpeedF()) {
        onModeFlg(1);
    }

    if (initHookshotUpperAnimeSpeed(0)) {
        setBlendAtnMoveAnime(daAlinkHIO_hookshot_c0::m.mStartInterpolation);
    }

    dComIfGp_setPlayerStatus0(0, 0x4000);
    return 1;
}

/* 8010BCA4-8010BD90 1065E4 00EC+00 1/0 0/0 0/0 .text            procHookshotMove__9daAlink_cFv */
int daAlink_c::procHookshotMove() {
    cancelHookshotMove();

    if (!checkNextAction(0)) {
        f32 blend = lit_6041;

        if (checkZeroSpeedF()) {
            onModeFlg(1);

            if (field_0x2f98 != 2) {
                field_0x2f98 = 2;
                blend = daAlinkHIO_basic_c0::m.mAnmBlendFactor;
            }
        } else {
            offModeFlg(1);
        }

        if (checkHookshotWait()) {
            setBlendAtnMoveAnime(blend);
            setBodyAngleXReadyAnime(0);
        } else if (checkChaseHookshot()) {
            setBodyAngleXReadyAnime(0);
        }
    }

    return 1;
}

/* 8010BD90-8010BEF0 1066D0 0160+00 2/2 0/0 0/0 .text            procHookshotFlyInit__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHookshotFlyInit() {
    commonProcInit(PROC_HOOKSHOT_FLY);

    if (!i_checkNoResetFlg0(FLG0_UNK_100)) {
        i_onNoResetFlg0(FLG0_UNDERWATER);
    }

    daAlink_ANM anm;
    if (field_0x3020 == 0) {
        anm = ANM_HOOKSHOT_FLY_LEFT;
    } else {
        anm = ANM_HOOKSHOT_FLY_RIGHT;
    }

    setSingleAnimeBase(anm);
    mBodyAngle.x = 0;
    setSpecialGravity(0.0f, mMaxFallSpeed, 0);
    mNormalSpeed = 0.0f;
    speed.y = 0.0f;

    dComIfGp_clearPlayerStatus0(0, 0x40000);
    dComIfGp_setPlayerStatus1(0, 0x10);

    voiceStart(Z2SE_AL_V_JUMP_L);

    field_0x37c8 = field_0x3798;
    current.pos = field_0x3834;
    field_0x37d4 = cXyz::Zero;

    shape_angle.x = field_0x301c;
    shape_angle.y = field_0x301e;
    current.angle.y = shape_angle.y;

    mProcVar0.field_0x3008 = 1;
    mProcVar1.field_0x300a = 4;
    field_0x2f99 = 0x50;
    mProcVar2.field_0x300c = mItemMode;
    mProcVar3.field_0x300e.z = 0;

    procHookshotFly();
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotFlyInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotFlyInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8010BEF0-8010C830 106830 0940+00 2/1 0/0 0/0 .text            procHookshotFly__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHookshotFly() {
    fopAc_ac_c* targetAc_p = mHookTargetAcKeep.getActor();

    s16 targetAc_name;
    if (targetAc_p != NULL) {
        targetAc_name = fopAcM_GetName(targetAc_p);
    } else {
        targetAc_name = PROC_ALINK;
    }

    BOOL var_r29 = 0;
    if (targetAc_name == PROC_Obj_SwHang) {
        int swhang_type = static_cast<daObjSwHang_c*>(targetAc_p)->getType();
        if (swhang_type == 3 || swhang_type == 4) {
            var_r29 = 1;
        }
    }

    s16 temp_r24 = field_0x301e;
    cXyz spAC(mHookshotTopPos);
    setHookshotTopPosFly();

    field_0x37d4 = mHookshotTopPos - mHeldItemRootPos;
    if (mProcVar0.field_0x3008 != 0 && cLib_distanceAngleS(field_0x37d4.atan2sX_Z(), temp_r24) > 0x4000) {
        setHookshotReturnEnd();
    } else {
        mProcVar0.field_0x3008 = 0;
        f32 temp_f31 = field_0x37d4.abs();
        f32 temp_f30 = daAlinkHIO_hookshot_c0::m.mStickReturnSpeed + spAC.abs(mHookshotTopPos);

        if (temp_f31 < temp_f30 || mProcVar1.field_0x300a == 0) {
            setHookshotReturnEnd();
        } else {
            field_0x37d4 *= temp_f30 / temp_f31;
            seStartOnlyReverbLevel(Z2SE_LK_HS_WIND_UP);
            if (temp_f31 < temp_f30 * 1.5f) {
                mProcVar1.field_0x300a--;
            }
        }
    }

    current.pos += field_0x37d4;
    if (checkSetItemTrigger(W_HOOKSHOT) != 0) {
        mProcVar3.field_0x300e.z = 1;
    } else if (mProcVar3.field_0x300e.z != 0 && !itemButton()) {
        mProcVar3.field_0x300e.z = 0;
    }

    if (mItemMode != 5 && mItemMode != HS_MODE_FLY_e) {
        if (targetAc_name == PROC_B_OB ||
            (targetAc_name == PROC_B_DR && static_cast<daB_DR_c*>(targetAc_p)->isBack()))
        {
            dComIfGp_getVibration().StartShock(1, 1, cXyz(0.0f, 1.0f, 0.0f));
            return procBossBodyHangInit(targetAc_p);
        } else {
            cM3dGPla poly;
            BOOL var_r28 = 0;
            BOOL var_r27 = 0;
            BOOL force_fall = checkStageName("D_MN10") && fopAcM_GetRoomNo(this) == 4;

            if (mProcVar2.field_0x300c == 4 && dComIfG_Bgsp().ChkPolySafe(mPolyInfo2)) {
                var_r28 = dComIfG_Bgsp().GetTriPla(mPolyInfo2, &poly);
                var_r27 = cBgW_CheckBRoof(poly.mNormal.y);
                if (!checkHookshotStickBG(mPolyInfo2)) {
                    var_r28 = 0;
                }
            }

            if (!force_fall && !mLinkAcch.ChkGroundHit() && !var_r27 && checkFrontWallTypeAction())
            {
                voiceStart(Z2SE_AL_V_CLIMB);
                dComIfGp_getVibration().StartShock(1, 1, cXyz(0.0f, 1.0f, 0.0f));
                return 1;
            } else {
                cXyz spA0 = current.pos - field_0x37c8;
                if (commonLineCheck(&field_0x37c8, &current.pos)) {
                    current.pos = mLinkLinChk.i_GetCross();

                    spA0.y = 0.0f;
                    spA0.normalizeZP();

                    current.pos.x -= spA0.x * 35.0f;
                    current.pos.z -= spA0.z * 35.0f;
                }

                if (var_r28 && !var_r27) {
                    cXyz sp94(mHookshotTopPos.x + poly.mNormal.x * 35.0f, mHookshotTopPos.y + 5.0f,
                              mHookshotTopPos.z + poly.mNormal.z * 35.0f);
                    mLinkGndChk.SetPos(&sp94);

                    if (dComIfG_Bgsp().GroundCross(&mLinkGndChk) > mHookshotTopPos.y - 150.0f ||
                        force_fall)
                    {
                        current.pos.x = sp94.x;
                        current.pos.z = sp94.z;
                        force_fall = true;
                    }
                }

                setJumpMode();
                if (mLinkAcch.ChkGroundHit()) {
                    checkNextAction(0);
                } else if (force_fall) {
                    procFallInit(1, 5.0f);
                    field_0x2f99 = 0x70;
                } else if (targetAc_name == PROC_E_PH || targetAc_name == PROC_B_DR || var_r29) {
                    procHookshotRoofWaitInit(1, targetAc_p, mProcVar3.field_0x300e.z);
                } else if (var_r28 && dComIfG_Bgsp().GetMonkeyBarsCode(mPolyInfo2)) {
                    cXyz sp88;
                    mDoMtx_stack_c::ZXYrotS(field_0x301c, field_0x301e, 0);
                    mDoMtx_stack_c::multVec(&cXyz::BaseZ, &sp88);
                    sp88 = mHookshotTopPos + (sp88 * 15.0f);

                    procRoofHangStartInit(mPolyInfo2, sp88, 0);
                } else if (var_r28 && var_r27) {
                    procHookshotRoofWaitInit(1, NULL, mProcVar3.field_0x300e.z);
                } else if (var_r28 && field_0x2f91 != 3 && fabsf(poly.mNormal.y) < 0.05f) {
                    procHookshotWallWaitInit(1, poly.mNormal.atan2sX_Z(), mProcVar3.field_0x300e.z);
                } else {
                    procFallInit(1, 5.0f);
                    field_0x2f99 = 0x70;
                }

                voiceStart(Z2SE_AL_V_CLIMB);
                if (mProcID != PROC_FALL) {
                    dComIfGp_getVibration().StartShock(1, 1, cXyz(0.0f, 1.0f, 0.0f));
                }
            }
        }
    } else {
        cXyz sp7C = mHookshotTopPos - current.pos;
        cLib_addCalcAngleS(&shape_angle.x, sp7C.atan2sY_XZ(), 2, 0x2000, 0x800);
        cLib_addCalcAngleS(&shape_angle.y, sp7C.atan2sX_Z(), 2, 0x2000, 0x800);
        current.angle.y = shape_angle.y;
        field_0x37c8 = field_0x3798;
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotFly() {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotFly__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8010C830-8010C9F4 107170 01C4+00 4/4 0/0 0/0 .text
 * procHookshotRoofWaitInit__9daAlink_cFiP10fopAc_ac_ci         */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHookshotRoofWaitInit(int param_0, fopAc_ac_c* param_1, int param_2) {
    commonProcInit(PROC_HOOKSHOT_ROOF_WAIT);

    if (param_0) {
        cXyz sp28;
        mDoMtx_stack_c::ZXYrotS(field_0x301c, field_0x301e, 0);
        mDoMtx_stack_c::multVec(&cXyz::BaseZ, &sp28);
        current.pos = mHookshotTopPos + (sp28 * 15.0f);
        current.pos.y -= 1.5f;

        field_0x3022 = field_0x301e;
        mIronBallBgChkPos.set(current.pos.x, current.pos.y - 15.0f, current.pos.z);

        daAlink_ANM anm;
        if (field_0x3020 == 0) {
            field_0x3020 = 1;
            anm = ANM_HOOKSHOT_HANG_END_LEFT;
        } else {
            field_0x3020 = 0;
            anm = ANM_HOOKSHOT_HANG_END_RIGHT;
        }

        mProcVar2.field_0x300c = 0;
        setSingleAnimeParam(anm, &daAlinkHIO_hookshot_c0::m.mRoofHangAnm);
    } else {
        setHookshotRoofWaitAnime();
        mProcVar2.field_0x300c = 1;
    }

    resetHookshotMode();
    field_0x3024 = 1;
    setSpecialGravity(0.0f, mMaxFallSpeed, 0);
    mNormalSpeed = 0.0f;
    speed.y = 0.0f;
    current.angle.y = shape_angle.y;

    initHookshotRoofWaitActor(param_1);
    if (param_0) {
        setHookshotHangMoveBGCollect();
    }

    field_0x2b98 = 6.5f;
    mProcVar3.field_0x300e.z = param_2;

    dComIfGp_setPlayerStatus1(0, 0x10000);
    field_0x814.SetWeight(255);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotRoofWaitInit(int param_0, fopAc_ac_c* param_1, int param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotRoofWaitInit__9daAlink_cFiP10fopAc_ac_ci.s"
}
#pragma pop
#endif

/* 8010C9F4-8010CC80 107334 028C+00 1/0 0/0 0/0 .text            procHookshotRoofWait__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHookshotRoofWait() {
    if (dComIfGp_checkCameraAttentionStatus(field_0x317c, 0x80)) {
        if (checkSubjectEnd(1)) {
            dComIfGp_clearPlayerStatus0(0, 0x2000);
            mBodyAngle.y = 0;
            mBodyAngle.x = 0;
            offModeFlg(0x60000000);
        } else if (i_dComIfGp_checkPlayerStatus0(0, 0x2000)) {
            setBodyAngleToCamera();
        }
    } else if (dCam_getBody()->ChangeModeOK(4)) {
        i_onResetFlg0(RFLG0_UNK_4000000);

        if (dComIfGp_checkCameraAttentionStatus(field_0x317c, 0x1000)) {
            field_0x310c = shape_angle.y;
            field_0x310a = 0;
            setSubjectMode();
            onModeFlg(0x60000000);
        }
    }

    if (commonHookshotRoofWait()) {
        return 1;
    }

    if (!checkHookshotRoofLv7Boss() || !checkBootsOrArmorHeavy()) {
        setDoStatusEmphasys(1);

        if (doTrigger()) {
            return procFallInit(1, 5.0f);
        }
    }

    setShapeAngleToAtnActor(0);

    if (mProcVar2.field_0x300c == 0) {
        if (checkSetItemTrigger(W_HOOKSHOT)) {
            mProcVar3.field_0x300e.z = 1;
        } else if (mProcVar3.field_0x300e.z != 0 && !itemButton()) {
            mProcVar3.field_0x300e.z = 0;
        }

        daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;
        if (frameCtrl_p->checkAnmEnd() ||
            ((checkInputOnR() || mProcVar3.field_0x300e.z != 0 || checkHookshotRoofLv7Boss()) &&
             frameCtrl_p->getFrame() > daAlinkHIO_hookshot_c0::m.mRoofHangAnm.mCheckFrame))
        {
            setHookshotRoofWaitAnime();
            mProcVar2.field_0x300c = 1;
        }
    } else if (!checkHookshotRoofLv7Boss()) {
        if (checkSetItemTrigger(W_HOOKSHOT) || mProcVar3.field_0x300e.z != 0) {
            return procHookshotRoofShootInit(mCargoCarryAcKeep.getActor());
        }
        hookshotRoofTurn();
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotRoofWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotRoofWait__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8010CC80-8010CD60 1075C0 00E0+00 1/1 0/0 0/0 .text
 * procHookshotRoofShootInit__9daAlink_cFP10fopAc_ac_c          */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHookshotRoofShootInit(fopAc_ac_c* param_0) {
    commonProcInit(PROC_HOOKSHOT_ROOF_SHOOT);

    daAlink_ANM anm;
    if (field_0x3020 == 0) {
        anm = ANM_HOOKSHOT_HANG_WAIT_RIGHT;
    } else {
        anm = ANM_HOOKSHOT_HANG_WAIT_LEFT;
    }

    setSingleAnimeBaseSpeed(anm, 1.0f, 3.0f);
    setFastShotTimer();
    setSpecialGravity(0.0f, mMaxFallSpeed, 0);
    mNormalSpeed = 0.0f;
    speed.y = 0.0f;
    field_0x2b98 = 6.5f;

    initHookshotRoofWaitActor(param_0);
    initHookshotReady();

    dComIfGp_setPlayerStatus1(0, 0x10000);
    dComIfGp_setPlayerStatus0(0, 0x4000);

    field_0x814.SetWeight(255);
    mProcVar2.field_0x300c = 0;
    mProcVar3.field_0x300e.x = mBodyAngle.x;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotRoofShootInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotRoofShootInit__9daAlink_cFP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* 8010CD60-8010CF6C 1076A0 020C+00 1/0 0/0 0/0 .text            procHookshotRoofShoot__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHookshotRoofShoot() {
    if (checkHookshotWait()) {
        setDoStatus(0x12);
    }

    if (commonHookshotRoofWait()) {
        return 1;
    }

    if (checkHookshotWait()) {
        setShapeAngleToAtnActor(0);
    }

    mSight.offDrawFlg();
    dComIfGp_clearPlayerStatus0(0, 0x40000);

    if (mFastShotTime != 0 && checkHookshotWait()) {
        mFastShotTime--;
    }

    if (!checkUpperItemActionHookshot()) {
        mBodyAngle.x = mProcVar3.field_0x300e.x;

        if (!i_checkAttentionLock() && mFastShotTime == 0) {
            if (checkHookshotWait()) {
                mUnderFrameCtrl[0].setRate(0.0f);
                mUnderFrameCtrl[0].setFrame(0.0f);
                getNowAnmPackUnder(UNDER_0)->setFrame(0.0f);

                if (mProcVar2.field_0x300c != 0 && setBodyAngleToCamera()) {
                    setHookshotSight();
                }
            } else {
                dComIfGp_setPlayerStatus0(0, 0x40000);
            }

            mProcVar2.field_0x300c = 1;
        } else {
            if (mTargetedActor == NULL && mItemMode == HS_MODE_NONE_e) {
                return procHookshotRoofWaitInit(0, mCargoCarryAcKeep.getActor(), 0);
            }

            if (checkHookshotWait()) {
                mUnderFrameCtrl[0].setRate(1.0f);

                if (mProcVar2.field_0x300c == 0) {
                    setBodyAngleXReadyAnime(0);
                    hookshotRoofTurn();
                } else {
                    cancelItemUseQuake(0);
                }
            }

            mProcVar2.field_0x300c = 0;
        }

        mProcVar3.field_0x300e.x = mBodyAngle.x;
        mBodyAngle.x = 0;
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotRoofShoot() {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotRoofShoot__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8010CF6C-8010D034 1078AC 00C8+00 1/1 0/0 0/0 .text
 * procHookshotRoofBootsInit__9daAlink_cFP10fopAc_ac_c          */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHookshotRoofBootsInit(fopAc_ac_c* param_0) {
    commonProcInit(PROC_HOOKSHOT_ROOF_BOOTS);

    daAlink_ANM anm;
    if (field_0x3020 == 0) {
        anm = ANM_HOOKSHOT_HANG_RIGHT_START;
    } else {
        anm = ANM_HOOKSHOT_HANG_LEFT_START;
    }

    setSingleAnimeBaseMorf(anm, 2.0f);
    resetHookshotMode();
    field_0x3024 = 1;
    setSpecialGravity(0.0f, mMaxFallSpeed, 0);
    mNormalSpeed = 0.0f;
    speed.y = 0.0f;
    current.angle.y = shape_angle.y;
    initHookshotRoofWaitActor(param_0);
    field_0x2b98 = 6.5f;

    dComIfGp_setPlayerStatus1(0, 0x10000);

    field_0x814.SetWeight(255);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotRoofBootsInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotRoofBootsInit__9daAlink_cFP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* 8010D034-8010D174 107974 0140+00 1/0 0/0 0/0 .text            procHookshotRoofBoots__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHookshotRoofBoots() {
    if (commonHookshotRoofWait()) {
        return 1;
    }

    if (!checkHookshotRoofLv7Boss() || !checkBootsOrArmorHeavy()) {
        setDoStatusEmphasys(1);

        if (doTrigger()) {
            return procFallInit(1, 5.0f);
        }
    }

    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;
    if (frameCtrl_p->checkAnmEnd()) {
        return procHookshotRoofWaitInit(0, mCargoCarryAcKeep.getActor(), 0);
    }

    if (frameCtrl_p->checkPass(4.0f)) {
        setHeavyBoots(1);
    } else if (i_checkNoResetFlg0(FLG0_EQUIP_HVY_BOOTS) && frameCtrl_p->checkPass(10.0f)) {
        dComIfGp_getVibration().StartShock(3, 1, cXyz(0.0f, 1.0f, 0.0f));
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotRoofBoots() {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotRoofBoots__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8010D174-8010D38C 107AB4 0218+00 3/3 0/0 0/0 .text procHookshotWallWaitInit__9daAlink_cFisi */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHookshotWallWaitInit(int param_0, s16 param_1, int param_2) {
    commonProcInit(PROC_HOOKSHOT_WALL_WAIT);

    if (param_0) {
        cXyz sp28;
        setOldRootQuaternion(0, -0x8000, 0);
        mDoMtx_stack_c::ZXYrotS(field_0x301c, field_0x301e, 0);
        mDoMtx_stack_c::multVec(&cXyz::BaseZ, &sp28);
        current.pos = mHookshotTopPos + (sp28 * 15.0f);
        shape_angle.y = param_1;

        current.pos.x += cM_ssin(shape_angle.y) * 1.5f;
        current.pos.z += cM_scos(shape_angle.y) * 1.5f;

        field_0x3022 = param_1 + 0x8000;
        mIronBallBgChkPos.set(current.pos.x + cM_ssin(shape_angle.y) * 15.0f, current.pos.y,
                              current.pos.z + cM_scos(shape_angle.y) * 15.0f);

        daAlink_ANM anm;
        if (field_0x3020 == 0) {
            field_0x3020 = 1;
            anm = ANM_HOOKSHOT_WALL_END_LEFT;
        } else {
            field_0x3020 = 0;
            anm = ANM_HOOKSHOT_WALL_END_RIGHT;
        }

        mProcVar2.field_0x300c = 0;
        setSingleAnimeParam(anm, &daAlinkHIO_hookshot_c0::m.mWallHangAnm);
    } else {
        setHookshotWallWaitAnime();
        mProcVar2.field_0x300c = 1;
    }

    dComIfGp_setPlayerStatus1(0, 0x2000000);
    resetHookshotMode();
    field_0x3024 = 1;
    setSpecialGravity(0.0f, mMaxFallSpeed, 0);
    mNormalSpeed = 0.0f;
    speed.y = 0.0f;
    current.angle.y = shape_angle.y;

    if (param_0) {
        setHookshotHangMoveBGCollect();
    }

    mProcVar3.field_0x300e.z = param_2;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotWallWaitInit(int param_0, s16 param_1, int param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotWallWaitInit__9daAlink_cFisi.s"
}
#pragma pop
#endif

/* 8010D38C-8010D5F4 107CCC 0268+00 1/0 0/0 0/0 .text            procHookshotWallWait__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHookshotWallWait() {
    if (dComIfGp_checkCameraAttentionStatus(field_0x317c, 0x80)) {
        if (checkSubjectEnd(1)) {
            dComIfGp_clearPlayerStatus0(0, 0x2000);
            mBodyAngle.x = 0;
            offModeFlg(0x60000000);
        } else if (i_dComIfGp_checkPlayerStatus0(0, 0x2000)) {
            s16 old_angle = shape_angle.y;
            shape_angle.y = field_0x310c;
            setBodyAngleToCamera();

            shape_angle.y = old_angle;

            if ((s16)(field_0x310c - shape_angle.y) > 0x4000) {
                field_0x310c = shape_angle.y + 0x4000;
            } else if ((s16)(field_0x310c - shape_angle.y) < -0x4000) {
                field_0x310c = shape_angle.y - 0x4000;
            }
        }
    } else if (dCam_getBody()->ChangeModeOK(4)) {
        i_onResetFlg0(RFLG0_UNK_4000000);

        if (dComIfGp_checkCameraAttentionStatus(field_0x317c, 0x1000)) {
            field_0x310c = shape_angle.y;
            field_0x310a = 0;
            setSubjectMode();
            onModeFlg(0x60000000);
        }
    }

    if (commonHookshotWallWait()) {
        return 1;
    }

    setDoStatusEmphasys(1);

    if (doTrigger()) {
        return procFallInit(1, 5.0f);
    }

    if (mProcVar2.field_0x300c == 0) {
        if (checkSetItemTrigger(W_HOOKSHOT)) {
            mProcVar3.field_0x300e.z = 1;
        } else if (mProcVar3.field_0x300e.z != 0 && !itemButton()) {
            mProcVar3.field_0x300e.z = 0;
        }

        daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;
        if (frameCtrl_p->checkAnmEnd() ||
            ((checkInputOnR() || mProcVar3.field_0x300e.z != 0) &&
             frameCtrl_p->getFrame() > daAlinkHIO_hookshot_c0::m.mWallHangAnm.mCheckFrame))
        {
            setHookshotWallWaitAnime();
            mProcVar2.field_0x300c = 1;
        }
    } else if (checkSetItemTrigger(W_HOOKSHOT) || mProcVar3.field_0x300e.z != 0) {
        return procHookshotWallShootInit();
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotWallWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotWallWait__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8010D5F4-8010D6CC 107F34 00D8+00 1/1 0/0 0/0 .text procHookshotWallShootInit__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHookshotWallShootInit() {
    commonProcInit(PROC_HOOKSHOT_WALL_SHOOT);

    daAlink_ANM anm;
    if (field_0x3020 == 0) {
        anm = ANM_HOOKSHOT_WALL_WAIT_RIGHT;
    } else {
        anm = ANM_HOOKSHOT_WALL_WAIT_LEFT;
    }

    setSingleAnimeBaseSpeed(anm, 1.0f, 3.0f);
    setFastShotTimer();
    setSpecialGravity(0.0f, mMaxFallSpeed, 0);
    mNormalSpeed = 0.0f;
    speed.y = 0.0f;

    dComIfGp_setPlayerStatus1(0, 0x2000000);
    initHookshotReady();
    dComIfGp_setPlayerStatus0(0, 0x4000);

    mProcVar2.field_0x300c = 0;
    mProcVar3.field_0x300e.x = mBodyAngle.x;
    mProcVar3.field_0x300e.y = shape_angle.y;
    field_0x310c = mProcVar3.field_0x300e.y;
    setHookshotReadyMaterial();
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotWallShootInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotWallShootInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 8010D6CC-8010D93C 10800C 0270+00 1/0 0/0 0/0 .text            procHookshotWallShoot__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procHookshotWallShoot() {
    if (checkHookshotWait()) {
        setDoStatus(0x12);
    }

    if (commonHookshotWallWait()) {
        return 1;
    }

    mSight.offDrawFlg();
    dComIfGp_clearPlayerStatus0(0, 0x40000);

    if (mFastShotTime != 0 && checkHookshotWait()) {
        mFastShotTime--;
    }

    BOOL var_r31 = false;
    if (!checkUpperItemActionHookshot()) {
        s16 old_angle = shape_angle.y;
        mBodyAngle.x = mProcVar3.field_0x300e.x;
        shape_angle.y = mProcVar3.field_0x300e.y;

        if (!i_checkAttentionLock() && mFastShotTime == 0) {
            if (checkHookshotWait()) {
                mUnderFrameCtrl[0].setRate(0.0f);
                mUnderFrameCtrl[0].setFrame(0.0f);
                getNowAnmPackUnder(UNDER_0)->setFrame(0.0f);

                if (mProcVar2.field_0x300c != 0 && setBodyAngleToCamera()) {
                    var_r31 = true;
                }
            } else {
                dComIfGp_setPlayerStatus0(0, 0x40000);
            }

            mProcVar2.field_0x300c = 1;
        } else {
            if (mTargetedActor == NULL && mItemMode == HS_MODE_NONE_e) {
                shape_angle.y = old_angle;
                return procHookshotWallWaitInit(0, 0, 0);
            }

            if (checkHookshotWait()) {
                setWaterInAnmRate(mUnderFrameCtrl, 1.0f);

                if (mProcVar2.field_0x300c == 0) {
                    setBodyAngleXReadyAnime(0);

                    if (!setShapeAngleToAtnActor(0)) {
                        cLib_addCalcAngleS(&shape_angle.y, old_angle, 4, 0xC00, 0x180);
                    }
                }
            }

            mProcVar2.field_0x300c = 0;
        }

        if ((s16)(shape_angle.y - old_angle) > 0x4000) {
            shape_angle.y = old_angle + 0x4000;
        } else if ((s16)(shape_angle.y - old_angle) < -0x4000) {
            shape_angle.y = old_angle - 0x4000;
        }

        if (var_r31) {
            setHookshotSight();
        }

        mProcVar3.field_0x300e.x = mBodyAngle.x;
        mBodyAngle.x = 0;
        field_0x310c = shape_angle.y;
        mProcVar3.field_0x300e.y = shape_angle.y;
        shape_angle.y = old_angle;
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHookshotWallShoot() {
    nofralloc
#include "asm/d/a/d_a_alink/procHookshotWallShoot__9daAlink_cFv.s"
}
#pragma pop
#endif
