/**
 * d_a_alink_effect.inc
 * Player Particle Effect handling
 */

#include "d/actor/d_a_alink.h"
#include "d/d_com_inf_game.h"
#include "d/d_k_wmark.h"
#include "JSystem/J2DGraph/J2DAnimation.h"
#include "JSystem/J2DGraph/J2DScreen.h"

/* 80120580-80120634 11AEC0 00B4+00 21/21 0/0 0/0 .text
 * setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz                  */
JPABaseEmitter* daAlink_c::setEmitter(u32* param_0, u16 param_1, cXyz const* param_2, csXyz const* param_3) {
    *param_0 = dComIfGp_particle_set(*param_0, param_1, param_2, &tevStr, param_3, NULL, 0xFF,
                                     NULL, 0xFF, NULL, NULL, NULL);
    dComIfGp_particle_levelEmitterOnEventMove(*param_0);
    return dComIfGp_particle_getEmitter(*param_0);
}


/* 80120634-801206C4 11AF74 0090+00 4/4 0/0 0/0 .text
 * setEmitterPolyColor__9daAlink_cFPUlUsR13cBgS_PolyInfoPC4cXyzPC5csXyz */
JPABaseEmitter* daAlink_c::setEmitterPolyColor(u32* param_0, u16 param_1, cBgS_PolyInfo& param_2,
                                               cXyz const* param_3, csXyz const* param_4) {
    *param_0 = dComIfGp_particle_setPolyColor(*param_0, param_1, param_2, param_3, &tevStr,
                                              param_4, NULL, 0, NULL, -1, NULL);
    dComIfGp_particle_levelEmitterOnEventMove(*param_0);

    return dComIfGp_particle_getEmitter(*param_0);
}

/* 801206C4-80120778 11B004 00B4+00 2/2 0/0 0/0 .text
 * setEmitterColor__9daAlink_cFPUlUsPC4cXyzPC5csXyz             */
JPABaseEmitter* daAlink_c::setEmitterColor(u32* param_0, u16 param_1, cXyz const* param_2,
                                           csXyz const* param_3) {
    *param_0 = dComIfGp_particle_setColor(*param_0, param_1, param_2, &tevStr, NULL, NULL,
                                          0.0f, -1, param_3, NULL, NULL, -1, NULL);
    dComIfGp_particle_levelEmitterOnEventMove(*param_0);

    return dComIfGp_particle_getEmitter(*param_0);
}

/* 80120778-801207BC 11B0B8 0044+00 9/9 0/0 0/0 .text            stopDrawParticle__9daAlink_cFUl */
void daAlink_c::stopDrawParticle(u32 param_0) {
    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(param_0);

    if (emitter != NULL) {
        emitter->stopDrawParticle();
    }
}

/* 801207BC-80120880 11B0FC 00C4+00 1/0 0/0 0/0 .text setEffectFrontRollParam__9daAlink_cFv */
void daAlink_c::setEffectFrontRollParam() {
    int j, i;

    for (i = 0; i < 5; i++) {
        for (j = 0; j < 2; j++) {
            if (field_0x2e54.getTypeFour(i, j) == 0) {
                JPABaseEmitter* emitter_p = field_0x2e54.getEmitterFour(i, j, 0);

                if (emitter_p != NULL) {
                    emitter_p->setRate(2.0f);
                }
            }
        }
    }
}

/* 80120880-80120B00 11B1C0 0280+00 1/0 0/0 0/0 .text            setEffectSlipParam__9daAlink_cFv */
void daAlink_c::setEffectSlipParam() {
    JGeometry::TVec3<f32> sp30;
    
    int k, j, i;
    for (i = 0; i < 5; i++) {
        for (j = 0; j < 2; j++) {
            u8 type = field_0x2e54.getTypeFour(i, j);

            if (type == 0) {
                JPABaseEmitter* emitter = field_0x2e54.getEmitterFour(i, j, 0);
                if (emitter != NULL) {
                    if (checkWolf()) {
                        emitter->setRate(0.5f);
                    }

                    emitter->setAwayFromCenterSpeed(0.0f);
                    emitter->setRandomDirectionSpeed(0.0f);
                    emitter->setSpread(0.1f);
                    emitter->setGlobalParticleScale(smokeParticleScale_39643);
                }
            } else if (type == 1) {
                JPABaseEmitter* emitter = field_0x2e54.getEmitterFour(i, j, 0);
                if (emitter != NULL) {
                    emitter->setRate(0.5f);
                    emitter->setDirectionalSpeed(12.0f);
                }
            } else if (type == 16) {
                for (k = 0; k < 4; k++) {
                    JPABaseEmitter* emitter = field_0x2e54.getEmitterFour(i, j, k);
                    if (emitter == NULL) {
                        break;
                    }

                    if (checkWolf()) {
                        emitter->setGlobalScale(wolfWaterCenterScale);
                    } else {
                        emitter->getGlobalTranslation(&sp30);
                        sp30.x += cM_ssin(current.angle.y) * 35.0f;
                        sp30.z += cM_scos(current.angle.y) * 35.0f;

                        emitter->setGlobalTranslation(sp30);
                    }
                }
            } else if (type == 3) {
                JPABaseEmitter* emitter = field_0x2e54.getEmitterFour(i, j, 0);
                if (emitter != NULL) {
                    emitter->setRate(1.0f);
                }
            } else if (type == 4) {
                for (k = 0; k < 4; k++) {
                    JPABaseEmitter* emitter = field_0x2e54.getEmitterFour(i, j, k);
                    if (emitter != NULL) {
                        emitter->setRate(2.0f);
                    }
                }
            }
        }
    }
}

/* 80120B00-80120DB0 11B440 02B0+00 1/0 0/0 0/0 .text            setEffectRunParam__9daAlink_cFv */
void daAlink_c::setEffectRunParam() {
    int k, j, i;
    for (i = 0; i < 5; i++) {
        for (j = 0; j < 2; j++) {
            u8 type = field_0x2e54.getTypeFour(i, j);

            if (type == 0) {
                JPABaseEmitter* emitter = field_0x2e54.getEmitterFour(i, j, 0);
                if (emitter != NULL) {
                    emitter->setRate(3.0f);
                }
            } else if (type == 1) {
                JPABaseEmitter* emitter = field_0x2e54.getEmitterFour(i, j, 0);
                if (emitter != NULL) {
                    emitter->setRate(4.0f);
                }
            } else if (type == 2) {
                for (k = 0; k < 4; k++) {
                    JPABaseEmitter* emitter = field_0x2e54.getEmitterFour(i, j, k);
                    if (emitter == NULL) {
                        break;
                    }

                    emitter->setGlobalScale(waterScale_39762);
                }
            } else if (type == 5) {
                JPABaseEmitter* emitter = field_0x2e54.getEmitterFour(i, j, 0);
                if (emitter != NULL) {
                    emitter->setRate(10.0f);
                    emitter->setAwayFromAxisSpeed(1.0f);
                    emitter->setGlobalScale(waterSmokeScale);
                }
            } else if (type == 16) {
                for (k = 0; k < 4; k++) {
                    JPABaseEmitter* emitter = field_0x2e54.getEmitterFour(i, j, k);
                    if (emitter == NULL) {
                        break;
                    }

                    emitter->setGlobalScale(waterCenterScale);
                }
            } else if (type == 3) {
                JPABaseEmitter* emitter = field_0x2e54.getEmitterFour(i, j, 0);
                if (emitter != NULL) {
                    if (checkWolf()) {
                        emitter->setRate(2.0f);
                        emitter->setDirectionalSpeed(8.0f);
                        emitter->setSpread(0.1f);
                    } else {
                        emitter->setRate(5.0f);
                    }
                }
            }
        }
    }
}

