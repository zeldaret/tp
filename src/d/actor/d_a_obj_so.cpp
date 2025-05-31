/**
 * @file d_a_obj_so.cpp
 * 
*/

#include "d/actor/d_a_obj_so.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_camera.h"
#include "d/d_com_inf_game.h"
#include "d/d_bg_w.h"
#include "d/actor/d_a_obj_pillar.h"
#include "d/actor/d_a_player.h"



//
// Forward References:
//

extern "C" void __ct__14daObj_So_HIO_cFv();
extern "C" static void daObj_So_Draw__FP12obj_so_class();
extern "C" static void ride_call_back_0__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" static void ride_call_back_1__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" static void so_hasira__FP12obj_so_class();
extern "C" static void part_set__FP12obj_so_classSc();
extern "C" void __dt__4cXyzFv();
extern "C" static void so_drop__FP12obj_so_class();
extern "C" void __dt__5csXyzFv();
extern "C" static void so_break__FP12obj_so_class();
extern "C" static void so_hang__FP12obj_so_class();
extern "C" static void action__FP12obj_so_class();
extern "C" static void part_move__FP12obj_so_class();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" static void demo_camera__FP12obj_so_class();
extern "C" static void daObj_So_Execute__FP12obj_so_class();
extern "C" static bool daObj_So_IsDelete__FP12obj_so_class();
extern "C" static void daObj_So_Delete__FP12obj_so_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daObj_So_Create__FP10fopAc_ac_c();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__14daObj_So_HIO_cFv();
extern "C" void __sinit_d_a_obj_so_cpp();
extern "C" static void func_80CE39AC();
extern "C" static void func_80CE39B4();
extern "C" static void func_80CE39BC();
extern "C" static void func_80CE39C4();
extern "C" static void func_80CE39CC();
extern "C" extern char const* const d_a_obj_so__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void mDoMtx_MtxToRot__FPA4_CfP5csXyz();
extern "C" void push__14mDoMtx_stack_cFv();
extern "C" void pop__14mDoMtx_stack_cFv();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void forceOnEventMove__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzsf();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxTrans__FfffUc();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void setBattleBgmOff__8Z2SeqMgrFb();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void stopAnime__10Z2CreatureFv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_14();
extern "C" void _savegpr_18();
extern "C" void _savegpr_23();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_14();
extern "C" void _restgpr_18();
extern "C" void _restgpr_23();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 80CE3B70-80CE3B78 000000 0006+02 1/1 0/0 0/0 .data            e_id$4326 */
SECTION_DATA static u8 e_id[6 + 2 /* padding */] = {
    0x82,
    0xAB,
    0x82,
    0xAC,
    0x82,
    0xAD,
    /* padding */
    0x00,
    0x00,
};

/* 80CE3C0C-80CE3C18 00009C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80CE3C18-80CE3C24 0000A8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80CE3C24-80CE3C48 0000B4 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CE39CC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CE39C4,
};

/* 80CE3C48-80CE3C78 0000D8 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CE39AC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CE39BC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CE39B4,
};

/* 80CE3C78-80CE3C84 000108 000C+00 2/2 0/0 0/0 .data            __vt__14daObj_So_HIO_c */
SECTION_DATA extern void* __vt__14daObj_So_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daObj_So_HIO_cFv,
};

/* 80CE03CC-80CE03F0 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__14daObj_So_HIO_cFv */
daObj_So_HIO_c::daObj_So_HIO_c() {
    field_0x4 = -1;
    mScale = 0.8f;
}

/* 80CE03F0-80CE04FC 000110 010C+00 1/0 0/0 0/0 .text            daObj_So_Draw__FP12obj_so_class */
static int daObj_So_Draw(obj_so_class* i_this) {
    // NONMATCHING
    fopAc_ac_c* a_this = &i_this->actor;

    g_env_light.settingTevStruct(16, &a_this->current.pos, &a_this->tevStr);

    if (a_this->health != 0) {
        g_env_light.setLightTevColorType_MAJI(i_this->field_0x574, &a_this->tevStr);
        mDoExt_modelUpdateDL(i_this->field_0x574);
    }

    for (int i = 0; i < 26; i++) {
        if (i_this->field_0x5fc[i] != 0) {
            g_env_light.setLightTevColorType_MAJI(i_this->field_0x594[i], &a_this->tevStr);
            mDoExt_modelUpdateDL(i_this->field_0x594[i]);

            if (i_this->field_0xdae != 1 && i >= 2) {
                if (i < 10 && i_this->field_0x1a98[i] != 0) {
                    g_env_light.setLightTevColorType_MAJI(i_this->field_0x1aa0[i], &a_this->tevStr);
                    mDoExt_modelUpdateDL(i_this->field_0x1aa0[i]);
                }
            }
        }
    }

    return 1;
}

/* 80CE04FC-80CE0510 00021C 0014+00 1/1 0/0 0/0 .text            ride_call_back_0__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c */
static void ride_call_back_0(dBgW* i_BgW, fopAc_ac_c* a_this, fopAc_ac_c* param_3) {
    obj_so_class* i_this = (obj_so_class*)a_this;

    i_this->field_0xa28[0].x = 0;
    i_this->field_0xc30[0] = 3;
}

/* 80CE0510-80CE0524 000230 0014+00 1/1 0/0 0/0 .text            ride_call_back_1__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c */
static void ride_call_back_1(dBgW* i_BgW, fopAc_ac_c* a_this, fopAc_ac_c* param_3) {
    obj_so_class* i_this = (obj_so_class*)a_this;

    i_this->field_0xa28[1].x = 0;
    i_this->field_0xc30[1] = 3;
}

