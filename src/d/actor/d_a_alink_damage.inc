/**
 * d_a_alink_damage.inc
 * Player Damage action handling
 */

#include "d/actor/d_a_alink.h"
#include "d/actor/d_a_horse.h"

/* 800D6D94-800D6DA4 0D16D4 0010+00 0/0 0/0 2/2 .text            getFreezeR__9daAlink_cCFv */
s16 daAlink_c::getFreezeR() const {
    return daAlinkHIO_damage_c0::m.mFreezeR;
}

/* 800D6DA4-800D6DB4 0D16E4 0010+00 0/0 0/0 2/2 .text            getFreezeG__9daAlink_cCFv */
s16 daAlink_c::getFreezeG() const {
    return daAlinkHIO_damage_c0::m.mFreezeG;
}

/* 800D6DB4-800D6DC4 0D16F4 0010+00 0/0 0/0 2/2 .text            getFreezeB__9daAlink_cCFv */
s16 daAlink_c::getFreezeB() const {
    return daAlinkHIO_damage_c0::m.mFreezeB;
}

/* 800D6DC4-800D6DF0 0D1704 002C+00 2/2 0/0 0/0 .text checkMiddleBossGoronRoom__9daAlink_cFv */
bool daAlink_c::checkMiddleBossGoronRoom() {
    return checkStageName("D_MN04B");
}

/* 800D6DF0-800D6E24 0D1730 0034+00 1/0 0/0 0/0 .text setDkCaught__9daAlink_cFP10fopAc_ac_c */
void daAlink_c::setDkCaught(fopAc_ac_c* param_0) {
    if (!checkNoResetFlg1(FLG1_UNK_1)) {
        onNoResetFlg1(FLG1_UNK_1);
        field_0x28f8 = fopAcM_GetID(param_0);
    }
}

/* 800D6E24-800D6F00 0D1764 00DC+00 2/2 0/0 0/0 .text            freezeTimerDamage__9daAlink_cFv */
void daAlink_c::freezeTimerDamage() {
    mProcVar0.field_0x3008--;
    mProcVar1.field_0x300a++;

    if (mProcVar1.field_0x300a % 45 == 0) {
        setDamagePoint(1, 1, 0, 0);
    }

    if (escapeTrigger()) {
        mProcVar0.field_0x3008 -= 2;
    }

    if (checkInputOnR() && abs((s16)(mStickAngle - mPrevStickAngle)) > 0x1000) {
        mProcVar0.field_0x3008 -= 2;
    }

    if (mProcVar0.field_0x3008 < 0) {
        mProcVar0.field_0x3008 = 0;
    }
}

/* 800D6F00-800D6F2C 0D1840 002C+00 1/0 0/0 0/0 .text onPressedDamage__9daAlink_cFRC4cXyzs */
void daAlink_c::onPressedDamage(cXyz const& param_0, s16 param_1) {
    onNoResetFlg2(FLG2_UNK_1000);
    field_0x3104 = param_1;
    field_0x3744 = param_0;
}

/* 800D6F2C-800D6FE0 0D186C 00B4+00 3/3 0/0 0/0 .text checkNoLandDamageSlidePolygon__9daAlink_cFv
 */
BOOL daAlink_c::checkNoLandDamageSlidePolygon() {
    if (field_0x2fbb == 3) {
        return true;
    }

    if (dComIfG_Bgsp().ChkPolySafe(mLinkAcch.m_gnd)) {
        cM3dGPla poly;
        dComIfG_Bgsp().GetTriPla(mLinkAcch.m_gnd, &poly);

        if (poly.mNormal.y < field_0x3470) {
            return true;
        }
    }

    return false;
}


/* 800D6FE0-800D70A0 0D1920 00C0+00 6/6 0/0 0/0 .text            checkCutLandDamage__9daAlink_cFv */
void daAlink_c::checkCutLandDamage() {
    if (!checkEventRun()) {
        f32 var_f31 = (mFallHeight - current.pos.y) * 0.0099999998f;

        if (var_f31 >= daAlinkHIO_damFall_c0::m.mSmallDmgHeight && !checkNoLandDamageSlidePolygon())
        {
            if (var_f31 >= daAlinkHIO_damFall_c0::m.mBigDmgHeight) {
                setLandDamagePoint(8);
            } else {
                setLandDamagePoint(4);
            }

            onModeFlg(8);
        }
    }
}

/* 800D70A0-800D7160 0D19E0 00C0+00 2/2 0/0 0/0 .text checkCaughtEscapeCutTurn__9daAlink_cFv */
BOOL daAlink_c::checkCaughtEscapeCutTurn() {
    if (mLinkAcch.ChkGroundHit() && (i_checkSwordGet() || checkWolf()) &&
        checkCutTurnInputTrigger())
    {
        if (checkWolf()) {
            return procWolfRollAttackInit(2, 0);
        }

        if (mEquipItem != 0x103) {
            deleteEquipItem(0, 0);
            setSwordModel();
        }

        return procCutTurnInit(1, 2);
    }

    return 0;
}

/* 800D7160-800D7208 0D1AA0 00A8+00 1/0 0/0 0/0 .text            setThrowDamage__9daAlink_cFsffiii
 */
bool daAlink_c::setThrowDamage(s16 param_0, f32 param_1, f32 param_2, int param_3, int param_4,
                               int param_5) {
    field_0x3408 = param_1;
    field_0x340c = param_2;
    field_0x318c = param_3;
    field_0x2ffe = param_0;

    if (param_4) {
        onEndResetFlg0(ERFLG0_UNK_40);
    } else {
        onEndResetFlg0(ERFLG0_UNK_80);
    }

    if (param_5 == 1) {
        onEndResetFlg0(ERFLG0_UNK_40000000);
    } else if (param_5 == 2) {
        onEndResetFlg1(ERFLG1_UNK_80);
    }

    if (getSumouMode()) {
        cancelSumouMode();
    }

    return true;
}

/* 800D7208-800D72BC 0D1B48 00B4+00 2/2 0/0 0/0 .text            damageMagnification__9daAlink_cFii
 */
f32 daAlink_c::damageMagnification(int i_checkZoraMag, int param_1) {
    f32 base_mag;

    if (param_1 == 0 && checkNoResetFlg3(FLG3_UNK_40000000) &&
        !checkEndResetFlg2(ERFLG2_UNK_40))
    {
        base_mag = 1.5f;
    } else {
        base_mag = 1.0f;
    }

    if (checkWolf() && !checkCargoCarry() && param_1 == 0) {
        return 2.0f * base_mag;
    }

    if (checkZoraWearAbility() && i_checkZoraMag) {
        return 10.0f * base_mag;
    }

    return base_mag;
}

