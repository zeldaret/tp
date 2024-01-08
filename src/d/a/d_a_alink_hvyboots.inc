/**
 * d_a_alink_hvyboots.inc
 * Player Iron Boots action handling
 */

/* 800E23FC-800E243C 0DCD3C 0040+00 6/6 0/0 0/0 .text            concatMagneBootMtx__9daAlink_cFv */
void daAlink_c::concatMagneBootMtx() {
    if (i_checkMagneBootsOn()) {
        mDoMtx_stack_c::concat(mMagneBootMtx);
    }
}

/* 800E243C-800E247C 0DCD7C 0040+00 1/1 0/0 0/0 .text            concatMagneBootInvMtx__9daAlink_cFv
 */
void daAlink_c::concatMagneBootInvMtx() {
    if (i_checkMagneBootsOn()) {
        mDoMtx_stack_c::concat(mMagneBootInvMtx);
    }
}

/* 800E247C-800E24B0 0DCDBC 0034+00 8/8 0/0 0/0 .text multVecMagneBootInvMtx__9daAlink_cFP4cXyz */
void daAlink_c::multVecMagneBootInvMtx(cXyz* vec) {
    if (i_checkMagneBootsOn()) {
        mDoMtx_multVecSR(mMagneBootInvMtx, vec, vec);
    }
}

/* 800E24B0-800E251C 0DCDF0 006C+00 2/2 0/0 0/0 .text
 * commonMagneLineCheck__9daAlink_cFP4cXyzP4cXyz                */
bool daAlink_c::commonMagneLineCheck(cXyz* i_start, cXyz* i_end) {
    mMagneLineChk.Set(i_start, i_end, this);

    if (dComIfG_Bgsp().LineCross(&mMagneLineChk) && daTagMagne_c::checkMagnetCode(mMagneLineChk)) {
        return true;
    }

    return false;
}

/* 800E251C-800E2580 0DCE5C 0064+00 2/2 0/0 0/0 .text            checkBootsMoveAnime__9daAlink_cFi
 */
BOOL daAlink_c::checkBootsMoveAnime(int param_0) {
    return (checkHeavyStateOn(param_0, 1) && !i_checkNoResetFlg0(FLG0_UNDERWATER)) ||
           checkDkCaught2Anime();
}