/* 80CE0524-80CE0744 000244 0220+00 1/1 0/0 0/0 .text            so_hasira__FP12obj_so_class */
static void so_hasira(obj_so_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;
    daPillar_c* pillar_p = (daPillar_c*)fopAcM_SearchByName(PROC_Obj_Pillar);
    if (pillar_p != NULL) {
        mDoMtx_stack_c::transS(pillar_p->current.pos.x, pillar_p->current.pos.y, pillar_p->current.pos.z);
        mDoMtx_stack_c::YrotM(pillar_p->mRotY);
        mDoMtx_stack_c::XrotM(pillar_p->shape_angle.x);
        mDoMtx_stack_c::YrotM(-pillar_p->mRotY);
        mDoMtx_stack_c::transM(0.0f, 510.0f, 0.0f);

        mDoMtx_multVecZero(mDoMtx_stack_c::get(), &a_this->current.pos);
        a_this->shape_angle.y = -0x5000;
        i_this->field_0xdc2 = -i_this->field_0xdc8 * cM_ssin(i_this->field_0xdac * 0xF00);
        cLib_addCalc0(&i_this->field_0xdc8, 0.1f, 33.0f);

        if (i_this->field_0xdb2[0] == 1 && !dComIfGp_event_runCheck() && i_this->field_0xdc0 == 0) {
            i_this->field_0xdc0++;
        }

        if (daPy_getPlayerActorClass()->checkFrontRollCrash() && fopAcM_searchPlayerDistanceXZ(a_this) < 200.0f) {
            OS_REPORT("OBJ_SO HA HIT \n");
            i_this->field_0xdb2[0] = 20;
            i_this->field_0xdc4 = 1;
            if (i_this->field_0xdc0 != 0 && a_this->shape_angle.x > 0x100) {
                i_this->field_0xdc0++;
                if (i_this->field_0xdc0 >= 2) {
                    i_this->field_0xdae = 1;
                    i_this->field_0xdb0 = 0;
                    i_this->field_0x1ba0 = 1;
                    i_this->field_0xdbe = 0;
                    a_this->shape_angle.x = 0;
                    i_this->field_0xdb2[0] = 18;
                    return;
                }
            }
        }

        i_this->field_0xdbe += 5000;
        s16 target = pillar_p->shape_angle.x << 1;
        if (a_this->shape_angle.x < target) {
            a_this->shape_angle.x = target;
        } else {
            cLib_addCalcAngleS2(&a_this->shape_angle.x, target, 16, 20);
        }
    }
}

/* 80CE0744-80CE0C54 000464 0510+00 4/4 0/0 0/0 .text            part_set__FP12obj_so_classSc */
static void part_set(obj_so_class* i_this, s8 param_2) {
    // NONMATCHING
    fopAc_ac_c* a_this = &i_this->actor;
    cXyz sp48, sp54;

    mDoMtx_stack_c::transS(a_this->current.pos.x, a_this->current.pos.y, a_this->current.pos.z);
    mDoMtx_stack_c::YrotM(a_this->shape_angle.y);
    mDoMtx_stack_c::XrotM(a_this->shape_angle.x);

    f32 scale = a_this->scale.x;
    mDoMtx_stack_c::scaleM(scale, scale, scale);
    
    int sVar8, sVar7, sVar6, sVar5, sVar4 = 0;
    for (int i = 0; i < 26; i++) {
        mDoMtx_stack_c::push();
        if (i < 2) {
            sp48.x = 0.0f;
            if (i == 0) {
                sp48.y = 210.0f;
            } else {
                sp48.y = 0.0f;
            }
            sp48.z = 0.0f;
            mDoMtx_stack_c::multVec(&sp48, &i_this->field_0x618[i]);
            i_this->field_0x7b8[i].set(0.8f, 1.0f, 0.8f);
            i_this->field_0xa28[i].y = a_this->shape_angle.y;
            if (i_this->field_0x570 != 1) {
                i_this->field_0xa28[i].x = a_this->shape_angle.x + (int)cM_rndFX(4000.0f);
            }
        } else if (i < 10) {
            mDoMtx_stack_c::YrotM(sVar4 + -0xF18);
            sp48.x = 0.0f;
            sp48.y = 110.0f;
            sp48.z = 90.0f;
            mDoMtx_stack_c::multVec(&sp48, &i_this->field_0x618[i]);
            i_this->field_0x7b8[i].set(1.0f, 2.0f, 1.0f);
            i_this->field_0xa28[i].y = a_this->shape_angle.y;
            i_this->field_0xa28[i].x = a_this->shape_angle.x;

            if (i_this->field_0x1a98[i] != 0) {
                i_this->field_0x7b8[i].y = 1.0f;
                i_this->field_0x618[i].y += 60.0f;
            }
        } else {
            mDoMtx_stack_c::YrotM(sVar4 + 0x4718);
            sp48.x = 0.0f;
            if (i <= 17) {
                scale = 205.0f;
            } else {
                scale = -5.0f;
            }
            sp48.y = scale;
            if ((i & 1) != 0) {
                sp48.y += 8.0f;
            }
            sp48.z = 95.0f;

            mDoMtx_stack_c::multVec(&sp48, &i_this->field_0x618[i]);
            i_this->field_0xa28[i].y = a_this->shape_angle.y;
            i_this->field_0xa28[i].x = a_this->shape_angle.x;
            i_this->field_0xb60[i] = sVar4 + 0x4CE;
            i_this->field_0x7b8[i].set(1.0f, 0.8f, 1.0f);
        }

        mDoMtx_stack_c::pop();
        i_this->field_0x5fc[i] = param_2;
        if (param_2 == 1) {
            sp48.x = 0.0f;
            i_this->field_0xc30[i] = 0;
            if (i_this->field_0x570 != 1) {
                if (fopAcM_GetRoomNo(a_this) == 4) {
                    if (i < 2) {
                        cMtx_YrotS(*calc_mtx, sVar5 + 0x1EFF);
                    } else {
                        cMtx_YrotS(*calc_mtx, sVar6 + 0x253B);
                        i_this->field_0xbfc[i] = cM_rndFX(6000.0f);
                    }

                    sp48.y = cM_rndF(5.0f) + 30.0f;
                    sp48.z = cM_rndFX(5.0f) + 20.0f;
                } else {
                    if (i < 2) {
                        cMtx_YrotS(*calc_mtx, sVar7 + -0x2000);
                    } else if (i < 10) {
                        cMtx_YrotS(*calc_mtx, sVar5 + 0xAAA);
                        i_this->field_0xbfc[i] = cM_rndFX(4000.0f);
                    } else {
                        cMtx_YrotS(*calc_mtx, sVar8 + 0x1554);
                        i_this->field_0xbfc[i] = cM_rndFX(6000.0f);
                    }

                    sp48.y = cM_rndF(20.0f) + 20.0f;
                    sp48.z = cM_rndFX(6.0f) + 15.0f;
                }
            } else {
                if (i < 2) {
                    cMtx_YrotS(*calc_mtx, sVar7 + 0x6000);
                } else {
                    cMtx_YrotS(*calc_mtx, cM_rndFX(32768.0f));
                    i_this->field_0xbfc[i] = cM_rndFX(1000.0f);
                }

                if (i == 1) {
                    sp48.z = 0.0f;
                    sp48.y = 0.0f;
                } else {
                    sp48.y = cM_rndF(5.0f) + 10.0f;
                    sp48.z = cM_rndFX(4.0f) + 15.0f;
                }
            }

            MtxPosition(&sp48, &i_this->field_0x8f0[i]);
            i_this->field_0xbc8[i] = cM_rndFX(32768.0f);
        }

        sVar8 += 0x1000;
        sVar7 += -0x8000;
        sVar6 += 500;
        sVar5 += 0x2000;
        sVar4 += 0x1F9C;
    }
}

