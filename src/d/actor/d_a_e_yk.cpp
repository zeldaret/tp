/**
 * @file d_a_e_yk.cpp
 * 
 * Enemy - Shadow Keese
 * 
 */

#include "d/actor/d_a_e_yk.h"
#include "c/c_damagereaction.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_midna.h"
#include "d/actor/d_a_player.h"
#include "d/d_s_play.h"
#include "dol2asm.h"
#include "SSystem/SComponent/c_math.h"

/* 80807D70-80807D7C 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80807D7C-80807D90 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};

// NONMATCHING load order and regalloc
static int setMidnaBindEffect(fopEn_enemy_c* i_enemy, Z2CreatureEnemy* i_sound,
                              cXyz* i_pos, cXyz* i_scale) {
    static GXColor e_prim[2] = {
        {0xFF, 0x78, 0x00, 0x00},
        {0xFF, 0x64, 0x78, 0x00},
    };
    static GXColor e_env[2] = {
        {0x5A, 0x2D, 0x2D, 0x00},
        {0x3C, 0x1E, 0x1E, 0x00},
    };

    daPy_py_c* player = daPy_getPlayerActorClass();
    if (player->getMidnaActor() != NULL && player->checkWolfLock(i_enemy)) {
        cXyz local_48;
        int world = dKy_darkworld_check() ? 1 : 0;

        if (i_enemy->getMidnaBindMode() == 0) {
            i_enemy->setMidnaBindMode(1);
            csXyz angle;

            MTXCopy(daPy_py_c::getMidnaActor()->getMtxHairTop(), mDoMtx_stack_c::get());
            cXyz local_54(100.0f, 0.0f, 0.0f);
            mDoMtx_stack_c::multVec(&local_54, &local_48);
            cXyz local_60 = local_48 - *i_pos;

            angle.y = cM_atan2s(local_60.x, local_60.z);
            angle.x = -cM_atan2s(local_60.y,
                                    JMAFastSqrt(local_60.x * local_60.x + local_60.z * local_60.z));
            angle.z = 0;

            JPABaseEmitter* emitter =
                dComIfGp_particle_set(0x29B, i_pos, &i_enemy->tevStr, &angle, i_scale,
                                      0xff, NULL, fopAcM_GetRoomNo(i_enemy),
                                      &e_prim[world], &e_env[world], NULL);
            if (emitter != NULL) {
                emitter->setGlobalParticleHeightScale(0.01f * local_60.abs());
            }

            dComIfGp_particle_set(0x29C, i_pos, &i_enemy->tevStr, &i_enemy->shape_angle,
                                  i_scale, 0xff, NULL, fopAcM_GetRoomNo(i_enemy),
                                  &e_prim[world], &e_env[world], NULL);

            i_sound->startCreatureSound(Z2SE_MIDNA_BIND_LOCK_ON, 0, -1);
        }

        static u16 eff_id[3] = {0x029D, 0x029E, 0x029F};
        for (int i = 0; i < 3; i++) {
            u32* bind_id = i_enemy->getMidnaBindID(i);
            *bind_id = dComIfGp_particle_set(*bind_id, eff_id[i], i_pos, &i_enemy->tevStr,
                                             &i_enemy->shape_angle, i_scale, 0xff, NULL,
                                             fopAcM_GetRoomNo(i_enemy),
                                             &e_prim[world], &e_env[world], NULL);
        }

        i_sound->startCreatureSoundLevel(Z2SE_MIDNA_BIND_LOCK_SUS, 0, -1);
        return 1;

    } else {
        i_enemy->setMidnaBindMode(0);
        return 0;
    }
}

/* 80807EF8-80807EFC 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80807EF8;

/* 80807F08-80807F24 000018 001C+00 9/9 0/0 0/0 .bss             l_HIO */
// static daE_YK_HIO_c l_HIO;
static daE_YK_HIO_c l_HIO;

/* 8080482C-80804870 0000EC 0044+00 1/1 0/0 0/0 .text            __ct__12daE_YK_HIO_cFv */
daE_YK_HIO_c::daE_YK_HIO_c() {
    field_0x04 = -1;
    field_0x08 = 1.0f;
    field_0x0c = 15.0f;
    field_0x10 = 250.0f;
    field_0x14 = 15.0f;
    field_0x18 = 40.0f;   
}

/* 80804870-808049E4 000130 0174+00 2/2 0/0 0/0 .text            yk_disappear__FP10e_yk_class */
static void yk_disappear(e_yk_class* i_this) {
    cXyz pos(0.65f,0.65f,0.65f);

    dComIfGp_particle_set(0x826c,&i_this->current.pos,0,&pos);
    dComIfGp_particle_set(0x826d,&i_this->current.pos,0,&pos);

    fopAcM_seStart(i_this,Z2SE_DARK_VANISH,0);
    fopAcM_createItemFromEnemyID(1,&i_this->current.pos,0xffffffff,0xffffffff,0,0,0,0);

    s32 param = fopAcM_GetParam(i_this) >> 0x18;

    if (param != 0xff) {
        dComIfGs_onSwitch(param, fopAcM_GetRoomNo(i_this));
    }
}

/* 808049E4-80804A90 0002A4 00AC+00 10/10 0/0 0/0 .text            anm_init__FP10e_yk_classifUcf */
static void anm_init(e_yk_class* i_this, int i_resIdx, f32 param_2, u8 param_3, f32 param_4) {
    i_this->mpMorfSO->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_YK",i_resIdx),param_3,param_2,param_4,0.0f,-1.0f);
    i_this->mResIdx = i_resIdx;
}

/* 80804A90-80804B38 000350 00A8+00 1/0 0/0 0/0 .text            daE_YK_Draw__FP10e_yk_class */
static int daE_YK_Draw(e_yk_class* i_this) {
    J3DModel* model = i_this->mpMorfSO->getModel();

    g_env_light.settingTevStruct(2,&i_this->current.pos,&i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model,&i_this->tevStr);

    dComIfGd_setListDark();

    i_this->mpMorfSO->entryDL();
    dComIfGd_setList();
    return 1;
}

