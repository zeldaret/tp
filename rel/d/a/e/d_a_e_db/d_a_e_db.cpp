/**
 * @file d_a_e_db.cpp
 * 
*/

#include "rel/d/a/e/d_a_e_db/d_a_e_db.h"
#include "d/cc/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__12daE_DB_HIO_cFv();
extern "C" static void anm_init__FP10e_db_classifUcf();
extern "C" static void leaf_anm_init__FP10e_db_classifUcf();
extern "C" static void daE_DB_Draw__FP10e_db_class();
extern "C" static void pl_check__FP10e_db_classf();
extern "C" static void damage_check__FP10e_db_class();
extern "C" static void e_db_stay__FP10e_db_class();
extern "C" static void e_db_appear__FP10e_db_class();
extern "C" static void e_db_appear_v__FP10e_db_class();
extern "C" static void e_db_wait__FP10e_db_class();
extern "C" static void e_db_mk_roof__FP10e_db_class();
extern "C" static void e_db_attack__FP10e_db_class();
extern "C" static void e_db_attack_s__FP10e_db_class();
extern "C" static void e_db_chance__FP10e_db_class();
extern "C" static void e_db_s_damage__FP10e_db_class();
extern "C" static void e_db_damage__FP10e_db_class();
extern "C" static void kuki_control1__FP10e_db_class();
extern "C" static void kuki_control2__FP10e_db_class();
extern "C" static void kuki_control3__FP10e_db_class();
extern "C" static void kuki_ha_set__FP10e_db_class();
extern "C" static void kuki_control1_e__FP10e_db_class();
extern "C" static void e_db_escape__FP10e_db_class();
extern "C" static void e_db_e_dead__FP10e_db_class();
extern "C" static void action__FP10e_db_class();
extern "C" static void eff_set__FP10e_db_classi();
extern "C" static void anm_se_set__FP10e_db_class();
extern "C" static void daE_DB_Execute__FP10e_db_class();
extern "C" static bool daE_DB_IsDelete__FP10e_db_class();
extern "C" static void daE_DB_Delete__FP10e_db_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_DB_Create__FP10fopAc_ac_c();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_DB_HIO_cFv();
extern "C" void __sinit_d_a_e_db_cpp();
extern "C" static void func_806A145C();
extern "C" static void func_806A1464();
extern "C" static void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_db__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi();
extern "C" void update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void onActor__10dSv_info_cFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void forceOnEventMove__Q213dPa_control_c7level_cFUl();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
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
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void StartCAt__8dCcD_SphFR4cXyz();
extern "C" void MoveCAt__8dCcD_SphFR4cXyz();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void setLookPos__9daPy_py_cFP4cXyz();
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
extern "C" void MtxScale__FfffUc();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void deleteAllParticle__14JPABaseEmitterFv();
extern "C" void func_802807E0();
extern "C" void func_80280808();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_20();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_20();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__19mDoExt_3DlineMat1_c[5];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mGndCheck__11fopAcM_gc_c[84];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 806A190C-806A1910 000000 0004+00 23/23 0/0 0/0 .rodata          @3902 */
SECTION_RODATA static f32 const lit_3902 = 100.0f;
COMPILER_STRIP_GATE(0x806A190C, &lit_3902);

/* 806A1910-806A1914 000004 0004+00 3/22 0/0 0/0 .rodata          @3903 */
SECTION_RODATA static u8 const lit_3903[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x806A1910, &lit_3903);

/* 806A1914-806A191C 000008 0004+04 1/20 0/0 0/0 .rodata          @3904 */
SECTION_RODATA static f32 const lit_3904[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806A1914, &lit_3904);

