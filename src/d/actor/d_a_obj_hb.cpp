/**
 * @file d_a_obj_hb.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_hb.h"
#include "d/d_cc_d.h"
#include "d/actor/d_a_player.h"
#include "d/actor/d_a_e_hb_leaf.h"
#include "d/d_s_play.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void daOBJ_HB_Draw__FP12obj_hb_class();
extern "C" static void obj_hb_carry__FP12obj_hb_class();
extern "C" static void wall_angle_get__FP12obj_hb_class();
extern "C" static void water_check__FP12obj_hb_class();
extern "C" static void obj_hb_set__FP12obj_hb_class();
extern "C" static void getGroundAngle__FP10fopAc_ac_cP5csXyz();
extern "C" static void obj_hb_drop__FP12obj_hb_class();
extern "C" static void obj_hb_float__FP12obj_hb_class();
extern "C" static void action__FP12obj_hb_class();
extern "C" static void daOBJ_HB_Execute__FP12obj_hb_class();
extern "C" static bool daOBJ_HB_IsDelete__FP12obj_hb_class();
extern "C" static void daOBJ_HB_Delete__FP12obj_hb_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daOBJ_HB_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" static void func_80C1B5E8();
extern "C" static void func_80C1B5F0();
extern "C" extern char const* const d_a_obj_hb__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotS__FPA4_fs();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LockonTarget__12dAttention_cFl();
extern "C" void LockonTruth__12dAttention_cFv();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__18dBgS_ObjGndChk_SplFv();
extern "C" void __dt__18dBgS_ObjGndChk_SplFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void stopAnime__10Z2CreatureFv();
extern "C" void __dl__FPv();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u8 data_80C1B7E0[4];

/* 80C195B8-80C19688 000078 00D0+00 1/0 0/0 0/0 .text            daOBJ_HB_Draw__FP12obj_hb_class */
static int daOBJ_HB_Draw(obj_hb_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    
    g_env_light.settingTevStruct(0, &a_this->current.pos, &a_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(i_this->mpModel, &a_this->tevStr);
    mDoExt_modelUpdateDL(i_this->mpModel);
    cXyz pos(a_this->current.pos.x, a_this->current.pos.y + 100.0f, a_this->current.pos.z);
    i_this->mShadowKey = dComIfGd_setShadow(i_this->mShadowKey, 1, i_this->mpModel, &pos, 400.0f, 0.0f, a_this->current.pos.y,
                                            i_this->mBgc.GetGroundH(), i_this->mBgc.m_gnd, &a_this->tevStr,
                                            0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    return 1;
}

/* 80C19688-80C1988C 000148 0204+00 1/1 0/0 0/0 .text            obj_hb_carry__FP12obj_hb_class */
static void obj_hb_carry(obj_hb_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    switch (i_this->mMode) {
        case 0: {
            cLib_offBit<u32>(a_this->attention_info.flags, fopAc_AttnFlag_CARRY_e);
            i_this->mMode = 1;
            s16 angle_delta = i_this->field_0x676.y - player->shape_angle.y;
            if (angle_delta > 0x4000 || angle_delta < -0x4000) {
                i_this->field_0x67e = -0x8000;
            } else {
                i_this->field_0x67e = 0;
            }
            break;
        }
        
        case 1:
            if (!fopAcM_checkCarryNow(a_this)) {
                i_this->mAction = 1;
                i_this->mSph.OnCoSetBit();
                i_this->field_0x69c = fpcM_ERROR_PROCESS_ID_e;
                i_this->field_0x6a0 = 0.0f;

                if (fopAcM_GetSpeedF(a_this) > 1.0f || fopAcM_GetSpeedF(player) > 10.0f) {
                    a_this->speedF = WREG_F(9) + 30.0f + (fopAcM_GetSpeedF(player) * 0.25f);
                    a_this->speed.y = WREG_F(10) + 30.0f;
                    a_this->current.angle.y = player->shape_angle.y;
                    i_this->mMode = 0;

                    if (dComIfGp_getAttention()->Lockon()) {
                        i_this->field_0x69c = fopAcM_GetID(dComIfGp_getAttention()->LockonTarget(0));
                    }
                } else {
                    a_this->speedF = 0.0f;
                    a_this->speed.y = 0.0f;
                    i_this->mMode = 5;
                    i_this->field_0x688 = NREG_F(2) + 1000.0f;
                }
            }
            break;
    }

    a_this->eyePos = a_this->current.pos;
    a_this->attention_info.position = a_this->current.pos;
    cLib_addCalcAngleS2(&i_this->field_0x676.y, player->shape_angle.y + i_this->field_0x67e, 1, i_this->field_0x67c);
    cLib_addCalcAngleS2(&i_this->field_0x67c, 0x2000, 1, 0x100);
}

/* 80C1988C-80C19A2C 00034C 01A0+00 1/1 0/0 0/0 .text            wall_angle_get__FP12obj_hb_class */
static s16 wall_angle_get(obj_hb_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dBgS_LinChk lin_chk;
    cXyz spa8, spb4, sp98[2];
    
    cMtx_YrotS(*calc_mtx, a_this->current.angle.y);
    spa8.x = 0.0f;
    spa8.y = 0.0f;
    spa8.z = -50.0f;
    MtxPosition(&spa8, &spb4);
    spb4 += a_this->current.pos;
    spa8.x = 5.0f;
    spa8.y = 0.0f;
    spa8.z = 200.0f;

    for (int i = 0; i < 2; i++) {
        MtxPosition(&spa8, &sp98[i]);
        spa8.x *= -1.0f;
        sp98[i] += spb4;
        lin_chk.Set(&spb4, &sp98[i], a_this);

        if (dComIfG_Bgsp().LineCross(&lin_chk)) {
            sp98[i] = lin_chk.GetCross();
        } else {
            OS_REPORT("E_TH_BALL WALL CHECK NON ??\n");
            return 35;
        }
    }

    spa8 = sp98[1] - sp98[0];
    return cM_atan2s(spa8.x, spa8.z) + 0x4000;
}

/* 80C19A2C-80C19AD8 0004EC 00AC+00 1/1 0/0 0/0 .text            water_check__FP12obj_hb_class */
static BOOL water_check(obj_hb_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dBgS_ObjGndChk_Spl gnd_chk_spl;
    Vec sp78;

    sp78.x = a_this->current.pos.x;
    sp78.y = a_this->current.pos.y + 500.0f;
    sp78.z = a_this->current.pos.z;
    gnd_chk_spl.SetPos(&sp78);
    i_this->field_0x680 = dComIfG_Bgsp().GroundCross(&gnd_chk_spl);

    if (i_this->field_0x680 > a_this->current.pos.y + WREG_F(11)) {
        return TRUE;
    }

    return FALSE;
}

/* 80C19AD8-80C19BEC 000598 0114+00 1/1 0/0 0/0 .text            obj_hb_set__FP12obj_hb_class */
static void obj_hb_set(obj_hb_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    switch (i_this->mMode) {
        case 0:
            i_this->mTimers[0] = 30;
            i_this->mTimers[1] = KREG_S(0) + 90;
            i_this->mMode = 1;
            i_this->field_0x6ac = 0.0f;
            break;
        
        case 1:
            if (i_this->mTimers[0] == 0) {
                cLib_addCalc2(&i_this->field_0x6ac, 1.0f, 1.0f, 0.03f);
                cLib_addCalc2(&a_this->scale.x, BREG_F(0) + 0.6f, 0.05f, BREG_F(1) + 0.02f);
                i_this->field_0x688 = BREG_F(6) + 800.0f;

                if (i_this->mTimers[1] == 0) {
                    i_this->field_0x6a4 = KREG_S(1) + 15;
                    i_this->mAction = 1;
                    i_this->mMode = 0;
                    i_this->field_0x688 = BREG_F(3) + 2000.0f;
                    a_this->speed.y = BREG_F(7) + 25.0f;
                    i_this->mSound.startCreatureSound(Z2SE_EN_FS_KUBIKASIGE, 0, -1);
                }
            }
            break;
    }
}

/* 80C19BEC-80C19DA8 0006AC 01BC+00 1/1 0/0 0/0 .text getGroundAngle__FP10fopAc_ac_cP5csXyz */
static BOOL getGroundAngle(fopAc_ac_c* a_this, csXyz* param_2) {
    Vec spa8;
    cXyz spb4;
    dBgS_GndChk gnd_chk;
    BOOL rv = TRUE;
    s16 x, z;
    f32 fVar1, fVar2;

    spb4 = a_this->current.pos;
    spb4.y += 50.0f;
    gnd_chk.SetPos(&spb4);
    spb4.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
    if (spb4.y != -1e9f) {
        spa8.x = spb4.x;
        spa8.y = spb4.y + 50.0f;
        spa8.z = spb4.z + 10.0f;
        gnd_chk.SetPos(&spa8);
        spa8.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
        if (spa8.y != -1e9f) {
            fVar1 = spa8.y - spb4.y;
            fVar2 = spa8.z - spb4.z;
            x = -cM_atan2s(fVar1, fVar2);
        } else {
            rv = FALSE;
        }

        spa8.x = spb4.x + 10.0f;
        spa8.y = spb4.y + 50.0f;
        spa8.z = spb4.z;
        gnd_chk.SetPos(&spa8);
        spa8.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
        if (spa8.y != -1e9f) {
            fVar1 = spa8.y - spb4.y;
            fVar2 = spa8.x - spb4.x;
            z = (s16)cM_atan2s(fVar1, fVar2);
        } else {
            rv = false;
        }
    } else {
        rv = false;
    }

    if (rv) {
        param_2->x = x;
        param_2->z = z;
    }

    return rv;
}

/* 80C19DA8-80C1A490 000868 06E8+00 1/1 0/0 0/0 .text            obj_hb_drop__FP12obj_hb_class */
static void obj_hb_drop(obj_hb_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp3c, sp48;

    cLib_addCalc0(&i_this->field_0x6ac, 1.0f, 0.03f);

    switch (i_this->mMode) {
        case 0:
            if (a_this->speedF >= 20.0f) {
                if (i_this->field_0x67e == 0) {
                    i_this->field_0x684 = 4000;
                } else {
                    i_this->field_0x684 = -4000;
                }
            }
            // fallthrough
        case 1:
        case 2:
        case 3:
        case 4:
            if (i_this->mTimers[0] == 0 && i_this->mBgc.ChkWallHit()) {
                s16 wall_angle = wall_angle_get(i_this);
                if (wall_angle != 35) {
                    s16 angle_delta = a_this->current.angle.y - wall_angle;
                    i_this->field_0x690 = angle_delta * (WREG_F(6) + -0.3f);
                    a_this->current.angle.y += (s16)(0x8000 - (angle_delta << 1));
                    a_this->speedF *= AREG_F(4) + 0.5f;
                    i_this->mTimers[0] = 10;
                    i_this->mSound.startCollisionSE(Z2SE_HIT_SWORD, 41);
                }
            }

            if (i_this->mBgc.ChkGroundHit()) {
                if (i_this->mMode < 4) {
                    i_this->mMode++;
                }

                if (i_this->field_0x6b4 < -30.0f) {
                    fopAcM_effSmokeSet1(&i_this->field_0xa68, &i_this->field_0xa6c, &a_this->current.pos, &a_this->shape_angle, NREG_F(18) + 0.8f, &a_this->tevStr, 1);
                    i_this->mSound.startCollisionSE(Z2SE_HIT_SWORD, 41);
                    a_this->speed.y = i_this->field_0x6b4 * -0.4f;
                    a_this->speedF *= WREG_F(14) + 0.75f;
                    i_this->field_0x688 = NREG_F(0) + 3500.0f;

                    if (i_this->field_0x690 == 0) {
                        i_this->field_0x690 = cM_rndFX(1300.0f);
                    }
                } else {
                    i_this->mMode = 5;
                }
            }
            break;
        
        case 5:
            cLib_addCalc0(&a_this->speedF, 1.0f, WREG_F(11) + 2.0f);

            if (a_this->speed.y < -30.0f) {
                i_this->mMode = 0;
            }
            break;
    }

    cMtx_YrotS(*calc_mtx, a_this->current.angle.y);
    sp3c.x = 0.0f;
    sp3c.y = 0.0f;
    sp3c.z = a_this->speedF;
    MtxPosition(&sp3c, &sp48);
    a_this->speed.x = sp48.x;
    a_this->speed.z = sp48.z;
    a_this->current.pos.x += a_this->speed.x;
    a_this->current.pos.z += a_this->speed.z;
    a_this->current.pos.y += a_this->speed.y;
    a_this->speed.y += -5.0f;
    a_this->eyePos = a_this->current.pos;
    a_this->attention_info.position = a_this->current.pos;
    cLib_onBit<u32>(a_this->attention_info.flags, fopAc_AttnFlag_CARRY_e);
    a_this->attention_info.distances[fopAc_attn_CARRY_e] = 7;
    i_this->field_0x676.y += i_this->field_0x690;

    if (a_this->speedF >= 20.0f) {
        i_this->mSph.OnAtSetBit();
        i_this->mSph.OffAtVsBitSet(12);
        i_this->mSph.OnAtVsBitSet(2);
        i_this->mSph.SetR((JREG_F(13) + 60.0f) * a_this->scale.x);
        i_this->mSph.SetAtHitMark(1);

        if (i_this->field_0x674 == 0 && i_this->mSph.ChkAtHit()) {
            i_this->field_0x674 = 4;
            a_this->speedF *= 0.5f;
        }

        fopAc_ac_c* actor_p = fopAcM_SearchByID(i_this->field_0x69c);
        if (actor_p != NULL) {
            if (((actor_p->eyePos - a_this->current.pos).abs() < 300.0f)) {
                f32 fVar1 = JREG_F(15) + 0.3f;
                cLib_addCalc2(&a_this->current.pos.x, actor_p->eyePos.x, fVar1, i_this->field_0x6a0);
                cLib_addCalc2(&a_this->current.pos.y, actor_p->eyePos.y, fVar1, i_this->field_0x6a0);
                cLib_addCalc2(&a_this->current.pos.z, actor_p->eyePos.z, fVar1, i_this->field_0x6a0);
                cLib_addCalc2(&i_this->field_0x6a0, JREG_F(14) + 50.0f, 1.0f, 8.0f);
            }
        }
    } else {
        i_this->mSph.OffAtSetBit();
    }

    if (fopAcM_checkCarryNow(a_this)) {
        i_this->mAction = 3;
        i_this->mMode = 0;
        i_this->field_0x68e = 0;
        i_this->field_0x68c = 0;
        i_this->field_0x690 = 0;
        i_this->field_0x67c = 0;
        i_this->mSph.OffAtSetBit();
        i_this->field_0x6b0 = 0;
    }

    csXyz ground_angle;
    if (getGroundAngle(a_this, &ground_angle)) {
        cMtx_XrotS(*calc_mtx, ground_angle.x);
        cMtx_ZrotM(*calc_mtx, ground_angle.z);
        sp3c.x = 0.0f;
        sp3c.y = KREG_F(8) + 20.0f;
        sp3c.z = 0.0f;
        MtxPosition(&sp3c, &sp48);
        sp48.y = 0.0f;

        if (sp48.abs() >= 10.0f) {
            a_this->current.pos += sp48;
            a_this->speed.y = -30.0f;
        }
    }
}

/* 80C1A490-80C1A748 000F50 02B8+00 1/1 0/0 0/0 .text            obj_hb_float__FP12obj_hb_class */
static void obj_hb_float(obj_hb_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    cLib_addCalc0(&a_this->speed.y, 1.0f, WREG_F(6) + 0.25f);
    a_this->current.pos += a_this->speed;
    a_this->speed.x *= WREG_F(13) + 0.95f;
    a_this->speed.z *= WREG_F(13) + 0.95f;

    cXyz pos(a_this->current.pos);
    pos.y = i_this->field_0x680;

    f32 fVar1 = KREG_F(0) + 0.05f;
    if (i_this->field_0x698) {
        fVar1 = KREG_F(1) + 0.1f;
    }

    if (a_this->current.pos.y + 60.0f + WREG_F(11) > i_this->field_0x680) {
        fopAcM_effHamonSet(&i_this->field_0xa80, &pos, KREG_F(2) + 1.0f, fVar1);
    }

    f32 fVar2 = cM_ssin(i_this->field_0x650 * (WREG_S(2) + 900)) * (i_this->field_0x694 * 0.004f);
    cLib_addCalc2(&a_this->current.pos.y, (i_this->field_0x680 - 40.0f) + WREG_F(8) + fVar2, 0.1f, WREG_F(4) + 10.0f);
    i_this->field_0x676.x = i_this->field_0x694 * cM_ssin(i_this->field_0x650 * (WREG_S(3) + 1000));
    i_this->field_0x676.z = i_this->field_0x694 * cM_ssin(i_this->field_0x650 * (WREG_S(4) + 1100));
    cLib_addCalc2(&i_this->field_0x694, 500.0f, 0.1f, 30.0f);
    i_this->field_0x676.x += (s16)(i_this->field_0x698 * cM_ssin(i_this->field_0x650 * (WREG_S(7) + 4000)));
    a_this->shape_angle.z += (s16)(i_this->field_0x698 * cM_ssin(i_this->field_0x650 * (WREG_S(8) + 4200)));
    cLib_addCalc2(&i_this->field_0x698, 0.0f, 0.1f, 30.0f);
    i_this->field_0x676.y += i_this->field_0x690;

    if (fopAcM_searchPlayerDistance(a_this) < JREG_F(0) + 100.0f) {
        cXyz sp78, sp84;
        cLib_addCalcAngleS2(&i_this->field_0x676.y, fopAcM_searchPlayerAngleY(a_this), 32, 128);
    }

    if (i_this->mSph.ChkCoHit()) {
        cXyz* cc_move_p = i_this->mStts.GetCCMoveP();
        if (cc_move_p != NULL) {
            cLib_addCalc2(&a_this->speed.x, cc_move_p->x * (WREG_F(15) + 0.5f), 0.1f, WREG_F(14) + 1.0f);
            cLib_addCalc2(&a_this->speed.z, cc_move_p->z * (WREG_F(15) + 0.5f), 0.1f, WREG_F(14) + 1.0f);
            cLib_addCalc2(&i_this->field_0x694, WREG_F(16) + 1500.0f, 0.1f, 130.0f);
        }
    }
}

/* 80C1A748-80C1AF80 001208 0838+00 1/1 0/0 0/0 .text            action__FP12obj_hb_class */
static void action(obj_hb_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp5c, sp68;
    s8 sVar1 = 0;

    i_this->mSph.SetR((JREG_F(3) + 25.0f) * a_this->scale.x);

    switch (i_this->mAction) {
        case 0:
            obj_hb_set(i_this);
            i_this->field_0x674 = 3;
            break;

        case 1:
            obj_hb_drop(i_this);
            i_this->field_0x6b4 = a_this->speed.y;

            if (i_this->field_0x6b0 == 0 && i_this->mSph.ChkCoHit()) {
                cXyz* cc_move_p = i_this->mStts.GetCCMoveP();
                if (cc_move_p != NULL) {
                    a_this->current.pos.x += cc_move_p->x * 0.5f;
                    a_this->current.pos.z += cc_move_p->z * 0.5f;
                    
                    if (fabsf(cc_move_p->x) >= 2.0f || fabsf(cc_move_p->z) >= 2.0f) {
                        cLib_addCalc2(&i_this->field_0x688, NREG_F(5) + 1000.0f, 0.1f, NREG_F(6) + 200.0f);
                        s16 target = fopAcM_searchPlayerAngleY(a_this);
                        s16 sVar1 = i_this->field_0x676.y - target;
                        if (sVar1 > 0x4000 || sVar1 < -0x4000) {
                            target -= 0x8000;
                        }
                        cLib_addCalcAngleS2(&i_this->field_0x676.y, target, 4, 0x100);
                    }
                }
            }

            i_this->mBgc.CrrPos(dComIfG_Bgsp());
            sVar1 = 1;
            break;
        
        case 2:
            obj_hb_float(i_this);
            i_this->mBgc.CrrPos(dComIfG_Bgsp());
            break;

        case 3:
            obj_hb_carry(i_this);
            i_this->field_0x674 = 3;
            i_this->mBgc.CrrPos(dComIfG_Bgsp());
            break;
    }

    if (i_this->field_0x674 == 0 && i_this->mSph.ChkTgHit()) {
        i_this->field_0x674 = 4;
        i_this->mAtInfo.mpCollider = i_this->mSph.GetTgHitObj();
        def_se_set(&i_this->mSound, i_this->mAtInfo.mpCollider, 41, NULL);
        a_this->current.angle.y = fopAcM_searchPlayerAngleY(a_this) + 0x8000;
        fopAc_ac_c* actor_p = at_power_check(&i_this->mAtInfo);
        i_this->field_0x6b0 = 0;
        
        if (i_this->mAtInfo.mHitType == 1) {
            if (daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_TURN_RIGHT || daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_UNK_9) {
                a_this->speedF = WREG_F(16) + cM_rndF(10.0f) + 40.0f;
                i_this->field_0x690 = cM_rndF(2000.0f) + 5500.0f;
                i_this->field_0x688 = (s16)(cM_rndF(1000.0f) + 5000.0f);
            } else {
                a_this->speedF = WREG_F(17) + 30.0f;
                i_this->field_0x690 = cM_rndFX(3000.0f);
                i_this->field_0x688 = NREG_F(10) + 4000.0f;
            }
        } else if (i_this->mAtInfo.mHitType == 2) {
            fopAcM_createDisappear(a_this, &a_this->current.pos, 7, 0, a_this->field_0x564);
            i_this->field_0x6b1 = 1;
        } else {
            if (actor_p != NULL) {
                a_this->speedF = actor_p->speedF * 0.7f;
                a_this->current.angle.y = actor_p->current.angle.y + (s16)cM_rndFX(5000.0f);
            }

            i_this->field_0x690 = cM_rndFX(3000.0f);
            i_this->field_0x688 = NREG_F(10) + 4000.0f;
        }
    }

    if (i_this->mAction == 2) {
        cLib_addCalcAngleS2(&i_this->field_0x68c, 0, 8, 0x100);
        cLib_addCalcAngleS2(&i_this->field_0x68e, 0, 8, 0x100);
        cLib_addCalcAngleS2(&i_this->field_0x690, 0, 1, WREG_S(6) + 0x96);
    } else {
        i_this->field_0x68c = i_this->field_0x688 * cM_ssin(i_this->field_0x650 * (NREG_F(3) + 3000));
        i_this->field_0x68e = i_this->field_0x688 * cM_ssin(i_this->field_0x650 * (NREG_F(4) + 4000));
        cLib_addCalc0(&i_this->field_0x688, 0.1f, NREG_F(1) + 50.0f);
        cLib_addCalcAngleS2(&i_this->field_0x690, 0, 1, WREG_S(5) + 0x32);
    }

    if (sVar1 && water_check(i_this)) {
        i_this->mAction = 2;
        i_this->mMode = 0;
        i_this->mSph.OffAtSetBit();

        if (a_this->speedF < 5.0f) {
            cMtx_YrotS(*calc_mtx, a_this->current.angle.y);
            sp5c.x = 0.0f;
            sp5c.y = -2.0f;
            sp5c.z = 2.5f;
            MtxPosition(&sp5c, &a_this->speed);
        } else {
            a_this->current.pos.y = i_this->field_0x680 - WREG_F(11);
            a_this->speed.y = WREG_F(12) + -12.0f;
            a_this->speed.x *= 0.5f;
            a_this->speed.z *= 0.5f;
            i_this->field_0x694 = 3000.0f;
        }

        a_this->speedF = 0.0f;
        cXyz scale(a_this->scale.x, a_this->scale.x, a_this->scale.x);
        cXyz pos(a_this->current.pos);
        pos.y = i_this->field_0x680;

        static u16 w_eff_id[4] = {
            0x01B8, 0x01B9, 0x01BA, 0x01BB,
        };

        for (int i = 0; i < 4; i++) {
            i_this->field_0xa70[i] = dComIfGp_particle_set(i_this->field_0xa70[i], w_eff_id[i], &pos, &a_this->tevStr,
                                                           &a_this->shape_angle, &scale, 0xFF, NULL, -1, NULL, NULL, NULL);
        }

        i_this->mSound.startCreatureSound(Z2SE_CM_BODYFALL_WATER_S, 0, -1);
    }

    if (i_this->field_0x6a4 != 0) {
        i_this->field_0x6a4--;
        if (i_this->field_0x6a4 != 0) {
            cLib_addCalc2(&a_this->scale.x, i_this->field_0x6a4 * (BREG_F(2) + 0.01f) * cM_ssin(i_this->field_0x6a4 * (KREG_S(3) + 15000)) + 1.0f, 1.0f, 0.2f);
        } else {
            a_this->scale.x = 1.0f;
        }
    }

    mDoMtx_stack_c::transS(a_this->current.pos.x, a_this->current.pos.y, a_this->current.pos.z);
    mDoMtx_stack_c::YrotM(i_this->field_0x676.y);
    mDoMtx_stack_c::XrotM(i_this->field_0x68c + i_this->field_0x676.x);
    mDoMtx_stack_c::ZrotM(i_this->field_0x676.z + i_this->field_0x68e);
    mDoMtx_stack_c::transM(0.0f, JREG_F(17) + 30.0f, 0.0f);
    mDoMtx_stack_c::XrotM(a_this->shape_angle.x);
    mDoMtx_stack_c::transM(0.0f, -(JREG_F(17) + 30.0f), 0.0f);
    mDoMtx_stack_c::scaleM(a_this->scale.x, a_this->scale.x, a_this->scale.x);
    i_this->mpModel->setBaseTRMtx(mDoMtx_stack_c::get());

    cXyz sp8c;
    cMtx_XrotS(*calc_mtx, i_this->field_0x676.z);
    sp5c.x = 0.0f;
    sp5c.y = a_this->scale.x * 30.0f;
    sp5c.z = 0.0f;
    MtxPosition(&sp5c, &sp8c);
    sp8c += a_this->current.pos;

    if (i_this->field_0x674 != 0) {
        sp8c.y += 20000.0f;
    }

    i_this->mSph.SetC(sp8c);
    dComIfG_Ccsp()->Set(&i_this->mSph);

    e_hb_leaf_class* hb_leaf_p = (e_hb_leaf_class*)fopAcM_SearchByID(i_this->field_0x6a8);
    if (hb_leaf_p != NULL) {
        hb_leaf_p->mpMorf->setPlaySpeed(i_this->field_0x6ac);
        hb_leaf_p->mpMorf->play(NULL, 0, 0);
    }

    if (i_this->field_0x684 == 0) {
        cLib_addCalcAngleS2(&a_this->shape_angle.x, 0, 4, 0x800);
    } else {
        a_this->shape_angle.x += i_this->field_0x684;
        i_this->field_0x684 = 0;
    }
}

/* 80C1AF80-80C1B124 001A40 01A4+00 2/1 0/0 0/0 .text            daOBJ_HB_Execute__FP12obj_hb_class
 */
static void daOBJ_HB_Execute(obj_hb_class* i_this) {
    // NONMATCHING
}

/* 80C1B124-80C1B12C 001BE4 0008+00 1/0 0/0 0/0 .text            daOBJ_HB_IsDelete__FP12obj_hb_class
 */
static bool daOBJ_HB_IsDelete(obj_hb_class* i_this) {
    return true;
}

/* ############################################################################################## */
/* 80C1B700-80C1B700 000100 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C1B700 = "E_HB";
#pragma pop

/* 80C1B12C-80C1B188 001BEC 005C+00 1/0 0/0 0/0 .text            daOBJ_HB_Delete__FP12obj_hb_class
 */
static void daOBJ_HB_Delete(obj_hb_class* i_this) {
    // NONMATCHING
}

/* 80C1B188-80C1B1F4 001C48 006C+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C1B6FC-80C1B700 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4457 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4457 = 65535.0f;
COMPILER_STRIP_GATE(0x80C1B6FC, &lit_4457);
#pragma pop

/* 80C1B710-80C1B750 000008 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4381 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{AT_TYPE_1000, 0x3, 0xd}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_WOOD, 0x0, 0x1, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_STONE, 0x2, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80C1B750-80C1B770 -00001 0020+00 1/0 0/0 0/0 .data            l_daOBJ_HB_Method */
static actor_method_class l_daOBJ_HB_Method = {
    (process_method_func)daOBJ_HB_Create__FP10fopAc_ac_c,
    (process_method_func)daOBJ_HB_Delete__FP12obj_hb_class,
    (process_method_func)daOBJ_HB_Execute__FP12obj_hb_class,
    (process_method_func)daOBJ_HB_IsDelete__FP12obj_hb_class,
    (process_method_func)daOBJ_HB_Draw__FP12obj_hb_class,
};

/* 80C1B770-80C1B7A0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_HB */
extern actor_process_profile_definition g_profile_OBJ_HB = {
  fpcLy_CURRENT_e,       // mLayerID
  8,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_OBJ_HB,           // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(obj_hb_class),  // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  705,                   // mPriority
  &l_daOBJ_HB_Method,    // sub_method
  0x00040100,            // mStatus
  fopAc_ACTOR_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

/* 80C1B7A0-80C1B7AC 000098 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80C1B7AC-80C1B7B8 0000A4 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C1B7B8-80C1B7DC 0000B0 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C1B5F0,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C1B5E8,
};

/* 80C1B1F4-80C1B4E8 001CB4 02F4+00 1/0 0/0 0/0 .text            daOBJ_HB_Create__FP10fopAc_ac_c */
static void daOBJ_HB_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C1B4E8-80C1B530 001FA8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80C1B530-80C1B578 001FF0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C1B578-80C1B5E8 002038 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80C1B5E8-80C1B5F0 0020A8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80C1B5E8() {
    // NONMATCHING
}

/* 80C1B5F0-80C1B5F8 0020B0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80C1B5F0() {
    // NONMATCHING
}

/* 80C1B700-80C1B700 000100 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
