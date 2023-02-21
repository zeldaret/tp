/**
 * d_a_e_yk.cpp
 * Enemy - Shadow Keese
 */

#include "rel/d/a/e/d_a_e_yk/d_a_e_yk.h"
#include "dol2asm.h"
#include "dolphin/types.h"
#include "d/s/d_s_play.h"
#include "SSystem/SComponent/c_math.h"
#include "JSystem/JMath/JMath.h"

//
// Forward References:
//

extern "C" void __ct__12daE_YK_HIO_cFv();
extern "C" static void yk_disappear__FP10e_yk_class();
extern "C" static void anm_init__FP10e_yk_classifUcf();
extern "C" static void daE_YK_Draw__FP10e_yk_class();
extern "C" static void shot_b_sub__FPvPv();
extern "C" static void other_bg_check__FP10e_yk_classP10fopAc_ac_c();
extern "C" static void pl_check__FP10e_yk_classfs();
extern "C" static void damage_check__FP10e_yk_class();
extern "C" static void path_check__FP10e_yk_class();
extern "C" static void fly_move__FP10e_yk_class();
extern "C" static void e_yk_roof__FP10e_yk_class();
extern "C" static void e_yk_fight_fly__FP10e_yk_class();
extern "C" static void e_yk_fight__FP10e_yk_class();
extern "C" static void e_yk_attack__FP10e_yk_class();
extern "C" static void e_yk_fly__FP10e_yk_class();
extern "C" static void e_yk_return__FP10e_yk_class();
extern "C" static void e_yk_path_fly__FP10e_yk_class();
extern "C" static void e_yk_chance__FP10e_yk_class();
extern "C" static void e_yk_wolfbite__FP10e_yk_class();
extern "C" static void e_yk_wind__FP10e_yk_class();
extern "C" static void action__FP10e_yk_class();
extern "C" static void daE_YK_Execute__FP10e_yk_class();
extern "C" static bool daE_YK_IsDelete__FP10e_yk_class();
extern "C" static void daE_YK_Delete__FP10e_yk_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_YK_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_YK_HIO_cFv();
extern "C" void __sinit_d_a_e_yk_cpp();
extern "C" static void func_80807864();
extern "C" static void func_8080786C();
extern "C" static void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz();
extern "C" extern char const* const d_a_e_yk__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void cDmrNowMidnaTalk__Fv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemFromEnemyID__FUcPC4cXyziiPC5csXyzPC4cXyzPfPf();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void checkBoomerangCharge__9daPy_py_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void func_802807E0();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_19();
extern "C" void _savegpr_23();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_23();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
// extern "C" extern u8 pauseTimer__9dScnPly_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80807C9C-80807CA0 000000 0004+00 20/20 0/0 0/0 .rodata          @3941 */
SECTION_RODATA static f32 const lit_3941 = 100.0f;
COMPILER_STRIP_GATE(0x80807C9C, &lit_3941);

/* 80807CA0-80807CA4 000004 0004+00 1/15 0/0 0/0 .rodata          @3942 */
SECTION_RODATA static u8 const lit_3942[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80807CA0, &lit_3942);

/* 80807CA4-80807CAC 000008 0004+04 1/17 0/0 0/0 .rodata          @3943 */
SECTION_RODATA static f32 const lit_3943[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80807CA4, &lit_3943);

/* 80807CAC-80807CB4 000010 0008+00 0/3 0/0 0/0 .rodata          @3944 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3944[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80807CAC, &lit_3944);
#pragma pop

/* 80807CB4-80807CBC 000018 0008+00 0/3 0/0 0/0 .rodata          @3945 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3945[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80807CB4, &lit_3945);
#pragma pop

/* 80807CBC-80807CC4 000020 0008+00 0/3 0/0 0/0 .rodata          @3946 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3946[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80807CBC, &lit_3946);
#pragma pop

/* 80807CC4-80807CC8 000028 0004+00 0/1 0/0 0/0 .rodata          @3947 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3947 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80807CC4, &lit_3947);
#pragma pop

/* 80807CC8-80807CCC 00002C 0004+00 0/3 0/0 0/0 .rodata          @3962 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3962 = 15.0f;
COMPILER_STRIP_GATE(0x80807CC8, &lit_3962);
#pragma pop

/* 80807CCC-80807CD0 000030 0004+00 0/1 0/0 0/0 .rodata          @3963 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3963 = 250.0f;
COMPILER_STRIP_GATE(0x80807CCC, &lit_3963);
#pragma pop

/* 80807CD0-80807CD4 000034 0004+00 0/2 0/0 0/0 .rodata          @3964 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3964 = 40.0f;
COMPILER_STRIP_GATE(0x80807CD0, &lit_3964);
#pragma pop

/* 80807D70-80807D7C 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80807D7C-80807D90 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
SECTION_DATA static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 80807D90-80807D98 000020 0008+00 0/1 0/0 0/0 .data            e_prim$3820 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim[8] = {
    0xFF, 0x78, 0x00, 0x00, 0xFF, 0x64, 0x78, 0x00,
};
#pragma pop

/* 80807D98-80807DA0 000028 0008+00 0/1 0/0 0/0 .data            e_env$3821 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env[8] = {
    0x5A, 0x2D, 0x2D, 0x00, 0x3C, 0x1E, 0x1E, 0x00,
};
#pragma pop

/* 80807DA0-80807DA8 000030 0006+02 0/1 0/0 0/0 .data            eff_id$3829 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 eff_id[6 + 2 /* padding */] = {
    0x02,
    0x9D,
    0x02,
    0x9E,
    0x02,
    0x9F,
    /* padding */
    0x00,
    0x00,
};
#pragma pop

