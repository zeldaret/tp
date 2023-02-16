#include "f_op/f_op_kankyo_mng.h"

/* 80101890-801018E4 0FC1D0 0054+00 6/6 0/0 0/0 .text            checkZoraWearMaskDraw__9daAlink_cFv
 */
BOOL daAlink_c::checkZoraWearMaskDraw() {
    return checkZoraWearAbility() && !i_checkNoResetFlg0(FLG0_UNK_100);
}

/* 801018E4-80101934 0FC224 0050+00 1/1 0/0 0/0 .text checkAcceptUseItemInWater__9daAlink_cCFUs */
BOOL daAlink_c::checkAcceptUseItemInWater(u16 i_itemNo) const {
    return i_itemNo == HVY_BOOTS || i_itemNo == WATER_BOMB || checkHookshotItem(i_itemNo);
}

/* 80101934-801019B8 0FC274 0084+00 4/4 0/0 0/0 .text            swimDeleteItem__9daAlink_cFv */
void daAlink_c::swimDeleteItem() {
    if (!checkHookshotItem(mEquipItem) && (mEquipItem != 0x103 || !checkBootsOrArmorHeavy())) {
        deleteEquipItem(1, 1);
    }

    if (i_checkNoResetFlg2(FLG2_UNK_1)) {
        offKandelaarModel();
    }
}

/* 801019B8-80101A18 0FC2F8 0060+00 11/11 0/0 0/0 .text            getZoraSwim__9daAlink_cCFv */
bool daAlink_c::getZoraSwim() const {
    return checkUnderMove0BckNoArc(ANM_SWIM_C) || checkUnderMove0BckNoArc(ANM_SWIM_ZORA_START);
}

/* 80101A18-80101AA8 0FC358 0090+00 6/6 0/0 0/0 .text            getSwimFrontMaxSpeed__9daAlink_cCFv
 */
f32 daAlink_c::getSwimFrontMaxSpeed() const {
    if (checkBootsOrArmorHeavy()) {
        return daAlinkHIO_swim_c0::m.mUnderwaterMaxSinkSpeed;
    } else if (checkZoraWearAbility()) {
        return lit_8130;
    } else if (checkSwimDashMode()) {
        return daAlinkHIO_swim_c0::m.mDMaxSpeed;
    } else {
        return daAlinkHIO_swim_c0::m.mMaxForwardSpeed;
    }
}

/* 80101AA8-80101B44 0FC3E8 009C+00 5/5 0/0 0/0 .text            getSwimMaxFallSpeed__9daAlink_cCFv
 */
f32 daAlink_c::getSwimMaxFallSpeed() const {
    if (mProcID == PROC_DIVE_JUMP) {
        return -daAlinkHIO_swim_c0::m.mMaxUnderwaterSpeed;
    } else if (checkBootsOrArmorHeavy()) {
        return daAlinkHIO_swim_c0::m.mBootsMaxSinkSpeed;
    } else if (getZoraSwim()) {
        return daAlinkHIO_swim_c0::m.mMaxSinkSpeed;
    } else {
        return daAlinkHIO_swim_c0::m.mInitMaxSinkSpeed;
    }
}

/* 80101B44-80101C94 0FC484 0150+00 1/1 0/0 0/0 .text            checkOxygenTimer__9daAlink_cFv */
void daAlink_c::checkOxygenTimer() {
    BOOL hide_timer;

    if (!i_checkNoResetFlg0(FLG0_UNK_100) ||
        (i_checkModeFlg(MODE_SWIMMING) && mWaterY > lit_7808 + current.pos.y))
    {
        hide_timer = false;
    } else {
        hide_timer = true;
    }

    if (dComIfGp_getOxygenShowFlag()) {
        if (checkZoraWearAbility()) {
            offOxygenTimer();
        } else if (hide_timer) {
            s32 max = dComIfGp_getMaxOxygen();
            dComIfGp_setOxygenCount(max);

            if (field_0x2fbe < 90) {
                field_0x2fbe++;
            } else {
                offOxygenTimer();
            }
        } else if (!checkEventRun()) {
            dComIfGp_setOxygenCount(-1);
        }
    } else if (!hide_timer && !checkZoraWearAbility()) {
        if (field_0x2fbe != 0) {
            field_0x2fbe--;
        } else {
            dComIfGp_onOxygenShowFlag();
            dComIfGp_setOxygen(dComIfGp_getMaxOxygen());
        }
    }
}

/* 80101C94-80101CB8 0FC5D4 0024+00 3/3 0/0 0/0 .text            offOxygenTimer__9daAlink_cFv */
void daAlink_c::offOxygenTimer() {
    dComIfGp_offOxygenShowFlag();
    s32 max = dComIfGp_getMaxOxygen();
    dComIfGp_setOxygen(max);

    field_0x2fbe = 90;
}

/* 80101CB8-80101CF4 0FC5F8 003C+00 2/2 0/0 0/0 .text checkPossibleWaterInMode__9daAlink_cCFv */
BOOL daAlink_c::checkPossibleWaterInMode() const {
    return i_checkModeFlg(MODE_VINE_CLIMB) || i_dComIfGp_checkPlayerStatus1(0, 0x2000000) ||
           mProcID == PROC_HOOKSHOT_FLY;
}