/* 80CE0C90-80CE0F58 0009B0 02C8+00 1/1 0/0 0/0 .text            so_drop__FP12obj_so_class */
static void so_drop(obj_so_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;
    cXyz sp30, sp3c;
    s8 sVar2 = 0;
    s8 sVar1 = 1;

    switch (i_this->field_0xdb0) {
        case 0:
            a_this->speed.y = 30.0f;
            a_this->speedF = -10.0f;
            i_this->field_0xdb0 = 1;
            break;

        case 1:
            if (i_this->field_0xdb2[0] != 0) {
                sVar1 = 0;
            }
            
            cLib_addCalcAngleS2(&a_this->shape_angle.x, -0x4000, 4, 0x300);
            if (sVar1 && i_this->mObjAcch.ChkGroundHit()) {
                dComIfGs_onSwitch(fopAcM_GetParam(a_this) >> 16 & 0xFF, fopAcM_GetRoomNo(a_this));
                a_this->health = 0;
                i_this->field_0xdb0 = 2;
                sVar2 = 1;
                i_this->field_0x1054 = 1;
            }
            break;

        case 2:
            a_this->speed.y = 0.0f;
            a_this->speedF = 0.0f;
    }

    cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
    sp30.x = 0.0f;
    sp30.y = 0.0f;
    sp30.z = a_this->speedF;
    MtxPosition(&sp30, &sp3c);

    a_this->speed.x = sp3c.x;
    a_this->speed.z = sp3c.z;
    a_this->current.pos += a_this->speed;
    a_this->speed.y -= 5.0f;

    if (sVar1) {
        f32 fVar1 = 90.0f * cM_ssin(a_this->shape_angle.x);
        a_this->current.pos.y += fVar1;
        a_this->old.pos.y += fVar1;
        i_this->mObjAcch.CrrPos(dComIfG_Bgsp());
        a_this->current.pos.y -= fVar1;
        a_this->old.pos.y -= fVar1;
    }

    if (sVar2) {
        part_set(i_this, 1);
        mDoAud_seStart(Z2SE_OBJ_MONKEYJAIL_BREAK, 0, 0, 0);
        csXyz cStack_50(0, 0, 0);
        fopAcM_effSmokeSet1(&i_this->field_0x1b98, &i_this->field_0x1b9c, &a_this->current.pos, &cStack_50,
                            2.5f, &a_this->tevStr, 1);
        dComIfGp_particle_levelEmitterOnEventMove(i_this->field_0x1b98);
        dComIfGp_particle_levelEmitterOnEventMove(i_this->field_0x1b9c);
        dComIfGp_getVibration().StartShock(5, 1, cXyz(0.0f, 1.0f, 0.0f));
        i_this->field_0x1bc0 = 30.0f;
    }
}

/* 80CE0F94-80CE1084 000CB4 00F0+00 1/1 0/0 0/0 .text            so_break__FP12obj_so_class */
static void so_break(obj_so_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;
    cXyz sp2c, sp38;
    switch (i_this->field_0xdb0) {
        case 0:
            i_this->field_0xdb0 = 1;
            part_set(i_this, 2);
            a_this->health = 0;
            // fallthrough
        case 1:
        default:
            a_this->eyePos = a_this->current.pos;
            a_this->eyePos.y += 90.0f;
            a_this->attention_info.position = a_this->eyePos;
            i_this->field_0xdc2 = -i_this->field_0xdc8 * cM_ssin(i_this->field_0xdac * 0xF00);
            cLib_addCalc0(&i_this->field_0xdc8, 0.1f, 33.0f);
    }
}