/* 80804B38-80804BB0 0003F8 0078+00 1/1 0/0 0/0 .text            shot_b_sub__FPvPv */
static void* shot_b_sub(void* param_0, void* param_1) {
    if (fopAcM_IsActor(param_0) && fopAcM_GetName(param_0) == PROC_BOOMERANG &&
                                !dComIfGp_checkPlayerStatus0(0,0x80000) &&
                                daPy_py_c::checkBoomerangCharge() &&
                                fopAcM_GetParam(param_0) == 1) {
            return param_0;
    }

    return 0;
}

/* 80804BB0-80804C88 000470 00D8+00 1/1 0/0 0/0 .text other_bg_check__FP10e_yk_classP10fopAc_ac_c
 */
static int other_bg_check(e_yk_class* i_this, fopAc_ac_c* i_actorP) {
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    dBgS_LinChk lin_chk;
    cXyz yk_pos;
    cXyz actor_pos;
    
    actor_pos = i_actorP->current.pos;
    actor_pos.y += 100.0f;
    
    yk_pos = _this->current.pos;
    yk_pos.y = _this->eyePos.y;
    
    lin_chk.Set(&yk_pos,&actor_pos,_this);
    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        return 1;
    } else {
        return 0;
    }
}

/* 80804C88-80804D38 000548 00B0+00 5/5 0/0 0/0 .text            pl_check__FP10e_yk_classfs */
static int pl_check(e_yk_class* i_this, f32 i_distance, s16 i_angle) {
    if (i_distance >= 50000.0f) {
        return 1;
    }

    if (dComIfGp_getPlayer(0)->current.pos.y < i_this->current.pos.y && i_this->mDistanceXZFromPlayer < i_distance) {
        s16 angle_delta = i_this->shape_angle.y - i_this->mAngleFromPlayer;

        if (i_angle == 1 || angle_delta < i_angle && angle_delta > (s16)-i_angle){
            if (!other_bg_check(i_this,dComIfGp_getPlayer(0))) {
                return 1;
            } 
        }
    }

    return 0;   
}

/* 80804D38-80804F68 0005F8 0230+00 1/1 0/0 0/0 .text            damage_check__FP10e_yk_class */
static void damage_check(e_yk_class* i_this) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    if (i_this->field_0x6aa == 0) {
        // Store current AtApid and TgApid then set them to 0
        i_this->mCollisionStatus.Move();

        // If keese Defense collider was hit
        if (i_this->mCollisionSphere.ChkTgHit()) {
            // Store the tg collider pointer as the current at collider in the info block
            i_this->mAtColliderInfo.mpCollider = i_this->mCollisionSphere.GetTgHitObj();

            // If keese was hit by the boomerang
            if (i_this->mAtColliderInfo.mpCollider->ChkAtType(AT_TYPE_BOOMERANG)) {
                i_this->mAction = ACT_WIND;
                i_this->mActionPhase = 0;
                
            } else {
                // Run through the default Attack collider checks first
                cc_at_check(i_this,&i_this->mAtColliderInfo);
                
                // If keese was hit by Clawshot or Slingshot, subtract 1 from health
                if (i_this->mAtColliderInfo.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT) || i_this->mAtColliderInfo.mpCollider->ChkAtType(AT_TYPE_SLINGSHOT)) {
                    i_this->health--;
                }

                // If keese was hit by shield attack, set some fields and play controller vibration
                if (i_this->mAtColliderInfo.mpCollider->ChkAtType(AT_TYPE_SHIELD_ATTACK)) {
                    i_this->mAction = ACT_CHANCE;
                    i_this->mActionPhase = 0;
                    i_this->field_0x694 = 70.0f;
                    i_this->field_0x698 = i_this->shape_angle.y;
                    i_this->field_0x6a0 = 0;

                    dComIfGp_getVibration().StartShock(2,0x1f,cXyz(0.0f,1.0f,0.0f));
                } else {
                    // If keese was hit by wolf bite, set some fields, set pause timer to 0, 
                    // play keese wolf bit sound
                    if (i_this->mAtColliderInfo.mpCollider->ChkAtType(AT_TYPE_WOLF_ATTACK) && (static_cast<daPy_py_c*>(player)->onWolfEnemyBiteAll(i_this,daPy_py_c::FLG2_UNK_8) != 0)) {
                        i_this->mAction = ACT_WOLFBITE;
                        i_this->mActionPhase = 0;
                        i_this->field_0x6aa = 200;
                        dScnPly_c::setPauseTimer(0);
                        i_this->mCreature.startCreatureVoice(Z2SE_EN_YK_V_BITE,-1);
                    } else {
                        // If it was unknown attack, set some fields
                        if (i_this->mAtColliderInfo.mpCollider->ChkAtType(AT_TYPE_UNK)) {
                            i_this->field_0x6aa = 20;
                        } else {
                            i_this->field_0x6aa = 10;
                        }

                        i_this->field_0x694 = cM_rndF(10.0f) + 70.0f;
                        i_this->field_0x698 = i_this->mAtColliderInfo.mHitDirection;

                        // If keese is dead, play death sound
                        if (i_this->health <= 0) {
                            i_this->mCreature.startCreatureVoice(Z2SE_EN_YK_V_DEATH,-1);
                            i_this->mpMorfSO->setPlaySpeed(0.2f);
                            i_this->field_0x6a0 = 1;
                        }
                    }
                }
                    
            }
        }
    }
}

/* 80807F24-80808023 000034 00FF+00 1/1 0/0 0/0 .bss             check_index$4191 */
static u8 check_index[255];

