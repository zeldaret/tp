/**
 * d_a_e_arrow.cpp
 * Enemy Arrow
 */

#include "rel/d/a/e/d_a_e_arrow/d_a_e_arrow.h"
#include "SSystem/SComponent/c_math.h"
#include "d/a/d_a_alink.h"
#include "d/d_bomb.h"
#include "d/d_item.h"
#include "d/meter/d_meter2.h"
#include "d/msg/d_msg_object.h"
#include "d/s/d_s_play.h"

/* 8067C7CC-8067C874 0000EC 00A8+00 1/0 0/0 0/0 .text            daE_ARROW_Draw__FP13e_arrow_class
 */
static int daE_ARROW_Draw(e_arrow_class* i_this) {
    if (i_this->field_0xa14) {
        return 1;
    }

    if (fopAcM_GetParam(i_this) & 0x80000000) {
        g_env_light.settingTevStruct(2, &i_this->current.pos, &i_this->tevStr);
    } else {
        g_env_light.settingTevStruct(0, &i_this->current.pos, &i_this->tevStr);
    }

    if (i_this->mpModel != NULL) {
        g_env_light.setLightTevColorType_MAJI(i_this->mpModel, &i_this->tevStr);
        mDoExt_modelUpdateDL(i_this->mpModel);
    }

    return 1;
}