/* 80CE1084-80CE12D8 000DA4 0254+00 1/1 0/0 0/0 .text            so_hang__FP12obj_so_class */
static void so_hang(obj_so_class* i_this) {
    // NONMATCHING
    fopAc_ac_c* a_this = &i_this->actor;
    fopAc_ac_c* actor = fopAcM_SearchByID(i_this->field_0x1b94);

    switch (i_this->field_0xdb0) {
        case 0:
            if (actor != NULL) {
                i_this->field_0xdb2[0] = 20;
                i_this->field_0xdb0 = 1;
            }
            break;

        case 1:
            if (i_this->field_0xdb2[0] == 0 && !dComIfGp_event_runCheck()) {
                if (i_this->field_0x1b60 == 0) {
                    i_this->field_0xdb0 = 2;
                }

                i_this->field_0xdc2 = -i_this->field_0xdc8 * cM_ssin(i_this->field_0xdac * 0xF00);
                cLib_addCalc0(&i_this->field_0xdc8, 0.1f, 33.0f);
            }
            break;

        case 2:
            a_this->current.pos.y += a_this->speed.y;
            a_this->speed.y -= 5.0f;
            i_this->mObjAcch.CrrPos(dComIfG_Bgsp());
            if (i_this->mObjAcch.ChkGroundHit()) {
                dComIfGs_onSwitch(fopAcM_GetParam(a_this) >> 16 & 0xFF, fopAcM_GetRoomNo(a_this));
                a_this->health = 0;
                i_this->field_0x1054 = 1;
                i_this->field_0xdb0 = 3;
                part_set(i_this, 1);
                mDoAud_seStart(Z2SE_OBJ_MONKEYJAIL_BREAK, 0, 0, 0);
                csXyz cStack_38(0, 0, 0);
                fopAcM_effSmokeSet1(&i_this->field_0x1b98, &i_this->field_0x1b9c, &a_this->current.pos, &cStack_38,
                                    2.5f, &a_this->tevStr, 1);
                dComIfGp_particle_levelEmitterOnEventMove(i_this->field_0x1b98);
                dComIfGp_particle_levelEmitterOnEventMove(i_this->field_0x1b9c);
                dComIfGp_getVibration().StartShock(5, 1, cXyz(0.0f, 1.0f, 0.0f));
            }
    }
}

/* 80CE12D8-80CE14DC 000FF8 0204+00 1/1 0/0 0/0 .text            action__FP12obj_so_class */
static void action(obj_so_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;
    cXyz sp38;

    if (i_this->field_0x1056 != 0) {
        i_this->field_0x1056--;
    }

    switch (i_this->field_0xdae) {
        case 0:
            so_hasira(i_this);
            break;

        case 1:
            so_drop(i_this);
            break;

        case 2:
           so_break(i_this);
           break;

        case 3:
            so_hang(i_this);
    }

    if (a_this->health != 0) {
        if (i_this->field_0x1b60 != 0) {
            MTXCopy(i_this->mMtx, *calc_mtx);
            MtxTrans(0.0f, -60.0f, 0.0f, 1);
            MtxTrans(0.0f, 200.0f, 0.0f, 1);
            cMtx_XrotM(*calc_mtx, i_this->field_0xdc2);
            mDoMtx_MtxToRot(*calc_mtx, &a_this->shape_angle);
            MtxTrans(0.0f, -200.0f, 0.0f, 1);
            i_this->field_0x574->setBaseTRMtx(*calc_mtx);
            sp38.set(0.0f, 0.0f, 0.0f);
            MtxPosition(&sp38, &a_this->current.pos);
            i_this->field_0x1b60 = 0;
        } else {
            mDoMtx_stack_c::transS(a_this->current.pos.x, a_this->current.pos.y, a_this->current.pos.z);
            mDoMtx_stack_c::YrotM(i_this->field_0xdbe);
            mDoMtx_stack_c::YrotM(a_this->shape_angle.y);
            mDoMtx_stack_c::XrotM(a_this->shape_angle.x + i_this->field_0xdc2);
            mDoMtx_stack_c::YrotM(-i_this->field_0xdbe);
            f32 scale = a_this->scale.x;
            mDoMtx_stack_c::scaleM(scale, scale, scale);
            i_this->field_0x574->setBaseTRMtx(mDoMtx_stack_c::get());
        }
    }
}