/* 80807DA8-80807DE4 -00001 003C+00 1/1 0/0 0/0 .data            @4726 */
SECTION_DATA static void* lit_4726[15] = {
    (void*)(((char*)action__FP10e_yk_class) + 0x80),
    (void*)(((char*)action__FP10e_yk_class) + 0x8C),
    (void*)(((char*)action__FP10e_yk_class) + 0x98),
    (void*)(((char*)action__FP10e_yk_class) + 0xA8),
    (void*)(((char*)action__FP10e_yk_class) + 0xC4),
    (void*)(((char*)action__FP10e_yk_class) + 0xD0),
    (void*)(((char*)action__FP10e_yk_class) + 0xDC),
    (void*)(((char*)action__FP10e_yk_class) + 0x108),
    (void*)(((char*)action__FP10e_yk_class) + 0x108),
    (void*)(((char*)action__FP10e_yk_class) + 0x108),
    (void*)(((char*)action__FP10e_yk_class) + 0xE8),
    (void*)(((char*)action__FP10e_yk_class) + 0x108),
    (void*)(((char*)action__FP10e_yk_class) + 0x108),
    (void*)(((char*)action__FP10e_yk_class) + 0xF4),
    (void*)(((char*)action__FP10e_yk_class) + 0x100),
};

/* 80807DE4-80807DE8 000074 0004+00 1/1 0/0 0/0 .data            e_name$4766 */
SECTION_DATA static u8 e_name[4] = {
    0x84,
    0x32,
    0x84,
    0x33,
};

/* 80807DE8-80807DF0 000078 0008+00 1/1 0/0 0/0 .data            e_idx$4767 */
SECTION_DATA static u8 e_idx[8] = {
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x09,
};