static u8 const lit_3983[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8067C874-8067CB68 000194 02F4+00 1/1 0/0 0/0 .text            fire_eff_set__FP13e_arrow_class */
static void fire_eff_set(e_arrow_class* i_this) {
    cXyz sp38;
    cXyz sp44;

    cMtx_YrotS(*calc_mtx, i_this->shape_angle.y);
    cMtx_XrotM(*calc_mtx, i_this->shape_angle.x);

    sp38.x = 0.0f;
    sp38.y = 0.0f;

    if (i_this->mAction == ACTION_ARROW_BOUND) {
        sp38.z = TREG_F(14) + 28.0f;
    } else {
        sp38.z = TREG_F(14) + 20.0f;
    }

    MtxPosition(&sp38, &sp44);
    sp44 += i_this->current.pos;

    int emitter_num;
    u16 particle_names[2];
    if (i_this->mArrowType == ARROW_TYPE_BOMB) {
        emitter_num = 2;
        particle_names[0] = 0x86A5;
        particle_names[1] = 0x86A6;
    } else {
        emitter_num = 1;
        particle_names[0] = 0x8113;
    }

    i_this->field_0x5d8.x = i_this->speed.x + i_this->field_0x5d0;
    i_this->field_0x5d8.y = i_this->speed.y;
    i_this->field_0x5d8.z = i_this->speed.z + i_this->field_0x5d4;

    if (i_this->mArrowType == ARROW_TYPE_FIRE) {
        i_this->field_0x5d8 *= 0.9f;
    } else {
        i_this->field_0x5d8 *= 0.8f;
    }

    for (int i = 0; i < emitter_num; i++) {
        i_this->mFireEMKeys[i] = dComIfGp_particle_set(i_this->mFireEMKeys[i], particle_names[i],
                                                       &sp44, &i_this->shape_angle, NULL);

        if (i == 0) {
            JPABaseEmitter* emitter_p = dComIfGp_particle_getEmitter(i_this->mFireEMKeys[i]);
            if (emitter_p != NULL) {
                if (i_this->field_0x5d8.abs() > 1.0f) {
                    emitter_p->setParticleCallBackPtr(dPa_control_c::getParticleTracePCB());
                    emitter_p->setUserWork((u32)&i_this->field_0x5d8);
                } else {
                    emitter_p->setParticleCallBackPtr(NULL);
                }
            }
        }
    }
}

// Unreferenced BSS
/* 8067EB18-8067EB1C 000008 0001+03 2/2 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 8067EB1C-8067EB20 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 8067EB20-8067EB24 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 8067EB24-8067EB28 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 8067EB28-8067EB2C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 8067EB2C-8067EB30 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 8067EB30-8067EB34 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 8067EB34-8067EB38 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 8067EB38-8067EB3C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 8067EB3C-8067EB40 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 8067EB40-8067EB44 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 8067EB44-8067EB48 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 8067EB48-8067EB4C 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 8067EB4C-8067EB50 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 8067EB50-8067EB54 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 8067EB54-8067EB58 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop
// end unreferenced BSS

/* 8067CBA4-8067D21C 0004C4 0678+00 1/1 0/0 0/0 .text            hit_check__FP13e_arrow_class */
static void hit_check(e_arrow_class* i_this) {
    dBgS_ObjGndChk_Spl ground_chk;

    cXyz gnd_chk_pos(i_this->current.pos);
    gnd_chk_pos.y += 200.0f;
    ground_chk.SetPos(&gnd_chk_pos);

    if (i_this->current.pos.y <= dComIfG_Bgsp().GroundCross(&ground_chk)) {
        i_this->speedF = 0.0f;
        i_this->speed.set(0.0f, 0.0f, 0.0f);
        fopAcM_delete(i_this);
        return;
    }

    dBgS_ArrowLinChk line_chk;
    cXyz line_chk_start(i_this->current.pos);
    for (int i = 0; i < 2; i++) {
        line_chk_start -= i_this->speed;
    }

    line_chk.Set(&line_chk_start, &i_this->current.pos, i_this);

    if (dComIfG_Bgsp().LineCross(&line_chk)) {
        i_this->current.pos = line_chk.i_GetCross();
        dComIfG_Bgsp().ArrowStickCallBack(line_chk, i_this, i_this->current.pos);

        if (i_this->mFlags & 0x10) {
            i_this->mAction = ACTION_ARROW_FIRE;
            i_this->current.pos.x = -93652.0f;
            i_this->current.pos.y = -5975.0f;
        } else {
            i_this->mAction = ACTION_ARROW_BG;
            i_this->current.pos -= i_this->speed * 0.35f;
        }

        i_this->mMode = 0;
        i_this->speedF = 0.0f;
        i_this->speed.set(0.0f, 0.0f, 0.0f);
        i_this->field_0x5d4 = 0.0f;
        i_this->field_0x5d0 = 0.0f;

        dKy_Sound_set(i_this->current.pos, 3, fopAcM_GetID(i_this), 10);

        int poly_att0 = dComIfG_Bgsp().GetPolyAtt0(line_chk);
        dKy_pol_sound_get(&line_chk);

        i_this->field_0x5ce = 5;
        if (poly_att0 == 5) {
            i_this->field_0x5ce = 20;
        }

        i_this->mSound.startCollisionSE(Z2SE_HIT_ARROW_STICK, dKy_pol_sound_get(&line_chk), NULL);

        cXyz sp114(0.3f, 0.3f, 0.3f);
        i_this->mStickSmokeEMKey = dComIfGp_particle_set(
            i_this->mStickSmokeEMKey, dPa_name::ZI_J_dashSmoke_a_e, &i_this->current.pos,
            &i_this->tevStr, &i_this->shape_angle, &sp114, 0xFF, NULL, -1, NULL, NULL, NULL);
    } else {
        cXyz sp120 = i_this->current.pos + (i_this->speed * 0.5f);
        i_this->mCcTgSph.SetC(sp120);
        dComIfG_Ccsp()->Set(&i_this->mCcTgSph);

        if (i_this->mCcAtSph.ChkAtShieldHit() && i_this->mCcAtSph.GetAtHitAc() != NULL &&
            fopAcM_GetName(i_this->mCcAtSph.GetAtHitAc()) == PROC_ALINK &&
            daAlink_getAlinkActorClass()->checkWoodShieldEquipNotIronBall())
        {
            i_this->mAction = ACTION_ARROW_SHIELD;
            i_this->mMode = 0;
            i_this->speedF = 0.0f;

            BOOL var_r26;
            if (i_this->mArrowType == ARROW_TYPE_FIRE) {
                var_r26 = 1;
                JPABaseEmitter* emitter_p = dComIfGp_particle_getEmitter(i_this->mFireEMKeys[0]);
                if (emitter_p != NULL) {
                    emitter_p->deleteAllParticle();
                    dComIfGp_particle_levelEmitterOnEventMove(i_this->mFireEMKeys[0]);
                }
            } else {
                var_r26 = 0;
            }

            i_this->mArrowType = ARROW_TYPE_NORMAL;
            i_this->field_0x5ce = 0;

            daAlink_getAlinkActorClass()->setArrowShieldActor(i_this, var_r26);
            daAlink_getAlinkActorClass()->setArrowShieldPos(
                &i_this->current.pos, &i_this->shape_angle, &i_this->field_0x9d4,
                &i_this->field_0x9c8);

            static cXyz localOffset(0.0f, 0.0f, -30.0f);
            mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y,
                                   i_this->current.pos.z);
            mDoMtx_stack_c::ZXYrotM(i_this->shape_angle.x, i_this->shape_angle.y, 0);
            mDoMtx_stack_c::multVec(&localOffset, &i_this->current.pos);
        } else if (i_this->mCcTgSph.ChkTgHit() || i_this->mCcAtSph.ChkAtShieldHit()) {
            i_this->mAction = ACTION_ARROW_SPIN;
            i_this->mMode = 0;
            i_this->current.angle.x = cM_rndFX(2000.0f) - 10000.0f;
            i_this->speedF *= 0.3f;

            if (i_this->mCcTgSph.ChkTgHit()) {
                i_this->current.angle.y += (s16)(cM_rndFX(8000.0f) + 32768.0f);
                i_this->mSound.startSound(Z2SE_COL_FLIP_ARROW, 0, -1);
            } else {
                i_this->current.angle.y += (s16)(cM_rndFX(4000.0f) + 32768.0f);
            }

            dKy_Sound_set(i_this->current.pos, 3, fopAcM_GetID(i_this), 10);
        } else {
            i_this->mCcAtSph.MoveCAt(sp120);
            dComIfG_Ccsp()->Set(&i_this->mCcAtSph);

            if (i_this->mCcAtSph.ChkAtHit()) {
                cXyz sp12C(0.4f, 0.4f, 0.4f);
                dComIfGp_setHitMark(1, i_this, &i_this->current.pos, &i_this->shape_angle, &sp12C,
                                      0);

                fopAcM_delete(i_this);

                if (i_this->mArrowType == ARROW_TYPE_FIRE) {
                    i_this->mArrowType = ARROW_TYPE_NORMAL;

                    JPABaseEmitter* emitter_p = dComIfGp_particle_getEmitter(i_this->field_0x9ec);
                    if (emitter_p != NULL) {
                        emitter_p->stopDrawParticle();
                    }
                }
            }
        }
    }
}