/* ############################################################################################## */
/* 80CE3A68-80CE3A6C 000080 0004+00 0/1 0/0 0/0 .rodata          @4943 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4943 = 12000.0f;
COMPILER_STRIP_GATE(0x80CE3A68, &lit_4943);
#pragma pop

/* 80CE3A6C-80CE3A70 000084 0004+00 0/1 0/0 0/0 .rodata          @4944 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4944 = 70.0f;
COMPILER_STRIP_GATE(0x80CE3A6C, &lit_4944);
#pragma pop

/* 80CE3A70-80CE3A74 000088 0004+00 0/2 0/0 0/0 .rodata          @4945 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4945 = 40.0f;
COMPILER_STRIP_GATE(0x80CE3A70, &lit_4945);
#pragma pop

/* 80CE3A74-80CE3A78 00008C 0004+00 0/1 0/0 0/0 .rodata          @4946 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4946 = -100.0f;
COMPILER_STRIP_GATE(0x80CE3A74, &lit_4946);
#pragma pop

/* 80CE3A78-80CE3A7C 000090 0004+00 0/1 0/0 0/0 .rodata          @4947 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4947 = 2570.0f;
COMPILER_STRIP_GATE(0x80CE3A78, &lit_4947);
#pragma pop

/* 80CE3A7C-80CE3A80 000094 0004+00 0/1 0/0 0/0 .rodata          @4948 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4948 = 2000.0f;
COMPILER_STRIP_GATE(0x80CE3A7C, &lit_4948);
#pragma pop

/* 80CE3A80-80CE3A84 000098 0004+00 0/1 0/0 0/0 .rodata          @4949 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4949 = -3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CE3A80, &lit_4949);
#pragma pop

/* 80CE3A84-80CE3A88 00009C 0004+00 0/2 0/0 0/0 .rodata          @4950 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4950 = 0.5f;
COMPILER_STRIP_GATE(0x80CE3A84, &lit_4950);
#pragma pop

/* 80CE3A88-80CE3A8C 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4951 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4951 = 400.0f;
COMPILER_STRIP_GATE(0x80CE3A88, &lit_4951);
#pragma pop

/* 80CE3A8C-80CE3A90 0000A4 0004+00 0/2 0/0 0/0 .rodata          @4952 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4952 = 300.0f;
COMPILER_STRIP_GATE(0x80CE3A8C, &lit_4952);
#pragma pop

/* 80CE3A90-80CE3A94 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4953 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4953 = -1024.0f;
COMPILER_STRIP_GATE(0x80CE3A90, &lit_4953);
#pragma pop

/* 80CE3A94-80CE3A98 0000AC 0004+00 0/2 0/0 0/0 .rodata          @4954 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4954 = 500.0f;
COMPILER_STRIP_GATE(0x80CE3A94, &lit_4954);
#pragma pop

/* 80CE3A98-80CE3A9C 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4955 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4955 = 180.0f;
COMPILER_STRIP_GATE(0x80CE3A98, &lit_4955);
#pragma pop

/* 80CE3A9C-80CE3AA0 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4956 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4956 = -80.0f;
COMPILER_STRIP_GATE(0x80CE3A9C, &lit_4956);
#pragma pop

/* 80CE3AA0-80CE3AA4 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4957 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4957 = 165.0f;
COMPILER_STRIP_GATE(0x80CE3AA0, &lit_4957);
#pragma pop

/* 80CE3AA4-80CE3AA8 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4958 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4958 = -90.0f;
COMPILER_STRIP_GATE(0x80CE3AA4, &lit_4958);
#pragma pop

/* 80CE3AA8-80CE3AAC 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4959 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4959 = -87.0f;
COMPILER_STRIP_GATE(0x80CE3AA8, &lit_4959);
#pragma pop

/* 80CE3AAC-80CE3AB0 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4960 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4960 = 2500.0f;
COMPILER_STRIP_GATE(0x80CE3AAC, &lit_4960);
#pragma pop

/* 80CE3AB0-80CE3AB4 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4961 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4961 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CE3AB0, &lit_4961);
#pragma pop

/* 80CE3AB4-80CE3AB8 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4962 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4962 = 20000.0f;
COMPILER_STRIP_GATE(0x80CE3AB4, &lit_4962);
#pragma pop

/* 80CE3AB8-80CE3AC0 0000D0 0008+00 0/1 0/0 0/0 .rodata          @4963 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4963[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CE3AB8, &lit_4963);
#pragma pop

/* 80CE3AC0-80CE3AC8 0000D8 0008+00 0/1 0/0 0/0 .rodata          @4964 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4964[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CE3AC0, &lit_4964);
#pragma pop

/* 80CE3AC8-80CE3AD0 0000E0 0008+00 0/1 0/0 0/0 .rodata          @4965 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4965[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CE3AC8, &lit_4965);
#pragma pop

/* 80CE3AD0-80CE3AD4 0000E8 0004+00 0/3 0/0 0/0 .rodata          @4966 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4966 = 50.0f;
COMPILER_STRIP_GATE(0x80CE3AD0, &lit_4966);
#pragma pop

/* 80CE3AD4-80CE3AD8 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4967 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4967 = 100.0f;
COMPILER_STRIP_GATE(0x80CE3AD4, &lit_4967);
#pragma pop

/* 80CE3AD8-80CE3ADC 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4968 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4968 = 9.0f / 20.0f;
COMPILER_STRIP_GATE(0x80CE3AD8, &lit_4968);
#pragma pop

/* 80CE3ADC-80CE3AE0 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4969 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4969 = -20.0f;
COMPILER_STRIP_GATE(0x80CE3ADC, &lit_4969);
#pragma pop

/* 80CE3AE0-80CE3AE4 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4970 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4970 = 80.0f;
COMPILER_STRIP_GATE(0x80CE3AE0, &lit_4970);
#pragma pop

/* 80CE3AE4-80CE3AE8 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4971 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4971 = 77.0f;
COMPILER_STRIP_GATE(0x80CE3AE4, &lit_4971);
#pragma pop

/* 80CE3AE8-80CE3AF0 000100 0004+04 0/1 0/0 0/0 .rodata          @4972 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4972[1 + 1 /* padding */] = {
    -30.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80CE3AE8, &lit_4972);
#pragma pop