/* 806A191C-806A1924 000010 0008+00 0/6 0/0 0/0 .rodata          @3905 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3905[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806A191C, &lit_3905);
#pragma pop

/* 806A1924-806A192C 000018 0008+00 0/6 0/0 0/0 .rodata          @3906 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3906[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806A1924, &lit_3906);
#pragma pop

/* 806A192C-806A1934 000020 0008+00 0/6 0/0 0/0 .rodata          @3907 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3907[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806A192C, &lit_3907);
#pragma pop

/* 806A1934-806A1938 000028 0004+00 0/1 0/0 0/0 .rodata          @3908 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3908 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x806A1934, &lit_3908);
#pragma pop

/* 806A1938-806A193C 00002C 0004+00 0/6 0/0 0/0 .rodata          @3923 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3923 = 0.5f;
COMPILER_STRIP_GATE(0x806A1938, &lit_3923);
#pragma pop

/* 806A193C-806A1940 000030 0004+00 0/1 0/0 0/0 .rodata          @3924 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3924 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x806A193C, &lit_3924);
#pragma pop

/* 806A1A74-806A1A80 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 806A1A80-806A1A94 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 806A1A94-806A1A9C 000020 0008+00 0/1 0/0 0/0 .data            e_prim$3781 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim[8] = {
    0xFF, 0x78, 0x00, 0x00, 0xFF, 0x64, 0x78, 0x00,
};
#pragma pop

/* 806A1A9C-806A1AA4 000028 0008+00 0/1 0/0 0/0 .data            e_env$3782 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env[8] = {
    0x5A, 0x2D, 0x2D, 0x00, 0x3C, 0x1E, 0x1E, 0x00,
};
#pragma pop

/* 806A1AA4-806A1AAC 000030 0006+02 0/1 0/0 0/0 .data            eff_id$3790 */
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

/* 806A1AAC-806A1AB0 000038 0004+00 1/1 0/0 0/0 .data            l_color$3961 */
SECTION_DATA static u8 l_color[4] = {
    0x14,
    0x0F,
    0x00,
    0xFF,
};

/* 806A1AB0-806A1AC8 00003C 0016+02 1/1 0/0 0/0 .data            pow_xa$4854 */
SECTION_DATA static u8 pow_xa[22 + 2 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    0x10,
    0x00,
    0x20,
    0x00,
    0x30,
    0x00,
    0x40,
    0x00,
    0x30,
    0x00,
    0x20,
    0x00,
    0x10,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
};

/* 806A1AC8-806A1B94 -00001 00CC+00 1/1 0/0 0/0 .data            @5359 */
SECTION_DATA static void* lit_5359[51] = {
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xD8),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0x168),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0x290),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0x428),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0x4B8),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0x504),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0x558),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0x6C4),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0x95C),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0xAC0),
    (void*)(((char*)e_db_escape__FP10e_db_class) + 0x9B0),
};

/* 806A1B94-806A1BEC -00001 0058+00 1/1 0/0 0/0 .data            @5647 */
SECTION_DATA static void* lit_5647[22] = {
    (void*)(((char*)action__FP10e_db_class) + 0x1D0),
    (void*)(((char*)action__FP10e_db_class) + 0x1E4),
    (void*)(((char*)action__FP10e_db_class) + 0x204),
    (void*)(((char*)action__FP10e_db_class) + 0x224),
    (void*)(((char*)action__FP10e_db_class) + 0x244),
    (void*)(((char*)action__FP10e_db_class) + 0x264),
    (void*)(((char*)action__FP10e_db_class) + 0x284),
    (void*)(((char*)action__FP10e_db_class) + 0x2A4),
    (void*)(((char*)action__FP10e_db_class) + 0x2C4),
    (void*)(((char*)action__FP10e_db_class) + 0x320),
    (void*)(((char*)action__FP10e_db_class) + 0x2D4),
    (void*)(((char*)action__FP10e_db_class) + 0x320),
    (void*)(((char*)action__FP10e_db_class) + 0x320),
    (void*)(((char*)action__FP10e_db_class) + 0x320),
    (void*)(((char*)action__FP10e_db_class) + 0x320),
    (void*)(((char*)action__FP10e_db_class) + 0x320),
    (void*)(((char*)action__FP10e_db_class) + 0x320),
    (void*)(((char*)action__FP10e_db_class) + 0x320),
    (void*)(((char*)action__FP10e_db_class) + 0x320),
    (void*)(((char*)action__FP10e_db_class) + 0x320),
    (void*)(((char*)action__FP10e_db_class) + 0x2E8),
    (void*)(((char*)action__FP10e_db_class) + 0x314),
};

/* 806A1BEC-806A1BF4 000178 0006+02 1/1 0/0 0/0 .data            p_name$5653 */
SECTION_DATA static u8 p_name[6 + 2 /* padding */] = {
    0x81,
    0xC4,
    0x81,
    0xC5,
    0x81,
    0xC6,
    /* padding */
    0x00,
    0x00,
};

/* 806A1BF4-806A1C00 000180 000C+00 1/1 0/0 0/0 .data            p_idx$5654 */
SECTION_DATA static u8 p_idx[12] = {
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06,
};