/* 80120DB0-80121000 11B6F0 0250+00 1/0 0/0 0/0 .text setEffectSmallLandParam__9daAlink_cFv */
void daAlink_c::setEffectSmallLandParam() {
    int k, j, i;
    for (i = 0; i < 5; i++) {
        for (j = 0; j < 2; j++) {
            u8 type = field_0x2e54.getTypeFour(i, j);

            if (type == 0) {
                JPABaseEmitter* emitter = field_0x2e54.getEmitterFour(i, j, 0);
                if (emitter != NULL) {
                    if (checkWolf()) {
                        emitter->setGlobalScale(wolfSmokeScale);
                    } else {
                        emitter->setRate(15.0f);
                        emitter->setVolumeSize(25);
                        emitter->setDirectionalSpeed(0.0f);
                        emitter->setGlobalParticleScale(smokeParticleScale_39891);
                    }
                }
            } else if (type == 1) {
                JPABaseEmitter* emitter = field_0x2e54.getEmitterFour(i, j, 0);
                if (emitter != NULL) {
                    if (checkWolf()) {
                        emitter->setGlobalScale(wolfSmokeScale);
                    } else {
                        emitter->setRate(8.0f);
                        emitter->setVolumeSize(25);
                        emitter->setDirectionalSpeed(0.0f);
                        emitter->setAwayFromAxisSpeed(8.0f);
                    }
                }
            } else if (type == 2) {
                if (checkWolf()) {
                    for (k = 0; k < 4; k++) {
                        JPABaseEmitter* emitter = field_0x2e54.getEmitterFour(i, j, k);
                        if (emitter == NULL) {
                            break;
                        }

                        emitter->setGlobalScale(waterScale_39892);
                    }
                }
            }
        }
    }
}

/* 80121000-80121004 11B940 0004+00 1/0 0/0 0/0 .text            setEffectLandParam__9daAlink_cFv */
void daAlink_c::setEffectLandParam() {}

/* 80121004-801211C0 11B944 01BC+00 1/0 0/0 0/0 .text            setEffectSumouParam__9daAlink_cFv
 */
void daAlink_c::setEffectSumouParam() {
    int j, i;
    for (i = 0; i < 5; i++) {
        for (j = 0; j < 2; j++) {
            u8 type = field_0x2e54.getTypeFour(i, j);

            if (type == 0) {
                JPABaseEmitter* emitter = field_0x2e54.getEmitterFour(i, j, 0);
                if (emitter != NULL) {
                    if (mProcID == PROC_SUMOU_SHIKO) {
                        emitter->setGlobalScale(shikoScale);
                    } else if (mProcID == PROC_SUMOU_WIN_LOSE) {
                        emitter->setGlobalScale(loseScale);
                    } else if ((mProcID == PROC_SUMOU_SIDE_MOVE || mProcID == PROC_SUMOU_ACTION) && (field_0x3198 == 0x143 || field_0x3198 == 0x142)) {
                        GXColor sp3C;
                        GXColor sp40;
                        u8 sp48;
                        f32 sp44;
                        dPa_control_c::getPolyColor(mLinkAcch.m_gnd, j, &sp3C, &sp40, &sp48, &sp44);

                        if (sp48 == emitter->getGlobalAlpha()) {
                            emitter->setGlobalAlpha(sp48 >> 1);
                        }
                    } else {
                        emitter->setGlobalScale(pushedSlip);
                    }
                }
            }
        }
    }
}

/* 801211C0-80121214 11BB00 0054+00 46/46 0/0 0/0 .text setFootEffectProcType__9daAlink_cFi */
void daAlink_c::setFootEffectProcType(int param_0) {
    if (param_0 != field_0x2f9f) {
        field_0x2e54.clearFourAllID();
    }

    mEffProc = param_0;
    field_0x2f9f = mEffProc;
}

/* 80121214-80121304 11BB54 00F0+00 1/1 0/0 0/0 .text            setWolfFootOn__9daAlink_cFi */
void daAlink_c::setWolfFootOn(int param_0) {
    daPy_frameCtrl_c* temp_r31 = &mUnderFrameCtrl[1];

    if (temp_r31->checkPass(l_wolfFootOnFrame[param_0][0])) {
        onResetFlg1(RFLG1_UNK_4);
    } else if (temp_r31->checkPass(l_wolfFootOnFrame[param_0][1])) {
        onResetFlg1(RFLG1_UNK_8);
    } else if (temp_r31->checkPass(l_wolfFootOnFrame[param_0][2])) {
        onResetFlg1(RFLG1_UNK_10);
    } else if (temp_r31->checkPass(l_wolfFootOnFrame[param_0][3])) {
        onResetFlg1(RFLG1_UNK_20);
    }
}

/* 80121304-80121388 11BC44 0084+00 1/1 0/0 0/0 .text            setFootMark__9daAlink_cFP4cXyzUsi
 */
void daAlink_c::setFootMark(cXyz* i_pos, u16 i_mtxNo, int param_2) {
    cXyz sp8;
    mDoMtx_multVecSR(mpLinkModel->getAnmMtx(i_mtxNo), &cXyz::BaseX, &sp8);
    dkWmark_c::setFootMark(i_pos, sp8.atan2sX_Z(), param_2);
}