/* 8067D21C-8067D40C 000B3C 01F0+00 1/1 0/0 0/0 .text            e_arrow_shot__FP13e_arrow_class */
static void e_arrow_shot(e_arrow_class* i_this) {
    switch (i_this->mMode) {
    case 0:
        i_this->speedF = 100.0f;
        i_this->mMode = 1;

        if (i_this->mFlags & 0x10) {
            i_this->mTimers[0] = 10000;
        } else {
            i_this->mTimers[0] = 100;
        }

        i_this->shape_angle.z = cM_rndF(0xFFFF);

        fopAc_ac_c* parent_p = fopAcM_SearchByID(i_this->parentActorID);
        if (parent_p != NULL) {
            i_this->field_0x5d0 = parent_p->speed.x;
            i_this->field_0x5d4 = parent_p->speed.z;
        }
    case 1:
        if (i_this->mFlags & 0x20) {
            fopAc_ac_c* coach_p = fopAcM_SearchByName(PROC_NPC_COACH);

            if (coach_p != NULL) {
                cXyz sp30;
                sp30 = coach_p->eyePos - i_this->current.pos;

                s16 temp_r4 = cM_atan2s(sp30.x, sp30.z);
                s16 temp_r0 = temp_r4 - i_this->current.angle.y;
                if (temp_r0 < 0x1000 && temp_r0 > -0x1000) {
                    cLib_addCalcAngleS2(&i_this->current.angle.y, temp_r4, 2, 25);
                    f32 sq = JMAFastSqrt(sp30.x * sp30.x + sp30.z * sp30.z);

                    cLib_addCalcAngleS2(&i_this->current.angle.x, -cM_atan2s(sp30.y, sq), 2, 25);
                } else {
                    i_this->current.angle.x += 65;
                }
            } else {
                i_this->current.angle.x += 65;
            }
        } else {
            i_this->current.angle.x += 65;
        }

        i_this->shape_angle.y = i_this->current.angle.y;
        i_this->shape_angle.x = i_this->current.angle.x;

        if (i_this->mTimers[0] == 0) {
            fopAcM_delete(i_this);
        }
    }
}

/* 8067D40C-8067D530 000D2C 0124+00 1/1 0/0 0/0 .text            e_arrow_bg__FP13e_arrow_class */
static void e_arrow_bg(e_arrow_class* i_this) {
    switch (i_this->mMode) {
    case 0:
        i_this->mMode = 1;
        i_this->mTimers[0] = 100;
    case 1:
        if (checkItemGet(BOW, 1) && fopAcM_searchPlayerDistance(i_this) < 30.0f) {
            dComIfGp_setItemArrowNumCount(1);
            fopAcM_createItemForSimpleDemo(&i_this->current.pos, ARROW_1, -1, NULL, NULL, 0.0f,
                                           0.0f);
            mDoAud_seStart(Z2SE_CONSUMP_ITEM_GET, NULL, 0, 0);

            i_this->mTimers[0] = 0;
        }

        if (i_this->mTimers[0] == 0) {
            fopAcM_delete(i_this);
        }
    }
}

