/**
 * d_cc_s.cpp
 *
 */

#include "d/d_cc_s.h"
#include "d/d_com_inf_game.h"
#include "d/d_jnt_col.h"
#include "f_op/f_op_actor_mng.h"

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
        var_r4 = fopAcM_GetShapeAngle_p(tgActor)->y;
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
void dCcS::CalcTgPlusDmg(cCcD_Obj* i_atObj, cCcD_Obj* i_tgObj, cCcD_Stts* i_atStts,
                         cCcD_Stts* i_tgStts) {}

/* 800861B4-80086240 080AF4 008C+00 1/0 0/0 0/0 .text
 * ChkAtTgHitAfterCross__4dCcSFbbPC12cCcD_GObjInfPC12cCcD_GObjInfP9cCcD_SttsP9cCcD_SttsP10cCcD_GSttsP10cCcD_GStts
 */
bool dCcS::ChkAtTgHitAfterCross(bool i_setAt, bool i_setTg, cCcD_GObjInf const* i_atObjInf,
                                cCcD_GObjInf const* i_tgObjInf, cCcD_Stts* i_atStts,
                                cCcD_Stts* i_tgStts, cCcD_GStts* i_atGStts, cCcD_GStts* i_tgGStts) {
    dCcD_GObjInf* atObjInf = (dCcD_GObjInf*)i_atObjInf;
    dCcD_GObjInf* tgObjInf = (dCcD_GObjInf*)i_tgObjInf;

    fpc_ProcID tgApid = i_atStts->GetApid();
    fpc_ProcID atApid = i_tgStts->GetApid();

    if (i_setAt) {
        static_cast<dCcD_GStts*>(i_atGStts)->SetAtApid(atApid);

        if (atObjInf->ChkAtNoConHit() && !tgObjInf->ChkTgStopNoConHit()) {
            if (static_cast<dCcD_GStts*>(i_atGStts)->GetAtOldApid() == i_tgStts->GetApid()) {
                return true;
            }
        }
    }

    if (i_setTg) {
        static_cast<dCcD_GStts*>(i_tgGStts)->SetTgApid(tgApid);

        if (tgObjInf->ChkTgNoConHit() && !atObjInf->ChkAtStopNoConHit()) {
            if (static_cast<dCcD_GStts*>(i_tgGStts)->GetTgOldApid() == i_atStts->GetApid()) {
                return true;
            }
        }
    }

    return false;
}

/* 80086240-80086360 080B80 0120+00 1/0 0/0 0/0 .text
 * SetCoGObjInf__4dCcSFbbP12cCcD_GObjInfP12cCcD_GObjInfP9cCcD_SttsP9cCcD_SttsP10cCcD_GSttsP10cCcD_GStts
 */