/* 800D72BC-800D7478 0D1BFC 01BC+00 6/6 1/1 0/0 .text            setDamagePoint__9daAlink_cFiiii */
// NONMATCHING - regalloc
int daAlink_c::setDamagePoint(int i_dmgAmount, int i_checkZoraMag, int i_setDmgTimer, int param_3) {
    if (i_dmgAmount <= 0) {
        dComIfGp_setItemLifeCount(-i_dmgAmount, 0);
        return 0;
    }

    f32 magnified_dmgF = (f32)i_dmgAmount * damageMagnification(i_checkZoraMag, param_3);
    int magnified_dmg = magnified_dmgF;
    if ((int)(magnified_dmgF * 10.0f) % 10 != 0) {
        magnified_dmg++;
    }

    if (checkWolf()) {
        offWolfEyeUp();
    }

    if (checkMagicArmorNoDamage()) {
        dComIfGp_setItemRupeeCount(-magnified_dmg * 10);
    } else {
        dComIfGp_setItemLifeCount(-magnified_dmg, 0);
    }

    onResetFlg1(RFLG1_UNK_400);
    mSwordUpTimer = 0;

    if (i_setDmgTimer) {
        mDamageTimer = daAlinkHIO_damage_c0::m.mInvincibleTime;
        setDamageColorTime();
    }

    field_0x3006 = 0;
    return 0;
}

/* 800D7478-800D74A4 0D1DB8 002C+00 6/6 0/0 0/0 .text            setDamagePointNormal__9daAlink_cFi
 */
void daAlink_c::setDamagePointNormal(int i_dmgAmount) {
    setDamagePoint(i_dmgAmount, FALSE, TRUE, 0);
}

/* 800D74A4-800D74F4 0D1DE4 0050+00 3/3 0/0 0/0 .text            setLandDamagePoint__9daAlink_cFi */
void daAlink_c::setLandDamagePoint(int i_dmgAmount) {
    onEndResetFlg2(ERFLG2_UNK_40);
    setDamagePoint(i_dmgAmount, FALSE, TRUE, 0);
    offEndResetFlg2(ERFLG2_UNK_40);
}

/* 800D74F4-800D76C4 0D1E34 01D0+00 11/11 0/0 0/0 .text getDamageVec__9daAlink_cFP12dCcD_GObjInf
 */
cXyz* daAlink_c::getDamageVec(dCcD_GObjInf* i_hitObj) {
    cXyz* vec = i_hitObj->GetTgRVecP();
    cXyz sp40;

    f32 var_f31 = vec->abs2XZ();

    if (checkResetFlg1(RFLG1_UNK_2)) {
        sp40.set(cM_ssin(shape_angle.y) * -10.0f, 0.0f, cM_scos(shape_angle.y) * -10.0f);
        i_hitObj->SetTgRVec(sp40);
    } else if (var_f31 < 0.1f) {
        if (i_hitObj->GetTgHitAc() != NULL) {
            sp40 = current.pos - i_hitObj->GetTgHitAc()->current.pos;
        } else {
            sp40 = current.pos - *i_hitObj->GetTgHitPosP();
        }

        var_f31 = sp40.abs2();
        if (var_f31 < 0.1f) {
            sp40.x = cM_ssin(shape_angle.y) * -10.0f;
            sp40.y = 0.0f;
            sp40.z = cM_scos(shape_angle.y) * -10.0f;
        } else {
            sp40 *= 10.0f / JMAFastSqrt(var_f31);
        }

        i_hitObj->SetTgRVec(sp40);
    }

    multVecMagneBootInvMtx(vec);
    return vec;
}

/* 800D76C4-800D7768 0D2004 00A4+00 1/1 0/0 0/0 .text            setDashDamage__9daAlink_cFv */
void daAlink_c::setDashDamage() {
    setUpperAnimeParam(0xAD, UPPER_2, &daAlinkHIO_damage_c0::m.mDashDmgAnm);
    setFacePriBck(0x121);
    setFacePriTexture(FTANM_UNK_27);
    voiceStart(Z2SE_AL_V_DAMAGE_S);
    seStartOnlyReverb(Z2SE_AL_DAMAGE_NORMAL);
    freeGrabItem();
}

/* 800D7768-800D77C8 0D20A8 0060+00 2/2 0/0 3/3 .text
 * checkIcePolygonDamage__9daAlink_cFP13cBgS_PolyInfo           */
BOOL daAlink_c::checkIcePolygonDamage(cBgS_PolyInfo* i_poly) {
    if (dComIfG_Bgsp().GetPolyAtt0(*i_poly) == 8 && dKy_pol_argument_get(i_poly) & 0x60) {
        return TRUE;
    }

    return FALSE;
}

/* 800D77C8-800D7820 0D2108 0058+00 8/8 0/0 0/0 .text checkMagicArmorNoDamage__9daAlink_cFv */
BOOL daAlink_c::checkMagicArmorNoDamage() {
    return checkMagicArmorWearAbility() && !checkMagicArmorHeavy();
}

/* 800D7820-800D7A98 0D2160 0278+00 1/1 0/0 0/0 .text            checkPolyDamage__9daAlink_cFv */
int daAlink_c::checkPolyDamage() {
    if (dComIfGs_PolyDamageOff_Check()) {
        return 0;
    }

    if (checkEndResetFlg1(ERFLG1_UNK_4000)) {
        return 4;
    }

    int var_r29;
    if (!checkBoardRide() && mLinkAcch.i_ChkGroundHit()) {
        if (dComIfG_Bgsp().ChkPolySafe(mLinkAcch.m_gnd) && (dKy_pol_argument_get(&mLinkAcch.m_gnd) & 0x60)) {
            var_r29 = 1;
            if (checkIcePolygonDamage(&mLinkAcch.m_gnd)) {
                var_r29 |= 0x80;
            }

            cM3dGPla sp38;
            dComIfG_Bgsp().GetTriPla(mLinkAcch.m_gnd, &sp38);
            field_0x311e = sp38.mNormal.atan2sX_Z();
            return var_r29;
        }
    }

    if (!checkBoardRide() && ((checkWaterPolygonUnder() && dComIfG_Bgsp().ChkPolySafe(mLinkAcch.m_wtr) && ((dKy_pol_argument_get(&mLinkAcch.m_wtr) & 0x60) || field_0x2fbc == 6)) || (checkModeFlg(0x40) && field_0x33bc < field_0x33b8 && -1000000000.0f != field_0x33b8 && ((field_0x2fc6 & 0x60) || field_0x2fc5 == 6) && (field_0x2fc5 != 6 || !(field_0x33b8 > field_0x33d8 + daAlinkHIO_basic_c0::m.mLavaDeathDepth))))) {
        return 2;
    }

    if (mLinkAcch.ChkWallHit()) {
        dBgS_AcchCir* acch_cir = mAcchCir;
        
        for (int i = 0; i < 3; i++) {
            if (acch_cir->ChkWallHit()) {
                if (dComIfG_Bgsp().ChkPolySafe(*acch_cir) && (dKy_pol_argument_get(acch_cir) & 0x60)) {
                    var_r29 = 3;

                    field_0x311e = acch_cir->GetWallAngleY();
                    if (checkIcePolygonDamage(acch_cir)) {
                        var_r29 |= 0x80;
                    }

                    if (dKy_pol_argument_get(acch_cir) & 0x20) {
                        var_r29 |= 0x40;
                    }

                    return var_r29;
                }
            }
            acch_cir++;
        }
    }

    return field_0x2fca;
}