/* 80121388-801221F0 11BCC8 0E68+00 1/1 0/0 0/0 .text            setEffect__9daAlink_cFv */
void daAlink_c::setEffect() {
    if (mProcID == PROC_CUT_TURN || mProcID == PROC_BOARD_CUT_TURN) {
        setCutTurnEffect();
    } else if (mProcID == PROC_HORSE_CUT_TURN) {
        setHorseCutTurnEffect();
    } else if (mProcID == PROC_WOLF_ROLL_ATTACK) {
        setWolfRollAttackEffect();
    } else if (mProcID == PROC_ELEC_DAMAGE) {
        setElecDamageEffect();
    }

    if (checkMagneBootsOn() || (checkEquipHeavyBoots() && mLinkAcch.i_ChkGroundHit() && dComIfG_Bgsp().GetMagnetCode(mLinkAcch.m_gnd) == 2)) {
        if (!checkMagneBootsOn() && !checkNoResetFlg3(FLG3_UNK_1)) {
            mZ2Link.setMagnetized(true);
            onNoResetFlg3(FLG3_UNK_1);
        }
        setMagneBootsEffect();
    } else if (checkNoResetFlg3(FLG3_UNK_1)) {
        offNoResetFlg3(FLG3_UNK_1);
        mZ2Link.setMagnetized(false);
    }

    if (getSumouMode() != 0) {
        setSumouEffect();
    } else {
        setWaterfallEffect();
    }

    setSwordChargeEffect();

    if (checkWolf()) {
        setWolfLockAttackEffect();
        setWolfJumpAttackEffect();
    } else {
        setBootsLightEffect();
    }

    setLightningSwordEffect();

    if (mLinkAcch.ChkWallHit()) {
        cXyz spD0;
        cXyz spC4;

        dBgS_AcchCir* acchcir = mAcchCir;
        for (int i = 0; i < 3; i++) {
            if (acchcir->ChkWallHit() && checkWolfBarrierWallHit(*acchcir)) {
                spD0.set(current.pos.x, current.pos.y + acchcir->GetWallH(), current.pos.z);
                spC4.set(spD0.x - (acchcir->GetWallR() + 5.0f) * cM_ssin(acchcir->GetWallAngleY()), spD0.y, spD0.z - (acchcir->GetWallR() + 5.0f) * cM_scos(acchcir->GetWallAngleY()));

                if (commonLineCheck(&spD0, &spC4) && checkWolfBarrierWallHit(mLinkLinChk)) {
                    setWolfBarrierHitEffect(mLinkLinChk);
                    break;
                }
            }

            acchcir++;
        }
    }

    setWaterDropEffect();
    setSwordUpColorEffect();
    setSwordCutSplash();
    setWoodShieldBurnEffect();
    setFreezeEffect();

    if (mProcID == PROC_METAMORPHOSE) {
        setMetamorphoseEffect();
    } else {
        setRunSplash();
    }

    setBottleEffect();

    if (checkEndResetFlg0(ERFLG0_UNK_20000000) || 0.0f != field_0x346c) {
        if (checkEndResetFlg0(ERFLG0_UNK_20000000) && field_0x346c < 0.0f) {
            field_0x346c *= -1.0f;
        }

        field_0x346c += 0.0625f;

        if (field_0x346c > 1.0f) {
            if (checkNoResetFlg3(FLG3_UNK_200000) && dComIfGp_getNeedLightDropNum() == dComIfGs_getLightDropNum(dComIfGp_getStartStageDarkArea())) {
                field_0x346c = 1.0f;

                if (checkEventRun()) {
                    changeOriginalDemo();
                    changeDemoMode(0x5E, 0, 0, 0);
                }
            } else {
                field_0x346c = -1.0f;
            }
        }
    }

    cXyz spB8(current.pos);
    cXyz spAC(current.pos);
    cXyz spA0;

    if (checkModeFlg(0x40000)) {
        if (checkWolf()) {
            spB8.x += 40.0f * cM_ssin(current.angle.y);
            spB8.z += 40.0f * cM_scos(current.angle.y);
            spAC.y -= daAlinkHIO_wlSwim_c0::m.field_0x48;
        } else {
            spAC.y -= daAlinkHIO_swim_c0::m.mInitHeight;
        }

        spB8.y = mWaterY;
        if (checkNoResetFlg0(FLG0_SWIM_UP) && mNormalSpeed > 8.0f) {
            setEmitterPolyColor(&field_0x31c0, 0x1BC, mLinkAcch.m_wtr, &spB8, &current.angle);
        }
        spB8.y = spAC.y;
    } else if (checkModeFlg(0x10000) && mProcVar4.field_0x3010 != 0 && 0.0f != mUnderFrameCtrl[0].getRate() && dComIfG_Bgsp().ChkPolySafe(mPolyInfo1) && (dKy_pol_efftype_get(&mPolyInfo1) == 1 || dKy_pol_efftype_get(&mPolyInfo1) == 1)) {
        int sp44;
        if (dKy_pol_efftype_get(&mPolyInfo1) == 1) {
            sp44 = 0;
        } else {
            sp44 = 1;
        }

        field_0x31c0 = dComIfGp_particle_setPolyColor(field_0x31c0, 0x333, mPolyInfo1, &current.pos, &tevStr, &shape_angle, NULL, sp44, NULL, -1, NULL);
        dComIfGp_particle_levelEmitterOnEventMove(field_0x31c0);
    }

    if (mProcID == PROC_DEAD && (field_0x2f9d & 4)) {
        mDoMtx_multVecZero(mpLinkModel->getAnmMtx(mProcVar4.field_0x3010), &spAC);
        mLinkGndChk.SetPos(&spAC);

        f32 temp_f1 = dComIfG_Bgsp().GroundCross(&mLinkGndChk);
        if (fabsf(current.pos.y - temp_f1) < 50.0f) {
            spAC.y = temp_f1;
        }
    }

    if (!checkWolf()) {
        mDoMtx_multVecZero(mpLinkModel->getAnmMtx(field_0x30b4), &spA0);

        if (spA0.y < (mWaterY - 50.0f)) {
            JPABaseEmitter* sp40 = setEmitterPolyColor(&field_0x31bc, 0x1E8, mLinkAcch.m_wtr, &spA0, &shape_angle);
            if (sp40 != NULL) {
                sp40->setParticleCallBackPtr(dPa_control_c::getWaterBubblePcallBack());
            }
        }

        if (dComIfGp_checkPlayerStatus0(0, 8)) {
            spB8.x -= 30.0f * cM_ssin(shape_angle.y);
            spB8.z -= 30.0f * cM_scos(shape_angle.y);
            spAC.y = mLeftFootPos.y;
            spB8.y = spAC.y;
        } else if (dComIfGp_checkPlayerStatus1(0, 0x02000000)) {
            spB8.x += 60.0f * cM_ssin(shape_angle.y);
            spB8.z += 60.0f * cM_scos(shape_angle.y);

            if (mRightFootPos.y < mLeftFootPos.y) {
                spAC.y = mRightFootPos.y;
            } else {
                spAC.y = mLeftFootPos.y;
            }

            spB8.y = spAC.y;
        } else if (dComIfGp_checkPlayerStatus1(0, 0x10000)) {
            spAC.y = mLeftFootPos.y;
            spB8.y = spAC.y;
        }
    }

    u32 var_r28 = 0;
    u32 var_r29 = 0;

    cXyz sp94(mRightFootPos);
    cXyz sp88(mLeftFootPos);
    cXyz sp7C(mRightHandPos);
    cXyz sp70(mLeftHandPos);
    cXyz sp64(spAC);

    if (mEffProc == EFFPROC_SUMOU) {
        if (mProcID == PROC_SUMOU_SHIKO || mProcID == PROC_SUMOU_WIN_LOSE) {
            var_r28 = 1;
            sp88.y = current.pos.y;
        }
    } else if (mEffProc == EFFPROC_LAND) {
        var_r28 |= 0x3B;
    } else if (mEffProc == EFFPROC_FRONT_ROLL) {
        if (mProcID == PROC_SLIDE) {
            var_r29 |= 4;
        }

        var_r28 |= 4;
        var_r29 |= 0x10000;
    } else if (mEffProc == EFFPROC_SLIP) {
        if (checkWolf()) {
            sp94.y -= 10.0f;
            sp88.y -= 10.0f;
            sp7C.y -= 10.0f;
            sp70.y -= 10.0f;
            sp64.y -= 10.0f;
        }
        var_r29 |= 0x10000;
    } else if (mEffProc == EFFPROC_RUN) {
        if (checkWolf() && field_0x2f9d != 0) {
            var_r29 |= 0x10000;
        }
    } else if (mEffProc == EFFPROC_SMALL_LAND) {
        var_r28 |= 0x38;
        if (checkWolf()) {
            var_r28 |= 3;
        }
    }

    if (checkCanoeRide() || checkModeFlg(0x10000)) {
        var_r29 |= 0x40000;
    }

    BOOL sp3C = 0;

    if (mProcID == PROC_SUMOU_MOVE && (field_0x3198 == 0x14C || field_0x3198 == 0x14D || field_0x3198 == 0x155)) {
        sp3C = 1;
        current.angle.y += 0x8000;
    }

    f32 temp_f30 = field_0x3798.absXZ(current.pos);
    if ((!checkModeFlg(0x70C52) && (mLinkAcch.i_ChkGroundHit() || checkMagneBootsOn())) || mProcID == PROC_SUMOU_WIN_LOSE || (checkBoardRide() && !checkModeFlg(2)) || mProcID == PROC_WOLF_TAG_JUMP) {
        field_0x2e54.setEffectFour(&tevStr, &spB8, var_r28, var_r29,
                                   (field_0x2f9d & 0x04) ? &sp64 : NULL,
                                   (field_0x2f9d & 0x08) ? &sp70 : NULL,
                                   (field_0x2f9d & 0x10) ? &sp7C : NULL,
                                   (field_0x2f9d & 0x20) ? &sp88 : NULL,
                                   (field_0x2f9d & 0x40) ? &sp94 : NULL,
                                   &current.angle, NULL, fopAcM_GetRoomNo(this), field_0x3420, temp_f30);

        if (checkBoardRide() && temp_f30 > 3.0f && field_0x2fbb == 0xD) {
            JPABaseEmitter* sp38 = setEmitterPolyColor(&field_0x31c0, 0x8B8F, mLinkAcch.m_gnd, &current.pos, &shape_angle);
            if (sp38 != NULL) {
                cXyz sp58;
                f32 var_f31 = temp_f30 / daAlinkHIO_board_c0::m.mEffectMaxSpeed;
                if (var_f31 > 1.0f) {
                    var_f31 = 1.0f;
                }
                sp38->setRate(1.0f + (2.0f * var_f31));
                sp38->setAwayFromCenterSpeed(1.0f + (4.0f * var_f31));

                sp58.x = 0.7f + (0.3f * var_f31);
                sp58.y = sp58.x;
                sp58.z = sp58.x;
                sp38->setGlobalParticleScale(sp58);
                sp38->setGlobalAlpha(50.0f + (205.0f * var_f31));
            }
        }
    } else {
        field_0x2e54.setEffectFour(&tevStr, &spB8, var_r28, var_r29, NULL, NULL, NULL, NULL, NULL, &current.angle, NULL, fopAcM_GetRoomNo(this), field_0x3420, temp_f30);
    }

    if (mEffProc != EFFPROC_NONE) {
        (this->*m_fEffParamProc[mEffProc])();
    }

    if (mWaterY > current.pos.y) {
        field_0x2fc4 = 0x96;
    }

    int var_r26;
    if ((checkResetFlg1(daPy_RFLG1(RFLG1_UNK_20 | RFLG1_UNK_10 | RFLG1_UNK_8 | RFLG1_UNK_4)) || (field_0x2fc1 != 6 && field_0x2f8c != 2)) && current.pos.y > mWaterY && (field_0x2fc4 != 0 || (mSinkShapeOffset < 0.0f && mSinkShapeOffset >= -15.0f))) {
        if (mSinkShapeOffset < 0.0f && mSinkShapeOffset >= -15.0f) {
            if (field_0x2fbb == 3) {
                var_r26 = 1;
            } else {
                var_r26 = 2;
            }
        } else {
            var_r26 = 0;
        }

        if (checkWolf() && field_0x2fc1 != 6) {
            setWolfFootOn(field_0x2fc1);

            if (field_0x2fc1 == 4) {
                setWolfFootOn(5);
            }
        }

        if (checkResetFlg1(RFLG1_UNK_10)) {
            setFootMark(&mLeftFootPos, field_0x30bc, var_r26);
        }

        if (checkResetFlg1(RFLG1_UNK_20)) {
            setFootMark(&mRightFootPos, field_0x30be, var_r26);
        }

        if (checkResetFlg1(RFLG1_UNK_4)) {
            setFootMark(&mLeftHandPos, field_0x30b8, var_r26);
        }

        if (checkResetFlg1(RFLG1_UNK_8)) {
            setFootMark(&mRightHandPos, field_0x30ba, var_r26);
        }
    }

    if (sp3C) {
        current.angle.y += 0x8000;
    }

    setFirePointDamageEffect();
}