/* 8067D530-8067D5FC 000E50 00CC+00 1/1 0/0 0/0 .text            e_arrow_spin__FP13e_arrow_class */
static void e_arrow_spin(e_arrow_class* i_this) {
    switch (i_this->mMode) {
    case 0:
        i_this->mTimers[0] = 25;

        if (cM_rndF(1.0f) > 0.5f) {
            i_this->mMode = 1;
        } else {
            i_this->mMode = 2;
        }
    case 1:
        i_this->shape_angle.y -= 0x400;
    case 2:
        i_this->shape_angle.y += 0x200;
        i_this->shape_angle.x -= 0x1200;
        i_this->current.angle.x += 700;

        if (i_this->mTimers[0] == 0) {
            fopAcM_delete(i_this);
        }
    }
}

/* 8067D5FC-8067D68C 000F1C 0090+00 1/1 0/0 0/0 .text            s_limit_sub__FPvPv */
static void* s_limit_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) != NULL && i_actor != i_data &&
        fopAcM_GetName(i_actor) == PROC_E_ARROW &&
        static_cast<e_arrow_class*>(i_actor)->mAction == ACTION_ARROW_FIRE &&
        fabsf(static_cast<e_arrow_class*>(i_actor)->field_0xa00.z -
              static_cast<e_arrow_class*>(i_data)->field_0xa00.z) < 300.0f)
    {
        return i_actor;
    }

    return NULL;
}

/* 8067E978-8067E984 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8067E984-8067E998 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 8067D68C-8067DA70 000FAC 03E4+00 1/1 0/0 0/0 .text e_arrow_demo_fire__FP13e_arrow_class */
static void e_arrow_demo_fire(e_arrow_class* i_this) {
    cXyz sp9C;
    csXyz spB0;

    switch (i_this->mMode) {
    case 0:
        i_this->mMode = 1;
        i_this->field_0xa00 = i_this->current.pos;

        if (i_this->field_0xa00.z > 39000.0f) {
            i_this->field_0xa0c = -0x8000;
        } else {
            i_this->field_0xa0c = 0;
        }

        i_this->mTimers[0] = 20;
    case 1:
        spB0.set(0, i_this->field_0xa0c, 0);

        static u16 fire_name[] = {0x84EE, 0x84EF, 0x84F0, 0x84F1};

        for (int i = 0; i < 4; i++) {
            i_this->field_0x9f0[i] = dComIfGp_particle_set(i_this->field_0x9f0[i], fire_name[i],
                                                           &i_this->field_0xa00, &spB0, NULL);

            dComIfGp_particle_levelEmitterOnEventMove(i_this->field_0x9f0[i]);
        }

        if (i_this->mTimers[0] == 0) {
            daPy_py_c* player_p = (daPy_py_c*)dComIfGp_getPlayer(0);

            f32 var_f31;
            if (i_this->field_0xa0c == 0) {
                var_f31 = 41200.0f;
                sp9C.z = -700.0f;
            } else {
                var_f31 = 36800.0f;
                sp9C.z = 700.0f;
            }

            if (!player_p->checkWolfDig() &&
                (!dComIfGp_event_runCheck() ||
                 fopAcM_getTalkEventPartner(daPy_getLinkPlayerActorClass()) !=
                     (fopAc_ac_c*)daPy_py_c::getMidnaActor()))
            {
                if (!dMsgObject_isTalkNowCheck()) {
                    cLib_addCalc2(&i_this->field_0xa00.z, var_f31, 0.1f, i_this->field_0xa10);
                }
            }

            if (i_this->field_0xa0c == 0 && fpcM_Search(s_limit_sub, i_this) != NULL) {
                dBgS_ObjGndChk gnd_chk;
                sp9C = player_p->current.pos;
                sp9C.y += 200.0f;
                gnd_chk.SetPos(&sp9C);

                if (dComIfG_Bgsp().GroundCross(&gnd_chk) > -10000.0f) {
                    i_this->mMode = 2;
                    return;
                }
            }

            cLib_addCalc2(&i_this->field_0xa10, 10.0f, 1.0f, 1.0f);

            if (!dComIfGp_event_runCheck()) {
                sp9C.y = 0.0f;
                sp9C.x = 0.0f;

                i_this->mCcFireEffSph.SetC(i_this->field_0xa00 + sp9C);
                i_this->mCcFireEffSph.SetR(800.0f);
                dComIfG_Ccsp()->Set(&i_this->mCcFireEffSph);
            }

            i_this->mpModel = NULL;
        }

        Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_STRAWFENCE_BURNING, &i_this->field_0xa00, 0, 0, 1.0f,
                                      1.0f, -1.0f, -1.0f, 0);
        break;
    case 2:
        dMeter2Info_getMeterClass()->setLifeZero();
        break;
    }
}