/* 800D7A98-800D7B18 0D23D8 0080+00 1/1 0/0 0/0 .text
 * checkElecReturnDamage__9daAlink_cFR12dCcD_GObjInfPP10fopAc_ac_c */
BOOL daAlink_c::checkElecReturnDamage(dCcD_GObjInf& param_0, fopAc_ac_c** param_1) {
    if (param_0.ChkAtHit() && param_0.GetAtHitGObj() != NULL) {
        dCcD_GObjInf* gobj_p = (dCcD_GObjInf*)param_0.GetAtHitGObj();

        if (gobj_p->GetTgSpl() == dCcG_Tg_Spl_UNK_1) {
            *param_1 = param_0.GetAtHitAc();
            return true;
        }
    }

    return false;
}

/* 800D7B18-800D7BE8 0D2458 00D0+00 1/1 0/0 0/0 .text            damageTimerCount__9daAlink_cFv */
void daAlink_c::damageTimerCount() {
    if (!checkModeFlg(8)) {
        if (mDamageColorTime != 0) {
            mDamageColorTime--;
        }
        mDamageTimer--;

        if (mProcID != PROC_DK_CAUGHT && checkNoResetFlg1(FLG1_UNK_1)) {
            offNoResetFlg1(FLG1_UNK_1);
        }

        if (!checkDkCaught2Anime() && checkNoResetFlg0(FLG0_UNK_20000)) {
            offNoResetFlg0(FLG0_UNK_20000);
        }
    } else if (mDamageColorTime != 0) {
        mDamageColorTime--;

        if ((mDamageColorTime + mDamageTimer) % 16 == 0) {
            setDamageColorTime();
        }
    }
}

/* 800D7BE8-800D7C14 0D2528 002C+00 3/3 0/0 0/0 .text            checkHugeAttack__9daAlink_cCFi */
bool daAlink_c::checkHugeAttack(int param_0) const {
    return param_0 == 2 || param_0 == 7 || param_0 == 11 || param_0 == 14;
}

/* 800D7C14-800D7C40 0D2554 002C+00 3/3 0/0 0/0 .text            checkLargeAttack__9daAlink_cCFi */
bool daAlink_c::checkLargeAttack(int param_0) const {
    return param_0 == 1 || param_0 == 6 || param_0 == 10 || param_0 == 13;
}

