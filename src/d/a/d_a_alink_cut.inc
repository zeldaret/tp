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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkLightSwordMtrl() {
    nofralloc
#include "asm/d/a/d_a_alink/checkLightSwordMtrl__9daAlink_cFv.s"
}
#pragma pop

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
#ifdef NONMATCHING
bool daAlink_c::checkCutFinishJumpUp() {
    return checkCutBackState() && (!checkNotBattleStage() && swordSwingTrigger());
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::checkCutFinishJumpUp() {
    nofralloc
#include "asm/d/a/d_a_alink/checkCutFinishJumpUp__9daAlink_cFv.s"
}
#pragma pop
#endif

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
    return mCutType == TYPE_CUT_STAB || mCutType == TYPE_CUT_STAB_COMBO ||
           mCutType == TYPE_CUT_STAB_FINISH || i_checkNoResetFlg0(FLG0_UNDERWATER);
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
// something with i_checkAttentionLock
#ifdef NONMATCHING
void daAlink_c::checkComboCnt() {
    if ((mEquipItem == EQUIP_SWORD && mComboCutCount == 2) &&
        (i_checkAttentionLock() && (field_0x122C[0].ChkAtHit() || field_0x122C[1].ChkAtHit() ||
                                    field_0x122C[2].ChkAtHit()))) {
        i_onNoResetFlg0(FLG0_UNK_8000);
    }
    if (field_0x307e > 0) {
        field_0x307e--;
    } else {
        resetCombo(1);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkComboCnt() {
    nofralloc
#include "asm/d/a/d_a_alink/checkComboCnt__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800D152C-800D1540 0CBE6C 0014+00 22/22 0/0 0/0 .text            setCutType__9daAlink_cFUc */
void daAlink_c::setCutType(u8 type) {
    mCutType = type;
    i_offResetFlg0(RFLG0_UNK_8000000);
}

/* 800D1540-800D1688 0CBE80 0148+00 8/8 0/0 0/0 .text
 * setCylAtParam__9daAlink_cFUl11dCcG_At_SplUcUciff             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setCylAtParam(u32 param_0, dCcG_At_Spl param_1, u8 param_2, u8 param_3,
                                  int param_4, f32 param_5, f32 param_6) {
    nofralloc
#include "asm/d/a/d_a_alink/setCylAtParam__9daAlink_cFUl11dCcG_At_SplUcUciff.s"
}
#pragma pop

/* 800D1688-800D1788 0CBFC8 0100+00 9/9 0/0 0/0 .text
 * setSwordAtParam__9daAlink_cF11dCcG_At_SplUcUciff             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSwordAtParam(dCcG_At_Spl param_0, u8 param_1, u8 param_2, int param_3,
                                    f32 param_4, f32 param_5) {
    nofralloc
#include "asm/d/a/d_a_alink/setSwordAtParam__9daAlink_cF11dCcG_At_SplUcUciff.s"
}
#pragma pop

/* 800D1788-800D17EC 0CC0C8 0064+00 1/1 0/0 1/1 .text
 * notSwordHitVibActor__9daAlink_cFP10fopAc_ac_c                */
bool daAlink_c::notSwordHitVibActor(fopAc_ac_c* p_actor) {
    if (p_actor != NULL && fopAcM_GetGroup(p_actor) == 4) {
        s16 name = fopAcM_GetName(p_actor);
        if (!checkSpecialNpc(p_actor) && name != 0x108 && name != 0x240) {
            return true;
        }
    }
    return false;
}

/* 800D17EC-800D1920 0CC12C 0134+00 4/4 0/0 0/0 .text
 * setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setSwordHitVibration(dCcD_GObjInf* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setSwordHitVibration__9daAlink_cFP12dCcD_GObjInf.s"
}
#pragma pop

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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setCutDash(int param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/setCutDash__9daAlink_cFii.s"
}
#pragma pop

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
bool daAlink_c::commonCutAction() {
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
        return true;
    } else {
        return false;
    }
}

/* 800D2284-800D22BC 0CCBC4 0038+00 13/13 0/0 0/0 .text            setSwordVoiceSe__9daAlink_cFUl */
void daAlink_c::setSwordVoiceSe(u32 sfx_id) {
    if (!i_checkNoResetFlg0(FLG0_UNDERWATER)) {
        voiceStart(sfx_id);
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
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkCutAction() {
    nofralloc
#include "asm/d/a/d_a_alink/checkCutAction__9daAlink_cFv.s"
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
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::getCutDirection() {
    nofralloc
#include "asm/d/a/d_a_alink/getCutDirection__9daAlink_cFv.s"
}
#pragma pop

/* 800D2760-800D27E4 0CD0A0 0084+00 4/4 0/0 0/0 .text checkCutCancelNextMode__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkCutCancelNextMode(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/checkCutCancelNextMode__9daAlink_cFi.s"
}
#pragma pop

/* 800D27E4-800D2890 0CD124 00AC+00 4/4 0/0 0/0 .text            checkDoCutAction__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkDoCutAction() {
    nofralloc
#include "asm/d/a/d_a_alink/checkDoCutAction__9daAlink_cFv.s"
}
#pragma pop

/* 800D2890-800D28F4 0CD1D0 0064+00 2/2 0/0 0/0 .text            checkCutBackState__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm BOOL daAlink_c::checkCutBackState() {
    nofralloc
#include "asm/d/a/d_a_alink/checkCutBackState__9daAlink_cFv.s"
}
#pragma pop

/* 800D28F4-800D29D4 0CD234 00E0+00 6/6 0/0 0/0 .text            checkCutHeadState__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkCutHeadState() {
    nofralloc
#include "asm/d/a/d_a_alink/checkCutHeadState__9daAlink_cFv.s"
}
#pragma pop

/* 800D29D4-800D2ABC 0CD314 00E8+00 4/4 0/0 0/0 .text            checkDownAttackState__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkDownAttackState() {
    nofralloc
#include "asm/d/a/d_a_alink/checkDownAttackState__9daAlink_cFv.s"
}
#pragma pop

/* 800D2ABC-800D2B88 0CD3FC 00CC+00 1/1 1/1 0/0 .text checkCutLargeTurnState__9daAlink_cCFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkCutLargeTurnState() const {
    nofralloc
#include "asm/d/a/d_a_alink/checkCutLargeTurnState__9daAlink_cCFv.s"
}
#pragma pop

/* 800D2B88-800D2BFC 0CD4C8 0074+00 2/2 0/0 0/0 .text            cancelCutCharge__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::cancelCutCharge() {
    nofralloc
#include "asm/d/a/d_a_alink/cancelCutCharge__9daAlink_cFv.s"
}
#pragma pop

/* 800D2BFC-800D2C54 0CD53C 0058+00 3/3 0/0 0/0 .text            initCutAtnActorSearch__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::initCutAtnActorSearch() {
    nofralloc
#include "asm/d/a/d_a_alink/initCutAtnActorSearch__9daAlink_cFv.s"
}
#pragma pop

/* 800D2C54-800D2C78 0CD594 0024+00 3/3 0/0 0/0 .text checkCutAtnActorChange__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::checkCutAtnActorChange() {
    nofralloc
#include "asm/d/a/d_a_alink/checkCutAtnActorChange__9daAlink_cFv.s"
}
#pragma pop

/* 800D2C78-800D2F58 0CD5B8 02E0+00 2/2 0/0 0/0 .text            setCutJumpSpeed__9daAlink_cFi */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setCutJumpSpeed(int cut_type) {
    if (i_checkNoResetFlg0(FLG0_UNDERWATER)) {
        mNormalSpeed *= daAlinkHIO_magneBoots_c0::m.mWaterVelocityX;
        mSpeed.y *= daAlinkHIO_magneBoots_c0::m.mWaterVelocityY;
    } else if (checkHeavyStateOn(1, 1)) {
        mSpeed.y *= 1.35f;
    }

    // cut_type 0 = standing jump attack
    if (mTargetedActor != NULL && cut_type == 0) {
        mCollisionRot.y = cLib_targetAngleY(&current.pos, &mTargetedActor->mEyePos);
        cXyz targetPos(mTargetedActor->mEyePos.x - (cM_ssin(mCollisionRot.y) * 70.0f),
                       mTargetedActor->mEyePos.y + 50.0f,
                       mTargetedActor->mEyePos.z - (cM_scos(mCollisionRot.y) * 70.0f));

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
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutNormalInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procCutNormalInit__9daAlink_cFi.s"
}
#pragma pop

/* 800D31B8-800D34D8 0CDAF8 0320+00 1/0 0/0 0/0 .text            procCutNormal__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutNormal() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutNormal__9daAlink_cFv.s"
}
#pragma pop

/* 800D34D8-800D382C 0CDE18 0354+00 4/4 0/0 0/0 .text            procCutFinishInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutFinishInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procCutFinishInit__9daAlink_cFi.s"
}
#pragma pop

/* 800D382C-800D3ADC 0CE16C 02B0+00 1/0 0/0 0/0 .text            procCutFinish__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutFinish() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutFinish__9daAlink_cFv.s"
}
#pragma pop

/* 800D3ADC-800D3CCC 0CE41C 01F0+00 2/2 0/0 0/0 .text procCutFinishJumpUpInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutFinishJumpUpInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutFinishJumpUpInit__9daAlink_cFv.s"
}
#pragma pop

/* 800D3CCC-800D3DD8 0CE60C 010C+00 1/0 0/0 0/0 .text            procCutFinishJumpUp__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutFinishJumpUp() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutFinishJumpUp__9daAlink_cFv.s"
}
#pragma pop

/* 800D3DD8-800D3ECC 0CE718 00F4+00 1/1 0/0 0/0 .text procCutFinishJumpUpLandInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutFinishJumpUpLandInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutFinishJumpUpLandInit__9daAlink_cFv.s"
}
#pragma pop

/* 800D3ECC-800D4068 0CE80C 019C+00 1/0 0/0 0/0 .text procCutFinishJumpUpLand__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutFinishJumpUpLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutFinishJumpUpLand__9daAlink_cFv.s"
}
#pragma pop

/* 800D4068-800D41FC 0CE9A8 0194+00 2/2 0/0 0/0 .text
 * procCutReverseInit__9daAlink_cFQ29daAlink_c11daAlink_ANM     */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutReverseInit(daAlink_c::daAlink_ANM param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procCutReverseInit__9daAlink_cFQ29daAlink_c11daAlink_ANM.s"
}
#pragma pop

/* 800D41FC-800D42FC 0CEB3C 0100+00 1/0 0/0 0/0 .text            procCutReverse__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutReverse() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutReverse__9daAlink_cFv.s"
}
#pragma pop

/* 800D42FC-800D43F8 0CEC3C 00FC+00 2/2 0/0 0/0 .text            procCutJumpInit__9daAlink_cFi */
bool daAlink_c::procCutJumpInit(int jump_type) {
    commonProcInit(PROC_CUT_JUMP);
    setSingleAnimeParam(ANM_CUT_JUMP, &daAlinkHIO_cutJump_c0::m.mCutAnm);
    if (jump_type != 0) {
        mNormalSpeed = daAlinkHIO_cutJump_c0::m.mAirJumpSpeedH;
        mSpeed.y = daAlinkHIO_cutJump_c0::m.mAirJumpSpeedV;
    } else {
        mNormalSpeed = daAlinkHIO_cutJump_c0::m.mBaseJumpSpeedH;
        mSpeed.y = daAlinkHIO_cutJump_c0::m.mBaseJumpSpeedV;
    }
    setCutJumpSpeed(jump_type);
    current.angle.y = mCollisionRot.y;
    setSwordAtParam(dCcG_At_Spl_UNK_01, 3, 1, 3, daAlinkHIO_cut_c0::m.mSwordLength,
                    daAlinkHIO_cut_c0::m.mSwordRadius);
    setCutType(TYPE_CUT_JUMP);
    setSwordComboVoice();
    dComIfGp_setPlayerStatus0(0, 0x8000);
    field_0x3198 = 2;
    return true;
}

/* 800D43F8-800D452C 0CED38 0134+00 1/0 0/0 0/0 .text            procCutJump__9daAlink_cFv */
#ifdef NONMATCHING
bool daAlink_c::procCutJump() {
    if (current.angle.y == mCollisionRot.y && changeCutReverseProc(ANM_CUT_JUMP)) {
        current.angle.y += 0x8000;
        mNormalSpeed = 27.0f;
        cXyz xyz(0.0f, 1.0f, 0.0f);
        dComIfGp_getVibration().StartShock(5, 31, xyz);
    } else if (current.angle.y != mCollisionRot.y) {
        cLib_chaseF(&mNormalSpeed, 5.0f, 1.0f);
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
    return true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daAlink_c::procCutJump() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutJump__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800D452C-800D4684 0CEE6C 0158+00 1/1 0/0 0/0 .text            procCutJumpLandInit__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutJumpLandInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procCutJumpLandInit__9daAlink_cFi.s"
}
#pragma pop

/* 800D4684-800D47DC 0CEFC4 0158+00 1/0 0/0 0/0 .text            procCutJumpLand__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutJumpLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutJumpLand__9daAlink_cFv.s"
}
#pragma pop

/* 800D47DC-800D4A74 0CF11C 0298+00 7/7 0/0 0/0 .text            procCutTurnInit__9daAlink_cFii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutTurnInit(int param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/procCutTurnInit__9daAlink_cFii.s"
}
#pragma pop

/* 800D4A74-800D4C68 0CF3B4 01F4+00 1/0 0/0 0/0 .text            procCutTurn__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutTurn() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutTurn__9daAlink_cFv.s"
}
#pragma pop

/* 800D4C68-800D4D04 0CF5A8 009C+00 3/3 0/0 0/0 .text            procCutTurnChargeInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutTurnChargeInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutTurnChargeInit__9daAlink_cFv.s"
}
#pragma pop

/* 800D4D04-800D4DDC 0CF644 00D8+00 1/0 0/0 0/0 .text            procCutTurnCharge__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutTurnCharge() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutTurnCharge__9daAlink_cFv.s"
}
#pragma pop

/* 800D4DDC-800D4EFC 0CF71C 0120+00 3/3 0/0 0/0 .text            procCutTurnMoveInit__9daAlink_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCutTurnMoveInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procCutTurnMoveInit__9daAlink_cFi.s"
}
#pragma pop

/* 800D4EFC-800D53C8 0CF83C 04CC+00 1/0 0/0 0/0 .text            procCutTurnMove__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutTurnMove() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutTurnMove__9daAlink_cFv.s"
}
#pragma pop

/* 800D53C8-800D57F8 0CFD08 0430+00 2/1 0/0 0/0 .text            procCutDownInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutDownInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutDownInit__9daAlink_cFv.s"
}
#pragma pop

/* 800D57F8-800D58A0 0D0138 00A8+00 1/0 0/0 0/0 .text            procCutDown__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutDown() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutDown__9daAlink_cFv.s"
}
#pragma pop

/* 800D58A0-800D5ADC 0D01E0 023C+00 1/1 0/0 0/0 .text
 * procCutDownLandInit__9daAlink_cFP13fopEn_enemy_c             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutDownLandInit(fopEn_enemy_c* param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procCutDownLandInit__9daAlink_cFP13fopEn_enemy_c.s"
}
#pragma pop

/* 800D5ADC-800D5C88 0D041C 01AC+00 1/0 0/0 0/0 .text            procCutDownLand__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutDownLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutDownLand__9daAlink_cFv.s"
}
#pragma pop

/* 800D5C88-800D5FC8 0D05C8 0340+00 2/1 0/0 0/0 .text            procCutHeadInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutHeadInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutHeadInit__9daAlink_cFv.s"
}
#pragma pop

/* 800D5FC8-800D6130 0D0908 0168+00 1/0 0/0 0/0 .text            procCutHead__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutHead() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutHead__9daAlink_cFv.s"
}
#pragma pop

/* 800D6130-800D618C 0D0A70 005C+00 1/1 0/0 0/0 .text            procCutHeadLandInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutHeadLandInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutHeadLandInit__9daAlink_cFv.s"
}
#pragma pop

/* 800D618C-800D6238 0D0ACC 00AC+00 1/0 0/0 0/0 .text            procCutHeadLand__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutHeadLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutHeadLand__9daAlink_cFv.s"
}
#pragma pop

/* 800D6238-800D62A0 0D0B78 0068+00 2/2 0/0 0/0 .text procCutLargeJumpChargeInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutLargeJumpChargeInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutLargeJumpChargeInit__9daAlink_cFv.s"
}
#pragma pop

/* 800D62A0-800D6374 0D0BE0 00D4+00 1/0 0/0 0/0 .text procCutLargeJumpCharge__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutLargeJumpCharge() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutLargeJumpCharge__9daAlink_cFv.s"
}
#pragma pop

/* 800D6374-800D6484 0D0CB4 0110+00 2/1 0/0 0/0 .text            procCutLargeJumpInit__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutLargeJumpInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutLargeJumpInit__9daAlink_cFv.s"
}
#pragma pop

/* 800D6484-800D66C0 0D0DC4 023C+00 1/0 0/0 0/0 .text            procCutLargeJump__9daAlink_cFv */
bool daAlink_c::procCutLargeJump() {
    daPy_frameCtrl_c* ctrl = &mUnderFrameCtrl[0];

    if (field_0x3010 != 0) {
        field_0x2f99 = 4;
    }

    if (i_checkModeFlg(2) && checkCutTurnInput()) {
        field_0x3198 = getCutTurnDirection();
    }

    if (mCommonCounter == 0) {
        if (ctrl->checkAnmEnd()) {
            field_0x2f99 = 12;
            setSingleAnimeParam(ANM_CUT_JUMP_LARGE, &daAlinkHIO_cutLargeJump_c0::m.mCutAnm);
            mCommonCounter = 1;
            setSwordVoiceSe(Z2SE_AL_V_JUMP_ATTACK_L_2);
        } else {
            if (ctrl->getFrame() >= lit_7307) {
                field_0x3010 = 1;
            }

            if (!i_checkModeFlg(2) && ctrl->getFrame() >= lit_7808) {
                setJumpMode();
                mNormalSpeed = daAlinkHIO_cutLargeJump_c0::m.mCutSpeedH;
                mSpeed.y = daAlinkHIO_cutLargeJump_c0::m.mCutSpeedV;
                setCutJumpSpeed(0);
            }

            if (ctrl->getFrame() >= daAlinkHIO_cutLargeJump_c0::m.mJumpAttackStartF &&
                ctrl->getFrame() < daAlinkHIO_cutLargeJump_c0::m.mJumpAttackEndF) {
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
                setSwordAtParam(dCcG_At_Spl_UNK_01, 3, 1, 4, daAlinkHIO_cut_c0::m.mSwordLength,
                                daAlinkHIO_cut_c0::m.mSwordRadius);
                setCutType(TYPE_CUT_LARGE_JUMP);
            }
        }

        if (mLinkAcch.ChkGroundHit()) {
            procCutLargeJumpLandInit(field_0x3198);
        } else {
            if (ctrl->getFrame() >= daAlinkHIO_cutLargeJump_c0::m.mCutInitF) {
                if (!i_checkNoResetFlg0(FLG0_UNK_40)) {
                    seStartSwordCut(Z2SE_AL_SWORD_SWING_S);
                }
                i_onResetFlg0(2);
            }
        }
    }
    return true;
}

/* 800D66C0-800D67FC 0D1000 013C+00 1/1 0/0 0/0 .text procCutLargeJumpLandInit__9daAlink_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutLargeJumpLandInit(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/procCutLargeJumpLandInit__9daAlink_cFi.s"
}
#pragma pop

/* 800D67FC-800D698C 0D113C 0190+00 1/0 0/0 0/0 .text            procCutLargeJumpLand__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procCutLargeJumpLand() {
    nofralloc
#include "asm/d/a/d_a_alink/procCutLargeJumpLand__9daAlink_cFv.s"
}
#pragma pop

/* 800D698C-800D6A38 0D12CC 00AC+00 2/1 0/0 0/0 .text procSwordUnequipSpInit__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procSwordUnequipSpInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procSwordUnequipSpInit__9daAlink_cFv.s"
}
#pragma pop

/* 800D6A38-800D6D94 0D1378 035C+00 1/0 0/0 0/0 .text            procSwordUnequipSp__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::procSwordUnequipSp() {
    nofralloc
#include "asm/d/a/d_a_alink/procSwordUnequipSp__9daAlink_cFv.s"
}
#pragma pop