/* 806A1C00-806A1C40 00018C 0040+00 0/1 0/0 0/0 .data            cc_sph_src$5987 */
#pragma push
#pragma force_active on
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x25}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 806A1C40-806A1C80 0001CC 0040+00 0/1 0/0 0/0 .data            at_sph_src$5988 */
#pragma push
#pragma force_active on
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 806A1C80-806A1CC0 00020C 0040+00 0/1 0/0 0/0 .data            kuki_sph_src$5989 */
#pragma push
#pragma force_active on
static dCcD_SrcSph kuki_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 20.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 806A1CC0-806A1CE0 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_DB_Method */
static actor_method_class l_daE_DB_Method = {
    (process_method_func)daE_DB_Create__FP10fopAc_ac_c,
    (process_method_func)daE_DB_Delete__FP10e_db_class,
    (process_method_func)daE_DB_Execute__FP10e_db_class,
    (process_method_func)daE_DB_IsDelete__FP10e_db_class,
    (process_method_func)daE_DB_Draw__FP10e_db_class,
};

/* 806A1CE0-806A1D10 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_DB */
extern actor_process_profile_definition g_profile_E_DB = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_DB,              // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(e_db_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  136,                    // mPriority
  &l_daE_DB_Method,       // sub_method
  0x10050120,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 806A1D10-806A1D1C 00029C 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 806A1D1C-806A1D28 0002A8 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 806A1D28-806A1D34 0002B4 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 806A1D34-806A1D58 0002C0 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806A1464,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806A145C,
};

/* 806A1D58-806A1D64 0002E4 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806A1D64-806A1D70 0002F0 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806A1D70-806A1D84 0002FC 0014+00 1/1 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 806A1D84-806A1D90 000310 000C+00 2/2 0/0 0/0 .data            __vt__12daE_DB_HIO_c */
SECTION_DATA extern void* __vt__12daE_DB_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_DB_HIO_cFv,
};

/* 8069AAEC-8069AB34 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__12daE_DB_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daE_DB_HIO_c::daE_DB_HIO_c() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/__ct__12daE_DB_HIO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 806A1940-806A1944 000034 0004+00 2/3 0/0 0/0 .rodata          @3938 */
SECTION_RODATA static f32 const lit_3938 = -1.0f;
COMPILER_STRIP_GATE(0x806A1940, &lit_3938);

/* 806A1A6C-806A1A6C 000160 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806A1A6C = "E_db";
#pragma pop

/* 8069AB34-8069ABE0 000134 00AC+00 12/12 0/0 0/0 .text            anm_init__FP10e_db_classifUcf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void anm_init(e_db_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/anm_init__FP10e_db_classifUcf.s"
}
#pragma pop

/* 8069ABE0-8069ACB8 0001E0 00D8+00 11/11 0/0 0/0 .text leaf_anm_init__FP10e_db_classifUcf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void leaf_anm_init(e_db_class* param_0, int param_1, f32 param_2, u8 param_3,
                              f32 param_4) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/leaf_anm_init__FP10e_db_classifUcf.s"
}
#pragma pop

/* ############################################################################################## */
/* 806A1944-806A1948 000038 0004+00 0/7 0/0 0/0 .rodata          @4015 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4015 = 50.0f;
COMPILER_STRIP_GATE(0x806A1944, &lit_4015);
#pragma pop

/* 806A1948-806A194C 00003C 0004+00 0/1 0/0 0/0 .rodata          @4016 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4016 = 600.0f;
COMPILER_STRIP_GATE(0x806A1948, &lit_4016);
#pragma pop

/* 8069ACB8-8069AFB4 0002B8 02FC+00 1/0 0/0 0/0 .text            daE_DB_Draw__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_DB_Draw(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/daE_DB_Draw__FP10e_db_class.s"
}
#pragma pop

/* 8069AFB4-8069B000 0005B4 004C+00 2/2 0/0 0/0 .text            pl_check__FP10e_db_classf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void pl_check(e_db_class* param_0, f32 param_1) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/pl_check__FP10e_db_classf.s"
}
#pragma pop

/* ############################################################################################## */
/* 806A194C-806A1950 000040 0004+00 0/9 0/0 0/0 .rodata          @4118 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4118 = 10.0f;
COMPILER_STRIP_GATE(0x806A194C, &lit_4118);
#pragma pop

/* 806A1950-806A1954 000044 0004+00 0/1 0/0 0/0 .rodata          @4119 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4119 = -15.0f;
COMPILER_STRIP_GATE(0x806A1950, &lit_4119);
#pragma pop

/* 806A1954-806A1958 000048 0004+00 0/4 0/0 0/0 .rodata          @4120 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4120 = 60.0f;
COMPILER_STRIP_GATE(0x806A1954, &lit_4120);
#pragma pop

/* 806A1958-806A195C 00004C 0004+00 0/9 0/0 0/0 .rodata          @4121 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4121 = 30.0f;
COMPILER_STRIP_GATE(0x806A1958, &lit_4121);
#pragma pop

/* 806A195C-806A1960 000050 0004+00 1/8 0/0 0/0 .rodata          @4122 */
SECTION_RODATA static f32 const lit_4122 = 5.0f;
COMPILER_STRIP_GATE(0x806A195C, &lit_4122);