// NONMATCHING weird reg alloc
void dCcS::SetCoGObjInf(bool i_co2Set, bool i_co1Set, cCcD_GObjInf* i_co1Obj, cCcD_GObjInf* i_co2Obj,
                        cCcD_Stts* i_co1Stts, cCcD_Stts* i_co2Stts, cCcD_GStts* i_co1GStts,
                        cCcD_GStts* i_co2GStts) {
    if (i_co2Set) {
        static_cast<dCcD_GObjInf*>(i_co1Obj)->SetCoHitApid(i_co2Stts->GetApid());

        if (static_cast<dCcD_GStts*>(i_co2GStts)->ChkNoActor()) {
            static_cast<dCcD_GObjInf*>(i_co1Obj)->OnCoHitNoActor();
        }
    }

    if (i_co1Set) {
        static_cast<dCcD_GObjInf*>(i_co2Obj)->SetCoHitApid(i_co1Stts->GetApid());

        if (static_cast<dCcD_GStts*>(i_co1GStts)->ChkNoActor()) {
            static_cast<dCcD_GObjInf*>(i_co2Obj)->OnCoHitNoActor();
        }
    }

    if (i_co2Set) {
        dCcD_HitCallback cb = static_cast<dCcD_GObjInf*>(i_co1Obj)->GetCoHitCallback();

        if (cb != NULL) {
            cb(i_co1Obj->GetAc(), static_cast<dCcD_GObjInf*>(i_co1Obj), i_co2Obj->GetAc(),
               static_cast<dCcD_GObjInf*>(i_co2Obj));
        }
    }

    if (i_co1Set) {
        dCcD_HitCallback cb = static_cast<dCcD_GObjInf*>(i_co2Obj)->GetCoHitCallback();

        if (cb != NULL) {
            cb(i_co2Obj->GetAc(), static_cast<dCcD_GObjInf*>(i_co2Obj), i_co1Obj->GetAc(),
               static_cast<dCcD_GObjInf*>(i_co1Obj));
        }
    }
}

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
bool dCcS::ChkNoHitGCo(cCcD_Obj* i_co1Obj, cCcD_Obj* i_co2Obj) {
    return false;
}

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
void dCcS::SetPosCorrect(cCcD_Obj* i_co1Obj, cXyz* i_pos1, cCcD_Obj* i_co2Obj, cXyz* i_pos2,
                         f32 i_cross_len) {
    if (i_co1Obj->ChkCoNoCrr() || i_co2Obj->ChkCoNoCrr()) {
        return;
    }

    if (i_co1Obj->GetStts() == NULL || i_co2Obj->GetStts() == NULL) {
        return;
    }

    if (cM3d_IsZero(i_cross_len)) {
        return;
    }

    SetCoGCorrectProc(i_co1Obj, i_co2Obj);

    bool bvar2 = false;
    if (i_co1Obj->ChkCoSph3DCrr() && i_co2Obj->ChkCoSph3DCrr()) {
        bvar2 = true;
    }

    if ((i_co1Obj->GetStts()->GetWeightUc() == 0 && i_co2Obj->GetStts()->GetWeightUc() == 0) ||
        (i_co1Obj->GetStts()->GetWeightUc() == 0xFF && i_co2Obj->GetStts()->GetWeightUc() == 0xFF))
    {
        return;
    }

    int co1_rank = GetRank(i_co1Obj->GetStts()->GetWeightUc());
    int co2_rank = GetRank(i_co2Obj->GetStts()->GetWeightUc());
    u8 rank = rank_tbl[co1_rank][co2_rank];

    f32 fvar1 = rank * 0.01f;
    f32 fvar2 = (u8)(100 - rank) * 0.01f;

    cXyz co1_move;
    cXyz co2_move;
    Vec local_c8;

    f32 fvar14;
    if (bvar2) {
        VECSubtract(i_pos2, i_pos1, &local_c8);
        fvar14 = VECMag(&local_c8);
    } else {
        local_c8.x = i_pos2->x - i_pos1->x;
        local_c8.y = 0.0f;
        local_c8.z = i_pos2->z - i_pos1->z;
        fvar14 = JMAFastSqrt((local_c8.x * local_c8.x) + (local_c8.z * local_c8.z));
    }

    if (!cM3d_IsZero(fvar14)) {
        if (bvar2) {
            VECScale(&local_c8, &local_c8, i_cross_len / fvar14);
            fvar1 *= -1.0f;
            VECScale(&local_c8, &co1_move, fvar1);
            VECScale(&local_c8, &co2_move, fvar2);
        } else {
            fvar14 = i_cross_len / fvar14;
            local_c8.x *= fvar14;
            local_c8.z *= fvar14;

            co1_move.x = -local_c8.x * fvar1;
            co1_move.y = 0.0f;
            co1_move.z = -local_c8.z * fvar1;

            co2_move.x = local_c8.x * fvar2;
            co2_move.y = 0.0f;
            co2_move.z = local_c8.z * fvar2;
        }
    } else {
        co1_move.y = 0.0f;
        co1_move.z = 0.0f;
        co2_move.y = 0.0f;
        co2_move.z = 0.0f;

        if (!cM3d_IsZero(i_cross_len)) {
            co1_move.x = -i_cross_len * fvar1;
            co2_move.x = i_cross_len * fvar2;
        } else {
            co1_move.x = -fvar1;
            co2_move.x = fvar2;
        }
    }

    i_co1Obj->GetStts()->PlusCcMove(co1_move.x, co1_move.y, co1_move.z);
    i_co2Obj->GetStts()->PlusCcMove(co2_move.x, co2_move.y, co2_move.z);
    *i_pos1 += co1_move;
    *i_pos2 += co2_move;
}

/* 80086754-8008685C 081094 0108+00 1/0 0/0 0/0 .text
 * CalcParticleAngle__4dCcSFP12dCcD_GObjInfP9cCcD_SttsP9cCcD_SttsP5csXyz */
