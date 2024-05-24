/**
 * @file d_a_e_sf.cpp
 * 
*/

#include "rel/d/a/e/d_a_e_sf/d_a_e_sf.h"
#include "d/cc/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_camera.h"



//
// Forward References:
//

extern "C" void __ct__12daE_SF_HIO_cFv();
extern "C" static void anm_init__FP10e_sf_classifUcf();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daE_SF_Draw__FP10e_sf_class();
extern "C" static void other_bg_check__FP10e_sf_classP10fopAc_ac_c();
extern "C" static void player_way_check__FP10e_sf_class();
extern "C" static void way_bg_check__FP10e_sf_classff();
extern "C" static void pl_check__FP10e_sf_classfs();
extern "C" static void e_sf_normal__FP10e_sf_class();
extern "C" static void e_sf_drawback__FP10e_sf_class();
extern "C" static void e_sf_fight_run__FP10e_sf_class();
extern "C" static void at_hit_check__FP10e_sf_class();
extern "C" static void e_sf_attack_0__FP10e_sf_class();
extern "C" static void e_sf_attack__FP10e_sf_class();
extern "C" static void e_sf_guard__FP10e_sf_class();
extern "C" static void e_sf_s_damage__FP10e_sf_class();
extern "C" static void e_sf_crash__FP10e_sf_class();
extern "C" static void e_sf_crashwait__FP10e_sf_class();
extern "C" static void e_sf_sitwait__FP10e_sf_class();
extern "C" static void e_sf_getup__FP10e_sf_class();
extern "C" static void crash_eff__FP10e_sf_class();
extern "C" static void damage_check__FP10e_sf_class();
extern "C" static void action__FP10e_sf_class();
extern "C" static void anm_se_set__FP10e_sf_class();
extern "C" static void demo_camera__FP10e_sf_class();
extern "C" static void daE_SF_Execute__FP10e_sf_class();
extern "C" static bool daE_SF_IsDelete__FP10e_sf_class();
extern "C" static void daE_SF_Delete__FP10e_sf_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_SF_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_SF_HIO_cFv();
extern "C" void __sinit_d_a_e_sf_cpp();
extern "C" static void func_80789800();
extern "C" static void func_80789808();
extern "C" static void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz();
extern "C" extern char const* const d_a_e_sf__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_otoCheck__FPC10fopAc_ac_cf();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_onOneZoneSwitch__Fii();
extern "C" void dComIfGs_isOneZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void dEv_noFinishSkipProc__FPvi();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void GetAtHitObj__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void StartCAt__8dCcD_SphFR4cXyz();
extern "C" void MoveCAt__8dCcD_SphFR4cXyz();
extern "C" void cc_pl_cut_bit_get__Fv();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void func_802807E0();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" extern u8 pauseTimer__9dScnPly_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80789C38-80789C3C 000000 0004+00 19/19 0/0 0/0 .rodata          @3908 */
SECTION_RODATA static f32 const lit_3908 = 100.0f;
COMPILER_STRIP_GATE(0x80789C38, &lit_3908);

/* 80789C3C-80789C40 000004 0004+00 4/18 0/0 0/0 .rodata          @3909 */
SECTION_RODATA static u8 const lit_3909[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80789C3C, &lit_3909);

/* 80789C40-80789C48 000008 0004+04 3/16 0/0 0/0 .rodata          @3910 */
SECTION_RODATA static f32 const lit_3910[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80789C40, &lit_3910);