/* 80804F68-808051D0 000828 0268+00 2/3 0/0 0/0 .text            path_check__FP10e_yk_class */
static int path_check(e_yk_class* i_this) {
    if (i_this->mpPath) {
        dBgS_LinChk lin_chk;

        cXyz current_keese_pos;
        cXyz path_point_pos;
        current_keese_pos = i_this->current.pos;
        current_keese_pos.y += 100.0f;
        dStage_dPnt_c* points = i_this->mpPath->m_points;

        // Set/update check_index array based on whether or not path points
        // were crossed
        for (int i = 0; i < i_this->mpPath->m_num; i++, points++) {
            path_point_pos.x = points->m_position.x;
            path_point_pos.y = points->m_position.y + 100.0f;
            path_point_pos.z = points->m_position.z;

            lin_chk.Set(&current_keese_pos,&path_point_pos,i_this);

            if (!dComIfG_Bgsp().LineCross(&lin_chk)) {
                check_index[i] = 1;
            } else {
                check_index[i] = 0;
            }
        }

        f32 x,y,z;
        f32 f = 0.0f;
        bool tmp = false;
        
        for (int i = 0; i < 100; i++, f+= 50.0f) {
            points = i_this->mpPath->m_points;

            for (int j = 0; j < i_this->mpPath->m_num; j++, points++) {
                if (check_index[j] != 0) {
                    x = i_this->current.pos.x - points->m_position.x;
                    y = i_this->current.pos.y - points->m_position.y;
                    z = i_this->current.pos.z - points->m_position.z;

                    if (JMAFastSqrt(x*x + y*y + z*z) < f) {
                        i_this->mPathPntIdx = j - i_this->field_0x5ba;
                        u16 pathNum = i_this->mpPath->m_num;

                        if (i_this->mPathPntIdx >= (s8)i_this->mpPath->m_num) {
                            i_this->mPathPntIdx = i_this->mpPath->m_num;
                        } else {
                            if (0 > i_this->mPathPntIdx) {
                                i_this->mPathPntIdx = 0;
                            }
                        }
                        
                        tmp = true;
                        break;
                    }
                }
            }

            if (tmp) break;
            
        }

        if (!tmp) {
            i_this->field_0x5b8 = 0;
        } else {
            i_this->field_0x5b8 = i_this->mPathIdx + 1;
            return 1;
        }

        
    }

    return 0;
}

/* 808051D0-80805360 000A90 0190+00 5/5 0/0 0/0 .text            fly_move__FP10e_yk_class */
static void fly_move(e_yk_class* i_this) {
    cXyz pos;

    f32 x = i_this->mPathPntPos.x - i_this->current.pos.x;
    f32 y = i_this->mPathPntPos.y - i_this->current.pos.y;
    f32 z = i_this->mPathPntPos.z - i_this->current.pos.z;

    s16 angle = cM_atan2s(x,z);
    f32 sqrt = JMAFastSqrt(x * x + z * z);
    s16 angle2 = -cM_atan2s(y,sqrt);

    cLib_addCalcAngleS2(&i_this->current.angle.y,angle,10,i_this->field_0x690 * i_this->field_0x68c);

    i_this->field_0x690 = 2000.0f;

    cLib_addCalcAngleS2(&i_this->current.angle.x,angle2,10,i_this->field_0x690 * i_this->field_0x68c);
    cLib_addCalc2(&i_this->field_0x68c,1.0f,1.0f,0.04f);
    
    pos.x = 0.0f;
    pos.y = 0.0f;
    pos.z = i_this->speedF;
    
    mDoMtx_YrotS((MtxP)calc_mtx,i_this->current.angle.y);
    cMtx_XrotM((MtxP)calc_mtx,i_this->current.angle.x);
    MtxPosition(&pos,&i_this->speed);

    i_this->current.pos += i_this->speed;
}

/* 80805360-808054A8 000C20 0148+00 1/1 0/0 0/0 .text            e_yk_roof__FP10e_yk_class */
static void e_yk_roof(e_yk_class* i_this) {
    switch (i_this->mActionPhase) {
    case 0:
        anm_init(i_this,9,15.0f,2,cM_rndF(0.1f) + 0.9f); // random number between 0.9 and 1.0
        i_this->mActionPhase = 1;
        break;
    case 1:
        if ((i_this->field_0x66c & 0x1f) == 0 && cM_rndF(1.0f) < 0.5f) {
            i_this->mCreature.startCreatureVoice(Z2SE_EN_YK_V_NAKU,-1);
        }
    }

    cLib_addCalc2(&i_this->current.pos.x,i_this->home.pos.x,0.5f,fabsf(i_this->speed.x));
    cLib_addCalc2(&i_this->current.pos.y,i_this->home.pos.y,0.5f,fabsf(i_this->speed.y));
    cLib_addCalc2(&i_this->current.pos.z,i_this->home.pos.z,0.5f,fabsf(i_this->speed.z));

    if (pl_check(i_this,i_this->mPlayerTrigger,1)) {
        i_this->mAction = ACT_FIGHT_FLY;
        i_this->mActionPhase = 0;
    }
}

/* 808054A8-80805660 000D68 01B8+00 1/1 0/0 0/0 .text            e_yk_fight_fly__FP10e_yk_class */
static void e_yk_fight_fly(e_yk_class* i_this) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    switch (i_this->mActionPhase) {
    case 0:
        anm_init(i_this,5,3.0f,2,1.0f);
        i_this->mActionPhase = 1;
        i_this->field_0x68c = 0.0f;
        break;
    case 1:
        if ((i_this->field_0x66c & 0xfU) == 0 && cM_rndF(1.0f) < 0.5f) {
            i_this->mCreature.startCreatureVoice(Z2SE_EN_YK_V_NAKU,-1);
        }
    }

    cLib_addCalc2(&i_this->speedF,l_HIO.field_0x0c, 1.0f, 0.3f * l_HIO.field_0x0c);
    i_this->mPathPntPos = player->current.pos;
    fly_move(i_this);

    if (!pl_check(i_this,50.0f + i_this->mPlayerTrigger,1)) {
        if (!path_check(i_this)) {
            if (i_this->mParam1 == 0) {
                i_this->mAction = ACT_RETURN;
                i_this->mActionPhase = 0;
            } else {
                i_this->mAction = ACT_FLY;
                i_this->mActionPhase = 0;
            }
        } else {
            i_this->mAction = ACT_PATH_FLY;
            i_this->mActionPhase = 0;
        }
    } else {
        if (pl_check(i_this,l_HIO.field_0x10,1)) {
            i_this->mAction = ACT_FIGHT;
            i_this->mActionPhase = 0;
        }
    }
}

