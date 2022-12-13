/* 800D0D38-800D0E08 0CB678 00D0+00 1/1 0/0 0/0 .text daAlink_searchNightStalker__FP10fopAc_ac_cPv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daAlink_searchNightStalker(fopAc_ac_c* param_0, void* param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/daAlink_searchNightStalker__FP10fopAc_ac_cPv.s"
}
#pragma pop

/* 800D0E08-800D0E98 0CB748 0090+00 1/1 0/0 0/0 .text            checkLightSwordMtrl__9daAlink_cFv
 */
void daAlink_c::checkLightSwordMtrl() {
    if (checkLightMasterSwordEquip()) {
        stage_stag_info_class* stag_info = dComIfGp_getStageStagInfo();

        if (i_dStage_stagInfo_GetSaveTbl(stag_info) == 0x17 ||
            fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchNightStalker, NULL)) {
            i_onNoResetFlg3(FLG3_UNK_100000);
            return;
        }
    }

    i_offNoResetFlg3(FLG3_UNK_100000);
}

/* 800D0E98-800D0ECC 0CB7D8 0034+00 5/5 0/0 0/0 .text            checkSwordEquipAnime__9daAlink_cCFv
 */
BOOL daAlink_c::checkSwordEquipAnime() const {
    return !i_checkNoResetFlg0(FLG0_UNK_1000000) &&
           (checkUpperAnime(0x255) || checkUpperAnime(0x261));
}

/* 800D0ECC-800D0EFC 0CB80C 0030+00 8/8 0/0 0/0 .text            checkCutDashAnime__9daAlink_cCFv */
BOOL daAlink_c::checkCutDashAnime() const {
    return checkUpperAnime(0x80) || checkUpperAnime(0x82) || checkUpperAnime(0x81);
}

/* 800D0EFC-800D0F5C 0CB83C 0060+00 1/1 0/0 0/0 .text
 * checkCutDashEnemyHit__9daAlink_cFR12dCcD_GObjInf             */
BOOL daAlink_c::checkCutDashEnemyHit(dCcD_GObjInf& obj) {
    return obj.ChkAtHit() && checkEnemyGroup(obj.GetAtHitAc());
}

/* 800D0F5C-800D0F90 0CB89C 0034+00 6/6 0/0 0/0 .text            getSwordAtType__9daAlink_cFv */
u32 daAlink_c::getSwordAtType() {
    return checkMasterSwordEquip() ? 0x4000002 : 2;
}

/* 800D0F90-800D102C 0CB8D0 009C+00 3/3 0/0 0/0 .text            initCutTurnAt__9daAlink_cFfi */
void daAlink_c::initCutTurnAt(f32 param_0, int param_1) {
    field_0xFB8.ResetAtHit();
    field_0xFB8.OnAtSetBit();
    field_0xFB8.SetAtType(getSwordAtType());
    field_0xFB8.SetAtHitMark(3);
    field_0xFB8.SetAtSe(1);
    field_0xFB8.SetAtAtp(param_1);

    u8 mtrl;
    if (!i_checkNoResetFlg3(FLG3_UNK_100000)) {
        mtrl = 0;
    } else {
        mtrl = 4;
    }
    field_0xFB8.SetAtMtrl(mtrl);
    field_0xFB8.SetR(param_0);
    field_0x2fd0 = 1;
}

/* 800D102C-800D1088 0CB96C 005C+00 2/2 0/0 0/0 .text            checkCutFinishJumpUp__9daAlink_cFv
 */
bool daAlink_c::checkCutFinishJumpUp() {
    if (checkCutBackState() && !checkNotBattleStage() && swordSwingTrigger()) {
        return true;
    }

    return false;
}

/* 800D1088-800D10E0 0CB9C8 0058+00 2/2 0/0 0/0 .text            changeCutFast__9daAlink_cFv */
void daAlink_c::changeCutFast() {
    deleteEquipItem(FALSE, FALSE);
    setSwordModel();
    mComboCutCount = 3;
    checkCutAction();
    i_onNoResetFlg0(FLG0_UNK_80000);
}

/* 800D10E0-800D1268 0CBA20 0188+00 1/1 0/0 0/0 .text            checkCutFastReady__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::checkCutFastReady() {
    nofralloc
#include "asm/d/a/d_a_alink/checkCutFastReady__9daAlink_cFv.s"
}
#pragma pop

/* 800D1268-800D1310 0CBBA8 00A8+00 9/9 0/0 0/0 .text            setSwordModel__9daAlink_cFv */
void daAlink_c::setSwordModel() {
    field_0x2fde = 0xFF;
    mEquipItem = EQUIP_SWORD;

    mDoAud_bgmSetSwordUsing(1);
    field_0x2f94 = 0;

    if (checkWoodSwordEquip()) {
        mSwordModel->getModelData()->getMaterialNodePointer(1)->getShape()->hide();
    } else {
        mSwordModel->getModelData()->getMaterialNodePointer(0)->getShape()->show();
    }
}

/* 800D1310-800D13AC 0CBC50 009C+00 2/2 0/0 0/0 .text            offSwordModel__9daAlink_cFv */
void daAlink_c::offSwordModel() {
    mDoAud_bgmSetSwordUsing(0);

    if (mSwordModel == mpSwMModel || mSwordModel == mpSwAModel) {
        mSwordModel->getModelData()->getMaterialNodePointer(0)->getShape()->hide();
    } else if (mSwordModel == mWoodSwordModel) {
        mWoodSwordModel->getModelData()->getMaterialNodePointer(1)->getShape()->show();
    }
}

/* 800D13AC-800D13E4 0CBCEC 0038+00 1/1 0/0 0/0 .text            checkCutTypeNoBlur__9daAlink_cCFv
 */
BOOL daAlink_c::checkCutTypeNoBlur() const {
    return mCutType == CUT_TYPE_NM_STAB || mCutType == CUT_TYPE_COMBO_STAB ||
           mCutType == CUT_TYPE_FINISH_STAB || i_checkNoResetFlg0(FLG0_UNDERWATER);
}

/* 800D13E4-800D1424 0CBD24 0040+00 7/7 0/0 0/0 .text            checkCutTurnInput__9daAlink_cCFv */
bool daAlink_c::checkCutTurnInput() const {
    return 0xF800 < abs(field_0x3180);
}

/* 800D1424-800D1430 0CBD64 000C+00 7/7 0/0 0/0 .text            getCutTurnDirection__9daAlink_cCFv
 */
int daAlink_c::getCutTurnDirection() const {
    return field_0x3180 < 0;
}

/* 800D1430-800D1454 0CBD70 0024+00 17/17 0/0 0/0 .text            resetCombo__9daAlink_cFi */
void daAlink_c::resetCombo(int param_0) {
    mComboCutCount = 0;
    i_offNoResetFlg0(FLG0_UNK_8000);
    if (param_0 != 0) {
        mRunCutComboCount = 0;
    }
}

/* 800D1454-800D152C 0CBD94 00D8+00 1/1 0/0 0/0 .text            checkComboCnt__9daAlink_cFv */
#pragma push
#pragma optimization_level 2
void daAlink_c::checkComboCnt() {
    if ((mEquipItem == EQUIP_SWORD && mComboCutCount == 2) &&
        (i_checkAttentionLock() &&
         (mAtCps[0].ChkAtHit() || mAtCps[1].ChkAtHit() || mAtCps[2].ChkAtHit()))) {
        i_onNoResetFlg0(FLG0_UNK_8000);
    }
    if (field_0x307e > 0) {
        field_0x307e--;
    } else {
        resetCombo(1);
    }
}
#pragma pop

/* 800D152C-800D1540 0CBE6C 0014+00 22/22 0/0 0/0 .text            setCutType__9daAlink_cFUc */
void daAlink_c::setCutType(u8 type) {
    mCutType = type;
    i_offResetFlg0(RFLG0_UNK_8000000);
}

/* 800D1540-800D1688 0CBE80 0148+00 8/8 0/0 0/0 .text
 * setCylAtParam__9daAlink_cFUl11dCcG_At_SplUcUciff             */
void daAlink_c::setCylAtParam(u32 i_AtType, dCcG_At_Spl i_spl, u8 i_hitMark, u8 i_AtSe, int i_atp,
                              f32 i_radius, f32 i_height) {
    if (checkWoodSwordEquip() && (i_AtSe == 14 || i_AtSe == 1 || i_AtSe == 16)) {
        i_AtSe = 5;
    }

    u8 mtrl;
    if (i_AtType & 2) {
        if (i_checkNoResetFlg3(FLG3_UNK_100000)) {
            mtrl = 4;
        } else {
            mtrl = 0;
        }
    } else if (mEquipItem == WATER_BOTTLE) {
        mtrl = 6;
    } else {
        mtrl = 0;
    }

    mAtCyl.SetAtType(i_AtType);
    mAtCyl.SetAtSpl(i_spl);
    mAtCyl.SetAtHitMark(i_hitMark);
    mAtCyl.SetAtSe(i_AtSe);
    mAtCyl.SetAtAtp(i_atp);
    mAtCyl.SetR(i_radius);
    mAtCyl.SetH(i_height);
    mAtCyl.SetAtMtrl(mtrl);

    if (mProcID == PROC_GUARD_ATTACK) {
        mAtCyl.OnAtNoHitMark();
    } else {
        mAtCyl.OffAtNoHitMark();
    }

    if (i_checkWolf()) {
        dCcD_Cyl* cyl = field_0x850;
        for (int i = 0; i < 3; i++) {
            cyl->SetAtType(i_AtType);
            cyl->SetAtSpl(i_spl);
            cyl->SetAtHitMark(i_hitMark);
            cyl->SetAtSe(i_AtSe);
            cyl->SetAtAtp(i_atp);
            cyl++;
        }
    }
}