/* 80789C48-80789C50 000010 0008+00 0/1 0/0 0/0 .rodata          @3911 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3911[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80789C48, &lit_3911);
#pragma pop

/* 80789C50-80789C58 000018 0008+00 0/1 0/0 0/0 .rodata          @3912 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3912[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80789C50, &lit_3912);
#pragma pop

/* 80789C58-80789C60 000020 0008+00 0/1 0/0 0/0 .rodata          @3913 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3913[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80789C58, &lit_3913);
#pragma pop

/* 80789C60-80789C64 000028 0004+00 0/1 0/0 0/0 .rodata          @3914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3914 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80789C60, &lit_3914);
#pragma pop

/* 80789C64-80789C68 00002C 0004+00 0/1 0/0 0/0 .rodata          @3929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3929 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80789C64, &lit_3929);
#pragma pop

/* 80789C68-80789C6C 000030 0004+00 0/6 0/0 0/0 .rodata          @3930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3930 = 5.0f;
COMPILER_STRIP_GATE(0x80789C68, &lit_3930);
#pragma pop

/* 80789C6C-80789C70 000034 0004+00 0/1 0/0 0/0 .rodata          @3931 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3931 = 3000.0f;
COMPILER_STRIP_GATE(0x80789C6C, &lit_3931);
#pragma pop

/* 80789C70-80789C74 000038 0004+00 0/7 0/0 0/0 .rodata          @3932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3932 = 10.0f;
COMPILER_STRIP_GATE(0x80789C70, &lit_3932);
#pragma pop

/* 80789C74-80789C78 00003C 0004+00 0/1 0/0 0/0 .rodata          @3933 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3933 = 250.0f;
COMPILER_STRIP_GATE(0x80789C74, &lit_3933);
#pragma pop

/* 80789C78-80789C7C 000040 0004+00 0/2 0/0 0/0 .rodata          @3934 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3934 = 300.0f;
COMPILER_STRIP_GATE(0x80789C78, &lit_3934);
#pragma pop

/* 80789D90-80789D9C 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80789D9C-80789DB0 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80789DB0-80789DB8 000020 0008+00 0/1 0/0 0/0 .data            e_prim$3787 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim[8] = {
    0xFF, 0x78, 0x00, 0x00, 0xFF, 0x64, 0x78, 0x00,
};
#pragma pop

/* 80789DB8-80789DC0 000028 0008+00 0/1 0/0 0/0 .data            e_env$3788 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env[8] = {
    0x5A, 0x2D, 0x2D, 0x00, 0x3C, 0x1E, 0x1E, 0x00,
};
#pragma pop

/* 80789DC0-80789DC8 000030 0006+02 0/1 0/0 0/0 .data            eff_id$3796 */
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

/* 80789DC8-80789E00 -00001 0038+00 1/1 0/0 0/0 .data            @4353 */
SECTION_DATA static void* lit_4353[14] = {
    (void*)(((char*)e_sf_fight_run__FP10e_sf_class) + 0x54),
    (void*)(((char*)e_sf_fight_run__FP10e_sf_class) + 0xE0),
    (void*)(((char*)e_sf_fight_run__FP10e_sf_class) + 0x228),
    (void*)(((char*)e_sf_fight_run__FP10e_sf_class) + 0x228),
    (void*)(((char*)e_sf_fight_run__FP10e_sf_class) + 0x228),
    (void*)(((char*)e_sf_fight_run__FP10e_sf_class) + 0x228),
    (void*)(((char*)e_sf_fight_run__FP10e_sf_class) + 0x228),
    (void*)(((char*)e_sf_fight_run__FP10e_sf_class) + 0x228),
    (void*)(((char*)e_sf_fight_run__FP10e_sf_class) + 0x228),
    (void*)(((char*)e_sf_fight_run__FP10e_sf_class) + 0x228),
    (void*)(((char*)e_sf_fight_run__FP10e_sf_class) + 0xF8),
    (void*)(((char*)e_sf_fight_run__FP10e_sf_class) + 0x158),
    (void*)(((char*)e_sf_fight_run__FP10e_sf_class) + 0x180),
    (void*)(((char*)e_sf_fight_run__FP10e_sf_class) + 0x200),
};

/* 80789E00-80789E08 000070 0006+02 1/1 0/0 0/0 .data            ap_name$4773 */
SECTION_DATA static u8 ap_name[6 + 2 /* padding */] = {
    0x81,
    0xDA,
    0x81,
    0xDB,
    0x81,
    0xDC,
    /* padding */
    0x00,
    0x00,
};

/* 80789E08-80789E10 000078 0008+00 1/1 0/0 0/0 .data            foot_idx$4976 */
SECTION_DATA static u8 foot_idx[8] = {
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x18,
};

/* 80789E10-80789E98 -00001 0088+00 1/1 0/0 0/0 .data            @5205 */
SECTION_DATA static void* lit_5205[34] = {
    (void*)(((char*)action__FP10e_sf_class) + 0xB4),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0xC0),
    (void*)(((char*)action__FP10e_sf_class) + 0xD4),
    (void*)(((char*)action__FP10e_sf_class) + 0xE8),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0xFC),
    (void*)(((char*)action__FP10e_sf_class) + 0x118),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0x128),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0x194),
    (void*)(((char*)action__FP10e_sf_class) + 0x138),
    (void*)(((char*)action__FP10e_sf_class) + 0x150),
    (void*)(((char*)action__FP10e_sf_class) + 0x168),
    (void*)(((char*)action__FP10e_sf_class) + 0x180),
};

/* 80789E98-80789E9C 000108 0004+00 1/1 0/0 0/0 .data            p_name$5509 */
SECTION_DATA static u8 p_name[4] = {
    0x81,
    0xCB,
    0x81,
    0xCC,
};

/* 80789E9C-80789EA4 00010C 0008+00 1/1 0/0 0/0 .data            wepon_data$5714 */
SECTION_DATA static u8 wepon_data[8] = {
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x17,
};

/* 80789EA4-80789EAC 000114 0008+00 1/1 0/0 0/0 .data            tate_data$5715 */
SECTION_DATA static u8 tate_data[8] = {
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x15,
};

