/**
 * d_cc_s.cpp
 *
 */

#include "d/cc/d_cc_s.h"
#include "JSystem/JMath/JMath.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_jnt_col.h"
#include "f_op/f_op_actor_mng.h"

//
// Forward References:
//

extern "C" void Ct__4dCcSFv();
extern "C" void Dt__4dCcSFv();
extern "C" void ChkShieldFrontRange__4dCcSFP8cCcD_ObjP8cCcD_ObjiPC4cXyz();
extern "C" void ChkShield__4dCcSFP8cCcD_ObjP8cCcD_ObjP12dCcD_GObjInfP12dCcD_GObjInfPC4cXyz();
extern "C" void CalcTgPlusDmg__4dCcSFP8cCcD_ObjP8cCcD_ObjP9cCcD_SttsP9cCcD_Stts();
extern "C" void
ChkAtTgHitAfterCross__4dCcSFbbPC12cCcD_GObjInfPC12cCcD_GObjInfP9cCcD_SttsP9cCcD_SttsP10cCcD_GSttsP10cCcD_GStts();
extern "C" void
SetCoGObjInf__4dCcSFbbP12cCcD_GObjInfP12cCcD_GObjInfP9cCcD_SttsP9cCcD_SttsP10cCcD_GSttsP10cCcD_GStts();
extern "C" void GetRank__4dCcSFUc();
extern "C" bool ChkNoHitGCo__4dCcSFP8cCcD_ObjP8cCcD_Obj();
extern "C" void SetPosCorrect__4dCcSFP8cCcD_ObjP4cXyzP8cCcD_ObjP4cXyzf();
extern "C" void CalcParticleAngle__4dCcSFP12dCcD_GObjInfP9cCcD_SttsP9cCcD_SttsP5csXyz();
extern "C" void
ProcAtTgHitmark__4dCcSFbbP8cCcD_ObjP8cCcD_ObjP12dCcD_GObjInfP12dCcD_GObjInfP9cCcD_SttsP9cCcD_SttsP10dCcD_GSttsP10dCcD_GSttsP4cXyzb();
extern "C" void
SetAtTgGObjInf__4dCcSFbbP8cCcD_ObjP8cCcD_ObjP12cCcD_GObjInfP12cCcD_GObjInfP9cCcD_SttsP9cCcD_SttsP10cCcD_GSttsP10cCcD_GSttsP4cXyz();
extern "C" void ChkCamera__4dCcSFR4cXyzR4cXyzfP10fopAc_ac_cP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void chkCameraPoint__4dCcSFRC4cXyzPQ214cCcD_ShapeAttr5ShapeP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void __dt__12cCcD_SphAttrFv();
extern "C" void MoveAfterCheck__4dCcSFv();
extern "C" void DrawAfter__4dCcSFv();
extern "C" void Move__4dCcSFv();
extern "C" void Draw__4dCcSFv();
extern "C" void MassClear__4dCcSFv();
extern "C" void ChkAtTgMtrlHit__4dCcSFUcUc();
extern "C" void ChkNoHitGAtTg__4dCcSFPC12cCcD_GObjInfPC12cCcD_GObjInfP10cCcD_GSttsP10cCcD_GStts();
extern "C" u8 m_mtrl_hit_tbl__4dCcS[64];
extern "C" extern void* __vt__4dCcS[13];

//
// External References:
//

extern "C" void ZXYrotS__14mDoMtx_stack_cFRC5csXyz();
extern "C" void __dt__4dCcSFv();
extern "C" void getHitmarkPosAndAngle__9dJntCol_cCFPC4cXyzPC5csXyzP4cXyzP5csXyzi();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void SetHitApid__22dCcD_GAtTgCoCommonBaseFUi();
extern "C" void SetEffCounterTimer__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void ChkEffCounter__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void ChkAtNoGuard__12dCcD_GObjInfFv();
extern "C" void Ct__12dCcMassS_MngFv();
extern "C" void Clear__12dCcMassS_MngFv();
extern "C" void Chk__15cCcD_DivideInfoCFRC15cCcD_DivideInfo();
extern "C" void CalcDivideInfoOverArea__15cCcD_DivideAreaFP15cCcD_DivideInfoRC8cM3dGAab();
extern "C" void PlusCcMove__9cCcD_SttsFfff();
extern "C" void PlusDmg__9cCcD_SttsFi();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void CalcAabBox__12cCcD_CpsAttrFv();
extern "C" void CalcAabBox__12cCcD_SphAttrFv();
extern "C" void Ct__4cCcSFv();
extern "C" void Dt__4cCcSFv();
extern "C" void Move__4cCcSFv();
extern "C" void DrawClear__4cCcSFv();
extern "C" void SetCoGCorrectProc__4cCcSFP8cCcD_ObjP8cCcD_Obj();
extern "C" void cM3d_CalcVecZAngle__FRC3VecP5csXyz();
extern "C" void __ct__8cM3dGCpsFv();
extern "C" void __dt__8cM3dGCpsFv();
extern "C" void Set__8cM3dGCpsFRC4cXyzRC4cXyzf();
extern "C" void Set__8cM3dGSphFRC9cM3dGSphS();
extern "C" void cLib_distanceAngleS__Fss();
extern "C" void __dl__FPv();
extern "C" void _savegpr_17();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_29();
extern "C" void _restgpr_17();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8cM3dGAab[3];
extern "C" extern void* __vt__15cCcD_DivideInfo[3];
extern "C" extern void* __vt__8cM3dGSph[3];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CpsAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 BaseZ__4cXyz[12];