/* 80805660-808059BC 000F20 035C+00 1/1 0/0 0/0 .text            e_yk_fight__FP10e_yk_class */
static void e_yk_fight(e_yk_class* i_this) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    s16 player_shape_angle_y = player->shape_angle.y;

    switch (i_this->mActionPhase) {
    case 0:
        anm_init(i_this,8,2.0f,2,cM_rndF(0.1f) + 1.0f);
        i_this->mActionPhase = 1;
        i_this->field_0x6a2[0] = 0;
        i_this->field_0x6a2[1]  = cM_rndF(100.0f) + 30.0f;
        break;
    case 1:
        if (i_this->field_0x6a2[0] == 0) {
            mDoMtx_YrotS((MtxP)calc_mtx,player_shape_angle_y + (s16)cM_rndFX(12288.0f));

            cXyz pos;
            pos.x = 0.0f;
            pos.y = cM_rndF(100.0f) + 150.0f;
            pos.z = cM_rndF(150.0f) + 150.0f;

            MtxPosition(&pos,&i_this->mPathPntPos);
            i_this->mPathPntPos += player->current.pos;

            pos = i_this->mPathPntPos - i_this->current.pos;
            mDoMtx_YrotS((MtxP)calc_mtx,cM_atan2s(pos.x,pos.z));
            cMtx_XrotM((MtxP)calc_mtx,-cM_atan2s(pos.y,JMAFastSqrt(pos.x*pos.x + pos.z*pos.z)));

            pos.x = 0.0f;
            pos.y = 0.0f;
            pos.z = l_HIO.field_0x14;

            MtxPosition(&pos,&i_this->speed);

            i_this->field_0x6a2[0] = cM_rndF(30.0f) + 10.0f;
            i_this->field_0x68c = 0.0f;
        }

        if (i_this->field_0x6a2[1]  == 0) {
            i_this->field_0x6a2[1]  = cM_rndF(100.0f) + 30.0f;
            i_this->mAction = ACT_ATTACK;
            i_this->mActionPhase = 0;
        }
    }

    cLib_addCalc2(&i_this->current.pos.x,i_this->mPathPntPos.x,0.2f,i_this->field_0x68c * fabsf(i_this->speed.x));
    cLib_addCalc2(&i_this->current.pos.y,i_this->mPathPntPos.y,0.2f,i_this->field_0x68c * fabsf(i_this->speed.y));
    cLib_addCalc2(&i_this->current.pos.z,i_this->mPathPntPos.z,0.2f,i_this->field_0x68c * fabsf(i_this->speed.z));
    cLib_addCalc2(&i_this->field_0x68c,1.0f,1.0f,0.1f);

    cLib_addCalcAngleS2(&i_this->current.angle.y,i_this->mAngleFromPlayer,4,0x800);

    if (!pl_check(i_this,i_this->mPlayerTrigger + 50.0f,1)) {
        if (!path_check(i_this)) {
            if (i_this->mParam1 == 0) {
                i_this->mAction = ACT_RETURN;
                i_this->mActionPhase = 0;
            } else {
                i_this->mAction = ACT_FLY;
                i_this->mActionPhase = 0;
            }
        } else {
            i_this->mAction = ACT_PATH_FLY;
            i_this->mActionPhase = 0;
        }
    }
}

/* 808059BC-80805BB4 00127C 01F8+00 1/1 0/0 0/0 .text            e_yk_attack__FP10e_yk_class */
static void e_yk_attack(e_yk_class* i_this) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    
    f32 value = 0.0f;
    i_this->field_0x68c = 0.0f;

    switch (i_this->mActionPhase) {
    case 0:
        anm_init(i_this,5,3.0f,2,2.0f);
        i_this->mActionPhase = 1;
        i_this->field_0x6a2[1]  = 0x14;
        break;
    case 1:
        i_this->mPathPntPos = player->current.pos;
        i_this->mPathPntPos.y += 120.0f;
        i_this->field_0x68c = 2.0f;

        if (i_this->field_0x6a2[1]  == 0) {
            i_this->mActionPhase = 2;
            i_this->field_0x6a2[0] = 0xf;
            i_this->mCreature.startCreatureVoice(Z2SE_EN_YK_V_ATTACK,-1);
        }
        break;
    case 2:
        value = l_HIO.field_0x18;

        if (i_this->mCollisionSphere.ChkAtShieldHit()) {
            i_this->mAction = ACT_CHANCE;
            i_this->mActionPhase = 0;
            i_this->field_0x694 = 70.0f;
            i_this->field_0x698 = i_this->shape_angle.y;
            i_this->field_0x6a0 = 0;

            dComIfGp_getVibration().StartShock(2,0x1f,cXyz(0.0f,1.0f,0.0f));
            
        } else {
            if (i_this->field_0x6a2[0] == 0) {
                i_this->mActionPhase = 3;
            }
        }
        break;
    case 3:
        if ((i_this->speedF <= 1.0f)) {
            i_this->mAction = ACT_FIGHT;
            i_this->mActionPhase = 0;
        }
    }

    cLib_addCalc2(&i_this->speedF,value,1.0f,0.2f * l_HIO.field_0x18);
    fly_move(i_this);
}