/* 801221F0-801225E8 11CB30 03F8+00 1/1 0/0 0/0 .text            setSumouEffect__9daAlink_cFv */
void daAlink_c::setSumouEffect() {
    daPy_frameCtrl_c* temp_r28 = &mUnderFrameCtrl[0];
    cXyz sp14;

    if (mProcID == PROC_SUMOU_ACTION) {
        if ((field_0x3198 == 0x14F) || (field_0x3198 == 0x151) || (field_0x3198 == 0x150)) {
            JPABaseEmitter* temp_r3 = setEmitter(&field_0x31c8, 0x8538, &current.pos, NULL);
            if (temp_r3 != NULL) {
                temp_r3->setGlobalRTMatrix(mpLinkModel->getAnmMtx(9));
                if (field_0x3198 == 0x151) {
                    temp_r3->setLifeTime(5);
                }
            }

            if (field_0x3198 != 0x150) {
                if (temp_r28->getFrame() >= 12.0f) {
                    mDoMtx_multVecZero(mpLinkModel->getAnmMtx(9), &sp14);
                    setEmitter(&field_0x31cc, 0x8539, &sp14, NULL);
                    setEmitter(&field_0x31d0, 0x853A, &sp14, &shape_angle);
                }
            }
        } else if (field_0x3198 == 0x145 || field_0x3198 == 0x146 || field_0x3198 == 0x14E || field_0x3198 == 0x147) {
            if (field_0x3198 != 0x14E && (field_0x3198 == 0x145 || field_0x3198 == 0x146 || temp_r28->getFrame() >= 29.0f)) { 
                JPABaseEmitter* temp_r3_2 = setEmitter(&field_0x31c8, 0x8542, &field_0x3834, &shape_angle);
                if (temp_r3_2 != NULL) {
                    temp_r3_2->setGlobalRTMatrix(mpLinkModel->getAnmMtx(0));
                }

                JPABaseEmitter* temp_r3_3 = setEmitter(&field_0x31cc, 0x8541, &field_0x3834, &shape_angle);
                if (temp_r3_3 != NULL) {
                    temp_r3_3->setGlobalRTMatrix(mpLinkModel->getAnmMtx(0));
                }
            }

            if (temp_r28->getFrame() >= 35.0f || (field_0x3198 == 0x14E && temp_r28->getFrame() >= 3.0f) || ((field_0x3198 == 0x145 || field_0x3198 == 0x146) && temp_r28->getFrame() >= 7.0f)) {
                f32 var_f31;
                if (field_0x3198 == 0x147) {
                    var_f31 = 40.0f;
                } else {
                    var_f31 = 30.0f;
                }

                sp14.set(field_0x3834.x + (var_f31 * cM_ssin(shape_angle.y)), field_0x3834.y, field_0x3834.z + (var_f31 * cM_scos(shape_angle.y)));
                setEmitter(&field_0x31d0, 0x8539, &sp14, NULL);
                setEmitter(&field_0x31d4, 0x853A, &sp14, &shape_angle);
            }
        }
    } else if (mProcID == PROC_SUMOU_MOVE) {
        if (field_0x3198 == 0x154) {
            JPABaseEmitter* temp_r3_4 = setEmitter(&field_0x31c8, 0x8545, &field_0x3834, &shape_angle);
            if (temp_r3_4 != NULL) {
                mDoMtx_stack_c::copy(mpLinkModel->getAnmMtx(0));
                mDoMtx_stack_c::transM(36.0f, 84.0f, 0.0f);
                temp_r3_4->setGlobalRTMatrix(mDoMtx_stack_c::get());
            }
        } else if (field_0x3198 == 0x155) {
            if (temp_r28->getFrame() >= 17.0f) {
                JPABaseEmitter* temp_r3_5 = setEmitter(&field_0x31c8, 0x853A, &field_0x3834, &shape_angle);
                if (temp_r3_5 != NULL) {
                    mDoMtx_stack_c::copy(mpLinkModel->getAnmMtx(0));
                    mDoMtx_stack_c::XrotM(0x7FFF);
                    temp_r3_5->setGlobalRTMatrix(mDoMtx_stack_c::get());
                    temp_r3_5->setGlobalScale(releaeScale);
                }
            }
        }
    }
}

