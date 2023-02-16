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
    if (!i_checkNoResetFlg1(FLG1_UNK_1)) {
        i_onNoResetFlg1(FLG1_UNK_1);
        field_0x28f8 = fopAcM_GetID(param_0);
    }
}

/* 800D6E24-800D6F00 0D1764 00DC+00 2/2 0/0 0/0 .text            freezeTimerDamage__9daAlink_cFv */
void daAlink_c::freezeTimerDamage() {
    field_0x3008--;
    field_0x300a++;

    if (field_0x300a % 45 == 0) {
        setDamagePoint(1, 1, 0, 0);
    }

    if (escapeTrigger()) {
        field_0x3008 -= 2;
    }

    if (checkInputOnR() && abs((s16)(mStickAngle - mPrevStickAngle)) > 0x1000) {
        field_0x3008 -= 2;
    }

    if (field_0x3008 < 0) {
        field_0x3008 = 0;
    }
}

/* 800D6F00-800D6F2C 0D1840 002C+00 1/0 0/0 0/0 .text onPressedDamage__9daAlink_cFRC4cXyzs */
void daAlink_c::onPressedDamage(cXyz const& param_0, s16 param_1) {
    i_onNoResetFlg2(FLG2_UNK_1000);
    field_0x3104 = param_1;
    field_0x3744 = param_0;
}