/* 80805BB4-80805DE0 001474 022C+00 1/1 0/0 0/0 .text            e_yk_fly__FP10e_yk_class */
static void e_yk_fly(e_yk_class* i_this) {
    switch (i_this->mActionPhase) {
    case 0:
        anm_init(i_this,5,3.0f,2,1.0f);
        i_this->mActionPhase = 1;
        break;
    case 1:
        if ((i_this->field_0x66c & 0x1f) == 0 && cM_rndF(1.0f) < 0.5f) {
            i_this->mCreature.startCreatureVoice(Z2SE_EN_YK_V_NAKU,-1);
        }

        if (i_this->field_0x6a2[0] == 0) {
            i_this->mPathPntPos.x = i_this->home.pos.x + cM_rndFX(500.0f);
            i_this->mPathPntPos.y = i_this->home.pos.y + cM_rndFX(200.0f);
            i_this->mPathPntPos.z = i_this->home.pos.z + cM_rndFX(500.0f);

            cXyz pos = i_this->mPathPntPos - i_this->current.pos;

            mDoMtx_YrotS((MtxP)calc_mtx,cM_atan2s(pos.x,pos.z));
            cMtx_XrotM((MtxP)calc_mtx,-cM_atan2s(pos.y,JMAFastSqrt(pos.x*pos.x + pos.z*pos.z)));

            pos.x = 0.0f;
            pos.y = 0.0f;
            pos.z = l_HIO.field_0x14;

            MtxPosition(&pos,&i_this->speed);
            i_this->field_0x6a2[0] = cM_rndF(30.0f) + 10.0f;
            i_this->field_0x68c = 0.0f;
        }
    }

    cLib_addCalc2(&i_this->speedF,l_HIO.field_0x0c,1.0f,0.3f * l_HIO.field_0x0c);
    fly_move(i_this);

    if (pl_check(i_this,i_this->mPlayerTrigger,1)) {
        i_this->mAction = ACT_FIGHT_FLY;
        i_this->mActionPhase = 0;
    }
}

/* 80805DE0-80805FF0 0016A0 0210+00 1/1 0/0 0/0 .text            e_yk_return__FP10e_yk_class */
static void e_yk_return(e_yk_class* i_this) {
    switch (i_this->mActionPhase) {
    case 0:
        anm_init(i_this,5,3.0f,2,1.0f);
        i_this->mActionPhase = 1;
        i_this->field_0x68c = 0.0f;
    case 1:
        break;
    }

    cLib_addCalc2(&i_this->speedF,l_HIO.field_0x0c,1.0f, 0.3f * l_HIO.field_0x0c);

    i_this->mPathPntPos = i_this->home.pos;
    fly_move(i_this);

    cXyz pos = i_this->current.pos - i_this->mPathPntPos;

    if (pos.abs() < 100.0f) {
        i_this->mAction = ACT_ROOF;
        i_this->mActionPhase = 0;
        
    } else {
        if (pl_check(i_this,i_this->mPlayerTrigger,1)) {
            i_this->mAction = ACT_FIGHT_FLY;
            i_this->mActionPhase = 0;
        }
    }
}

/* 80805FF0-80806308 0018B0 0318+00 1/1 0/0 0/0 .text            e_yk_path_fly__FP10e_yk_class */
static void e_yk_path_fly(e_yk_class* i_this) {
    switch (i_this->mActionPhase) {
    case 0:
        anm_init(i_this,5,3.0f,2,1.0f);
        i_this->mActionPhase = 1;
    case 1:
        if ((i_this->field_0x66c & 0x1fU) == 0 && cM_rndF(1.0f) < 0.5f) {
            i_this->mCreature.startCreatureVoice(Z2SE_EN_YK_V_NAKU,-1);
        }

        i_this->mPathPntIdx += i_this->field_0x5ba;
        if (i_this->mPathPntIdx >= (s8)i_this->mpPath->m_num) {
            if ((dPath_ChkClose(i_this->mpPath)) != 0) {
                i_this->mPathPntIdx = 0;
                
            } else {
                i_this->field_0x5ba = 0xff;
                i_this->mPathPntIdx = i_this->mpPath->m_num - 2;
            }

            int roomNo = i_this->mpPath->m_nextID;

            if (roomNo != 0xFFFF) {
                i_this->mpPath = dPath_GetRoomPath(roomNo,fopAcM_GetRoomNo(i_this));
            }
        } else {
            if (i_this->mPathPntIdx < 0) {
                i_this->field_0x5ba = 1;
                i_this->mPathPntIdx = 1;
            }
            
        }
    case 2:
        i_this->mActionPhase = 3;

        dStage_dPnt_c* point = i_this->mpPath->m_points;
        point = &point[i_this->mPathPntIdx];

        i_this->field_0x68c = 0.0f;
        i_this->mPathPntPos.x = point->m_position.x + cM_rndFX(150.0f);
        i_this->mPathPntPos.y = point->m_position.y + cM_rndFX(150.0f);
        i_this->mPathPntPos.z = point->m_position.z + cM_rndFX(150.0f);
        break;
    case 3:
        cXyz pos = i_this->mPathPntPos - i_this->current.pos;

        if (pos.abs() < 200.0f) {
            i_this->mActionPhase = 1;
        }
    }

    cLib_addCalc2(&i_this->speedF,l_HIO.field_0x0c,1.0f,0.3f * l_HIO.field_0x0c);
    fly_move(i_this);
}

/* 80806308-80806500 001BC8 01F8+00 1/1 0/0 0/0 .text            e_yk_chance__FP10e_yk_class */
static void e_yk_chance(e_yk_class* i_this) {
    switch (i_this->mActionPhase) {
    case 0:
        anm_init(i_this,8,2.0f,2,1.5f);
        i_this->mActionPhase = 1;
        i_this->field_0x6a2[0] = cM_rndF(30.0f) + 100.0f;
        i_this->speed.x = 0.0f;
        i_this->speed.y = 0.0f;
        i_this->speed.z = 0.0f;
        i_this->mCreature.startCreatureVoice(Z2SE_EN_YK_V_BITE,-1);
        break;
    case 1:
        if (i_this->field_0x708.ChkGroundHit()) {
            i_this->speed.y = cM_rndF(10.0f) + 10.0f;
            i_this->speed.x = cM_rndFX(10.0f);
            i_this->speed.z = cM_rndFX(10.0f);

            if (cM_rndF(1.0f) < 0.5f) {
                i_this->field_0x69a.z = 0;
            } else {
                i_this->field_0x69a.z = 0x8000;
            }
        
            i_this->field_0x69a.y = cM_rndF(65536.0f);
            fopAcM_effSmokeSet1(&i_this->field_0xa78,&i_this->field_0xa7c,
                                &i_this->current.pos,&i_this->shape_angle,
                                0.8f,&i_this->tevStr,1);

            i_this->mCreature.startCreatureVoice(Z2SE_EN_YK_V_FAINT,-1);
        }

        if (i_this->field_0x6a2[0] == 0) {
            i_this->current.angle.z = 0;
            i_this->mAction = ACT_FIGHT;
            i_this->mActionPhase = 0;
            return;
        }
    }

    i_this->current.pos += i_this->speed;
    i_this->speed.y -= 2.0f;
    cLib_addCalcAngleS2(&i_this->current.angle.y,i_this->field_0x69a.y,2,0x1000);
    cLib_addCalcAngleS2(&i_this->current.angle.z,i_this->field_0x69a.z,2,0x1000);
}