/* 80CE3AF0-80CE3AF8 000108 0008+00 0/1 0/0 0/0 .rodata          @4979 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4979[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CE3AF0, &lit_4979);
#pragma pop

/* 80CE3B60-80CE3B60 000178 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CE3B60 = "F_SP108";
#pragma pop

/* 80CE14DC-80CE2A64 0011FC 1588+00 1/1 0/0 0/0 .text            part_move__FP12obj_so_class */
static void part_move(obj_so_class* i_this) {
    // NONMATCHING
    fopAc_ac_c* a_this = &i_this->actor;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz spec, spf8, sp104;
    csXyz cStack_13c(0, 0, 0);
    dBgS_ObjGndChk cStack_e0;
    f32 fVar1;

    for (int i = 0; i < 26; i++) {
        if (i_this->field_0x5fc[i] != 0) {
            if (i_this->field_0x5fc[i] == 1) {
                if (i < 2) {
                    if (i_this->field_0xc30[i] != 0) {
                        cLib_addCalcAngleS2(&i_this->field_0xa28[i].x, 0, 2, 300);
                        i_this->field_0xbc8[i] += cM_scos(i_this->field_0xa28[i].y) * 12000.0f;
                    }

                    fVar1 = fabsf(70.0f * cM_ssin(i_this->field_0xa28[i].y)) + 5.0f;
                } else if (i < 10) {
                    cLib_addCalcAngleS2(&i_this->field_0xa28[i].y, i_this->field_0xbc8[i], 1, 0x800);
                    if (i_this->field_0xc30[i] == 0) {
                        i_this->field_0xa28[i].x += i_this->field_0xbfc[i];
                    } else {
                        cLib_addCalcAngleS2(&i_this->field_0xa28[i].x, -0x4000, 1, 0xC00);
                    }

                    fVar1 = fabsf(110.0f * cM_ssin(i_this->field_0xa28[i].y)) + 5.0f;
                } else {
                    cLib_addCalcAngleS2(&i_this->field_0xa28[i].y, i_this->field_0xbc8[i], 1, 0x800);
                    if (i_this->field_0xc30[i] == 0) {
                        i_this->field_0xa28[i].x += i_this->field_0xbfc[i];
                    } else {
                        cLib_addCalcAngleS2(&i_this->field_0xa28[i].x, 0, 1, 0xC00);
                    }

                    cLib_addCalcAngleS2(&i_this->field_0xbc8[i], 0, 1, 0xC00);
                    fVar1 = fabsf(40.0f * cM_ssin(i_this->field_0xa28[i].y)) + 5.0f;
                }

                i_this->field_0x618[i] += i_this->field_0x8f0[i];
                i_this->field_0x8f0[i].y -= 5.0f;
                if (i_this->field_0x8f0[i].y < -100.0f) {
                    i_this->field_0x8f0[i].y = -100.0f;
                }

                if (!dComIfGp_event_runCheck() && fopAcM_GetRoomNo(a_this) == 19 && i_this->field_0x618[i].y < 2570.0f) {
                    i_this->field_0x5fc[i] = 0;
                }

                if (fopAcM_GetRoomNo(a_this) == 2) {
                    if (strcmp(dComIfGp_getStartStageName(), "F_SP108") != 0) {
                        spf8 = i_this->field_0x618[i];
                        spf8.y += 110.0f;
                        cStack_e0.SetPos(&spf8);
                        a_this->home.pos.y = dComIfG_Bgsp().GroundCross(&cStack_e0);
                    }
                }

                if (i_this->field_0x618[i].y <= a_this->home.pos.y + fVar1) {
                    i_this->field_0x618[i].y = a_this->home.pos.y + fVar1;
                    if (i_this->field_0x8f0[i].y >= 0.0f || i_this->field_0xc30[i] > 2) {
                        i_this->field_0x8f0[i].y = -10.0f;
                        i_this->field_0x8f0[i].z = 0.0f;
                        i_this->field_0x8f0[i].x = 0.0f;
                        if (daPy_getPlayerActorClass()->checkFrontRollCrash()) {
                            spec.x = player->current.pos.x - i_this->field_0x618[i].x;
                            spec.y = player->current.pos.y - i_this->field_0x618[i].y;
                            spec.z = player->current.pos.z - i_this->field_0x618[i].z;
                            if (spec.y > 200.0f && JMAFastSqrt(spec.x * spec.x + spec.z * spec.z) < 300.0f) {
                                if (i > 1) {
                                    i_this->field_0x8f0[i].x = cM_rndFX(10.0f);
                                    i_this->field_0x8f0[i].z = cM_rndFX(10.0f);
                                }

                                i_this->field_0x8f0[i].y = 5.0f;
                                i_this->field_0xc30[i] = 1;
                                i_this->field_0xa28[i].x = cM_rndFX(500.0f) + 1024.0f;
                            }
                        }
                    } else {
                        if (i_this->field_0xc30[i] == 0) {
                            fopAcM_effSmokeSet1(&i_this->field_0xc4c[i], &i_this->field_0xcb4[i], &i_this->field_0x618[i],
                                                &cStack_13c, 1.0f, &a_this->tevStr, 0);
                            dComIfGp_particle_levelEmitterOnEventMove(i_this->field_0xc4c[i]);
                            dComIfGp_particle_levelEmitterOnEventMove(i_this->field_0xcb4[i]);

                            if (i < 2) {
                                if (i_this->field_0x570 == 1) {
                                    if (i == 0) {
                                        i_this->field_0xa28[i].x = cM_rndFX(2000.0f) + -0x3700;
                                    } else {
                                        i_this->field_0xa28[i].x = cM_rndFX(2000.0f) + -0x1000;
                                    }
                                } else {
                                    i_this->field_0xa28[i].x = a_this->shape_angle.x + cM_rndFX(4000.0f);
                                }
                            }
                        }

                        i_this->field_0x8f0[i].y *= -0.3f;
                        i_this->field_0xc30[i]++;
                        i_this->field_0x8f0[i].x *= 0.5f;
                        i_this->field_0x8f0[i].z *= 0.5f;

                        if (i > 1) {
                            i_this->field_0xa28[i].x += cM_rndFX(i_this->field_0x8f0[i].y * 400.0f);
                            i_this->field_0xbc8[i] += cM_rndFX(i_this->field_0x8f0[i].y * 200.0f);
                        }
                    }
                }
            } else {

            }
        }
    }
}