/* 801225E8-80122654 11CF28 006C+00 1/1 0/0 0/0 .text setWaterfallEffect__9daAlink_cFPC4cXyzPUl */
void daAlink_c::setWaterfallEffect(cXyz const* param_0, u32* param_1) {
    setEmitter(&param_1[0], 0x8614, param_0, NULL);
    setEmitter(&param_1[1], 0x8615, param_0, NULL);
}

/* 80122654-8012277C 11CF94 0128+00 1/1 0/0 0/0 .text            setWaterfallEffect__9daAlink_cFv */
void daAlink_c::setWaterfallEffect() {
    Vec sp8;
    if (checkEndResetFlg1(ERFLG1_UNK_800)) {
        if (checkWolf()) {
            mDoMtx_multVecZero(mpLinkModel->getAnmMtx(3), &sp8);
            sp8.y += 5.0f;
        } else {
            mDoMtx_multVecZero(mpLinkModel->getAnmMtx(3), &sp8);
        }

        setWaterfallEffect((cXyz*)&sp8, &field_0x31c8);
    }

    if (checkWolf() && checkEndResetFlg1(ERFLG1_UNK_1000)) {
        mDoMtx_multVecZero(mpLinkModel->getAnmMtx(0x1A), &sp8);
        sp8.y -= 15.0f;
        setWaterfallEffect((cXyz*)&sp8, &field_0x31d0);
    }

    if (checkEndResetFlg1(daPy_ERFLG1(ERFLG1_UNK_1000 | ERFLG1_UNK_800))) {
        seStartOnlyReverbLevel(Z2SE_AL_IN_WATER_FALL);
    }
}

/* 8012277C-801228F4 11D0BC 0178+00 1/1 0/0 0/0 .text            setMagneBootsEffect__9daAlink_cFv
 */
void daAlink_c::setMagneBootsEffect() {
    cXyz sp20;

    int i, j;
    for (i = 0; i < 2; i++) {
        if (i == 0) {
            sp20 = mLeftFootPos - current.pos;
        } else {
            sp20 = mRightFootPos - current.pos;
        }

        if (checkMagneBootsOn()) {
            mDoMtx_multVecSR(mMagneBootInvMtx, &sp20, &sp20);
        }

        if (sp20.y < 6.0f) {
            u32* var_r28 = field_0x3228[i];

            for (j = 0; j < 3; j++, var_r28++) {
                JPABaseEmitter* temp_r3 = setEmitter(var_r28, effName_40765[j], &current.pos, NULL);
                if (temp_r3 != NULL) {
                    if (j == 1) {
                        temp_r3->setGlobalRTMatrix(mpLinkBootModels[i]->getAnmMtx(1));
                    } else {
                        temp_r3->setGlobalRTMatrix(mpLinkBootModels[i]->getAnmMtx(2));
                    }
                }
            }
        }
    }
}

/* 801228F4-80122BBC 11D234 02C8+00 1/1 0/0 0/0 .text            setSwordChargeEffect__9daAlink_cFv
 */
void daAlink_c::setSwordChargeEffect() {
    f32 var_f30;
    BOOL temp_r3 = checkMasterSwordEquip();
    if (temp_r3) {
        var_f30 = l_swordTopLocalM.x;
    } else {
        var_f30 = l_swordTopLocalN.x;
    }

    f32 var_f31 = m_nSwordBtk->getFrame();
    if (var_f31 > 0.0f) {
        cXyz sp50;
        if (!checkWoodSwordEquip()) {
            JPABaseEmitter* temp_r3_2 = setEmitter(&field_0x321c, 0x368, &current.pos, NULL);
            if (temp_r3_2 != NULL) {
                temp_r3_2->setGlobalRTMatrix(mSwordModel->getBaseTRMtx());

                if (temp_r3) {
                    temp_r3_2->setGlobalParticleScale(lightAParticleScale);
                    temp_r3_2->setLocalTranslation(lightALocalTrans);
                }
            }
        }

        cXyz sp44;
        mDoMtx_multVecSR(mSwordModel->getBaseTRMtx(), &cXyz::BaseX, &sp50);
        mDoMtx_multVecZero(mSwordModel->getBaseTRMtx(), &sp44);

        if (var_f31 >= 14.0f) {
            var_f31 = 14.0f;
        }

        sp50 = sp44 + ((sp50 * (var_f31 + 1.0f)) * (var_f30 / 15.0f));
        setEmitter(&field_0x3220, 0x36A, &sp50, NULL);

        if (var_f31 >= 14.0f) {
            setEmitter(&field_0x3224, 0x36B, &sp50, NULL);
        } else {
            if (checkWolf() || checkWoodSwordEquip()) {
                seStartSwordCut(Z2SE_WOLF_POWER_COME);
            } else {
                seStartSwordCut(Z2SE_SWORD_POWER_COME);
            }
        }
    } else {
        JPABaseEmitter* temp_r3_4 = dComIfGp_particle_getEmitter(field_0x321c);
        if (temp_r3_4 != NULL) {
            u8 temp_r3_5 = temp_r3_4->getGlobalAlpha();
            if (temp_r3_5 > 17) {
                JPABaseEmitter* temp_r3_6 = setEmitter(&field_0x321c, 0x368, &current.pos, NULL);
                if (temp_r3_6 != NULL) {
                    temp_r3_6->setGlobalRTMatrix(mSwordModel->getBaseTRMtx());
                    temp_r3_6->setGlobalAlpha(temp_r3_5 - 17);
                }
            } else {
                temp_r3_4->setGlobalAlpha(0);
            }
        }

        stopDrawParticle(field_0x3220);
        stopDrawParticle(field_0x3224);
    }
}

/* 80122BBC-80122F18 11D4FC 035C+00 1/1 0/0 0/0 .text            setElecDamageEffect__9daAlink_cFv
 */
void daAlink_c::setElecDamageEffect() {
    // NONMATCHING
}

/* 80122F18-80122F78 11D858 0060+00 1/1 0/0 0/0 .text            clearCutTurnEffectID__9daAlink_cFv
 */
void daAlink_c::clearCutTurnEffectID() {
    // NONMATCHING
}

/* 80122F78-801233A4 11D8B8 042C+00 1/1 0/0 0/0 .text            setCutTurnEffect__9daAlink_cFv */
void daAlink_c::setCutTurnEffect() {
    // NONMATCHING
}

/* 801233A4-80123434 11DCE4 0090+00 1/1 0/0 0/0 .text            setHorseCutTurnEffect__9daAlink_cFv
 */
void daAlink_c::setHorseCutTurnEffect() {
    // NONMATCHING
}

/* 80123434-801236BC 11DD74 0288+00 1/1 0/0 0/0 .text setCutLargeJumpLandEffect__9daAlink_cFv */
void daAlink_c::setCutLargeJumpLandEffect() {
    // NONMATCHING
}

/* 801236BC-801237A8 11DFFC 00EC+00 1/1 0/0 0/0 .text            setBootsLightEffect__9daAlink_cFv
 */
void daAlink_c::setBootsLightEffect() {
    // NONMATCHING
}

/* 801237A8-801238FC 11E0E8 0154+00 1/1 0/0 0/0 .text setLightningSwordEffect__9daAlink_cFv */
void daAlink_c::setLightningSwordEffect() {
    // NONMATCHING
}

/* 801238FC-801239B0 11E23C 00B4+00 1/1 0/0 0/0 .text setWolfRollAttackEffect__9daAlink_cFv */
void daAlink_c::setWolfRollAttackEffect() {
    // NONMATCHING
}