/* 80806500-80806740 001DC0 0240+00 1/1 0/0 0/0 .text            e_yk_wolfbite__FP10e_yk_class */
static void e_yk_wolfbite(e_yk_class* i_this) {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    switch(i_this->mActionPhase) {
    case 0:
        anm_init(i_this,7,0.0f,2,1.0f);
        i_this->mActionPhase = 1;
        break;
    case 1:
        if (!player->checkWolfEnemyCatchOwn(i_this)) {
            if (player->checkWolfEnemyLeftThrow()) {
                i_this->current.angle.y = player->shape_angle.y + 0x4000;
            } else {
                i_this->current.angle.y = player->shape_angle.y - 0x4000;
            }

            i_this->speedF = 40.0f;
            i_this->speed.y = -20.0f;
            i_this->mCreature.startCreatureVoice(Z2SE_EN_YK_V_DEATH,-1);

            anm_init(i_this,4,1.0f,0,1.0f);

            i_this->field_0x6a2[0] = 0x3c;
            i_this->mActionPhase = 2;
        }
        break;
    case 2:
        if (i_this->field_0x708.ChkGroundHit()) {
            i_this->mCreature.startCreatureVoice(Z2SE_EN_YK_V_DEATH2,-1);
            i_this->mCreature.startCreatureSound(Z2SE_CM_BODYFALL_S,0,-1);
            i_this->mActionPhase = 3;
        }
        // break;
    case 3:
        if (i_this->field_0x6a2[0] == 0) {
            yk_disappear(i_this);
            fopAcM_delete(i_this);
        }
    }

    cXyz pos, pos2;
    pos.x = 0.0f;
    pos.y = 0.0f; 
    pos.z = i_this->speedF;

    mDoMtx_YrotS((MtxP)calc_mtx,i_this->current.angle.y);
    MtxPosition(&pos, &pos2);
    i_this->speed.x = pos2.x;
    i_this->speed.z = pos2.z;

    i_this->current.pos += i_this->speed;
    i_this->speed.y -= 4.0f;

    if (i_this->field_0x708.ChkGroundHit()) {
        cLib_addCalc0(&i_this->speedF,1.0f,15.0f);
    }
}

/* 80806740-808068E4 002000 01A4+00 1/1 0/0 0/0 .text            e_yk_wind__FP10e_yk_class */
static void e_yk_wind(e_yk_class* i_this) {
    e_yk_class* yk = (e_yk_class*)fpcM_Search(shot_b_sub,i_this);
    i_this->speedF = 0.0f;
  
    switch(i_this->mActionPhase) {
    case 0:
        anm_init(i_this,6,3.0f,2,1.0f);
        i_this->mActionPhase = 1;
        i_this->mBoomrangXRotOffset = -(cM_rndFX(1000.0f) + 15000.0f);
        i_this->mBoomrangPosOffset.x = cM_rndFX(50.0f);
        i_this->mBoomrangPosOffset.y = cM_rndFX(50.0f);
        i_this->mBoomrangPosOffset.z = cM_rndFX(50.0f);
    case 1:
        if (!yk) {
            i_this->mActionPhase = 2;
            i_this->field_0x6a2[0] = 0x3c;
            break;
            
        } else {
            i_this->current.pos = yk->current.pos + i_this->mBoomrangPosOffset;
            i_this->mCreature.startCreatureVoiceLevel(Z2SE_EN_YK_V_SPIN,-1);
            break;
        }
    case 2:
        cLib_addCalcAngleS2(&i_this->mBoomrangXRotOffset,0,4,0x1c2);

        if (i_this->field_0x6a2[0] == 0) {
            i_this->mAction = ACT_FIGHT_FLY;
            i_this->mActionPhase = 0;
        }
    }

    i_this->current.angle.y += i_this->mBoomrangXRotOffset;
    i_this->shape_angle.y = i_this->current.angle.y;
    i_this->current.angle.z = 0;
}

/* 808068E4-80806B78 0021A4 0294+00 2/1 0/0 0/0 .text            action__FP10e_yk_class */
static void action(e_yk_class* i_this) {
    cXyz pos;
    cXyz pos2;

    i_this->mAngleFromPlayer = fopAcM_searchPlayerAngleY(i_this);
    i_this->mDistanceXZFromPlayer = fopAcM_searchPlayerDistanceXZ(i_this);

    damage_check(i_this);

    i_this->mCollisionSphere.OffAtVsPlayerBit();
    s8 searchForLink = 0;
    
    switch(i_this->mAction) {
    case ACT_ROOF:
        e_yk_roof(i_this);
        break;
    case ACT_FIGHT_FLY:
        e_yk_fight_fly(i_this);
        break;
    case ACT_FIGHT:
        e_yk_fight(i_this);
        searchForLink = 1;
        break;
    case ACT_ATTACK:
        e_yk_attack(i_this);
        i_this->mCollisionSphere.OnAtVsPlayerBit();
        searchForLink = 1;
        break;
    case ACT_RETURN:
        e_yk_return(i_this);
        break;
    case ACT_FLY:
        e_yk_fly(i_this);
        break;
    case ACT_PATH_FLY:
        e_yk_path_fly(i_this);
        break;
    case ACT_CHANCE:
        e_yk_chance(i_this);
        break;
    case ACT_WOLFBITE:
        e_yk_wolfbite(i_this);
        break;
    case ACT_WIND:
        e_yk_wind(i_this);
    }

    searchForLink ? i_this->mCreature.setLinkSearch(true) : i_this->mCreature.setLinkSearch(false);

    if (i_this->field_0x694 > 0.1f) {
        cXyz pos;
        cXyz pos2;
        
        pos.x = 0.0f;
        pos.y = 0.0f;
        pos.z = -i_this->field_0x694;

        mDoMtx_YrotS((MtxP)calc_mtx,i_this->field_0x698);
        MtxPosition(&pos,&pos2);
        i_this->current.pos += pos2;
        cLib_addCalc0(&i_this->field_0x694,1.0f,5.0f);

        if (i_this->field_0x6a0 != 0) {
            i_this->shape_angle.y += 0x1300;
            i_this->shape_angle.z += 0x1700;

            if (i_this->field_0x694 <= 1.0f || i_this->field_0x708.ChkWallHit()) {
                yk_disappear(i_this);
                fopAcM_delete(i_this);
            }
        }
    } else {
        if (i_this->mAction != ACT_WIND) {
            cLib_addCalcAngleS2(&i_this->shape_angle.y,i_this->current.angle.y,4,0x2000);
            cLib_addCalcAngleS2(&i_this->shape_angle.x,0,4,0x2000);
            cLib_addCalcAngleS2(&i_this->shape_angle.z,i_this->current.angle.z,4,0x2000);
        }
    }

    i_this->current.pos.y -= 30.0f; 
    i_this->old.pos.y -= 30.0f;

    i_this->field_0x708.CrrPos(dComIfG_Bgsp());

    i_this->current.pos.y += 30.0f;
    i_this->old.pos.y += 30.0f;
}