/* 80789EAC-80789EEC 00011C 0040+00 0/1 0/0 0/0 .data            cc_sph_src$5780 */
#pragma push
#pragma force_active on
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 80789EEC-80789F2C 00015C 0040+00 0/1 0/0 0/0 .data            at_sph_src$5781 */
#pragma push
#pragma force_active on
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x2, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 80789F2C-80789F6C 00019C 0040+00 0/1 0/0 0/0 .data            tate_sph_src$5782 */
#pragma push
#pragma force_active on
static dCcD_SrcSph tate_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_STONE, 0x2, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 100.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 80789F6C-80789F8C -00001 0020+00 1/0 0/0 0/0 .data            l_daE_SF_Method */
static actor_method_class l_daE_SF_Method = {
    (process_method_func)daE_SF_Create__FP10fopAc_ac_c,
    (process_method_func)daE_SF_Delete__FP10e_sf_class,
    (process_method_func)daE_SF_Execute__FP10e_sf_class,
    (process_method_func)daE_SF_IsDelete__FP10e_sf_class,
    (process_method_func)daE_SF_Draw__FP10e_sf_class,
};

/* 80789F8C-80789FBC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_SF */
extern actor_process_profile_definition g_profile_E_SF = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_SF,              // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(e_sf_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  123,                    // mPriority
  &l_daE_SF_Method,       // sub_method
  0x00040000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80789FBC-80789FC8 00022C 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80789FC8-80789FD4 000238 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80789FD4-80789FE0 000244 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80789FE0-80789FEC 000250 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80789FEC-80789FF8 00025C 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80789FF8-8078A01C 000268 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80789808,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80789800,
};

/* 8078A01C-8078A028 00028C 000C+00 2/2 0/0 0/0 .data            __vt__12daE_SF_HIO_c */
SECTION_DATA extern void* __vt__12daE_SF_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_SF_HIO_cFv,
};

/* 8078512C-80785188 0000EC 005C+00 1/1 0/0 0/0 .text            __ct__12daE_SF_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daE_SF_HIO_c::daE_SF_HIO_c() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/__ct__12daE_SF_HIO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80789C7C-80789C80 000044 0004+00 1/1 0/0 0/0 .rodata          @3948 */
SECTION_RODATA static f32 const lit_3948 = -1.0f;
COMPILER_STRIP_GATE(0x80789C7C, &lit_3948);

/* 80789D84-80789D84 00014C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80789D84 = "E_sf";
#pragma pop

/* 80785188-80785234 000148 00AC+00 11/11 0/0 0/0 .text            anm_init__FP10e_sf_classifUcf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void anm_init(e_sf_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/anm_init__FP10e_sf_classifUcf.s"
}
#pragma pop

/* 80785234-8078545C 0001F4 0228+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void nodeCallBack(J3DJoint* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/nodeCallBack__FP8J3DJointi.s"
}
#pragma pop

/* ############################################################################################## */
/* 80789C80-80789C84 000048 0004+00 0/5 0/0 0/0 .rodata          @4069 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4069 = 50.0f;
COMPILER_STRIP_GATE(0x80789C80, &lit_4069);
#pragma pop

/* 80789C84-80789C88 00004C 0004+00 0/1 0/0 0/0 .rodata          @4070 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4070 = 900.0f;
COMPILER_STRIP_GATE(0x80789C84, &lit_4070);
#pragma pop

/* 8078545C-80785654 00041C 01F8+00 1/0 0/0 0/0 .text            daE_SF_Draw__FP10e_sf_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_SF_Draw(e_sf_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/daE_SF_Draw__FP10e_sf_class.s"
}
#pragma pop

/* 80785654-8078572C 000614 00D8+00 1/1 0/0 0/0 .text other_bg_check__FP10e_sf_classP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void other_bg_check(e_sf_class* param_0, fopAc_ac_c* param_1) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/other_bg_check__FP10e_sf_classP10fopAc_ac_c.s"
}
#pragma pop

/* 8078572C-80785770 0006EC 0044+00 2/2 0/0 0/0 .text            player_way_check__FP10e_sf_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void player_way_check(e_sf_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/player_way_check__FP10e_sf_class.s"
}
#pragma pop

/* 80785770-80785880 000730 0110+00 1/1 0/0 0/0 .text            way_bg_check__FP10e_sf_classff */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void way_bg_check(e_sf_class* param_0, f32 param_1, f32 param_2) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/way_bg_check__FP10e_sf_classff.s"
}
#pragma pop