/* 800E2580-800E2738 0DCEC0 01B8+00 17/17 0/0 0/0 .text            setHeavyBoots__9daAlink_cFi */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::setHeavyBoots(int param_0) {
    if (i_checkEquipHeavyBoots()) {
        i_offNoResetFlg0(FLG0_EQUIP_HVY_BOOTS);
        mZ2Link.setLinkBootsType(0);

        if (field_0x06e0 != NULL) {
            field_0x06e0->show();

            if (checkZoraWearMaskDraw()) {
                field_0x06e4->show();
            }
        }

        if (i_checkModeFlg(0x40000) && !checkHookshotItem(mEquipItem)) {
            deleteEquipItem(TRUE, FALSE);
        }

        if (i_checkNoResetFlg0(FLG0_UNDERWATER) && !i_dComIfGp_checkPlayerStatus1(0, 0x2000000)) {
            return procSwimWaitInit(0);
        }

        if (i_checkMagneBootsOn()) {
            if (cancelMagneBootsOn()) {
                return procFallInit(1, 5.0f);
            }

            if (mProcID != PROC_BOOTS_EQUIP) {
                procWaitInit();
                field_0x2060->initOldFrameMorf(3.0f, 0, 35);
                return 1;
            }
        }
    } else if (param_0) {
        i_onNoResetFlg0(FLG0_EQUIP_HVY_BOOTS);
        mZ2Link.setLinkBootsType(1);

        if (field_0x06e0 != NULL) {
            field_0x06e0->hide();

            if (field_0x06e4 != NULL) {
                field_0x06e4->hide();
            }
        }

        if (i_checkModeFlg(0x40000)) {
            i_offNoResetFlg0(FLG0_UNK_100);
            mZ2Link.setInWater(true);
        }
    }

    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::setHeavyBoots(int param_0) {
    nofralloc
#include "asm/d/a/d_a_alink/setHeavyBoots__9daAlink_cFi.s"
}
#pragma pop
#endif

/* 800E2738-800E2808 0DD078 00D0+00 2/2 0/0 0/0 .text getMagneBootsLocalAngleY__9daAlink_cFsi */
// matches with literals
#ifdef NONMATCHING
s16 daAlink_c::getMagneBootsLocalAngleY(s16 param_0, int param_1) {
    if (param_1 == 1 || (param_1 != 2 && field_0x3114 <= 0x4000 && field_0x3114 != -0x8000)) {
        return param_0;
    }

    cXyz vec(cM_ssin(param_0), 0.0f, cM_scos(param_0));
    mDoMtx_stack_c::YrotS(field_0x3116);
    mDoMtx_stack_c::XrotM(-0x8000);
    mDoMtx_stack_c::YrotM(-field_0x3116);
    mDoMtx_stack_c::multVec(&vec, &vec);

    return vec.atan2sX_Z();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s16 daAlink_c::getMagneBootsLocalAngleY(s16 param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/getMagneBootsLocalAngleY__9daAlink_cFsi.s"
}
#pragma pop
#endif

/* 800E2808-800E2DC4 0DD148 05BC+00 3/3 0/0 0/0 .text
 * setMagneBootsMtx__9daAlink_cFP13cBgS_PolyInfoi               */
// matches with literals
#ifdef NONMATCHING
void daAlink_c::setMagneBootsMtx(cBgS_PolyInfo* i_polyinfo, int param_1) {
    cM3dGPla poly;
    dComIfG_Bgsp().GetTriPla(*i_polyinfo, &poly);

    s16 var_r28 = cM_atan2s(poly.mNormal.absXZ(), poly.mNormal.y);
    int temp_r3_2 = abs(var_r28);
    if (temp_r3_2 < 500) {
        var_r28 = 0;
    } else if (temp_r3_2 > 0x7E0B) {
        var_r28 = -0x8000;
    }

    if (var_r28 != 0 && var_r28 != -0x8000) {
        field_0x3116 = poly.mNormal.atan2sX_Z();
    } else if (param_1) {
        field_0x3116 = 0;
    }

    if (param_1) {
        if (mProcID == PROC_MAGNE_BOOTS_FLY) {
            cLib_addCalcAngleS(&field_0x3114, var_r28, 5, 0x1000, 0x100);
        } else {
            field_0x3114 = var_r28;
        }
    } else {
        // D_MN54 is the E3 Goron Mines Demo map
        if (checkStageName("D_MN54") && getMoveBGActorName(*i_polyinfo, 1) == PROC_Obj_MagneArm) {
            i_fopAcM_onSwitch(this, 0x93);
        }

        field_0x3114 = var_r28;

        f32 temp_f1 = mMagneBootsTopVec.inprod(poly.mNormal);
        if (!(fabsf(temp_f1) > 0.9999f)) {
            cXyz sp44 = mMagneBootsTopVec.outprod(poly.mNormal);
            sp44.normalizeZP();

            f32 var_f1_2 = JMAFastSqrt(1.0f - temp_f1 * temp_f1);
            f32 temp_f1_2 = cM_atan2f(var_f1_2, temp_f1);
            f32 var_f2 = temp_f1_2 * 0.2f;

            if (var_f2 > 0.4f) {
                var_f2 = 0.4f;
            } else if (var_f2 < 0.025f) {
                var_f2 = 0.025f;

                if (0.025f > temp_f1_2) {
                    var_f2 = temp_f1_2;
                }
            }

            cXyz sp40;
            mDoMtx_stack_c::rotAxisRadS(&sp44, var_f2);
            mDoMtx_stack_c::concat(mMagneBootMtx);
            mDoMtx_copy(mDoMtx_stack_c::get(), mMagneBootMtx);
            mDoMtx_multVec(mMagneBootMtx, &cXyz::BaseY, &sp40);

            field_0x3114 = cM_atan2s(sp40.absXZ(), sp40.y);

            int temp_r3_4 = abs(field_0x3114);
            if (temp_r3_4 < 500) {
                field_0x3114 = 0;
            } else if (temp_r3_4 > 0x7E0B) {
                field_0x3114 = -0x8000;
            }

            if (field_0x3114 != 0 && field_0x3114 != -0x8000) {
                field_0x3116 = sp40.atan2sX_Z();
            } else {
                field_0x3116 = 0;
            }

            mDoMtx_stack_c::YrotS(field_0x3116);
            mDoMtx_stack_c::XrotM(-field_0x3114);
            mDoMtx_stack_c::YrotM(-field_0x3116);
            mDoMtx_stack_c::concat(mMagneBootMtx);
            mDoMtx_stack_c::multVecSR(&cXyz::BaseZ, &sp40);

            s16 angle = sp40.atan2sX_Z();
            shape_angle.y += angle;
            current.angle.y += angle;
            field_0x2fe6 += angle;
            field_0x310c += angle;
        }
    }

    mDoMtx_YrotS(mMagneBootMtx, field_0x3116);
    mDoMtx_XrotM(mMagneBootMtx, field_0x3114);
    mDoMtx_YrotM(mMagneBootMtx, -field_0x3116);
    mDoMtx_inverse(mMagneBootMtx, mMagneBootInvMtx);
    mDoMtx_multVec(mMagneBootMtx, &cXyz::BaseY, &mMagneBootsTopVec);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daAlink_c::setMagneBootsMtx(cBgS_PolyInfo* param_0, int param_1) {
    nofralloc
#include "asm/d/a/d_a_alink/setMagneBootsMtx__9daAlink_cFP13cBgS_PolyInfoi.s"
}
#pragma pop
#endif

/* 800E2DC4-800E2F88 0DD704 01C4+00 7/7 0/0 0/0 .text            cancelMagneBootsOn__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::cancelMagneBootsOn() {
    i_offNoResetFlg0(FLG0_MAGNE_BOOTS_ON);
    mZ2Link.setMagnetized(false);

    if (field_0x3114 == -0x8000) {
        setOldRootQuaternion(field_0x3114, 0, 0);
    } else {
        s16 var_r31 = shape_angle.y - field_0x3116;
        setOldRootQuaternion(0, var_r31, 0);
        setOldRootQuaternion(field_0x3114, 0, 0);
        setOldRootQuaternion(0, -var_r31, 0);
    }

    field_0x3114 = 0;

    if (!cBgW_CheckBGround(mMagneBootsTopVec.y)) {
        current.pos += mMagneBootsTopVec * 100.0f;
        mLinkGndChk.SetPos(&current.pos);

        f32 gnd_cross = dComIfG_Bgsp().GroundCross(&mLinkGndChk);
        current.pos.y -= 100.0f;
        if (gnd_cross > current.pos.y) {
            current.pos.y = gnd_cross;
        }

        next.pos = current.pos;
        field_0x3798 = current.pos;
        mMagneBootsTopVec = cXyz::BaseY;

        if (checkUpperReadyThrowAnime()) {
            resetUpperAnime(UPPER_2, 3.0f);
        }

        return 1;
    }

    mMagneBootsTopVec = cXyz::BaseY;
    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::cancelMagneBootsOn() {
    nofralloc
#include "asm/d/a/d_a_alink/cancelMagneBootsOn__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800E2F88-800E3048 0DD8C8 00C0+00 1/1 0/0 0/0 .text            checkMagneBootsFly__9daAlink_cFv */
int daAlink_c::checkMagneBootsFly() {
    if (field_0x2fb8 != 0 && i_checkEquipHeavyBoots() && !checkDeadHP() &&
        mProcID != PROC_MAGNE_BOOTS_FLY && !checkEventRun())
    {
        cXyz vec(field_0x369c);
        vec.normalizeZP();

        if (mMagneBootsTopVec.getDotProduct(vec) > lit_8131 && procMagneBootsFlyInit()) {
            return 1;
        }
    }

    return 0;
}

/* 800E3048-800E30DC 0DD988 0094+00 2/2 0/0 0/0 .text            procBootsEquipInit__9daAlink_cFv */
int daAlink_c::procBootsEquipInit() {
    commonProcInit(PROC_BOOTS_EQUIP);
    setSingleAnimeParam(ANM_HVY_BOOTS_PUT_ON, &daAlinkHIO_magneBoots_c0::m.mEquipAnm);

    if (checkUpperReadyThrowAnime()) {
        resetUpperAnime(UPPER_2, lit_6041);
        dComIfGp_clearPlayerStatus0(0, ~0x400030);
    }

    current.angle.y = shape_angle.y;
    mNormalSpeed = FLOAT_LABEL(lit_6108);

    return 1;
}

/* 800E30DC-800E3218 0DDA1C 013C+00 1/0 0/0 0/0 .text            procBootsEquip__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procBootsEquip() {
    daPy_frameCtrl_c* frameCtrl_p = mUnderFrameCtrl;
    i_onEndResetFlg0(ERFLG0_UNK_8000000);

    if (checkAnmEnd(frameCtrl_p)) {
        checkNextAction(0);
    } else if (frameCtrl_p->checkPass(10.0f)) {
        setHeavyBoots(1);
    } else if (frameCtrl_p->checkPass(16.0f)) {
        if (i_checkNoResetFlg0(FLG0_EQUIP_HVY_BOOTS)) {
            dComIfGp_getVibration().StartShock(3, 1, cXyz(0.0f, 1.0f, 0.0f));
        }

        offModeFlg(2);
    } else if (frameCtrl_p->getFrame() > daAlinkHIO_magneBoots_c0::m.mEquipAnm.mCheckFrame) {
        onModeFlg(4);
        checkNextAction(1);
    } else if (frameCtrl_p->getFrame() >= 5.0f) {
        field_0x2f92 = 1;
        field_0x2f93 = 6;
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procBootsEquip() {
    nofralloc
#include "asm/d/a/d_a_alink/procBootsEquip__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800E3218-800E3454 0DDB58 023C+00 1/1 0/0 0/0 .text            procMagneBootsFlyInit__9daAlink_cFv
 */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procMagneBootsFlyInit() {
    cXyz sp44 = field_0x369c.normZP();
    cM3dGPla sp50(&sp44, -sp44.inprod(field_0x3834));
    sp44 = field_0x36b4 + field_0x369c;

    cXyz sp38;
    if (!sp50.crossInfLin(field_0x36b4, sp44, sp38)) {
        return 0;
    }

    sp44 = sp38 + (field_0x369c * 2.0f);

    if (!commonMagneLineCheck(&sp38, &sp44)) {
        return 0;
    }

    if (i_checkMagneBootsOn()) {
        i_offNoResetFlg0(FLG0_MAGNE_BOOTS_ON);
        mZ2Link.setMagnetized(true);
    }

    commonProcInit(PROC_MAGNE_BOOTS_FLY);

    dComIfG_Bgsp().GetTriPla(mMagneLineChk, &sp50);
    mPolyInfo2.SetPolyInfo(mMagneLineChk);
    field_0x37c8 = mMagneLineChk.i_GetCross();

    setSpecialGravity(0.0f, mMaxFallSpeed, 0);
    speed.y = 0.0f;
    mNormalSpeed = 0.0f;

    setSingleAnimeBase(ANM_MG_KICK);
    if (mEquipItem != 0x103 && !checkBowItem(mEquipItem)) {
        deleteEquipItem(FALSE, TRUE);
    } else {
        offKandelaarModel();
    }

    field_0x3478 = 0.0f;
    field_0x594 = daAlinkHIO_magneBoots_c0::m.mMaxMagneFlySpeed;
    mProcVar2.field_0x300c = 0;
    voiceStart(Z2SE_AL_V_MAGNET_CAUGHT);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procMagneBootsFlyInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procMagneBootsFlyInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 800E3454-800E3760 0DDD94 030C+00 1/0 0/0 0/0 .text            procMagneBootsFly__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procMagneBootsFly() {
    field_0x3478 += daAlinkHIO_magneBoots_c0::m.mMagneFlyAccelRate;
    if (field_0x3478 > field_0x594) {
        field_0x3478 = field_0x594;
    }

    if (dComIfG_Bgsp().ChkPolySafe(mPolyInfo2) && i_checkEquipHeavyBoots()) {
        if (dComIfG_Bgsp().ChkMoveBG(mPolyInfo2)) {
            cXyz old_37c8(field_0x37c8);
            dComIfG_Bgsp().MoveBgTransPos(mPolyInfo2, true, &field_0x37c8, NULL, NULL);
            current.pos += field_0x37c8 - old_37c8;
        }

        setMagneBootsMtx(&mPolyInfo2, 1);
    } else {
        cancelMagneBootsOn();
        return procFallInit(1, 5.0f);
    }

    cLib_chasePos(&current.pos, field_0x37c8, field_0x3478);
    if (field_0x37c8.abs(current.pos) < 50.0f) {
        current.pos = field_0x37c8;
        i_onNoResetFlg0(FLG0_MAGNE_BOOTS_ON);
        mZ2Link.setMagnetized(true);
        procLandDamageInit(0);
    } else {
        cXyz sp24;
        mDoMtx_multVecZero(mpLinkModel->i_getAnmMtx(0), &sp24);
        sp24 = field_0x37c8 - sp24;

        cLib_addCalcAngleS(&shape_angle.x, sp24.atan2sY_XZ() + -0x4000, 5, 0x1000, 0x100);
        cLib_addCalcAngleS(&shape_angle.y, sp24.atan2sX_Z(), 5, 0x1000, 0x100);
        mProcVar2.field_0x300c += 0x1C00;
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procMagneBootsFly() {
    nofralloc
#include "asm/d/a/d_a_alink/procMagneBootsFly__9daAlink_cFv.s"
}
#pragma pop
#endif