/* 80806B78-8080708C 002438 0514+00 2/1 0/0 0/0 .text            daE_YK_Execute__FP10e_yk_class */
// NONMATCHING regalloc
static int daE_YK_Execute(e_yk_class* i_this) {
    fopEn_enemy_c* _this = static_cast<fopEn_enemy_c*>(i_this);
    cXyz pos, pos2;

    if (cDmrNowMidnaTalk()) {
        return 1;
    } else {
        fopAc_ac_c* player = dComIfGp_getPlayer(0);
        i_this->field_0x66c++;

        for (int i = 0; i < 4; i++) {
            if (i_this->field_0x6a2[i] != 0) {
                i_this->field_0x6a2[i]--;
            }
        }

        if (i_this->field_0x6aa != 0) {
            i_this->field_0x6aa--;
        }

        action(i_this);

        i_this->mpMorfSO->play(0,dComIfGp_getReverb(fopAcM_GetRoomNo(_this)));
        J3DModel* model = i_this->mpMorfSO->getModel();

        if (i_this->mAction == ACT_WOLFBITE && i_this->mActionPhase < 2) {
            fopAcM_OffStatus(_this,0);
            _this->attention_info.flags = 0;

            // need to define inline here
            MTXCopy(daPy_getLinkPlayerActorClass()->getWolfMouthMatrix(),mDoMtx_stack_c::get());
            model->setBaseTRMtx(mDoMtx_stack_c::get());
            mDoMtx_stack_c::multVecZero(&_this->current.pos);
        } else {
            if (_this->health > 0 && i_this->field_0x6a0 == 0 && player->current.pos.y < _this->current.pos.y) {
                _this->attention_info.flags = 4;
            } else {
                fopAcM_OffStatus(i_this,0);
                _this->attention_info.flags = 0;
            }

            mDoMtx_stack_c::transS(_this->current.pos.x,_this->current.pos.y,_this->current.pos.z);
            mDoMtx_stack_c::YrotM(_this->shape_angle.y);
            mDoMtx_stack_c::ZrotM(_this->shape_angle.z);
            mDoMtx_stack_c::scaleM(l_HIO.field_0x08,l_HIO.field_0x08,l_HIO.field_0x08);

            model->setBaseTRMtx(mDoMtx_stack_c::get());
        }

        i_this->mpMorfSO->modelCalc();
        int res_idx = i_this->mResIdx;

        if (res_idx == 8 || res_idx == 5) {
            if (i_this->mpMorfSO->checkFrame(4.0f)) {
                if (i_this->mResIdx == 8) {
                    i_this->mCreature.startCreatureSound(Z2SE_EN_YK_WING,0,-1);
                } else {
                    i_this->mCreature.startCreatureSound(Z2SE_EN_YK_WING,0,-1);
                }   
            }
        } else if (res_idx == 6 && i_this->mpMorfSO->checkFrame(0.0)) {
            i_this->mCreature.startCreatureVoice(Z2SE_EN_YK_V_FURA,-1);
        }

        if (i_this->mResIdx != 4) {
            i_this->field_0xa80 = dComIfGp_particle_set(i_this->field_0xa80,0x8434,&_this->current.pos,0,0);

            if (i_this->mResIdx != 9) {
                for (int i = 0; i < 2; i++) {
                    static u16 e_name[2] = {0x8432, 0x8433};
                    static u32 e_idx[2] = {5, 9};
                    i_this->mParticleEmitterIds[i] = dComIfGp_particle_set(i_this->mParticleEmitterIds[i],e_name[i],&_this->current.pos,0,0);
                    
                    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(i_this->mParticleEmitterIds[i]);
                    if (emitter) {
                        emitter->setGlobalRTMatrix(model->getAnmMtx(e_idx[i]));
                    };
                }
            }
        }

        

        MTXCopy(model->getAnmMtx(2),(MtxP)calc_mtx);
        pos.set(0.0f,0.0f,0.0f);

        MtxPosition(&pos,&_this->eyePos);
        _this->attention_info.position = _this->eyePos;
        _this->attention_info.position.y += 20.0f;

        pos.set(0.0f,0.0f,0.0f);
        MtxPosition(&pos,&pos2);

        if (i_this->field_0x6aa != 0) {
            pos2.z -= 20000.0f;
        }

        i_this->mCollisionSphere.SetC(pos2);
        i_this->mCollisionSphere.SetR(30.0f * l_HIO.field_0x08);

        dComIfG_Ccsp()->Set(&i_this->mCollisionSphere);
        setMidnaBindEffect(_this,&i_this->mCreature,&_this->eyePos,&cXyz(0.5f,0.5f,0.5f));
    }

    return 1;
}

/* 8080708C-80807094 00294C 0008+00 1/0 0/0 0/0 .text            daE_YK_IsDelete__FP10e_yk_class */
static int daE_YK_IsDelete(e_yk_class* param_0) {
    return 1;
}