/* 800D1688-800D1788 0CBFC8 0100+00 9/9 0/0 0/0 .text
 * setSwordAtParam__9daAlink_cF11dCcG_At_SplUcUciff             */
void daAlink_c::setSwordAtParam(dCcG_At_Spl i_spl, u8 i_hitMark, u8 i_AtSe, int i_atp, f32 param_4,
                                f32 i_radius) {
    dCcD_Cps* atCps = mAtCps;
    u32 atType = getSwordAtType();
    mAtCps[0].OffAtNoHitMark();

    if (checkWoodSwordEquip() && (i_AtSe == 14 || i_AtSe == 1 || i_AtSe == 16)) {
        i_AtSe = 5;
    }

    if (i_spl == 0) {
        field_0x2fd0 = 0;
    } else {
        field_0x2fd0 = 1;
    }

    u8 mtrl;
    if (i_checkNoResetFlg3(FLG3_UNK_100000)) {
        mtrl = 4;
    } else {
        mtrl = 0;
    }

    for (int i = 0; i < 3; i++) {
        atCps->SetAtSpl(i_spl);
        atCps->SetAtHitMark(i_hitMark);
        atCps->SetAtAtp(i_atp);
        atCps->SetR(i_radius);
        atCps->SetAtSe(i_AtSe);
        atCps->SetAtMtrl(mtrl);
        atCps->SetAtType(atType);
        atCps++;
    }

    field_0x33d0 = param_4;
}

/* 800D1788-800D17EC 0CC0C8 0064+00 1/1 0/0 1/1 .text
 * notSwordHitVibActor__9daAlink_cFP10fopAc_ac_c                */
BOOL daAlink_c::notSwordHitVibActor(fopAc_ac_c* p_actor) {
    if (p_actor != NULL && fopAcM_GetGroup(p_actor) == 4) {
        s16 name = fopAcM_GetName(p_actor);

        if (!checkSpecialNpc(p_actor) && name != PROC_NI && name != PROC_NPC_BLUENS) {
            return true;
        }
    }

    return false;
}

/* 800D17EC-800D1920 0CC12C 0134+00 4/4 0/0 0/0 .text
 * setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf             */
BOOL daAlink_c::setSwordHitVibration(dCcD_GObjInf* i_gobj) {
    if (i_gobj->ChkAtHit()) {
        if (notSwordHitVibActor(i_gobj->GetAtHitAc())) {
            return true;
        }

        int var_r4;
        if (i_checkWolf()) {
            var_r4 = 3;
        } else if (i_gobj->ChkAtShieldHit()) {
            if (field_0x2fd0 == 1) {
                var_r4 = 5;
            } else if (field_0x2fd0 == 2) {
                var_r4 = 2;
            } else {
                var_r4 = 3;
            }
        } else if (field_0x2fd0 == 2 ||
                   (i_gobj->GetAtHitAc() != NULL && fopAcM_GetGroup(i_gobj->GetAtHitAc()) == 3)) {
            var_r4 = 2;
        } else if (field_0x2fd0 == 1) {
            var_r4 = 4;
        } else {
            var_r4 = 2;
        }

        f32 tmp_0 = FLOAT_LABEL(lit_6108);
        dComIfGp_getVibration().StartShock(var_r4, 31, cXyz(tmp_0, lit_6040, tmp_0));
        return true;
    }

    return false;
}

/* 800D1920-800D1978 0CC260 0058+00 3/3 0/0 0/0 .text checkAtShieldHit__9daAlink_cFR12dCcD_GObjInf
 */
BOOL daAlink_c::checkAtShieldHit(dCcD_GObjInf& param_0) {
    return param_0.ChkAtHit() && param_0.ChkAtShieldHit();
}

/* 800D1978-800D19C8 0CC2B8 0050+00 1/1 0/0 0/0 .text
 * checkCutReverseAt__9daAlink_cFP12dCcD_GObjInf                */
bool daAlink_c::checkCutReverseAt(dCcD_GObjInf* param_0) {
    param_0->GetAtHitAc();
    return checkAtShieldHit(*param_0) ? true : false;
}

/* 800D19C8-800D1E1C 0CC308 0454+00 5/5 0/0 0/0 .text
 * changeCutReverseProc__9daAlink_cFQ29daAlink_c11daAlink_ANM   */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::changeCutReverseProc(daAlink_c::daAlink_ANM param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/changeCutReverseProc__9daAlink_cFQ29daAlink_c11daAlink_ANM.s"
}
#pragma pop

/* 800D1E1C-800D20B4 0CC75C 0298+00 4/4 0/0 0/0 .text            setCutDash__9daAlink_cFii */
void daAlink_c::setCutDash(int param_0, int param_1) {
    if (!param_0 && i_checkNoResetFlg1(FLG1_UNK_4000000)) {
        checkCutAction();
    } else {
        field_0x2fce = 5;
        resetCombo(0);
        i_offNoResetFlg2(FLG2_UNK_2);

        setSwordAtParam(dCcG_At_Spl_UNK_0, 7, 16, 1, daAlinkHIO_cut_c0::m.mRunCutLength,
                        daAlinkHIO_cut_c0::m.mRunCutRadius);
        field_0x2fd0 = 2;
        mRunCutComboCount++;

        if (param_1) {
            setUpperAnimeParam(0x82, UPPER_2, &daAlinkHIO_cutDaCharge_c0::m.field_0x0);

            if (checkBoardRide()) {
                setCutType(13);
            } else {
                setCutType(0x38);
            }

            if (mRunCutComboCount == 3) {
                mRunCutComboCount = 1;
            }
        } else if (mRunCutComboCount == 1 || mRunCutComboCount == 3) {
            setUpperAnimeParam(0x80, UPPER_2, &daAlinkHIO_cutDaL_c0::m.field_0x0);

            if (checkBoardRide()) {
                setCutType(11);
            } else if (mProcID == PROC_SIDESTEP) {
                setCutType(CUT_TYPE_AIR);
            } else {
                setCutType(0x25);
            }

            mRunCutComboCount = 1;
            setFacePriTexture(FTANM_UNK_13);
        } else {
            setUpperAnimeParam(0x81, UPPER_2, &daAlinkHIO_cutDaR_c0::m.field_0x0);

            if (checkBoardRide()) {
                setCutType(12);
            } else if (mProcID == PROC_SIDESTEP) {
                setCutType(0x11);
            } else {
                setCutType(0x26);
            }

            setFacePriTexture(FTANM_UNK_14);
        }

        setFacePriBck(0x104);
        field_0x2f96 = 2;
        field_0x307e = daAlinkHIO_cut_c0::m.mComboDuration;

        setSwordVoiceSe(Z2SE_AL_V_ATTACK_RUN);
        setCylAtParam(getSwordAtType(), dCcG_At_Spl_UNK_0, 7, 16, 1, lit_6895, lit_6896);
        setCutWaterDropEffect();
        field_0x2fb7 = 0;
    }
}

/* 800D20B4-800D20FC 0CC9F4 0048+00 4/4 0/0 0/0 .text            checkForceSwordSwing__9daAlink_cFv
 */
BOOL daAlink_c::checkForceSwordSwing() {
    return mEquipItem == EQUIP_SWORD && swordSwingTrigger();
}

/* 800D20FC-800D2188 0CCA3C 008C+00 7/7 0/0 0/0 .text            setComboReserb__9daAlink_cFv */
void daAlink_c::setComboReserb() {
    if (i_checkWolf()) {
        field_0x307e = daAlinkHIO_wlAttack_c0::m.mComboDuration;
    } else {
        field_0x307e = daAlinkHIO_cut_c0::m.mComboDuration;
    }

    if (mComboCutCount != 4 && field_0x2fce == 0 && swordSwingTrigger()) {
        i_onNoResetFlg2(FLG2_UNK_2);
    }
}

/* 800D2188-800D21D0 0CCAC8 0048+00 1/1 0/0 0/0 .text            checkComboReserb__9daAlink_cFv */
BOOL daAlink_c::checkComboReserb() {
    return i_checkNoResetFlg2(FLG2_UNK_2) && !checkEventRun();
}

/* 800D21D0-800D2284 0CCB10 00B4+00 1/1 0/0 0/0 .text            commonCutAction__9daAlink_cFv */
int daAlink_c::commonCutAction() {
    if (mComboCutCount == 4) {
        resetCombo(1);
    }

    if (i_dComIfGp_getDoStatus() == 4) {
        setDoStatus(0);
    }
    mComboCutCount++;

    if (i_checkReinRide()) {
        procHorseCutInit();
        if (mComboCutCount > 1) {
            mComboCutCount = 1;
        }
        return 1;
    }

    return 0;
}

/* 800D2284-800D22BC 0CCBC4 0038+00 13/13 0/0 0/0 .text            setSwordVoiceSe__9daAlink_cFUl */
void daAlink_c::setSwordVoiceSe(u32 i_seID) {
    if (!i_checkNoResetFlg0(FLG0_UNDERWATER)) {
        voiceStart(i_seID);
    }
}

/* 800D22BC-800D2304 0CCBFC 0048+00 3/3 0/0 0/0 .text            setSwordChargeVoiceSe__9daAlink_cFv
 */
void daAlink_c::setSwordChargeVoiceSe() {
    if (mCommonCounter != 0) {
        mCommonCounter--;

        if (mCommonCounter == 0) {
            setSwordVoiceSe(Z2SE_AL_V_TAME);
        }
    }
}

/* 800D2304-800D2368 0CCC44 0064+00 3/3 0/0 0/0 .text            setSwordComboVoice__9daAlink_cFv */
void daAlink_c::setSwordComboVoice() {
    if (mProcID == PROC_CUT_JUMP || mComboCutCount == 4) {
        setSwordVoiceSe(Z2SE_AL_V_ATTACK_L);
    } else if (mComboCutCount == 1) {
        setSwordVoiceSe(Z2SE_AL_V_ATTACK_S);
    } else {
        setSwordVoiceSe(Z2SE_AL_V_ATTACK_M);
    }
}