/* ############################################################################################## */
/* 80CE3AF8-80CE3AFC 000110 0004+00 0/1 0/0 0/0 .rodata          @5077 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5077 = -550.0f;
COMPILER_STRIP_GATE(0x80CE3AF8, &lit_5077);
#pragma pop

/* 80CE3AFC-80CE3B00 000114 0004+00 0/1 0/0 0/0 .rodata          @5078 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5078 = 3300.0f;
COMPILER_STRIP_GATE(0x80CE3AFC, &lit_5078);
#pragma pop

/* 80CE3B00-80CE3B04 000118 0004+00 0/1 0/0 0/0 .rodata          @5079 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5079 = -600.0f;
COMPILER_STRIP_GATE(0x80CE3B00, &lit_5079);
#pragma pop

/* 80CE3B04-80CE3B08 00011C 0004+00 0/1 0/0 0/0 .rodata          @5080 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5080 = 12459.0f;
COMPILER_STRIP_GATE(0x80CE3B04, &lit_5080);
#pragma pop

/* 80CE3B08-80CE3B0C 000120 0004+00 0/2 0/0 0/0 .rodata          @5081 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5081 = 3152.0f;
COMPILER_STRIP_GATE(0x80CE3B08, &lit_5081);
#pragma pop

/* 80CE3B0C-80CE3B10 000124 0004+00 0/1 0/0 0/0 .rodata          @5082 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5082 = 4628.0f;
COMPILER_STRIP_GATE(0x80CE3B0C, &lit_5082);
#pragma pop

/* 80CE3B10-80CE3B14 000128 0004+00 0/1 0/0 0/0 .rodata          @5083 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5083 = 150.0f;
COMPILER_STRIP_GATE(0x80CE3B10, &lit_5083);
#pragma pop

/* 80CE3B14-80CE3B18 00012C 0004+00 0/1 0/0 0/0 .rodata          @5084 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5084 = 3602.0f;
COMPILER_STRIP_GATE(0x80CE3B14, &lit_5084);
#pragma pop

/* 80CE3B18-80CE3B1C 000130 0004+00 0/1 0/0 0/0 .rodata          @5085 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5085 = 65.0f;
COMPILER_STRIP_GATE(0x80CE3B18, &lit_5085);
#pragma pop

/* 80CE3B1C-80CE3B20 000134 0004+00 0/1 0/0 0/0 .rodata          @5086 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5086 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80CE3B1C, &lit_5086);
#pragma pop

/* 80CE3B20-80CE3B24 000138 0004+00 0/1 0/0 0/0 .rodata          @5087 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5087 = -4264.0f;
COMPILER_STRIP_GATE(0x80CE3B20, &lit_5087);
#pragma pop

/* 80CE3B24-80CE3B28 00013C 0004+00 0/1 0/0 0/0 .rodata          @5088 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5088 = 302.0f;
COMPILER_STRIP_GATE(0x80CE3B24, &lit_5088);
#pragma pop

/* 80CE3B28-80CE3B2C 000140 0004+00 0/1 0/0 0/0 .rodata          @5089 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5089 = -2330.0f;
COMPILER_STRIP_GATE(0x80CE3B28, &lit_5089);
#pragma pop

/* 80CE3B2C-80CE3B30 000144 0004+00 0/1 0/0 0/0 .rodata          @5090 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5090 = 16400.0f;
COMPILER_STRIP_GATE(0x80CE3B2C, &lit_5090);
#pragma pop

/* 80CE3B30-80CE3B34 000148 0004+00 0/1 0/0 0/0 .rodata          @5091 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5091 = 3529.0f;
COMPILER_STRIP_GATE(0x80CE3B30, &lit_5091);
#pragma pop

/* 80CE3B34-80CE3B38 00014C 0004+00 0/1 0/0 0/0 .rodata          @5092 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5092 = 8385.0f;
COMPILER_STRIP_GATE(0x80CE3B34, &lit_5092);
#pragma pop

/* 80CE3B38-80CE3B3C 000150 0004+00 0/1 0/0 0/0 .rodata          @5093 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5093 = 16200.0f;
COMPILER_STRIP_GATE(0x80CE3B38, &lit_5093);
#pragma pop

/* 80CE3B3C-80CE3B40 000154 0004+00 0/1 0/0 0/0 .rodata          @5094 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5094 = 3481.0f;
COMPILER_STRIP_GATE(0x80CE3B3C, &lit_5094);
#pragma pop

/* 80CE3B40-80CE3B44 000158 0004+00 0/1 0/0 0/0 .rodata          @5095 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5095 = 8418.0f;
COMPILER_STRIP_GATE(0x80CE3B40, &lit_5095);
#pragma pop

/* 80CE2ADC-80CE2EAC 0027FC 03D0+00 1/1 0/0 0/0 .text            demo_camera__FP12obj_so_class */
static void demo_camera(obj_so_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CE3C90-80CE3C94 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80CE3C90;

/* 80CE3CA0-80CE3CAC 000018 000C+00 3/3 0/0 0/0 .bss             l_HIO */
static daObj_So_HIO_c l_HIO;

/* 80CE2EAC-80CE2F60 002BCC 00B4+00 2/1 0/0 0/0 .text            daObj_So_Execute__FP12obj_so_class */
static int daObj_So_Execute(obj_so_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;

    i_this->field_0xdac++;
    a_this->scale.x = l_HIO.mScale;

    for (int i = 0; i < 2; i++) {
        if (i_this->field_0xdb2[i] != 0) {
            i_this->field_0xdb2[i]--;
        }
    }

    action(i_this);
    i_this->mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(a_this)));
    part_move(i_this);
    demo_camera(i_this);
    return 1;
}

/* 80CE2F60-80CE2F68 002C80 0008+00 1/0 0/0 0/0 .text            daObj_So_IsDelete__FP12obj_so_class */
static int daObj_So_IsDelete(obj_so_class* i_this) {
    return 1;
}

/* 80CE2F68-80CE3018 002C88 00B0+00 1/0 0/0 0/0 .text            daObj_So_Delete__FP12obj_so_class */
static int daObj_So_Delete(obj_so_class* i_this) {
    fopAc_ac_c* a_this = &i_this->actor;

    dComIfG_resDelete(&i_this->mPhase, "Obj_so");
    if (i_this->field_0x1bcc != 0) {
        data_80CE3C90 = 0;
        #ifdef DEBUG
        mDoHIO_deleteChild(data_80CE3C90);
        #endif
    }

    for (int i = 0; i < 2; i++) {
        if (i_this->mBgW[i] != NULL) {
            dComIfG_Bgsp().Release(i_this->mBgW[i]);
        }
    }

    if (a_this->heap != NULL) {
        i_this->mSound.stopAnime();
    }

    return 1;
}