/* 8067DAE8-8067DB5C 001408 0074+00 1/1 0/0 0/0 .text
 * atHit_CB__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void atHit_CB(fopAc_ac_c* i_atActor, dCcD_GObjInf* i_atObjInf, fopAc_ac_c* i_tgActor,
                     dCcD_GObjInf* i_tgObjInf) {
    if (i_tgActor != NULL && fopAcM_GetName(i_tgActor) == PROC_ALINK) {
        if (daAlink_getAlinkActorClass()->checkWoodShieldEquipNotIronBall()) {
            daAlink_getAlinkActorClass()->getArrowShieldOffset(
                &i_atActor->current.pos, &i_atActor->shape_angle,
                &static_cast<e_arrow_class*>(i_atActor)->field_0x9d4,
                &static_cast<e_arrow_class*>(i_atActor)->field_0x9c8);
        }
    }
}

/* 8067DB5C-8067DC58 00147C 00FC+00 1/1 0/0 0/0 .text            e_arrow_shield__FP13e_arrow_class
 */
static void e_arrow_shield(e_arrow_class* i_this) {
    e_arrow_class* a_this = (e_arrow_class*)i_this;  // necessary for reg alloc
    daAlink_getAlinkActorClass()->setArrowShieldPos(&a_this->current.pos, &a_this->shape_angle,
                                                    &i_this->field_0x9d4, &i_this->field_0x9c8);

    static cXyz localOffset(0.0f, 0.0f, -30.0f);
    mDoMtx_stack_c::transS(a_this->current.pos.x, a_this->current.pos.y, a_this->current.pos.z);
    mDoMtx_stack_c::ZXYrotM(a_this->shape_angle.x, a_this->shape_angle.y, 0);
    mDoMtx_stack_c::multVec(&localOffset, &a_this->current.pos);

    if (daAlink_getAlinkActorClass()->checkStickArrowReset()) {
        fopAcM_delete(a_this);
    }
}

/* 8067DC58-8067DE54 001578 01FC+00 1/1 0/0 0/0 .text e_arrow_demo_bound__FP13e_arrow_class */
static void e_arrow_demo_bound(e_arrow_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    fopAc_ac_c* const player_p = dComIfGp_getPlayer(0);

    if (i_this->mMode == 0) {
        i_this->field_0xa0c = 12000;
        i_this->field_0xa10 = 2500.0f;
        i_this->mMode = 1;
        i_this->mTimers[0] = 80;
    }

    if (i_this->mTimers[0] == 0) {
        fopAcM_delete(a_this);
    }

    if (i_this->field_0xa0c > 0) {
        a_this->shape_angle.x += (s16)i_this->field_0xa10;

        if (a_this->shape_angle.x > i_this->field_0xa0c ||
            a_this->shape_angle.x < (s16)-i_this->field_0xa0c)
        {
            if (i_this->field_0xa0c > 1000) {
                fopAcM_seStart(a_this, Z2SE_OBJ_KEY_BOUND, i_this->field_0xa0c * 0.01f);
            }

            i_this->field_0xa0c /= 2;

            if (a_this->shape_angle.x > 0) {
                a_this->shape_angle.x = i_this->field_0xa0c;
            } else {
                a_this->shape_angle.x = -i_this->field_0xa0c;
            }

            i_this->field_0xa10 *= -1.0f;
        }
    }

    a_this->shape_angle.y = player_p->shape_angle.y - 0x2000;
    a_this->current.pos.x = player_p->current.pos.x - 60.0f;
    a_this->current.pos.y =
        player_p->current.pos.y + 5.0f + fabsf(cM_ssin(a_this->shape_angle.x) * 50.0f);
    a_this->current.pos.z = player_p->current.pos.z + 10.0f + 25.0f;
}