/* 800D2368-800D23C0 0CCCA8 0058+00 3/3 0/0 0/0 .text checkCutTurnInputTrigger__9daAlink_cFv */
bool daAlink_c::checkCutTurnInputTrigger() {
    return swordSwingTrigger() && checkCutTurnInput();
}

/* 800D23C0-800D2684 0CCD00 02C4+00 7/7 0/0 0/0 .text            checkCutAction__9daAlink_cFv */
#pragma push
#pragma optimization_level 2
int daAlink_c::checkCutAction() {
    if (commonCutAction()) {
        return 1;
    }

    int cutDir = getCutDirection();

    if (mComboCutCount == 4) {
        if (i_checkNoResetFlg0(FLG0_UNK_1000000)) {
            if (checkInputOnR() && (cutDir == DIR_FORWARD || cutDir == DIR_BACKWARD)) {
                procCutFinishInit(3);
            } else {
                procCutFinishInit(4);
            }
        } else if (i_checkNoResetFlg0(FLG0_UNK_8000)) {
            procCutFinishInit(hitFinishType[cutDir]);
        } else if (i_checkAttentionLock()) {
            procCutFinishInit(atnFinishType[cutDir]);
        } else {
            procCutFinishInit(finishType[cutDir]);
        }
    } else if (mComboCutCount == 3) {
        if (i_checkNoResetFlg0(FLG0_UNK_8000)) {
            if (cutDir == 0) {
                procCutNormalInit(hitType[cutDir]);
            } else {
                procCutFinishInit(hitType[cutDir]);
            }
        } else if (i_checkAttentionLock()) {
            procCutNormalInit(atnNormalType3[cutDir]);
        } else {
            procCutNormalInit(normalType3[cutDir]);
        }
    } else if (mProcID == PROC_CUT_NORMAL && field_0x300a != 4) {
        if (field_0x300a == 2) {
            procCutNormalInit(1);
        } else {
            procCutNormalInit(2);
        }
    } else if (i_checkAttentionLock()) {
        if (mComboCutCount == 1) {
            procCutNormalInit(atnNormalType1[cutDir]);
        } else {
            procCutNormalInit(atnNormalType2[cutDir]);
        }
    } else if (mComboCutCount == 1) {
        procCutNormalInit(normalType1_6982[cutDir]);
    } else {
        procCutNormalInit(normalType2[cutDir]);
    }

    return 1;
}
#pragma pop

/* 800D2684-800D26EC 0CCFC4 0068+00 9/9 0/0 0/0 .text            checkCutTurnCharge__9daAlink_cFv */
void daAlink_c::checkCutTurnCharge() {
    if (swordButton()) {
        if (field_0x3012 < 3) {
            field_0x3012++;
        } else {
            i_onResetFlg0(RFLG0_UNK_40);
        }
    } else {
        field_0x3012 = 0;
    }
}

/* 800D26EC-800D2760 0CD02C 0074+00 4/4 0/0 0/0 .text            getCutDirection__9daAlink_cFv */
int daAlink_c::getCutDirection() {
    s16 angle;

    if (!checkInputOnR()) {
        return DIR_NONE;
    }

    if (mTargetedActor != NULL) {
        angle = field_0x2fe2 - fopAcM_searchActorAngleY(this, mTargetedActor);
    } else {
        angle = field_0x2fe2 - field_0x2fe6;
    }

    return getDirectionFromAngle(angle);
}

/* 800D2760-800D27E4 0CD0A0 0084+00 4/4 0/0 0/0 .text checkCutCancelNextMode__9daAlink_cFi */
BOOL daAlink_c::checkCutCancelNextMode(int param_0) {
    f32 old_speed = mNormalSpeed;
    u8 old_2f98 = field_0x2f98;

    mNormalSpeed = FLOAT_LABEL(lit_6108);
    field_0x2f98 = param_0;
    onModeFlg(4);

    if (checkNextAction(1)) {
        return 1;
    }

    mNormalSpeed = old_speed;
    field_0x2f98 = old_2f98;
    return 0;
}

/* 800D27E4-800D2890 0CD124 00AC+00 4/4 0/0 0/0 .text            checkDoCutAction__9daAlink_cFv */
void daAlink_c::checkDoCutAction() {
    // event flag 0x2A40: Learned Jump Strike
    if (doButton() && (i_dComIfGs_isEventBit(0x2A40) || i_checkNoResetFlg3(FLG3_UNK_200))) {
        procCutLargeJumpChargeInit();
    } else if (checkDownAttackState()) {
        procCutDownInit();
    } else if (checkCutHeadState()) {
        procCutHeadInit();
    } else {
        procCutJumpInit(0);
    }
}

/* 800D2890-800D28F4 0CD1D0 0064+00 2/2 0/0 0/0 .text            checkCutBackState__9daAlink_cFv */
BOOL daAlink_c::checkCutBackState() {
    // event flag 0x2902: Learned Backslice
    return i_dComIfGs_isEventBit(0x2902) || i_checkNoResetFlg3(FLG3_UNK_20);
}

/* 800D28F4-800D29D4 0CD234 00E0+00 6/6 0/0 0/0 .text            checkCutHeadState__9daAlink_cFv */
BOOL daAlink_c::checkCutHeadState() {
    fopEn_enemy_c* temp_r27 = (fopEn_enemy_c*)mTargetedActor;

    // event flag 0x2901: Learned Helm Splitter
    return ((!checkBootsOrArmorHeavy() && (temp_r27 != NULL) &&
             (i_dComIfGs_isEventBit(0x2901) || i_checkNoResetFlg3(FLG3_UNK_40))) &&
            fopAcM_GetGroup(temp_r27) == 2) &&
           temp_r27->checkHeadLockFlg();
}

/* 800D29D4-800D2ABC 0CD314 00E8+00 4/4 0/0 0/0 .text            checkDownAttackState__9daAlink_cFv
 */
BOOL daAlink_c::checkDownAttackState() {
    fopEn_enemy_c* enemy = (fopEn_enemy_c*)mTargetedActor;

    if (enemy != NULL &&
        (fopAcM_GetGroup(enemy) == 2 && enemy->checkDownFlg() &&
         ((!i_checkWolf() && (i_dComIfGs_isEventBit(0x2904) || i_checkNoResetFlg3(FLG3_UNK_10)) &&
           enemy->getDownPos().abs2(current.pos) < lit_7174) ||
          (i_checkWolf() &&
           (fopAcM_GetName(mTargetedActor) == PROC_E_PO ||
            fopAcM_GetName(mTargetedActor) == PROC_E_HP) &&
           enemy->getDownPos().abs2(current.pos) < lit_7174)))) {
        return true;
    }

    return false;
}

/* 800D2ABC-800D2B88 0CD3FC 00CC+00 1/1 1/1 0/0 .text checkCutLargeTurnState__9daAlink_cCFv */
BOOL daAlink_c::checkCutLargeTurnState() const {
    // event flag 0x2A20: Learned Great Spin
    return ((i_dComIfGs_isEventBit(0x2A20) || i_checkNoResetFlg3(FLG3_UNK_100)) &&
            i_dComIfGs_getLife() == dComIfGs_getMaxLifeGauge()) ||
           (mDemo.getDemoMode() == 0x24 && mDemo.getParam0() == 0x33);
}

/* 800D2B88-800D2BFC 0CD4C8 0074+00 2/2 0/0 0/0 .text            cancelCutCharge__9daAlink_cFv */
void daAlink_c::cancelCutCharge() {
    if (mComboCutCount == 4) {
        resetCombo(1);
        checkNextAction(0);
    } else {
        mComboCutCount++;

        if (mComboCutCount <= 3) {
            procCutNormalInit(2);
        } else {
            procCutFinishInit(1);
        }
    }
}

/* 800D2BFC-800D2C54 0CD53C 0058+00 3/3 0/0 0/0 .text            initCutAtnActorSearch__9daAlink_cFv
 */
void daAlink_c::initCutAtnActorSearch() {
    if (cLib_distanceAngleS(getShapeAngleYAtnActor(), shape_angle.y) < 0x800) {
        field_0x3010 = 1;
    } else {
        field_0x3010 = 0;
    }

    field_0x32cc = (u32)mTargetedActor;
}

/* 800D2C54-800D2C78 0CD594 0024+00 3/3 0/0 0/0 .text checkCutAtnActorChange__9daAlink_cFv */
void daAlink_c::checkCutAtnActorChange() {
    if (field_0x32cc != (u32)mTargetedActor) {
        field_0x3010 = 0;
        field_0x32cc = (u32)mTargetedActor;
    }
}