/* 80785880-80785944 000840 00C4+00 2/2 0/0 0/0 .text            pl_check__FP10e_sf_classfs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void pl_check(e_sf_class* param_0, f32 param_1, s16 param_2) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/pl_check__FP10e_sf_classfs.s"
}
#pragma pop

/* ############################################################################################## */
/* 80789C88-80789C8C 000050 0004+00 0/2 0/0 0/0 .rodata          @4234 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4234 = 200.0f;
COMPILER_STRIP_GATE(0x80789C88, &lit_4234);
#pragma pop

/* 80789C8C-80789C90 000054 0004+00 0/1 0/0 0/0 .rodata          @4235 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4235 = 32768.0f;
COMPILER_STRIP_GATE(0x80789C8C, &lit_4235);
#pragma pop

/* 80789C90-80789C94 000058 0004+00 0/1 0/0 0/0 .rodata          @4236 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4236 = 10000.0f;
COMPILER_STRIP_GATE(0x80789C90, &lit_4236);
#pragma pop

/* 80789C94-80789C98 00005C 0004+00 0/1 0/0 0/0 .rodata          @4237 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4237 = 600.0f;
COMPILER_STRIP_GATE(0x80789C94, &lit_4237);
#pragma pop

/* 80789C98-80789C9C 000060 0004+00 0/5 0/0 0/0 .rodata          @4238 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4238 = 3.0f;
COMPILER_STRIP_GATE(0x80789C98, &lit_4238);
#pragma pop

/* 80789C9C-80789CA0 000064 0004+00 0/1 0/0 0/0 .rodata          @4239 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4239 = 2000.0f;
COMPILER_STRIP_GATE(0x80789C9C, &lit_4239);
#pragma pop

/* 8078A030-8078A034 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 8078A034-8078A038 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 8078A038-8078A03C 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 8078A03C-8078A040 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 8078A040-8078A044 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 8078A044-8078A048 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 8078A048-8078A04C 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 8078A04C-8078A050 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 8078A050-8078A054 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 8078A054-8078A058 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 8078A058-8078A05C 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 8078A05C-8078A060 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 8078A060-8078A064 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 8078A064-8078A068 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 8078A068-8078A06C 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 8078A06C-8078A070 -00001 0004+00 1/2 0/0 0/0 .bss             None */
/* 8078A06C 0001+00 data_8078A06C @1009 */
/* 8078A06D 0003+00 data_8078A06D None */
static u8 struct_8078A06C[4];

/* 8078A070-8078A07C 000048 000C+00 1/1 0/0 0/0 .bss             @3924 */
static u8 lit_3924[12];

/* 8078A07C-8078A0A4 000054 0028+00 8/9 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[40];

/* 80785944-80785BF8 000904 02B4+00 1/1 0/0 0/0 .text            e_sf_normal__FP10e_sf_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_sf_normal(e_sf_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/e_sf_normal__FP10e_sf_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80789CA0-80789CA4 000068 0004+00 0/1 0/0 0/0 .rodata          @4262 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4262 = -5.0f;
COMPILER_STRIP_GATE(0x80789CA0, &lit_4262);
#pragma pop

/* 80789CA4-80789CA8 00006C 0004+00 0/2 0/0 0/0 .rodata          @4263 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4263 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80789CA4, &lit_4263);
#pragma pop

/* 80785BF8-80785D30 000BB8 0138+00 1/1 0/0 0/0 .text            e_sf_drawback__FP10e_sf_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_sf_drawback(e_sf_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/e_sf_drawback__FP10e_sf_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80789CA8-80789CAC 000070 0004+00 0/1 0/0 0/0 .rodata          @4349 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4349 = 15.0f;
COMPILER_STRIP_GATE(0x80789CA8, &lit_4349);
#pragma pop

/* 80785D30-807860F4 000CF0 03C4+00 2/1 0/0 0/0 .text            e_sf_fight_run__FP10e_sf_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_sf_fight_run(e_sf_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/e_sf_fight_run__FP10e_sf_class.s"
}
#pragma pop

/* 807860F4-80786154 0010B4 0060+00 2/2 0/0 0/0 .text            at_hit_check__FP10e_sf_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void at_hit_check(e_sf_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/at_hit_check__FP10e_sf_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80789CAC-80789CB0 000074 0004+00 0/1 0/0 0/0 .rodata          @4350 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4350 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80789CAC, &lit_4350);
#pragma pop

/* 80789CB0-80789CB4 000078 0004+00 0/3 0/0 0/0 .rodata          @4351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4351 = 20.0f;
COMPILER_STRIP_GATE(0x80789CB0, &lit_4351);
#pragma pop

/* 80789CB4-80789CB8 00007C 0004+00 0/1 0/0 0/0 .rodata          @4352 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4352 = 0.5f;
COMPILER_STRIP_GATE(0x80789CB4, &lit_4352);
#pragma pop

/* 80789CB8-80789CBC 000080 0004+00 0/1 0/0 0/0 .rodata          @4396 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4396 = 40.0f;
COMPILER_STRIP_GATE(0x80789CB8, &lit_4396);
#pragma pop

/* 80789CBC-80789CC0 000084 0004+00 0/1 0/0 0/0 .rodata          @4458 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4458 = 6.0f;
COMPILER_STRIP_GATE(0x80789CBC, &lit_4458);
#pragma pop

/* 80786154-8078632C 001114 01D8+00 1/1 0/0 0/0 .text            e_sf_attack_0__FP10e_sf_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_sf_attack_0(e_sf_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/e_sf_attack_0__FP10e_sf_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80789CC0-80789CC4 000088 0004+00 0/3 0/0 0/0 .rodata          @4509 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4509 = 8.0f;
COMPILER_STRIP_GATE(0x80789CC0, &lit_4509);
#pragma pop

/* 80789CC4-80789CC8 00008C 0004+00 0/2 0/0 0/0 .rodata          @4510 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4510 = 55.0f;
COMPILER_STRIP_GATE(0x80789CC4, &lit_4510);
#pragma pop

/* 8078632C-80786524 0012EC 01F8+00 1/1 0/0 0/0 .text            e_sf_attack__FP10e_sf_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_sf_attack(e_sf_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/e_sf_attack__FP10e_sf_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80789CC8-80789CCC 000090 0004+00 0/1 0/0 0/0 .rodata          @4556 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4556 = 2.0f;
COMPILER_STRIP_GATE(0x80789CC8, &lit_4556);
#pragma pop

/* 80786524-807866F8 0014E4 01D4+00 1/1 0/0 0/0 .text            e_sf_guard__FP10e_sf_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_sf_guard(e_sf_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/e_sf_guard__FP10e_sf_class.s"
}
#pragma pop

/* 807866F8-80786844 0016B8 014C+00 1/1 0/0 0/0 .text            e_sf_s_damage__FP10e_sf_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_sf_s_damage(e_sf_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/e_sf_s_damage__FP10e_sf_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80789D84-80789D84 00014C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80789D89 = "D_MN10";
#pragma pop

/* 8078A0A4-8078A0CC 00007C 0028+00 0/0 0/0 0/0 .bss             target_info */
#pragma push
#pragma force_active on
static u8 target_info[40];
#pragma pop