/* 801239B0-80123BF0 11E2F0 0240+00 1/1 0/0 0/0 .text            setWolfDigEffect__9daAlink_cFv */
void daAlink_c::setWolfDigEffect() {
    // NONMATCHING
}

/* 80123BF0-80123C8C 11E530 009C+00 2/2 0/0 0/0 .text
 * setWolfSwimEndEffect__9daAlink_cFPP14JPABaseEmitterPP14JPABaseEmitter */
void daAlink_c::setWolfSwimEndEffect(JPABaseEmitter** param_0, JPABaseEmitter** param_1) {
    // NONMATCHING
}

/* 80123C8C-80123D88 11E5CC 00FC+00 1/1 0/0 0/0 .text setWolfLockAttackEffect__9daAlink_cFv */
void daAlink_c::setWolfLockAttackEffect() {
    // NONMATCHING
}

/* 80123D88-80123ED0 11E6C8 0148+00 1/1 0/0 0/0 .text setWolfJumpAttackEffect__9daAlink_cFv */
void daAlink_c::setWolfJumpAttackEffect() {
    // NONMATCHING
}

/* 80123ED0-80124144 11E810 0274+00 2/2 0/0 0/0 .text
 * setWolfBarrierHitEffect__9daAlink_cFR11dBgS_LinChk           */
void daAlink_c::setWolfBarrierHitEffect(dBgS_LinChk& param_0) {
    // NONMATCHING
}

/* 80124144-801241E0 11EA84 009C+00 9/9 0/0 0/0 .text            setCutWaterDropEffect__9daAlink_cFv
 */
void daAlink_c::setCutWaterDropEffect() {
    if (field_0x32c0[0] > 0) {
        cXyz sp18;
        mDoMtx_multVecZero(mpLinkModel->getAnmMtx(1), &sp18);
        dComIfGp_particle_setColor(0x2A4, &sp18, &tevStr, NULL, NULL, 0.0f, -1,
                                   &shape_angle, NULL, NULL, -1, NULL);
    }
}

/* 801241E0-801244E4 11EB20 0304+00 1/1 0/0 0/0 .text            setWaterDropEffect__9daAlink_cFv */
void daAlink_c::setWaterDropEffect() {
    // NONMATCHING
}

/* 801244E4-801245EC 11EE24 0108+00 1/1 0/0 0/0 .text            setSwordUpColorEffect__9daAlink_cFv
 */
void daAlink_c::setSwordUpColorEffect() {
    f32 max_intensity;
    if (mSwordUpTimer != 0) {
        max_intensity = 1.0f;
    } else {
        max_intensity = 0.0f;
    }
    cLib_chaseF(&mSwordUpColorIntensity, max_intensity, 0.1f);

    for (int i = 0; i < 2; i++) {
        field_0x32b0[i].r = mSwordUpColorIntensity * swordUpColor[i].r;
        field_0x32b0[i].g = mSwordUpColorIntensity * swordUpColor[i].g;
        field_0x32b0[i].b = mSwordUpColorIntensity * swordUpColor[i].b;
    }
}

/* 801245EC-80124738 11EF2C 014C+00 1/1 0/0 0/0 .text            setSwordCutSplash__9daAlink_cFv */
void daAlink_c::setSwordCutSplash() {
    // NONMATCHING
}

/* 80124738-801247A8 11F078 0070+00 1/1 0/0 0/0 .text setMetamorphoseEffectStartLink__9daAlink_cFv
 */
void daAlink_c::setMetamorphoseEffectStartLink() {
    setEmitter(&field_0x31f8, 0x24F, &field_0x37c8, NULL);
    setEmitter(&field_0x31fc, 0x250, &field_0x37c8, NULL);
    setEmitter(&field_0x3200, 0x6E8, &cXyz::Zero, NULL);
}

/* 801247A8-801248A8 11F0E8 0100+00 1/1 0/0 0/0 .text            setMetamorphoseEffect__9daAlink_cFv
 */
void daAlink_c::setMetamorphoseEffect() {
    // NONMATCHING
}

/* 801248A8-80124A2C 11F1E8 0184+00 1/1 0/0 0/0 .text            setRunSplash__9daAlink_cFv */
void daAlink_c::setRunSplash() {
    // NONMATCHING
}

/* 80124A2C-80124B68 11F36C 013C+00 1/0 0/0 0/0 .text
 * execute__29dAlink_bottleWaterPcallBack_cFP14JPABaseEmitterP15JPABaseParticle */
extern "C" void execute__29dAlink_bottleWaterPcallBack_cFP14JPABaseEmitterP15JPABaseParticle() {
    // asm void dAlink_bottleWaterPcallBack_c::execute(JPABaseEmitter* param_0, JPABaseParticle*
    // param_1) {
    // NONMATCHING
}

/* 80124B68-80124BA4 11F4A8 003C+00 2/2 0/0 0/0 .text            resetFairyEffect__9daAlink_cFv */
void daAlink_c::resetFairyEffect() {
    stopDrawParticle(field_0x3258);
    stopDrawParticle(field_0x325c);
}

/* 80124BA4-80124E28 11F4E4 0284+00 1/1 0/0 0/0 .text            setBottleEffect__9daAlink_cFv */
void daAlink_c::setBottleEffect() {
    // NONMATCHING
}

/* 80124E28-80124EA8 11F768 0080+00 2/2 0/0 0/0 .text clearFirePointDamageEffect__9daAlink_cFi */
void daAlink_c::clearFirePointDamageEffect(int i_effNo) {
    firePointEff_c* fire_eff = &field_0x32d8[i_effNo];

    if (fire_eff->field_0x0 != 0) {
        stopDrawParticle(fire_eff->field_0x4);
        stopDrawParticle(fire_eff->field_0x8);
    }
    fire_eff->field_0x0 = 0;
    fire_eff->field_0x24 = cXyz::Zero;
}

/* 80124EA8-80124FA4 11F7E8 00FC+00 1/1 0/0 0/0 .text initFirePointDamageEffectAll__9daAlink_cFv
 */
void daAlink_c::initFirePointDamageEffectAll() {
    // NONMATCHING
}

/* 80124FA4-80125128 11F8E4 0184+00 1/1 0/0 0/0 .text
 * initFirePointDamageEffect__9daAlink_cFPC4cXyzP12dCcD_GObjInf */
void daAlink_c::initFirePointDamageEffect(cXyz const* param_0, dCcD_GObjInf* param_1) {
    // NONMATCHING
}

/* 80125128-80125338 11FA68 0210+00 1/1 0/0 0/0 .text setFirePointDamageEffect__9daAlink_cFv */
void daAlink_c::setFirePointDamageEffect() {
    // NONMATCHING
}

/* 80125338-80125524 11FC78 01EC+00 1/1 0/0 0/0 .text            setFreezeEffect__9daAlink_cFv */
void daAlink_c::setFreezeEffect() {
    // NONMATCHING
}

/* 80125524-801255BC 11FE64 0098+00 1/1 0/0 0/0 .text setWoodShieldBurnEffect__9daAlink_cFv */
void daAlink_c::setWoodShieldBurnEffect() {
    if (field_0x2fcb != 0) {
        for (int i = 0; i < 2; i++) {
            JPABaseEmitter* emitter =
                setEmitter(&field_0x3260[i], effName_42309[i], &current.pos, NULL);

            if (emitter != NULL) {
                emitter->setGlobalRTMatrix(mShieldModel->getBaseTRMtx());
            }
        }
    }
}