/* 800D2C78-800D2F58 0CD5B8 02E0+00 2/2 0/0 0/0 .text            setCutJumpSpeed__9daAlink_cFi */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setCutJumpSpeed(int i_airAt) {
    if (i_checkNoResetFlg0(FLG0_UNDERWATER)) {
        mNormalSpeed *= daAlinkHIO_magneBoots_c0::m.mWaterVelocityX;
        mSpeed.y *= daAlinkHIO_magneBoots_c0::m.mWaterVelocityY;
    } else if (checkHeavyStateOn(1, 1)) {
        mSpeed.y *= 1.35f;
    }

    if (mTargetedActor != NULL && !i_airAt) {
        shape_angle.y = cLib_targetAngleY(&current.pos, &mTargetedActor->mEyePos);
        cXyz targetPos(mTargetedActor->mEyePos.x - (cM_ssin(shape_angle.y) * 70.0f),
                       mTargetedActor->mEyePos.y + 50.0f,
                       mTargetedActor->mEyePos.z - (cM_scos(shape_angle.y) * 70.0f));

        if (fopAcM_gc_c::gndCheck(&targetPos)) {
            targetPos.y = fopAcM_gc_c::getGroundY();
        } else {
            targetPos.y = mTargetedActor->mEyePos.y;
        }

        f32 dvar12 = mSpeed.y + mGravity;
        f32 dvar10 = 1.0f / mGravity;
        f32 fvar1 = targetPos.y - (current.pos.y - (dvar10 * (dvar12 * dvar12) * 0.5f));

        if (fvar1 > 0.0f) {
            fvar1 = 0.0f;
        }
        f32 sqrt = JMAFastSqrt(fvar1 * 2.0f * dvar10);
        f32 speedDiv = sqrt - (dvar12 * dvar10);
        f32 squareDist = current.pos.absXZ(targetPos);

        if (squareDist > 500.0f) {
            squareDist = 500.0f;
        }
        mNormalSpeed = squareDist / speedDiv;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setCutJumpSpeed(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setCutJumpSpeed__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 800D2F58-800D31B8 0CD898 0260+00 3/3 0/0 0/0 .text            procCutNormalInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 2
int daAlink_c::procCutNormalInit(int i_type) {
    const daAlink_cutParamTbl* cutParams = &cutParamTable_7312[i_type];

    commonProcInit(PROC_CUT_NORMAL);
    setCutType(cutParams->m_cutType);
    field_0x3198 = cutParams->field_0x4;

    const daAlinkHIO_cutNormal_c1* cutData;
    if (i_type == 1) {
        cutData = &daAlinkHIO_cutNmL_c0::m;
    } else if (i_type == 2) {
        cutData = &daAlinkHIO_cutNmR_c0::m;
    } else if (i_type == 4) {
        cutData = &daAlinkHIO_cutNmSR_c0::m;
    } else if (i_type == 3) {
        cutData = &daAlinkHIO_cutNmSL_c0::m;
    } else {
        cutData = &daAlinkHIO_cutNmV_c0::m;
    }

    field_0x3478 = cutData->field_0x18;
    field_0x347c = cutData->field_0x1C;
    field_0x3480 = cutData->field_0x14;

    if (checkHeavyStateOn(1, 1)) {
        field_0x3480 *= mHeavySpeedMultiplier;
    }

    field_0x3484 = cutData->field_0x0.field_0x10;

    f32 morf;
    if (!checkZoraWearAbility() && i_checkNoResetFlg0(FLG0_UNDERWATER)) {
        morf = cutParams->m_morf;
    } else {
        morf = cutData->field_0x0.mInterpolation;
    }

    setSingleAnime(cutParams->m_anmID, cutData->field_0x0.mRate, cutData->field_0x0.mStart,
                   cutData->field_0x0.mEndF, morf);
    current.angle.y = shape_angle.y;

    if (!i_checkAttentionLock() && checkInputOnR()) {
        mCommonCounter = field_0x2fe2;
    } else {
        mCommonCounter = shape_angle.y;
    }

    if (mComboCutCount != 1) {
        field_0x2f99 = 12;
    }

    field_0x3588 = l_halfAtnWaitBaseAnime;
    field_0x307e = daAlinkHIO_cut_c0::m.mComboDuration;

    setSwordAtParam(dCcG_At_Spl_UNK_0, 1, cutParams->m_atSe, 2, daAlinkHIO_cut_c0::m.mSwordLength,
                    daAlinkHIO_cut_c0::m.mSwordRadius);
    setSwordComboVoice();
    field_0x3012 = 0;

    dComIfGp_setPlayerStatus0(0, 0x8000);
    setCutWaterDropEffect();

    int cutDir = getCutDirection();
    if (mComboCutCount == 1 && (cutDir == DIR_LEFT || cutDir == DIR_RIGHT)) {
        field_0x300e = 1;
    } else {
        field_0x300e = 0;
    }

    field_0x300a = 4;
    initCutAtnActorSearch();
    return 1;
}
#pragma pop

/* 800D31B8-800D34D8 0CDAF8 0320+00 1/0 0/0 0/0 .text            procCutNormal__9daAlink_cFv */
int daAlink_c::procCutNormal() {
    if (checkGroundSpecialMode()) {
        return 1;
    }
    setBodyAngleXReadyAnime(1);

    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;
    setComboReserb();
    checkCutTurnCharge();
    checkCutAtnActorChange();

    cLib_chaseF(&mNormalSpeed, FLOAT_LABEL(lit_6108), daAlinkHIO_move_c0::m.mDeceleration);
    i_onEndResetFlg0(ERFLG0_UNK_8000000);
    field_0x2f99 = 4;

    if (field_0x300e != 0 && i_checkNoResetFlg2(FLG2_UNK_2)) {
        int cutDir = getCutDirection();
        if ((cutDir == DIR_RIGHT && mCutType == CUT_TYPE_NM_LEFT &&
             frameCtrl->getFrame() > lit_7448) ||
            (cutDir == DIR_LEFT && mCutType == CUT_TYPE_NM_RIGHT &&
             frameCtrl->getFrame() > lit_7448)) {
            field_0x300a = cutDir;
        }
    }

    if (frameCtrl->checkAnmEnd()) {
        resetCombo(1);

        if (mDemo.getDemoMode() == 0x24 || mDemo.getDemoMode() == 0x54) {
            dComIfGp_evmng_cutEnd(field_0x3184);
        } else {
            checkNextAction(0);
        }
    } else if ((!(frameCtrl->getFrame() > field_0x3484) && field_0x300a == 4) ||
               !checkCutCancelNextMode(3)) {
        if (frameCtrl->getFrame() > field_0x3484) {
            resetCombo(1);
        }

        if (changeCutReverseProc((daAlink_ANM)field_0x3198)) {
            return 1;
        }

        if (setShapeAngleToAtnActor(field_0x3010)) {
            mCommonCounter = shape_angle.y;

            if (cLib_distanceAngleS(getShapeAngleYAtnActor(), shape_angle.y) < 0x800) {
                field_0x3010 = 1;
            }
        } else {
            cLib_addCalcAngleS(&shape_angle.y, mCommonCounter, 2, 0x2000, 0x800);
        }

        current.angle.y = shape_angle.y;

        if (frameCtrl->getFrame() >= field_0x3478 && frameCtrl->getFrame() < field_0x347c) {
            if (!i_checkNoResetFlg0(FLG0_UNK_40)) {
                seStartSwordCut(Z2SE_AL_SWORD_SWING_S);
                mNormalSpeed = field_0x3480;
            }

            i_onResetFlg0(FLG0_UNK_2);
        }

        if (mCutType == CUT_TYPE_NM_LEFT) {
            if (frameCtrl->getFrame() >= lit_7449) {
                field_0x2f92 = 0;
            } else if (frameCtrl->getFrame() >= lit_7450) {
                field_0x2f92 = 100;
            }
        } else if (mCutType == CUT_TYPE_NM_RIGHT) {
            if (frameCtrl->getFrame() >= lit_7451) {
                field_0x2f92 = 0;
            } else if (frameCtrl->getFrame() >= lit_7450) {
                field_0x2f92 = 100;
            }
        } else if (frameCtrl->getFrame() >= lit_7449) {
            field_0x2f92 = 0;
        }
    }

    return 1;
}

/* 800D34D8-800D382C 0CDE18 0354+00 4/4 0/0 0/0 .text            procCutFinishInit__9daAlink_cFi */
int daAlink_c::procCutFinishInit(int i_type) {
    const daAlinkHIO_cutFinish_c1* cutData;
    const daAlink_cutParamTbl* cutParams = &cutParamTable_7455[i_type];
    BOOL front_roll = mProcID == PROC_FRONT_ROLL;

    commonProcInit(PROC_CUT_FINISH);
    setCutType(cutParams->m_cutType);
    field_0x3198 = cutParams->field_0x4;
    mCommonCounter = cutParams->field_0xa;
    field_0x300e = cutParams->field_0xb;

    BOOL var_r30 = FALSE;
    if (i_type == 0) {
        cutData = &daAlinkHIO_cutFnL_c0::m;
    } else if (i_type == 1) {
        cutData = &daAlinkHIO_cutFnV_c0::m;
    } else if (i_type == 2) {
        cutData = &daAlinkHIO_cutFnS_c0::m;
    } else if (i_type == 3) {
        cutData = &daAlinkHIO_cutFnSl_c0::m;
        var_r30 = TRUE;
    } else if (i_type == 4) {
        cutData = &daAlinkHIO_cutFnSm_c0::m;
        var_r30 = TRUE;
    } else {
        cutData = &daAlinkHIO_cutFnR_c0::m;
    }

    f32 var_f31;
    if (front_roll) {
        var_f31 = cutData->field_0x1C;
    } else if (mComboCutCount == 3) {
        var_f31 = cutData->field_0x28;
    } else {
        var_f31 = cutData->field_0x0.mStart;
    }

    f32 morf;
    if (!checkZoraWearAbility() && i_checkNoResetFlg0(FLG0_UNDERWATER)) {
        morf = cutParams->m_morf;
    } else {
        morf = cutData->field_0x0.mInterpolation;
    }

    setSingleAnime(cutParams->m_anmID, cutData->field_0x0.mRate, var_f31, cutData->field_0x0.mEndF,
                   morf);

    field_0x3478 = cutData->field_0x1C;
    field_0x347c = cutData->field_0x20;
    field_0x3480 = cutData->field_0x18;

    if (checkHeavyStateOn(1, 1)) {
        field_0x3480 *= mHeavySpeedMultiplier;
    }

    current.angle.y = shape_angle.y;
    field_0x307e = daAlinkHIO_cut_c0::m.mComboDuration;

    if (mComboCutCount == 3) {
        field_0x3484 = cutData->field_0x24;
        field_0x3008 = cutData->field_0x16;
        setSwordAtParam(dCcG_At_Spl_UNK_0, 1, cutParams->m_atSe, 2,
                        daAlinkHIO_cut_c0::m.mSwordLength, daAlinkHIO_cut_c0::m.mSwordRadius);
        field_0x32d0 = Z2SE_AL_SWORD_SWING_S;
    } else {
        field_0x3484 = cutData->field_0x0.field_0x10;
        field_0x3008 = cutData->field_0x14;
        setSwordAtParam(dCcG_At_Spl_UNK_1, 3, cutParams->m_atSe, (var_r30 ? TRUE : FALSE) + 3,
                        daAlinkHIO_cut_c0::m.mSwordLength, daAlinkHIO_cut_c0::m.mSwordRadius);

        if (i_type == 2) {
            field_0x32d0 = Z2SE_AL_SWORD_THRUST;
        } else {
            field_0x32d0 = Z2SE_AL_SWORD_SWING_L;
        }
    }

    if (var_r30) {
        setSwordVoiceSe(Z2SE_AL_V_IAIGIRI);
    } else {
        setSwordComboVoice();
    }

    field_0x2f99 = 12;
    field_0x3588 = l_halfAtnWaitBaseAnime;

    if (mCutType == CUT_TYPE_MORTAL_DRAW_A || mCutType == CUT_TYPE_FINISH_STAB) {
        field_0x2f99 = 13;
    }

    field_0x3012 = 0;
    dComIfGp_setPlayerStatus0(0, 0x8000);
    setCutWaterDropEffect();
    initCutAtnActorSearch();

    if (mAttention->LockonTarget(0) != NULL && var_r30) {
        field_0x280c.setData(mAttention->LockonTarget(0));
    } else {
        field_0x280c.clearData();
    }

    if (mCutType == CUT_TYPE_MORTAL_DRAW_A || mCutType == CUT_TYPE_MORTAL_DRAW_B) {
        field_0x2fd0 = 1;
    } else {
        field_0x2fd0 = 0;
    }

    return 1;
}

/* 800D382C-800D3ADC 0CE16C 02B0+00 1/0 0/0 0/0 .text            procCutFinish__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCutFinish() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutFinish__9daAlink_cFv.s"
}
#pragma pop

/* 800D3ADC-800D3CCC 0CE41C 01F0+00 2/2 0/0 0/0 .text procCutFinishJumpUpInit__9daAlink_cFv */
int daAlink_c::procCutFinishJumpUpInit() {
    BOOL side_roll = mProcID == PROC_SIDE_ROLL;

    commonProcInit(PROC_CUT_FINISH_JUMP_UP);

    if (mEquipItem != 0x103) {
        deleteEquipItem(0, 0);
        setSwordModel();
    }

    setCutType(CUT_TYPE_TWIRL);
    mSpeed.y = daAlinkHIO_cutFnJU_c0::m.field_0x30;
    mNormalSpeed = daAlinkHIO_cutFnJU_c0::m.field_0x2C;

    if (i_checkNoResetFlg0(FLG0_UNDERWATER)) {
        mNormalSpeed *= daAlinkHIO_magneBoots_c0::m.mWaterVelocityX;
        mSpeed.y *= daAlinkHIO_magneBoots_c0::m.mWaterVelocityY;
    } else if (checkHeavyStateOn(1, 1)) {
        mSpeed.y *= lit_7624;
    }

    if (side_roll) {
        if (field_0x2f98 == 2) {
            current.angle.y = shape_angle.y + 0x4000;
        } else {
            current.angle.y = shape_angle.y - 0x4000;
        }
    } else {
        current.angle.y = shape_angle.y;
    }

    field_0x307e = daAlinkHIO_cut_c0::m.mComboDuration;
    f32 var_f31 = daAlinkHIO_cutFnJU_c0::m.field_0x0.mStart;

    setCylAtParam(getSwordAtType(), dCcG_At_Spl_UNK_1, 3, 1, 3, daAlinkHIO_cutFnJU_c0::m.field_0x4C,
                  lit_7625);
    field_0x32cc = Z2SE_AL_SWORD_SWING_L;

    setSingleAnime(ANM_CUT_TWIRL, daAlinkHIO_cutFnJU_c0::m.field_0x0.mRate, var_f31,
                   daAlinkHIO_cutFnJU_c0::m.field_0x0.mEndF,
                   daAlinkHIO_cutFnJU_c0::m.field_0x0.mInterpolation);
    setSwordVoiceSe(Z2SE_AL_V_SOTOMO_ATK);
    field_0x3012 = 0;
    field_0x3478 = current.pos.y;
    dComIfGp_setPlayerStatus0(0, 0x8000);
    setCutWaterDropEffect();
    field_0x2fd0 = 1;
    return 1;
}

/* 800D3CCC-800D3DD8 0CE60C 010C+00 1/0 0/0 0/0 .text            procCutFinishJumpUp__9daAlink_cFv
 */
int daAlink_c::procCutFinishJumpUp() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (frameCtrl->getFrame() >= lit_7448) {
        offModeFlg(0x100);
    }

    if (frameCtrl->getFrame() >= lit_6109) {
        field_0x2f92 = 100;
    }

    if (mLinkAcch.ChkGroundHit()) {
        return procCutFinishJumpUpLandInit();
    }

    if (mDemo.getDemoMode() != 0x52 &&
        current.pos.y < mLastJumpPos.y - daAlinkHIO_cutFnJU_c0::m.field_0x44) {
        return procFallInit(2, daAlinkHIO_cutFnJU_c0::m.field_0x48);
    }

    if (frameCtrl->getFrame() >= daAlinkHIO_cutFnJU_c0::m.field_0x34 &&
        frameCtrl->getFrame() < daAlinkHIO_cutFnJU_c0::m.field_0x38) {
        if (!i_checkNoResetFlg0(FLG0_UNK_40)) {
            seStartSwordCut(field_0x32cc);
        }

        i_onResetFlg0(RFLG0_UNK_2);
    }

    return 1;
}

/* 800D3DD8-800D3ECC 0CE718 00F4+00 1/1 0/0 0/0 .text procCutFinishJumpUpLandInit__9daAlink_cFv */
int daAlink_c::procCutFinishJumpUpLandInit() {
    commonProcInit(PROC_CUT_FINISH_JUMP_UP_LAND);
    checkCutLandDamage();

    setSingleAnimeParam(ANM_CUT_TWIRL_LAND, &daAlinkHIO_cutFnJU_c0::m.field_0x14);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    setCutType(CUT_TYPE_TWIRL);

    field_0x2f9d = 4;
    setFootEffectProcType(2);
    i_onResetFlg1(RFLG1_UNK_30);

    if (mComboCutCount == 3) {
        field_0x3484 = daAlinkHIO_cutFnJU_c0::m.field_0x3C;
        field_0x3008 = daAlinkHIO_cutFnJU_c0::m.field_0x2A;
    } else {
        field_0x3484 = daAlinkHIO_cutFnJU_c0::m.field_0x14.field_0x10;
        field_0x3008 = daAlinkHIO_cutFnJU_c0::m.field_0x28;
    }

    field_0x3012 = 0;
    field_0x3588 = l_halfAtnWaitBaseAnime;
    initCutAtnActorSearch();
    return 1;
}

/* 800D3ECC-800D4068 0CE80C 019C+00 1/0 0/0 0/0 .text procCutFinishJumpUpLand__9daAlink_cFv */
int daAlink_c::procCutFinishJumpUpLand() {
    if (checkGroundSpecialMode()) {
        return 1;
    }

    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;
    i_onEndResetFlg0(ERFLG0_UNK_8000000);

    setComboReserb();
    checkCutTurnCharge();
    field_0x2f99 = 4;
    checkCutAtnActorChange();

    if (frameCtrl->checkAnmEnd()) {
        if (mDemo.getDemoMode() == 0x52) {
            dComIfGp_evmng_cutEnd(field_0x3184);
        } else if (field_0x3008 > 0) {
            if (!(frameCtrl->getFrame() > field_0x3484) || !checkCutCancelNextMode(3)) {
                field_0x3008--;
            }
        } else {
            mNormalSpeed = FLOAT_LABEL(lit_6108);
            field_0x2f98 = 2;
            checkNextAction(0);
        }
    } else if (!(frameCtrl->getFrame() > field_0x3484) || !checkCutCancelNextMode(3)) {
        if (frameCtrl->getFrame() > field_0x3484) {
            resetCombo(1);
        }

        setShapeAngleToAtnActor(field_0x3010);

        if (cLib_distanceAngleS(getShapeAngleYAtnActor(), shape_angle.y) < 0x800) {
            field_0x3010 = 1;
        }

        current.angle.y = shape_angle.y;

        if (frameCtrl->getFrame() >= lit_7710) {
            field_0x2f92 = 0;
        }
    }

    return 1;
}

/* 800D4068-800D41FC 0CE9A8 0194+00 2/2 0/0 0/0 .text
 * procCutReverseInit__9daAlink_cFQ29daAlink_c11daAlink_ANM     */
int daAlink_c::procCutReverseInit(daAlink_c::daAlink_ANM i_anmID) {
    dKy_Sound_set(current.pos, 100, fopAcM_GetID(this), 5);

    if (i_anmID == ANM_CUT_JUMP) {
        return 1;
    }

    commonProcInit(PROC_CUT_REVERSE);

    if (i_anmID == ANM_SHIELD_ATTACK_RECOIL) {
        setSingleAnimeParam(i_anmID, &daAlinkHIO_guard_c0::m.field_0x28);
        mCommonCounter = 1;
        field_0x3478 = daAlinkHIO_guard_c0::m.field_0x28.field_0x10;
        field_0x2f98 = 2;
        setUpperGuardAnime(lit_6041);
    } else {
        setSingleAnimeParam(i_anmID, &daAlinkHIO_cut_c0::m.mRecoilAnm);
        mCommonCounter = 0;
        field_0x3478 = daAlinkHIO_cut_c0::m.mRecoilAnm.field_0x10;
        field_0x2f98 = 4;
    }

    mNormalSpeed = daAlinkHIO_cut_c0::m.mRecoilSpeed;
    current.angle.y = shape_angle.y - -0x8000;
    field_0x307e = 0;
    field_0x3012 = 0;

    int temp_r3;
    if (mCutType == CUT_TYPE_MORTAL_DRAW_A || mCutType == CUT_TYPE_MORTAL_DRAW_B ||
        mCutType == CUT_TYPE_JUMP) {
        temp_r3 = 5;
    } else {
        temp_r3 = 3;
    }

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    dComIfGp_getVibration().StartShock(temp_r3, 31, cXyz(tmp_0, lit_6040, tmp_0));
    return 1;
}

/* 800D41FC-800D42FC 0CEB3C 0100+00 1/0 0/0 0/0 .text            procCutReverse__9daAlink_cFv */
int daAlink_c::procCutReverse() {
    if (checkGroundSpecialMode()) {
        return 1;
    }

    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;
    cLib_chaseF(&mNormalSpeed, FLOAT_LABEL(lit_6108), daAlinkHIO_cut_c0::m.mRecoilDeceleration);

    if (mCommonCounter == 0) {
        checkCutTurnCharge();
        i_onEndResetFlg0(ERFLG0_UNK_8000000);
    }

    if (mCommonCounter != 0) {
        setUpperGuardAnime(lit_6041);
    }

    if (frameCtrl->checkAnmEnd()) {
        current.angle.y = shape_angle.y;
        checkNextAction(0);
    } else if (frameCtrl->getFrame() > field_0x3478) {
        current.angle.y = shape_angle.y;

        if (!checkNextAction(1)) {
            current.angle.y = shape_angle.y - -0x8000;
        }
    }

    return 1;
}

/* 800D42FC-800D43F8 0CEC3C 00FC+00 2/2 0/0 0/0 .text            procCutJumpInit__9daAlink_cFi */
int daAlink_c::procCutJumpInit(int i_airCut) {
    commonProcInit(PROC_CUT_JUMP);
    setSingleAnimeParam(ANM_CUT_JUMP, &daAlinkHIO_cutJump_c0::m.mCutAnm);

    if (i_airCut) {
        mNormalSpeed = daAlinkHIO_cutJump_c0::m.mAirJumpSpeedH;
        mSpeed.y = daAlinkHIO_cutJump_c0::m.mAirJumpSpeedV;
    } else {
        mNormalSpeed = daAlinkHIO_cutJump_c0::m.mBaseJumpSpeedH;
        mSpeed.y = daAlinkHIO_cutJump_c0::m.mBaseJumpSpeedV;
    }

    setCutJumpSpeed(i_airCut);
    current.angle.y = shape_angle.y;
    setSwordAtParam(dCcG_At_Spl_UNK_1, 3, 1, 3, daAlinkHIO_cut_c0::m.mSwordLength,
                    daAlinkHIO_cut_c0::m.mSwordRadius);
    setCutType(CUT_TYPE_JUMP);
    setSwordComboVoice();
    dComIfGp_setPlayerStatus0(0, 0x8000);
    field_0x3198 = 2;
    return 1;
}

/* 800D43F8-800D452C 0CED38 0134+00 1/0 0/0 0/0 .text            procCutJump__9daAlink_cFv */
int daAlink_c::procCutJump() {
    if (current.angle.y == shape_angle.y && changeCutReverseProc(ANM_CUT_JUMP)) {
        current.angle.y += 0x8000;
        mNormalSpeed = lit_7807;

        f32 tmp_0 = FLOAT_LABEL(lit_6108);
        dComIfGp_getVibration().StartShock(5, 31, cXyz(tmp_0, lit_6040, tmp_0));
    } else if (current.angle.y != shape_angle.y) {
        cLib_chaseF(&mNormalSpeed, lit_7808, lit_6040);
    }

    if (checkCutTurnInput()) {
        field_0x3198 = getCutTurnDirection();
    }

    if (mLinkAcch.ChkGroundHit()) {
        procCutJumpLandInit(field_0x3198);
    } else if (mUnderFrameCtrl[0].getFrame() >= daAlinkHIO_cutJump_c0::m.mStartAttackFrame) {
        if (!i_checkNoResetFlg0(FLG0_UNK_40)) {
            seStartSwordCut(Z2SE_AL_SWORD_SWING_L);
        }

        i_onResetFlg0(RFLG0_UNK_2);
    }

    return 1;
}

/* 800D452C-800D4684 0CEE6C 0158+00 1/1 0/0 0/0 .text            procCutJumpLandInit__9daAlink_cFi
 */
int daAlink_c::procCutJumpLandInit(int param_0) {
    commonProcInit(PROC_CUT_JUMP_LAND);
    checkCutLandDamage();
    setSingleAnimeParam(ANM_CUT_JUMP_LAND, &daAlinkHIO_cutJump_c0::m.mLandAnm);

    if (i_checkNoResetFlg0(FLG0_UNDERWATER)) {
        field_0x2060->initOldFrameMorf(lit_7808 * daAlinkHIO_cutJump_c0::m.mLandAnm.mInterpolation,
                                       0, 0x23);
    }

    if (!i_checkNoResetFlg0(FLG0_UNK_40)) {
        seStartSwordCut(Z2SE_AL_SWORD_SWING_L);
        m_swordBlur.initBlur(FLOAT_LABEL(lit_6108), 0, &mSwordTopPos, &field_0x3498, &field_0x34a4);
        setSwordAtParam(dCcG_At_Spl_UNK_1, 3, 1, 3, daAlinkHIO_cut_c0::m.mSwordLength,
                        daAlinkHIO_cut_c0::m.mSwordRadius);
    }

    i_onResetFlg0(RFLG0_UNK_2);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    setCutType(CUT_TYPE_JUMP);
    field_0x2f9d = 4;
    setFootEffectProcType(2);

    i_onResetFlg1(RFLG1_UNK_30);
    field_0x3588 = l_halfAtnWaitBaseAnime;
    field_0x3198 = param_0;
    setStepLandVibration();
    return 1;
}

/* 800D4684-800D47DC 0CEFC4 0158+00 1/0 0/0 0/0 .text            procCutJumpLand__9daAlink_cFv */
int daAlink_c::procCutJumpLand() {
    if (checkGroundSpecialMode()) {
        return 1;
    }

    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (changeCutReverseProc(ANM_CUT_RECOIL_B)) {
        return 1;
    }

    field_0x2f99 = 4;
    i_onEndResetFlg0(ERFLG0_UNK_8000000);

    if (field_0x3198 != 2 && checkCutTurnInput()) {
        field_0x3198 = getCutTurnDirection();
    }

    if (frameCtrl->checkAnmEnd()) {
        checkNextAction(0);
    } else if (frameCtrl->getFrame() > daAlinkHIO_cutJump_c0::m.mJumpSpinDelay &&
               field_0x3198 != 2) {
        procCutTurnInit(1, field_0x3198);
    } else {
        if (frameCtrl->getFrame() > daAlinkHIO_cutJump_c0::m.mLandAnm.field_0x10) {
            onModeFlg(4);

            if (checkNextAction(1)) {
                return 1;
            }
        }

        if (frameCtrl->getFrame() < daAlinkHIO_cutJump_c0::m.mEndAttackFrame) {
            i_onResetFlg0(RFLG0_UNK_2);
        }
    }

    return 1;
}

/* 800D47DC-800D4A74 0CF11C 0298+00 7/7 0/0 0/0 .text            procCutTurnInit__9daAlink_cFii */
// regalloc
#ifdef NONMATCHING
int daAlink_c::procCutTurnInit(int param_0, int param_1) {
    const daAlinkHIO_cutTurn_c1* cutData = &daAlinkHIO_cutTurn_c0::m;
    const daAlinkHIO_anm_c* anm_data;
    daAlink_ANM anmID;

    commonProcInit(PROC_CUT_TURN);

    if (param_1 == 2) {
        param_1 = getCutTurnDirection();
    }

    f32 var_f31;
    if (param_1 == 1) {
        anmID = ANM_CUT_TURN_RIGHT;
        anm_data = &cutData->field_0x0;

        if (param_0) {
            var_f31 = cutData->field_0x40;
        } else {
            var_f31 = cutData->field_0x0.mStart;
        }

        field_0x3484 = cutData->field_0x44;
        field_0x3488 = cutData->field_0x48;
        field_0x3010 = 1;
        field_0x300a = 6;
    } else {
        anmID = ANM_CUT_TURN_LEFT;
        anm_data = &cutData->field_0x28;

        if (param_0) {
            var_f31 = cutData->field_0x74;
        } else {
            var_f31 = anm_data->mStart;
        }

        field_0x3484 = cutData->field_0x78;
        field_0x3488 = cutData->field_0x7C;
        field_0x3010 = 0;
        field_0x300a = 8;
    }

    field_0x3480 = anm_data->field_0x10;
    resetCombo(1);

    f32 morf;
    if (!checkZoraWearAbility() && i_checkNoResetFlg0(FLG0_UNDERWATER)) {
        morf = lit_7625;
    } else {
        morf = anm_data->mInterpolation;
    }

    setSingleAnime(anmID, anm_data->mRate, var_f31, anm_data->mEndF, morf);

    int var_r29_3;
    if (checkCutLargeTurnState()) {
        var_r29_3 = 4;
        field_0x32cc = Z2SE_AL_KAITEN_L_SLASH;
        setSwordVoiceSe(Z2SE_AL_V_KAITENGIRI_L);
        field_0x3478 = cutData->field_0x90;
        field_0x348c = cutData->field_0x94;

        if (anmID == ANM_CUT_TURN_RIGHT) {
            setCutType(CUT_TYPE_LARGE_TURN_RIGHT);
        } else {
            setCutType(CUT_TYPE_LARGE_TURN_LEFT);
        }
    } else {
        var_r29_3 = 3;
        field_0x32cc = Z2SE_AL_KAITENGIRI;
        setSwordVoiceSe(Z2SE_AL_V_KAITEN);

        if (anmID == ANM_CUT_TURN_RIGHT) {
            setCutType(CUT_TYPE_TURN_RIGHT);
        } else {
            setCutType(CUT_TYPE_TURN_LEFT);
        }

        if (i_checkNoResetFlg3(FLG3_UNK_100000)) {
            field_0x3478 = cutData->field_0x88;
            field_0x348c = cutData->field_0x8C;
        } else {
            field_0x3478 = cutData->field_0x70;
            field_0x348c = cutData->field_0x84;
        }
    }

    field_0x347c = lit_6896;
    field_0x3588 = l_halfAtnWaitBaseAnime;
    field_0x3008 = cutData->field_0x3C;
    current.angle.y = shape_angle.y;
    field_0x3180 = 0;
    dComIfGp_setPlayerStatus0(0, 0x8000);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    field_0x3012 = 0;
    setCutWaterDropEffect();
    initCutTurnAt(field_0x347c, var_r29_3);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCutTurnInit(int param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procCutTurnInit__9daAlink_cFii.s"
}
#pragma pop
#endif

/* 800D4A74-800D4C68 0CF3B4 01F4+00 1/0 0/0 0/0 .text            procCutTurn__9daAlink_cFv */
int daAlink_c::procCutTurn() {
    if (checkGroundSpecialMode()) {
        return 1;
    }

    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;
    field_0x2f99 = 4;
    cLib_chaseF(&mNormalSpeed, FLOAT_LABEL(lit_6108), daAlinkHIO_move_c0::m.mDeceleration);
    i_onEndResetFlg0(ERFLG0_UNK_8000000);

    if (mComboCutCount != 0) {
        field_0x307e = daAlinkHIO_cut_c0::m.mComboDuration;
    }

    if (frameCtrl->getFrame() >= lit_7945) {
        field_0x2f92 = 0;
    }

    if (frameCtrl->checkAnmEnd()) {
        if (field_0x3008 > 0) {
            if (!(frameCtrl->getFrame() > field_0x3480) || !checkCutCancelNextMode(3)) {
                field_0x3008--;
            }
        } else if (mDemo.getDemoMode() == 0x24) {
            dComIfGp_evmng_cutEnd(field_0x3184);
        } else {
            field_0x2f98 = 3;
            checkNextAction(0);
        }
    } else if (!(frameCtrl->getFrame() > field_0x3480) || !checkCutCancelNextMode(3)) {
        if (frameCtrl->getFrame() >= field_0x3484 && frameCtrl->getFrame() < field_0x3488) {
            if (!i_checkNoResetFlg0(FLG0_UNK_40)) {
                seStartSwordCut(field_0x32cc);
                mNormalSpeed = daAlinkHIO_cutTurn_c0::m.field_0x68;

                if (checkHeavyStateOn(1, 1)) {
                    mNormalSpeed *= mHeavySpeedMultiplier;
                }
            }

            i_onResetFlg0(RFLG0_UNK_2);
            cLib_chaseF(&field_0x347c, field_0x3478, field_0x348c);
            field_0xFB8.SetR(field_0x347c);
        }
    }

    return 1;
}

/* 800D4C68-800D4D04 0CF5A8 009C+00 3/3 0/0 0/0 .text            procCutTurnChargeInit__9daAlink_cFv
 */
int daAlink_c::procCutTurnChargeInit() {
    if (mComboCutCount == 0 && checkDashAnime()) {
        setUpperAnimeBase(0x83);
        return 1;
    }

    commonProcInit(PROC_CUT_TURN_CHARGE);
    setSingleAnimeParam(ANM_CUT_TURN_CHARGE_START, &daAlinkHIO_cutTurn_c0::m.field_0x14);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    current.angle.y = shape_angle.y;
    mCommonCounter = daAlinkHIO_cut_c0::m.mNormalSwingDuration;
    return 1;
}

/* 800D4D04-800D4DDC 0CF644 00D8+00 1/0 0/0 0/0 .text            procCutTurnCharge__9daAlink_cFv */
int daAlink_c::procCutTurnCharge() {
    if (checkGroundSpecialMode()) {
        return 1;
    }

    setSwordChargeVoiceSe();
    field_0x307e = daAlinkHIO_cut_c0::m.mComboDuration;

    if (!swordButton() && mDemo.getDemoMode() != 0x5B) {
        if (mCommonCounter != 0) {
            checkCutAction();
        } else {
            cancelCutCharge();
        }
    } else if (mUnderFrameCtrl[0].checkAnmEnd()) {
        procCutTurnMoveInit(0);
    } else if (mUnderFrameCtrl[0].getFrame() >= lit_7977) {
        field_0x2f92 = 100;
    }

    return 1;
}

/* 800D4DDC-800D4EFC 0CF71C 0120+00 3/3 0/0 0/0 .text            procCutTurnMoveInit__9daAlink_cFi
 */
int daAlink_c::procCutTurnMoveInit(int param_0) {
    commonProcInit(PROC_CUT_TURN_MOVE);

    if (checkZeroSpeedF()) {
        onModeFlg(1);
    }

    if (param_0) {
        setUpperAnimeBaseSpeed(getMainBckData(ANM_CUT_JUMP_LARGE_CHARGE)->m_underID,
                               FLOAT_LABEL(lit_6108), lit_6041);

        f32 frame = mUnderFrameCtrl[0].getFrame();
        mUpperFrameCtrl[2].setFrame(frame);
        getNowAnmPackUpper(UPPER_2)->setFrame(frame);
        setFacePriAnime(ANM_CUT_JUMP_LARGE_CHARGE);
    }

    setSingleAnimeBaseSpeed(ANM_CUT_TURN_CHARGE, FLOAT_LABEL(lit_6108),
                            daAlinkHIO_cutTurn_c0::m.field_0x50);
    field_0x2f98 = 0;
    field_0x594 = daAlinkHIO_cutTurn_c0::m.field_0x5C;

    if (!checkWoodSwordEquip()) {
        simpleAnmPlay(m_nSwordBtk);
    } else {
        field_0x3008 = 1;
    }

    mCommonCounter = param_0;
    i_onNoResetFlg1(FLG1_UNK_10000000);
    dComIfGp_setPlayerStatus0(0, 0x40000000);
    return 1;
}

/* 800D4EFC-800D53C8 0CF83C 04CC+00 1/0 0/0 0/0 .text            procCutTurnMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCutTurnMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutTurnMove__9daAlink_cFv.s"
}
#pragma pop

/* 800D53C8-800D57F8 0CFD08 0430+00 2/1 0/0 0/0 .text            procCutDownInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCutDownInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutDownInit__9daAlink_cFv.s"
}
#pragma pop

/* 800D57F8-800D58A0 0D0138 00A8+00 1/0 0/0 0/0 .text            procCutDown__9daAlink_cFv */
int daAlink_c::procCutDown() {
    if (field_0x300e != 0) {
        return 1;
    }

    if (mLinkAcch.ChkGroundHit() && mSpeed.y <= FLOAT_LABEL(lit_6108)) {
        procCutDownLandInit((fopEn_enemy_c*)field_0x280c.getActor());
    } else if (mUnderFrameCtrl[0].checkAnmEnd() && mCommonCounter == 0) {
        mCommonCounter = 1;
        setSingleAnimeParam(ANM_CUT_FINISHING_BLOW_FALL, &daAlinkHIO_cutDown_c0::m.field_0x14);
    }

    return 1;
}

/* 800D58A0-800D5ADC 0D01E0 023C+00 1/1 0/0 0/0 .text
 * procCutDownLandInit__9daAlink_cFP13fopEn_enemy_c             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCutDownLandInit(fopEn_enemy_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procCutDownLandInit__9daAlink_cFP13fopEn_enemy_c.s"
}
#pragma pop

/* 800D5ADC-800D5C88 0D041C 01AC+00 1/0 0/0 0/0 .text            procCutDownLand__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCutDownLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutDownLand__9daAlink_cFv.s"
}
#pragma pop

/* 800D5C88-800D5FC8 0D05C8 0340+00 2/1 0/0 0/0 .text            procCutHeadInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCutHeadInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutHeadInit__9daAlink_cFv.s"
}
#pragma pop

/* 800D5FC8-800D6130 0D0908 0168+00 1/0 0/0 0/0 .text            procCutHead__9daAlink_cFv */
int daAlink_c::procCutHead() {
    if (field_0x300e == 0) {
        cLib_chaseF(&mNormalSpeed, FLOAT_LABEL(lit_6108), field_0x3478);

        if (mSpeed.y <= FLOAT_LABEL(lit_6108)) {
            setSingleAnimeParam(ANM_CUT_HEAD, &daAlinkHIO_cutHead_c0::m.field_0x14);
            f32 tmp_0 = FLOAT_LABEL(lit_6108);
            mNormalSpeed = tmp_0;
            mSpeed.y = tmp_0;
            setSpecialGravity(tmp_0, mMaxFallSpeed, 0);
            field_0x300e = 1;
            setCutWaterDropEffect();
            setSwordVoiceSe(Z2SE_AL_V_KABUTO_ATK);
        }
    } else {
        daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;
        mNormalSpeed *= lit_8501;

        if (frameCtrl->checkPass(lit_8502)) {
            mSpeed.y = daAlinkHIO_cutHead_c0::m.field_0x48;
            mNormalSpeed = daAlinkHIO_cutHead_c0::m.field_0x4C;
            initGravity();
        }

        if (frameCtrl->getFrame() >= daAlinkHIO_cutHead_c0::m.field_0x50 &&
            frameCtrl->getFrame() < daAlinkHIO_cutHead_c0::m.field_0x54) {
            if (!i_checkNoResetFlg0(FLG0_UNK_40)) {
                seStartSwordCut(Z2SE_AL_SWORD_SWING_L);
            }

            i_onResetFlg0(RFLG0_UNK_2);
        }

        if (mLinkAcch.ChkGroundHit()) {
            procCutHeadLandInit();
        }
    }

    return 1;
}

/* 800D6130-800D618C 0D0A70 005C+00 1/1 0/0 0/0 .text            procCutHeadLandInit__9daAlink_cFv
 */
int daAlink_c::procCutHeadLandInit() {
    commonProcInit(PROC_CUT_HEAD_LAND);
    checkCutLandDamage();
    setSingleAnimeParam(ANM_CUT_HEAD_LAND, &daAlinkHIO_cutHead_c0::m.field_0x28);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    return 1;
}

/* 800D618C-800D6238 0D0ACC 00AC+00 1/0 0/0 0/0 .text            procCutHeadLand__9daAlink_cFv */
int daAlink_c::procCutHeadLand() {
    i_onEndResetFlg0(ERFLG0_UNK_8000000);
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;

    if (frameCtrl->checkAnmEnd()) {
        if (mDemo.getDemoMode() == 0x53) {
            dComIfGp_evmng_cutEnd(field_0x3184);
        } else {
            checkNextAction(0);
        }
    } else if (frameCtrl->getFrame() > daAlinkHIO_cutHead_c0::m.field_0x28.field_0x10) {
        checkNextAction(1);
    }

    return 1;
}

/* 800D6238-800D62A0 0D0B78 0068+00 2/2 0/0 0/0 .text procCutLargeJumpChargeInit__9daAlink_cFv */
int daAlink_c::procCutLargeJumpChargeInit() {
    commonProcInit(PROC_CUT_LARGE_JUMP_CHARGE);
    setSingleAnimeParam(ANM_CUT_JUMP_LARGE_CHARGE, &daAlinkHIO_cutLargeJump_c0::m.mChargeAnm);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    current.angle.y = shape_angle.y;
    mCommonCounter = daAlinkHIO_cut_c0::m.mNormalSwingDuration;
    return 1;
}

/* 800D62A0-800D6374 0D0BE0 00D4+00 1/0 0/0 0/0 .text procCutLargeJumpCharge__9daAlink_cFv */
int daAlink_c::procCutLargeJumpCharge() {
    if (checkGroundSpecialMode()) {
        return 1;
    }

    if (checkDownAttackState()) {
        setDoStatusEmphasys(0x30);
    } else if (checkCutHeadState()) {
        setDoStatusEmphasys(0x77);
    } else {
        setDoStatus(0x86);
    }

    setSwordChargeVoiceSe();

    if (!doButton() && mDemo.getDemoMode() != 0x5C) {
        checkDoCutAction();
    } else if (mUnderFrameCtrl[0].checkAnmEnd()) {
        procCutTurnMoveInit(1);
    }

    return 1;
}

/* 800D6374-800D6484 0D0CB4 0110+00 2/1 0/0 0/0 .text            procCutLargeJumpInit__9daAlink_cFv
 */
int daAlink_c::procCutLargeJumpInit() {
    if (mDemo.getDemoMode() == 0x56 &&
        (mProcID == PROC_CUT_LARGE_JUMP || mProcID == PROC_CUT_LARGE_JUMP_LAND)) {
        return 1;
    }

    commonProcInit(PROC_CUT_LARGE_JUMP);
    setSingleAnimeParam(ANM_CUT_JUMP_LARGE_START, &daAlinkHIO_cutLargeJump_c0::m.mChargeMoveAnm);
    field_0x3588 = l_halfAtnWaitBaseAnime;
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    current.angle.y = shape_angle.y;
    mCommonCounter = 0;

    setSwordAtParam(dCcG_At_Spl_UNK_0, 1, 1, 2, daAlinkHIO_cut_c0::m.mSwordLength,
                    daAlinkHIO_cut_c0::m.mSwordRadius);
    setCutType(CUT_TYPE_LARGE_JUMP_INIT);
    setSwordVoiceSe(Z2SE_AL_V_JUMP_ATTACK_L_1);
    setCutWaterDropEffect();
    field_0x300e = 4;
    field_0x3010 = 0;
    field_0x3198 = 2;
    return 1;
}

/* 800D6484-800D66C0 0D0DC4 023C+00 1/0 0/0 0/0 .text            procCutLargeJump__9daAlink_cFv */
int daAlink_c::procCutLargeJump() {
    daPy_frameCtrl_c* frameCtrl = &mUnderFrameCtrl[0];

    if (field_0x3010 != 0) {
        field_0x2f99 = 4;
    }

    if (i_checkModeFlg(2) && checkCutTurnInput()) {
        field_0x3198 = getCutTurnDirection();
    }

    if (mCommonCounter == 0) {
        if (frameCtrl->checkAnmEnd()) {
            field_0x2f99 = 12;
            setSingleAnimeParam(ANM_CUT_JUMP_LARGE, &daAlinkHIO_cutLargeJump_c0::m.mCutAnm);
            mCommonCounter = 1;
            setSwordVoiceSe(Z2SE_AL_V_JUMP_ATTACK_L_2);
        } else {
            if (frameCtrl->getFrame() >= lit_7307) {
                field_0x3010 = 1;
            }

            if (!i_checkModeFlg(2) && frameCtrl->getFrame() >= lit_7808) {
                setJumpMode();
                mNormalSpeed = daAlinkHIO_cutLargeJump_c0::m.mCutSpeedH;
                mSpeed.y = daAlinkHIO_cutLargeJump_c0::m.mCutSpeedV;
                setCutJumpSpeed(0);
            }

            if (frameCtrl->getFrame() >= daAlinkHIO_cutLargeJump_c0::m.mJumpAttackStartF &&
                frameCtrl->getFrame() < daAlinkHIO_cutLargeJump_c0::m.mJumpAttackEndF) {
                if (!i_checkNoResetFlg0(FLG0_UNK_40)) {
                    seStartSwordCut(Z2SE_AL_SWORD_SWING_S);
                }
                i_onResetFlg0(2);
            }
        }
    } else {
        if (field_0x300e != 0) {
            field_0x300e--;

            if (field_0x300e == 0) {
                setSwordAtParam(dCcG_At_Spl_UNK_1, 3, 1, 4, daAlinkHIO_cut_c0::m.mSwordLength,
                                daAlinkHIO_cut_c0::m.mSwordRadius);
                setCutType(CUT_TYPE_LARGE_JUMP);
            }
        }

        if (mLinkAcch.ChkGroundHit()) {
            procCutLargeJumpLandInit(field_0x3198);
        } else if (frameCtrl->getFrame() >= daAlinkHIO_cutLargeJump_c0::m.mCutInitF) {
            if (!i_checkNoResetFlg0(FLG0_UNK_40)) {
                seStartSwordCut(Z2SE_AL_SWORD_SWING_S);
            }

            i_onResetFlg0(2);
        }
    }

    return 1;
}

/* 800D66C0-800D67FC 0D1000 013C+00 1/1 0/0 0/0 .text procCutLargeJumpLandInit__9daAlink_cFi */
int daAlink_c::procCutLargeJumpLandInit(int param_0) {
    commonProcInit(PROC_CUT_LARGE_JUMP_LAND);
    checkCutLandDamage();
    setSingleAnimeParam(ANM_CUT_JUMP_LARGE_LAND, &daAlinkHIO_cutLargeJump_c0::m.mLandAnm);
    mNormalSpeed = FLOAT_LABEL(lit_6108);
    field_0x2f99 = 12;
    field_0x3588 = l_halfAtnWaitBaseAnime;
    field_0x2f9d = 4;
    setFootEffectProcType(4);
    i_onResetFlg1(RFLG1_UNK_30);
    i_onResetFlg0(RFLG0_UNK_2);
    setCutType(CUT_TYPE_LARGE_JUMP);
    field_0x3478 = daAlinkHIO_cutLargeJump_c0::m.mLandAttackRadius;
    field_0x347c = lit_6896;
    mCommonCounter = 0;
    field_0x3198 = param_0;

    f32 tmp_0 = FLOAT_LABEL(lit_6108);
    dComIfGp_getVibration().StartShock(3, 31, cXyz(tmp_0, lit_6040, tmp_0));
    setCutLargeJumpLandEffect();
    seStartOnlyReverb(Z2SE_AL_JUMP_ATK_L_IMPACT);
    return 1;
}

/* 800D67FC-800D698C 0D113C 0190+00 1/0 0/0 0/0 .text            procCutLargeJumpLand__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCutLargeJumpLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutLargeJumpLand__9daAlink_cFv.s"
}
#pragma pop

/* 800D698C-800D6A38 0D12CC 00AC+00 2/1 0/0 0/0 .text procSwordUnequipSpInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procSwordUnequipSpInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procSwordUnequipSpInit__9daAlink_cFv.s"
}
#pragma pop

/* 800D6A38-800D6D94 0D1378 035C+00 1/0 0/0 0/0 .text            procSwordUnequipSp__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procSwordUnequipSp() {
    nofralloc
#include "asm/d/a/d_a_alink/procSwordUnequipSp__9daAlink_cFv.s"
}
#pragma pop