/* 800D7C40-800D8F3C 0D2580 12FC+00 1/1 0/0 0/0 .text            checkDamageAction__9daAlink_cFv */
BOOL daAlink_c::checkDamageAction() {
    s16 spE = field_0x3006;
    field_0x3006 = 0;

    u8 spA = field_0x2fca;
    field_0x2fca = 0;

    if (checkAnmEnd(&mUpperFrameCtrl[2])) {
        if (checkDashDamageAnime()) {
            resetUpperAnime(UPPER_2, daAlinkHIO_damage_c0::m.mDashDmgAnm.mInterpolation);
        } else if (checkWolfHeadDamageAnime()) {
            resetUpperAnime(UPPER_2, 3.0f);
        } else if (checkSmallUpperGuardAnime()) {
            resetUpperAnime(UPPER_2, 3.0f);
            setUpperGuardAnime(-1.0f);
        } else if (checkZoraSwimDamageAnime()) {
            resetUpperAnime(UPPER_2, 3.0f);
        }
    }

    if (checkEndResetFlg0(ERFLG0_UNK_40)) {
        if (getSumouMode()) {
            cancelSumouMode();
        }
    
        if (checkEndResetFlg1(ERFLG1_UNK_80)) {
            return procOctaIealSpitInit();
        }
    
        if (checkEndResetFlg0(ERFLG0_UNK_40000000)) {
            return commonFallInit(4);
        }
    
        if (mProcID == PROC_WOLF_CARGO_CARRY && mProcVar2.field_0x300c == 0) {
            offNoResetFlg0(FLG0_UNK_100000);
        }
    
        return procCoLargeDamageInit(-3, 1, 0, 0, NULL, 0);
    }

    if (checkEventRun()) {
        offNoResetFlg1(FLG1_UNK_1);
        offNoResetFlg0(FLG0_UNK_20000);
        return 0;
    }

    if (checkNoResetFlg1(FLG1_UNK_1)) {
        if (!checkModeFlg(0x70C52) && !checkWolf() && procDkCaughtInit(field_0x28f8)) {
            return 1;
        }

        if (mProcID != PROC_DK_CAUGHT) {
            offNoResetFlg1(FLG1_UNK_1);
        }
    }

    if (checkNoResetFlg0(FLG0_UNK_20000)) {
        if ((!checkModeFlg(0x70C52)) && (!checkWolf()) && (!checkDkCaught2Anime())) {
            setUpperAnimeBase(getMainBckData(ANM_HORSE_WAIT_D_B)->m_underID);
            setFacePriAnime(ANM_HORSE_WAIT_D_B);
            field_0x30f6 = daAlinkHIO_damCaught_c0::m.field_0x14;
            field_0x2f96 = 1;
            field_0x2f97 = 6;
            onNoResetFlg1(FLG1_UNK_100000);
            return procWaitInit();
        }

        if (!checkDkCaught2Anime()) {
            offNoResetFlg0(FLG0_UNK_20000);
        }
    }

    if (checkEndResetFlg0(ERFLG0_UNK_80)) {
        if (checkEndResetFlg1(ERFLG1_UNK_80)) {
            return procOctaIealSpitInit();
        }

        if (checkEndResetFlg0(ERFLG0_UNK_40000000)) {
            return commonFallInit(4);
        }

        return procCoLargeDamageInit(-3, 1, 0, 0, NULL, 0);
    }

    if (checkEndResetFlg1(ERFLG1_UNK_400)) {
        return procCoSandWallHitInit();
    }

    if (checkNoResetFlg2(FLG2_UNK_1000)) {
        if (commonLargeDamageUpInit(-4, 1, 0, 0)) {
            current.pos = field_0x3744;
            shape_angle.y = field_0x3104;
            current.angle.y = shape_angle.y;
            return 1;
        }
        return 0;
    }

    if (mDamageTimer != 0) {
        return checkWolfBarrierHitReverse();
    }

    dCcD_GObjInf* var_r29 = NULL;
    for (int i = 0; i < 3; i++) {
        if (field_0x850[i].ChkTgHit() && (field_0x2fb8 == 0 || (1 << i) == 0)) {
            var_r29 = &field_0x850[i];
            break;
        }
    }

    if (var_r29 == NULL && checkWolf()) {
        var_r29 = &field_0xFB8;
    }

    if (checkEndResetFlg1(ERFLG1_UNK_8000) && checkWolf()) {
        return procWolfCargoCarryInit();
    }

    BOOL armor_no_dmg = checkMagicArmorNoDamage();
    fopAc_ac_c* sp30 = NULL;
    field_0x2fca = spA;
    int sp2C = checkPolyDamage();
    field_0x2fca = 0;
    field_0x3006 = spE;

    if (sp2C & 0x80) {
        field_0x3006++;
        if (field_0x3006 < daAlinkHIO_damage_c0::m.mFreezeTime) {
            sp2C = 0;
        }
    } else if (field_0x3006 > 3) {
        field_0x3006 -= 3;
    } else {
        field_0x3006 = 0;
    }

    if (sp2C != 0) {
        int sp28 = (sp2C & 7);
        setDamagePoint(1, sp2C & 0x80, TRUE, 0);

        if (checkWolf()) {
            mDamageTimer = daAlinkHIO_damage_c0::m.mWolfFloorInvincibleTime;
            setDamageColorTime();
        }

        if (checkModeFlg(0x4000000)) {
            dComIfGp_getVibration().StartShock(2, 0x1F, cXyz(0.0f, 1.0f, 0.0f));

            if (checkWolf()) {
                setWolfHeadDamage();
            } else {
                voiceStart(Z2SE_AL_V_DAMAGE_S);
                seStartOnlyReverb(Z2SE_AL_DAMAGE_NORMAL);
            }
        } else {
            if (!checkModeFlg(0x40000) && ((sp2C & 0x40) || (!mLinkAcch.i_ChkGroundHit() && (sp28 == 3 || sp28 == 4)))) {
                dComIfGp_getVibration().StartShock(2, 0x1F, cXyz(0.0f, 1.0f, 0.0f));

                int sp24;
                if (sp2C & 0x80) {
                    sp24 = 1;
                } else {
                    sp24 = 0;
                }

                if (sp28 == 4) {
                    field_0x311e = shape_angle.y;
                }

                return procCoLargeDamageInit(-5, 1, 0, 0, NULL, sp24);
            }

            dComIfGp_getVibration().StartShock(2, 0x1F, cXyz(0.0f, 1.0f, 0.0f));

            if (checkWolf()) {
                if (checkModeFlg(0x40000)) {
                    setWolfHeadDamage();
                } else if (sp2C & 0x80) {
                    return procWolfDamageInit(NULL);
                } else {
                    return procCoPolyDamageInit();
                }
            } else if (checkModeFlg(0x40000)) {
                return procSwimDamageInit(NULL);
            } else if (sp2C & 0x80) {
                return procDamageInit(NULL, 0);
            } else {
                return procCoPolyDamageInit();
            }
        }
    } else if ((mEquipItem == 0x103 || (checkHookshotItem(mEquipItem) && !mAtCps[0].ChkAtSPrm(0x20))) && (checkElecReturnDamage(mAtCps[0], &sp30) || checkElecReturnDamage(mAtCps[1], &sp30) || checkElecReturnDamage(mAtCps[2], &sp30))) {
        setDamagePointNormal(2);
        onResetFlg1(RFLG1_UNK_2);
        dComIfGp_getVibration().StartShock(4, 0x1F, cXyz(0.0f, 1.0f, 0.0f));

        if (checkModeFlg(0x4000000)) {
            if (checkWolf()) {
                setWolfHeadDamage();
            } else {
                voiceStart(Z2SE_AL_V_DAMAGE_S);
                seStartOnlyReverb(Z2SE_AL_DAMAGE_NORMAL);
            }
        } else {
            return procCoElecDamageInit(sp30, NULL, 0);
        }
    } else if (var_r29 != NULL && var_r29->ChkTgHit() && mProcID != PROC_GUARD_SLIP) {
        fopAc_ac_c* tghit_ac = var_r29->GetTgHitAc();
        s16 tghit_ac_name;
        if (tghit_ac != NULL) {
            tghit_ac_name = fopAcM_GetName(tghit_ac);
        } else {
            tghit_ac_name = PROC_ALINK;
        }

        dCcD_GObjInf* tghit_gobj = var_r29->GetTgHitGObj();
        int at_spl;
        u8 at_mtrl;
        if (tghit_gobj != NULL) {
            at_spl = tghit_gobj->GetAtSpl();
            at_mtrl = tghit_gobj->GetAtMtrl();
        } else {
            at_spl = field_0x814.GetAtSpl();
            at_mtrl = dCcD_MTRL_NONE;
        }
    
        if (at_spl == 8 && checkWolf()) {
            at_spl = 1;
        }
    
        if (var_r29->ChkTgShieldHit()) {
            setGuardSe(var_r29);

            if (checkHugeAttack(at_spl)) {
                dComIfGp_getVibration().StartShock(5, 1, cXyz(0.0f, 1.0f, 0.0f));
            } else if (checkLargeAttack(at_spl)) {
                dComIfGp_getVibration().StartShock(4, 1, cXyz(0.0f, 1.0f, 0.0f));
            } else if (at_spl == 8) {
                dComIfGp_getVibration().StartShock(2, 1, cXyz(0.0f, 1.0f, 0.0f));
            } else {
                dComIfGp_getVibration().StartShock(3, 1, cXyz(0.0f, 1.0f, 0.0f));
            }
    
            if (!armor_no_dmg && at_mtrl == dCcD_MTRL_FIRE && checkWoodShieldEquip() && field_0x2fcb == 0 && !field_0x2e44.checkPassNum(15)) {
                field_0x2fcb = 120;
                seStartOnlyReverb(Z2SE_AL_BURN_START);
            }

            if ((mProcID != PROC_GUARD_ATTACK || (tghit_ac_name != PROC_E_TK_BALL && tghit_ac_name != PROC_KN_BULLET)) && !checkModeFlg(0x4000000)) {
                if (at_spl == 10 || at_spl == 11 || at_spl == 9) {
                    return procGuardBreakInit();
                }

                if (!armor_no_dmg) {
                    if (var_r29->ChkTgShield()) {
                        if (checkHorseRide()) {
                            if ((checkLargeAttack(at_spl) || checkHugeAttack(at_spl)) && (!checkSpecialHorseRide())) {
                                return procHorseHangInit(var_r29, 0);
                            }
                        } else if (at_spl == 8 || checkModeFlg(0x70C52)) {
                            if (!checkModeFlg(0x400) && mEquipItem != IRONBALL) {
                                setSmallGuard(var_r29);
                            }
                        } else {
                            return procGuardSlipInit(at_spl, var_r29);
                        }
                    } else if (var_r29->ChkTgSpShield()) {
                        return procGuardSlipInit(at_spl, var_r29);
                    }
                }
            }
        } else {
            int dmg = field_0x814.GetDmg();
            if (var_r29->ChkTgHit() && tghit_gobj != NULL && tghit_gobj->GetAtType() == AT_TYPE_BOMB) {
                if (checkNoResetFlg3(FLG3_UNK_40000000)) {
                    dmg = 1;
                } else {
                    dmg = 2;
                }
            }

            if (at_mtrl == dCcD_MTRL_UNK_5) {
                dComIfGp_getVibration().StartShock(4, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
            } else if (checkHugeAttack(at_spl)) {
                dComIfGp_getVibration().StartShock(8, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
            } else if (checkLargeAttack(at_spl)) {
                dComIfGp_getVibration().StartShock(4, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
            } else {
                dComIfGp_getVibration().StartShock(2, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
            }

            setDamagePoint(dmg, at_mtrl == dCcD_MTRL_FIRE || at_mtrl == dCcD_MTRL_ICE, TRUE, 0);

            if (armor_no_dmg && at_mtrl != dCcD_MTRL_UNK_5 && at_mtrl != dCcD_MTRL_ICE) {
                setGuardSe(var_r29);
            } else if (at_mtrl == dCcD_MTRL_FIRE) {
                seStartOnlyReverb(Z2SE_AL_BURN_START);
                if (at_spl == 8) {
                    initFirePointDamageEffect(var_r29->GetTgHitPosP(), var_r29);
                } else {
                    initFirePointDamageEffectAll();
                }
            }

            if (checkModeFlg(0x4000000)) {
                if (checkWolf()) {
                    setWolfHeadDamage();
                } else if (!armor_no_dmg) {
                    voiceStart(Z2SE_AL_V_DAMAGE_S);
                    seStartOnlyReverb(Z2SE_AL_DAMAGE_NORMAL);
                }
            } else if (at_mtrl == dCcD_MTRL_UNK_5 && !checkSpecialHorseRide()) {
                return procCoElecDamageInit(var_r29->GetTgHitAc(), var_r29, at_spl);
            } else if (checkReinRide()) {
                if (at_mtrl == dCcD_MTRL_UNK_5) {
                    return procCoLargeDamageInit(-1, 1, 0, 0, var_r29, 0);
                }

                if (!checkBoarSingleBattle() && (mProcID == PROC_HORSE_HANG || mProcID == PROC_BOAR_RUN || mProcID == PROC_HORSE_RUN || checkLargeAttack(at_spl) || checkHugeAttack(at_spl))) {
                    setHorseZeldaDamage();
                    procCoLargeDamageInit(-1, 1, 0, 0, var_r29, 0);
                    onModeFlg(0x2000);
                    return 1;
                }

                if (!armor_no_dmg) {
                    if (checkHorseNotDamageReaction()) {
                        voiceStart(Z2SE_AL_V_DAMAGE_S);
                        seStartOnlyReverb(Z2SE_AL_DAMAGE_NORMAL);
                    } else if (at_spl == 8 || checkHorseZelda()) {
                        return procHorseDamageInit(var_r29);
                    } else {
                        return procHorseHangInit(var_r29, 1);
                    }
                }
            } else if (checkModeFlg(0x40000)) {
                if (checkWolf()) {
                    setWolfHeadDamage();
                } else if (!armor_no_dmg) {
                    return procSwimDamageInit(var_r29);
                }
            } else if (dmg == 0 && !checkWolf() && (at_spl == 10 || at_spl == 11 || at_spl == 9) && mLinkAcch.i_ChkGroundHit() && !checkModeFlg(0x70C52)) {
                return procGuardBreakInit();
            } else if (checkHugeAttack(at_spl)) {
                return procCoLargeDamageInit(-1, 0, 0, 0, var_r29, 0);
            } else if (checkModeFlg(0x70C52) || checkLargeAttack(at_spl)) {
                if (checkModeFlg(0x10000) && !checkLargeAttack(at_spl)) {
                    voiceStart(Z2SE_AL_V_DAMAGE_S);
                    seStartOnlyReverb(Z2SE_AL_DAMAGE_NORMAL);
                    procFallInit(1, daAlinkHIO_autoJump_c0::m.mFallInterpolation);
                    onModeFlg(8);
                    return 1;
                }

                if (at_spl == 8 && (mProcID == PROC_WOLF_ROPE_MOVE || mProcID == PROC_WOLF_ROPE_SUBJECTIVITY || mProcID == PROC_WOLF_ROPE_STAGGER)) {
                    cXyz* sp14 = getDamageVec(var_r29);
                    if ((s16)(sp14->atan2sX_Z() - shape_angle.y) >= 0) {
                        return procWolfRopeHangInit(2);
                    }
                    return procWolfRopeHangInit(3);
                }

                return procCoLargeDamageInit(-1, 1, 0, 0, var_r29, 0);
            } else if (!armor_no_dmg || at_mtrl == dCcD_MTRL_ICE) {
                if (checkDashAnime() && at_mtrl != dCcD_MTRL_ICE) {
                    setDashDamage();
                } else if (mProcID == PROC_WOLF_MOVE && at_mtrl != dCcD_MTRL_ICE && mNormalSpeed > field_0x594 * 0.7f) {
                    setWolfHeadDamage();
                } else if (checkWolf()) {
                    return procWolfDamageInit(var_r29);
                } else {
                    return procDamageInit(var_r29, 0);
                }
            }
        }
    }

    if (checkHorseRide()) {
        daHorse_c* horsep = dComIfGp_getHorseActor();
        if (horsep->checkCowHit() != 0) {
            current.angle.y = horsep->getCowHitAngle();

            if (checkBoarSingleBattle()) {
                dComIfGp_getVibration().StartShock(8, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
                return procCoLargeDamageInit(-1, 0, 0, 0, NULL, 0);
            }
    
            dComIfGp_getVibration().StartShock(4, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
            return procCoLargeDamageInit(-1, 1, 0, 0, NULL, 0);
        }
    }

    field_0x814.ClrTg();
    field_0x814.ClrAt();
    return checkWolfBarrierHitReverse();
}

/* 800D8F3C-800D9514 0D387C 05D8+00 2/2 0/0 0/0 .text procDamageInit__9daAlink_cFP12dCcD_GObjInfi
 */
int daAlink_c::procDamageInit(dCcD_GObjInf* param_0, int param_1) {
    BOOL freeze_player;

    if (!param_1 && (param_0 == NULL || (param_0->GetTgHitGObj() != NULL && param_0->GetTgHitGObj()->GetAtMtrl() == dCcD_MTRL_ICE))) {
        freeze_player = true;
        voiceStart(Z2SE_AL_V_DAMAGE_FREEZE);
        seStartOnlyReverb(Z2SE_AL_FREEZE);
    } else {
        seStartOnlyReverb(Z2SE_AL_DAMAGE_NORMAL);
        freeze_player = false;
        
        if (!param_1) {
            voiceStart(Z2SE_AL_V_DAMAGE_S);
        }
    }

    if (checkIronBallWaitAnime() && !freeze_player && !param_1) {
        return 1;
    }

    commonProcInit(PROC_DAMAGE);

    cXyz sp7C;
    f32 var_f31;
    f32 var_f30 = cM_ssin(shape_angle.y);
    f32 var_f29 = cM_scos(shape_angle.y);

    cXyz* var_r29;
    if (param_0 != NULL) {
        var_r29 = getDamageVec(param_0);   
    } else if (param_1) {
        s16 var_r24 = field_0x3102 + 0x8000;
        sp7C.set(cM_ssin(var_r24), 0.0f, cM_scos(var_r24));
        var_r29 = &sp7C;
        offModeFlg(8);
    } else {
        sp7C.set(cM_ssin(field_0x311e), 0.0f, cM_scos(field_0x311e));
        var_r29 = &sp7C;
    }

    cXyz sp88(var_r29->z * -var_f30 + var_r29->x * var_f29,
                var_r29->y,
                var_r29->z * var_f29 + var_r29->x * var_f30);
    
    mProcVar2.field_0x300c = cLib_minMaxLimit<s16>(cM_atan2s(sp88.z, sp88.y), -daAlinkHIO_damNormal_c0::m.field_0x50, daAlinkHIO_damNormal_c0::m.field_0x50);
    mProcVar3.field_0x300e = cLib_minMaxLimit<s16>(cM_atan2s(sp88.x, -JMAFastSqrt(sp88.y * sp88.y + sp88.z * sp88.z)), -daAlinkHIO_damNormal_c0::m.field_0x52, daAlinkHIO_damNormal_c0::m.field_0x52);

    if (freeze_player) {
        var_f31 = 0.0f;
    } else if (mTargetedActor != NULL) {
        var_f31 = daAlinkHIO_atnMove_c0::m.mWaitAnmSpeed;
    } else {
        var_f31 = daAlinkHIO_noActAtnMove_c0::m.mWaitAnmSpeed;
    }

    if (checkAtnLeftAnime()) {
        setUnderAnime(0x1A, UNDER_2, var_f31, 0.0f, -1, -1.0f);
    } else if (checkAtnRightAnime()) {
        setUnderAnime(0x1C, UNDER_2, var_f31, 0.0f, -1, -1.0f);
    }

    int direction = getDirectionFromAngle(cM_atan2s(-sp88.x, -sp88.z));
    if (direction == DIR_FORWARD) {
        setSingleAnimeParam(ANM_DMG_SMALL_A, &daAlinkHIO_damNormal_c0::m.field_0x0);
        field_0x3478 = daAlinkHIO_damNormal_c0::m.field_0x0.mCheckFrame;
    } else if (direction == DIR_BACKWARD) {
        setSingleAnimeParam(ANM_DMG_SMALL_B, &daAlinkHIO_damNormal_c0::m.field_0x14);
        field_0x3478 = daAlinkHIO_damNormal_c0::m.field_0x14.mCheckFrame;
    } else if (direction == DIR_LEFT) {
        setSingleAnimeParam(ANM_DMG_SMALL_LEFT, &daAlinkHIO_damNormal_c0::m.field_0x28);
        field_0x3478 = daAlinkHIO_damNormal_c0::m.field_0x28.mCheckFrame;
    } else {
        setSingleAnimeParam(ANM_DMG_SMALL_RIGHT, &daAlinkHIO_damNormal_c0::m.field_0x3C);
        field_0x3478 = daAlinkHIO_damNormal_c0::m.field_0x3C.mCheckFrame;
    }

    current.angle.y = var_r29->atan2sX_Z();
    mProcVar4.field_0x3010 = current.angle.y;

    mNormalSpeed = var_r29->absXZ() * daAlinkHIO_damNormal_c0::m.field_0x58 + daAlinkHIO_damNormal_c0::m.field_0x54;
    if (mNormalSpeed > daAlinkHIO_move_c0::m.mMaxSpeed) {
        mNormalSpeed = daAlinkHIO_move_c0::m.mMaxSpeed;
    }

    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;
    field_0x347c = M_PI / (frame_ctrl->getEnd() - frame_ctrl->getStart());

    if (freeze_player) {
        frame_ctrl->setRate(daAlinkHIO_damNormal_c0::m.field_0x60);
        frame_ctrl->setEnd(7);
        mNormalSpeed = 0.0f;
        mProcVar0.mIceFreezeTimer = 90;
        onNoResetFlg1(FLG1_ICE_FREEZE);
    } else {
        mProcVar0.mIceFreezeTimer = 0;
    }

    mProcVar1.field_0x300a = 0;
    return 1;
}

/* 800D9514-800D96DC 0D3E54 01C8+00 1/0 0/0 0/0 .text            procDamage__9daAlink_cFv */
int daAlink_c::procDamage() {
    daPy_frameCtrl_c* frame_ctrl = mUnderFrameCtrl;
    f32 var_f30 = frame_ctrl->getFrame() - frame_ctrl->getStart();
    f32 var_f31 = cM_fsin(field_0x347c * var_f30);

    mBodyAngle.x = mProcVar2.field_0x300c * var_f31;
    mBodyAngle.z = -mProcVar3.field_0x300e * var_f31;
    mBodyAngle.y = 0;

    cLib_chaseF(&mNormalSpeed, 0.0f, daAlinkHIO_damNormal_c0::m.field_0x5C);

    if (checkFreezeDamage()) {
        freezeTimerDamage();
    }

    if (checkAnmEnd(frame_ctrl)) {
        current.angle.y = shape_angle.y;

        if (!checkFreezeDamage()) {
            checkNextAction(0);
        } else if (mProcVar0.mIceFreezeTimer == 0) {
            seStartOnlyReverb(Z2SE_AL_FREEZE_RECOVER);
            procStEscapeInit();
            onModeFlg(8);
        }
    } else if (frame_ctrl->getFrame() > field_0x3478) {
        current.angle.y = shape_angle.y;
        onModeFlg(4);

        if (!checkNextAction(1)) {
            current.angle.y = mProcVar4.field_0x3010;
        }
    }

    return 1;
}

/* 800D96DC-800D9E88 0D401C 07AC+00 12/12 0/0 0/0 .text
 * procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi       */
int daAlink_c::procCoLargeDamageInit(int param_0, int param_1, s16 param_2, s16 param_3,
                                         dCcD_GObjInf* param_4, int param_5) {
    // NONMATCHING
    return 0;
}

/* 800D9E88-800DA180 0D47C8 02F8+00 1/0 0/0 0/0 .text            procCoLargeDamage__9daAlink_cFv */
int daAlink_c::procCoLargeDamage() {
    // NONMATCHING
    return 0;
}

/* 800DA180-800DA554 0D4AC0 03D4+00 2/2 0/0 0/0 .text procLargeDamageUpInit__9daAlink_cFiiss */
int daAlink_c::procLargeDamageUpInit(int param_0, int param_1, s16 param_2, s16 param_3) {
    // NONMATCHING
    return 0;
}

/* 800DA554-800DA82C 0D4E94 02D8+00 1/0 0/0 0/0 .text            procLargeDamageUp__9daAlink_cFv */
int daAlink_c::procLargeDamageUp() {
    // NONMATCHING
    return 0;
}

/* 800DA82C-800DAC28 0D516C 03FC+00 1/1 0/0 0/0 .text procCoLargeDamageWallInit__9daAlink_cFiiss
 */
int daAlink_c::procCoLargeDamageWallInit(int param_0, int param_1, s16 param_2, s16 param_3) {
    // NONMATCHING
    return 0;
}

/* 800DAC28-800DAC84 0D5568 005C+00 1/0 0/0 0/0 .text            procCoLargeDamageWall__9daAlink_cFv
 */
int daAlink_c::procCoLargeDamageWall() {
    if (mUnderFrameCtrl[0].checkAnmEnd()) {
        procCoLargeDamageInit(field_0x3198, mProcVar0.field_0x3008, field_0x3080, field_0x3082, NULL, 0);
    }

    return 1;
}

/* 800DAC84-800DAD90 0D55C4 010C+00 2/2 0/0 0/0 .text            procCoPolyDamageInit__9daAlink_cFv
 */
int daAlink_c::procCoPolyDamageInit() {
    seStartOnlyReverb(Z2SE_AL_DAMAGE_NORMAL);

    if (!checkWolf()) {
        voiceStart(Z2SE_AL_V_DAMAGE_S);
    }

    if (checkIronBallWaitAnime()) {
        return 1;
    }

    commonProcInit(PROC_POLY_DAMAGE);

    if (checkWolf()) {
        setSingleAnimeWolfParam(WANM_DMG_SMALL, &daAlinkHIO_wlDamage_c0::m.field_0x14);
        voiceStart(Z2SE_WL_V_DAMAGE);
        field_0x3478 = daAlinkHIO_wlDamage_c0::m.field_0x14.mCheckFrame;
    } else {
        setSingleAnimeParam(ANM_DMG, &daAlinkHIO_damage_c0::m.mFloorDmgAnm);
        field_0x3478 = daAlinkHIO_damage_c0::m.mFloorDmgAnm.mCheckFrame;
    }

    mNormalSpeed = 0.0f;
    return 1;
}

/* 800DAD90-800DAE10 0D56D0 0080+00 1/0 0/0 0/0 .text            procCoPolyDamage__9daAlink_cFv */
int daAlink_c::procCoPolyDamage() {
    if (mUnderFrameCtrl[0].checkAnmEnd()) {
        commonCheckNextAction(0);
    } else if (mUnderFrameCtrl[0].getFrame() > field_0x3478) {
        if (!checkWolf()) {
            onModeFlg(4);
        }

        commonCheckNextAction(1);
    }

    return 1;
}

/* 800DAE10-800DB060 0D5750 0250+00 2/2 0/0 0/0 .text            procLandDamageInit__9daAlink_cFi */
int daAlink_c::procLandDamageInit(int param_0) {
    // NONMATCHING
    return 0;
}

/* 800DB060-800DB140 0D59A0 00E0+00 1/0 0/0 0/0 .text            procLandDamage__9daAlink_cFv */
int daAlink_c::procLandDamage() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (field_0x3198 != 0) {
        if (frameCtrl->checkAnmEnd()) {
            checkNextAction(0);
        } else if (frameCtrl->getFrame() > daAlinkHIO_damFall_c0::m.mStandAnm.mCheckFrame) {
            onModeFlg(4);
            checkNextAction(1);
        }
    } else {
        if (frameCtrl->checkAnmEnd()) {
            if (mProcVar0.field_0x3008 > 0) {
                mProcVar0.field_0x3008--;
            } else {
                setSingleAnimeParam(ANM_DMG_FALL_RECOVER, &daAlinkHIO_damFall_c0::m.mStandAnm);
                field_0x3198 = 1;
            }
        }
    }

    return 1;
}

/* 800DB140-800DB418 0D5A80 02D8+00 1/1 0/0 0/0 .text
 * procCoElecDamageInit__9daAlink_cFP10fopAc_ac_cP12dCcD_GObjInfi */
int daAlink_c::procCoElecDamageInit(fopAc_ac_c* param_0, dCcD_GObjInf* param_1, int param_2) {
    // NONMATCHING
    return 0;
}

/* 800DB418-800DB5B0 0D5D58 0198+00 1/0 0/0 0/0 .text            procCoElecDamage__9daAlink_cFv */
int daAlink_c::procCoElecDamage() {
    // NONMATCHING
    return 0;
}

/* 800DB5B0-800DB610 0D5EF0 0060+00 2/2 0/0 0/0 .text            procStEscapeInit__9daAlink_cFv */
int daAlink_c::procStEscapeInit() {
    commonProcInit(PROC_HUMAN_ST_ESCAPE);
    setSingleAnimeParam(ANM_FROZEN_FREE, &daAlinkHIO_damCaught_c0::m.field_0x0);

    mUnderFrameCtrl[0].setFrame(7.0f);
    getNowAnmPackUnder(UNDER_0)->setFrame(7.0f);
    mNormalSpeed = 0.0f;

    return 1;
}

/* 800DB610-800DB6A4 0D5F50 0094+00 1/0 0/0 0/0 .text            procStEscape__9daAlink_cFv */
int daAlink_c::procStEscape() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;
    onEndResetFlg0(ERFLG0_UNK_8000000);

    if (frameCtrl->checkAnmEnd()) {
        checkNextAction(0);
    } else if (frameCtrl->getFrame() > daAlinkHIO_damCaught_c0::m.field_0x0.mCheckFrame) {
        onModeFlg(4);
        checkNextAction(1);
    }

    return 1;
}

/* 800DB6A4-800DB860 0D5FE4 01BC+00 1/1 0/0 0/0 .text            procDkCaughtInit__9daAlink_cFUi */
int daAlink_c::procDkCaughtInit(unsigned int param_0) {
    // NONMATCHING
    return 0;
}

/* 800DB860-800DBC98 0D61A0 0438+00 1/0 0/0 0/0 .text            procDkCaught__9daAlink_cFv */
int daAlink_c::procDkCaught() {
    // NONMATCHING
    return 0;
}

/* 800DBC98-800DBD1C 0D65D8 0084+00 2/2 0/0 0/0 .text            setScreamWaitAnime__9daAlink_cFv */
void daAlink_c::setScreamWaitAnime() {
    setSingleAnimeBase(ANM_WAIT_F);
    voiceStart(Z2SE_AL_V_TERRORED);
    mProcVar2.field_0x300c = 1;

    f32 tmp_0 = 0.0f;
    dComIfGp_getVibration().StartQuake(5, 1, cXyz(tmp_0, 1.0f, tmp_0));
}

/* 800DBD1C-800DBDA4 0D665C 0088+00 1/1 0/0 0/0 .text            procScreamWaitInit__9daAlink_cFv */
int daAlink_c::procScreamWaitInit() {
    commonProcInit(PROC_SCREAM_WAIT);

    if (checkEndResetFlg1(ERFLG1_UNK_2)) {
        setScreamWaitAnime();
    } else {
        setSingleAnimeBaseSpeed(ANM_WAIT, daAlinkHIO_move_c0::m.mWaitAnmSpeed,
                                daAlinkHIO_basic_c0::m.mAnmBlendFactor);
        mProcVar2.field_0x300c = 0;
    }

    current.angle.y = shape_angle.y;
    mNormalSpeed = 0.0f;
    return 1;
}

/* 800DBDA4-800DBE00 0D66E4 005C+00 1/0 0/0 0/0 .text            procScreamWait__9daAlink_cFv */
int daAlink_c::procScreamWait() {
    onEndResetFlg0(ERFLG0_UNK_8000000);

    if (!checkEndResetFlg1(ERFLG1_UNK_1)) {
        checkNextAction(0);
    } else if (mProcVar2.field_0x300c == 0 && checkEndResetFlg1(ERFLG1_UNK_2)) {
        setScreamWaitAnime();
    }

    return 1;
}

/* 800DBE00-800DBE74 0D6740 0074+00 1/1 0/0 0/0 .text            procCoSandWallHitInit__9daAlink_cFv
 */
int daAlink_c::procCoSandWallHitInit() {
    if (!commonProcInitNotSameProc(PROC_SAND_WALL_HIT)) {
        return 1;
    }

    if (checkWolf()) {
        setSingleAnimeWolfBase(WANM_WAIT_WIND);
    } else {
        setSingleAnimeBase(ANM_WAIT_WIND);
    }

    mNormalSpeed = 0.0f;

    return 1;
}

/* 800DBE74-800DBED8 0D67B4 0064+00 1/0 0/0 0/0 .text            procCoSandWallHit__9daAlink_cFv */
int daAlink_c::procCoSandWallHit() {
    if (mLinkAcch.ChkGroundHit()) {
        offModeFlg(2);
    }

    if (!checkEndResetFlg1(ERFLG1_UNK_400)) {
        setDamagePointNormal(1);
        procCoPolyDamageInit();
    }

    return 1;
}

/* 800DBED8-800DC214 0D6818 033C+00 1/1 0/0 0/0 .text            procCoLavaReturnInit__9daAlink_cFi
 */
int daAlink_c::procCoLavaReturnInit(BOOL i_sandReturn) {
    if (!dComIfGp_event_compulsory(this, 0, 0xFFFF)) {
        return 0;
    }

    mDemo.setSpecialDemoType();
    u32 chk_40 = checkModeFlg(0x40);

    if (!commonProcInitNotSameProc(PROC_LAVA_RETURN)) {
        return 1;
    }

    if (chk_40) {
        current.pos.x = field_0x3834.x;
        current.pos.z = field_0x3834.z;
    }

    onNoResetFlg0(FLG0_SWIM_UP);

    if (checkWolf()) {
        setSingleAnimeWolfBase(WANM_SWIM_DROWN);
        setFaceBasicTexture(FTANM_UNK_9E);

        if (i_sandReturn) {
            voiceStart(Z2SE_WL_V_FALL_QUICKSAND);
        } else {
            voiceStart(Z2SE_WL_V_FALL_MAGMA);
        }
    } else {
        setSingleAnimeBase(ANM_SWIM_DROWN);

        if (mEquipItem == 0x103) {
            field_0x2f92 = 100;
        }

        if (i_sandReturn) {
            voiceStart(Z2SE_AL_V_FALL_QUICKSAND);
        } else {
            voiceStart(Z2SE_AL_V_FALL_MAGMA);
        }
    }

    if (i_sandReturn) {
        seStartOnlyReverb(Z2SE_AL_SINK_SAND_PITFALL);
        field_0x2fbd = 0xFF;
        offModeFlg(0x40000);

        field_0x2060->getOldFrameTransInfo(0)->mTranslate.y += field_0x3458;
        mSinkShapeOffset -= field_0x3458;
        field_0x2f99 = 0;
        field_0x32cc = 5;
        field_0x3198 = 4;
    } else {
        seStartOnlyReverb(Z2SE_AL_SINK_MAGMA);
        
        cXyz particle_pos(current.pos.x, mWaterY, current.pos.z);
        dComIfGp_particle_set(0x8757, &particle_pos, &tevStr, NULL, NULL);
        dComIfGp_particle_set(0x8758, &particle_pos, &tevStr, NULL, NULL);
        field_0x32cc = 4;
        field_0x3198 = 8;
    }

    field_0x3080 = 0;
    mDamageTimer = 0;
    mNormalSpeed = 0.0f;
    field_0x3194 = 1;

    u32 id = fopAcM_GetID(this);
    dCam_getBody()->StartEventCamera(9, id, "Type", 1, &field_0x3194, 0);
    return 1;
}

/* 800DC214-800DC278 0D6B54 0064+00 1/0 0/0 0/0 .text            procCoLavaReturn__9daAlink_cFv */
int daAlink_c::procCoLavaReturn() {
    cLib_chaseF(&mSinkShapeOffset, 0.0f, 6.0f);

    if (mUnderFrameCtrl[0].checkAnmEnd()) {
        startRestartRoom(field_0x32cc, 0xC9, field_0x3198, 1);
    }

    return 1;
}

/* 800DC278-800DC474 0D6BB8 01FC+00 1/1 0/0 0/0 .text procCoSwimFreezeReturnInit__9daAlink_cFv */
int daAlink_c::procCoSwimFreezeReturnInit() {
    if (!dComIfGp_event_compulsory(this, 0, 0xFFFF)) {
        return 0;
    }

    mDemo.setSpecialDemoType();
    u32 chk_40000 = checkModeFlg(0x40000);

    if (!commonProcInitNotSameProc(PROC_SWIM_FREEZE_RETURN)) {
        return 1;
    }

    onNoResetFlg0(FLG0_SWIM_UP);
    J3DTransformInfo* transInfo = field_0x2060->getOldFrameTransInfo(0);

    f32 var_f31;
    if (checkWolf()) {
        setSingleAnimeWolfBaseSpeed(WANM_SWIM_WAIT, daAlinkHIO_wlDamNormal_c0::m.field_0x5C,
                                    10.0f);
        mUnderFrameCtrl[0].setEnd(3);
        mUnderFrameCtrl[0].setAttribute(0);
        setFaceBasicTexture(FTANM_UNK_90);
        field_0x2f9b = 1;
        var_f31 = daAlinkHIO_wlSwim_c0::m.field_0x48;
    } else {
        setSingleAnime(ANM_SWIM_DMG_FREEZE, daAlinkHIO_damNormal_c0::m.field_0x60,
                       0.0f, 5, 10.0f);
        voiceStart(Z2SE_AL_V_DAMAGE_FREEZE);
        var_f31 = daAlinkHIO_swim_c0::m.mInitHeight;
    }

    seStartOnlyReverb(Z2SE_AL_FREEZE);

    if (!chk_40000) {
        transInfo->mTranslate.y -= var_f31;
        current.pos.y = mWaterY;
    }

    field_0x3080 = 0;
    mDamageTimer = 0;
    mNormalSpeed = 0.0f;
    onNoResetFlg1(FLG1_ICE_FREEZE);
    field_0x3194 = 1;

    u32 id = fopAcM_GetID(this);
    dCam_getBody()->StartEventCamera(9, id, "Type", 1, &field_0x3194, 0);
    mProcVar2.field_0x300c = 0x2D;
    return 1;
}

/* 800DC474-800DC548 0D6DB4 00D4+00 1/0 0/0 0/0 .text procCoSwimFreezeReturn__9daAlink_cFv */
int daAlink_c::procCoSwimFreezeReturn() {
    if (mProcVar2.field_0x300c == 0) {
        if (checkRestartDead(4, 1)) {
            onNoResetFlg1(FLG1_ICE_FREEZE);
        } else {
            u32 mode = 4;
            setLastSceneDamage(4, &mode);
            seStartSystem(Z2SE_FORCE_BACK);
            dStage_changeScene(3, 0.0f, mode, fopAcM_GetRoomNo(this), shape_angle.y, -1);
        }
    } else {
        mProcVar2.field_0x300c--;
    }

    return 1;
}