/* 80101CF4-80101D70 0FC634 007C+00 18/18 0/0 0/0 .text
 * setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf           */
void daAlink_c::setWaterInAnmRate(daPy_frameCtrl_c* i_frameCtrl, f32 i_rate) {
    if (i_checkNoResetFlg0(FLG0_UNDERWATER)) {
        if (checkZoraWearAbility()) {
            i_rate *= daAlinkHIO_magneBoots_c0::m.mZoraWaterAnmSpeed;
        } else {
            i_rate *= daAlinkHIO_magneBoots_c0::m.mWaterWalkAnmRate;
        }
    }

    i_frameCtrl->setRate(i_rate);
}

/* 80101D70-801023E4 0FC6B0 0674+00 2/2 0/0 0/0 .text            swimBgCheck__9daAlink_cFf */
#ifdef NONMATCHING
void daAlink_c::swimBgCheck(f32 param_0) {
    i_offNoResetFlg1(FLG1_UNK_20000000);

    if (!getZoraSwim() && mProcID != PROC_METAMORPHOSE) {
        return;
    }

    cXyz start_pos(current.pos);
    cXyz end_pos;

    s16 uvar1;
    if (getZoraSwim()) {
        uvar1 = field_0x3080;
    } else {
        uvar1 = field_0x300c;
        start_pos.y += daAlinkHIO_wlWallHang_c0::m.field_0x78;
    }

    end_pos.set(start_pos.x + (param_0 * cM_scos(uvar1)) * cM_ssin(shape_angle.y),
                start_pos.y - param_0 * cM_ssin(uvar1),
                start_pos.z + (param_0 * cM_scos(uvar1)) * cM_scos(shape_angle.y));

    if (!commonLineCheck(&start_pos, &end_pos)) {
        return;
    }

    cM3dGPla tri;
    dComIfG_Bgsp().GetTriPla(mLinkLinChk, &tri);

    if (cBgW_CheckBWall(tri.mNormal.y) &&
        (mProcID != PROC_METAMORPHOSE || dComIfG_Bgsp().GetWallCode(mLinkLinChk) != 7))
    {
        cXyz tmp2 = end_pos - mLinkLinChk.i_GetCross();
        f32 absxz = tmp2.absXZ();

        s16 svar8 = tmp2.atan2sX_Z();
        s16 svar9 = cM_atan2s(-tri.mNormal.x, -tri.mNormal.z);
        f32 cos = cM_scos(svar8 - svar9);

        f32 fvar14 = -absxz * cos * tri.mNormal.x;
        f32 fvar15 = -absxz * cos * tri.mNormal.z;

        if (mProcID == PROC_METAMORPHOSE ||
            (getZoraSwim() && cLib_distanceAngleS(cM_atan2s(tri.mNormal.y, tri.mNormal.absXZ()),
                                                  field_0x3080) < 0x1000))
        {
            i_onNoResetFlg1(FLG1_UNK_20000000);
        }

        start_pos.x -= fvar14;
        start_pos.z -= fvar15;
        end_pos.x -= fvar14;
        end_pos.z -= fvar15;

        if (commonLineCheck(&start_pos, &end_pos)) {
            dComIfG_Bgsp().GetTriPla(mLinkLinChk, &tri);

            if (cBgW_CheckBWall(tri.mNormal.y)) {
                tmp2 = end_pos - mLinkLinChk.i_GetCross();
                f32 absxz2 = tmp2.absXZ();

                s16 svar8_2 = tmp2.atan2sX_Z();
                s16 svar9_2 = cM_atan2s(-tri.mNormal.x, -tri.mNormal.z);
                f32 cos_2 = cM_scos(svar8_2 - svar9_2);

                fvar14 += -absxz2 * cos_2 * tri.mNormal.x;
                fvar15 += -absxz2 * cos_2 * tri.mNormal.z;
            }
        }

        current.pos.x -= fvar14;
        current.pos.z -= fvar15;
        field_0x3092 = cM_atan2s(-fvar14, -fvar15);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::swimBgCheck(f32 param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/swimBgCheck__9daAlink_cFf.s"
}
#pragma pop
#endif

/* 801023E4-801029C8 0FCD24 05E4+00 3/3 0/0 0/0 .text            setSpeedAndAngleSwim__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSpeedAndAngleSwim() {
    nofralloc
#include "asm/d/a/d_a_alink/setSpeedAndAngleSwim__9daAlink_cFv.s"
}
#pragma pop

/* 801029C8-80102B1C 0FD308 0154+00 3/3 0/0 0/0 .text            checkNextActionSwim__9daAlink_cFv
 */
int daAlink_c::checkNextActionSwim() {
    if (checkSwimButtonMove() && getZoraSwim()) {
        field_0x3000 = 30;
    }

    if ((checkZoraWearAbility() && !checkHeavyStateOn(1, 1)) || i_checkNoResetFlg0(FLG0_UNK_100)) {
        setTalkStatus();
    }

    if (orderTalk(1)) {
        return 1;
    }

    if (mAttList != NULL && mAttList->mType == 7 && i_checkNoResetFlg0(FLG0_UNK_100) &&
        fopAcM_GetName(field_0x27f4) == PROC_CANOE)
    {
        setDoStatus(0x17);

        if (doTrigger()) {
            return procCanoeRideInit();
        }
    } else if (checkSwimButtonMove() && !checkZoraSwimMove()) {
        if (checkSwimButtonAccept()) {
            return procSwimDiveInit();
        }

        field_0x3000 = 30;
        return procSwimMoveInit();
    }

    return checkNextActionFromButton();
}

/* 80102B1C-80103058 0FD45C 053C+00 3/3 0/0 0/0 .text            checkSwimAction__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkSwimAction(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkSwimAction__9daAlink_cFi.s"
}
#pragma pop

/* 80103058-801032C8 0FD998 0270+00 7/7 0/0 0/0 .text            checkSwimUpAction__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::checkSwimUpAction() {
    nofralloc
#include "asm/d/a/d_a_alink/checkSwimUpAction__9daAlink_cFv.s"
}
#pragma pop

/* 801032C8-80103398 0FDC08 00D0+00 8/8 0/0 0/0 .text            swimOutAfter__9daAlink_cFi */
void daAlink_c::swimOutAfter(int param_0) {
    i_onNoResetFlg0(FLG0_UNK_100);
    i_onEndResetFlg1(ERFLG1_UNK_100);
    mZ2Link.setInWater(false);

    if (i_checkNoResetFlg0(FLG0_UNDERWATER)) {
        i_offNoResetFlg0(FLG0_UNDERWATER);
    } else {
        field_0x2b98 = FLOAT_LABEL(lit_6108);
        field_0x2f98 = 4;
    }

    field_0x3750 = cXyz::Zero;
    field_0x3000 = 0;
    offOxygenTimer();

    if (checkSwimMoveHandAnime() || checkZoraSwimDamageAnime()) {
        resetUpperAnime(UPPER_2, lit_6109);
    }
}

/* 80103398-801033CC 0FDCD8 0034+00 1/1 0/0 0/0 .text            checkSwimFall__9daAlink_cFv */
bool daAlink_c::checkSwimFall() {
    if (!i_checkNoResetFlg0(FLG0_UNK_80) || current.pos.y > mWaterY + l_autoUpHeight) {
        return true;
    }

    return false;
}

/* 801033CC-80103698 0FDD0C 02CC+00 1/1 0/0 0/0 .text            checkSwimOutAction__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkSwimOutAction() {
    nofralloc
#include "asm/d/a/d_a_alink/checkSwimOutAction__9daAlink_cFv.s"
}
#pragma pop

/* 80103698-80103EE0 0FDFD8 0848+00 4/4 0/0 0/0 .text            setSwimMoveAnime__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSwimMoveAnime() {
    nofralloc
#include "asm/d/a/d_a_alink/setSwimMoveAnime__9daAlink_cFv.s"
}
#pragma pop

/* 80103EE0-80103F08 0FE820 0028+00 5/5 0/0 0/0 .text            checkSwimButtonAccept__9daAlink_cFv
 */
bool daAlink_c::checkSwimButtonAccept() {
    return i_dComIfGp_getDoStatus() == 0x41 || i_dComIfGp_getDoStatus() == 0x4C;
}

/* 80103F08-80103F24 0FE848 001C+00 4/4 0/0 0/0 .text checkUpSwimButtonAccept__9daAlink_cFv */
bool daAlink_c::checkUpSwimButtonAccept() {
    return i_dComIfGp_getDoStatus() == 0x97;
}

/* 80103F24-80103F94 0FE864 0070+00 2/2 0/0 0/0 .text            checkSwimButtonMove__9daAlink_cFv
 */
BOOL daAlink_c::checkSwimButtonMove() {
    return !i_checkNoResetFlg0(FLG0_UNK_100) &&
           (checkSwimButtonAccept() || checkUpSwimButtonAccept()) && doButton();
}

/* 80103F94-80103FE8 0FE8D4 0054+00 3/3 0/0 0/0 .text            checkZoraSwimMove__9daAlink_cFv */
BOOL daAlink_c::checkZoraSwimMove() {
    return checkSwimButtonMove() || field_0x3000 != 0;
}

/* 80103FE8-80104034 0FE928 004C+00 2/2 0/0 0/0 .text            checkSwimNeckUpDown__9daAlink_cCFv
 */
BOOL daAlink_c::checkSwimNeckUpDown() const {
    return !i_checkNoResetFlg0(FLG0_UNK_100) && checkUnderMove0BckNoArc(ANM_SWIM_WAIT);
}

/* 80104034-801040F8 0FE974 00C4+00 3/3 0/0 0/0 .text            setSwimUpDownOffset__9daAlink_cFv
 */
void daAlink_c::setSwimUpDownOffset() {
    field_0x300c += (s16)((cM_rndF(lit_16570) + lit_27477) * lit_27476);

    f32 var_f1;
    if (i_checkWolf()) {
        if (checkHeavyStateOn(1, 1)) {
            var_f1 = daAlinkHIO_wlSwim_c0::m.field_0x98;
        } else {
            var_f1 = daAlinkHIO_wlSwim_c0::m.field_0x6C;
        }
    } else {
        var_f1 = daAlinkHIO_swim_c0::m.mWaitVibrationIntensity;
    }

    field_0x2b98 = var_f1 * cM_ssin(field_0x300c);
}

/* 801040F8-801041E8 0FEA38 00F0+00 2/2 0/0 0/0 .text            procSwimUpInit__9daAlink_cFv */
int daAlink_c::procSwimUpInit() {
    commonProcInit(PROC_SWIM_UP);

    if (field_0x3000 != 0 && !checkZoraWearAbility()) {
        mNormalSpeed = FLOAT_LABEL(lit_6108);
    }

    speed.y = FLOAT_LABEL(lit_6108);
    current.pos.y = mWaterY;
    field_0x3080 = 0;
    i_onNoResetFlg0(FLG0_UNK_100);
    mZ2Link.setInWater(false);
    setSingleAnimeParam(ANM_SWIM_RESURFACE, &daAlinkHIO_swim_c0::m.mResurfaceAnm);
    dComIfGp_setPlayerStatus0(0, 0x100000);
    field_0x3008 = 0;
    field_0x3010 = 0;
    field_0x3480 = daAlinkHIO_swim_c0::m.mInitHeight;
    field_0x3000 = 0;

    seStartMapInfo(Z2SE_AL_OUTOF_WATER);
    swimDeleteItem();
    field_0x2fcd = 15;
    return 1;
}

/* 801041E8-801042F8 0FEB28 0110+00 1/0 0/0 0/0 .text            procSwimUp__9daAlink_cFv */
int daAlink_c::procSwimUp() {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    setNormalSpeedF(FLOAT_LABEL(lit_6108), daAlinkHIO_swim_c0::m.mDeceleration);

    if (checkSetItemTrigger(HVY_BOOTS)) {
        setHeavyBoots(1);
    }

    if (checkBootsOrArmorHeavy()) {
        if (checkInputOnR()) {
            procSwimMoveInit();
        } else {
            procSwimWaitInit(0);
        }
    } else if (checkAnmEnd(frame_ctrl)) {
        procSwimWaitInit(0);
    } else if (frame_ctrl->getFrame() > daAlinkHIO_swim_c0::m.mResurfaceAnm.mCheckFrame &&
               checkInputOnR())
    {
        procSwimMoveInit();
    } else {
        current.pos.y = mWaterY;
    }

    return 1;
}

/* 801042F8-801044B4 0FEC38 01BC+00 15/15 0/0 0/0 .text            procSwimWaitInit__9daAlink_cFi */
int daAlink_c::procSwimWaitInit(int param_0) {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;
    u32 mode_40000 = i_checkModeFlg(0x40000);

    if (i_checkNoResetFlg0(FLG0_UNDERWATER)) {
        i_offNoResetFlg0(FLG0_UNDERWATER);
        current.pos.y += daAlinkHIO_swim_c0::m.mInitHeight;
    }

    commonProcInit(PROC_SWIM_WAIT);

    if (param_0) {
        seStartMapInfo(Z2SE_AL_INTO_WATER);
        field_0x3010 = 0;
        field_0x3480 = daAlinkHIO_swim_c0::m.mInitHeight;
    } else if (!mode_40000) {
        field_0x3010 = 0;
        field_0x3480 = daAlinkHIO_swim_c0::m.mInitHeight;
    }

    swimDeleteItem();

    if (!checkUnderMove0BckNoArc(ANM_SWIM_WAIT)) {
        setSingleAnimeBaseSpeed(ANM_SWIM_WAIT, daAlinkHIO_swim_c0::m.mWaitAnmSpeed,
                                daAlinkHIO_swim_c0::m.mWaitInterpolation);
    } else if (frame_ctrl->getRate() < lit_9054) {
        setSingleAnimeBaseSpeed(ANM_SWIM_WAIT, daAlinkHIO_swim_c0::m.mWaitAnmSpeed, lit_6041);
    }

    field_0x30d0 = 0;
    field_0x3198 = 0x14;
    field_0x32cc = mEquipItem;

    if (field_0x3080 != 0) {
        setOldRootQuaternion(field_0x3080, 0, 0);
        field_0x3080 = 0;
    }

    dComIfGp_setPlayerStatus0(0, 0x100000);

    if (i_checkNoResetFlg0(FLG0_UNK_100)) {
        current.pos.y = mWaterY;
        speed.y = FLOAT_LABEL(lit_6108);
    }

    field_0x300c = 0;
    field_0x3008 = 0;
    field_0x594 = getSwimFrontMaxSpeed();
    return 1;
}

/* 801044B4-80104670 0FEDF4 01BC+00 1/0 0/0 0/0 .text            procSwimWait__9daAlink_cFv */
int daAlink_c::procSwimWait() {
    if (mDemo.getDemoMode() == 6 || mDemo.getDemoMode() == 8) {
        setShapeAngleToTalkActor();
        current.angle.y = shape_angle.y;
    }

    mMaxFallSpeed = getSwimMaxFallSpeed();
    field_0x594 = getSwimFrontMaxSpeed();

    setSpeedAndAngleSwim();

    if (mEquipItem != field_0x32cc) {
        field_0x32cc = mEquipItem;
        setSingleAnimeBaseSpeed(ANM_SWIM_WAIT, daAlinkHIO_swim_c0::m.mWaitAnmSpeed,
                                daAlinkHIO_swim_c0::m.mWaitInterpolation);
    }

    setSwimUpDownOffset();

    if (i_checkEquipHeavyBoots() && mEquipItem != NO_ITEM) {
        setDoStatus(0x4);
    }

    if (checkSwimUpAction()) {
        return 1;
    }

    if (checkNextActionSwim()) {
        return 1;
    }

    if (checkFrontWallTypeAction()) {
        swimOutAfter(1);
        return 1;
    }

    if (checkSwimButtonAccept() && doTrigger()) {
        procSwimDiveInit();
    } else if ((checkInputOnR() && mNormalSpeed >= daAlinkHIO_swim_c0::m.mForwardMinSpeed) ||
               (checkUpSwimButtonAccept() && doButton()))
    {
        if (checkUpSwimButtonAccept() && doButton()) {
            field_0x3000 = 30;
        }

        procSwimMoveInit();
    }

    return 1;
}

/* 80104670-801047B8 0FEFB0 0148+00 9/9 0/0 0/0 .text            procSwimMoveInit__9daAlink_cFv */
int daAlink_c::procSwimMoveInit() {
    u32 mode_40000 = i_checkModeFlg(0x40000);
    bool proc_dive_jump = mProcID == PROC_DIVE_JUMP;
    bool proc_swim_dive = mProcID == PROC_SWIM_DIVE;

    commonProcInit(PROC_SWIM_MOVE);

    if (i_checkNoResetFlg0(FLG0_UNDERWATER)) {
        i_offNoResetFlg0(FLG0_UNDERWATER);
    }

    if (!mode_40000) {
        field_0x3480 = daAlinkHIO_swim_c0::m.mInitHeight;
        field_0x3010 = 0;
    }

    if (proc_swim_dive || proc_dive_jump) {
        field_0x3198 = 199;

        if (proc_dive_jump) {
            field_0x3080 = 0x2800;
            field_0x300e = field_0x3080;
            field_0x3010 = 1;
            setOldRootQuaternion(-field_0x3080, 0, 0);
        }
    } else {
        field_0x3198 = -1;
    }

    field_0x2f98 = 5;
    setSwimMoveAnime();

    if (i_checkNoResetFlg0(FLG0_UNK_100)) {
        current.pos.y = mWaterY;
        speed.y = FLOAT_LABEL(lit_6108);
    }

    swimDeleteItem();
    dComIfGp_setPlayerStatus0(0, 0x100000);
    field_0x3008 = 0;
    return 1;
}

/* 801047B8-80104958 0FF0F8 01A0+00 1/0 0/0 0/0 .text            procSwimMove__9daAlink_cFv */
int daAlink_c::procSwimMove() {
    setSpeedAndAngleSwim();

    if (checkUpSwimButtonAccept() && doButton()) {
        field_0x3000 = 30;
    }

    setSwimMoveAnime();

    if (checkSwimUpAction()) {
        return 1;
    }

    if (checkNextActionSwim()) {
        return 1;
    }

    if (checkInputOnR() && checkFrontWallTypeAction()) {
        swimOutAfter(1);
        return 1;
    }

    if (checkSwimButtonAccept() && doTrigger() && !getZoraSwim()) {
        procSwimDiveInit();
    } else if (i_dComIfGp_getDoStatus() == 9 && doTrigger()) {
        i_onNoResetFlg1(FLG1_DASH_MODE);
        field_0x30d0 = daAlinkHIO_swim_c0::m.field_0x5c;
        setSingleAnimeParam(ANM_SWIM_DASH, &daAlinkHIO_swim_c0::m.mDashAnm);
        field_0x3198 = 0xC6;
    } else if (!checkZoraSwimMove() && (!checkUpSwimButtonAccept() || !doButton()) &&
               mNormalSpeed < daAlinkHIO_swim_c0::m.mForwardMinSpeed)
    {
        procSwimWaitInit(0);
    }

    return 1;
}

/* 80104958-80104AA0 0FF298 0148+00 4/4 0/0 0/0 .text            procSwimDiveInit__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procSwimDiveInit() {
    commonProcInit(PROC_SWIM_DIVE);
    setSpecialGravity(0.0f, mMaxFallSpeed, 0);
    speed.y = 0.0f;

    if (i_checkNoResetFlg0(FLG0_UNK_100)) {
        field_0x300c = 1;
        setSingleAnimeParam(ANM_SWIM_DIVE, &daAlinkHIO_swim_c0::m.mDiveAnm);
        voiceStart(Z2SE_AL_V_DIVING);
    } else {
        field_0x300c = 0;
        setSingleAnimeParam(ANM_SWIM_DIVE, &daAlinkHIO_swim_c0::m.mUnderwaterDiveAnm);
    }

    field_0x2f99 = 0x10;
    field_0x3588 = l_waitBaseAnime;
    field_0x3480 = daAlinkHIO_swim_c0::m.mInitHeight;
    field_0x3010 = 0;

    dComIfGp_setPlayerStatus0(0, 0x100000);
    field_0x3000 = 30;
    field_0x3478 = 0.0f;
    field_0x347c = 1.0f / daAlinkHIO_swim_c0::m.mUnderwaterDiveAnm.mEndFrame;
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procSwimDiveInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procSwimDiveInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80104AA0-80104C50 0FF3E0 01B0+00 1/0 0/0 0/0 .text            procSwimDive__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procSwimDive() {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    if (field_0x300c == 0) {
        setDoStatus(0x4C);
    } else if (i_checkNoResetFlg0(FLG0_UNK_100) && frame_ctrl->getFrame() > 20.0f) {
        i_offNoResetFlg0(FLG0_UNK_100);
        mZ2Link.setInWater(true);
    }

    field_0x2f99 = 7;
    field_0x3000 = 30;
    setNormalSpeedF(0.0f, daAlinkHIO_swim_c0::m.mDeceleration);

    field_0x3478 = field_0x347c * frame_ctrl->getFrame();
    if (field_0x3478 > 1.0f) {
        field_0x3478 = 1.0f;
    }

    if (frame_ctrl->checkPass(15.0f) && field_0x300c != 0) {
        cXyz pos(current.pos.x, mWaterY, current.pos.z);
        fopKyM_createWpillar(&pos, 0.7f, 0);
    }

    if (mLinkAcch.GetGroundH() > current.pos.y - field_0x598 * 0.5f) {
        current.pos.y = field_0x598 * 0.5f + mLinkAcch.GetGroundH();
    }

    if (checkAnmEnd(frame_ctrl)) {
        speed.y = daAlinkHIO_swim_c0::m.mMaxSinkSpeed;

        if (field_0x300c != 0) {
            field_0x3080 = 0x2800;
            field_0x300e = field_0x3080;
            field_0x3010 = 1;
        }

        setOldRootQuaternion(-field_0x3080, 0, 0);
        return procSwimMoveInit();
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procSwimDive() {
    nofralloc
#include "asm/d/a/d_a_alink/procSwimDive__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80104C50-80104D7C 0FF590 012C+00 1/1 0/0 0/0 .text procSwimHookshotSubjectInit__9daAlink_cFv */
int daAlink_c::procSwimHookshotSubjectInit() {
    if (!commonProcInitNotSameProc(PROC_SWIM_HOOKSHOT_SUBJECT)) {
        return 0;
    }

    initHookshotUpperAnimeSpeed(1);

    if (!checkUnderMove0BckNoArc(ANM_SWIM_WAIT)) {
        setSingleAnimeBaseSpeed(ANM_SWIM_WAIT, daAlinkHIO_swim_c0::m.mWaitAnmSpeed,
                                daAlinkHIO_hookshot_c0::m.mStartInterpolation);
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    current.angle.y = shape_angle.y;

    if (field_0x3080 != 0) {
        setOldRootQuaternion(field_0x3080, 0, 0);
        field_0x3080 = 0;
    }

    if (i_checkNoResetFlg0(FLG0_UNK_100)) {
        current.pos.y = mWaterY;
        speed.y = FLOAT_LABEL(lit_6108);
    }

    field_0x300c = 0;
    field_0x3008 = 0;
    field_0x594 = getSwimFrontMaxSpeed();

    field_0x3480 = daAlinkHIO_swim_c0::m.mInitHeight;
    field_0x3010 = 0;
    field_0x30d0 = 0;

    setHookshotReadyMaterial();
    dComIfGp_setPlayerStatus0(0, 0x104000);
    return 1;
}

/* 80104D7C-80104EB8 0FF6BC 013C+00 1/0 0/0 0/0 .text procSwimHookshotSubject__9daAlink_cFv */
int daAlink_c::procSwimHookshotSubject() {
    mMaxFallSpeed = getSwimMaxFallSpeed();
    field_0x594 = getSwimFrontMaxSpeed();

    if (checkHookshotWait()) {
        setDoStatus(0x12);
    }

    setShapeAngleToAtnActor(0);
    mSight.offDrawFlg();

    if (checkSwimUpAction()) {
        return 1;
    }

    if (checkNextActionFromButton()) {
        return 1;
    }

    if (!checkHookshotAnime()) {
        return procSwimWaitInit(0);
    }

    if (!checkNextActionHookshot()) {
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

/* 80104EB8-80104FC4 0FF7F8 010C+00 1/1 0/0 0/0 .text procSwimHookshotMoveInit__9daAlink_cFv */
int daAlink_c::procSwimHookshotMoveInit() {
    if (!commonProcInitNotSameProc(PROC_SWIM_HOOKSHOT_MOVE)) {
        return 0;
    }

    if (checkZeroSpeedF()) {
        onModeFlg(1);
    }

    initHookshotUpperAnimeSpeed(0);
    field_0x3198 = -1;
    field_0x2f98 = 5;

    if (field_0x3018 == 0) {
        setSwimMoveAnime();
    }

    if (i_checkNoResetFlg0(FLG0_UNK_100)) {
        current.pos.y = mWaterY;
        speed.y = FLOAT_LABEL(lit_6108);
    }

    field_0x3008 = 0;

    if (field_0x3080 != 0) {
        setOldRootQuaternion(field_0x3080, 0, 0);
        field_0x3080 = 0;
    }

    field_0x3480 = daAlinkHIO_swim_c0::m.mInitHeight;
    field_0x3010 = 0;
    field_0x30d0 = 0;

    dComIfGp_setPlayerStatus0(0, 0x104000);
    return 1;
}

/* 80104FC4-8010519C 0FF904 01D8+00 1/0 0/0 0/0 .text            procSwimHookshotMove__9daAlink_cFv
 */
int daAlink_c::procSwimHookshotMove() {
    cancelHookshotMove();

    if (checkHookshotWait() && !checkZoraWearAbility()) {
        setDoStatus(0x12);
    }

    if (field_0x3018 == 0) {
        setSpeedAndAngleSwim();
        setSwimMoveAnime();
    }

    if (checkSwimUpAction()) {
        return 1;
    }

    if (checkSwimButtonAccept() && doTrigger()) {
        return procSwimDiveInit();
    }

    if (checkUpSwimButtonAccept() && doTrigger()) {
        field_0x3000 = 30;
        return procSwimMoveInit();
    }

    if (checkHookshotWait() || checkBossOctaIealRoom()) {
        setShapeAngleToAtnActor(0);
    }

    if (checkNextActionFromButton()) {
        return 1;
    }

    if (!checkHookshotAnime()) {
        return procSwimWaitInit(0);
    }

    if (!checkNextActionHookshot()) {
        if (checkZeroSpeedF()) {
            onModeFlg(1);
        } else {
            offModeFlg(1);
        }

        if (checkHookshotWait() || (mTargetedActor != NULL && checkBossOctaIealRoom())) {
            setBodyAngleXReadyAnime(0);
        }
    }

    return 1;
}

/* 8010519C-80105728 0FFADC 058C+00 1/1 0/0 0/0 .text
 * procSwimDamageInit__9daAlink_cFP12dCcD_GObjInf               */
// instruction block order issue
#ifdef NONMATCHING
int daAlink_c::procSwimDamageInit(dCcD_GObjInf* param_0) {
    seStartOnlyReverb(Z2SE_AL_DAMAGE_NORMAL);
    dComIfGp_getVibration().StartShock(2, 31, cXyz(0.0f, 1.0f, 0.0f));

    BOOL bvar4 =
        i_checkNoResetFlg0(FLG0_UNK_100) || ((param_0 != NULL && param_0->GetTgHitAc() != NULL) &&
                                             fopAcM_GetName(param_0->GetTgHitAc()) == PROC_E_SG);

    if (!getZoraSwim() && bvar4 && mProcID != PROC_SWIM_WAIT) {
        return 1;
    }

    cXyz* temp_r30;
    cXyz sp30;

    if (param_0 != NULL) {
        temp_r30 = (cXyz*)getDamageVec(param_0);
    } else {
        sp30.set(-cM_ssin(current.angle.y), 0.0f, -cM_scos(current.angle.y));
        temp_r30 = &sp30;
    }

    f32 scale =
        temp_r30->abs() * daAlinkHIO_damSwim_c0::m.field_0x80 + daAlinkHIO_damSwim_c0::m.field_0x7C;
    if (scale > daAlinkHIO_damSwim_c0::m.field_0x88) {
        scale = daAlinkHIO_damSwim_c0::m.field_0x88;
    }

    field_0x3750 = temp_r30->normZP();
    field_0x3750 *= scale;

    if (getZoraSwim()) {
        setUpperAnimeParam(0xBF, UPPER_2, &daAlinkHIO_damSwim_c0::m.field_0x50);
        setFacePriBck(0xEA);
        setFacePriTexture(FTANM_UNK_27);
        return 1;
    }

    commonProcInit(PROC_SWIM_DAMAGE);
    cXyz sp24(temp_r30->z * -cM_ssin(shape_angle.y) + temp_r30->x * cM_scos(shape_angle.y),
              temp_r30->y,
              temp_r30->z * cM_scos(shape_angle.y) + temp_r30->x * cM_ssin(shape_angle.y));

    field_0x3008 =
        cLib_minMaxLimit(cM_atan2s(sp24.z, sp24.y), (s16)-daAlinkHIO_damSwim_c0::m.field_0x78,
                         (s16)daAlinkHIO_damSwim_c0::m.field_0x78);

    field_0x300a = cLib_minMaxLimit(
        cM_atan2s(sp24.x, -JMAFastSqrt(sp24.y * sp24.y + sp24.z * sp24.z)),
        (s16)-daAlinkHIO_damSwim_c0::m.field_0x7A, (s16)daAlinkHIO_damSwim_c0::m.field_0x7A);

    int dir = getDirectionFromAngle(cM_atan2s(-sp24.x, -sp24.z));
    if (bvar4) {
        setSingleAnimeParam(ANM_SWIM_DMG_FREEZE, &daAlinkHIO_damSwim_c0::m.field_0x64);
        field_0x3478 = daAlinkHIO_damSwim_c0::m.field_0x64.mCheckFrame;
        field_0x3008 = 0;
        field_0x300a = 0;
    } else if (dir == DIR_FORWARD) {
        setSingleAnimeParam(ANM_SWIM_DMG_FRONT, &daAlinkHIO_damSwim_c0::m.field_0x0);
        field_0x3478 = daAlinkHIO_damSwim_c0::m.field_0x0.mCheckFrame;
    } else if (dir == DIR_BACKWARD) {
        setSingleAnimeParam(ANM_SWIM_DMG_BACK, &daAlinkHIO_damSwim_c0::m.field_0x14);
        field_0x3478 = daAlinkHIO_damSwim_c0::m.field_0x14.mCheckFrame;
    } else if (dir == DIR_LEFT) {
        setSingleAnimeParam(ANM_SWIM_DMG_LEFT, &daAlinkHIO_damSwim_c0::m.field_0x28);
        field_0x3478 = daAlinkHIO_damSwim_c0::m.field_0x28.mCheckFrame;
    } else {
        setSingleAnimeParam(ANM_SWIM_DMG_RIGHT, &daAlinkHIO_damSwim_c0::m.field_0x3C);
        field_0x3478 = daAlinkHIO_damSwim_c0::m.field_0x3C.mCheckFrame;
    }

    mNormalSpeed = 0.0f;
    field_0x347c = 3.141593f / (mUnderFrameCtrl->getEnd() - mUnderFrameCtrl->getStart());
    field_0x3480 = daAlinkHIO_swim_c0::m.mInitHeight;
    current.angle.y = shape_angle.y;

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procSwimDamageInit(dCcD_GObjInf* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procSwimDamageInit__9daAlink_cFP12dCcD_GObjInf.s"
}
#pragma pop
#endif

/* 80105728-801058A0 100068 0178+00 1/0 0/0 0/0 .text            procSwimDamage__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procSwimDamage() {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    f32 fvar8 = cM_fsin(field_0x347c * (frame_ctrl->getFrame() - frame_ctrl->getStart()));
    mBodyAngle.x = field_0x3008 * fvar8;
    mBodyAngle.z = -field_0x300a * fvar8;
    mBodyAngle.y = 0;

    if (checkSwimUpAction()) {
        return 1;
    }

    if (checkAnmEnd(frame_ctrl)) {
        if (!checkNextActionSwim()) {
            return procSwimWaitInit(0);
        }
    } else if (frame_ctrl->getFrame() > field_0x3478) {
        onModeFlg(4);

        if (!checkNextActionSwim() && checkInputOnR()) {
            return procSwimMoveInit();
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procSwimDamage() {
    nofralloc
#include "asm/d/a/d_a_alink/procSwimDamage__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 801058A0-80105A00 1001E0 0160+00 2/2 0/0 0/0 .text            procOctaIealSpitInit__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procOctaIealSpitInit() {
    u32 temp_r30 = i_checkModeFlg(MODE_SWIMMING);
    commonProcInit(PROC_OCTAIEAL_SPIT);

    if (i_checkNoResetFlg0(FLG0_UNDERWATER)) {
        i_offNoResetFlg0(FLG0_UNDERWATER);
    }

    setSingleAnimeBase(ANM_MORPHEEL_SPIT_OUT);
    field_0x3750 = cXyz::Zero;
    field_0x3080 = 0;
    field_0x3000 = 0;
    speed.y = field_0x340c;
    mNormalSpeed = field_0x3408;
    field_0x3478 = field_0x3408 * 0.1f;

    setDamagePointNormal(field_0x318c);

    if (field_0x3478 < 1.0f) {
        field_0x3478 = 1.0f;
    }

    if (temp_r30) {
        field_0x2f99 = 15;
        field_0x33b0 = -45.0f;
    } else {
        field_0x2f99 = 16;
        current.pos.y += 145.0f;
    }

    field_0x3588 = l_waitBaseAnime;
    i_offNoResetFlg0(FLG0_UNK_100);
    current.angle.y = field_0x2ffe;

    if (mNormalSpeed > 0.0f) {
        shape_angle.y = current.angle.y + 0x8000;
    } else {
        shape_angle.y = current.angle.y;
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procOctaIealSpitInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procOctaIealSpitInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 80105A00-80105A84 100340 0084+00 1/0 0/0 0/0 .text            procOctaIealSpit__9daAlink_cFv */
int daAlink_c::procOctaIealSpit() {
    if (mDemo.getDemoMode() == 0x2E) {
        i_cancelOriginalDemo();
    }

    cLib_addCalc(&mNormalSpeed, FLOAT_LABEL(lit_6108), lit_5943, field_0x3478, lit_9054);
    field_0x2f99 = 7;

    if (mUnderFrameCtrl[0].checkAnmEnd()) {
        procSwimWaitInit(0);
    }

    return 1;
}