/* 8067DE54-8067E0BC 001774 0268+00 1/1 0/0 0/0 .text            action__FP13e_arrow_class */
static void action(e_arrow_class* i_this) {
    s8 try_create_explosion = false;

    switch (i_this->mAction) {
    case ACTION_ARROW_SHOT:
        e_arrow_shot(i_this);
        dComIfGp_att_LookRequest(i_this, 1000.0f, 300.0f, -300.0f, 0x6000, 1);
        hit_check(i_this);

        if (i_this->mArrowType == ARROW_TYPE_FIRE) {
            i_this->mSound.startLevelSound(Z2SE_OBJ_ARROW_FLY_FIRE, 0, -1);
        } else {
            i_this->mSound.startLevelSound(Z2SE_OBJ_ARROW_FLY_NORMAL, 0, -1);
        }
        break;
    case ACTION_ARROW_BG:
        e_arrow_bg(i_this);

        if (i_this->mArrowType == ARROW_TYPE_FIRE) {
            i_this->mSound.startLevelSound(Z2SE_OBJ_ARROW_FIRE_READY, 0, -1);
        }

        try_create_explosion = true;
        break;
    case ACTION_ARROW_SPIN:
        e_arrow_spin(i_this);
        try_create_explosion = true;
        break;
    case ACTION_ARROW_SHIELD:
        e_arrow_shield(i_this);
        try_create_explosion = true;
        break;
    case ACTION_ARROW_FIRE:
        e_arrow_demo_fire(i_this);
        break;
    case ACTION_ARROW_BOUND:
        e_arrow_demo_bound(i_this);
        return;
    }

    if (try_create_explosion && i_this->mArrowType == ARROW_TYPE_BOMB) {
        dBomb_c::createNormalBombExplode(&i_this->current.pos);
        fopAcM_delete(i_this);
    }

    cMtx_YrotS(*calc_mtx, i_this->current.angle.y);
    cMtx_XrotM(*calc_mtx, i_this->current.angle.x);

    cXyz sp20;
    sp20.x = 0.0f;
    sp20.y = 0.0f;
    sp20.z = i_this->speedF;
    MtxPosition(&sp20, &i_this->speed);

    i_this->current.pos.x += i_this->speed.x + i_this->field_0x5d0;
    i_this->current.pos.y += i_this->speed.y;
    i_this->current.pos.z += i_this->speed.z + i_this->field_0x5d4;

    i_this->eyePos = i_this->current.pos;
}

/* 8067E0BC-8067E304 0019DC 0248+00 1/0 0/0 0/0 .text daE_ARROW_Execute__FP13e_arrow_class */
static int daE_ARROW_Execute(e_arrow_class* i_this) {
    const fopAc_ac_c* a_this = static_cast<fopAc_ac_c*>(i_this);

    if (i_this->field_0xa14 != 0) {
        return 1;
    }

    cXyz sp60;
    cXyz sp6C;
    cXyz sp78;

    i_this->field_0x5c0++;

    for (int i = 0; i < 4; i++) {
        if (i_this->mTimers[i] != 0) {
            i_this->mTimers[i]--;
        }
    }

    action(i_this);

    if (i_this->mpModel == NULL) {
        return 1;
    }

    if (i_this->mArrowType >= ARROW_TYPE_FIRE) {
        fire_eff_set(i_this);
    }

    s16 var_r29;
    s16 var_r28;

    if (i_this->field_0x5ce != 0) {
        i_this->field_0x5ce--;

        f32 temp_f1 = i_this->field_0x5ce * 50.0f;
        var_r29 = temp_f1 * cM_ssin(i_this->field_0x5c0 * 0x7000);
        var_r28 = temp_f1 * cM_ssin(i_this->field_0x5c0 * 0x7A00);
    } else {
        var_r28 = 0;
        var_r29 = 0;
    }

    mDoMtx_stack_c::transS(a_this->current.pos.x, a_this->current.pos.y, a_this->current.pos.z);
    mDoMtx_stack_c::YrotM(a_this->shape_angle.y);
    mDoMtx_stack_c::XrotM(a_this->shape_angle.x);
    mDoMtx_stack_c::ZrotM(a_this->shape_angle.z);
    mDoMtx_stack_c::transM(0.0f, 0.0f, 40.0f);
    mDoMtx_stack_c::YrotM(var_r29);
    mDoMtx_stack_c::XrotM(var_r28);
    mDoMtx_stack_c::transM(0.0f, 0.0f, -40.0f);
    mDoMtx_stack_c::scaleM(1.0f, 1.0f, 0.95f);
    mDoMtx_stack_c::YrotM(-23500);
    mDoMtx_stack_c::XrotM(-2000);
    mDoMtx_stack_c::transM(-60.0f, -10.0f, 40.0f);

    i_this->mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    i_this->mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(a_this)));
    return 1;
}