void dCcS::CalcParticleAngle(dCcD_GObjInf* i_atObjInf, cCcD_Stts* i_atStts, cCcD_Stts* i_tgStts,
                             csXyz* o_angle) {
    cXyz vec(*i_atObjInf->GetAtVecP());

    if (cM3d_IsZero(VECMag(&vec))) {
        fopAc_ac_c* atActor = i_atStts->GetActor();
        fopAc_ac_c* tgActor = i_tgStts->GetActor();

        if (atActor == NULL || tgActor == NULL) {
            vec.z = 0.0f;
            vec.x = 0.0f;
            vec.y = -1.0f;
        } else {
            VECSubtract(&tgActor->current.pos, &atActor->current.pos, &vec);

            if (cM3d_IsZero(VECMag(&vec))) {
                vec.z = 0.0f;
                vec.x = 0.0f;
                vec.y = -1.0f;
            } else {
                VECNormalize(&vec, &vec);
            }
        }
    } else {
        VECNormalize(&vec, &vec);
    }

    cM3d_CalcVecZAngle(vec, o_angle);
}

/* 8008685C-80086AC0 08119C 0264+00 1/1 0/0 0/0 .text
 * ProcAtTgHitmark__4dCcSFbbP8cCcD_ObjP8cCcD_ObjP12dCcD_GObjInfP12dCcD_GObjInfP9cCcD_SttsP9cCcD_SttsP10dCcD_GSttsP10dCcD_GSttsP4cXyzb
 */
// NONMATCHING one branch issue
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
              AT_TYPE_HOOKSHOT | AT_TYPE_SHIELD_ATTACK | AT_TYPE_NORMAL_SWORD)) != 0 &&
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

                        dComIfGp_setHitMark(2, ac, i_hitPos, &sp10, NULL, atType);
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

                            dComIfGp_setHitMark(hitmark, ac, i_hitPos, &sp10, NULL, atType);
                        }
                    }
                }
            } else if (i_tgObjInf->GetTgHitMark() != 0) {
                csXyz sp8;
                CalcParticleAngle(i_atObjInf, param_6, param_7, &sp8);

                u32 atType = i_atObjInf->GetAtType();
                fopAc_ac_c* ac = i_tgObjInf->GetAc();
                u16 hitmark = i_tgObjInf->GetTgHitMark();

                dComIfGp_setHitMark(hitmark, ac, i_hitPos, &sp8, NULL, atType);
            }
        }
    }
}

/* 80086AC0-80086D8C 081400 02CC+00 1/0 0/0 0/0 .text
 * SetAtTgGObjInf__4dCcSFbbP8cCcD_ObjP8cCcD_ObjP12cCcD_GObjInfP12cCcD_GObjInfP9cCcD_SttsP9cCcD_SttsP10cCcD_GSttsP10cCcD_GSttsP4cXyz
 */