//
// Declarations:
//

/* 80085ED4-80085F08 080814 0034+00 0/0 1/1 0/0 .text            Ct__4dCcSFv */
void dCcS::Ct() {
    cCcS::Ct();
    mMass_Mng.Ct();
}

/* 80085F08-80085F28 080848 0020+00 0/0 1/1 0/0 .text            Dt__4dCcSFv */
void dCcS::Dt() {
    cCcS::Dt();
}

/* 80085F28-800860F8 080868 01D0+00 1/1 0/0 0/0 .text
 * ChkShieldFrontRange__4dCcSFP8cCcD_ObjP8cCcD_ObjiPC4cXyz      */
bool dCcS::ChkShieldFrontRange(cCcD_Obj* i_atObj, cCcD_Obj* i_tgObj, int param_2,
                               cXyz const* i_hitPos) {
    dCcD_GObjInf* atObj = (dCcD_GObjInf*)i_atObj->GetGObjInf();
    if (atObj == NULL) {
        return false;
    }

    dCcD_GObjInf* tgObj = (dCcD_GObjInf*)i_tgObj->GetGObjInf();
    if (tgObj == NULL) {
        return false;
    }

    fopAc_ac_c* tgActor = tgObj->GetAc();
    if (tgActor == NULL) {
        return false;
    }

    csXyz sp10;
    CalcParticleAngle(atObj, i_atObj->GetStts(), i_tgObj->GetStts(), &sp10);

    if (param_2 != 0) {
        dJntCol_c* jntcol = fopAcM_GetJntCol(tgActor);

        if (jntcol != NULL) {
            cXyz pos;
            csXyz angle;

            int temp_r3 = jntcol->getHitmarkPosAndAngle(i_hitPos, &sp10, &pos, &angle, 0);

            if (temp_r3 >= 0 && jntcol->checkShieldType(temp_r3)) {
                cXyz sp18;
                mDoMtx_stack_c::ZXYrotS(sp10);
                mDoMtx_stack_c::multVecSR(&cXyz::BaseZ, &sp18);
                mDoMtx_stack_c::ZXYrotS(angle);
                mDoMtx_stack_c::multVecSR(&cXyz::BaseZ, &pos);

                if (pos.inprod(sp18) > 0.0f) {
                    return true;
                } else {
                    return false;
                }
            }

            return false;
        }
    }

    s16 var_r4;
    if (tgObj->GetTgShieldFrontRangeYAngle() != NULL) {
        var_r4 = *tgObj->GetTgShieldFrontRangeYAngle();
    } else {
        var_r4 = fopAcM_GetShapeAngle_p(tgActor).y;
    }

    s16 shield_range = tgObj->GetTgShieldRange();
    if (param_2 != 0) {
        shield_range >>= 1;
    }

    if (cLib_distanceAngleS(sp10.y - -0x8000, var_r4) > shield_range) {
        return false;
    }

    return true;
}

/* 800860F8-800861B0 080A38 00B8+00 1/1 0/0 0/0 .text
 * ChkShield__4dCcSFP8cCcD_ObjP8cCcD_ObjP12dCcD_GObjInfP12dCcD_GObjInfPC4cXyz */