/* 8067E304-8067E30C 001C24 0008+00 1/0 0/0 0/0 .text daE_ARROW_IsDelete__FP13e_arrow_class */
static int daE_ARROW_IsDelete(e_arrow_class* i_this) {
    return 1;
}

/* 8067E30C-8067E374 001C2C 0068+00 1/0 0/0 0/0 .text            daE_ARROW_Delete__FP13e_arrow_class
 */
static int daE_ARROW_Delete(e_arrow_class* i_this) {
    fopAcM_GetID(i_this);
    dComIfG_resDelete(&i_this->mPhase, i_this->mResName);
    i_this->mSound.deleteObject();

    JPABaseEmitter* emitter_p = dComIfGp_particle_getEmitter(i_this->field_0x9ec);
    if (emitter_p != NULL) {
        emitter_p->setParticleCallBackPtr(NULL);
    }

    return 1;
}

/* 8067E374-8067E428 001C94 00B4+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    e_arrow_class* a_this = static_cast<e_arrow_class*>(i_this);

    int res_id;
    if (fopAcM_GetParam(a_this) & 0x80000000) {
        res_id = 0x52;
    } else {
        res_id = 0x45;
    }

    if (a_this->mArrowType == ARROW_TYPE_BOMB) {
        res_id++;
    }

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(a_this->mResName, res_id);
    JUT_ASSERT(modelData != 0);

    a_this->mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (a_this->mpModel == NULL) {
        return 0;
    }

    a_this->mSound.init(&a_this->current.pos, 1);
    return 1;
}

/* 8067E428-8067E724 001D48 02FC+00 1/0 0/0 0/0 .text            daE_ARROW_Create__FP10fopAc_ac_c */
static int daE_ARROW_Create(fopAc_ac_c* i_this) {
    e_arrow_class* const a_this = static_cast<e_arrow_class*>(i_this);
    fopAcM_SetupActor(i_this, e_arrow_class);

    if (fopAcM_GetParam(a_this) & 0x80000000) {
        a_this->mResName = "E_rdy";
    } else {
        a_this->mResName = "E_rd";
    }

    int phase_state = dComIfG_resLoad(&a_this->mPhase, a_this->mResName);
    if (phase_state == cPhs_COMPLEATE_e) {
        a_this->mArrowType = fopAcM_GetParam(a_this) & 0xF;
        a_this->mFlags = fopAcM_GetParam(a_this) & 0xF0;

        if (!fopAcM_entrySolidHeap(a_this, useHeapInit, 0x820)) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(a_this, a_this->mpModel->getBaseTRMtx());

        static dCcD_SrcSph at_sph_src = {
            {
                {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0x1d}, {0x0, 0x0}, 0x0}},  // mObj
                {dCcD_SE_ARROW_STICK, 0x0, 0x8, 0x0, 0x0},                     // mGObjAt
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2},                            // mGObjTg
                {0x0},                                                         // mGObjCo
            },                                                                 // mObjInf
            {
                {{0.0f, 0.0f, 0.0f}, 20.0f}  // mSph
            }                                // mSphAttr
        };

        static dCcD_SrcSph tg_sph_src = {
            {
                {0x0, {{0x0, 0x0, 0x0}, {0xd8fafdb7, 0x3}, 0x0}},  // mObj
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                // mGObjAt
                {dCcD_SE_METAL, 0x5, 0x0, 0x0, 0x22},              // mGObjTg
                {0x0},                                             // mGObjCo
            },                                                     // mObjInf
            {
                {{0.0f, 0.0f, 0.0f}, 35.0f}  // mSph
            }                                // mSphAttr
        };

        static dCcD_SrcSph fire_eff_sph_src = {
            {
                {0x0, {{AT_TYPE_CSTATUE_SWING, 0x4, 0x1d}, {0x0, 0x0}, 0x75}},  // mObj
                {dCcD_SE_ARROW_STICK, 0x0, 0x0, 0x1, 0x0},                      // mGObjAt
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2},                             // mGObjTg
                {0x0},                                                          // mGObjCo
            },                                                                  // mObjInf
            {
                {{0.0f, 0.0f, 0.0f}, 20.0f}  // mSph
            }                                // mSphAttr
        };

        a_this->mCcStts.Init(0xFF, 0, a_this);
        a_this->mCcAtSph.Set(at_sph_src);
        a_this->mCcAtSph.SetStts(&a_this->mCcStts);
        a_this->mCcAtSph.SetAtHitCallback(atHit_CB);

        if (a_this->mArrowType == ARROW_TYPE_FIRE) {
            a_this->mCcAtSph.SetAtMtrl(1);
        }

        a_this->mCcAtSph.StartCAt(a_this->current.pos);

        a_this->mCcTgSph.Set(tg_sph_src);
        a_this->mCcTgSph.SetStts(&a_this->mCcStts);

        a_this->field_0x5c0 = cM_rndF(0xFFFF);
        if (a_this->mFlags & 0x10) {
            a_this->mCcFireEffSph.Set(fire_eff_sph_src);
            a_this->mCcFireEffSph.SetStts(&a_this->mCcStts);
        }

        mDoMtx_stack_c::scaleS(0.0f, 0.0f, 0.0f);
        a_this->mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }

    return phase_state;
}

