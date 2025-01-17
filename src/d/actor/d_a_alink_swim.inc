/**
 * d_a_alink_link.inc
 * Player Swim action handling
 */

#include "d/actor/d_a_alink.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_kankyo_mng.h"

/* 80101890-801018E4 0FC1D0 0054+00 6/6 0/0 0/0 .text            checkZoraWearMaskDraw__9daAlink_cFv
 */
BOOL daAlink_c::checkZoraWearMaskDraw() {
    return checkZoraWearAbility() && !checkNoResetFlg0(FLG0_SWIM_UP);
}

/* 801018E4-80101934 0FC224 0050+00 1/1 0/0 0/0 .text checkAcceptUseItemInWater__9daAlink_cCFUs */
BOOL daAlink_c::checkAcceptUseItemInWater(u16 i_itemNo) const {
    return i_itemNo == fpcNm_ITEM_HVY_BOOTS || i_itemNo == fpcNm_ITEM_WATER_BOMB || checkHookshotItem(i_itemNo);
}

/* 80101934-801019B8 0FC274 0084+00 4/4 0/0 0/0 .text            swimDeleteItem__9daAlink_cFv */
void daAlink_c::swimDeleteItem() {
    if (!checkHookshotItem(mEquipItem) && (mEquipItem != 0x103 || !checkBootsOrArmorHeavy())) {
        deleteEquipItem(1, 1);
    }

    if (checkNoResetFlg2(FLG2_UNK_1)) {
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
        return 14.0f;
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

    if (!checkNoResetFlg0(FLG0_SWIM_UP) ||
        (checkModeFlg(MODE_SWIMMING) && mWaterY > 5.0f + current.pos.y))
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
    return checkModeFlg(MODE_VINE_CLIMB) || dComIfGp_checkPlayerStatus1(0, 0x2000000) ||
           mProcID == PROC_HOOKSHOT_FLY;
}

/* 80101CF4-80101D70 0FC634 007C+00 18/18 0/0 0/0 .text
 * setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf           */
void daAlink_c::setWaterInAnmRate(daPy_frameCtrl_c* i_frameCtrl, f32 i_rate) {
    if (checkNoResetFlg0(FLG0_UNDERWATER)) {
        if (checkZoraWearAbility()) {
            i_rate *= daAlinkHIO_magneBoots_c0::m.mZoraWaterAnmSpeed;
        } else {
            i_rate *= daAlinkHIO_magneBoots_c0::m.mWaterWalkAnmRate;
        }
    }

    i_frameCtrl->setRate(i_rate);
}

/* 80101D70-801023E4 0FC6B0 0674+00 2/2 0/0 0/0 .text            swimBgCheck__9daAlink_cFf */
void daAlink_c::swimBgCheck(f32 param_0) {
    offNoResetFlg1(FLG1_UNK_20000000);

    if (!getZoraSwim() && mProcID != PROC_METAMORPHOSE) {
        return;
    }

    cXyz start_pos(current.pos);
    cXyz end_pos;

    s16 var_r29;
    if (getZoraSwim()) {
        var_r29 = field_0x3080;
    } else {
        var_r29 = mProcVar2.field_0x300c;
        start_pos.y += daAlinkHIO_wlWallHang_c0::m.field_0x78;
    }

    f32 var_f28 = param_0 * cM_scos(var_r29);

    end_pos.set(start_pos.x + (var_f28 * cM_ssin(shape_angle.y)),
                start_pos.y - param_0 * cM_ssin(var_r29),
                start_pos.z + (var_f28 * cM_scos(shape_angle.y)));

    if (!commonLineCheck(&start_pos, &end_pos)) {
        return;
    }

    cM3dGPla tri;
    dComIfG_Bgsp().GetTriPla(mLinkLinChk, &tri);

    if (cBgW_CheckBWall(tri.mNormal.y) &&
        (mProcID != PROC_METAMORPHOSE || dComIfG_Bgsp().GetWallCode(mLinkLinChk) != 7))
    {
        cXyz sp14 = end_pos - mLinkLinChk.i_GetCross();
        f32 temp_f1 = sp14.absXZ();

        s16 var_r28 = sp14.atan2sX_Z();
        f32 var_f26 = cM_scos(var_r28 - cM_atan2s(-tri.mNormal.x, -tri.mNormal.z));
        f32 var_f29 = -temp_f1 * var_f26;

        f32 var_f31 = var_f29 * tri.mNormal.x;
        f32 var_f30 = var_f29 * tri.mNormal.z;

        if (mProcID == PROC_METAMORPHOSE ||
            (getZoraSwim() && cLib_distanceAngleS(cM_atan2s(tri.mNormal.y, tri.mNormal.absXZ()),
                                                  field_0x3080) < 0x1000))
        {
            onNoResetFlg1(FLG1_UNK_20000000);
        }

        start_pos.x -= var_f31;
        start_pos.z -= var_f30;
        end_pos.x -= var_f31;
        end_pos.z -= var_f30;

        if (commonLineCheck(&start_pos, &end_pos)) {
            dComIfG_Bgsp().GetTriPla(mLinkLinChk, &tri);

            if (cBgW_CheckBWall(tri.mNormal.y)) {
                sp14 = end_pos - mLinkLinChk.i_GetCross();
                temp_f1 = sp14.absXZ();

                var_r28 = sp14.atan2sX_Z();
                var_f26 = cM_scos(var_r28 - cM_atan2s(-tri.mNormal.x, -tri.mNormal.z));
                var_f29 = -temp_f1 * var_f26;

                var_f31 += var_f29 * tri.mNormal.x;
                var_f30 += var_f29 * tri.mNormal.z;
            }
        }

        current.pos.x -= var_f31;
        current.pos.z -= var_f30;
        field_0x3092 = cM_atan2s(-var_f31, -var_f30);
    }
}

/* 801023E4-801029C8 0FCD24 05E4+00 3/3 0/0 0/0 .text            setSpeedAndAngleSwim__9daAlink_cFv
 */
void daAlink_c::setSpeedAndAngleSwim() {
    if (!checkBootsOrArmorHeavy() && dComIfGp_getDoStatus() == 0 && (!checkHookshotAnime() || (checkHookshotItem(mEquipItem) && (mItemMode == 0 || mItemMode == 1)))) {
        if (checkZoraWearAbility()) {
            if (checkNoResetFlg0(FLG0_SWIM_UP)) {
                if (field_0x2fcd == 0) {
                    setDoStatus(0x41);
                }
            } else {
                setDoStatus(0x4C);
            }
        } else if (!checkNoResetFlg0(FLG0_SWIM_UP)) {
            setDoStatus(0x97);
        } else if (mProcID == PROC_SWIM_MOVE && checkUnderMove0BckNoArc(ANM_SWIM_A) && field_0x30d0 == 0 && field_0x30d2 == 0) {
            setDoStatus(9);
        }
    }

    f32 var_f31;
    f32 var_f30;
    if (mProcID == PROC_SWIM_HOOKSHOT_MOVE && !checkHookshotWait()) {
        var_f30 = 0.0f;
    } else if (checkZoraSwimMove()) {
        s16 temp_r29 = shape_angle.y;

        if (mTargetedActor != NULL && current.pos.abs2XZ(mTargetedActor->eyePos) > 22500.0f) {
            setShapeAngleToAtnActor(0);
        } else if (checkInputOnR()) {
            s16 var_r28;
            if (checkEventRun()) {
                var_r28 = field_0x2fe2;
            } else {
                var_r28 = shape_angle.y + (16384.0f * cM_ssin(mStickAngle));
            }

            cLib_addCalcAngleS(&shape_angle.y, var_r28, daAlinkHIO_swim_c0::m.mUnderwaterTurnRate, daAlinkHIO_swim_c0::m.mUnderwaterTurnMax, daAlinkHIO_swim_c0::m.mUnderwaterTurnMin);
        }

        current.angle.y = shape_angle.y;
        var_f30 = 3.0f * cM_scos((shape_angle.y - temp_r29));
    } else if (!checkAttentionLock()) {
        if (checkInputOnR()) {
            s16 temp_r29_2 = shape_angle.y;
            if (checkNoResetFlg0(FLG0_SWIM_UP)) {
                cLib_addCalcAngleS(&shape_angle.y, field_0x2fe2, daAlinkHIO_swim_c0::m.mTurnRate, daAlinkHIO_swim_c0::m.mTurnMax, daAlinkHIO_swim_c0::m.mTurnMin);
            } else {
                cLib_addCalcAngleS(&shape_angle.y, field_0x2fe2, daAlinkHIO_swim_c0::m.mUnderwaterTurnRate, daAlinkHIO_swim_c0::m.mUnderwaterTurnMax, daAlinkHIO_swim_c0::m.mUnderwaterTurnMin);
            }

            f32 var_f29;
            if (checkUnderMove0BckNoArc(ANM_SWIM_DASH)) {
                var_f29 = 1.0f;
            } else {
                var_f29 = field_0x33a8;
            }

            var_f30 = 3.0f * var_f29 * cM_scos((shape_angle.y - temp_r29_2));
            cLib_addCalcAngleS(&current.angle.y, shape_angle.y, 2, 0x2000, 0x1000);
        } else {
            var_f30 = 0.0f;
        }

        if (checkZeroSpeedF()) {
            current.angle.y = shape_angle.y;
        }
    } else {
        setShapeAngleToAtnActor(0);

        if (checkInputOnR()) {
            if (getDirectionFromCurrentAngle() == DIR_BACKWARD) {
                current.angle.y += 0x8000;
                mNormalSpeed *= -1.0f;
            }

            if (checkZeroSpeedF()) {
                current.angle.y = field_0x2fe2;
            }

            s16 temp_r29_3 = current.angle.y;
            if (checkNoResetFlg0(FLG0_SWIM_UP)) {
                cLib_addCalcAngleS(&current.angle.y, field_0x2fe2, daAlinkHIO_swim_c0::m.mTurnRate, daAlinkHIO_swim_c0::m.mTurnMax, daAlinkHIO_swim_c0::m.mTurnMin);
            } else {
                cLib_addCalcAngleS(&current.angle.y, field_0x2fe2, daAlinkHIO_swim_c0::m.mUnderwaterTurnRate, daAlinkHIO_swim_c0::m.mUnderwaterTurnMax, daAlinkHIO_swim_c0::m.mUnderwaterTurnMin);
            }

            var_f30 = daAlinkHIO_swim_c0::m.mAcceleration * field_0x33a8 * cM_scos((s16)(current.angle.y - temp_r29_3));
        } else {
            var_f30 = 0.0f;
        }
    }

    f32 var_f28;
    if (daAlinkHIO_swim_c0::m.mMaxForwardSpeed < mNormalSpeed && !checkZoraWearAbility()) {
        var_f28 = daAlinkHIO_swim_c0::m.mDDeceleration;
    } else {
        var_f28 = daAlinkHIO_swim_c0::m.mDeceleration;
    }

    setNormalSpeedF(var_f30, var_f28);

    if (dComIfGp_checkPlayerStatus0(0, 0x10)) {
        mNormalSpeed = 0.0f;
    }

    if (checkSwimNeckUpDown()) {
        s16 sp14;
        if (speed.y >= 0.0f) {
            var_f31 = -speed.y / daAlinkHIO_swim_c0::m.mMaxFloatUpSpeed;
            if (var_f31 < -1.0f) {
                var_f31 = -1.0f;
            }
            sp14 = 6144.0f * var_f31;
        } else {
            var_f31 = speed.y / maxFallSpeed;
            if (var_f31 > 1.0f) {
                var_f31 = 1.0f;
            }
            sp14 = 8192.0f * var_f31;
        }

        cLib_addCalcAngleS(&field_0x30a0, sp14, 5, 0x1000, 0x400);
    } else {
        field_0x30a0 = 0;
    }
}

/* 801029C8-80102B1C 0FD308 0154+00 3/3 0/0 0/0 .text            checkNextActionSwim__9daAlink_cFv
 */
int daAlink_c::checkNextActionSwim() {
    if (checkSwimButtonMove() && getZoraSwim()) {
        field_0x3000 = 30;
    }

    if ((checkZoraWearAbility() && !checkHeavyStateOn(1, 1)) || checkNoResetFlg0(FLG0_SWIM_UP)) {
        setTalkStatus();
    }

    if (orderTalk(1)) {
        return 1;
    }

    if (mAttList != NULL && mAttList->mType == 7 && checkNoResetFlg0(FLG0_SWIM_UP) &&
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
int daAlink_c::checkSwimAction(int param_0) {
    f32 var_f31;
    if (checkWolf()) {
        if (getMoveBGActorName(mLinkAcch.m_gnd, NULL) == PROC_Obj_ITA) {
            var_f31 = 200.0f;
        } else {
            var_f31 = daAlinkHIO_wlSwim_c0::m.field_0x48;
        }
    } else {
        var_f31 = daAlinkHIO_swim_c0::m.mInitHeight;
    }

    if (checkNoResetFlg0(FLG0_UNK_80) && !checkNoResetFlg0(FLG0_UNDERWATER) && !checkModeFlg(0x40000) && mProcID != PROC_MAGNE_BOOTS_FLY && ((mProcID != PROC_WOLF_LOCK_ATTACK && mProcID != PROC_WOLF_LOCK_ATTACK_TURN) || mProcVar5.field_0x3012 == 0) && mDemo.getDemoMode() != 0x11) {
        f32 var_f28;
        f32 var_f29;
        f32 var_f30;
        
        if (checkWolf()) {
            if (checkWolfDashMode()) {
                var_f29 = daAlinkHIO_wlSwim_c0::m.field_0x50;
            } else {
                var_f29 = daAlinkHIO_wlSwim_c0::m.field_0x80;
            }

            var_f28 = daAlinkHIO_wlSwim_c0::m.field_0x58;
        } else {
            var_f29 = getSwimFrontMaxSpeed();
            var_f28 = getSwimMaxFallSpeed();
        }

        if (dComIfGp_checkPlayerStatus1(0, 0x10000)) {
            var_f30 = mLeftFootPos.y;
        } else if (dComIfGp_checkPlayerStatus1(0, 0x2000000)) {
            var_f30 = (-65.0f + current.pos.y) - var_f31;
        } else {
            var_f30 = current.pos.y;
        }

        if (mWaterY - var_f30 > var_f31 || (param_0 != 0 && mWaterY >= var_f30 && mWaterY - mLinkAcch.GetGroundH() > var_f31)) {
            cXyz sp14;
            offNoResetFlg0(FLG0_SWIM_UP);
            mZ2Link.setInWater(true);

            field_0x594 = var_f29;

            if (!param_0) {
                mNormalSpeed *= 0.75f;
            }

            if (mNormalSpeed >= field_0x594) {
                mNormalSpeed = field_0x594;
            }

            swimDeleteItem();

            if (checkEquipAnime()) {
                resetUpperAnime(UPPER_2, 3.0f);
            }

            field_0x3080 = 0;

            if (param_0) {
                if (current.pos.y - mWaterY > -5.0f) {
                    onNoResetFlg0(FLG0_SWIM_UP);
                    mZ2Link.setInWater(false);
                    return 0;
                }
                return 1;
            }

            if (checkModeFlg(2) && !checkPossibleWaterInMode()) {
                dComIfGp_getVibration().StartShock(2, 1, cXyz(0.0f, 1.0f, 0.0f));
                current.pos.y = var_f30 + var_f31;

                speed.y = 0.75f * field_0x3528.y;
                if (speed.y < var_f28) {
                    speed.y = var_f28;
                } else if (speed.y > 0.0f) {
                    speed.y = 0.0f;
                }

                if (checkWolf()) {
                    if (checkNoResetFlg2(FLG2_UNK_8)) {
                        daAlink_WANM var_r29;
                        if (cM_rnd() < 0.5f) {
                            var_r29 = WANM_FLING_LEFT;
                            onNoResetFlg2(FLG2_WOLF_ENEMY_LEFT_THROW);
                        } else {
                            var_r29 = WANM_FLING_RIGHT;
                            offNoResetFlg2(FLG2_WOLF_ENEMY_LEFT_THROW);
                        }
                        setWolfEnemyThrowUpperAnime(var_r29, 0.0f);
                    }

                    return procWolfSwimWaitInit(1);
                }

                if (mProcID == PROC_DIVE_JUMP) {
                    seStartOnlyReverb(Z2SE_AL_JUMP_DIVE_WATER);

                    if (checkZoraWearAbility()) {
                        field_0x3000 = 30;
                    }
                    return procSwimMoveInit();
                }

                return procSwimWaitInit(1);
            }

            if (checkBootsOrArmorHeavy() || checkPossibleWaterInMode()) {
                onNoResetFlg0(FLG0_UNDERWATER);
                return 0;
            }

            if (checkWolf()) {
                return procWolfSwimUpInit();
            }

            return procSwimUpInit();
        }
    } else if (!checkNoResetFlg0(FLG0_SWIM_UP) && !checkBootsOrArmorHeavy() && !checkPossibleWaterInMode() && !checkModeFlg(0x40000)) {
        if (checkNoResetFlg0(FLG0_UNK_80) && mWaterY - current.pos.y > var_f31) {
            if (checkWolf()) {
                return procWolfSwimWaitInit(0);
            }

            return procSwimWaitInit(0);
        }

        swimOutAfter(0);

        if (checkWolf()) {
            return procWolfWaitInit();
        }

        return procWaitInit();
    } else if (checkModeFlg(0x40000) && mProcID != PROC_CAUGHT && mProcID != PROC_DEAD) {
        return checkSwimOutAction();
    }

    return 0;
}

/* 80103058-801032C8 0FD998 0270+00 7/7 0/0 0/0 .text            checkSwimUpAction__9daAlink_cFv */
int daAlink_c::checkSwimUpAction() {
    if (checkNoResetFlg0(FLG0_SWIM_UP)) {
        if (!checkHookshotAnime()) {
            return checkSubjectAction();
        }
        return 0;
    }

    if (!getZoraSwim()) {
        if (checkWolf()) {
            field_0x3480 = daAlinkHIO_wlSwim_c0::m.field_0x48;
        } else {
            cLib_addCalc(&field_0x3480, daAlinkHIO_swim_c0::m.mInitHeight, 0.5f, 15.0f, 1.0f);
        }
    } else {
        field_0x3480 = 65.0f;
    }

    f32 var_f31;
    if (checkWolf()) {
        var_f31 = daAlinkHIO_wlSwim_c0::m.field_0x4C;
    } else {
        var_f31 = daAlinkHIO_swim_c0::m.mResurfaceHeight;
    }

    if (!checkBootsOrArmorHeavy() && !checkNoResetFlg0(FLG0_SWIM_UP)) {
        if (speed.y >= 0.0f && mWaterY - current.pos.y < var_f31) {
            if (checkWolf()) {
                return procWolfSwimUpInit();
            } else {
                return procSwimUpInit();
            }
        }
    }

    if (current.pos.y - field_0x3480 < mLinkAcch.GetGroundH()) {
        if (!checkBootsOrArmorHeavy()) {
            current.pos.y = field_0x3480 + mLinkAcch.GetGroundH();
            field_0x3798.y = current.pos.y;
            mProcVar3.field_0x300e = getGroundAngle(&mLinkAcch.m_gnd, shape_angle.y);
            mProcVar4.field_0x3010 = 2;
    
            if (speed.y < -1.0f) {
                speed.y = -1.0f;
            }
        } else {
            current.pos.y = mLinkAcch.GetGroundH();
            mLinkAcch.SetGroundHit();
            onNoResetFlg0(FLG0_UNDERWATER);
            procLandInit(0.0f);
            field_0x2f99 = 0x90;
            return 1;
        }
    } else if (mLinkAcch.ChkRoofHit()) {
        mProcVar3.field_0x300e = getRoofAngle(&mLinkAcch.m_roof, shape_angle.y);
        mProcVar4.field_0x3010 = 2;

        if (speed.y > 1.0f) {
            speed.y = 1.0f;
        }
    }

    return 0;
}

/* 801032C8-80103398 0FDC08 00D0+00 8/8 0/0 0/0 .text            swimOutAfter__9daAlink_cFi */
void daAlink_c::swimOutAfter(int param_0) {
    onNoResetFlg0(FLG0_SWIM_UP);
    onEndResetFlg1(ERFLG1_UNK_100);
    mZ2Link.setInWater(false);

    if (checkNoResetFlg0(FLG0_UNDERWATER)) {
        offNoResetFlg0(FLG0_UNDERWATER);
    } else {
        field_0x2b98 = 0.0f;
        field_0x2f98 = 4;
    }

    field_0x3750 = cXyz::Zero;
    field_0x3000 = 0;
    offOxygenTimer();

    if (checkSwimMoveHandAnime() || checkZoraSwimDamageAnime()) {
        resetUpperAnime(UPPER_2, 3.0f);
    }
}

/* 80103398-801033CC 0FDCD8 0034+00 1/1 0/0 0/0 .text            checkSwimFall__9daAlink_cFv */
BOOL daAlink_c::checkSwimFall() {
    if (!checkNoResetFlg0(FLG0_UNK_80) || current.pos.y > mWaterY + l_autoUpHeight) {
        return true;
    }

    return false;
}

/* 801033CC-80103698 0FDD0C 02CC+00 1/1 0/0 0/0 .text            checkSwimOutAction__9daAlink_cFv */
int daAlink_c::checkSwimOutAction() {
    f32 var_f31;
    if (checkWolf()) {
        var_f31 = daAlinkHIO_wlSwim_c0::m.field_0x48;
    } else {
        var_f31 = daAlinkHIO_swim_c0::m.mInitHeight;
    }

    if (checkSwimFall()) {
        swimOutAfter(1);

        cXyz sp8(field_0x3594.x + (mNormalSpeed * cM_ssin(current.angle.y)), 0.0f, field_0x3594.z + (mNormalSpeed * cM_scos(current.angle.y)));
        mNormalSpeed = sp8.absXZ();
        current.angle.y = sp8.atan2sX_Z();

        if (checkWolf()) {
            if (mNormalSpeed > daAlinkHIO_wlAutoJump_c0::m.field_0x74) {
                mNormalSpeed = daAlinkHIO_wlAutoJump_c0::m.field_0x74;
            }
            return procWolfFallInit(2, daAlinkHIO_wlAutoJump_c0::m.field_0x54);
        } else {
            if (mNormalSpeed > daAlinkHIO_autoJump_c0::m.mMaxJumpSpeed) {
                mNormalSpeed = daAlinkHIO_autoJump_c0::m.mMaxJumpSpeed;
            }
            return procFallInit(2, daAlinkHIO_autoJump_c0::m.mFallInterpolation);
        }
    }

    if (!checkNoResetFlg0(FLG0_UNK_80) || mWaterY - mLinkAcch.GetGroundH() <= var_f31 - 5.0f) {
        current.pos.y = mWaterY;
        swimOutAfter(1);
        return commonCheckNextAction(0);
    }

    if (checkMagicArmorHeavy() && checkNoResetFlg0(FLG0_SWIM_UP)) {
        offNoResetFlg0(FLG0_SWIM_UP);
        mZ2Link.setInWater(true);
    }

    return 0;
}

/* 80103698-80103EE0 0FDFD8 0848+00 4/4 0/0 0/0 .text            setSwimMoveAnime__9daAlink_cFv */
void daAlink_c::setSwimMoveAnime() {
    daPy_frameCtrl_c* temp_r28 = &mUnderFrameCtrl[0];
    daPy_frameCtrl_c* temp_r27 = &mUpperFrameCtrl[2];

    f32 var_f31;
    f32 temp_f25 = temp_r28->getEnd();
    f32 var_f26 = temp_r28->getFrame() * temp_f25;

    if (field_0x3000 != 0 && !checkHookshotAnime()) {
        field_0x2f98 = 4;
    } else if (checkHookshotAnime() || (checkAttentionLock() && !getZoraSwim())) {
        field_0x3000 = 0;
        if (checkInputOnR()) {
            field_0x2f98 = getDirectionFromShapeAngle();
        } else if (field_0x2f98 >= 4 || mNormalSpeed < 3.0f) {
            field_0x2f98 = 0;
        }
    } else if (checkInputOnR() || field_0x2f98 >= 4 || mNormalSpeed < 3.0f) {
        field_0x2f98 = 0;
    }

    daAlink_ANM var_r29;
    BOOL var_r26 = 1;
    BOOL var_r25 = 0;

    if (field_0x2f98 == 4) {
        f32 temp_f29 = daAlinkHIO_swim_c0::m.mMaxUnderwaterSpeed + daAlinkHIO_swim_c0::m.mUnderwaterButtonSpeed;

        field_0x3478 = daAlinkHIO_swim_c0::m.mUnderwaterMinAnmSpeed;
        field_0x347c = daAlinkHIO_swim_c0::m.mUnderwaterMaxAnmSpeed;

        if (field_0x594 < daAlinkHIO_swim_c0::m.mMaxUnderwaterSpeed) {
            field_0x594 = daAlinkHIO_swim_c0::m.mMaxUnderwaterSpeed;
        } else if (doTrigger()) {
            field_0x594 += 0.75f;
            if (field_0x594 > temp_f29) {
                field_0x594 = temp_f29;
            }

            if (!checkSwimMoveHandAnime() && !checkZoraSwimDamageAnime()) {
                f32 var_f28;
                if (field_0x2060->getOldFrameMorfCounter() > 5.0f) {
                    var_f28 = -1.0f;
                } else {
                    var_f28 = 3.0f;
                }

                setUpperAnime(0x23F, UPPER_2, 1.0f, 0.0f, 0x28, var_f28);
                mProcVar5.field_0x3012 = 0;
                var_r25 = 1;
            } else if (temp_r27->getFrame() > 25.0f) {
                mProcVar5.field_0x3012 = 1;
            }
        } else if (!checkSwimMoveHandAnime()) {
            cLib_chaseF(&field_0x594, daAlinkHIO_swim_c0::m.mMaxUnderwaterSpeed, 0.4f);
        }

        var_f31 = 1.0f / daAlinkHIO_swim_c0::m.mMaxUnderwaterSpeed;

        if (checkZoraWearAbility() && (field_0x3198 == ANM_SWIM_DIVE || (field_0x3198 == ANM_SWIM_ZORA_START && !checkAnmEnd(temp_r28)))) {
            var_r29 = ANM_SWIM_ZORA_START;
        } else {
            var_r29 = ANM_SWIM_C;

            if (field_0x3198 == ANM_SWIM_ZORA_START) {
                var_r26 = 0;
                if (mProcVar4.field_0x3010 == 1) {
                    mProcVar4.field_0x3010 = 0;
                }
            }
        }
    } else if (field_0x2f98 == 0) {
        if (checkSwimDashMode() && checkUnderMove0BckNoArc(ANM_SWIM_DASH) && !checkAnmEnd(temp_r28)) {
            var_r29 = ANM_SWIM_DASH;
        } else if (mNormalSpeed < 3.0f || checkHookshotAnime()) {
            var_r29 = ANM_SWIM_WAIT;
            field_0x30d0 = 0;
        } else {
            var_r29 = ANM_SWIM_A;
        }

        if (checkSwimDashMode()) {
            field_0x3478 = daAlinkHIO_swim_c0::m.mDMinAnmSpeed;
            field_0x347c = daAlinkHIO_swim_c0::m.mDMaxAnmSpeed;
            field_0x594 = daAlinkHIO_swim_c0::m.mDMaxSpeed;
        } else {
            field_0x3478 = daAlinkHIO_swim_c0::m.mForwardMinAnmSpeed;
            field_0x347c = daAlinkHIO_swim_c0::m.mForwardMaxAnmSpeed;
            field_0x594 = getSwimFrontMaxSpeed();
        }

        var_f31 = 1.0f / field_0x594;
    } else if (field_0x2f98 == 1) {
        var_r29 = ANM_ATN_SWIM_BACK;
        field_0x3478 = daAlinkHIO_swim_c0::m.mBackwardMinAnmSpeed;
        field_0x347c = daAlinkHIO_swim_c0::m.mBackwardMaxAnmSpeed;

        if (checkZoraWearAbility()) {
            field_0x594 = 10.0f;
        } else {
            field_0x594 = daAlinkHIO_swim_c0::m.mMaxBackwardSpeed;
        }

        var_f31 = 1.0f / field_0x594;
    } else {
        if (field_0x2f98 == 2) {
            var_r29 = ANM_ATN_SWIM_LEFT;
        } else {
            var_r29 = ANM_ATN_SWIM_RIGHT;
        }

        field_0x3478 = daAlinkHIO_swim_c0::m.mStrafeMinAnmSpeed;
        field_0x347c = daAlinkHIO_swim_c0::m.mStrafeMaxAnmSpeed;

        if (checkZoraWearAbility()) {
            field_0x594 = 12.0f;
        } else {
            field_0x594 = daAlinkHIO_swim_c0::m.mMaxStrafeSpeed;
        }

        var_f31 = 1.0f / field_0x594;
    }

    field_0x347c -= field_0x3478;

    if (field_0x2f98 != 0) {
        field_0x30d0 = 0;
    }

    if (checkBootsOrArmorHeavy()) {
        var_r29 = ANM_SWIM_WAIT;
        field_0x594 = daAlinkHIO_swim_c0::m.mUnderwaterMaxSinkSpeed;
        if (mEquipItem != fpcNm_ITEM_NONE && !checkHookshotAnime()) {
            setDoStatus(4);
        }
    }

    if (var_r29 != field_0x3198) {
        if (field_0x3198 == ANM_SWIM_ZORA_START) {
            speed.y = 0.0f;
        }

        field_0x3198 = var_r29;

        if (checkUnderMove0BckNoArc(ANM_SWIM_DASH)) {
            field_0x30d2 = daAlinkHIO_swim_c0::m.field_0x5e;
        }

        if (var_r29 == ANM_SWIM_WAIT) {
            setSingleAnimeBaseSpeed(ANM_SWIM_WAIT, daAlinkHIO_swim_c0::m.mWaitAnmSpeed, daAlinkHIO_swim_c0::m.mWaitInterpolation);
        } else {
            f32 var_f27;
            if (var_r26 != 0) {
                var_f27 = daAlinkHIO_swim_c0::m.mMoveInterpolation;
            } else {
                var_f27 = 0.0f;
            }
            setSingleAnimeBaseMorf(var_r29, var_f27);
        }
    }

    if (var_r29 != ANM_SWIM_WAIT && var_r29 != ANM_SWIM_DASH) {
        f32 temp_f30 = var_f31 * fabsf(mNormalSpeed);
        if (temp_f30 > 1.0f && field_0x2f98 == 4) {
            temp_r28->setRate(daAlinkHIO_swim_c0::m.mUnderwaterMaxAnmSpeed + ((temp_f30 - 1.0f) * daAlinkHIO_swim_c0::m.mUnderwaterButtonAnmSpeed));
        } else {
            temp_r28->setRate(field_0x3478 + (field_0x347c * temp_f30));
        }
    }

    if (checkSwimMoveHandAnime()) {
        if (temp_r27->checkPass(17.0f)) {
            seStartOnlyReverb(Z2SE_AL_WATER_STROKE_L);
        }
    
        if (var_r29 == ANM_SWIM_C) {
            temp_r27->setRate(temp_r28->getRate());

            if (var_r25 == 0 && temp_r27->checkPass(0.0f)) {
                if (mProcVar5.field_0x3012 != 0) {
                    mProcVar5.field_0x3012 = 0;
                } else {
                    resetUpperAnime(UPPER_2, 3.0f);
                }
            }
        } else {
            resetUpperAnime(UPPER_2, -1.0f);
        }
    }

    maxFallSpeed = getSwimMaxFallSpeed();

    if (var_r29 == ANM_SWIM_C || var_r29 == ANM_SWIM_ZORA_START) {
        if (!checkZoraWearAbility()) {
            if (field_0x3080 != -0x3800) {
                setOldRootQuaternion(0x4000, 0, 0);
            }
            field_0x3080 = -0x3800;
        } else if (mProcVar4.field_0x3010 == 1) {
            cLib_addCalcAngleS(&field_0x3080, mProcVar3.field_0x300e, 5, 0x1000, 0x100);
        } else if (mProcVar4.field_0x3010 == 2) {
            cLib_addCalcAngleS(&field_0x3080, mProcVar3.field_0x300e, 5, 0x1000, 0x100);
            mProcVar4.field_0x3010 = 0;
        } else {
            s16 var_r24;
            if (checkInputOnR() && !checkEventRun()) {
                var_r24 = 13653.0f * cM_scos(mStickAngle);
            } else {
                var_r24 = 0;
            }

            cLib_addCalcAngleS(&field_0x3080, var_r24, 5, 0x200, 0x80);
        }
    } else if (field_0x3080 != 0) {
        setOldRootQuaternion(field_0x3080, 0, 0);
        field_0x3080 = 0;
        mProcVar4.field_0x3010 = 0;

        if (!checkZoraWearAbility()) {
            mNormalSpeed = 0.0f;
        }
    }
}

/* 80103EE0-80103F08 0FE820 0028+00 5/5 0/0 0/0 .text            checkSwimButtonAccept__9daAlink_cFv
 */
bool daAlink_c::checkSwimButtonAccept() {
    return dComIfGp_getDoStatus() == 0x41 || dComIfGp_getDoStatus() == 0x4C;
}

/* 80103F08-80103F24 0FE848 001C+00 4/4 0/0 0/0 .text checkUpSwimButtonAccept__9daAlink_cFv */
bool daAlink_c::checkUpSwimButtonAccept() {
    return dComIfGp_getDoStatus() == 0x97;
}

/* 80103F24-80103F94 0FE864 0070+00 2/2 0/0 0/0 .text            checkSwimButtonMove__9daAlink_cFv
 */
BOOL daAlink_c::checkSwimButtonMove() {
    return !checkNoResetFlg0(FLG0_SWIM_UP) &&
           (checkSwimButtonAccept() || checkUpSwimButtonAccept()) && doButton();
}

/* 80103F94-80103FE8 0FE8D4 0054+00 3/3 0/0 0/0 .text            checkZoraSwimMove__9daAlink_cFv */
BOOL daAlink_c::checkZoraSwimMove() {
    return checkSwimButtonMove() || field_0x3000 != 0;
}

/* 80103FE8-80104034 0FE928 004C+00 2/2 0/0 0/0 .text            checkSwimNeckUpDown__9daAlink_cCFv
 */
BOOL daAlink_c::checkSwimNeckUpDown() const {
    return !checkNoResetFlg0(FLG0_SWIM_UP) && checkUnderMove0BckNoArc(ANM_SWIM_WAIT);
}

/* 80104034-801040F8 0FE974 00C4+00 3/3 0/0 0/0 .text            setSwimUpDownOffset__9daAlink_cFv
 */
void daAlink_c::setSwimUpDownOffset() {
    mProcVar2.field_0x300c += (s16)((cM_rndF(0.3f) + 0.85f) * 2330.0f);

    f32 var_f1;
    if (checkWolf()) {
        if (checkHeavyStateOn(1, 1)) {
            var_f1 = daAlinkHIO_wlSwim_c0::m.field_0x98;
        } else {
            var_f1 = daAlinkHIO_wlSwim_c0::m.field_0x6C;
        }
    } else {
        var_f1 = daAlinkHIO_swim_c0::m.mWaitVibrationIntensity;
    }

    field_0x2b98 = var_f1 * cM_ssin(mProcVar2.field_0x300c);
}

/* 801040F8-801041E8 0FEA38 00F0+00 2/2 0/0 0/0 .text            procSwimUpInit__9daAlink_cFv */
int daAlink_c::procSwimUpInit() {
    commonProcInit(PROC_SWIM_UP);

    if (field_0x3000 != 0 && !checkZoraWearAbility()) {
        mNormalSpeed = 0.0f;
    }

    speed.y = 0.0f;
    current.pos.y = mWaterY;
    field_0x3080 = 0;
    onNoResetFlg0(FLG0_SWIM_UP);
    mZ2Link.setInWater(false);
    setSingleAnimeParam(ANM_SWIM_RESURFACE, &daAlinkHIO_swim_c0::m.mResurfaceAnm);
    dComIfGp_setPlayerStatus0(0, 0x100000);
    mProcVar0.field_0x3008 = 0;
    mProcVar4.field_0x3010 = 0;
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

    setNormalSpeedF(0.0f, daAlinkHIO_swim_c0::m.mDeceleration);

    if (checkSetItemTrigger(fpcNm_ITEM_HVY_BOOTS)) {
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
    } else if (frame_ctrl->getFrame() > daAlinkHIO_swim_c0::m.mResurfaceAnm.mCancelFrame &&
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
    u32 mode_40000 = checkModeFlg(0x40000);

    if (checkNoResetFlg0(FLG0_UNDERWATER)) {
        offNoResetFlg0(FLG0_UNDERWATER);
        current.pos.y += daAlinkHIO_swim_c0::m.mInitHeight;
    }

    commonProcInit(PROC_SWIM_WAIT);

    if (param_0) {
        seStartMapInfo(Z2SE_AL_INTO_WATER);
        mProcVar4.field_0x3010 = 0;
        field_0x3480 = daAlinkHIO_swim_c0::m.mInitHeight;
    } else if (!mode_40000) {
        mProcVar4.field_0x3010 = 0;
        field_0x3480 = daAlinkHIO_swim_c0::m.mInitHeight;
    }

    swimDeleteItem();

    if (!checkUnderMove0BckNoArc(ANM_SWIM_WAIT)) {
        setSingleAnimeBaseSpeed(ANM_SWIM_WAIT, daAlinkHIO_swim_c0::m.mWaitAnmSpeed,
                                daAlinkHIO_swim_c0::m.mWaitInterpolation);
    } else if (frame_ctrl->getRate() < 0.1f) {
        setSingleAnimeBaseSpeed(ANM_SWIM_WAIT, daAlinkHIO_swim_c0::m.mWaitAnmSpeed, -1.0f);
    }

    field_0x30d0 = 0;
    field_0x3198 = 0x14;
    field_0x32cc = mEquipItem;

    if (field_0x3080 != 0) {
        setOldRootQuaternion(field_0x3080, 0, 0);
        field_0x3080 = 0;
    }

    dComIfGp_setPlayerStatus0(0, 0x100000);

    if (checkNoResetFlg0(FLG0_SWIM_UP)) {
        current.pos.y = mWaterY;
        speed.y = 0.0f;
    }

    mProcVar2.field_0x300c = 0;
    mProcVar0.field_0x3008 = 0;
    field_0x594 = getSwimFrontMaxSpeed();
    return 1;
}

/* 801044B4-80104670 0FEDF4 01BC+00 1/0 0/0 0/0 .text            procSwimWait__9daAlink_cFv */
int daAlink_c::procSwimWait() {
    if (mDemo.getDemoMode() == 6 || mDemo.getDemoMode() == 8) {
        setShapeAngleToTalkActor();
        current.angle.y = shape_angle.y;
    }

    maxFallSpeed = getSwimMaxFallSpeed();
    field_0x594 = getSwimFrontMaxSpeed();

    setSpeedAndAngleSwim();

    if (mEquipItem != field_0x32cc) {
        field_0x32cc = mEquipItem;
        setSingleAnimeBaseSpeed(ANM_SWIM_WAIT, daAlinkHIO_swim_c0::m.mWaitAnmSpeed,
                                daAlinkHIO_swim_c0::m.mWaitInterpolation);
    }

    setSwimUpDownOffset();

    if (checkEquipHeavyBoots() && mEquipItem != fpcNm_ITEM_NONE) {
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
    u32 mode_40000 = checkModeFlg(0x40000);
    bool proc_dive_jump = mProcID == PROC_DIVE_JUMP;
    bool proc_swim_dive = mProcID == PROC_SWIM_DIVE;

    commonProcInit(PROC_SWIM_MOVE);

    if (checkNoResetFlg0(FLG0_UNDERWATER)) {
        offNoResetFlg0(FLG0_UNDERWATER);
    }

    if (!mode_40000) {
        field_0x3480 = daAlinkHIO_swim_c0::m.mInitHeight;
        mProcVar4.field_0x3010 = 0;
    }

    if (proc_swim_dive || proc_dive_jump) {
        field_0x3198 = 199;

        if (proc_dive_jump) {
            field_0x3080 = 0x2800;
            mProcVar3.field_0x300e = field_0x3080;
            mProcVar4.field_0x3010 = 1;
            setOldRootQuaternion(-field_0x3080, 0, 0);
        }
    } else {
        field_0x3198 = -1;
    }

    field_0x2f98 = 5;
    setSwimMoveAnime();

    if (checkNoResetFlg0(FLG0_SWIM_UP)) {
        current.pos.y = mWaterY;
        speed.y = 0.0f;
    }

    swimDeleteItem();
    dComIfGp_setPlayerStatus0(0, 0x100000);
    mProcVar0.field_0x3008 = 0;
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
    } else if (dComIfGp_getDoStatus() == 9 && doTrigger()) {
        onNoResetFlg1(FLG1_DASH_MODE);
        field_0x30d0 = daAlinkHIO_swim_c0::m.field_0x5c;
        setSingleAnimeParam(ANM_SWIM_DASH, &daAlinkHIO_swim_c0::m.mDashAnm);
        field_0x3198 = ANM_SWIM_DASH;
    } else if (!checkZoraSwimMove() && (!checkUpSwimButtonAccept() || !doButton()) &&
               mNormalSpeed < daAlinkHIO_swim_c0::m.mForwardMinSpeed)
    {
        procSwimWaitInit(0);
    }

    return 1;
}

/* 80104958-80104AA0 0FF298 0148+00 4/4 0/0 0/0 .text            procSwimDiveInit__9daAlink_cFv */
int daAlink_c::procSwimDiveInit() {
    commonProcInit(PROC_SWIM_DIVE);
    setSpecialGravity(0.0f, maxFallSpeed, 0);
    speed.y = 0.0f;

    if (checkNoResetFlg0(FLG0_SWIM_UP)) {
        mProcVar2.field_0x300c = 1;
        setSingleAnimeParam(ANM_SWIM_DIVE, &daAlinkHIO_swim_c0::m.mDiveAnm);
        voiceStart(Z2SE_AL_V_DIVING);
    } else {
        mProcVar2.field_0x300c = 0;
        setSingleAnimeParam(ANM_SWIM_DIVE, &daAlinkHIO_swim_c0::m.mUnderwaterDiveAnm);
    }

    field_0x2f99 = 0x10;
    field_0x3588 = l_waitBaseAnime;
    field_0x3480 = daAlinkHIO_swim_c0::m.mInitHeight;
    mProcVar4.field_0x3010 = 0;

    dComIfGp_setPlayerStatus0(0, 0x100000);
    field_0x3000 = 30;
    field_0x3478 = 0.0f;
    field_0x347c = 1.0f / daAlinkHIO_swim_c0::m.mUnderwaterDiveAnm.mEndFrame;
    return 1;
}


/* 80104AA0-80104C50 0FF3E0 01B0+00 1/0 0/0 0/0 .text            procSwimDive__9daAlink_cFv */
int daAlink_c::procSwimDive() {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    if (mProcVar2.field_0x300c == 0) {
        setDoStatus(0x4C);
    } else if (checkNoResetFlg0(FLG0_SWIM_UP) && frame_ctrl->getFrame() > 20.0f) {
        offNoResetFlg0(FLG0_SWIM_UP);
        mZ2Link.setInWater(true);
    }

    field_0x2f99 = 7;
    field_0x3000 = 30;
    setNormalSpeedF(0.0f, daAlinkHIO_swim_c0::m.mDeceleration);

    field_0x3478 = field_0x347c * frame_ctrl->getFrame();
    if (field_0x3478 > 1.0f) {
        field_0x3478 = 1.0f;
    }

    if (frame_ctrl->checkPass(15.0f) && mProcVar2.field_0x300c != 0) {
        cXyz pos(current.pos.x, mWaterY, current.pos.z);
        fopKyM_createWpillar(&pos, 0.7f, 0);
    }

    if (mLinkAcch.GetGroundH() > current.pos.y - field_0x598 * 0.5f) {
        current.pos.y = field_0x598 * 0.5f + mLinkAcch.GetGroundH();
    }

    if (checkAnmEnd(frame_ctrl)) {
        speed.y = daAlinkHIO_swim_c0::m.mMaxSinkSpeed;

        if (mProcVar2.field_0x300c != 0) {
            field_0x3080 = 0x2800;
            mProcVar3.field_0x300e = field_0x3080;
            mProcVar4.field_0x3010 = 1;
        }

        setOldRootQuaternion(-field_0x3080, 0, 0);
        return procSwimMoveInit();
    }

    return 1;
}


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

    mNormalSpeed = 0.0f;
    current.angle.y = shape_angle.y;

    if (field_0x3080 != 0) {
        setOldRootQuaternion(field_0x3080, 0, 0);
        field_0x3080 = 0;
    }

    if (checkNoResetFlg0(FLG0_SWIM_UP)) {
        current.pos.y = mWaterY;
        speed.y = 0.0f;
    }

    mProcVar2.field_0x300c = 0;
    mProcVar0.field_0x3008 = 0;
    field_0x594 = getSwimFrontMaxSpeed();

    field_0x3480 = daAlinkHIO_swim_c0::m.mInitHeight;
    mProcVar4.field_0x3010 = 0;
    field_0x30d0 = 0;

    setHookshotReadyMaterial();
    dComIfGp_setPlayerStatus0(0, 0x104000);
    return 1;
}

/* 80104D7C-80104EB8 0FF6BC 013C+00 1/0 0/0 0/0 .text procSwimHookshotSubject__9daAlink_cFv */
int daAlink_c::procSwimHookshotSubject() {
    maxFallSpeed = getSwimMaxFallSpeed();
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

    if (mItemVar0.field_0x3018 == 0) {
        setSwimMoveAnime();
    }

    if (checkNoResetFlg0(FLG0_SWIM_UP)) {
        current.pos.y = mWaterY;
        speed.y = 0.0f;
    }

    mProcVar0.field_0x3008 = 0;

    if (field_0x3080 != 0) {
        setOldRootQuaternion(field_0x3080, 0, 0);
        field_0x3080 = 0;
    }

    field_0x3480 = daAlinkHIO_swim_c0::m.mInitHeight;
    mProcVar4.field_0x3010 = 0;
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

    if (mItemVar0.field_0x3018 == 0) {
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
int daAlink_c::procSwimDamageInit(dCcD_GObjInf* param_0) {
    seStartOnlyReverb(Z2SE_AL_DAMAGE_NORMAL);
    dComIfGp_getVibration().StartShock(2, 31, cXyz(0.0f, 1.0f, 0.0f));

    BOOL bvar4 =
        checkNoResetFlg0(FLG0_SWIM_UP) || ((param_0 != NULL && param_0->GetTgHitAc() != NULL) &&
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

    mProcVar0.field_0x3008 =
        cLib_minMaxLimit(cM_atan2s(sp24.z, sp24.y), (s16)-daAlinkHIO_damSwim_c0::m.field_0x78,
                         (s16)daAlinkHIO_damSwim_c0::m.field_0x78);

    mProcVar1.field_0x300a = cLib_minMaxLimit(
        cM_atan2s(sp24.x, -JMAFastSqrt(sp24.y * sp24.y + sp24.z * sp24.z)),
        (s16)-daAlinkHIO_damSwim_c0::m.field_0x7A, (s16)daAlinkHIO_damSwim_c0::m.field_0x7A);

    int dir = getDirectionFromAngle(cM_atan2s(-sp24.x, -sp24.z));
    if (bvar4) {
        setSingleAnimeParam(ANM_SWIM_DMG_FREEZE, &daAlinkHIO_damSwim_c0::m.field_0x64);
        field_0x3478 = daAlinkHIO_damSwim_c0::m.field_0x64.mCancelFrame;
        mProcVar0.field_0x3008 = 0;
        mProcVar1.field_0x300a = 0;
    } else if (dir == DIR_FORWARD) {
        setSingleAnimeParam(ANM_SWIM_DMG_FRONT, &daAlinkHIO_damSwim_c0::m.field_0x0);
        field_0x3478 = daAlinkHIO_damSwim_c0::m.field_0x0.mCancelFrame;
    } else if (dir == DIR_BACKWARD) {
        setSingleAnimeParam(ANM_SWIM_DMG_BACK, &daAlinkHIO_damSwim_c0::m.field_0x14);
        field_0x3478 = daAlinkHIO_damSwim_c0::m.field_0x14.mCancelFrame;
    } else if (dir == DIR_LEFT) {
        setSingleAnimeParam(ANM_SWIM_DMG_LEFT, &daAlinkHIO_damSwim_c0::m.field_0x28);
        field_0x3478 = daAlinkHIO_damSwim_c0::m.field_0x28.mCancelFrame;
    } else {
        setSingleAnimeParam(ANM_SWIM_DMG_RIGHT, &daAlinkHIO_damSwim_c0::m.field_0x3C);
        field_0x3478 = daAlinkHIO_damSwim_c0::m.field_0x3C.mCancelFrame;
    }

    mNormalSpeed = 0.0f;
    field_0x347c = M_PI / (mUnderFrameCtrl->getEnd() - mUnderFrameCtrl->getStart());
    field_0x3480 = daAlinkHIO_swim_c0::m.mInitHeight;
    current.angle.y = shape_angle.y;

    return 1;
}

/* 80105728-801058A0 100068 0178+00 1/0 0/0 0/0 .text            procSwimDamage__9daAlink_cFv */
int daAlink_c::procSwimDamage() {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;

    f32 fvar8 = cM_fsin(field_0x347c * (frame_ctrl->getFrame() - frame_ctrl->getStart()));
    mBodyAngle.x = mProcVar0.field_0x3008 * fvar8;
    mBodyAngle.z = -mProcVar1.field_0x300a * fvar8;
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


/* 801058A0-80105A00 1001E0 0160+00 2/2 0/0 0/0 .text            procOctaIealSpitInit__9daAlink_cFv
 */
int daAlink_c::procOctaIealSpitInit() {
    u32 temp_r30 = checkModeFlg(MODE_SWIMMING);
    commonProcInit(PROC_OCTAIEAL_SPIT);

    if (checkNoResetFlg0(FLG0_UNDERWATER)) {
        offNoResetFlg0(FLG0_UNDERWATER);
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
    offNoResetFlg0(FLG0_SWIM_UP);
    current.angle.y = field_0x2ffe;

    if (mNormalSpeed > 0.0f) {
        shape_angle.y = current.angle.y + 0x8000;
    } else {
        shape_angle.y = current.angle.y;
    }

    return 1;
}


/* 80105A00-80105A84 100340 0084+00 1/0 0/0 0/0 .text            procOctaIealSpit__9daAlink_cFv */
int daAlink_c::procOctaIealSpit() {
    if (mDemo.getDemoMode() == 0x2E) {
        cancelOriginalDemo();
    }

    cLib_addCalc(&mNormalSpeed, 0.0f, 0.5f, field_0x3478, 0.1f);
    field_0x2f99 = 7;

    if (mUnderFrameCtrl[0].checkAnmEnd()) {
        procSwimWaitInit(0);
    }

    return 1;
}