/* 8078A0CC-8078A0D0 0000A4 0004+00 0/0 0/0 0/0 .bss             target_info_count */
#pragma push
#pragma force_active on
static u8 target_info_count[4];
#pragma pop

/* 8078A0D0-8078A0D4 0000A8 0004+00 1/2 0/0 0/0 .bss             ret_ct */
static u8 ret_ct[4];

/* 80786844-80786B70 001804 032C+00 1/1 0/0 0/0 .text            e_sf_crash__FP10e_sf_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_sf_crash(e_sf_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/e_sf_crash__FP10e_sf_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80789CCC-80789CD0 000094 0004+00 0/1 0/0 0/0 .rodata          @4663 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4663 = 39.0f;
COMPILER_STRIP_GATE(0x80789CCC, &lit_4663);
#pragma pop

/* 80789CD0-80789CD8 000098 0008+00 0/1 0/0 0/0 .rodata          @4665 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4665[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80789CD0, &lit_4665);
#pragma pop

/* 80786B70-80786C50 001B30 00E0+00 1/1 0/0 0/0 .text            e_sf_crashwait__FP10e_sf_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_sf_crashwait(e_sf_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/e_sf_crashwait__FP10e_sf_class.s"
}
#pragma pop

/* 80786C50-80786DC0 001C10 0170+00 1/1 0/0 0/0 .text            e_sf_sitwait__FP10e_sf_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_sf_sitwait(e_sf_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/e_sf_sitwait__FP10e_sf_class.s"
}
#pragma pop

/* 80786DC0-80787018 001D80 0258+00 1/1 0/0 0/0 .text            e_sf_getup__FP10e_sf_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_sf_getup(e_sf_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/e_sf_getup__FP10e_sf_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80789CD8-80789CDC 0000A0 0004+00 1/1 0/0 0/0 .rodata          @4790 */
SECTION_RODATA static f32 const lit_4790 = 1.5f;
COMPILER_STRIP_GATE(0x80789CD8, &lit_4790);

/* 80787018-807870D0 001FD8 00B8+00 1/1 0/0 0/0 .text            crash_eff__FP10e_sf_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void crash_eff(e_sf_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/crash_eff__FP10e_sf_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80789CDC-80789CE0 0000A4 0004+00 1/1 0/0 0/0 .rodata          @4878 */
SECTION_RODATA static f32 const lit_4878 = 25.0f;
COMPILER_STRIP_GATE(0x80789CDC, &lit_4878);