/* 8067EA60-8067EA80 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_ARROW_Method */
static actor_method_class l_daE_ARROW_Method = {
    (process_method_func)daE_ARROW_Create,  (process_method_func)daE_ARROW_Delete,
    (process_method_func)daE_ARROW_Execute, (process_method_func)daE_ARROW_IsDelete,
    (process_method_func)daE_ARROW_Draw,
};

/* 8067EA80-8067EAB0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_ARROW */
extern actor_process_profile_definition g_profile_E_ARROW = {
    fpcLy_CURRENT_e,
    8,
    fpcPi_CURRENT_e,
    PROC_E_ARROW,
    &g_fpcLf_Method.mBase,
    sizeof(e_arrow_class),
    0,
    0,
    &g_fopAc_Method.base,
    163,
    &l_daE_ARROW_Method,
    0x44100,
    fopAc_ENEMY_e,
    fopAc_CULLBOX_0_e,
};

// TODO: these are unreferenced, supposed to be auto generated? fix eventually

/* 8067EB90-8067EB94 000080 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8067EB90[4];
#pragma pop

/* 8067EB94-8067EB98 000084 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8067EB94[4];
#pragma pop

/* 8067EB98-8067EB9C 000088 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8067EB98[4];
#pragma pop

/* 8067EB9C-8067EBA0 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8067EB9C[4];
#pragma pop

/* 8067EBA0-8067EBA4 000090 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8067EBA0[4];
#pragma pop

/* 8067EBA4-8067EBA8 000094 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8067EBA4[4];
#pragma pop

/* 8067EBA8-8067EBAC 000098 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8067EBA8[4];
#pragma pop

/* 8067EBAC-8067EBB0 00009C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8067EBAC[4];
#pragma pop

/* 8067EBB0-8067EBB4 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8067EBB0[4];
#pragma pop

/* 8067EBB4-8067EBB8 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8067EBB4[4];
#pragma pop

/* 8067EBB8-8067EBBC 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8067EBB8[4];
#pragma pop

/* 8067EBBC-8067EBC0 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8067EBBC[4];
#pragma pop

/* 8067EBC0-8067EBC4 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8067EBC0[4];
#pragma pop

/* 8067EBC4-8067EBC8 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8067EBC4[4];
#pragma pop

/* 8067EBC8-8067EBCC 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8067EBC8[4];
#pragma pop

/* 8067EBCC-8067EBD0 0000BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8067EBCC[4];
#pragma pop

/* 8067EBD0-8067EBD4 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8067EBD0[4];
#pragma pop

/* 8067EBD4-8067EBD8 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8067EBD4[4];
#pragma pop

/* 8067EBD8-8067EBDC 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8067EBD8[4];
#pragma pop

/* 8067EBDC-8067EBE0 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8067EBDC[4];
#pragma pop

/* 8067EBE0-8067EBE4 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8067EBE0[4];
#pragma pop

/* 8067EBE4-8067EBE8 0000D4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8067EBE4[4];
#pragma pop

/* 8067EBE8-8067EBEC 0000D8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8067EBE8[4];
#pragma pop

/* 8067EBEC-8067EBF0 0000DC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8067EBEC[4];
#pragma pop

/* 8067EBF0-8067EBF4 0000E0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8067EBF0[4];
#pragma pop

/* 8067EBF4-8067EBF8 0000E4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JAUSectionHeap>             */
#pragma push
#pragma force_active on
static u8 data_8067EBF4[4];
#pragma pop

/* 8067E96C-8067E96C 0000EC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