/* 800D6F2C-800D6FE0 0D186C 00B4+00 3/3 0/0 0/0 .text checkNoLandDamageSlidePolygon__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkNoLandDamageSlidePolygon() {
    nofralloc
#include "asm/d/a/d_a_alink/checkNoLandDamageSlidePolygon__9daAlink_cFv.s"
}
#pragma pop

/* 800D6FE0-800D70A0 0D1920 00C0+00 6/6 0/0 0/0 .text            checkCutLandDamage__9daAlink_cFv */
void daAlink_c::checkCutLandDamage() {
    if (!checkEventRun()) {
        f32 var_f31 = (mFallHeight - current.pos.y) * lit_8782;

        if (var_f31 >= daAlinkHIO_damFall_c0::m.mSmallDmgHeight && !checkNoLandDamageSlidePolygon()) {
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
    if (mLinkAcch.ChkGroundHit() && (i_checkSwordGet() || i_checkWolf()) && checkCutTurnInputTrigger()) {
        if (i_checkWolf()) {
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
        i_onEndResetFlg0(ERFLG0_UNK_40);
    } else {
        i_onEndResetFlg0(ERFLG0_UNK_80);
    }

    if (param_5 == 1) {
        i_onEndResetFlg0(ERFLG0_UNK_40000000);
    } else if (param_5 == 2) {
        i_onEndResetFlg1(ERFLG1_UNK_80);
    }

    if (i_getSumouMode()) {
        cancelSumouMode();
    }

    return true;
}

/* 800D7208-800D72BC 0D1B48 00B4+00 2/2 0/0 0/0 .text            damageMagnification__9daAlink_cFii
 */
f32 daAlink_c::damageMagnification(int i_checkZoraMag, int param_1) {
    f32 base_mag;

    if (param_1 == 0 && i_checkNoResetFlg3(FLG3_UNK_40000000) && !i_checkEndResetFlg2(ERFLG2_UNK_40)) {
        base_mag = lit_7624;  /* 1.5 */
    } else {
        base_mag = lit_6040;  /* 1.0 */
    }

    if (i_checkWolf() && !checkCargoCarry() && param_1 == 0) {
        return /* 2.0 */ lit_7307 * base_mag;
    }

    if (checkZoraWearAbility() && i_checkZoraMag) {
        return /* 10.0 */ lit_7625 * base_mag;
    }

    return base_mag;
}

/* 800D72BC-800D7478 0D1BFC 01BC+00 6/6 1/1 0/0 .text            setDamagePoint__9daAlink_cFiiii */
// regalloc and literals
#ifdef NONMATCHING
int daAlink_c::setDamagePoint(int i_dmgAmount, int i_checkZoraMag, int i_setDmgTimer, int param_3) {
    if (i_dmgAmount <= 0) {
        i_dComIfGp_setItemLifeCount(-i_dmgAmount, 0);
        return 0;
    }

    f32 magnified_dmgF = (f32)i_dmgAmount * damageMagnification(i_checkZoraMag, param_3);
    int magnified_dmg = magnified_dmgF;
    if ((int)(magnified_dmgF * 10.0f) % 10 != 0) {
        magnified_dmg++;
    }

    if (i_checkWolf()) {
        offWolfEyeUp();
    }

    if (checkMagicArmorNoDamage()) {
        i_dComIfGp_setItemRupeeCount(-magnified_dmg * 10);
    } else {
        i_dComIfGp_setItemLifeCount(-magnified_dmg, 0);
    }

    i_onResetFlg1(0x400);
    mSwordUpTimer = 0;

    if (i_setDmgTimer) {
        mDamageTimer = daAlinkHIO_damage_c0::m.mInvincibleTime;
        setDamageColorTime();
    }

    field_0x3006 = 0;

    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::setDamagePoint(int param_0, int param_1, int param_2, int param_3) {
    nofralloc
#include "asm/d/a/d_a_alink/setDamagePoint__9daAlink_cFiiii.s"
}
#pragma pop
#endif

/* 800D7478-800D74A4 0D1DB8 002C+00 6/6 0/0 0/0 .text            setDamagePointNormal__9daAlink_cFi
 */
void daAlink_c::setDamagePointNormal(int i_dmgAmount) {
    setDamagePoint(i_dmgAmount, FALSE, TRUE, 0);
}

/* 800D74A4-800D74F4 0D1DE4 0050+00 3/3 0/0 0/0 .text            setLandDamagePoint__9daAlink_cFi */
void daAlink_c::setLandDamagePoint(int i_dmgAmount) {
    i_onEndResetFlg2(ERFLG2_UNK_40);
    setDamagePoint(i_dmgAmount, FALSE, TRUE, 0);
    i_offEndResetFlg2(ERFLG2_UNK_40);
}

/* 800D74F4-800D76C4 0D1E34 01D0+00 11/11 0/0 0/0 .text getDamageVec__9daAlink_cFP12dCcD_GObjInf
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm Vec* daAlink_c::getDamageVec(dCcD_GObjInf* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/getDamageVec__9daAlink_cFP12dCcD_GObjInf.s"
}
#pragma pop

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
bool daAlink_c::checkIcePolygonDamage(cBgS_PolyInfo* i_poly) {
    if (dComIfG_Bgsp().GetPolyAtt0(*i_poly) == 8 && dKy_pol_argument_get(i_poly) & 0x60) {
        return true;
    }

    return false;
}

/* 800D77C8-800D7820 0D2108 0058+00 8/8 0/0 0/0 .text checkMagicArmorNoDamage__9daAlink_cFv */
BOOL daAlink_c::checkMagicArmorNoDamage() {
    return checkMagicArmorWearAbility() && !checkMagicArmorHeavy();
}

/* 800D7820-800D7A98 0D2160 0278+00 1/1 0/0 0/0 .text            checkPolyDamage__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkPolyDamage() {
    nofralloc
#include "asm/d/a/d_a_alink/checkPolyDamage__9daAlink_cFv.s"
}
#pragma pop

/* 800D7A98-800D7B18 0D23D8 0080+00 1/1 0/0 0/0 .text
 * checkElecReturnDamage__9daAlink_cFR12dCcD_GObjInfPP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkElecReturnDamage(dCcD_GObjInf& param_0, fopAc_ac_c** param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/checkElecReturnDamage__9daAlink_cFR12dCcD_GObjInfPP10fopAc_ac_c.s"
}
#pragma pop

/* 800D7B18-800D7BE8 0D2458 00D0+00 1/1 0/0 0/0 .text            damageTimerCount__9daAlink_cFv */
void daAlink_c::damageTimerCount() {
    if (!i_checkModeFlg(8)) {
        if (mDamageColorTime != 0) {
            mDamageColorTime--;
        }
        mDamageTimer--;

        if (mProcID != PROC_DK_CAUGHT && i_checkNoResetFlg1(FLG1_UNK_1)) {
            i_offNoResetFlg1(1);
        }

        if (!checkDkCaught2Anime() && i_checkNoResetFlg0(FLG0_UNK_20000)) {
            i_offNoResetFlg0(FLG0_UNK_20000);
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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkDamageAction() {
    nofralloc
#include "asm/d/a/d_a_alink/checkDamageAction__9daAlink_cFv.s"
}
#pragma pop

/* 800D8F3C-800D9514 0D387C 05D8+00 2/2 0/0 0/0 .text procDamageInit__9daAlink_cFP12dCcD_GObjInfi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procDamageInit(dCcD_GObjInf* param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procDamageInit__9daAlink_cFP12dCcD_GObjInfi.s"
}
#pragma pop

/* 800D9514-800D96DC 0D3E54 01C8+00 1/0 0/0 0/0 .text            procDamage__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procDamage() {
    nofralloc
#include "asm/d/a/d_a_alink/procDamage__9daAlink_cFv.s"
}
#pragma pop

/* 800D96DC-800D9E88 0D401C 07AC+00 12/12 0/0 0/0 .text
 * procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi       */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoLargeDamageInit(int param_0, int param_1, s16 param_2, s16 param_3,
                                          dCcD_GObjInf* param_4, int param_5) {
    nofralloc
#include "asm/d/a/d_a_alink/procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi.s"
}
#pragma pop

/* 800D9E88-800DA180 0D47C8 02F8+00 1/0 0/0 0/0 .text            procCoLargeDamage__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoLargeDamage() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoLargeDamage__9daAlink_cFv.s"
}
#pragma pop

/* 800DA180-800DA554 0D4AC0 03D4+00 2/2 0/0 0/0 .text procLargeDamageUpInit__9daAlink_cFiiss */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procLargeDamageUpInit(int param_0, int param_1, s16 param_2, s16 param_3) {
    nofralloc
#include "asm/d/a/d_a_alink/procLargeDamageUpInit__9daAlink_cFiiss.s"
}
#pragma pop

/* 800DA554-800DA82C 0D4E94 02D8+00 1/0 0/0 0/0 .text            procLargeDamageUp__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procLargeDamageUp() {
    nofralloc
#include "asm/d/a/d_a_alink/procLargeDamageUp__9daAlink_cFv.s"
}
#pragma pop

/* 800DA82C-800DAC28 0D516C 03FC+00 1/1 0/0 0/0 .text procCoLargeDamageWallInit__9daAlink_cFiiss
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoLargeDamageWallInit(int param_0, int param_1, s16 param_2, s16 param_3) {
    nofralloc
#include "asm/d/a/d_a_alink/procCoLargeDamageWallInit__9daAlink_cFiiss.s"
}
#pragma pop

/* 800DAC28-800DAC84 0D5568 005C+00 1/0 0/0 0/0 .text            procCoLargeDamageWall__9daAlink_cFv
 */
int daAlink_c::procCoLargeDamageWall() {
    if (mUnderFrameCtrl[0].checkAnmEnd()) {
        procCoLargeDamageInit(field_0x3198, field_0x3008, field_0x3080, field_0x3082, NULL, 0);
    }

    return 1;
}

/* 800DAC84-800DAD90 0D55C4 010C+00 2/2 0/0 0/0 .text            procCoPolyDamageInit__9daAlink_cFv
 */
int daAlink_c::procCoPolyDamageInit() {
    seStartOnlyReverb(Z2SE_AL_DAMAGE_NORMAL);

    if (!i_checkWolf()) {
        voiceStart(Z2SE_AL_V_DAMAGE_S);
    }

    if (checkIronBallWaitAnime()) {
        return 1;
    }

    commonProcInit(PROC_POLY_DAMAGE);

    if (i_checkWolf()) {
        setSingleAnimeWolfParam(WANM_DMG_SMALL, &daAlinkHIO_wlDamage_c0::m.field_0x14);
        voiceStart(Z2SE_WL_V_DAMAGE);
        field_0x3478 = daAlinkHIO_wlDamage_c0::m.field_0x14.mCheckFrame;
    } else {
        setSingleAnimeParam(ANM_DMG, &daAlinkHIO_damage_c0::m.mFloorDmgAnm);
        field_0x3478 = daAlinkHIO_damage_c0::m.mFloorDmgAnm.mCheckFrame;
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    return 1;
}

/* 800DAD90-800DAE10 0D56D0 0080+00 1/0 0/0 0/0 .text            procCoPolyDamage__9daAlink_cFv */
int daAlink_c::procCoPolyDamage() {
    if (mUnderFrameCtrl[0].checkAnmEnd()) {
        commonCheckNextAction(0);
    } else if (mUnderFrameCtrl[0].getFrame() > field_0x3478) {
        if (!i_checkWolf()) {
            onModeFlg(4);
        }

        commonCheckNextAction(1);
    }

    return 1;
}

/* 800DAE10-800DB060 0D5750 0250+00 2/2 0/0 0/0 .text            procLandDamageInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procLandDamageInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procLandDamageInit__9daAlink_cFi.s"
}
#pragma pop

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
    }  else {
        if (frameCtrl->checkAnmEnd()) {
            if (field_0x3008 > 0) {
                field_0x3008--;
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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoElecDamageInit(fopAc_ac_c* param_0, dCcD_GObjInf* param_1, int param_2) {
    nofralloc
#include "asm/d/a/d_a_alink/procCoElecDamageInit__9daAlink_cFP10fopAc_ac_cP12dCcD_GObjInfi.s"
}
#pragma pop

/* 800DB418-800DB5B0 0D5D58 0198+00 1/0 0/0 0/0 .text            procCoElecDamage__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoElecDamage() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoElecDamage__9daAlink_cFv.s"
}
#pragma pop

/* 800DB5B0-800DB610 0D5EF0 0060+00 2/2 0/0 0/0 .text            procStEscapeInit__9daAlink_cFv */
int daAlink_c::procStEscapeInit() {
    commonProcInit(PROC_HUMAN_ST_ESCAPE);
    setSingleAnimeParam(ANM_FROZEN_FREE, &daAlinkHIO_damCaught_c0::m.field_0x0);

    f32 tmp_7 = lit_8502;
    mUnderFrameCtrl[0].setFrame(tmp_7);
    getNowAnmPackUnder(UNDER_0)->setFrame(tmp_7);
    mNormalSpeed = FLOAT_LABEL(lit_6108);

    return 1;
}

/* 800DB610-800DB6A4 0D5F50 0094+00 1/0 0/0 0/0 .text            procStEscape__9daAlink_cFv */
int daAlink_c::procStEscape() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;
    i_onEndResetFlg0(ERFLG0_UNK_8000000);

    if (frameCtrl->checkAnmEnd()) {
        checkNextAction(0);
    } else if (frameCtrl->getFrame() > daAlinkHIO_damCaught_c0::m.field_0x0.mCheckFrame) {
        onModeFlg(4);
        checkNextAction(1);
    }

    return 1;
}

/* 800DB6A4-800DB860 0D5FE4 01BC+00 1/1 0/0 0/0 .text            procDkCaughtInit__9daAlink_cFUi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procDkCaughtInit(unsigned int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procDkCaughtInit__9daAlink_cFUi.s"
}
#pragma pop

/* 800DB860-800DBC98 0D61A0 0438+00 1/0 0/0 0/0 .text            procDkCaught__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procDkCaught() {
    nofralloc
#include "asm/d/a/d_a_alink/procDkCaught__9daAlink_cFv.s"
}
#pragma pop

/* 800DBC98-800DBD1C 0D65D8 0084+00 2/2 0/0 0/0 .text            setScreamWaitAnime__9daAlink_cFv */
void daAlink_c::setScreamWaitAnime() {
    setSingleAnimeBase(ANM_WAIT_F);
    voiceStart(Z2SE_AL_V_TERRORED);
    field_0x300c = 1;

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    dComIfGp_getVibration().StartQuake(5, 1, cXyz(tmp_0, lit_6040, tmp_0));
}

/* 800DBD1C-800DBDA4 0D665C 0088+00 1/1 0/0 0/0 .text            procScreamWaitInit__9daAlink_cFv */
int daAlink_c::procScreamWaitInit() {
    commonProcInit(PROC_SCREAM_WAIT);

    if (i_checkEndResetFlg1(ERFLG1_UNK_2)) {
        setScreamWaitAnime();
    } else {
        setSingleAnimeBaseSpeed(ANM_WAIT, daAlinkHIO_move_c0::m.mWaitAnmSpeed, daAlinkHIO_basic_c0::m.mAnmBlendFactor);
        field_0x300c = 0;
    }

    current.angle.y = shape_angle.y;
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    return 1;
}

/* 800DBDA4-800DBE00 0D66E4 005C+00 1/0 0/0 0/0 .text            procScreamWait__9daAlink_cFv */
int daAlink_c::procScreamWait() {
    i_onEndResetFlg0(ERFLG0_UNK_8000000);

    if (!i_checkEndResetFlg1(ERFLG1_UNK_1)) {
        checkNextAction(0);
    } else if (field_0x300c == 0 && i_checkEndResetFlg1(ERFLG1_UNK_2)) {
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

    if (i_checkWolf()) {
        setSingleAnimeWolfBase(WANM_WAIT_WIND);
    } else {
        setSingleAnimeBase(ANM_WAIT_WIND);
    }

    mNormalSpeed = FLOAT_LABEL(lit_6108);

    return 1;
}

/* 800DBE74-800DBED8 0D67B4 0064+00 1/0 0/0 0/0 .text            procCoSandWallHit__9daAlink_cFv */
int daAlink_c::procCoSandWallHit() {
    if (mLinkAcch.ChkGroundHit()) {
        offModeFlg(2);
    }

    if (!i_checkEndResetFlg1(ERFLG1_UNK_400)) {
        setDamagePointNormal(1);
        procCoPolyDamageInit();
    }

    return 1;
}

/* 800DBED8-800DC214 0D6818 033C+00 1/1 0/0 0/0 .text            procCoLavaReturnInit__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoLavaReturnInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procCoLavaReturnInit__9daAlink_cFi.s"
}
#pragma pop

/* 800DC214-800DC278 0D6B54 0064+00 1/0 0/0 0/0 .text            procCoLavaReturn__9daAlink_cFv */
int daAlink_c::procCoLavaReturn() {
    cLib_chaseF(&mSinkShapeOffset, FLOAT_LABEL(lit_6108), lit_7977);

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

    mDemo.i_setSpecialDemoType();
    u32 chk_40000 = i_checkModeFlg(0x40000);

    if (!commonProcInitNotSameProc(PROC_SWIM_FREEZE_RETURN)) {
        return 1;
    }

    i_onNoResetFlg0(FLG0_UNK_100);
    J3DTransformInfo* transInfo = field_0x2060->getOldFrameTransInfo(0);

    f32 var_f31;
    if (i_checkWolf()) {
        setSingleAnimeWolfBaseSpeed(WANM_SWIM_WAIT, daAlinkHIO_wlDamNormal_c0::m.field_0x5C, lit_7625);
        mUnderFrameCtrl[0].setEnd(3);
        mUnderFrameCtrl[0].setAttribute(0);
        setFaceBasicTexture(FTANM_UNK_90);
        field_0x2f9b = 1;
        var_f31 = daAlinkHIO_wlSwim_c0::m.field_0x48;
    } else {
        setSingleAnime(ANM_SWIM_DMG_FREEZE, daAlinkHIO_damNormal_c0::m.field_0x60, FLOAT_LABEL(lit_6108), 5, lit_7625);
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
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    i_onNoResetFlg1(FLG1_UNK_40000000);
    field_0x3194 = 1;

    u32 id = fopAcM_GetID(this);
    dCam_getBody()->StartEventCamera(9, id, "Type", 1, &field_0x3194, 0);
    field_0x300c = 0x2D;
    return 1;
}

/* 800DC474-800DC548 0D6DB4 00D4+00 1/0 0/0 0/0 .text procCoSwimFreezeReturn__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoSwimFreezeReturn() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoSwimFreezeReturn__9daAlink_cFv.s"
}
#pragma pop