/* 807870D0-807873C0 002090 02F0+00 1/1 0/0 0/0 .text            damage_check__FP10e_sf_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void damage_check(e_sf_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/damage_check__FP10e_sf_class.s"
}
#pragma pop

/* 807873C0-80787DD8 002380 0A18+00 2/1 0/0 0/0 .text            action__FP10e_sf_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void action(e_sf_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/action__FP10e_sf_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80789CE0-80789CE4 0000A8 0004+00 0/1 0/0 0/0 .rodata          @5196 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5196 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80789CE0, &lit_5196);
#pragma pop

/* 80789CE4-80789CE8 0000AC 0004+00 0/0 0/0 0/0 .rodata          @5197 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5197 = -4.0f;
COMPILER_STRIP_GATE(0x80789CE4, &lit_5197);
#pragma pop

/* 80789CE8-80789CEC 0000B0 0004+00 0/0 0/0 0/0 .rodata          @5198 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5198 = -120.0f;
COMPILER_STRIP_GATE(0x80789CE8, &lit_5198);
#pragma pop

/* 80789CEC-80789CF0 0000B4 0004+00 0/0 0/0 0/0 .rodata          @5199 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5199 = 7.0f;
COMPILER_STRIP_GATE(0x80789CEC, &lit_5199);
#pragma pop

/* 80789CF0-80789CF4 0000B8 0004+00 0/0 0/0 0/0 .rodata          @5200 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5200 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80789CF0, &lit_5200);
#pragma pop

/* 80789CF4-80789CF8 0000BC 0004+00 0/0 0/0 0/0 .rodata          @5201 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5201 = 2500.0f;
COMPILER_STRIP_GATE(0x80789CF4, &lit_5201);
#pragma pop

/* 80789CF8-80789CFC 0000C0 0004+00 0/0 0/0 0/0 .rodata          @5202 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5202 = -150.0f;
COMPILER_STRIP_GATE(0x80789CF8, &lit_5202);
#pragma pop

/* 80789CFC-80789D00 0000C4 0004+00 0/0 0/0 0/0 .rodata          @5203 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5203 = 4000.0f;
COMPILER_STRIP_GATE(0x80789CFC, &lit_5203);
#pragma pop

/* 80789D00-80789D08 0000C8 0004+04 0/0 0/0 0/0 .rodata          @5204 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5204[1 + 1 /* padding */] = {
    -1000000000.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80789D00, &lit_5204);
#pragma pop