/* 801255BC-80125628 11FEFC 006C+00 3/3 0/0 0/0 .text clearWoodShieldBurnEffect__9daAlink_cFv */
void daAlink_c::clearWoodShieldBurnEffect() {
    if (field_0x2fcb != 0) {
        for (int i = 0; i < 2; i++) {
            stopDrawParticle(field_0x3260[i]);
        }

        field_0x2fcb = 0;
    }
}

/* 80125628-801256EC 11FF68 00C4+00 1/1 0/0 0/0 .text setWoodShieldBurnOutEffect__9daAlink_cFv */
void daAlink_c::setWoodShieldBurnOutEffect() {
    for (int i = 0; i < 2; i++) {
        JPABaseEmitter* emitter = dComIfGp_particle_setColor(
            effName_42340[i], &current.pos, &tevStr, NULL, NULL, 0.0f, -1);

        if (emitter != NULL) {
            emitter->setGlobalRTMatrix(mShieldModel->getBaseTRMtx());
        }
    }

    field_0x2fcb = 1;
    clearWoodShieldBurnEffect();
}

/* 801256EC-80125778 12002C 008C+00 2/2 0/0 0/0 .text
 * initBlur__14daAlink_blur_cFfiPC4cXyzPC4cXyzPC4cXyz           */
void daAlink_blur_c::initBlur(f32 param_0, int param_1, cXyz const* param_2, cXyz const* param_3,
                              cXyz const* param_4) {
    field_0x24 = param_0;
    field_0x1c = param_1;
    field_0x2c = *param_4;
    field_0x38[0] = *param_2;
    field_0x308[0] = *param_3;
    field_0x38[1] = field_0x38[0];
    field_0x308[1] = field_0x308[0];
    field_0x14 = 0;
}

/* 80125778-8012589C 1200B8 0124+00 1/1 0/0 0/0 .text
 * setBezierPos__FPC4cXyzPC4cXyzPC4cXyzPC4cXyzfP4cXyz           */
static void setBezierPos(cXyz const* start, cXyz const* control_1, cXyz const* control_2,
                         cXyz const* end, f32 t, cXyz* out_pos) {
    f32 one_minus_t;
    f32 one_minus_t_squared;
    f32 weight_1;
    f32 weight_2;
    f32 t_squared;
    
    one_minus_t = 1.0f - t;
    one_minus_t_squared = one_minus_t * one_minus_t;
    t_squared = t * t;

    weight_1 = (one_minus_t_squared * 3.0f) * t;
    weight_2 = (t_squared * 3.0f) * one_minus_t;

    one_minus_t_squared *= one_minus_t;
    t_squared *= t;

    *out_pos = (((*start * one_minus_t_squared) + (*control_2 * weight_1)) + (*end * weight_2)) + (*control_1 * t_squared);
}

/* 8012589C-80125B0C 1201DC 0270+00 1/1 0/0 0/0 .text
 * copyBlur__14daAlink_blur_cFPC4cXyzPC4cXyzPC4cXyz             */
// NONMATCHING
void daAlink_blur_c::copyBlur(cXyz const* param_0, cXyz const* param_1, cXyz const* param_2) {
    for (int i = 59 - 10; i >= 0; i--) {
        field_0x38[i + 10] = field_0x38[i];
        field_0x308[i + 10] = field_0x308[i];
    }

    f32 temp_f30 = 1.0f / 10;
    f32 var_f31 = 0.0f;

    cXyz sp4C;
    cXyz sp58;
    cXyz sp64;
    cXyz sp70;

    sp58 = field_0x308[10] + (field_0x2c * 30.0f);
    sp4C = *param_1 + (*param_2 * -30.0f);
    sp70 = field_0x38[10] + (field_0x2c * 60.0f);
    sp64 = *param_0 + (*param_2 * -60.0f);

    for (int i = 0; i < 10; i++) {
        setBezierPos(param_1, &field_0x308[10], &sp4C, &sp58, var_f31, &field_0x308[i]);
        setBezierPos(param_0, &field_0x38[10], &sp64, &sp70, var_f31, &field_0x38[i]);

        field_0x38[i] += (field_0x38[i] - field_0x308[i]) * field_0x24;
        var_f31 += temp_f30;
    }

    field_0x2c = *param_2;

    field_0x14 += 10;
    if (field_0x14 >= 59) {
        field_0x14 = 58;
    }
}

/* 80125B0C-80125BF4 12044C 00E8+00 1/1 0/0 0/0 .text traceBlur__14daAlink_blur_cFPC4cXyzPC4cXyzs
 */
void daAlink_blur_c::traceBlur(cXyz const* param_0, cXyz const* param_1, s16 param_2) {
    mDoMtx_stack_c::transS(*param_0);
    mDoMtx_stack_c::YrotM(param_2);
    mDoMtx_stack_c::transM(-param_1->x, -param_1->y, -param_1->z);
    
    cXyz sp20;
    for (int i = 0; i < field_0x14; i++) {
        sp20 = field_0x38[i];
        mDoMtx_stack_c::multVec(&sp20, &field_0x38[i]);

        sp20 = field_0x308[i];
        mDoMtx_stack_c::multVec(&sp20, &field_0x308[i]);
    }
}

/* 80125BF4-80125F14 120534 0320+00 1/0 0/0 0/0 .text            draw__14daAlink_blur_cFv */
void daAlink_blur_c::draw() {
    j3dSys.reinitGX();

    static GXTexObj ALIGN_DECL(32) texObj;
    static GXColor nColor0 = {0xFF, 0xFF, 0xFF, 0x14};

    GXSetNumIndStages(0);
    nColor0.a = field_0x20;

    GXInitTexObj(&texObj, (void*)((u32)m_blurTex + m_blurTex->imageOffset), 0x10, 4, GX_TF_I4, GX_CLAMP, GX_CLAMP, GX_FALSE);
    GXInitTexObjLOD(&texObj, GX_LINEAR, GX_LINEAR, 0.0f, 0.0f, 0.0f, GX_FALSE, GX_FALSE, GX_ANISO_1);
    GXLoadTexObj(&texObj, GX_TEXMAP0);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGBA, GX_F32, 0);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_CLR_RGBA, GX_RGBA4, 8);
    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
    GXSetVtxDesc(GX_VA_TEX0, GX_DIRECT);
    GXSetNumChans(0);
    GXSetTevColor(GX_TEVREG0, nColor0);
    GXSetNumTexGens(1);
    GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, 0x3C);
    GXSetNumTevStages(1);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_C0);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_A0, GX_CA_TEXA, GX_CA_ZERO);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1, GX_TEVPREV);
    GXLoadPosMtxImm(j3dSys.getViewMtx(), GX_PNMTX0);
    GXSetCurrentMtx(0);
    GXSetBlendMode(GX_BM_BLEND, GX_BL_SRC_ALPHA, GX_BL_INV_SRC_ALPHA, GX_LO_SET);
    GXSetCullMode(GX_CULL_NONE);
    GXSetZMode(GX_ENABLE, GX_LEQUAL, GX_DISABLE);
    GXSetAlphaCompare(GX_GREATER, 0, GX_AOP_OR, GX_GREATER, 0);

    int temp_r26 = 0xFF / ((field_0x14 >> 1) + 1);
    s16 var_r28 = temp_r26;
    s16 var_r27 = 0;

    GXBegin(GX_QUADS, GX_VTXFMT0, (field_0x14 * 4) + 4);

    for (int i = field_0x14; i >= 0; i--) {
        GXPosition3f32(field_0x38[i].x, field_0x38[i].y, field_0x38[i].z);
        GXTexCoord2s16(var_r28, 0);

        GXPosition3f32(field_0x308[i].x, field_0x308[i].y, field_0x308[i].z);
        GXTexCoord2s16(var_r28, 0xFF);

        GXPosition3f32(field_0x308[i + 1].x, field_0x308[i + 1].y, field_0x308[i + 1].z);
        GXTexCoord2s16(var_r27, 0xFF);

        GXPosition3f32(field_0x38[i + 1].x, field_0x38[i + 1].y, field_0x38[i + 1].z);
        GXTexCoord2s16(var_r27, 0);

        var_r27 = var_r28;
        var_r28 += temp_r26;
    }

    GXEnd();
    J3DShape::resetVcdVatCache();
}