/* 806A1960-806A1964 000054 0004+00 0/9 0/0 0/0 .rodata          @4123 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4123 = 20.0f;
COMPILER_STRIP_GATE(0x806A1960, &lit_4123);
#pragma pop

/* 806A1964-806A1968 000058 0004+00 0/2 0/0 0/0 .rodata          @4124 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4124 = -10.0f;
COMPILER_STRIP_GATE(0x806A1964, &lit_4124);
#pragma pop

/* 8069B000-8069B468 000600 0468+00 1/1 0/0 0/0 .text            damage_check__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void damage_check(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/damage_check__FP10e_db_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806A1968-806A196C 00005C 0004+00 0/2 0/0 0/0 .rodata          @4183 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4183 = -170.0f;
COMPILER_STRIP_GATE(0x806A1968, &lit_4183);
#pragma pop

/* 806A196C-806A1970 000060 0004+00 0/4 0/0 0/0 .rodata          @4184 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4184 = 170.0f;
COMPILER_STRIP_GATE(0x806A196C, &lit_4184);
#pragma pop

/* 806A1970-806A1974 000064 0004+00 0/5 0/0 0/0 .rodata          @4185 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4185 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x806A1970, &lit_4185);
#pragma pop

/* 806A1974-806A1978 000068 0004+00 0/7 0/0 0/0 .rodata          @4186 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4186 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x806A1974, &lit_4186);
#pragma pop

/* 806A1978-806A197C 00006C 0004+00 0/1 0/0 0/0 .rodata          @4187 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4187 = 4.0f;
COMPILER_STRIP_GATE(0x806A1978, &lit_4187);
#pragma pop

/* 806A197C-806A1980 000070 0004+00 0/2 0/0 0/0 .rodata          @4188 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4188 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x806A197C, &lit_4188);
#pragma pop

/* 806A1980-806A1984 000074 0004+00 0/1 0/0 0/0 .rodata          @4189 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4189 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x806A1980, &lit_4189);
#pragma pop

/* 806A1984-806A1988 000078 0004+00 0/8 0/0 0/0 .rodata          @4190 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4190 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x806A1984, &lit_4190);
#pragma pop

/* 806A1D98-806A1D9C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_806A1D98[4];

/* 806A1D9C-806A1DA8 00000C 000C+00 1/1 0/0 0/0 .bss             @3918 */
static u8 lit_3918[12];