/* 80807DF0-80807E30 000080 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4930 */
SECTION_DATA static u8 cc_sph_src[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x75, 0x0B, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 80807E30-80807E50 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_YK_Method */
SECTION_DATA static void* l_daE_YK_Method[8] = {
    (void*)daE_YK_Create__FP10fopAc_ac_c,
    (void*)daE_YK_Delete__FP10e_yk_class,
    (void*)daE_YK_Execute__FP10e_yk_class,
    (void*)daE_YK_IsDelete__FP10e_yk_class,
    (void*)daE_YK_Draw__FP10e_yk_class,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80807E50-80807E80 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_YK */
SECTION_DATA extern void* g_profile_E_YK[12] = {
    (void*)0xFFFFFFFD, (void*)0x0007FFFD,
    (void*)0x01F90000, (void*)&g_fpcLf_Method,
    (void*)0x00000A90, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x00BC0000, (void*)&l_daE_YK_Method,
    (void*)0x10050100, (void*)0x020E0000,
};

/* 80807E80-80807E8C 000110 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80807E8C-80807E98 00011C 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80807E98-80807EA4 000128 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80807EA4-80807EB0 000134 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80807EB0-80807EBC 000140 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80807EBC-80807EE0 00014C 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8080786C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80807864,
};

/* 80807EE0-80807EEC 000170 000C+00 2/2 0/0 0/0 .data            __vt__12daE_YK_HIO_c */
SECTION_DATA extern void* __vt__12daE_YK_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_YK_HIO_cFv,
};

/* 8080482C-80804870 0000EC 0044+00 1/1 0/0 0/0 .text            __ct__12daE_YK_HIO_cFv */
daE_YK_HIO_c::daE_YK_HIO_c() {
    field_0x04 = -1;
    field_0x08 = FLOAT_LABEL(lit_3943);
    field_0x0c = FLOAT_LABEL(lit_3962);
    field_0x10 = FLOAT_LABEL(lit_3963);
    field_0x14 = FLOAT_LABEL(lit_3962);
    field_0x18 = FLOAT_LABEL(lit_3964);
}

/* ############################################################################################## */
/* 80807CD4-80807CD8 000038 0004+00 0/1 0/0 0/0 .rodata          @4008 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4008 = 13.0f / 20.0f;
COMPILER_STRIP_GATE(0x80807CD4, &lit_4008);
#pragma pop

/* 80807CD8-80807CDC 00003C 0004+00 1/2 0/0 0/0 .rodata          @4009 */
SECTION_RODATA static f32 const lit_4009 = -1.0f;
COMPILER_STRIP_GATE(0x80807CD8, &lit_4009);

/* 80804870-808049E4 000130 0174+00 2/2 0/0 0/0 .text            yk_disappear__FP10e_yk_class */
#ifdef NONMATCHING
// matches with literals
static void yk_disappear(e_yk_class* i_this) {
    // cXyz pos;
    cXyz pos(FLOAT_LABEL(lit_4008),FLOAT_LABEL(lit_4008),FLOAT_LABEL(lit_4008));

    dComIfGp_particle_set(0x826c,&i_this->current.pos,0,&pos); // float literal inline
    dComIfGp_particle_set(0x826d,&i_this->current.pos,0,&pos); // float literal inline

    fopAcM_seStart(i_this,Z2SE_DARK_VANISH,0); // float literal inline
    fopAcM_createItemFromEnemyID(1,&i_this->current.pos,0xffffffff,0xffffffff,0,0,0,0);

    u8 param = fopAcM_GetParam(i_this);
    if (param >> 0x18 != 0xff) {
        dComIfGs_onSwitch(param >> 0x18,fopAcM_GetRoomNo(i_this));
    }

}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void yk_disappear(e_yk_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/yk_disappear__FP10e_yk_class.s"
}
#pragma pop
#endif

/* 808049E4-80804A90 0002A4 00AC+00 10/10 0/0 0/0 .text            anm_init__FP10e_yk_classifUcf */
static void anm_init(e_yk_class* i_this, int i_resIdx, f32 param_2, u8 param_3, f32 param_4) {
    i_this->mpMorfSO->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_YK",i_resIdx),param_3,param_2,param_4,FLOAT_LABEL(lit_3942),FLOAT_LABEL(lit_4009));
    i_this->mResIdx = i_resIdx;
}

/* 80804A90-80804B38 000350 00A8+00 1/0 0/0 0/0 .text            daE_YK_Draw__FP10e_yk_class */
static int daE_YK_Draw(e_yk_class* i_this) {
    J3DModel* model = i_this->mpMorfSO->getModel();

    g_env_light.settingTevStruct(2,&i_this->current.pos,&i_this->mTevStr);
    g_env_light.setLightTevColorType_MAJI(model,&i_this->mTevStr);

    dComIfGd_setListDark();

    i_this->mpMorfSO->entryDL();
    dComIfGd_setList();
    return 1;
}

/* 80804B38-80804BB0 0003F8 0078+00 1/1 0/0 0/0 .text            shot_b_sub__FPvPv */
static void* shot_b_sub(void* param_0, void* param_1) {
    if (fopAcM_IsActor(param_0) && fopAcM_GetName(param_0) == PROC_BOOMERANG &&
                                !i_dComIfGp_checkPlayerStatus0(0,0x80000) &&
                                daPy_py_c::checkBoomerangCharge() &&
                                fopAcM_GetParam(param_0) == 1) {
            return param_0;
    }

    return 0;
}

/* 80804BB0-80804C88 000470 00D8+00 1/1 0/0 0/0 .text other_bg_check__FP10e_yk_classP10fopAc_ac_c
 */
#ifdef NONMATCHING
// regalloc. i_actorP needs to load in first
static bool other_bg_check(e_yk_class* i_this, fopAc_ac_c* i_actorP) {
    dBgS_LinChk lin_chk;
    cXyz yk_pos;
    cXyz actor_pos;
    
    actor_pos = i_actorP->current.pos;
    actor_pos.y += FLOAT_LABEL(lit_3941);
    
    yk_pos = i_this->current.pos;
    yk_pos.y = i_this->mEyePos.y;
    
    lin_chk.Set(&yk_pos,&actor_pos,i_actorP);

    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        return 1;
    }

    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int other_bg_check(e_yk_class* param_0, fopAc_ac_c* param_1) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/other_bg_check__FP10e_yk_classP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80807CDC-80807CE0 000040 0004+00 1/1 0/0 0/0 .rodata          @4103 */
SECTION_RODATA static f32 const lit_4103 = 50000.0f;
COMPILER_STRIP_GATE(0x80807CDC, &lit_4103);

/* 80804C88-80804D38 000548 00B0+00 5/5 0/0 0/0 .text            pl_check__FP10e_yk_classfs */
static int pl_check(e_yk_class* i_this, f32 param_1, s16 param_2) {
    if (param_1 >= FLOAT_LABEL(lit_4103)) {
        return 1;
    }

    if (dComIfGp_getPlayer(0)->current.pos.y < i_this->current.pos.y && i_this->mDistanceXZFromPlayer < param_1) {
        s16 value = i_this->shape_angle.y - i_this->mAngleFromPlayer;

        if (param_2 == 1 || value < param_2 && value > (s16)-param_2){
            if (!other_bg_check(i_this,dComIfGp_getPlayer(0))) {
                return 1;
            } 
        }
    }

    return 0;
}

/* ############################################################################################## */
/* 80807CE0-80807CE4 000044 0004+00 0/2 0/0 0/0 .rodata          @4151 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4151 = 70.0f;
COMPILER_STRIP_GATE(0x80807CE0, &lit_4151);
#pragma pop

/* 80807CE4-80807CE8 000048 0004+00 0/4 0/0 0/0 .rodata          @4152 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4152 = 10.0f;
COMPILER_STRIP_GATE(0x80807CE4, &lit_4152);
#pragma pop

/* 80807CE8-80807CEC 00004C 0004+00 0/3 0/0 0/0 .rodata          @4153 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4153 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80807CE8, &lit_4153);
#pragma pop

/* 80804D38-80804F68 0005F8 0230+00 1/1 0/0 0/0 .text            damage_check__FP10e_yk_class */
#ifdef NONMATCHING
// matches with literals
static void damage_check(e_yk_class* i_this) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    if (i_this->field_0x6aa == 0) {
        // Store current AtApid and TgApid then set them to 0
        i_this->field_0x8e0.Move();

        // If keese Defense collider was hit
        if (i_this->mCollisionSphere.ChkTgHit()) {
            // Save the collider that hit the keese dt collider
            i_this->field_0xa54.mpCollider = i_this->mCollisionSphere.GetTgHitObj();

            // If keese was hit by the boomerang
            if (i_this->field_0xa54.mpCollider->ChkAtType(AT_TYPE_BOOMERANG)) {
                i_this->mAction = ACT_WIND;
                i_this->field_0x670 = 0;
                
            } else {
                // Run through the default Attack collider checks first
                cc_at_check(i_this,&i_this->field_0xa54);
                
                // If keese was hit by Clawshot or Slingshot, subtract 1 from health
                if (i_this->field_0xa54.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT) || i_this->field_0xa54.mpCollider->ChkAtType(AT_TYPE_SLINGSHOT)) {
                    i_this->mHealth--;
                }

                // If keese was hit by shield attack, set some fields and play controller vibration
                if (i_this->field_0xa54.mpCollider->ChkAtType(AT_TYPE_SHIELD_ATTACK)) {
                    i_this->mAction = ACT_CHANCE;
                    i_this->field_0x670 = 0;
                    i_this->field_0x694 = FLOAT_LABEL(lit_4151);
                    i_this->field_0x698 = i_this->shape_angle.y;
                    i_this->field_0x6a0 = 0;

                    dComIfGp_getVibration().StartShock(2,0x1f,cXyz(0.0f,1.0f,0.0f));
                } else {
                    // If keese was hit by wolf bite, set some fields, set pause timer to 0, 
                    // play keese wolf bit sound
                    if (i_this->field_0xa54.mpCollider->ChkAtType(AT_TYPE_WOLF_ATTACK) && (static_cast<daPy_py_c*>(player)->onWolfEnemyBiteAll(i_this,daPy_py_c::FLG2_UNK_8) != 0)) {
                        i_this->mAction = ACT_WOLFBITE;
                        i_this->field_0x670 = 0;
                        i_this->field_0x6aa = 200;
                        dScnPly_c::setPauseTimer(0);
                        i_this->mCreature.startCreatureVoice(Z2SE_EN_YK_V_BITE,-1);
                    } else {
                        // If it was unknown attack, set some fields
                        if (i_this->field_0xa54.mpCollider->ChkAtType(AT_TYPE_UNK)) {
                            i_this->field_0x6aa = 20;
                        } else {
                            i_this->field_0x6aa = 10;
                        }

                        i_this->field_0x694 = cM_rndF(FLOAT_LABEL(lit_4152)) + FLOAT_LABEL(lit_4151);
                        i_this->field_0x698 = i_this->field_0xa54.mHitDirection;

                        // If keese is dead, play death sound
                        if (i_this->mHealth <= 0) {
                            i_this->mCreature.startCreatureVoice(Z2SE_EN_YK_V_DEATH,-1);
                            i_this->mpMorfSO->setPlaySpeed(FLOAT_LABEL(lit_4153));
                            i_this->field_0x6a0 = 1;
                        }
                    }
                }
                    
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void damage_check(e_yk_class* i_this) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/damage_check__FP10e_yk_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80807CEC-80807CF0 000050 0004+00 0/5 0/0 0/0 .rodata          @4185 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4185 = 50.0f;
COMPILER_STRIP_GATE(0x80807CEC, &lit_4185);
#pragma pop

/* 80807EF8-80807EFC 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80807EF8;

/* 80807EFC-80807F08 00000C 000C+00 1/1 0/0 0/0 .bss             @3957 */
static u8 lit_3957[12];

/* 80807F08-80807F24 000018 001C+00 9/9 0/0 0/0 .bss             l_HIO */
// static daE_YK_HIO_c l_HIO;
static u8 l_HIO[28];

/* 80807F24-80808023 000034 00FF+00 1/1 0/0 0/0 .bss             check_index$4191 */
static u8 check_index[255];

/* 80804F68-808051D0 000828 0268+00 2/3 0/0 0/0 .text            path_check__FP10e_yk_class */
#ifdef NONMATCHING
// matches with literals
static int path_check(e_yk_class* i_this) {
    if (i_this->mpPath) {
        dBgS_LinChk lin_chk;

        cXyz current_keese_pos;
        cXyz path_point_pos;
        current_keese_pos = i_this->current.pos;
        current_keese_pos.y += FLOAT_LABEL(lit_3941);

        dStage_dPnt_c* points = i_this->mpPath->m_points;

        // Set/update check_index array based on whether or not path points
        // were crossed
        for (int i = 0; i < i_this->mpPath->m_num; i++, points++) {
            path_point_pos.x = points->m_position.x;
            path_point_pos.y = FLOAT_LABEL(lit_3941) + points->m_position.y;
            path_point_pos.z = points->m_position.z;

            lin_chk.Set(&current_keese_pos,&path_point_pos,i_this);

            if (!dComIfG_Bgsp().LineCross(&lin_chk)) {
                check_index[i] = 1;
            } else {
                check_index[i] = 0;
            }
        }

        f32 f = FLOAT_LABEL(lit_3942);
        bool tmp = false;
        
        for (int i = 0; i < 100; i++, f += FLOAT_LABEL(lit_4185)) {
            points = i_this->mpPath->m_points;

            for (int j = 0; j < i_this->mpPath->m_num; j++, points++) {
                // if (tmp) break;

                if (check_index[j] != 0) {
                    f32 x = i_this->current.pos.x - points->m_position.x;
                    f32 y = i_this->current.pos.y - points->m_position.y;
                    f32 z = i_this->current.pos.z - points->m_position.z;

                    f32 val = JMAFastSqrt(x * x + y * y + z * z); // float literal inline

                    if (val < f) {
                        i_this->field_0x5b9 = j - i_this->field_0x5ba;
                        u16 pathNum = i_this->mpPath->m_num;

                        if (i_this->field_0x5b9 >= (s8)i_this->mpPath->m_num) {
                            i_this->field_0x5b9 = i_this->mpPath->m_num;
                        } else {
                            if (0 > i_this->field_0x5b9) {
                                i_this->field_0x5b9 = 0;
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
            i_this-> field_0x5b8 = 0;
        } else {
            i_this->field_0x5b8 = i_this->field_0x5b7 + 1;
            return 1;
        }

        
    }

    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void path_check(e_yk_class* i_this) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/path_check__FP10e_yk_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80807CF0-80807CF4 000054 0004+00 0/1 0/0 0/0 .rodata          @4271 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4271 = 2000.0f;
COMPILER_STRIP_GATE(0x80807CF0, &lit_4271);
#pragma pop

/* 80807CF4-80807CF8 000058 0004+00 0/1 0/0 0/0 .rodata          @4272 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4272 = 1.0f / 25.0f;
COMPILER_STRIP_GATE(0x80807CF4, &lit_4272);
#pragma pop

/* 808051D0-80805360 000A90 0190+00 5/5 0/0 0/0 .text            fly_move__FP10e_yk_class */
#ifdef NONMATCHING
// matches with literals
static void fly_move(e_yk_class* i_this) {
    cXyz pos;

    f32 x = i_this->field_0x674.x - i_this->current.pos.x;
    f32 y = i_this->field_0x674.y - i_this->current.pos.y;
    f32 z = i_this->field_0x674.z - i_this->current.pos.z;

    s16 angle = cM_atan2s(x,z);
    f32 sqrt = JMAFastSqrt(x * x + z * z); // float literal inline
    s16 angle2 = -cM_atan2s(y,sqrt);

    cLib_addCalcAngleS2(&i_this->current.angle.y,angle,10,i_this->field_0x690 * i_this->field_0x68c);

    i_this->field_0x690 = FLOAT_LABEL(lit_4271);

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
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void fly_move(e_yk_class* i_this) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/fly_move__FP10e_yk_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80807CF8-80807CFC 00005C 0004+00 0/1 0/0 0/0 .rodata          @4304 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4304 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80807CF8, &lit_4304);
#pragma pop

/* 80807CFC-80807D00 000060 0004+00 0/2 0/0 0/0 .rodata          @4305 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4305 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80807CFC, &lit_4305);
#pragma pop

/* 80807D00-80807D04 000064 0004+00 0/6 0/0 0/0 .rodata          @4306 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4306 = 0.5f;
COMPILER_STRIP_GATE(0x80807D00, &lit_4306);
#pragma pop

/* 80805360-808054A8 000C20 0148+00 1/1 0/0 0/0 .text            e_yk_roof__FP10e_yk_class */
static void e_yk_roof(e_yk_class* i_this) {
    switch (i_this->field_0x670) {
    case 0:
        anm_init(i_this,9,FLOAT_LABEL(lit_3962),2,cM_rndF(FLOAT_LABEL(lit_4305)) + FLOAT_LABEL(lit_4304)); // random number between 0.9 and 1.0
        i_this->field_0x670 = 1;
        break;
    case 1:
        if ((i_this->field_0x66c & 0x1f) == 0 && cM_rndF(FLOAT_LABEL(lit_3943)) < FLOAT_LABEL(lit_4306)) {
            i_this->mCreature.startCreatureVoice(Z2SE_EN_YK_V_NAKU,-1);
        }
    }

    cLib_addCalc2(&i_this->current.pos.x,i_this->orig.pos.x,FLOAT_LABEL(lit_4306),fabsf(i_this->speed.x));
    cLib_addCalc2(&i_this->current.pos.y,i_this->orig.pos.y,FLOAT_LABEL(lit_4306),fabsf(i_this->speed.y));
    cLib_addCalc2(&i_this->current.pos.z,i_this->orig.pos.z,FLOAT_LABEL(lit_4306),fabsf(i_this->speed.z));

    if (pl_check(i_this,i_this->field_0x688,1)) {
        i_this->mAction = ACT_FIGHT_FLY;
        i_this->field_0x670 = 0;
    }
}

/* ############################################################################################## */
/* 80807D04-80807D08 000068 0004+00 0/6 0/0 0/0 .rodata          @4334 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4334 = 3.0f;
COMPILER_STRIP_GATE(0x80807D04, &lit_4334);
#pragma pop

/* 80807D08-80807D0C 00006C 0004+00 0/4 0/0 0/0 .rodata          @4335 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4335 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80807D08, &lit_4335);
#pragma pop

/* 808054A8-80805660 000D68 01B8+00 1/1 0/0 0/0 .text            e_yk_fight_fly__FP10e_yk_class */
#ifdef NONMATCHING
static void e_yk_fight_fly(e_yk_class* i_this) {
    
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_yk_fight_fly(e_yk_class* i_this) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/e_yk_fight_fly__FP10e_yk_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80807D0C-80807D10 000070 0004+00 0/3 0/0 0/0 .rodata          @4398 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4398 = 2.0f;
COMPILER_STRIP_GATE(0x80807D0C, &lit_4398);
#pragma pop

/* 80807D10-80807D14 000074 0004+00 0/4 0/0 0/0 .rodata          @4399 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4399 = 30.0f;
COMPILER_STRIP_GATE(0x80807D10, &lit_4399);
#pragma pop

/* 80807D14-80807D18 000078 0004+00 0/1 0/0 0/0 .rodata          @4400 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4400 = 12288.0f;
COMPILER_STRIP_GATE(0x80807D14, &lit_4400);
#pragma pop

/* 80807D18-80807D1C 00007C 0004+00 0/2 0/0 0/0 .rodata          @4401 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4401 = 150.0f;
COMPILER_STRIP_GATE(0x80807D18, &lit_4401);
#pragma pop

/* 80805660-808059BC 000F20 035C+00 1/1 0/0 0/0 .text            e_yk_fight__FP10e_yk_class */
#ifdef NONMATCHING
static void e_yk_fight(e_yk_class* i_this) {
    
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_yk_fight(e_yk_class* i_this) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/e_yk_fight__FP10e_yk_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80807D1C-80807D20 000080 0004+00 0/1 0/0 0/0 .rodata          @4438 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4438 = 120.0f;
COMPILER_STRIP_GATE(0x80807D1C, &lit_4438);
#pragma pop

/* 808059BC-80805BB4 00127C 01F8+00 1/1 0/0 0/0 .text            e_yk_attack__FP10e_yk_class */
#ifdef NONMATCHING
static void e_yk_attack(e_yk_class* i_this) {
    
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_yk_attack(e_yk_class* i_this) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/e_yk_attack__FP10e_yk_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80807D20-80807D24 000084 0004+00 0/1 0/0 0/0 .rodata          @4480 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4480 = 500.0f;
COMPILER_STRIP_GATE(0x80807D20, &lit_4480);
#pragma pop

/* 80807D24-80807D28 000088 0004+00 0/3 0/0 0/0 .rodata          @4481 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4481 = 200.0f;
COMPILER_STRIP_GATE(0x80807D24, &lit_4481);
#pragma pop

/* 80805BB4-80805DE0 001474 022C+00 1/1 0/0 0/0 .text            e_yk_fly__FP10e_yk_class */
#ifdef NONMATCHING
static void e_yk_fly(e_yk_class* i_this) {
    
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_yk_fly(e_yk_class* i_this) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/e_yk_fly__FP10e_yk_class.s"
}
#pragma pop
#endif

/* 80805DE0-80805FF0 0016A0 0210+00 1/1 0/0 0/0 .text            e_yk_return__FP10e_yk_class */
#ifdef NONMATCHING
static void e_yk_return(e_yk_class* i_this) {
    
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_yk_return(e_yk_class* i_this) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/e_yk_return__FP10e_yk_class.s"
}
#pragma pop
#endif

/* 80805FF0-80806308 0018B0 0318+00 1/1 0/0 0/0 .text            e_yk_path_fly__FP10e_yk_class */
#ifdef NONMATCHING
static void e_yk_path_fly(e_yk_class* i_this) {
    
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_yk_path_fly(e_yk_class* i_this) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/e_yk_path_fly__FP10e_yk_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80807D28-80807D2C 00008C 0004+00 0/1 0/0 0/0 .rodata          @4608 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4608 = 1.5f;
COMPILER_STRIP_GATE(0x80807D28, &lit_4608);
#pragma pop

/* 80807D2C-80807D30 000090 0004+00 0/1 0/0 0/0 .rodata          @4609 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4609 = 65536.0f;
COMPILER_STRIP_GATE(0x80807D2C, &lit_4609);
#pragma pop

/* 80807D30-80807D34 000094 0004+00 0/1 0/0 0/0 .rodata          @4610 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4610 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80807D30, &lit_4610);
#pragma pop

/* 80806308-80806500 001BC8 01F8+00 1/1 0/0 0/0 .text            e_yk_chance__FP10e_yk_class */
#ifdef NONMATCHING
static void e_yk_chance(e_yk_class* i_this) {
    
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_yk_chance(e_yk_class* i_this) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/e_yk_chance__FP10e_yk_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80807D34-80807D38 000098 0004+00 0/1 0/0 0/0 .rodata          @4650 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4650 = -20.0f;
COMPILER_STRIP_GATE(0x80807D34, &lit_4650);
#pragma pop

/* 80807D38-80807D3C 00009C 0004+00 0/2 0/0 0/0 .rodata          @4651 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4651 = 4.0f;
COMPILER_STRIP_GATE(0x80807D38, &lit_4651);
#pragma pop

/* 80806500-80806740 001DC0 0240+00 1/1 0/0 0/0 .text            e_yk_wolfbite__FP10e_yk_class */
#ifdef NONMATCHING
static void e_yk_wolfbite(e_yk_class* i_this) {
    
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_yk_wolfbite(e_yk_class* i_this) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/e_yk_wolfbite__FP10e_yk_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80807D3C-80807D40 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4675 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4675 = 15000.0f;
COMPILER_STRIP_GATE(0x80807D3C, &lit_4675);
#pragma pop

/* 80807D40-80807D44 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4676 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4676 = 1000.0f;
COMPILER_STRIP_GATE(0x80807D40, &lit_4676);
#pragma pop

/* 80807D44-80807D48 0000A8 0004+00 0/0 0/0 0/0 .rodata          @4725 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4725 = 5.0f;
COMPILER_STRIP_GATE(0x80807D44, &lit_4725);
#pragma pop

/* 80806740-808068E4 002000 01A4+00 1/1 0/0 0/0 .text            e_yk_wind__FP10e_yk_class */
#ifdef NONMATCHING
static void e_yk_wind(e_yk_class* i_this) {
    
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_yk_wind(e_yk_class* i_this) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/e_yk_wind__FP10e_yk_class.s"
}
#pragma pop
#endif

/* 808068E4-80806B78 0021A4 0294+00 2/1 0/0 0/0 .text            action__FP10e_yk_class */
#ifdef NONMATCHING
// matches with literals
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

    if (i_this->field_0x694 > FLOAT_LABEL(lit_4305)) {
        cXyz pos;
        cXyz pos2;
        
        pos.x = FLOAT_LABEL(lit_3942);
        pos.y = FLOAT_LABEL(lit_3942);
        pos.z = -i_this->field_0x694;

        mDoMtx_YrotS((MtxP)calc_mtx,i_this->field_0x698);
        MtxPosition(&pos,&pos2);
        i_this->current.pos += pos2;
        cLib_addCalc0(&i_this->field_0x694,FLOAT_LABEL(lit_3943),FLOAT_LABEL(lit_4725));

        if (i_this->field_0x6a0 != 0) {
            i_this->shape_angle.y += 0x1300;
            i_this->shape_angle.z += 0x1700;

            if (i_this->field_0x694 <= FLOAT_LABEL(lit_3943) || i_this->field_0x708.ChkWallHit()) {
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

    i_this->current.pos.y -= FLOAT_LABEL(lit_4399); 
    i_this->next.pos.y -= FLOAT_LABEL(lit_4399);

    i_this->field_0x708.CrrPos(dComIfG_Bgsp());

    i_this->current.pos.y += FLOAT_LABEL(lit_4399);
    i_this->next.pos.y += FLOAT_LABEL(lit_4399);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void action(e_yk_class* i_this) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/action__FP10e_yk_class.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80807D48-80807D4C 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4867 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4867 = 20.0f;
COMPILER_STRIP_GATE(0x80807D48, &lit_4867);
#pragma pop

/* 80807D4C-80807D50 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4868 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4868 = 20000.0f;
COMPILER_STRIP_GATE(0x80807D4C, &lit_4868);
#pragma pop

/* 80806B78-8080708C 002438 0514+00 2/1 0/0 0/0 .text            daE_YK_Execute__FP10e_yk_class */
#ifdef NONMATCHING
static void daE_YK_Execute(e_yk_class* i_this) {
    
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_YK_Execute(e_yk_class* i_this) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/daE_YK_Execute__FP10e_yk_class.s"
}
#pragma pop
#endif

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

    if (i_this->mHeap) {
        i_this->mpMorfSO->stopZelAnime();
    }

    return 1;
}

/* 808070FC-808071F4 0029BC 00F8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
#ifndef NONMATCHING
static int useHeapInit(fopAc_ac_c* i_this) {
    e_yk_class* yk = (e_yk_class*)i_this;

    yk->mpMorfSO = new mDoExt_McaMorfSO((J3DModelData*)dComIfG_getObjectRes("E_YK", 12), 
        NULL, NULL, (J3DAnmTransform*)dComIfG_getObjectRes("E_YK",9), 2, FLOAT_LABEL(lit_3943), 0, -1, &yk->mCreature, 0x80000,0x11000084);
    if (!yk->mpMorfSO || !yk->mpMorfSO->mpModel) {
        return 0;
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void useHeapInit(fopAc_ac_c* i_this) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/useHeapInit__FP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 80807D50-80807D54 0000B4 0004+00 0/1 0/0 0/0 .rodata          @5027 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5027 = 100000.0f;
COMPILER_STRIP_GATE(0x80807D50, &lit_5027);
#pragma pop

/* 80807D54-80807D58 0000B8 0004+00 0/1 0/0 0/0 .rodata          @5028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5028 = -200.0f;
COMPILER_STRIP_GATE(0x80807D54, &lit_5028);
#pragma pop

/* 80807D58-80807D5C 0000BC 0004+00 0/1 0/0 0/0 .rodata          @5029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5029 = 65535.0f;
COMPILER_STRIP_GATE(0x80807D58, &lit_5029);
#pragma pop

/* 80807D5C-80807D64 0000C0 0008+00 0/1 0/0 0/0 .rodata          @5031 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5031[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80807D5C, &lit_5031);
#pragma pop

/* 80807D64-80807D64 0000C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80807D69 = "E_yk";
#pragma pop

/* 808071F4-808075CC 002AB4 03D8+00 1/0 0/0 0/0 .text            daE_YK_Create__FP10fopAc_ac_c */
#ifdef NONMATCHING
static void daE_YK_Create(fopAc_ac_c* i_this) {
    
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_YK_Create(fopAc_ac_c* i_this) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/daE_YK_Create__FP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* 808075CC-80807614 002E8C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 80807614-8080765C 002ED4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 8080765C-808076B8 002F1C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 808076B8-80807728 002F78 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80807728-80807798 002FE8 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80807798-808077E0 003058 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 808077E0-80807828 0030A0 0048+00 2/1 0/0 0/0 .text            __dt__12daE_YK_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daE_YK_HIO_c::~daE_YK_HIO_c() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/__dt__12daE_YK_HIO_cFv.s"
}
#pragma pop

/* 80807828-80807864 0030E8 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_yk_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_e_yk_cpp() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/__sinit_d_a_e_yk_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80807828, __sinit_d_a_e_yk_cpp);
#pragma pop

/* 80807864-8080786C 003124 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80807864() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/func_80807864.s"
}
#pragma pop

/* 8080786C-80807874 00312C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_8080786C() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/func_8080786C.s"
}
#pragma pop

/* 80807874-80807C88 003134 0414+00 1/1 0/0 0/0 .text
 * setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz* param_2,
                                   cXyz* param_3) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_yk/d_a_e_yk/setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz.s"
}
#pragma pop

/* 80807D64-80807D64 0000C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