/* 80125F14-80126350 120854 043C+00 1/1 0/0 0/0 .text            create__20daAlink_lockCursor_cFv */
BOOL daAlink_lockCursor_c::create() {
    JKRArchive* arc = dComIfG_getObjectResInfo(l_arcName)->getArchive();

    field_0x2c = 0.0f;
    field_0x4 = false;
    field_0x30 = 0.0f;

    mScrn = new J2DScreen();
    if (mScrn == NULL) {
        return false;
    }

    mScrn->setPriority("zelda_v_cursor_new_yellow.blo", 0x100000, arc);
    dPaneClass_showNullPane(mScrn);

    void* tmpData = JKRFileLoader::getGlbResource("zelda_v_cursor_new_yellow.bpk", arc);
    field_0x24 = (J2DAnmColorKey*)J2DAnmLoaderDataBase::load(tmpData);
    if (field_0x24 == NULL) {
        return false;
    }

    tmpData = JKRFileLoader::getGlbResource("zelda_v_cursor_new_yellow.bck", arc);
    field_0x28 = (J2DAnmTransformKey*)J2DAnmLoaderDataBase::load(tmpData);
    if (field_0x28 == NULL) {
        return false;
    }

    tmpData = JKRFileLoader::getGlbResource("zelda_v_cursor_new_yellow_02.brk", arc);
    field_0x1c = (J2DAnmTevRegKey*)J2DAnmLoaderDataBase::load(tmpData);
    if (field_0x1c == NULL) {
        return false;
    }

    tmpData = JKRFileLoader::getGlbResource("zelda_v_cursor_new_yellow.brk", arc);
    field_0x20 = (J2DAnmTevRegKey*)J2DAnmLoaderDataBase::load(tmpData);
    if (field_0x20 == NULL) {
        return false;
    }

    field_0xc = mScrn->search('n_all');
    mCursor0 = mScrn->search('cursor0');
    mCursor1 = mScrn->search('cursor1');
    mCursor2 = mScrn->search('cursor2');

    field_0x28->searchUpdateMaterialID(mScrn);
    field_0xc->setAnimation(field_0x28);
    mCursor0->setAnimation(field_0x28);
    mCursor1->setAnimation(field_0x28);
    mCursor2->setAnimation(field_0x28);
    field_0x28->setFrame(0.0f);

    field_0x24->searchUpdateMaterialID(mScrn);
    mCursor0->setAnimation(field_0x24);
    mCursor1->setAnimation(field_0x24);
    mCursor2->setAnimation(field_0x24);
    mScrn->search('flash')->setAnimation(field_0x24);
    field_0x24->setFrame(0.0f);

    field_0x1c->searchUpdateMaterialID(mScrn);
    field_0x20->searchUpdateMaterialID(mScrn);
    mCursor0->setAnimation(field_0x1c);
    mCursor1->setAnimation(field_0x1c);
    mCursor2->setAnimation(field_0x1c);
    mCursor0->setAnimation(field_0x20);
    mCursor1->setAnimation(field_0x20);
    mCursor2->setAnimation(field_0x20);
    field_0x1c->setFrame(0.0f);
    field_0x20->setFrame(0.0f);

    mScrn->animation();
    mScrn->setUserInfo('n_43');
    field_0xc->setUserInfo(0x20);
    return true;
}

/* 80126350-80126354 120C90 0004+00 0/0 4/0 0/0 .text setAnimation__7J2DPaneFP15J2DAnmTevRegKey */
// void J2DPane::setAnimation(J2DAnmTevRegKey* param_0) {
extern "C" void setAnimation__7J2DPaneFP15J2DAnmTevRegKey() {
    /* empty function */
}

/* 80126354-80126358 120C94 0004+00 0/0 4/0 0/0 .text setAnimation__7J2DPaneFP11J2DAnmColor */
// void J2DPane::setAnimation(J2DAnmColor* param_0) {
extern "C" void setAnimation__7J2DPaneFP11J2DAnmColor() {
    /* empty function */
}

/* 80126358-80126424 120C98 00CC+00 1/1 0/0 0/0 .text            update__20daAlink_lockCursor_cFv */
void daAlink_lockCursor_c::update() {
    if (field_0x2c < 21.0f) {
        field_0x2c = 21.0f;
    }

    field_0x2c += 0.9f;

    if (field_0x2c >= 50.0f) {
        field_0x2c += -29.0f;
    }

    field_0x30 += 0.9f;

    if (field_0x30 >= field_0x1c->getFrameMax()) {
        field_0x30 -= field_0x1c->getFrameMax();
    }

    cLib_chaseUC(&field_0x4, 0x80, 30);
}

/* 80126424-80126650 120D64 022C+00 1/0 0/0 0/0 .text            draw__20daAlink_lockCursor_cFv */
void daAlink_lockCursor_c::draw() {
    if (field_0x4 != 0) {
        field_0x28->setFrame(field_0x2c);

        f32 var_f30;
        if (field_0x2c > 21.0f) {
            var_f30 = 21.0f;
        } else {
            var_f30 = field_0x2c;
        }

        field_0x24->setFrame(var_f30);
        field_0x1c->setFrame(field_0x30);
        
        mScrn->animation();
        field_0xc->scale(0.6f, 0.6f);
        field_0xc->translate(mPosX, mPosY);

        if (!(field_0x2c < 15.0f)) {
            f32 var_f31;
            if (field_0x2c < 21.0f) {
                var_f31 = ((field_0x2c - 15.0f) * 40.0f) * 0.16666667f;
            } else {
                var_f31 = ((field_0x4 * 0.00390625f) + 0.5f) * 40.0f;
            }

            mCursor0->translate(0.0f, -var_f31);
            mCursor1->translate(var_f31 * cM_fcos(2.617994f), var_f31 * cM_fsin(2.617994f));
            mCursor2->translate(var_f31 * cM_fcos(0.5235988f), var_f31 * cM_fsin(0.5235988f));
        }

        mScrn->draw(0.0f, 0.0f, dComIfGp_getCurrentGrafPort());
    }
}

/* 80126650-801266C0 120F90 0070+00 1/1 0/0 0/0 .text            create__15daAlink_sight_cFv */
BOOL daAlink_sight_c::create() {
    if (!mLockCursor.create()) {
        return false;
    }

    ResTIMG* data = (ResTIMG*)dComIfG_getObjectRes(l_arcName, daAlink_c::getSightBti());
    setSightImage(data);
    return true;
}

/* 801266C0-80126710 121000 0050+00 1/0 0/0 0/0 .text            draw__15daAlink_sight_cFv */
void daAlink_sight_c::draw() {
    if (mLockFlag) {
        mLockCursor.setPos(field_0x14[0][3], field_0x14[1][3]);
        mLockCursor.draw();
    } else {
        daPy_sightPacket_c::draw();
    }
}

/* 80126710-80126740 121050 0030+00 2/2 0/0 0/0 .text            onLockFlg__15daAlink_sight_cFv */
void daAlink_sight_c::onLockFlg() {
    if (mLockFlag) {
        return;
    }
    mLockFlag = true;
    mLockCursor.initFrame();
}