/* 80789D08-80789D10 0000D0 0008+00 0/0 0/0 0/0 .rodata          @5207 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5207[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80789D08, &lit_5207);
#pragma pop

/* 80789D10-80789D14 0000D8 0004+00 0/1 0/0 0/0 .rodata          @5267 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5267 = 83.0f;
COMPILER_STRIP_GATE(0x80789D10, &lit_5267);
#pragma pop

/* 80789D14-80789D18 0000DC 0004+00 0/1 0/0 0/0 .rodata          @5268 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5268 = 3.5f;
COMPILER_STRIP_GATE(0x80789D14, &lit_5268);
#pragma pop

/* 80789D18-80789D1C 0000E0 0004+00 0/1 0/0 0/0 .rodata          @5269 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5269 = 4.0f;
COMPILER_STRIP_GATE(0x80789D18, &lit_5269);
#pragma pop

/* 80789D1C-80789D20 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5270 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5270 = 13.0f;
COMPILER_STRIP_GATE(0x80789D1C, &lit_5270);
#pragma pop

/* 80789D20-80789D24 0000E8 0004+00 0/1 0/0 0/0 .rodata          @5271 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5271 = 24.0f;
COMPILER_STRIP_GATE(0x80789D20, &lit_5271);
#pragma pop

/* 80789D24-80789D28 0000EC 0004+00 0/1 0/0 0/0 .rodata          @5272 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5272 = 38.0f;
COMPILER_STRIP_GATE(0x80789D24, &lit_5272);
#pragma pop

/* 80789D28-80789D2C 0000F0 0004+00 0/1 0/0 0/0 .rodata          @5273 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5273 = 57.0f;
COMPILER_STRIP_GATE(0x80789D28, &lit_5273);
#pragma pop

/* 80789D2C-80789D30 0000F4 0004+00 0/1 0/0 0/0 .rodata          @5274 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5274 = 22.0f;
COMPILER_STRIP_GATE(0x80789D2C, &lit_5274);
#pragma pop

/* 80789D30-80789D34 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5275 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5275 = 11.0f;
COMPILER_STRIP_GATE(0x80789D30, &lit_5275);
#pragma pop

/* 80789D34-80789D38 0000FC 0004+00 0/1 0/0 0/0 .rodata          @5276 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5276 = 18.0f;
COMPILER_STRIP_GATE(0x80789D34, &lit_5276);
#pragma pop

/* 80787DD8-80787FE0 002D98 0208+00 1/1 0/0 0/0 .text            anm_se_set__FP10e_sf_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void anm_se_set(e_sf_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/anm_se_set__FP10e_sf_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80789D38-80789D3C 000100 0004+00 0/1 0/0 0/0 .rodata          @5447 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5447 = 75.0f;
COMPILER_STRIP_GATE(0x80789D38, &lit_5447);
#pragma pop

/* 80789D3C-80789D40 000104 0004+00 0/1 0/0 0/0 .rodata          @5448 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5448 = 400.0f;
COMPILER_STRIP_GATE(0x80789D3C, &lit_5448);
#pragma pop

/* 80789D40-80789D44 000108 0004+00 0/1 0/0 0/0 .rodata          @5449 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5449 = 90.0f;
COMPILER_STRIP_GATE(0x80789D40, &lit_5449);
#pragma pop

/* 80789D44-80789D48 00010C 0004+00 0/1 0/0 0/0 .rodata          @5450 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5450 = 0.25f;
COMPILER_STRIP_GATE(0x80789D44, &lit_5450);
#pragma pop

/* 80789D48-80789D4C 000110 0004+00 0/1 0/0 0/0 .rodata          @5451 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5451 = -8918.0f;
COMPILER_STRIP_GATE(0x80789D48, &lit_5451);
#pragma pop

/* 80789D4C-80789D50 000114 0004+00 0/1 0/0 0/0 .rodata          @5452 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5452 = -462.0f;
COMPILER_STRIP_GATE(0x80789D4C, &lit_5452);
#pragma pop

/* 80789D50-80789D54 000118 0004+00 0/1 0/0 0/0 .rodata          @5453 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5453 = 700.0f;
COMPILER_STRIP_GATE(0x80789D50, &lit_5453);
#pragma pop

/* 80789D54-80789D58 00011C 0004+00 0/1 0/0 0/0 .rodata          @5454 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5454 = -250.0f;
COMPILER_STRIP_GATE(0x80789D54, &lit_5454);
#pragma pop

/* 80787FE0-80788568 002FA0 0588+00 1/1 0/0 0/0 .text            demo_camera__FP10e_sf_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void demo_camera(e_sf_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/demo_camera__FP10e_sf_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80789D58-80789D5C 000120 0004+00 0/1 0/0 0/0 .rodata          @5676 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5676 = -200000.0f;
COMPILER_STRIP_GATE(0x80789D58, &lit_5676);
#pragma pop

/* 80789D5C-80789D60 000124 0004+00 0/1 0/0 0/0 .rodata          @5677 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5677 = -150000.0f;
COMPILER_STRIP_GATE(0x80789D5C, &lit_5677);
#pragma pop

/* 80789D60-80789D64 000128 0004+00 0/1 0/0 0/0 .rodata          @5678 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5678 = -20.0f;
COMPILER_STRIP_GATE(0x80789D60, &lit_5678);
#pragma pop

/* 80789D64-80789D68 00012C 0004+00 0/1 0/0 0/0 .rodata          @5679 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5679 = -30.0f;
COMPILER_STRIP_GATE(0x80789D64, &lit_5679);
#pragma pop

/* 80789D68-80789D6C 000130 0004+00 0/1 0/0 0/0 .rodata          @5680 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5680 = 30.0f;
COMPILER_STRIP_GATE(0x80789D68, &lit_5680);
#pragma pop

/* 80789D6C-80789D70 000134 0004+00 0/2 0/0 0/0 .rodata          @5681 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5681 = 80.0f;
COMPILER_STRIP_GATE(0x80789D6C, &lit_5681);
#pragma pop

/* 80789D70-80789D74 000138 0004+00 0/1 0/0 0/0 .rodata          @5682 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5682 = 35.0f;
COMPILER_STRIP_GATE(0x80789D70, &lit_5682);
#pragma pop

/* 80789D74-80789D78 00013C 0004+00 0/1 0/0 0/0 .rodata          @5683 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5683 = -60.0f;
COMPILER_STRIP_GATE(0x80789D74, &lit_5683);
#pragma pop

/* 80789D78-80789D7C 000140 0004+00 0/1 0/0 0/0 .rodata          @5684 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5684 = 180.0f;
COMPILER_STRIP_GATE(0x80789D78, &lit_5684);
#pragma pop

/* 80788568-80788D38 003528 07D0+00 2/1 0/0 0/0 .text            daE_SF_Execute__FP10e_sf_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_SF_Execute(e_sf_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/daE_SF_Execute__FP10e_sf_class.s"
}
#pragma pop

/* 80788D38-80788D40 003CF8 0008+00 1/0 0/0 0/0 .text            daE_SF_IsDelete__FP10e_sf_class */
static bool daE_SF_IsDelete(e_sf_class* param_0) {
    return true;
}