/* 806A1DA8-806A1DC0 000018 0018+00 11/11 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[24];

/* 8069B468-8069B7C0 000A68 0358+00 1/1 0/0 0/0 .text            e_db_stay__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_db_stay(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/e_db_stay__FP10e_db_class.s"
}
#pragma pop

/* 8069B7C0-8069BA80 000DC0 02C0+00 1/1 0/0 0/0 .text            e_db_appear__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_db_appear(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/e_db_appear__FP10e_db_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806A1988-806A198C 00007C 0004+00 0/4 0/0 0/0 .rodata          @4253 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4253 = 15.0f;
COMPILER_STRIP_GATE(0x806A1988, &lit_4253);
#pragma pop

/* 806A198C-806A1990 000080 0004+00 0/3 0/0 0/0 .rodata          @4254 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4254 = 40.0f;
COMPILER_STRIP_GATE(0x806A198C, &lit_4254);
#pragma pop

/* 806A1990-806A1994 000084 0004+00 0/3 0/0 0/0 .rodata          @4255 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4255 = 400.0f;
COMPILER_STRIP_GATE(0x806A1990, &lit_4255);
#pragma pop

/* 806A1994-806A1998 000088 0004+00 0/1 0/0 0/0 .rodata          @4256 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4256 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x806A1994, &lit_4256);
#pragma pop

/* 8069BA80-8069BC4C 001080 01CC+00 1/1 0/0 0/0 .text            e_db_appear_v__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_db_appear_v(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/e_db_appear_v__FP10e_db_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806A1998-806A199C 00008C 0004+00 0/2 0/0 0/0 .rodata          @4356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4356 = 0.75f;
COMPILER_STRIP_GATE(0x806A1998, &lit_4356);
#pragma pop

/* 806A199C-806A19A0 000090 0004+00 0/1 0/0 0/0 .rodata          @4357 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4357 = 90.0f;
COMPILER_STRIP_GATE(0x806A199C, &lit_4357);
#pragma pop

/* 806A19A0-806A19A4 000094 0004+00 0/2 0/0 0/0 .rodata          @4358 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4358 = -100.0f;
COMPILER_STRIP_GATE(0x806A19A0, &lit_4358);
#pragma pop

/* 806A19A4-806A19A8 000098 0004+00 0/2 0/0 0/0 .rodata          @4359 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4359 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x806A19A4, &lit_4359);
#pragma pop

/* 806A19A8-806A19AC 00009C 0004+00 0/1 0/0 0/0 .rodata          @4360 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4360 = 700.0f;
COMPILER_STRIP_GATE(0x806A19A8, &lit_4360);
#pragma pop

/* 806A19AC-806A19B4 0000A0 0008+00 1/3 0/0 0/0 .rodata          @4362 */
SECTION_RODATA static u8 const lit_4362[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806A19AC, &lit_4362);

/* 8069BC4C-8069C1AC 00124C 0560+00 1/1 0/0 0/0 .text            e_db_wait__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_db_wait(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/e_db_wait__FP10e_db_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806A19B4-806A19B8 0000A8 0004+00 0/4 0/0 0/0 .rodata          @4392 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4392 = 70.0f;
COMPILER_STRIP_GATE(0x806A19B4, &lit_4392);
#pragma pop

/* 806A19B8-806A19BC 0000AC 0004+00 0/2 0/0 0/0 .rodata          @4393 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4393 = 250.0f;
COMPILER_STRIP_GATE(0x806A19B8, &lit_4393);
#pragma pop

/* 8069C1AC-8069C408 0017AC 025C+00 1/1 0/0 0/0 .text            e_db_mk_roof__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_db_mk_roof(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/e_db_mk_roof__FP10e_db_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806A19BC-806A19C0 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4603 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4603 = 350.0f;
COMPILER_STRIP_GATE(0x806A19BC, &lit_4603);
#pragma pop

/* 806A19C0-806A19C4 0000B4 0004+00 0/2 0/0 0/0 .rodata          @4604 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4604 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x806A19C0, &lit_4604);
#pragma pop

/* 806A19C4-806A19C8 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4605 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4605 = 2.0f;
COMPILER_STRIP_GATE(0x806A19C4, &lit_4605);
#pragma pop

/* 806A19C8-806A19CC 0000BC 0004+00 0/2 0/0 0/0 .rodata          @4606 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4606 = 2000.0f;
COMPILER_STRIP_GATE(0x806A19C8, &lit_4606);
#pragma pop

/* 806A19CC-806A19D0 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4607 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4607 = -70.0f;
COMPILER_STRIP_GATE(0x806A19CC, &lit_4607);
#pragma pop

/* 806A19D0-806A19D4 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4608 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4608 = 80.0f;
COMPILER_STRIP_GATE(0x806A19D0, &lit_4608);
#pragma pop

/* 806A19D4-806A19D8 0000C8 0004+00 0/3 0/0 0/0 .rodata          @4609 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4609 = 200.0f;
COMPILER_STRIP_GATE(0x806A19D4, &lit_4609);
#pragma pop

/* 8069C408-8069CED8 001A08 0AD0+00 1/1 0/0 0/0 .text            e_db_attack__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_db_attack(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/e_db_attack__FP10e_db_class.s"
}
#pragma pop

/* 8069CED8-8069D234 0024D8 035C+00 1/1 0/0 0/0 .text            e_db_attack_s__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_db_attack_s(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/e_db_attack_s__FP10e_db_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806A19D8-806A19DC 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4723 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4723 = 230.0f;
COMPILER_STRIP_GATE(0x806A19D8, &lit_4723);
#pragma pop

/* 806A19DC-806A19E0 0000D0 0004+00 0/5 0/0 0/0 .rodata          @4724 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4724 = 3.0f;
COMPILER_STRIP_GATE(0x806A19DC, &lit_4724);
#pragma pop

/* 8069D234-8069D534 002834 0300+00 1/1 0/0 0/0 .text            e_db_chance__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_db_chance(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/e_db_chance__FP10e_db_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806A19E0-806A19E4 0000D4 0004+00 0/2 0/0 0/0 .rodata          @4767 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4767 = -50.0f;
COMPILER_STRIP_GATE(0x806A19E0, &lit_4767);
#pragma pop

/* 806A19E4-806A19E8 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4768 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4768 = 23.0f / 25.0f;
COMPILER_STRIP_GATE(0x806A19E4, &lit_4768);
#pragma pop

/* 8069D534-8069D770 002B34 023C+00 1/1 0/0 0/0 .text            e_db_s_damage__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_db_s_damage(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/e_db_s_damage__FP10e_db_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806A19E8-806A19EC 0000DC 0004+00 0/3 0/0 0/0 .rodata          @4848 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4848 = -20.0f;
COMPILER_STRIP_GATE(0x806A19E8, &lit_4848);
#pragma pop

/* 806A19EC-806A19F0 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4849 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4849 = 450.0f;
COMPILER_STRIP_GATE(0x806A19EC, &lit_4849);
#pragma pop

/* 806A19F0-806A19F4 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4850 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4850 = -1.0f / 10.0f;
COMPILER_STRIP_GATE(0x806A19F0, &lit_4850);
#pragma pop

/* 8069D770-8069DB68 002D70 03F8+00 1/1 0/0 0/0 .text            e_db_damage__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_db_damage(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/e_db_damage__FP10e_db_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806A19F4-806A19F8 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4936 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4936 = -30.0f;
COMPILER_STRIP_GATE(0x806A19F4, &lit_4936);
#pragma pop

/* 806A19F8-806A19FC 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4937 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4937 = -200.0f;
COMPILER_STRIP_GATE(0x806A19F8, &lit_4937);
#pragma pop

/* 8069DB68-8069DEC4 003168 035C+00 1/1 0/0 0/0 .text            kuki_control1__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void kuki_control1(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/kuki_control1__FP10e_db_class.s"
}
#pragma pop

/* 8069DEC4-8069E038 0034C4 0174+00 1/1 0/0 0/0 .text            kuki_control2__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void kuki_control2(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/kuki_control2__FP10e_db_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806A19FC-806A1A00 0000F0 0004+00 1/1 0/0 0/0 .rodata          @4992 */
SECTION_RODATA static f32 const lit_4992 = 11.0f;
COMPILER_STRIP_GATE(0x806A19FC, &lit_4992);