void dCcS::SetAtTgGObjInf(bool i_setAt, bool i_setTg, cCcD_Obj* i_atObj, cCcD_Obj* i_tgObj,
                          cCcD_GObjInf* i_atObjInf, cCcD_GObjInf* i_tgObjInf, cCcD_Stts* i_atStts,
                          cCcD_Stts* i_tgStts, cCcD_GStts* i_atGStts, cCcD_GStts* i_tgGStts,
                          cXyz* i_hitPos) {
    dCcD_GObjInf* atObjInf = (dCcD_GObjInf*)i_atObjInf;
    dCcD_GObjInf* tgObjInf = (dCcD_GObjInf*)i_tgObjInf;
    dCcD_GStts* at_gstts = (dCcD_GStts*)i_atGStts;
    dCcD_GStts* tg_gstts = (dCcD_GStts*)i_tgGStts;

    bool chk_shield = ChkShield(i_atObj, i_tgObj, atObjInf, tgObjInf, i_hitPos);

    if (i_setAt) {
        atObjInf->SetAtHitPos(*i_hitPos);
        atObjInf->SetAtRVec(*tgObjInf->GetTgVecP());

        if (at_gstts != NULL && at_gstts->GetTgSpl() == 0) {
            at_gstts->SetTgSpl(tgObjInf->GetTgSpl());
        }

        atObjInf->SetAtHitApid(i_tgStts->GetApid());

        if (chk_shield || tgObjInf->GetTgHitMark() == 8 && atObjInf->GetAtMtrl() != dCcD_MTRL_ICE &&
                              (atObjInf->GetAtSpl() == 0 || atObjInf->GetAtSpl() == 5 ||
                               atObjInf->GetAtSpl() == 8))
        {
            atObjInf->OnAtShieldHit();
        }

        if (tg_gstts->ChkNoActor()) {
            atObjInf->OnAtHitNoActor();
        }
    }

    if (i_setTg) {
        tgObjInf->SetTgHitPos(*i_hitPos);
        tgObjInf->SetTgRVec(*atObjInf->GetAtVecP());

        if (tg_gstts != NULL && at_gstts->GetAtSpl() == 0) {
            tg_gstts->SetAtSpl(atObjInf->GetAtSpl());
        }

        tgObjInf->SetTgHitApid(i_atStts->GetApid());

        if (chk_shield) {
            tgObjInf->OnTgShieldHit();
        } else {
            i_tgStts->PlusDmg(i_atObj->GetAtAtp());
        }

        if (at_gstts->ChkNoActor()) {
            tgObjInf->OnTgHitNoActor();
        }
    }

    if (i_setAt) {
        dCcD_HitCallback at_callback = atObjInf->GetAtHitCallback();

        if (at_callback != NULL) {
            at_callback(atObjInf->GetAc(), atObjInf, tgObjInf->GetAc(), tgObjInf);
        }
    }

    if (i_setTg) {
        dCcD_HitCallback tg_callback = tgObjInf->GetTgHitCallback();

        if (tg_callback != NULL) {
            tg_callback(tgObjInf->GetAc(), tgObjInf, atObjInf->GetAc(), atObjInf);
        }
    }

    if (i_setAt && i_setTg && (!atObjInf->ChkAtEffCounter() || !tgObjInf->ChkTgEffCounter())) {
        atObjInf->SetAtEffCounterTimer();
        tgObjInf->SetTgEffCounterTimer();

        ProcAtTgHitmark(i_setAt, i_setTg, i_atObj, i_tgObj, atObjInf, tgObjInf, i_atStts, i_tgStts,
                        at_gstts, tg_gstts, i_hitPos, chk_shield);
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

/* 803AC3A4-803AC3E4 0094C4 0040+00 1/1 0/0 0/0 .data            m_mtrl_hit_tbl__4dCcS */
// clang-format off
bool dCcS::m_mtrl_hit_tbl[64] = {
    true,  true,  true,  true,  true,  true,  true,  true, 
    false, true,  false, false, false, false, false, false,
    false, false, true,  false, false, false, false, false,
    false, false, false, true,  false, false, false, false,
    false, false, false, false, true,  false, false, false,
    false, false, false, false, false, true,  false, false,
    false, false, false, false, false, false, true,  false,
    true,  true,  true,  true,  false, true,  true,  true,
};
// clang-format on

/* 80087330-8008734C 081C70 001C+00 1/1 0/0 0/0 .text            ChkAtTgMtrlHit__4dCcSFUcUc */
BOOL dCcS::ChkAtTgMtrlHit(u8 i_atMtrl, u8 i_tgMtrl) {
    return m_mtrl_hit_tbl[i_atMtrl + i_tgMtrl * 8];
}

/* 8008734C-800873B0 081C8C 0064+00 1/0 0/0 0/0 .text
 * ChkNoHitGAtTg__4dCcSFPC12cCcD_GObjInfPC12cCcD_GObjInfP10cCcD_GSttsP10cCcD_GStts */
bool dCcS::ChkNoHitGAtTg(cCcD_GObjInf const* i_atObjInf, cCcD_GObjInf const* i_tgObjInf,
                         cCcD_GStts*, cCcD_GStts*) {
    dCcD_GObjInf* atObjInf = (dCcD_GObjInf*)i_atObjInf;
    dCcD_GObjInf* tgObjInf = (dCcD_GObjInf*)i_tgObjInf;

    if (tgObjInf->ChkTgWolfSpNoDamage() && atObjInf->GetAtMtrl() == dCcD_MTRL_NONE &&
        atObjInf->GetAtType() &
            (AT_TYPE_CSTATUE_BOSS_SWING | AT_TYPE_1000 | AT_TYPE_800 | AT_TYPE_CSTATUE_SWING))
    {
        return true;
    }

    return ChkAtTgMtrlHit(atObjInf->GetAtMtrl(), tgObjInf->GetTgMtrl()) == 0;
}