bool dCcS::ChkShield(cCcD_Obj* i_atObj, cCcD_Obj* i_tgObj, dCcD_GObjInf* i_atObjInf,
                     dCcD_GObjInf* i_tgObjInf, cXyz const* i_hitPos) {
    if (i_atObjInf->ChkAtNoGuard()) {
        return false;
    }

    if (i_tgObjInf->ChkTgShield() || i_tgObjInf->ChkTgSpShield() ||
        (i_tgObjInf->ChkTgSmallShield() && i_atObjInf->GetAtSpl() == 8))
    {
        if (i_tgObjInf->ChkTgShieldFrontRange()) {
            return ChkShieldFrontRange(i_atObj, i_tgObj, !i_tgObjInf->ChkTgShield(), i_hitPos);
        }

        return true;
    }

    return false;
}

/* 800861B0-800861B4 080AF0 0004+00 1/0 0/0 0/0 .text
 * CalcTgPlusDmg__4dCcSFP8cCcD_ObjP8cCcD_ObjP9cCcD_SttsP9cCcD_Stts */
void dCcS::CalcTgPlusDmg(cCcD_Obj* param_0, cCcD_Obj* param_1, cCcD_Stts* param_2,
                         cCcD_Stts* param_3) {
    /* empty function */
}

/* 800861B4-80086240 080AF4 008C+00 1/0 0/0 0/0 .text
 * ChkAtTgHitAfterCross__4dCcSFbbPC12cCcD_GObjInfPC12cCcD_GObjInfP9cCcD_SttsP9cCcD_SttsP10cCcD_GSttsP10cCcD_GStts
 */
bool dCcS::ChkAtTgHitAfterCross(bool i_setAt, bool i_setTg, cCcD_GObjInf const* i_atObjInf,
                                cCcD_GObjInf const* i_tgObjInf, cCcD_Stts* param_4,
                                cCcD_Stts* param_5, cCcD_GStts* param_6, cCcD_GStts* param_7) {
    dCcD_GObjInf* atObjInf = (dCcD_GObjInf*)i_atObjInf;
    dCcD_GObjInf* tgObjInf = (dCcD_GObjInf*)i_tgObjInf;

    u32 tgApid = param_4->GetApid();
    u32 atApid = param_5->GetApid();

    if (i_setAt) {
        static_cast<dCcD_GStts*>(param_6)->SetAtApid(atApid);

        if (atObjInf->ChkAtNoConHit() && !tgObjInf->ChkTgStopNoConHit()) {
            if (static_cast<dCcD_GStts*>(param_6)->GetAtOldApid() == param_5->GetApid()) {
                return true;
            }
        }
    }

    if (i_setTg) {
        static_cast<dCcD_GStts*>(param_7)->SetTgApid(tgApid);

        if (tgObjInf->ChkTgNoConHit() && !atObjInf->ChkAtStopNoConHit()) {
            if (static_cast<dCcD_GStts*>(param_7)->GetTgOldApid() == param_4->GetApid()) {
                return true;
            }
        }
    }

    return false;
}

/* 80086240-80086360 080B80 0120+00 1/0 0/0 0/0 .text
 * SetCoGObjInf__4dCcSFbbP12cCcD_GObjInfP12cCcD_GObjInfP9cCcD_SttsP9cCcD_SttsP10cCcD_GSttsP10cCcD_GStts
 */