/* 8069E038-8069E114 003638 00DC+00 1/1 0/0 0/0 .text            kuki_control3__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void kuki_control3(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/kuki_control3__FP10e_db_class.s"
}
#pragma pop

/* 8069E114-8069E200 003714 00EC+00 1/1 0/0 0/0 .text            kuki_ha_set__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void kuki_ha_set(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/kuki_ha_set__FP10e_db_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806A1A00-806A1A04 0000F4 0004+00 0/1 0/0 0/0 .rodata          @5085 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5085 = -5.0f;
COMPILER_STRIP_GATE(0x806A1A00, &lit_5085);
#pragma pop

/* 8069E200-8069E504 003800 0304+00 1/1 0/0 0/0 .text            kuki_control1_e__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void kuki_control1_e(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/kuki_control1_e__FP10e_db_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806A1A04-806A1A08 0000F8 0004+00 0/2 0/0 0/0 .rodata          @5349 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5349 = 25.0f;
COMPILER_STRIP_GATE(0x806A1A04, &lit_5349);
#pragma pop

/* 8069E504-8069F360 003B04 0E5C+00 2/1 0/0 0/0 .text            e_db_escape__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_db_escape(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/e_db_escape__FP10e_db_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806A1A08-806A1A0C 0000FC 0004+00 0/1 0/0 0/0 .rodata          @5350 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5350 = 300.0f;
COMPILER_STRIP_GATE(0x806A1A08, &lit_5350);
#pragma pop

/* 806A1A0C-806A1A10 000100 0004+00 0/0 0/0 0/0 .rodata          @5351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5351 = 7.5f;
COMPILER_STRIP_GATE(0x806A1A0C, &lit_5351);
#pragma pop

/* 806A1A10-806A1A14 000104 0004+00 0/0 0/0 0/0 .rodata          @5352 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5352 = 0.25f;
COMPILER_STRIP_GATE(0x806A1A10, &lit_5352);
#pragma pop

/* 806A1A14-806A1A18 000108 0004+00 0/0 0/0 0/0 .rodata          @5353 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5353 = 65536.0f;
COMPILER_STRIP_GATE(0x806A1A14, &lit_5353);
#pragma pop

/* 806A1A18-806A1A1C 00010C 0004+00 0/0 0/0 0/0 .rodata          @5354 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5354 = 5000.0f;
COMPILER_STRIP_GATE(0x806A1A18, &lit_5354);
#pragma pop

/* 806A1A1C-806A1A20 000110 0004+00 0/0 0/0 0/0 .rodata          @5355 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5355 = -80.0f;
COMPILER_STRIP_GATE(0x806A1A1C, &lit_5355);
#pragma pop

/* 806A1A20-806A1A24 000114 0004+00 0/1 0/0 0/0 .rodata          @5356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5356 = 35.0f;
COMPILER_STRIP_GATE(0x806A1A20, &lit_5356);
#pragma pop

/* 806A1A24-806A1A28 000118 0004+00 0/1 0/0 0/0 .rodata          @5357 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5357 = -7.0f;
COMPILER_STRIP_GATE(0x806A1A24, &lit_5357);
#pragma pop

/* 806A1A28-806A1A2C 00011C 0004+00 0/1 0/0 0/0 .rodata          @5358 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5358 = 9.0f / 5.0f;
COMPILER_STRIP_GATE(0x806A1A28, &lit_5358);
#pragma pop

/* 806A1A2C-806A1A30 000120 0004+00 0/1 0/0 0/0 .rodata          @5499 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5499 = -40.0f;
COMPILER_STRIP_GATE(0x806A1A2C, &lit_5499);
#pragma pop

/* 806A1A30-806A1A34 000124 0004+00 0/1 0/0 0/0 .rodata          @5500 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5500 = -3.0f / 10.0f;
COMPILER_STRIP_GATE(0x806A1A30, &lit_5500);
#pragma pop

/* 8069F360-8069F978 004960 0618+00 1/1 0/0 0/0 .text            e_db_e_dead__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_db_e_dead(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/e_db_e_dead__FP10e_db_class.s"
}
#pragma pop

/* 8069F978-8069FFFC 004F78 0684+00 2/1 0/0 0/0 .text            action__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void action(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/action__FP10e_db_class.s"
}
#pragma pop

/* 8069FFFC-806A03C4 0055FC 03C8+00 1/1 0/0 0/0 .text            eff_set__FP10e_db_classi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void eff_set(e_db_class* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/eff_set__FP10e_db_classi.s"
}
#pragma pop

/* ############################################################################################## */
/* 806A1A34-806A1A38 000128 0004+00 0/1 0/0 0/0 .rodata          @5644 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5644 = -30000.0f;
COMPILER_STRIP_GATE(0x806A1A34, &lit_5644);
#pragma pop

/* 806A1A38-806A1A3C 00012C 0004+00 0/0 0/0 0/0 .rodata          @5645 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5645 = 300000.0f;
COMPILER_STRIP_GATE(0x806A1A38, &lit_5645);
#pragma pop

/* 806A1A3C-806A1A40 000130 0004+00 0/0 0/0 0/0 .rodata          @5646 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5646 = 30000.0f;
COMPILER_STRIP_GATE(0x806A1A3C, &lit_5646);
#pragma pop

/* 806A1A40-806A1A44 000134 0004+00 0/1 0/0 0/0 .rodata          @5816 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5816 = 22.0f;
COMPILER_STRIP_GATE(0x806A1A40, &lit_5816);
#pragma pop

/* 806A1A44-806A1A48 000138 0004+00 0/1 0/0 0/0 .rodata          @5817 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5817 = 21.0f;
COMPILER_STRIP_GATE(0x806A1A44, &lit_5817);
#pragma pop

/* 806A03C4-806A052C 0059C4 0168+00 1/1 0/0 0/0 .text            anm_se_set__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void anm_se_set(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/anm_se_set__FP10e_db_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806A1A48-806A1A4C 00013C 0004+00 0/1 0/0 0/0 .rodata          @5910 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5910 = 10000.0f;
COMPILER_STRIP_GATE(0x806A1A48, &lit_5910);
#pragma pop

/* 806A1A4C-806A1A50 000140 0004+00 0/1 0/0 0/0 .rodata          @5911 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5911 = -20000.0f;
COMPILER_STRIP_GATE(0x806A1A4C, &lit_5911);
#pragma pop

/* 806A052C-806A08F0 005B2C 03C4+00 2/1 0/0 0/0 .text            daE_DB_Execute__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_DB_Execute(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/daE_DB_Execute__FP10e_db_class.s"
}
#pragma pop

/* 806A08F0-806A08F8 005EF0 0008+00 1/0 0/0 0/0 .text            daE_DB_IsDelete__FP10e_db_class */
static bool daE_DB_IsDelete(e_db_class* param_0) {
    return true;
}