/* 80CE3018-80CE327C 002D38 0264+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* a_this) {
    obj_so_class* i_this = (obj_so_class*)a_this;

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("Obj_so", 7);
    JUT_ASSERT(1784, modelData != 0);
    i_this->field_0x574 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (i_this->field_0x574 == NULL) {
        return 0;
    }

    for (int i = 0; i < 2; i++) {
        i_this->mBgW[i] = new dBgW();
        if (i_this->mBgW[i] == NULL) {
            return 0;
        }

        if (i_this->mBgW[i]->Set((cBgD_t*)dComIfG_getObjectRes("Obj_so", 10), 1, &i_this->mBgMtx[i]) == 1) {
            return 0;
        }

        i_this->mBgW[i]->SetCrrFunc(dBgS_MoveBGProc_Typical);
        if (i == 0) {
            i_this->mBgW[i]->SetRideCallback(ride_call_back_0);
        } else {
            i_this->mBgW[i]->SetRideCallback(ride_call_back_1);
        }
    }

    for (int i = 0; i < 26; i++) {
        if (i == 0) {
            modelData = (J3DModelData*)dComIfG_getObjectRes("Obj_so", 4);
        } else if (i == 2) {
            modelData = (J3DModelData*)dComIfG_getObjectRes("Obj_so", 5);
        }

        i_this->field_0x594[i] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (i_this->field_0x594[i] == NULL) {
            return 0;
        }
    }

    for (int i = 0; i < 8; i++) {
        i_this->field_0x1aa0[i] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (i_this->field_0x1aa0[i] == NULL) {
            return 0;
        }
    }

    i_this->mSound.init(&a_this->current.pos, &a_this->current.pos, 3, 1);
    return 1;
}

/* 80CE327C-80CE36D0 002F9C 0454+00 1/0 0/0 0/0 .text            daObj_So_Create__FP10fopAc_ac_c */
static int daObj_So_Create(fopAc_ac_c* a_this) {
    // NONMATCHING
    static dCcD_SrcCyl cc_cyl_src = {
        {
            {0x0, {{0x0, 0x0, 0x0}, {0xd8fafd3f, 0x1f}, 0x79}}, // mObj
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
            {dCcD_SE_STONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
            {0x0}, // mGObjCo
        }, // mObjInf
        {
            {0.0f, 0.0f, 0.0f}, // mCenter
            10.0f, // mRadius
            120.0f // mHeight
        } // mCyl
    };

    obj_so_class* i_this = (obj_so_class*)a_this;
    fopAcM_SetupActor(a_this, obj_so_class);

    int phase = dComIfG_resLoad(&i_this->mPhase, "Obj_so");
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("OBJ_SO PARAM %x\n", fopAcM_GetParam(a_this));
        i_this->field_0x570 = fopAcM_GetParam(a_this);
        i_this->field_0x571 = fopAcM_GetParam(a_this) >> 8;
        int swBit = fopAcM_GetParam(a_this) >> 24;
        if (swBit != 0xFF) {
            if (dComIfGs_isSwitch(swBit, fopAcM_GetRoomNo(a_this))) {
                return cPhs_ERROR_e;
            }
        }

        if (fopAcM_GetRoomNo(a_this) == 4) {
            i_this->field_0x570 = 2;
        }
        OS_REPORT("OBJ_SO//////////////OBJ_SO SET 1 !!\n");

        if (!fopAcM_entrySolidHeap(a_this, useHeapInit, 0x12560)) {
            OS_REPORT("//////////////OBJ_SO SET NON !!\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("//////////////OBJ_SO SET 2 !!\n");
        for (int i = 0; i < 2; i++) {
            if (i_this->mBgW[i] != NULL) {
                if (dComIfG_Bgsp().Regist(i_this->mBgW[i], a_this)) {
                    return cPhs_ERROR_e;
                }
            }
        }

        if (data_80CE3C90 == 0) {
            i_this->field_0x1bcc = 1;
            data_80CE3C90 = 1;
            #ifdef DEBUG
            mDoHIO_createChild("猿オリＯＢＪ", &l_HIO); // Monkey jail OBJ
            #endif
            l_HIO.field_0x4 = -1;
        }

        fopAcM_SetMtx(a_this, i_this->field_0x574->getBaseTRMtx());
        fopAcM_SetMin(a_this, -300.0f, -500.0f, -300.0f);
        fopAcM_SetMax(a_this, 300.0f, 500.0f, 300.0f);
        i_this->mObjAcch.Set(fopAcM_GetPosition_p(a_this), fopAcM_GetOldPosition_p(a_this), a_this,
                             1, &i_this->mAcchCir, fopAcM_GetSpeed_p(a_this), NULL, NULL);
        i_this->mAcchCir.SetWall(50.0f, 50.0f);

        a_this->health = 1;
        if (i_this->field_0x570 == 1) {
            i_this->field_0xdae = 2;
            i_this->mStts.Init(0xFF, 0, a_this);

            for (int i = 0; i < 8; i++) {
                i_this->field_0x10b8[i].Set(cc_cyl_src);
                i_this->field_0x10b8[i].SetStts(&i_this->mStts);
            }

            a_this->current.pos.y += 26.0f;
            if (strcmp(dComIfGp_getStartStageName(), "F_SP108") == 0) {
                a_this->home.pos.y = 1100.0f;
            }
        } else {
            if (i_this->field_0x570 == 2) {
                i_this->field_0xdae = 3;
                if (fopAcM_GetRoomNo(a_this) == 4) {
                    cXyz sp2c(-5374.0f, 4280.0f, -2342.0f);
                    i_this->field_0x1b94 = fopAcM_create(PROC_OBJ_GM, 0x600, &sp2c, fopAcM_GetRoomNo(a_this),
                                                         NULL, NULL, -1);
                }
            }

            if (fopAcM_GetRoomNo(a_this) == 2) {
                a_this->home.pos.y = 3152.0f;
            }
        }

        i_this->field_0x109c = &i_this->mSound;
        daObj_So_Execute(i_this);
    }

    return phase;
}

/* 80CE3B60-80CE3B60 000178 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 80CE3BBC-80CE3BDC -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_So_Method */
static actor_method_class l_daObj_So_Method = {
    (process_method_func)daObj_So_Create,
    (process_method_func)daObj_So_Delete,
    (process_method_func)daObj_So_Execute,
    (process_method_func)daObj_So_IsDelete,
    (process_method_func)daObj_So_Draw,
};

/* 80CE3BDC-80CE3C0C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_SO */
extern actor_process_profile_definition g_profile_OBJ_SO = {
  fpcLy_CURRENT_e,        // mLayerID
  2,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_OBJ_SO,            // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(obj_so_class),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  55,                     // mPriority
  &l_daObj_So_Method,     // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
