//
// Translation Unit: d_a_ep
//

#include "d/actor/d_a_ep.h"
#include "d/d_com_inf_game.h"
#include "m_Do/m_Do_lib.h"
#include "d/d_a_obj.h"
#include "d/d_s_play.h"

UNK_REL_DATA

/* 804681F8-804682F8 000078 0100+00 1/1 0/0 0/0 .text            hahen_draw__FP8ep_class */
static void hahen_draw(ep_class* e_this) {
    // NONMATCHING
    ep_hahen_s* epHahenS = e_this->mHahen;
    g_env_light.settingTevStruct(16, &e_this->current.pos, &e_this->tevStr);

    for (int i = 0; i < 6; i++) {
        if (epHahenS[i].field_0x97 != 0) {
            g_env_light.setLightTevColorType_MAJI(epHahenS[i].mpModel, &e_this->tevStr);
            mDoExt_modelUpdateDL(epHahenS[i].mpModel);
            
            if (epHahenS[i].field_0x96 < 2) {
                cXyz local_28(epHahenS[i].field_0x4.x, epHahenS[i].field_0x4.y + 50.0f, epHahenS[i].field_0x4.z);
                epHahenS[i].mShadow = dComIfGd_setShadow(epHahenS[i].mShadow, 1, epHahenS[i].mpModel,
                    &local_28, 200.0f, 0.0f, epHahenS[i].field_0x4.y, epHahenS[i].mGroundY, 
                    epHahenS[i].mObjGndCheck, &e_this->tevStr, 0, 1.0f, 
                    dDlst_shadowControl_c::getSimpleTex());
            }
        }
    }
}