/* 806A08F8-806A0960 005EF8 0068+00 1/0 0/0 0/0 .text            daE_DB_Delete__FP10e_db_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_DB_Delete(e_db_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/daE_DB_Delete__FP10e_db_class.s"
}
#pragma pop

/* 806A0960-806A0B54 005F60 01F4+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void useHeapInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/useHeapInit__FP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 806A1A50-806A1A54 000144 0004+00 0/1 0/0 0/0 .rodata          @6122 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6122 = 500.0f;
COMPILER_STRIP_GATE(0x806A1A50, &lit_6122);
#pragma pop

/* 806A1A54-806A1A58 000148 0004+00 0/1 0/0 0/0 .rodata          @6123 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6123 = -300.0f;
COMPILER_STRIP_GATE(0x806A1A54, &lit_6123);
#pragma pop

/* 806A1A58-806A1A5C 00014C 0004+00 0/1 0/0 0/0 .rodata          @6124 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6124 = -400.0f;
COMPILER_STRIP_GATE(0x806A1A58, &lit_6124);
#pragma pop

/* 806A1A5C-806A1A64 000150 0004+04 0/1 0/0 0/0 .rodata          @6125 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6125[1 + 1 /* padding */] = {
    65535.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x806A1A5C, &lit_6125);
#pragma pop