// weird reg alloc
#ifdef NONMATCHING
void dCcS::SetCoGObjInf(bool param_0, bool param_1, cCcD_GObjInf* param_2, cCcD_GObjInf* param_3,
                        cCcD_Stts* param_4, cCcD_Stts* param_5, cCcD_GStts* param_6,
                        cCcD_GStts* param_7) {
    if (param_0) {
        static_cast<dCcD_GObjInf*>(param_2)->SetCoHitApid(param_5->GetApid());

        if (static_cast<dCcD_GStts*>(param_7)->ChkNoActor()) {
            static_cast<dCcD_GObjInf*>(param_2)->OnCoHitNoActor();
        }
    }

    if (param_1) {
        static_cast<dCcD_GObjInf*>(param_3)->SetCoHitApid(param_4->GetApid());

        if (static_cast<dCcD_GStts*>(param_6)->ChkNoActor()) {
            static_cast<dCcD_GObjInf*>(param_3)->OnCoHitNoActor();
        }
    }

    if (param_0) {
        dCcD_HitCallback cb = static_cast<dCcD_GObjInf*>(param_2)->GetCoHitCallback();

        if (cb != NULL) {
            cb(param_2->GetAc(), static_cast<dCcD_GObjInf*>(param_2), param_3->GetAc(),
               static_cast<dCcD_GObjInf*>(param_3));
        }
    }

    if (param_1) {
        dCcD_HitCallback cb = static_cast<dCcD_GObjInf*>(param_3)->GetCoHitCallback();

        if (cb != NULL) {
            cb(param_3->GetAc(), static_cast<dCcD_GObjInf*>(param_3), param_2->GetAc(),
               static_cast<dCcD_GObjInf*>(param_2));
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dCcS::SetCoGObjInf(bool param_0, bool param_1, cCcD_GObjInf* param_2,
                            cCcD_GObjInf* param_3, cCcD_Stts* param_4, cCcD_Stts* param_5,
                            cCcD_GStts* param_6, cCcD_GStts* param_7) {
    nofralloc
#include "asm/d/cc/d_cc_s/SetCoGObjInf__4dCcSFbbP12cCcD_GObjInfP12cCcD_GObjInfP9cCcD_SttsP9cCcD_SttsP10cCcD_GSttsP10cCcD_GStts.s"
}
#pragma pop
#endif

/* 80086360-80086404 080CA0 00A4+00 1/1 0/0 0/0 .text            GetRank__4dCcSFUc */
int dCcS::GetRank(u8 weight) {
    if (weight == 255) {
        return 10;
    }

    if (weight == 254) {
        return 9;
    }

    if (weight >= 217) {
        return 8;
    }

    if (weight >= 181) {
        return 7;
    }

    if (weight >= 145) {
        return 6;
    }

    if (weight >= 109) {
        return 5;
    }

    if (weight >= 73) {
        return 4;
    }

    if (weight >= 37) {
        return 3;
    }

    if (weight >= 2) {
        return 2;
    }

    if (weight == 1) {
        return 1;
    }

    return 0;
}

/* 80086404-8008640C 080D44 0008+00 1/0 0/0 0/0 .text ChkNoHitGCo__4dCcSFP8cCcD_ObjP8cCcD_Obj */
bool dCcS::ChkNoHitGCo(cCcD_Obj* param_0, cCcD_Obj* param_1) {
    return false;
}

/* ############################################################################################## */
/* 803AC328-803AC3A4 009448 0079+03 1/1 0/0 0/0 .data            rank_tbl */
static u8 rank_tbl[11][11] = {
    0x00, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x00, 0x32, 0x64, 0x64, 0x64,
    0x64, 0x64, 0x64, 0x64, 0x64, 0x64, 0x00, 0x00, 0x32, 0x4B, 0x5A, 0x64, 0x64, 0x64, 0x64, 0x64,
    0x64, 0x00, 0x00, 0x19, 0x32, 0x4B, 0x5A, 0x64, 0x64, 0x64, 0x64, 0x64, 0x00, 0x00, 0x0A, 0x19,
    0x32, 0x4B, 0x5A, 0x64, 0x64, 0x64, 0x64, 0x00, 0x00, 0x00, 0x0A, 0x19, 0x32, 0x4B, 0x5A, 0x64,
    0x64, 0x64, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x19, 0x32, 0x4B, 0x5A, 0x64, 0x64, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x0A, 0x19, 0x32, 0x4B, 0x64, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x19,
    0x32, 0x64, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32, 0x64, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8008640C-80086754 080D4C 0348+00 1/0 0/0 0/0 .text
 * SetPosCorrect__4dCcSFP8cCcD_ObjP4cXyzP8cCcD_ObjP4cXyzf       */
void dCcS::SetPosCorrect(cCcD_Obj* param_0, cXyz* param_1, cCcD_Obj* param_2, cXyz* param_3,
                         f32 param_4) {
    if (param_0->ChkCoNoCrr() || param_2->ChkCoNoCrr()) {
        return;
    }

    if (param_0->GetStts() == NULL || param_2->GetStts() == NULL) {
        return;
    }

    if (cM3d_IsZero(param_4)) {
        return;
    }

    SetCoGCorrectProc(param_0, param_2);

    bool bvar2 = false;
    if (param_0->ChkCoSph3DCrr() && param_2->ChkCoSph3DCrr()) {
        bvar2 = true;
    }

    if ((param_0->GetStts()->GetWeightUc() == 0 && param_2->GetStts()->GetWeightUc() == 0) ||
        (param_0->GetStts()->GetWeightUc() == 0xFF && param_2->GetStts()->GetWeightUc() == 0xFF))
    {
        return;
    }

    int weight1 = GetRank(param_0->GetStts()->GetWeightUc());
    int weight2 = GetRank(param_2->GetStts()->GetWeightUc());
    u8 rank = rank_tbl[weight1][weight2];

    f32 fvar1 = rank * 0.01f;
    f32 fvar2 = (u8)(100 - rank) * 0.01f;

    cXyz local_b0;
    cXyz local_bc;
    Vec local_c8;

    f32 fvar14;
    if (bvar2) {
        PSVECSubtract(param_3, param_1, &local_c8);
        fvar14 = PSVECMag(&local_c8);
    } else {
        local_c8.x = param_3->x - param_1->x;
        local_c8.y = 0.0f;
        local_c8.z = param_3->z - param_1->z;
        fvar14 = JMAFastSqrt((local_c8.x * local_c8.x) + (local_c8.z * local_c8.z));
    }

    if (!cM3d_IsZero(fvar14)) {
        if (bvar2) {
            PSVECScale(&local_c8, &local_c8, param_4 / fvar14);
            fvar1 *= -1.0f;
            PSVECScale(&local_c8, &local_b0, fvar1);
            PSVECScale(&local_c8, &local_bc, fvar2);
        } else {
            fvar14 = param_4 / fvar14;
            local_c8.x *= fvar14;
            local_c8.z *= fvar14;

            local_b0.x = -local_c8.x * fvar1;
            local_b0.y = 0.0f;
            local_b0.z = -local_c8.z * fvar1;

            local_bc.x = local_c8.x * fvar2;
            local_bc.y = 0.0f;
            local_bc.z = local_c8.z * fvar2;
        }
    } else {
        local_b0.y = 0.0f;
        local_b0.z = 0.0f;
        local_bc.y = 0.0f;
        local_bc.z = 0.0f;

        if (!cM3d_IsZero(param_4)) {
            local_b0.x = -param_4 * fvar1;
            local_bc.x = param_4 * fvar2;
        } else {
            local_b0.x = -fvar1;
            local_bc.x = fvar2;
        }
    }

    param_0->GetStts()->PlusCcMove(local_b0.x, local_b0.y, local_b0.z);
    param_2->GetStts()->PlusCcMove(local_bc.x, local_bc.y, local_bc.z);
    *param_1 += local_b0;
    *param_3 += local_bc;
}

/* 80086754-8008685C 081094 0108+00 1/0 0/0 0/0 .text
 * CalcParticleAngle__4dCcSFP12dCcD_GObjInfP9cCcD_SttsP9cCcD_SttsP5csXyz */
void dCcS::CalcParticleAngle(dCcD_GObjInf* i_atObjInf, cCcD_Stts* i_atStts, cCcD_Stts* i_tgStts,
                             csXyz* o_angle) {
    cXyz vec(*i_atObjInf->GetAtVecP());

    if (cM3d_IsZero(PSVECMag(&vec))) {
        fopAc_ac_c* atActor = i_atStts->GetActor();
        fopAc_ac_c* tgActor = i_tgStts->GetActor();

        if (atActor == NULL || tgActor == NULL) {
            vec.z = 0.0f;
            vec.x = 0.0f;
            vec.y = -1.0f;
        } else {
            PSVECSubtract(&tgActor->current.pos, &atActor->current.pos, &vec);

            if (cM3d_IsZero(PSVECMag(&vec))) {
                vec.z = 0.0f;
                vec.x = 0.0f;
                vec.y = -1.0f;
            } else {
                PSVECNormalize(&vec, &vec);
            }
        }
    } else {
        PSVECNormalize(&vec, &vec);
    }

    cM3d_CalcVecZAngle(vec, o_angle);
}

/* 8008685C-80086AC0 08119C 0264+00 1/1 0/0 0/0 .text
 * ProcAtTgHitmark__4dCcSFbbP8cCcD_ObjP8cCcD_ObjP12dCcD_GObjInfP12dCcD_GObjInfP9cCcD_SttsP9cCcD_SttsP10dCcD_GSttsP10dCcD_GSttsP4cXyzb
 */
// one branch issue
#ifdef NONMATCHING
void dCcS::ProcAtTgHitmark(bool i_setAt, bool i_setTg, cCcD_Obj* param_2, cCcD_Obj* param_3,
                           dCcD_GObjInf* i_atObjInf, dCcD_GObjInf* i_tgObjInf, cCcD_Stts* param_6,
                           cCcD_Stts* param_7, dCcD_GStts* param_8, dCcD_GStts* param_9,
                           cXyz* i_hitPos, bool i_chkShield) {
    if (!i_atObjInf->ChkAtNoHitMark() && !i_tgObjInf->ChkTgNoHitMark() &&
        (i_atObjInf->GetAtType() != AT_TYPE_10000000 || i_tgObjInf->GetAc() == NULL ||
         fopAcM_checkStatus(i_tgObjInf->GetAc(), AT_TYPE_10000000)))
    {
        if ((i_atObjInf->GetAtType() &
             (AT_TYPE_WOLF_ATTACK | AT_TYPE_WOLF_CUT_TURN | AT_TYPE_10000000 | AT_TYPE_MIDNA_LOCK |
              AT_TYPE_HOOKSHOT | AT_TYPE_SHIELD_ATTACK | AT_TYPE_NORMAL_SWORD)) == 0 ||
            i_tgObjInf->GetTgSpl() == 1)
        {
            return;
        }

        if ((i_atObjInf->GetAtType() != AT_TYPE_HOOKSHOT ||
             !i_tgObjInf->ChkTgHookShotNoHitMark()) &&
            (i_atObjInf->GetAtType() != AT_TYPE_ARROW || !i_tgObjInf->ChkTgArrowNoHitMark()) &&
            param_9->ChkNoneActorPerfTblId())
        {
            if (!i_chkShield) {
                if ((i_atObjInf->GetAtHitMark() != 0 || i_tgObjInf->GetTgHitMark() == 8) &&
                    (i_atObjInf->GetAtHitMark() != 4 || i_tgObjInf->GetTgHitMark() != 4))
                {
                    csXyz sp10;
                    CalcParticleAngle(i_atObjInf, param_6, param_7, &sp10);

                    if (i_tgObjInf->GetTgHitMark() == 5 || i_tgObjInf->GetTgHitMark() == 8) {
                        u32 atType = i_atObjInf->GetAtType();
                        fopAc_ac_c* ac = i_tgObjInf->GetAc();

                        i_dComIfGp_setHitMark(2, ac, i_hitPos, &sp10, NULL, atType);
                    } else {
                        u16 hitmark;
                        if (i_tgObjInf->GetTgHitMark() == 3) {
                            hitmark = 3;
                        } else {
                            hitmark = i_atObjInf->GetAtHitMark();
                        }

                        if ((hitmark != 1 && hitmark != 3) || i_atObjInf->GetAtAtp() != 0) {
                            u32 atType = i_atObjInf->GetAtType();
                            fopAc_ac_c* ac = i_tgObjInf->GetAc();

                            i_dComIfGp_setHitMark(hitmark, ac, i_hitPos, &sp10, NULL, atType);
                        }
                    }
                }
            } else if (i_tgObjInf->GetTgHitMark() != 0) {
                csXyz sp8;
                CalcParticleAngle(i_atObjInf, param_6, param_7, &sp8);

                u32 atType = i_atObjInf->GetAtType();
                fopAc_ac_c* ac = i_tgObjInf->GetAc();
                u16 hitmark = i_tgObjInf->GetTgHitMark();

                i_dComIfGp_setHitMark(hitmark, ac, i_hitPos, &sp8, NULL, atType);
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dCcS::ProcAtTgHitmark(bool param_0, bool param_1, cCcD_Obj* param_2, cCcD_Obj* param_3,
                               dCcD_GObjInf* param_4, dCcD_GObjInf* param_5, cCcD_Stts* param_6,
                               cCcD_Stts* param_7, dCcD_GStts* param_8, dCcD_GStts* param_9,
                               cXyz* param_10, bool param_11) {
    nofralloc
#include "asm/d/cc/d_cc_s/func_8008685C.s"
}
#pragma pop
#endif

/* 80086AC0-80086D8C 081400 02CC+00 1/0 0/0 0/0 .text
 * SetAtTgGObjInf__4dCcSFbbP8cCcD_ObjP8cCcD_ObjP12cCcD_GObjInfP12cCcD_GObjInfP9cCcD_SttsP9cCcD_SttsP10cCcD_GSttsP10cCcD_GSttsP4cXyz
 */
void dCcS::SetAtTgGObjInf(bool i_setAt, bool i_setTg, cCcD_Obj* param_2, cCcD_Obj* param_3,
                          cCcD_GObjInf* i_atObjInf, cCcD_GObjInf* i_tgObjInf, cCcD_Stts* param_6,
                          cCcD_Stts* param_7, cCcD_GStts* param_8, cCcD_GStts* param_9,
                          cXyz* i_hitPos) {
    dCcD_GObjInf* atObjInf = (dCcD_GObjInf*)i_atObjInf;
    dCcD_GObjInf* tgObjInf = (dCcD_GObjInf*)i_tgObjInf;
    dCcD_GStts* stts1 = (dCcD_GStts*)param_8;
    dCcD_GStts* stts2 = (dCcD_GStts*)param_9;

    bool chk_shield = ChkShield(param_2, param_3, atObjInf, tgObjInf, i_hitPos);

    if (i_setAt) {
        atObjInf->SetAtHitPos(*i_hitPos);
        atObjInf->SetAtRVec(*tgObjInf->GetTgVecP());

        if (stts1 != NULL && stts1->GetTgSpl() == 0) {
            stts1->SetTgSpl(tgObjInf->GetTgSpl());
        }

        atObjInf->SetAtHitApid(param_7->GetApid());

        if (chk_shield || tgObjInf->GetTgHitMark() == 8 && atObjInf->GetAtMtrl() != 2 &&
                              (atObjInf->GetAtSpl() == 0 || atObjInf->GetAtSpl() == 5 ||
                               atObjInf->GetAtSpl() == 8))
        {
            atObjInf->OnAtShieldHit();
        }

        if (stts2->ChkNoActor()) {
            atObjInf->OnAtHitNoActor();
        }
    }

    if (i_setTg) {
        tgObjInf->SetTgHitPos(*i_hitPos);
        tgObjInf->SetTgRVec(*atObjInf->GetAtVecP());

        if (stts2 != NULL && stts1->GetAtSpl() == 0) {
            stts2->SetAtSpl(atObjInf->GetAtSpl());
        }

        tgObjInf->SetTgHitApid(param_6->GetApid());

        if (chk_shield) {
            tgObjInf->OnTgShieldHit();
        } else {
            param_7->PlusDmg(param_2->GetAtAtp());
        }

        if (stts1->ChkNoActor()) {
            tgObjInf->OnTgHitNoActor();
        }
    }

    if (i_setAt) {
        dCcD_HitCallback cb = atObjInf->GetAtHitCallback();

        if (cb != NULL) {
            cb(atObjInf->GetAc(), atObjInf, tgObjInf->GetAc(), tgObjInf);
        }
    }

    if (i_setTg) {
        dCcD_HitCallback cb = tgObjInf->GetTgHitCallback();

        if (cb != NULL) {
            cb(tgObjInf->GetAc(), tgObjInf, atObjInf->GetAc(), atObjInf);
        }
    }

    if (i_setAt && i_setTg && (!atObjInf->ChkAtEffCounter() || !tgObjInf->ChkTgEffCounter())) {
        atObjInf->SetAtEffCounterTimer();
        tgObjInf->SetTgEffCounterTimer();

        ProcAtTgHitmark(i_setAt, i_setTg, param_2, param_3, atObjInf, tgObjInf, param_6, param_7,
                        stts1, stts2, i_hitPos, chk_shield);
    }
}

/* 80086D8C-80086FBC 0816CC 0230+00 0/0 2/2 0/0 .text
 * ChkCamera__4dCcSFR4cXyzR4cXyzfP10fopAc_ac_cP10fopAc_ac_cP10fopAc_ac_c */
bool dCcS::ChkCamera(cXyz& param_0, cXyz& param_1, f32 param_2, fopAc_ac_c* param_3,
                     fopAc_ac_c* param_4, fopAc_ac_c* param_5) {
    if (mObjCoCount == 0) {
        return false;
    }

    cCcD_Obj** temp_r29 = &mpObjCo[mObjCoCount];

    cCcD_CpsAttr sp48;
    sp48.Set(param_0, param_1, param_2);
    sp48.CalcAabBox();

    cCcD_DivideInfo sp18;
    f32 sp14;
    mDivideArea.CalcDivideInfoOverArea(&sp18, sp48.GetWorkAab());

    for (cCcD_Obj** i = mpObjCo; i < temp_r29; i++) {
        if ((*i)->ChkCoSet() && (*i)->GetAc() != param_3 && (*i)->GetAc() != param_4 &&
            (*i)->GetAc() != param_5)
        {
            if ((*i)->GetPDivideInfo()->Chk(sp18)) {
                dCcD_GObjInf* obj = (dCcD_GObjInf*)(*i)->GetGObjInf();

                if (obj == NULL || !obj->ChkCoNoCamHit()) {
                    cCcD_ShapeAttr* shapeAttr = (*i)->GetShapeAttr();

                    if (sp48.CrossCo(*shapeAttr, &sp14)) {
                        return true;
                    }
                }
            }
        }
    }

    return false;
}

/* 80086FBC-8008721C 0818FC 0260+00 0/0 1/1 0/0 .text
 * chkCameraPoint__4dCcSFRC4cXyzPQ214cCcD_ShapeAttr5ShapeP10fopAc_ac_cP10fopAc_ac_c */
bool dCcS::chkCameraPoint(cXyz const& param_0, cCcD_ShapeAttr::Shape* param_1, fopAc_ac_c* param_2,
                          fopAc_ac_c* param_3) {
    if (mObjCoCount == 0) {
        return false;
    }

    cCcD_Obj** temp_r29 = &mpObjCo[mObjCoCount];

    cCcD_SphAttr sp48;
    cCcD_SrcSphAttr sp1C;

    sp1C.mSph.mCenter = param_0;
    sp1C.mSph.mRadius = 1.0f;
    sp48.Set(sp1C);
    sp48.CalcAabBox();

    cCcD_DivideInfo sp18;
    f32 sp14;
    mDivideArea.CalcDivideInfoOverArea(&sp18, sp48.GetWorkAab());

    for (cCcD_Obj** i = mpObjCo; i < temp_r29; i++) {
        if ((*i)->ChkCoSet() && (*i)->GetAc() != param_2 && (*i)->GetAc() != param_3) {
            if ((*i)->GetPDivideInfo()->Chk(sp18)) {
                dCcD_GObjInf* obj = (dCcD_GObjInf*)(*i)->GetGObjInf();

                if (obj == NULL || !obj->ChkCoNoCamHit()) {
                    cCcD_ShapeAttr* shapeAttr = (*i)->GetShapeAttr();

                    if (sp48.CrossCo(*shapeAttr, &sp14)) {
                        shapeAttr->getShapeAccess(param_1);

                        if (param_1->_0 != 2) {
                            return true;
                        }
                    }
                }
            }
        }
    }

    return false;
}

/* 800872A8-800872AC 081BE8 0004+00 1/0 0/0 0/0 .text            MoveAfterCheck__4dCcSFv */
void dCcS::MoveAfterCheck() {}

/* 800872AC-800872B0 081BEC 0004+00 1/1 0/0 0/0 .text            DrawAfter__4dCcSFv */
void dCcS::DrawAfter() {}

/* 800872B0-800872D0 081BF0 0020+00 0/0 1/1 0/0 .text            Move__4dCcSFv */
void dCcS::Move() {
    cCcS::Move();
}

/* 800872D0-8008730C 081C10 003C+00 0/0 1/1 0/0 .text            Draw__4dCcSFv */
void dCcS::Draw() {
    DrawAfter();
    DrawClear();
    mMass_Mng.Clear();
}

/* 8008730C-80087330 081C4C 0024+00 0/0 0/0 1/1 .text            MassClear__4dCcSFv */
void dCcS::MassClear() {
    mMass_Mng.Clear();
}

/* ############################################################################################## */
/* 803AC3A4-803AC3E4 0094C4 0040+00 1/1 0/0 0/0 .data            m_mtrl_hit_tbl__4dCcS */
u8 dCcS::m_mtrl_hit_tbl[64] = {
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01,
};

/* 80087330-8008734C 081C70 001C+00 1/1 0/0 0/0 .text            ChkAtTgMtrlHit__4dCcSFUcUc */
int dCcS::ChkAtTgMtrlHit(u8 i_atMtrl, u8 i_tgMtrl) {
    return m_mtrl_hit_tbl[i_atMtrl + i_tgMtrl * 8];
}

/* 8008734C-800873B0 081C8C 0064+00 1/0 0/0 0/0 .text
 * ChkNoHitGAtTg__4dCcSFPC12cCcD_GObjInfPC12cCcD_GObjInfP10cCcD_GSttsP10cCcD_GStts */
bool dCcS::ChkNoHitGAtTg(cCcD_GObjInf const* i_atObjInf, cCcD_GObjInf const* i_tgObjInf,
                         cCcD_GStts*, cCcD_GStts*) {
    dCcD_GObjInf* atObjInf = (dCcD_GObjInf*)i_atObjInf;
    dCcD_GObjInf* tgObjInf = (dCcD_GObjInf*)i_tgObjInf;

    if (tgObjInf->ChkTgWolfSpNoDamage() && atObjInf->GetAtMtrl() == 0 &&
        atObjInf->GetAtType() &
            (AT_TYPE_CSTATUE_BOSS_SWING | AT_TYPE_1000 | AT_TYPE_800 | AT_TYPE_CSTATUE_SWING))
    {
        return true;
    }

    return ChkAtTgMtrlHit(atObjInf->GetAtMtrl(), tgObjInf->GetTgMtrl()) == 0;
}