/* 804682F8-80468A70 000178 0778+00 2/2 0/0 0/0 .text            move_calc__FP8ep_classP10ep_hahen_s */
static int move_calc(ep_class* e_this, ep_hahen_s* i_this) {
    // NONMATCHING
    static u16 w_eff_id[4] = {
        0x01B8, 0x01B9, 0x01BA, 0x01BB,
    };

    dBgS_LinChk dStack_bc;
    int rv = 0;

    i_this->field_0x10 = i_this->field_0x4;
    i_this->field_0x4 += i_this->field_0x1c;

    i_this->field_0x1c.y -= 5.0f;
    if (i_this->field_0x1c.y < -90.0f) {
        i_this->field_0x1c.y = -90.0f;
    }

    cXyz local_11c(i_this->field_0x4.x, i_this->field_0x4.y + 100.0f, i_this->field_0x4.z);
    f32 fVar11 = fabsf(35.0f * cM_ssin(i_this->field_0x28.x)) + 6.0f;
    s16 sVar9 = 1000;
    if (fopAcM_gc_c::gndCheck(&local_11c)) {
        i_this->mGroundY = fopAcM_gc_c::getGroundY();
        i_this->mObjGndCheck = *fopAcM_gc_c::getGroundCheck();

        if (i_this->field_0x1c.y <= 0.0f && i_this->field_0x4.y <= i_this->mGroundY + fVar11) {
            i_this->field_0x4.y = i_this->mGroundY + fVar11;
            rv = 1;

            if (i_this->field_0x1c.y < -20.0f && i_this->field_0x96 < 2) {
                i_this->field_0x1c.y *= -0.3f;
                if (i_this->field_0x96 == 0) {
                    i_this->field_0x28.x = cM_rndFX(17000.0f);
                } else {
                    i_this->field_0x28.x = cM_rndFX(10000.0f);
                }

                i_this->field_0x90 = 0;
                i_this->field_0x92 /= 2;
                i_this->field_0x96 += 1;
                fopAcM_effSmokeSet1(&e_this->field_0xa60, &e_this->field_0xa64, &i_this->field_0x4, NULL, 0.5f, &e_this->tevStr, 0);
                
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_WOODSTICK_BOUND, &i_this->field_0x4, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            } else {
                i_this->field_0x96 = 3;
                i_this->field_0x1c.y = -10.0f;
                sVar9 = 5000;
                i_this->field_0x90 = 0;
                i_this->field_0x92 = 0;
            }

            i_this->field_0x1c.x *= 0.5f;
            i_this->field_0x1c.z *= 0.5f;
        }

        if (i_this->field_0x97 == 1) {
            i_this->field_0x28.y += i_this->field_0x92;
            if (i_this->field_0x90 != 0) {
                i_this->field_0x28.z += i_this->field_0x90;
            } else {
                cLib_addCalcAngleS2(&i_this->field_0x28.z, 0, 1, sVar9);
            }
            cLib_addCalcAngleS2(&i_this->field_0x28.x, 0, 0, 0x800);
        }
    }

    if (i_this->field_0x98 == 0) {
        cXyz local_158 = i_this->field_0x4 - i_this->field_0x10;
        local_158.y = 0.0f;
        if (local_158.abs() > 0.01f) {
            cXyz local_170 = i_this->field_0x4 + (local_158 * 1.1f);
            dStack_bc.Set(&i_this->field_0x10, &local_170, e_this);
            if (dComIfG_Bgsp().LineCross(&dStack_bc)) {
                i_this->field_0x4 = i_this->field_0x10;
                i_this->field_0x1c.x *= -0.5f;
                i_this->field_0x1c.z *= -0.5f;
                i_this->field_0x1c.y = 0.0f;
                i_this->field_0x4 += i_this->field_0x1c;
                i_this->field_0x98 = 5;
                rv = 2;

                Z2GetAudioMgr()->seStart(Z2SE_OBJ_WOODSTICK_BOUND, &i_this->field_0x4, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            }
        }
    }

    dBgS_ObjGndChk_Spl cStack_110;
    cXyz local_140(i_this->field_0x4);
    local_140.y += 100.0f;
    cStack_110.SetPos(&local_140);
    i_this->field_0x34 = dComIfG_Bgsp().GroundCross(&cStack_110);

    if (i_this->field_0x4.y <= i_this->field_0x34) {
        i_this->field_0x97 = 2;
        i_this->field_0x4.y = i_this->field_0x34;
        i_this->field_0x1c.x *= 0.5f;
        i_this->field_0x1c.z *= 0.5f;
        i_this->field_0x94 = cM_rndF(65536.0f);
        rv = 3;

        cXyz local_14c(0.7f, 0.7f, 0.7f);
        for (int i = 0; i < 4; i++) {
            e_this->mHahen[i].field_0xa0 = dComIfGp_particle_set(0, w_eff_id[i], &i_this->field_0x4, &e_this->tevStr);
        }

        mDoAud_seStart(Z2SE_CM_BODYFALL_WATER_S, &i_this->field_0x4, 0, 0);
    }

    return rv;
}

/* 80468A70-80468A90 0008F0 0020+00 1/1 0/0 0/0 .text hahen_normal__FP8ep_classP10ep_hahen_s */
static void hahen_normal(ep_class* e_this, ep_hahen_s* i_this) {
    move_calc(e_this, i_this);
}

/* 80468A90-80468E50 000910 03C0+00 1/1 0/0 0/0 .text hahen_water__FP8ep_classP10ep_hahen_s */
static void hahen_water(ep_class* e_this, ep_hahen_s* i_this) {
    // NONMATCHING
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    dBgS_LinChk dStack_8c;
    i_this->field_0x94++;
    if (i_this->field_0x98) {
        i_this->field_0x98--;
    }

    i_this->field_0x10 = i_this->field_0x4;

    f32 x = i_this->field_0x4.x - player->current.pos.x;
    f32 z = i_this->field_0x4.z - player->current.pos.z;
    if (JMAFastSqrt(x * x + z * z) < 60.0f) {
        s16 sVar1 = cM_atan2s(x, z);
        cLib_addCalcAngleS2(&i_this->field_0x28.y, sVar1, 0x10, 200);
        cMtx_YrotS(*calc_mtx, sVar1);

        cXyz local_98(0.0f, 0.0f, 3.0f);
        MtxPosition(&local_98, &i_this->field_0x1c);
    }

    i_this->field_0x4 += i_this->field_0x1c;
    i_this->field_0x1c.y = 0.0f;
    i_this->field_0x4.y = i_this->field_0x34;
    i_this->field_0x1c.x *= 0.95f;
    i_this->field_0x1c.z *= 0.95f;
    i_this->field_0x28.y += i_this->field_0x92;
    cLib_addCalcAngleS2(&i_this->field_0x92, 0, 1, 0x28);

    cLib_addCalcAngleS2(&i_this->field_0x28.z, (200.0f * cM_ssin(i_this->field_0x94 * 0x708)), 1, 0x800);
    cLib_addCalcAngleS2(&i_this->field_0x28.x, 0, 4, 0x1000);

    if (i_this->field_0x98 == 0) {
        cXyz local_bc = i_this->field_0x4 - i_this->field_0x10;
        local_bc.y = 0.0f;

        if (local_bc.abs() > 0.01f) {
            cXyz local_d4 = i_this->field_0x4 + local_bc * 2.0f;
            dStack_8c.Set(&i_this->field_0x10, &local_d4, e_this);

            if (dComIfG_Bgsp().LineCross(&dStack_8c)) {
                i_this->field_0x4 = i_this->field_0x10;
                i_this->field_0x1c.x *= -1.0f;
                i_this->field_0x1c.z *= -1.0f;
                i_this->field_0x98 = 5;
            }
        }
    }

    fopAcM_effHamonSet(&i_this->field_0xa0, &i_this->field_0x4, 1.0f, 0.05f);
}

/* 80468E50-80469034 000CD0 01E4+00 1/1 0/0 0/0 .text hahen_carry__FP8ep_classP10ep_hahen_s */
static void hahen_carry(ep_class* e_this, ep_hahen_s* i_this) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    if (!fopAcM_checkCarryNow(e_this)) {
        if (fopAcM_GetSpeedF(e_this) > 0.0f) {
            i_this->field_0x97 = 4;
            i_this->field_0x96 = 0;
            i_this->field_0x28.x = 0;
            i_this->field_0x28.z = 0x4000;
            i_this->field_0x28.y = player->shape_angle.y;
            if (dComIfGp_getAttention().Lockon()) {
                i_this->field_0x30 = 80.0f;

                fopAc_ac_c* lockOnTarget = dComIfGp_getAttention().LockonTarget(0);
                if (lockOnTarget) {
                    cXyz local_34, cStack_28;
                    local_34 = lockOnTarget->current.pos - i_this->field_0x4;
                    i_this->field_0x28.y = cM_atan2s(local_34.x, local_34.z);

                    f32 fVar1 = JMAFastSqrt(local_34.x * local_34.x + local_34.z * local_34.z);
                    s16 sVar1 = -cM_atan2s(local_34.y, fVar1);
                    cMtx_XrotS(*calc_mtx, -0x800 + sVar1);

                    local_34.y = 0.0f;
                    local_34.x = 0.0f;
                    local_34.z = i_this->field_0x30;
                    MtxPosition(&local_34, &cStack_28);
                    i_this->field_0x1c.y = cStack_28.y;
                } else {
                    i_this->field_0x1c.y = 10.0f;
                }
            } else {
                i_this->field_0x30 = 70.0f;
                i_this->field_0x1c.y = 30.0f;
            }
        } else {
            i_this->field_0x97 = 1;
            Z2GetAudioMgr()->seStart(Z2SE_OBJ_WOODSTICK_PUT, &i_this->field_0x4, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        }
    }
}

/* 80469034-804690F8 000EB4 00C4+00 1/1 0/0 0/0 .text hahen_cast__FP8ep_classP10ep_hahen_s */
static void hahen_cast(ep_class* e_this, ep_hahen_s* i_this) {
    cXyz local_1c, local_28;

    i_this->field_0x28.x += 0x1450;

    cMtx_YrotS(*calc_mtx, i_this->field_0x28.y);
    local_1c.x = 0.0f;
    local_1c.y = 0.0f;
    local_1c.z = i_this->field_0x30;
    MtxPosition(&local_1c, &local_28);
    i_this->field_0x1c.x = local_28.x;
    i_this->field_0x1c.z = local_28.z;

    if (move_calc(e_this, i_this)) {
        i_this->field_0x97 = 1;
    }

    e_this->mSph2.SetC(i_this->field_0x4);
    dComIfG_Ccsp()->Set(&e_this->mSph2);
}

/* 804690F8-80469568 000F78 0470+00 1/1 0/0 0/0 .text            hahen_move__FP8ep_class */
static void hahen_move(ep_class* e_this) {
    // NONMATCHING
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    dBgS_LinChk dStack_cc;

    if (!fopAcM_checkCarryNow(e_this)) {
        f32 fVar1 = 50.0f;
        bool bVar2 = false;
        for (int i = 0; i < 10; i++) {
            ep_hahen_s* epHahenS = e_this->mHahen;
            for (int j = 0; j < 6; j++) {
                cXyz local_d8;
                local_d8 = player->current.pos - epHahenS[j].field_0x4;
                if (local_d8.abs() < fVar1) {
                    cLib_onBit<u32>(e_this->attention_info.flags, 0x80);
                    e_this->current.pos = epHahenS[j].field_0x4;
                    e_this->eyePos = e_this->current.pos;
                    e_this->attention_info.position = e_this->eyePos;
                    e_this->shape_angle = epHahenS[j].field_0x28;
                    e_this->current.angle = e_this->shape_angle;
                    e_this->field_0xa78 = j;
                    bVar2 = true;
                    break;
                }
            }

            // if (bVar2) break;
            fVar1 += 20.0f;
        }
    } else {
        cLib_offBit<u32>(e_this->attention_info.flags, 0x80);
        e_this->mHahen[e_this->field_0xa78].field_0x97 = 3;
        e_this->mHahen[e_this->field_0xa78].field_0x4 = e_this->current.pos;
        e_this->mHahen[e_this->field_0xa78].field_0x28 = e_this->shape_angle;
    }

    ep_hahen_s* epHahenS = e_this->mHahen;
    for (int i = 0; i < 6; i++) {
        if (epHahenS[i].field_0x97) {
            if (epHahenS[i].field_0x98) {
                epHahenS[i].field_0x98 += -1;
            }
        
            if (e_this->field_0xa79 == 3) {
                if (epHahenS[i].field_0x97 == 1) {
                    hahen_normal(e_this, epHahenS);
                } else if (epHahenS[i].field_0x97 == 2) {
                    hahen_water(e_this, epHahenS);
                } else if (epHahenS[i].field_0x97 == 3) {
                    hahen_carry(e_this, epHahenS);
                } else if (epHahenS[i].field_0x97 == 4) {
                    hahen_cast(e_this, epHahenS);
                }
            }

            MtxTrans(epHahenS[i].field_0x4.x, epHahenS[i].field_0x4.y, epHahenS[i].field_0x4.z, 0);
            cMtx_YrotM(*calc_mtx, epHahenS[i].field_0x28.y);
            cMtx_XrotM(*calc_mtx, epHahenS[i].field_0x28.x);
            cMtx_ZrotM(*calc_mtx, epHahenS[i].field_0x28.z);
            cMtx_YrotM(*calc_mtx, 0x4000);
            MtxTrans(3.0f, 0.0f, 0.0f, 1);
            cMtx_XrotM(*calc_mtx, 0x4000);
            MtxScale(1.0f, 0.5, 1.0f, 1);
            epHahenS[i].mpModel->setBaseTRMtx(*calc_mtx);
        }
    }

    if (e_this->field_0xa79 == 2) {
        e_this->field_0xa79 = 3;
    }
}

/* 80469568-804695F8 0013E8 0090+00 1/0 0/0 0/0 .text            daEp_Draw__FP8ep_class */
static int daEp_Draw(ep_class* e_this) {
    if (e_this->mpModel) {
        if (e_this->field_0x602 != 1) {
            g_env_light.settingTevStruct(16, &e_this->current.pos, &e_this->tevStr);
            g_env_light.setLightTevColorType_MAJI(e_this->mpModel->mModelData, &e_this->tevStr);
            mDoExt_modelUpdateDL(e_this->mpModel);
        }
    }

    if (e_this->field_0xa79 != 0) {
        hahen_draw(e_this);
    }

    return 1;
}

/* 804695F8-80469658 001478 0060+00 2/2 0/0 0/0 .text            ep_switch_event_end__FP8ep_class */
static BOOL ep_switch_event_end(ep_class* e_this) {
    int rv = FALSE;
    if (dComIfGp_evmng_endCheck("SHOKUDAI_SWITCH") != 0) {
        dComIfGp_event_reset();
        rv = TRUE;
    }
    return rv;
}

/* 80469658-80469700 0014D8 00A8+00 1/1 0/0 0/0 .text            ep_switch_event_begin__FP8ep_class */
static BOOL ep_switch_event_begin(ep_class* e_this) {
    BOOL rv = 0;

    if (!e_this->eventInfo.checkCommandDemoAccrpt()) {
        fopAcM_orderOtherEvent(e_this, "SHOKUDAI_SWITCH", 0xffff, 1, 0);
    } else {
        e_this->eventInfo.onCondition(2);
        rv = dComIfGp_evmng_getMyStaffId("SHOKUDAI", 0, 0);
        if (rv == -1) {
           ep_switch_event_end(e_this);
        }
    }

    return rv;
}

/* 80469700-804697F4 001580 00F4+00 1/1 0/0 0/0 .text            ep_switch_event_move__FP8ep_class */
static int ep_switch_event_move(ep_class* e_this) {
    // NONMATCHING
    static char* actions[2] = {
        "WAIT",
        "FIRE",
    };

    int rv = 0;

    if (dComIfGp_evmng_getIsAddvance(e_this->field_0xa5c)) {
        rv = dComIfGp_evmng_getMyActIdx(e_this->field_0xa5c, actions, 2, 0, 0);
        switch (rv) {
            case 1:
                if (e_this->field_0xa5b == 0) {
                    mDoAud_seStart(Z2SE_OBJ_FIRE_IGNITION, &e_this->field_0x634, 0, 0);
                }
                break;
            default:
                rv = 0;
                dComIfGp_evmng_cutEnd(e_this->field_0xa5c);
        }
    }

    return rv;
}

// static inline bool dComIfGp_evmng_existence(char eventIdx) {
//     return g_dComIfG_gameInfo.play.getEvtManager().getEventData(
//         dComIfGp_evmng_getEventIdx(&eventIdx, -1)) != NULL;
// }

/* 804697F4-80469EDC 001674 06E8+00 1/1 0/0 0/0 .text            ep_move__FP8ep_class */
static void ep_move(ep_class* e_this) {
    // NONMATCHING
    static u16 l_particle_fire_A[2] = {
        0x0100, 0x8110,
    };
    static u16 l_particle_fire_B[2] = {
        0x0101, 0x8111
    };
    static u16 l_particle_kagerou[2] = {
        0x0103, 0x8112
    };

    cXyz local_1c = cXyz(e_this->field_0x634.x, e_this->field_0x634.y + -240.0f + 235.0f +15.0f, e_this->field_0x634.z);

    switch (e_this->field_0x5a4) {
        case 0:
            if (e_this->field_0x60d != 0) {
                cLib_addCalc0(&e_this->field_0x5b0, 0.5f, 0.05f);
                if (!e_this->mSph1.ChkTgHit() || 
                    (e_this->mSph1.GetTgHitObj()->ChkAtType(0) || e_this->mSph1.GetTgHitGObj())) {
                    if (e_this->mSph1.GetTgHitGObj()->GetAtMtrl() == 1) {
                        if (e_this->field_0x609 != 0xff) {
                            e_this->field_0x5ce = e_this->field_0x609 * 10 + 1;
                        }
                    }
                }

                if (dComIfGs_isSwitch(e_this->field_0x60d - 1, fopAcM_GetRoomNo(e_this))) {
                    if (e_this->field_0x60b == 0xff || 
                        !g_dComIfG_gameInfo.play.getEvtManager().getEventData(
                            dComIfGp_evmng_getEventIdx("SHOKUDAI_SWITCH", -1))) {
                        int iVar3 = ep_switch_event_begin(e_this);
                        e_this->field_0xa5c = iVar3;
                        if (iVar3) {
                            e_this->field_0x60d = 0;
                            if (e_this->field_0xa5c != -1) {
                                ep_switch_event_move(e_this);
                            }
                        }
                    } else {
                        if (e_this->field_0xa5b == 0) {
                            mDoAud_seStart(Z2SE_OBJ_FIRE_IGNITION, &e_this->field_0x634,
                                0, 0);
                        }
                        e_this->field_0x60d = 0;
                    }
                }
            } else {
                if (e_this->field_0x60b == -1 || e_this->field_0xa5c == -1) {
                    if (ep_switch_event_move(e_this)) {
                        e_this->field_0x5a4 = 3;
                        e_this->field_0x5b4 = e_this->scale.x;
                    }
                } else {
                    e_this->field_0x5a4 = 3;
                    e_this->field_0x5b4 = e_this->scale.x;
                }
            }
        case 3:
            e_this->field_0x5a4++;
        case 4:
            cLib_addCalc2(&e_this->field_0x5b0, e_this->field_0x5b4, 0.5f, 0.2f);
            if (e_this->field_0xa79 == 0) {
                if (e_this->field_0xa50 < 7) {
                    dComIfGp_particle_setSimple(l_particle_fire_A[e_this->field_0x60c],
                        &local_1c, 0xff, g_whiteColor, g_whiteColor, 
                        0, 0.0f);
                    dComIfGp_particle_setSimple(l_particle_fire_B[e_this->field_0x60c],
                        &local_1c, 0xff, g_whiteColor, g_whiteColor, 
                        0, 0.0f);

                    if (e_this->field_0xa50 == 0 && e_this->mSph1.ChkTgHit()) {
                        fopAc_ac_c* pfVar4 = dCc_GetAc(e_this->mSph1.GetTgHitObj()->GetAc());
                        e_this->field_0xa58 = cM_atan2s(e_this->current.pos.x - pfVar4->current.pos.x,
                            e_this->current.pos.z - pfVar4->current.pos.z);
                        e_this->field_0xa50 = 0x28;
                    }
                }

                dComIfGp_particle_setSimple(l_particle_kagerou[e_this->field_0x60c],
                    &local_1c, 0xff, g_whiteColor, g_whiteColor,
                    0, 0.0f);
            }

            if (e_this->field_0x5ce == 1 && e_this->field_0x60a != 0xff) {
                dComIfGs_offSwitch(e_this->field_0x60a, fopAcM_GetRoomNo(e_this));
            }

            if (e_this->field_0x60a != 0xff) {
                if (!dComIfGs_isSwitch(e_this->field_0x60a, fopAcM_GetRoomNo(e_this))) {
                    e_this->field_0x5a4 = 0;
                    if (e_this->field_0x60a != 0xff) {
                        e_this->field_0x60d = e_this->field_0x60a + 1;
                    }

                    if (e_this->field_0xa5b == 0) {
                        mDoAud_seStart(Z2SE_OBJ_FIRE_OFF, &e_this->field_0x634, 0, 0);
                        break;
                    }
                }
            }
            mDoAud_seStart(Z2SE_OBJ_FIRE_BURNING, &e_this->field_0x634, 0, 0);
            break;
        case 10:
            cLib_addCalc0(&e_this->field_0x5b0, 1.0f, 0.1f);
            if (e_this->field_0x5b0 < 0.05f) {
                if (e_this->mpModel) {
                    e_this->field_0x5a4 = 0;
                    if (e_this->field_0x60a != 0xff) {
                        dComIfGs_offSwitch(e_this->field_0x60a, fopAcM_GetRoomNo(e_this));
                        e_this->field_0x60d = e_this->field_0x60a + 1;
                    }
                } else {
                    fopAcM_delete(e_this);
                }
            }
            break;
    }

    e_this->mLightInf.mPosition = e_this->field_0x634;
    e_this->mLightInf.mColor.r = 0xaf;
    e_this->mLightInf.mColor.g = 0x5d;
    e_this->mLightInf.mColor.b = 0;
    e_this->mLightInf.mPow = e_this->field_0x5b0 * 500.0f;
    e_this->mLightInf.mFluctuation = 1.0f;
    e_this->scale.y = e_this->field_0x5b0;

    if (e_this->scale.y > 0.5f) {
        e_this->mSph1.OnAtSetBit();
    } else {
        e_this->mSph1.OffAtSetBit();
    }

    e_this->mSph1.SetC(cXyz(e_this->field_0x634.x, e_this->field_0x634.y + 30.0f, e_this->field_0x634.z));
    dComIfG_Ccsp()->Set(&e_this->mSph1);

    if (e_this->field_0xa50 != 0) {
        if (e_this->field_0x610 != NULL) {
            f32 fVar1;
            if (e_this->field_0xa50 > 10) {
                fVar1 = 4.0f;
            } else {
                fVar1 = 0.0f;
            }

            cLib_addCalc2(&e_this->field_0xa54, fVar1, 1.0f, 0.5f);
            cMtx_YrotS(*calc_mtx, e_this->field_0xa58);

            cXyz local_34(0.0f, 1.0f, e_this->field_0xa54);
            cXyz cStack_40;
            MtxPosition(&local_34, &cStack_40);

            JGeometry::TVec3<float> aTStack_88;
            aTStack_88 = cStack_40;
            JPABaseEmitter* emitter = (JPABaseEmitter*)e_this->field_0x610;
            emitter->setDirection(aTStack_88);

            if (e_this->field_0xa50 == 1) {
                emitter = (JPABaseEmitter*)e_this->field_0x610;
                emitter->becomeInvalidEmitter();
                e_this->field_0x610 = NULL;
            }
        }

        e_this->field_0xa50--;
    }
    return;
}

/* 80469EDC-8046A0A8 001D5C 01CC+00 1/1 0/0 0/0 .text            daEp_set_mtx__FP8ep_class */
static void daEp_set_mtx(ep_class* e_this) {
    if (e_this->mpModel) {
        f32 fVar1 = 70.0f;
        if ((e_this->field_0xa5a & 1) != 0) {
            fVar1 = 140.0f;
        }

        MtxTrans(e_this->current.pos.x, e_this->current.pos.y, e_this->current.pos.z, 0);
        cMtx_YrotM(*calc_mtx, e_this->current.angle.y);
        MtxTrans(0.0f, fVar1, 0.0f, 1);
        cMtx_XrotM(*calc_mtx, e_this->shape_angle.x);
        MtxTrans(0.0f, -fVar1, 0.0f, 1);
        e_this->mpModel->setBaseTRMtx(*calc_mtx);

        e_this->field_0x5dc = e_this->field_0x634;
        e_this->field_0x5f4 = e_this->field_0x5e8;
        
        cXyz local_28;
        local_28.z = 0.0f;
        local_28.x = 0.0f;
        if ((e_this->field_0xa5a & 1) != 0) {
            local_28.y = 280.0f;
        } else {
            local_28.y = 140.0f;
        }
        MtxPosition(&local_28, &e_this->field_0x634);

        e_this->eyePos = e_this->field_0x634;
        e_this->eyePos.y += 20.0f;
        e_this->attention_info.position = e_this->eyePos;
        e_this->attention_info.position.y += 30.0f;

        local_28.y = 0.0f;
        MtxPosition(&local_28, &e_this->field_0x5e8);
    } else {
        e_this->field_0x634 = e_this->current.pos;
    }
}

/* 8046A0A8-8046A6D4 001F28 062C+00 1/0 0/0 0/0 .text            daEp_Execute__FP8ep_class */
static int daEp_Execute(ep_class* e_this) {
    // NONMATCHING
    static u16 eff_name[3] = {
        0x8340, 0x8341, 0x8342,
    };

    e_this->field_0x601 = 0;
    e_this->field_0x602 = 0;
    if (e_this->field_0x640) {
        e_this->field_0x640--;
    }

    if (e_this->mpModel) {
        cXyz local_78 = e_this->current.pos;
        if (e_this->field_0x640 != 0) {
            local_78.y -= 8000.0f;
        }

        e_this->mCyl.SetC(e_this->current.pos);
        dComIfG_Ccsp()->Set(&e_this->mCyl);

        if (e_this->field_0x640 == 0 && e_this->mCyl.ChkTgHit()) {
            e_this->field_0x640 = 10;
            daObj::HitSeStart(&e_this->current.pos, fopAcM_GetRoomNo(e_this), &e_this->mCyl, 11);
        }

        fopAcM_rollPlayerCrash(e_this, 35.0f, 0, 200.0f, -100.0f, 0, -0.8999999761581421);
        mDoLib_clipper::changeFar(1000000.0f);
        e_this->field_0x602 = fopAcM_checkCullingBox(e_this->mpModel->mBaseTransformMtx, -30.0f, 0.0f, -30.0f, 30.0f, 180.0f, 30.0f);
        mDoLib_clipper::resetFar();
    }

    for (int i = 0; i < 3; i++) {
        if (e_this->field_0x5c8[i]) {
            e_this->field_0x5c8[i]--;
        }
    }

    if (e_this->field_0x5ce && e_this->field_0x5ce < 10000) {
        e_this->field_0x5ce--;
    }

    if (!dComIfGp_event_runCheck() && e_this->field_0xa5b != 0) {
        e_this->field_0xa5b--;
    }

    if (!e_this->field_0x5c8[0]) {
        e_this->field_0x5c8[0] = cM_rndF(5.0f);
        e_this->field_0x5c4 = cM_rndF(4.0f) + 8.0f;
    }

    if (!e_this->field_0x5c8[1]) {
        if (e_this->field_0xa50) {
            e_this->field_0x5c8[1] = cM_rndF(5.0f);
            e_this->field_0x5bc = cM_rndF(0.2f) + 0.55f;
        } else {
            e_this->field_0x5c8[1] = cM_rndF(6.0f) + 3.0f;
            e_this->field_0x5bc = cM_rndF(0.075f) + 0.75f;
        }
    }

    cLib_addCalc2(&e_this->field_0x5c0, e_this->field_0x5c4, 1.0f, 1.0f);
    cLib_addCalc2(&e_this->field_0x5b8, e_this->field_0x5bc, 0.4f, 0.04f);

    mDoLib_clipper::changeFar(1000000.0f);
    e_this->field_0x601 = fopAcM_checkCullingBox(e_this->field_0x570, -160.0f, -160.0f, -160.0f, 160.0f, 160.0f, 160.0f);
    mDoLib_clipper::resetFar();

    if (e_this->field_0xa79 == 0) {
        ep_move(e_this);
        if (e_this->mCyl.ChkTgHit()) {
            e_this->mAtInfo.mpCollider = e_this->mCyl.GetTgHitObj();
            if (e_this->mAtInfo.mpCollider) {
                at_power_check(&e_this->mAtInfo);
                if (e_this->mAtInfo.mpCollider->ChkAtType(0x10040) || e_this->mAtInfo.mAttackPower >= 10) {
                    e_this->field_0xa79 = 1;
                    if (e_this->mAtInfo.mHitType == 1) {
                        dScnPly_c::setPauseTimer(2);
                    }

                    mDoAud_seStart(JA_SE_OBJ_BREAK_WOOD_L, &e_this->field_0x634, 0, 0);
                    dKy_plight_cut(&e_this->mLightInf);
                }
            }
        }
    }

    fopAcM_OffStatus(e_this, 0);
    e_this->attention_info.flags = 0;
    cLib_offBit<u32>(e_this->attention_info.flags, 4);

    if (e_this->field_0xa79 == 1) {
        e_this->field_0xa79 = 2;
        e_this->mpModel = NULL;
        ep_hahen_s* epHahenS = e_this->mHahen;
        
        for (int i = 0; i < 6; i++) {
            epHahenS[i].field_0x97 = 1;
            epHahenS[i].field_0x4 = e_this->home.pos;
            if (i < 3) {
                epHahenS[i].field_0x4.y += 40.0f;
                epHahenS[i].field_0x28.z = 0x363c;
            } else {
                epHahenS[i].field_0x4.y += 110.0f;
                epHahenS[i].field_0x28.z = -0x363c;
            }
            epHahenS[i].field_0x28.y = (i * 0x5555) + 1000;

            cMtx_YrotS(*calc_mtx, epHahenS[i].field_0x28.y);
            cXyz local_84(0.0f, 0.0f, 10.0f);
            cXyz cStack_90;
            MtxPosition(&local_84, &cStack_90);
            epHahenS[i].field_0x4 += cStack_90;

            epHahenS[i].field_0x90 = 3000.0f + cM_rndF(1000.0f);
            epHahenS[i].field_0x92 = cM_rndFX(2000.0f);
            epHahenS[i].field_0x1c.y = 20.0f + cM_rndF(15.0f);
            epHahenS[i].field_0x1c.x = cM_rndFX(15.0f);
            epHahenS[i].field_0x1c.z = cM_rndFX(15.0f);
            epHahenS[i].field_0x96 = 0;
        }

        cXyz local_9c = e_this->field_0x634;
        local_9c.y += 20.0f;

        for (int i = 0; i < 3; i++) {
            dComIfGp_particle_set(eff_name[i], &local_9c, NULL, NULL);
        }
    }

    if (e_this->field_0xa79) {
        hahen_move(e_this);
    }

    return 1;
}

/* 8046A6D4-8046A6DC 002554 0008+00 1/0 0/0 0/0 .text            daEp_IsDelete__FP8ep_class */
static bool daEp_IsDelete(ep_class* e_this) {
    return true;
}

/* 8046A6DC-8046A724 00255C 0048+00 1/0 0/0 0/0 .text            daEp_Delete__FP8ep_class */
static int daEp_Delete(ep_class* e_this) {
    dComIfG_resDelete(&e_this->mPhase, "Ep");
    dKy_plight_cut(&e_this->mLightInf);
    return 1;
}

/* 8046B13C-8046B15C 000044 0020+00 1/1 0/0 0/0 .data            model_d */
static int model_d[8] = {
    3,4, 5, 6, 6, 6, 6, 6,
};

/* 8046A724-8046A858 0025A4 0134+00 1/1 0/0 0/0 .text            daEp_CreateHeap__FP10fopAc_ac_c */
static int daEp_CreateHeap(fopAc_ac_c* a_this) {
    // NONMATCHING
    int rv;
    ep_class* e_this = (ep_class*)a_this;

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("Ep", model_d[e_this->field_0xa5a]);
    JUT_ASSERT(0x855, modelData != 0);

    e_this->mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (e_this->mpModel == NULL) {
        rv = 0;
    } else {
        MtxScale(0.0f, 0.0f, 0.0f, 0);
        e_this->mpModel->setBaseTRMtx(*calc_mtx);

        modelData = (J3DModelData*)dComIfG_getObjectRes("Ep", 7);
        JUT_ASSERT(0x884, modelData != 0);

        for (int i = 0; i < 6; i++) {
            e_this->mHahen[i].mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
            if (e_this->mHahen[i].mpModel == NULL) {
                return 0;
            }
        }
        rv = 1;
    }

    return rv;
}

/* 8046A858-8046A8D4 0026D8 007C+00 1/1 0/0 0/0 .text            daEp_CreateInit__FP10fopAc_ac_c */
static void daEp_CreateInit(fopAc_ac_c* a_this) {
    ep_class* e_this = (ep_class*)a_this;

    e_this->field_0x5a4 = 0;
    e_this->field_0x60d = 0;
    e_this->cullMtx = e_this->field_0x570;
    fopAcM_SetMin(e_this, -160.0f, -160.0f, -160.0f);
    fopAcM_SetMax(e_this, 160.0f, 160.0f, 160.0f);
    daEp_set_mtx(e_this);
    e_this->field_0x601 = 0;
    e_this->field_0x602 = 0;
}

/* 8046A8D4-8046AB2C 002754 0258+00 1/0 0/0 0/0 .text            daEp_Create__FP10fopAc_ac_c */
static int daEp_Create(fopAc_ac_c* a_this) {
    static dCcD_SrcSph sph_src = {
        {
            {0x0, {{0x0, 0x0, 0x10}, {0x20, 0x11}, 0x0}}, // mObj
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x1, 0x0}, // mGObjTg
            {0x0}, // mGObjCo
        }, // mObjInf
        {
            {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
        } // mSphAttr
    };

    static dCcD_SrcCyl co_cyl_src = {
        {
            {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdbf, 0x1f}, 0x79}}, // mObj
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
            {0x0}, // mGObjCo
        }, // mObjInf
        {
            {0.0f, 0.0f, 0.0f}, // mCenter
            35.0f, // mRadius
            120.0f // mHeight
        } // mCyl
    };

    static dCcD_SrcSph at_sph_src = {
        {
            {0x0, {{AT_TYPE_THROW_OBJ, 0x0, 0x1f}, {0x0, 0x0}, 0x0}}, // mObj
            {dCcD_SE_THROW_OBJ, 0x1, 0x0, 0x0, 0x1}, // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
            {0x0}, // mGObjCo
        }, // mObjInf
        {
            {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
        } // mSphAttr
    };

    int rv;
    ep_class* i_this = (ep_class*)a_this;
    fopAcM_SetupActor(a_this, ep_class);

    rv = dComIfG_resLoad(&i_this->mPhase, "Ep");
    if (rv == cPhs_COMPLEATE_e) {
        if (fopAcM_GetParam(i_this) & 8) {
            i_this->field_0x60c = fopAcM_GetParam(i_this) & 7;
            i_this->field_0x60c += 1;
            i_this->field_0x60c &= 1;
            i_this->field_0xa5a = -1;
        } else {
            i_this->field_0xa5a = fopAcM_GetParam(i_this) & 7;
            i_this->field_0xa5a += 1;
            i_this->field_0xa5a &= 7;
        }
    
        i_this->field_0x609 = fopAcM_GetParam(i_this) >> 8;
        i_this->field_0x60b = fopAcM_GetParam(i_this) >> 16;
        i_this->field_0x60a = fopAcM_GetParam(i_this) >> 24;

        i_this->mStts.Init(0xff, 0xff, i_this);
        i_this->mSph1.Set(sph_src);
        i_this->mSph1.SetStts(&i_this->mStts);

        if (i_this->field_0x60c == 1) {
            i_this->mSph1.SetR(70.0f);
        }

        if (i_this->field_0xa5a < 0) {
            #ifdef DEBUG
            OSReport("   /////   EP PARAM %x\n");
            #endif
        } else {
            if (!fopAcM_entrySolidHeap(i_this, daEp_CreateHeap, 0x4b000)) {
                return cPhs_ERROR_e;
            }

            i_this->mCyl.Set(co_cyl_src);
            i_this->mCyl.SetStts(&i_this->mStts);
            i_this->mCyl.OnTgNoHitMark();

            if ((i_this->field_0xa5a & 1) != 0) {
                i_this->mCyl.SetH(240.0f);
            }
        }

        daEp_CreateInit(i_this);
        if (i_this->field_0x60a != 0xff) {
            if (!dComIfGs_isSwitch(i_this->field_0x60a, fopAcM_GetRoomNo(i_this))) {
                i_this->field_0x60d = i_this->field_0x60a + 1;
            }
        }

        i_this->field_0x5ce = 20000;
        dKy_plight_set(&i_this->mLightInf);
        i_this->field_0xe6c = cM_rndF(255.0f);
    }

    i_this->field_0xa5c = -1;
    i_this->attention_info.distances[4] = 7;
    fopAcM_OnCarryType(i_this, fopAcM_CARRY_UNK_30);

    i_this->mSph2.Set(at_sph_src);
    i_this->mSph2.SetStts(&i_this->mStts);
    i_this->mSph2.OffAtVsPlayerBit();
    i_this->field_0xa5b = 60;

    return rv;
}

/* 8046B220-8046B240 -00001 0020+00 1/0 0/0 0/0 .data            l_daEp_Method */
static actor_method_class l_daEp_Method = {
    (process_method_func)daEp_Create,
    (process_method_func)daEp_Delete,
    (process_method_func)daEp_Execute,
    (process_method_func)daEp_IsDelete,
    (process_method_func)daEp_Draw,
};

/* 8046B240-8046B270 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_EP */
extern actor_process_profile_definition g_profile_EP = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_EP,
    &g_fpcLf_Method.base,
    sizeof(ep_class),
    0,
    0,
    &g_fopAc_Method.base,
    691,
    &l_daEp_Method,
    0x10244000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e
};