/* 80807094-808070FC 002954 0068+00 1/0 0/0 0/0 .text            daE_YK_Delete__FP10e_yk_class */
static int daE_YK_Delete(e_yk_class* i_this) {
    dComIfG_resDelete(&i_this->mPhase,"E_YK");

    if (i_this->field_0xa8c != 0) {
        data_80807EF8 = 0;
    }

    if (i_this->heap) {
        i_this->mpMorfSO->stopZelAnime();
    }

    return 1;
}

/* 808070FC-808071F4 0029BC 00F8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    e_yk_class* yk = (e_yk_class*)i_this;

    yk->mpMorfSO = new mDoExt_McaMorfSO((J3DModelData*)dComIfG_getObjectRes("E_YK", 12), 
        NULL, NULL, (J3DAnmTransform*)dComIfG_getObjectRes("E_YK",9), 2, 1.0f, 0, -1, &yk->mCreature, 0x80000,0x11000084);
    if (!yk->mpMorfSO || !yk->mpMorfSO->mpModel) {
        return 0;
    }

    return 1;
}

/* 808071F4-808075CC 002AB4 03D8+00 1/0 0/0 0/0 .text            daE_YK_Create__FP10fopAc_ac_c */
static int daE_YK_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, e_yk_class);
    e_yk_class* yk = (e_yk_class*)i_this;

    int phase_step = dComIfG_resLoad(&yk->mPhase,"E_YK");

    if (phase_step == cPhs_COMPLEATE_e) {
        s32 param = fopAcM_GetParam(yk) >> 24;

        if (param != 0xFF && dComIfGs_isSwitch(param,fopAcM_GetRoomNo(yk))) {
            return cPhs_ERROR_e;
        }

        yk->mParam1 = fopAcM_GetParam(yk);
        yk->mPlayerTriggerBase = (fopAcM_GetParam(yk) >> 8) & 0xf;
        yk->mPathIdx = fopAcM_GetParam(yk) >> 16;

        if (yk->mParam1 == 0xff) {
            yk->mParam1 = 0;
        }

        if (yk->mPlayerTriggerBase == 0xf) {
            yk->mPlayerTriggerBase = 10;
        }
        
        yk->mPlayerTrigger = 100.0f * yk->mPlayerTriggerBase;
        
        if (fopAcM_SearchByName(PROC_E_PZ)) {
            // For phantom zant fights. Used in pl_check above
            yk->mPlayerTrigger = 100000.0f; 
        }

        if (!fopAcM_entrySolidHeap(yk,useHeapInit,0x1740)) {
            return cPhs_ERROR_e;
        } else {
            if (yk->mPathIdx != 0xff) {
                yk->mpPath = dPath_GetRoomPath(yk->mPathIdx,fopAcM_GetRoomNo(yk));
                
                if (!yk->mpPath) {
                    return cPhs_ERROR_e;
                }

                yk->field_0x5b8 = yk->mPathIdx + 1;
                yk->field_0x5ba = 1;
                yk->mAction = ACT_PATH_FLY;
                
            } else {
                if (yk->mParam1 == 1) {
                    yk->mAction = ACT_FLY;
                }
            }

            if (data_80807EF8 == 0) {
                yk->field_0xa8c = 1;
                data_80807EF8 = 1;
                l_HIO.field_0x04 = -1;
            }

            yk->attention_info.flags = 4;

            fopAcM_SetMtx(yk,yk->mpMorfSO->getModel()->getBaseTRMtx());
            fopAcM_SetMin(yk,-200.0f,-200.0f,-200.0f);
            fopAcM_SetMax(yk,200.0f,200.0f,200.0f);

            yk->health = 1;
            yk->field_0x560 = 1;

            static dCcD_SrcSph cc_sph_src = {
                    {
                        {0x0, {{0x400, 0x1, 0xD}, {0xD8FBFDFF, 0x3}, 0x75}}, // mObj
                        {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
                        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
                        {0x0}, // mGObjCo
                    }, // mObjInf
                    {
                        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
                    } // mSphAttr
            };

            yk->mCollisionStatus.Init(0x1e,0,yk);
            yk->mCollisionSphere.Set(cc_sph_src);
            yk->mCollisionSphere.SetStts(&yk->mCollisionStatus);

            yk->field_0x708.Set(fopAcM_GetPosition_p(yk),
                            fopAcM_GetOldPosition_p(yk),yk,1,
                            &yk->field_0x6c8, fopAcM_GetSpeed_p(yk),
                            0,0);

            yk->field_0x6c8.SetWall(50.0f,50.0f);
            yk->mCreature.init(&yk->current.pos,&yk->eyePos,3,1);
            yk->mCreature.setEnemyName("E_yk");

            yk->mAtColliderInfo.mpSound = &yk->mCreature;
            yk->mAtColliderInfo.mPowerType = 1;
            yk->field_0x66c = cM_rndF(65535.0f);

            daE_YK_Execute(yk);
        }
    }

    return phase_step;
}

/* 80807E30-80807E50 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_YK_Method */
static actor_method_class l_daE_YK_Method = {
    (process_method_func)daE_YK_Create,
    (process_method_func)daE_YK_Delete,
    (process_method_func)daE_YK_Execute,
    (process_method_func)daE_YK_IsDelete,
    (process_method_func)daE_YK_Draw,
};

/* 80807E50-80807E80 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_YK */
extern actor_process_profile_definition g_profile_E_YK = {
    fpcLy_CURRENT_e,         // mLayerID  
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio 
    PROC_E_YK,               // mProcName        
    &g_fpcLf_Method.mBase,   // sub_method                    
    sizeof(e_yk_class),      // mSize                 
    0,                       // mSizeOther
    0,                       // mParameters       
    &g_fopAc_Method.base,    // sub_method                   
    188,                     // mPriority     
    &l_daE_YK_Method,        // sub_method               
    0x10050100,              // mStatus          
    fopAc_ENEMY_e,           // mActorType   
    fopAc_CULLBOX_CUSTOM_e,  // cullType   
};