/* 806A1A64-806A1A6C 000158 0008+00 0/1 0/0 0/0 .rodata          @6127 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6127[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x806A1A64, &lit_6127);
#pragma pop

/* 806A0B54-806A106C 006154 0518+00 1/0 0/0 0/0 .text            daE_DB_Create__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_DB_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/daE_DB_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 806A106C-806A10DC 00666C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 806A10DC-806A114C 0066DC 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 806A114C-806A11D0 00674C 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Sph::dCcD_Sph() {
extern "C" asm void __ct__8dCcD_SphFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/__ct__8dCcD_SphFv.s"
}
#pragma pop

/* 806A11D0-806A129C 0067D0 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Sph::~dCcD_Sph() {
extern "C" asm void __dt__8dCcD_SphFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/__dt__8dCcD_SphFv.s"
}
#pragma pop

/* 806A129C-806A12E4 00689C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 806A12E4-806A132C 0068E4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 806A132C-806A1388 00692C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 806A1388-806A138C 006988 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" asm void __ct__5csXyzFv() {
    /* empty function */
}

/* 806A138C-806A1390 00698C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" asm void __ct__4cXyzFv() {
    /* empty function */
}

/* 806A1390-806A13D8 006990 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 806A13D8-806A1420 0069D8 0048+00 2/1 0/0 0/0 .text            __dt__12daE_DB_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daE_DB_HIO_c::~daE_DB_HIO_c() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/__dt__12daE_DB_HIO_cFv.s"
}
#pragma pop

/* 806A1420-806A145C 006A20 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_db_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_e_db_cpp() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/__sinit_d_a_e_db_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x806A1420, __sinit_d_a_e_db_cpp);
#pragma pop

/* 806A145C-806A1464 006A5C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_806A145C() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/func_806A145C.s"
}
#pragma pop

/* 806A1464-806A146C 006A64 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_806A1464() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/func_806A1464.s"
}
#pragma pop

/* 806A146C-806A1880 006A6C 0414+00 1/1 0/0 0/0 .text
 * setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz* param_2,
                                   cXyz* param_3) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz.s"
}
#pragma pop

/* 806A1880-806A18BC 006E80 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm csXyz::~csXyz() {
extern "C" asm void __dt__5csXyzFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/__dt__5csXyzFv.s"
}
#pragma pop

/* 806A18BC-806A18F8 006EBC 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_db/d_a_e_db/__dt__4cXyzFv.s"
}
#pragma pop

/* 806A1A6C-806A1A6C 000160 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