/* 80788D40-80788DA8 003D00 0068+00 1/0 0/0 0/0 .text            daE_SF_Delete__FP10e_sf_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_SF_Delete(e_sf_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/daE_SF_Delete__FP10e_sf_class.s"
}
#pragma pop

/* 80788DA8-80788F88 003D68 01E0+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void useHeapInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/useHeapInit__FP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80789D7C-80789D80 000144 0004+00 0/1 0/0 0/0 .rodata          @5929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5929 = -200.0f;
COMPILER_STRIP_GATE(0x80789D7C, &lit_5929);
#pragma pop

/* 80789D80-80789D84 000148 0004+00 0/1 0/0 0/0 .rodata          @5930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5930 = 65535.0f;
COMPILER_STRIP_GATE(0x80789D80, &lit_5930);
#pragma pop

/* 80788F88-80789418 003F48 0490+00 1/0 0/0 0/0 .text            daE_SF_Create__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_SF_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/daE_SF_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80789418-80789460 0043D8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 80789460-807894A8 004420 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 807894A8-80789574 004468 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Sph::~dCcD_Sph() {
extern "C" asm void __dt__8dCcD_SphFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/__dt__8dCcD_SphFv.s"
}
#pragma pop

/* 80789574-807895F8 004534 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Sph::dCcD_Sph() {
extern "C" asm void __ct__8dCcD_SphFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/__ct__8dCcD_SphFv.s"
}
#pragma pop

/* 807895F8-80789654 0045B8 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80789654-807896C4 004614 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 807896C4-80789734 004684 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80789734-8078977C 0046F4 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 8078977C-807897C4 00473C 0048+00 2/1 0/0 0/0 .text            __dt__12daE_SF_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daE_SF_HIO_c::~daE_SF_HIO_c() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/__dt__12daE_SF_HIO_cFv.s"
}
#pragma pop

/* 807897C4-80789800 004784 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_sf_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_e_sf_cpp() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/__sinit_d_a_e_sf_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x807897C4, __sinit_d_a_e_sf_cpp);
#pragma pop

/* 80789800-80789808 0047C0 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80789800() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/func_80789800.s"
}
#pragma pop

/* 80789808-80789810 0047C8 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80789808() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/func_80789808.s"
}
#pragma pop

/* 80789810-80789C24 0047D0 0414+00 1/1 0/0 0/0 .text
 * setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz* param_2,
                                   cXyz* param_3) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_sf/d_a_e_sf/setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz.s"
}
#pragma pop

/* ############################################################################################## */
/* 8078A0D4-8078A0D8 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8078A0D4[4];
#pragma pop

/* 8078A0D8-8078A0DC 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8078A0D8[4];
#pragma pop

/* 8078A0DC-8078A0E0 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8078A0DC[4];
#pragma pop

/* 8078A0E0-8078A0E4 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8078A0E0[4];
#pragma pop

/* 8078A0E4-8078A0E8 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8078A0E4[4];
#pragma pop

/* 8078A0E8-8078A0EC 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8078A0E8[4];
#pragma pop

/* 8078A0EC-8078A0F0 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8078A0EC[4];
#pragma pop

/* 8078A0F0-8078A0F4 0000C8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8078A0F0[4];
#pragma pop

/* 8078A0F4-8078A0F8 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8078A0F4[4];
#pragma pop

/* 8078A0F8-8078A0FC 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8078A0F8[4];
#pragma pop

/* 8078A0FC-8078A100 0000D4 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8078A0FC[4];
#pragma pop

/* 8078A100-8078A104 0000D8 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8078A100[4];
#pragma pop

/* 8078A104-8078A108 0000DC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8078A104[4];
#pragma pop

/* 8078A108-8078A10C 0000E0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8078A108[4];
#pragma pop

/* 8078A10C-8078A110 0000E4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8078A10C[4];
#pragma pop

/* 8078A110-8078A114 0000E8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8078A110[4];
#pragma pop

/* 8078A114-8078A118 0000EC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8078A114[4];
#pragma pop

/* 8078A118-8078A11C 0000F0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8078A118[4];
#pragma pop

/* 8078A11C-8078A120 0000F4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8078A11C[4];
#pragma pop

/* 8078A120-8078A124 0000F8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8078A120[4];
#pragma pop

/* 8078A124-8078A128 0000FC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8078A124[4];
#pragma pop

/* 8078A128-8078A12C 000100 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8078A128[4];
#pragma pop

/* 8078A12C-8078A130 000104 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8078A12C[4];
#pragma pop

/* 8078A130-8078A134 000108 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8078A130[4];
#pragma pop

/* 8078A134-8078A138 00010C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8078A134[4];
#pragma pop

/* 80789D84-80789D84 00014C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
