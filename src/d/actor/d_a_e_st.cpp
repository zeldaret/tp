/**
 * @file d_a_e_st.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_st.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_enemy.h"



//
// Forward References:
//

extern "C" void __ct__12daE_ST_HIO_cFv();
extern "C" static void anm_init__FP10e_st_classifUcf();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daE_ST_Draw__FP10e_st_class();
extern "C" static void other_bg_check__FP10e_st_classP10fopAc_ac_c();
extern "C" static void pl_check__FP10e_st_classf();
extern "C" static void damage_check__FP10e_st_class();
extern "C" static void move_bg_check__FP10e_st_class();
extern "C" static void bg_angle_set__FP10e_st_classs();
extern "C" static void bg_pos_get__FP10e_st_class();
extern "C" static void next_angle_get__FP10e_st_class();
extern "C" static void move_calc__FP10e_st_class();
extern "C" static void e_st_wait__FP10e_st_class();
extern "C" static void pl_angle_get__FP10e_st_class();
extern "C" static void e_st_move__FP10e_st_class();
extern "C" static void e_st_pl_search__FP10e_st_class();
extern "C" static void e_st_shoot__FP10e_st_class();
extern "C" static void e_st_jump_attack__FP10e_st_class();
extern "C" static void roof_line_calc__FP10e_st_class();
extern "C" static void roof_line_calc2__FP10e_st_class();
extern "C" static void tail_line_calc__FP10e_st_class();
extern "C" static void e_st_hang__FP10e_st_class();
extern "C" static void e_st_hang_shoot__FP10e_st_class();
extern "C" static void e_st_hang_drop__FP10e_st_class();
extern "C" static void e_st_hang_2__FP10e_st_class();
extern "C" static void e_st_hang_2_shoot__FP10e_st_class();
extern "C" static void e_st_s_damage__FP10e_st_class();
extern "C" static void e_st_damage__FP10e_st_class();
extern "C" static void e_st_water__FP10e_st_class();
extern "C" static void water_check__FP10e_st_class();
extern "C" static void gr_check__FP10e_st_class();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" static void e_st_g_normal__FP10e_st_class();
extern "C" static void e_st_g_fight__FP10e_st_class();
extern "C" static void e_st_g_def__FP10e_st_class();
extern "C" static void e_st_g_damage__FP10e_st_class();
extern "C" static void e_st_g_s_damage__FP10e_st_class();
extern "C" static void e_st_g_wind__FP10e_st_class();
extern "C" static void e_st_g_chance__FP10e_st_class();
extern "C" static void e_st_g_end__FP10e_st_class();
extern "C" static void damage_check_g__FP10e_st_class();
extern "C" static void ground_angle_set__FP10e_st_class();
extern "C" static void foot_control__FP10e_st_classP7st_foot();
extern "C" static void foot_control_main__FP10e_st_class();
extern "C" static void action__FP10e_st_class();
extern "C" static void daE_ST_Execute__FP10e_st_class();
extern "C" static bool daE_ST_IsDelete__FP10e_st_class();
extern "C" static void daE_ST_Delete__FP10e_st_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void kabe_initial_pos_set__FP10e_st_class();
extern "C" static void roof_initial_pos_set__FP10e_st_class();
extern "C" static void daE_ST_Create__FP10fopAc_ac_c();
extern "C" void __ct__10e_st_classFv();
extern "C" void __dt__7st_footFv();
extern "C" void __ct__7st_footFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_ST_HIO_cFv();
extern "C" void __sinit_d_a_e_st_cpp();
extern "C" static void func_807A637C();
extern "C" static void func_807A6384();
extern "C" static void func_807A638C();
extern "C" static void func_807A6394();
extern "C" static void func_807A639C();
extern "C" void __dt__4cXyzFv();
extern "C" void getHeadTopPos__9daPy_py_cCFv();
extern "C" extern char const* const d_a_e_st__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotS__FPA4_fs();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void updateDL__16mDoExt_McaMorfSOFv();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void init__19mDoExt_3DlineMat0_cFUsUsi();
extern "C" void update__19mDoExt_3DlineMat0_cFiR8_GXColorP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetSpecialCode__4dBgSFRC13cBgS_PolyInfo();
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
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void GetAtHitObj__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
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
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxTrans__FfffUc();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void MtxPush__Fv();
extern "C" void MtxPull__Fv();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_21();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_21();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__19mDoExt_3DlineMat0_c[5];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 m_cpadInfo__8mDoCPd_c[256];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mGndCheck__11fopAcM_gc_c[84];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 807A6850-807A6854 00002C 0004+00 0/2 0/0 0/0 .rodata          @3924 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3924 = 17.0f / 10.0f;
COMPILER_STRIP_GATE(0x807A6850, &lit_3924);
#pragma pop

/* 807A6854-807A6858 000030 0004+00 0/1 0/0 0/0 .rodata          @3925 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3925 = 1200.0f;
COMPILER_STRIP_GATE(0x807A6854, &lit_3925);
#pragma pop

/* 807A6858-807A685C 000034 0004+00 1/7 0/0 0/0 .rodata          @3926 */
SECTION_RODATA static f32 const lit_3926 = 200.0f;
COMPILER_STRIP_GATE(0x807A6858, &lit_3926);

/* 807A685C-807A6860 000038 0004+00 0/1 0/0 0/0 .rodata          @3927 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3927 = -0.5f;
COMPILER_STRIP_GATE(0x807A685C, &lit_3927);
#pragma pop

/* 807A6860-807A6864 00003C 0004+00 1/3 0/0 0/0 .rodata          @3928 */
SECTION_RODATA static f32 const lit_3928 = -1.0f;
COMPILER_STRIP_GATE(0x807A6860, &lit_3928);

/* 807A6A24-807A6A40 -00001 001C+00 1/1 0/0 0/0 .data            @5044 */
SECTION_DATA static void* lit_5044[7] = {
    (void*)(((char*)e_st_jump_attack__FP10e_st_class) + 0x70),
    (void*)(((char*)e_st_jump_attack__FP10e_st_class) + 0xD0),
    (void*)(((char*)e_st_jump_attack__FP10e_st_class) + 0x124),
    (void*)(((char*)e_st_jump_attack__FP10e_st_class) + 0x358),
    (void*)(((char*)e_st_jump_attack__FP10e_st_class) + 0x3A4),
    (void*)(((char*)e_st_jump_attack__FP10e_st_class) + 0x550),
    (void*)(((char*)e_st_jump_attack__FP10e_st_class) + 0x754),
};

/* 807A6A40-807A6A60 000054 0020+00 0/0 0/0 0/0 .data            base_j */
#pragma push
#pragma force_active on
SECTION_DATA static u8 base_j[32] = {
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x17,
};
#pragma pop

/* 807A6A60-807A6A80 000074 0020+00 1/1 0/0 0/0 .data            top_j */
SECTION_DATA static u8 top_j[32] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x19,
};

/* 807A6A80-807A6A84 000094 0004+00 1/1 0/0 0/0 .data            p_name$6407 */
SECTION_DATA static u8 p_name[4] = {
    0x82,
    0x6F,
    0x82,
    0x70,
};

/* 807A6A84-807A6B6C -00001 00E8+00 1/1 0/0 0/0 .data            @6487 */
SECTION_DATA static void* lit_6487[58] = {
    (void*)(((char*)action__FP10e_st_class) + 0x90),
    (void*)(((char*)action__FP10e_st_class) + 0xA0),
    (void*)(((char*)action__FP10e_st_class) + 0xB0),
    (void*)(((char*)action__FP10e_st_class) + 0xCC),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0xE4),
    (void*)(((char*)action__FP10e_st_class) + 0xFC),
    (void*)(((char*)action__FP10e_st_class) + 0x118),
    (void*)(((char*)action__FP10e_st_class) + 0x12C),
    (void*)(((char*)action__FP10e_st_class) + 0x15C),
    (void*)(((char*)action__FP10e_st_class) + 0x178),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x1A0),
    (void*)(((char*)action__FP10e_st_class) + 0x1AC),
    (void*)(((char*)action__FP10e_st_class) + 0x1C0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x2E0),
    (void*)(((char*)action__FP10e_st_class) + 0x1CC),
    (void*)(((char*)action__FP10e_st_class) + 0x1EC),
    (void*)(((char*)action__FP10e_st_class) + 0x214),
    (void*)(((char*)action__FP10e_st_class) + 0x23C),
    (void*)(((char*)action__FP10e_st_class) + 0x260),
    (void*)(((char*)action__FP10e_st_class) + 0x280),
    (void*)(((char*)action__FP10e_st_class) + 0x2A0),
    (void*)(((char*)action__FP10e_st_class) + 0x2C0),
};

/* 807A6B6C-807A6B78 000180 000C+00 1/1 0/0 0/0 .data            ya */
SECTION_DATA static u8 ya[12] = {
    0xC0, 0x00, 0x40, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 807A6B78-807A6B84 00018C 000C+00 1/1 0/0 0/0 .data            xa */
SECTION_DATA static u8 xa[12] = {
    0xC0, 0x00, 0xC0, 0x00, 0xC0, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x80, 0x00,
};

/* 807A6B84-807A6BC4 000198 0040+00 0/1 0/0 0/0 .data            cc_sph_src$6887 */
#pragma push
#pragma force_active on
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0xd}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 807A6BC4-807A6C04 0001D8 0040+00 0/1 0/0 0/0 .data            at_sph_src$6888 */
#pragma push
#pragma force_active on
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x2, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 30.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 807A6C04-807A6C48 000218 0044+00 0/1 0/0 0/0 .data            line_cyl_src$6889 */
#pragma push
#pragma force_active on
static dCcD_SrcCyl line_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        30.0f, // mRadius
        2000.0f // mHeight
    } // mCyl
};
#pragma pop

/* 807A6C48-807A6C88 00025C 0040+00 0/1 0/0 0/0 .data            def_sph_src$6890 */
#pragma push
#pragma force_active on
static dCcD_SrcSph def_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_STONE, 0x5, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 100.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 807A6C88-807A6CA8 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_ST_Method */
static actor_method_class l_daE_ST_Method = {
    (process_method_func)daE_ST_Create__FP10fopAc_ac_c,
    (process_method_func)daE_ST_Delete__FP10e_st_class,
    (process_method_func)daE_ST_Execute__FP10e_st_class,
    (process_method_func)daE_ST_IsDelete__FP10e_st_class,
    (process_method_func)daE_ST_Draw__FP10e_st_class,
};

/* 807A6CA8-807A6CD8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_ST */
extern actor_process_profile_definition g_profile_E_ST = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_ST,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_st_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  129,                    // mPriority
  &l_daE_ST_Method,       // sub_method
  0x10040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 807A6CD8-807A6CE4 0002EC 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 807A6CE4-807A6CF0 0002F8 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 807A6CF0-807A6CFC 000304 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 807A6CFC-807A6D08 000310 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 807A6D08-807A6D14 00031C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 807A6D14-807A6D20 000328 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 807A6D20-807A6D44 000334 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807A639C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807A6394,
};

/* 807A6D44-807A6D58 000358 0014+00 1/1 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 807A6D58-807A6D88 00036C 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807A637C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807A638C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807A6384,
};

/* 807A6D88-807A6D94 00039C 000C+00 2/2 0/0 0/0 .data            __vt__12daE_ST_HIO_c */
SECTION_DATA extern void* __vt__12daE_ST_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_ST_HIO_cFv,
};

/* 8079DDEC-8079DE4C 0000EC 0060+00 1/1 0/0 0/0 .text            __ct__12daE_ST_HIO_cFv */
daE_ST_HIO_c::daE_ST_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A69E0-807A69E0 0001BC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807A69E0 = "E_st";
#pragma pop

/* 8079DE4C-8079DEF8 00014C 00AC+00 22/22 0/0 0/0 .text            anm_init__FP10e_st_classifUcf */
static void anm_init(e_st_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* 8079DEF8-8079E1A4 0001F8 02AC+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A6864-807A6868 000040 0004+00 0/1 0/0 0/0 .rodata          @4049 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4049 = 0x000000FF;
COMPILER_STRIP_GATE(0x807A6864, &lit_4049);
#pragma pop

/* 807A6868-807A686C 000044 0004+00 0/1 0/0 0/0 .rodata          @4053 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4053 = 0x000000FF;
COMPILER_STRIP_GATE(0x807A6868, &lit_4053);
#pragma pop

/* 807A686C-807A6870 000048 0004+00 0/1 0/0 0/0 .rodata          @4089 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4089 = 400.0f;
COMPILER_STRIP_GATE(0x807A686C, &lit_4089);
#pragma pop

/* 807A6870-807A6874 00004C 0004+00 0/2 0/0 0/0 .rodata          @4090 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4090 = 700.0f;
COMPILER_STRIP_GATE(0x807A6870, &lit_4090);
#pragma pop

/* 807A6DE0-807A6DE4 000048 0004+00 9/10 0/0 0/0 .bss             small */
static u8 small[4];

/* 807A6DE4-807A6DE8 00004C 0004+00 1/2 0/0 0/0 .bss             None */
static u8 data_807A6DE4[4];

/* 807A6DE8-807A6DF4 000050 000C+00 0/1 0/0 0/0 .bss             @3919 */
#pragma push
#pragma force_active on
static u8 lit_3919[12];
#pragma pop

/* 807A6DF4-807A6E18 00005C 0024+00 13/15 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[36];

/* 8079E1A4-8079E43C 0004A4 0298+00 1/0 0/0 0/0 .text            daE_ST_Draw__FP10e_st_class */
static void daE_ST_Draw(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A6874-807A6878 000050 0004+00 0/4 0/0 0/0 .rodata          @4128 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4128 = 150.0f;
COMPILER_STRIP_GATE(0x807A6874, &lit_4128);
#pragma pop

/* 8079E43C-8079E550 00073C 0114+00 1/1 0/0 0/0 .text other_bg_check__FP10e_st_classP10fopAc_ac_c
 */
static void other_bg_check(e_st_class* param_0, fopAc_ac_c* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A6878-807A687C 000054 0004+00 1/1 0/0 0/0 .rodata          @4175 */
SECTION_RODATA static f32 const lit_4175 = 750.0f;
COMPILER_STRIP_GATE(0x807A6878, &lit_4175);

/* 8079E550-8079E684 000850 0134+00 5/5 0/0 0/0 .text            pl_check__FP10e_st_classf */
static void pl_check(e_st_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A687C-807A6880 000058 0004+00 0/5 0/0 0/0 .rodata          @4266 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4266 = 0x3B03126F;
COMPILER_STRIP_GATE(0x807A687C, &lit_4266);
#pragma pop

/* 807A6880-807A6884 00005C 0004+00 0/12 0/0 0/0 .rodata          @4267 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4267 = 10.0f;
COMPILER_STRIP_GATE(0x807A6880, &lit_4267);
#pragma pop

/* 807A6884-807A6888 000060 0004+00 1/18 0/0 0/0 .rodata          @4268 */
SECTION_RODATA static f32 const lit_4268 = 2.0f;
COMPILER_STRIP_GATE(0x807A6884, &lit_4268);

/* 807A6888-807A688C 000064 0004+00 0/6 0/0 0/0 .rodata          @4269 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4269 = 30.0f;
COMPILER_STRIP_GATE(0x807A6888, &lit_4269);
#pragma pop

/* 807A688C-807A6890 000068 0004+00 0/3 0/0 0/0 .rodata          @4270 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4270 = 4000.0f;
COMPILER_STRIP_GATE(0x807A688C, &lit_4270);
#pragma pop

/* 807A6890-807A6894 00006C 0004+00 0/3 0/0 0/0 .rodata          @4271 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4271 = 1000.0f;
COMPILER_STRIP_GATE(0x807A6890, &lit_4271);
#pragma pop

/* 807A6894-807A6898 000070 0004+00 0/2 0/0 0/0 .rodata          @4272 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4272 = 2000.0f;
COMPILER_STRIP_GATE(0x807A6894, &lit_4272);
#pragma pop

/* 807A6898-807A689C 000074 0004+00 0/1 0/0 0/0 .rodata          @4273 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4273 = 8000.0f;
COMPILER_STRIP_GATE(0x807A6898, &lit_4273);
#pragma pop

/* 8079E684-8079EAA8 000984 0424+00 1/1 0/0 0/0 .text            damage_check__FP10e_st_class */
static void damage_check(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A689C-807A68A0 000078 0004+00 1/14 0/0 0/0 .rodata          @4330 */
SECTION_RODATA static f32 const lit_4330 = 5.0f;
COMPILER_STRIP_GATE(0x807A689C, &lit_4330);

/* 8079EAA8-8079EC90 000DA8 01E8+00 3/3 0/0 0/0 .text            move_bg_check__FP10e_st_class */
static void move_bg_check(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A68A0-807A68A4 00007C 0004+00 0/1 0/0 0/0 .rodata          @4393 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4393 = -300.0f;
COMPILER_STRIP_GATE(0x807A68A0, &lit_4393);
#pragma pop

/* 8079EC90-8079EF3C 000F90 02AC+00 1/1 0/0 0/0 .text            bg_angle_set__FP10e_st_classs */
static void bg_angle_set(e_st_class* param_0, s16 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A68A4-807A68A8 000080 0004+00 0/1 0/0 0/0 .rodata          @4430 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4430 = -400.0f;
COMPILER_STRIP_GATE(0x807A68A4, &lit_4430);
#pragma pop

/* 8079EF3C-8079F08C 00123C 0150+00 3/3 0/0 0/0 .text            bg_pos_get__FP10e_st_class */
static void bg_pos_get(e_st_class* param_0) {
    // NONMATCHING
}

/* 8079F08C-8079F12C 00138C 00A0+00 1/1 0/0 0/0 .text            next_angle_get__FP10e_st_class */
static void next_angle_get(e_st_class* param_0) {
    // NONMATCHING
}

/* 8079F12C-8079F210 00142C 00E4+00 3/3 0/0 0/0 .text            move_calc__FP10e_st_class */
static void move_calc(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A68A8-807A68AC 000084 0004+00 0/8 0/0 0/0 .rodata          @4504 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4504 = 50.0f;
COMPILER_STRIP_GATE(0x807A68A8, &lit_4504);
#pragma pop

/* 807A68AC-807A68B0 000088 0004+00 0/5 0/0 0/0 .rodata          @4505 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4505 = 0.5f;
COMPILER_STRIP_GATE(0x807A68AC, &lit_4505);
#pragma pop

/* 8079F210-8079F42C 001510 021C+00 1/1 0/0 0/0 .text            e_st_wait__FP10e_st_class */
static void e_st_wait(e_st_class* param_0) {
    // NONMATCHING
}

/* 8079F42C-8079F4D8 00172C 00AC+00 2/2 0/0 0/0 .text            pl_angle_get__FP10e_st_class */
static void pl_angle_get(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A68B0-807A68B4 00008C 0004+00 0/1 0/0 0/0 .rodata          @4559 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4559 = 9.0f;
COMPILER_STRIP_GATE(0x807A68B0, &lit_4559);
#pragma pop

/* 807A68B4-807A68B8 000090 0004+00 0/3 0/0 0/0 .rodata          @4560 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4560 = 4.0f;
COMPILER_STRIP_GATE(0x807A68B4, &lit_4560);
#pragma pop

/* 807A68B8-807A68BC 000094 0004+00 0/6 0/0 0/0 .rodata          @4561 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4561 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x807A68B8, &lit_4561);
#pragma pop

/* 807A68BC-807A68C0 000098 0004+00 0/3 0/0 0/0 .rodata          @4562 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4562 = 7.0f;
COMPILER_STRIP_GATE(0x807A68BC, &lit_4562);
#pragma pop

/* 8079F4D8-8079F6A0 0017D8 01C8+00 1/1 0/0 0/0 .text            e_st_move__FP10e_st_class */
static void e_st_move(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A68C0-807A68C4 00009C 0004+00 0/1 0/0 0/0 .rodata          @4639 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4639 = 350.0f;
COMPILER_STRIP_GATE(0x807A68C0, &lit_4639);
#pragma pop

/* 807A68C4-807A68C8 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4640 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4640 = 6.0f;
COMPILER_STRIP_GATE(0x807A68C4, &lit_4640);
#pragma pop

/* 807A68C8-807A68CC 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4641 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4641 = 8.0f;
COMPILER_STRIP_GATE(0x807A68C8, &lit_4641);
#pragma pop

/* 807A68CC-807A68D0 0000A8 0004+00 0/3 0/0 0/0 .rodata          @4642 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4642 = 120.0f;
COMPILER_STRIP_GATE(0x807A68CC, &lit_4642);
#pragma pop

/* 807A68D0-807A68D4 0000AC 0004+00 0/12 0/0 0/0 .rodata          @4643 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4643 = 3.0f;
COMPILER_STRIP_GATE(0x807A68D0, &lit_4643);
#pragma pop

/* 807A68D4-807A68D8 0000B0 0004+00 0/5 0/0 0/0 .rodata          @4644 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4644 = 20.0f;
COMPILER_STRIP_GATE(0x807A68D4, &lit_4644);
#pragma pop

/* 8079F6A0-8079FA18 0019A0 0378+00 1/1 0/0 0/0 .text            e_st_pl_search__FP10e_st_class */
static void e_st_pl_search(e_st_class* param_0) {
    // NONMATCHING
}

/* 8079FA18-8079FC4C 001D18 0234+00 1/1 0/0 0/0 .text            e_st_shoot__FP10e_st_class */
static void e_st_shoot(e_st_class* param_0) {
    // NONMATCHING
}

/* 8079FC4C-807A08BC 001F4C 0C70+00 2/1 0/0 0/0 .text            e_st_jump_attack__FP10e_st_class */
static void e_st_jump_attack(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A68D8-807A68DC 0000B4 0004+00 1/2 0/0 0/0 .rodata          @5037 */
SECTION_RODATA static f32 const lit_5037 = 80.0f;
COMPILER_STRIP_GATE(0x807A68D8, &lit_5037);

/* 807A68DC-807A68E0 0000B8 0004+00 0/0 0/0 0/0 .rodata          @5038 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5038 = 85.0f;
COMPILER_STRIP_GATE(0x807A68DC, &lit_5038);
#pragma pop

/* 807A68E0-807A68E4 0000BC 0004+00 0/1 0/0 0/0 .rodata          @5039 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5039 = -20.0f;
COMPILER_STRIP_GATE(0x807A68E0, &lit_5039);
#pragma pop

/* 807A68E4-807A68E8 0000C0 0004+00 0/3 0/0 0/0 .rodata          @5040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5040 = 40.0f;
COMPILER_STRIP_GATE(0x807A68E4, &lit_5040);
#pragma pop

/* 807A68E8-807A68EC 0000C4 0004+00 0/1 0/0 0/0 .rodata          @5041 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5041 = 70.0f;
COMPILER_STRIP_GATE(0x807A68E8, &lit_5041);
#pragma pop

/* 807A68EC-807A68F0 0000C8 0004+00 0/1 0/0 0/0 .rodata          @5042 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5042 = 32768.0f;
COMPILER_STRIP_GATE(0x807A68EC, &lit_5042);
#pragma pop

/* 807A68F0-807A68F4 0000CC 0004+00 0/2 0/0 0/0 .rodata          @5122 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5122 = 1.0f / 19.0f;
COMPILER_STRIP_GATE(0x807A68F0, &lit_5122);
#pragma pop

/* 807A68F4-807A68FC 0000D0 0008+00 0/5 0/0 0/0 .rodata          @5124 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5124[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807A68F4, &lit_5124);
#pragma pop

/* 807A08BC-807A0B44 002BBC 0288+00 1/1 0/0 0/0 .text            roof_line_calc__FP10e_st_class */
static void roof_line_calc(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A68FC-807A6900 0000D8 0004+00 0/1 0/0 0/0 .rodata          @5179 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5179 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x807A68FC, &lit_5179);
#pragma pop

/* 807A6900-807A6904 0000DC 0004+00 0/1 0/0 0/0 .rodata          @5180 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5180 = 0x3BA3D70A;
COMPILER_STRIP_GATE(0x807A6900, &lit_5180);
#pragma pop

/* 807A0B44-807A0D20 002E44 01DC+00 1/1 0/0 0/0 .text            roof_line_calc2__FP10e_st_class */
static void roof_line_calc2(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A6904-807A6908 0000E0 0004+00 0/1 0/0 0/0 .rodata          @5226 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5226 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x807A6904, &lit_5226);
#pragma pop

/* 807A6908-807A690C 0000E4 0004+00 0/2 0/0 0/0 .rodata          @5227 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5227 = -5.0f;
COMPILER_STRIP_GATE(0x807A6908, &lit_5227);
#pragma pop

/* 807A0D20-807A0F64 003020 0244+00 1/1 0/0 0/0 .text            tail_line_calc__FP10e_st_class */
static void tail_line_calc(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A690C-807A6910 0000E8 0004+00 0/1 0/0 0/0 .rodata          @5282 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5282 = 300.0f;
COMPILER_STRIP_GATE(0x807A690C, &lit_5282);
#pragma pop

/* 807A0F64-807A11EC 003264 0288+00 1/1 0/0 0/0 .text            e_st_hang__FP10e_st_class */
static void e_st_hang(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A6910-807A6914 0000EC 0004+00 0/2 0/0 0/0 .rodata          @5371 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5371 = 500.0f;
COMPILER_STRIP_GATE(0x807A6910, &lit_5371);
#pragma pop

/* 807A6914-807A6918 0000F0 0004+00 0/1 0/0 0/0 .rodata          @5372 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5372 = 2.5f;
COMPILER_STRIP_GATE(0x807A6914, &lit_5372);
#pragma pop

/* 807A6918-807A691C 0000F4 0004+00 0/3 0/0 0/0 .rodata          @5373 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5373 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x807A6918, &lit_5373);
#pragma pop

/* 807A691C-807A6920 0000F8 0004+00 0/2 0/0 0/0 .rodata          @5374 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5374 = 15.0f;
COMPILER_STRIP_GATE(0x807A691C, &lit_5374);
#pragma pop

/* 807A11EC-807A1568 0034EC 037C+00 1/1 0/0 0/0 .text            e_st_hang_shoot__FP10e_st_class */
static void e_st_hang_shoot(e_st_class* param_0) {
    // NONMATCHING
}

/* 807A1568-807A17DC 003868 0274+00 1/1 0/0 0/0 .text            e_st_hang_drop__FP10e_st_class */
static void e_st_hang_drop(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A6920-807A6924 0000FC 0004+00 0/1 0/0 0/0 .rodata          @5551 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5551 = 65536.0f;
COMPILER_STRIP_GATE(0x807A6920, &lit_5551);
#pragma pop

/* 807A17DC-807A1DB8 003ADC 05DC+00 1/1 0/0 0/0 .text            e_st_hang_2__FP10e_st_class */
static void e_st_hang_2(e_st_class* param_0) {
    // NONMATCHING
}

/* 807A1DB8-807A1FA4 0040B8 01EC+00 1/1 0/0 0/0 .text            e_st_hang_2_shoot__FP10e_st_class
 */
static void e_st_hang_2_shoot(e_st_class* param_0) {
    // NONMATCHING
}

/* 807A1FA4-807A2110 0042A4 016C+00 1/1 0/0 0/0 .text            e_st_s_damage__FP10e_st_class */
static void e_st_s_damage(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A6924-807A6928 000100 0004+00 0/1 0/0 0/0 .rodata          @5730 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5730 = 17.0f;
COMPILER_STRIP_GATE(0x807A6924, &lit_5730);
#pragma pop

/* 807A6928-807A692C 000104 0004+00 0/2 0/0 0/0 .rodata          @5731 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5731 = 35.0f;
COMPILER_STRIP_GATE(0x807A6928, &lit_5731);
#pragma pop

/* 807A692C-807A6930 000108 0004+00 0/1 0/0 0/0 .rodata          @5732 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5732 = -30.0f;
COMPILER_STRIP_GATE(0x807A692C, &lit_5732);
#pragma pop

/* 807A6930-807A6934 00010C 0004+00 0/1 0/0 0/0 .rodata          @5733 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5733 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x807A6930, &lit_5733);
#pragma pop

/* 807A6934-807A6938 000110 0004+00 0/1 0/0 0/0 .rodata          @5734 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5734 = -3.0f / 10.0f;
COMPILER_STRIP_GATE(0x807A6934, &lit_5734);
#pragma pop

/* 807A2110-807A266C 004410 055C+00 1/1 0/0 0/0 .text            e_st_damage__FP10e_st_class */
static void e_st_damage(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A6938-807A693C 000114 0004+00 0/1 0/0 0/0 .rodata          @5784 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5784 = -2.0f;
COMPILER_STRIP_GATE(0x807A6938, &lit_5784);
#pragma pop

/* 807A693C-807A6940 000118 0004+00 0/1 0/0 0/0 .rodata          @5785 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5785 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x807A693C, &lit_5785);
#pragma pop

/* 807A266C-807A28A0 00496C 0234+00 1/1 0/0 0/0 .text            e_st_water__FP10e_st_class */
static void e_st_water(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A6940-807A6944 00011C 0004+00 0/1 0/0 0/0 .rodata          @5796 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5796 = 3120.0f;
COMPILER_STRIP_GATE(0x807A6940, &lit_5796);
#pragma pop

/* 807A28A0-807A2970 004BA0 00D0+00 1/1 0/0 0/0 .text            water_check__FP10e_st_class */
static void water_check(e_st_class* param_0) {
    // NONMATCHING
}

/* 807A2970-807A2A88 004C70 0118+00 1/1 0/0 0/0 .text            gr_check__FP10e_st_class */
static void gr_check(e_st_class* param_0) {
    // NONMATCHING
}

/* 807A2A88-807A2B00 004D88 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* 807A2B00-807A2D28 004E00 0228+00 1/1 0/0 0/0 .text            e_st_g_normal__FP10e_st_class */
static void e_st_g_normal(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A6944-807A6948 000120 0004+00 0/1 0/0 0/0 .rodata          @5928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5928 = 29.0f / 50.0f;
COMPILER_STRIP_GATE(0x807A6944, &lit_5928);
#pragma pop

/* 807A6948-807A694C 000124 0004+00 0/1 0/0 0/0 .rodata          @5929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5929 = 3.5f;
COMPILER_STRIP_GATE(0x807A6948, &lit_5929);
#pragma pop

/* 807A2D28-807A3148 005028 0420+00 1/1 0/0 0/0 .text            e_st_g_fight__FP10e_st_class */
static void e_st_g_fight(e_st_class* param_0) {
    // NONMATCHING
}

/* 807A3148-807A3240 005448 00F8+00 1/1 0/0 0/0 .text            e_st_g_def__FP10e_st_class */
static void e_st_g_def(e_st_class* param_0) {
    // NONMATCHING
}

/* 807A3240-807A3360 005540 0120+00 1/1 0/0 0/0 .text            e_st_g_damage__FP10e_st_class */
static void e_st_g_damage(e_st_class* param_0) {
    // NONMATCHING
}

/* 807A3360-807A3450 005660 00F0+00 1/1 0/0 0/0 .text            e_st_g_s_damage__FP10e_st_class */
static void e_st_g_s_damage(e_st_class* param_0) {
    // NONMATCHING
}

/* 807A3450-807A3548 005750 00F8+00 1/1 0/0 0/0 .text            e_st_g_wind__FP10e_st_class */
static void e_st_g_wind(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A694C-807A6950 000128 0004+00 0/1 0/0 0/0 .rodata          @6090 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6090 = 13.0f;
COMPILER_STRIP_GATE(0x807A694C, &lit_6090);
#pragma pop

/* 807A3548-807A3858 005848 0310+00 1/1 0/0 0/0 .text            e_st_g_chance__FP10e_st_class */
static void e_st_g_chance(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A6950-807A6954 00012C 0004+00 0/1 0/0 0/0 .rodata          @6157 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6157 = 36.5f;
COMPILER_STRIP_GATE(0x807A6950, &lit_6157);
#pragma pop

/* 807A6954-807A6958 000130 0004+00 0/1 0/0 0/0 .rodata          @6158 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6158 = 32.0f;
COMPILER_STRIP_GATE(0x807A6954, &lit_6158);
#pragma pop

/* 807A3858-807A3B38 005B58 02E0+00 1/1 0/0 0/0 .text            e_st_g_end__FP10e_st_class */
static void e_st_g_end(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A6958-807A695C 000134 0004+00 0/1 0/0 0/0 .rodata          @6249 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6249 = -10.0f;
COMPILER_STRIP_GATE(0x807A6958, &lit_6249);
#pragma pop

/* 807A695C-807A6960 000138 0004+00 0/1 0/0 0/0 .rodata          @6250 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6250 = -40.0f;
COMPILER_STRIP_GATE(0x807A695C, &lit_6250);
#pragma pop

/* 807A6960-807A6964 00013C 0004+00 0/1 0/0 0/0 .rodata          @6251 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6251 = -15.0f;
COMPILER_STRIP_GATE(0x807A6960, &lit_6251);
#pragma pop

/* 807A6964-807A6968 000140 0004+00 0/1 0/0 0/0 .rodata          @6252 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6252 = -12.0f;
COMPILER_STRIP_GATE(0x807A6964, &lit_6252);
#pragma pop

/* 807A3B38-807A3E44 005E38 030C+00 1/1 0/0 0/0 .text            damage_check_g__FP10e_st_class */
static void damage_check_g(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A6968-807A696C 000144 0004+00 0/2 0/0 0/0 .rodata          @6283 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6283 = 58.0f;
COMPILER_STRIP_GATE(0x807A6968, &lit_6283);
#pragma pop

/* 807A696C-807A6970 000148 0004+00 0/1 0/0 0/0 .rodata          @6284 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6284 = -1000000000.0f;
COMPILER_STRIP_GATE(0x807A696C, &lit_6284);
#pragma pop

/* 807A3E44-807A4004 006144 01C0+00 1/1 0/0 0/0 .text            ground_angle_set__FP10e_st_class */
static void ground_angle_set(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A6970-807A6974 00014C 0004+00 0/2 0/0 0/0 .rodata          @6300 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6300 = 20000.0f;
COMPILER_STRIP_GATE(0x807A6970, &lit_6300);
#pragma pop

/* 807A4004-807A4148 006304 0144+00 1/1 0/0 0/0 .text foot_control__FP10e_st_classP7st_foot */
static void foot_control(e_st_class* param_0, st_foot* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A6E18-807A6E24 000080 000C+00 0/1 0/0 0/0 .bss             @6303 */
#pragma push
#pragma force_active on
static u8 lit_6303[12];
#pragma pop

/* 807A6E24-807A6E30 00008C 000C+00 0/1 0/0 0/0 .bss             @6304 */
#pragma push
#pragma force_active on
static u8 lit_6304[12];
#pragma pop

/* 807A6E30-807A6E3C 000098 000C+00 0/1 0/0 0/0 .bss             @6305 */
#pragma push
#pragma force_active on
static u8 lit_6305[12];
#pragma pop

/* 807A6E3C-807A6E48 0000A4 000C+00 0/1 0/0 0/0 .bss             @6306 */
#pragma push
#pragma force_active on
static u8 lit_6306[12];
#pragma pop

/* 807A6E48-807A6E78 0000B0 0030+00 1/2 0/0 0/0 .bss             top_pos_data */
static u8 top_pos_data[48];

/* 807A4148-807A421C 006448 00D4+00 1/1 0/0 0/0 .text            foot_control_main__FP10e_st_class
 */
static void foot_control_main(e_st_class* param_0) {
    // NONMATCHING
}

/* 807A421C-807A4A40 00651C 0824+00 2/1 0/0 0/0 .text            action__FP10e_st_class */
static void action(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A6974-807A6978 000150 0004+00 0/0 0/0 0/0 .rodata          @6480 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6480 = -80.0f;
COMPILER_STRIP_GATE(0x807A6974, &lit_6480);
#pragma pop

/* 807A6978-807A697C 000154 0004+00 0/2 0/0 0/0 .rodata          @6481 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6481 = -200.0f;
COMPILER_STRIP_GATE(0x807A6978, &lit_6481);
#pragma pop

/* 807A697C-807A6980 000158 0004+00 0/1 0/0 0/0 .rodata          @6482 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6482 = 60.0f;
COMPILER_STRIP_GATE(0x807A697C, &lit_6482);
#pragma pop

/* 807A6980-807A6984 00015C 0004+00 0/2 0/0 0/0 .rodata          @6483 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6483 = 55.0f;
COMPILER_STRIP_GATE(0x807A6980, &lit_6483);
#pragma pop

/* 807A6984-807A6988 000160 0004+00 0/0 0/0 0/0 .rodata          @6484 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6484 = 25.0f;
COMPILER_STRIP_GATE(0x807A6984, &lit_6484);
#pragma pop

/* 807A6988-807A698C 000164 0004+00 0/0 0/0 0/0 .rodata          @6485 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6485 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x807A6988, &lit_6485);
#pragma pop

/* 807A698C-807A6990 000168 0004+00 0/0 0/0 0/0 .rodata          @6486 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6486 = 1.5f;
COMPILER_STRIP_GATE(0x807A698C, &lit_6486);
#pragma pop

/* 807A6990-807A6994 00016C 0004+00 0/1 0/0 0/0 .rodata          @6690 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6690 = 110.0f;
COMPILER_STRIP_GATE(0x807A6990, &lit_6690);
#pragma pop

/* 807A6994-807A6998 000170 0004+00 0/1 0/0 0/0 .rodata          @6691 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6691 = -50.0f;
COMPILER_STRIP_GATE(0x807A6994, &lit_6691);
#pragma pop

/* 807A6998-807A699C 000174 0004+00 0/1 0/0 0/0 .rodata          @6692 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6692 = -120.0f;
COMPILER_STRIP_GATE(0x807A6998, &lit_6692);
#pragma pop

/* 807A699C-807A69A0 000178 0004+00 0/1 0/0 0/0 .rodata          @6693 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6693 = 11.0f;
COMPILER_STRIP_GATE(0x807A699C, &lit_6693);
#pragma pop

/* 807A69A0-807A69A4 00017C 0004+00 0/1 0/0 0/0 .rodata          @6694 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6694 = 19.0f;
COMPILER_STRIP_GATE(0x807A69A0, &lit_6694);
#pragma pop

/* 807A69A4-807A69A8 000180 0004+00 0/1 0/0 0/0 .rodata          @6695 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6695 = 23.0f;
COMPILER_STRIP_GATE(0x807A69A4, &lit_6695);
#pragma pop

/* 807A69A8-807A69AC 000184 0004+00 0/1 0/0 0/0 .rodata          @6696 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6696 = 27.0f;
COMPILER_STRIP_GATE(0x807A69A8, &lit_6696);
#pragma pop

/* 807A69AC-807A69B0 000188 0004+00 0/1 0/0 0/0 .rodata          @6697 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6697 = 31.0f;
COMPILER_STRIP_GATE(0x807A69AC, &lit_6697);
#pragma pop

/* 807A69B0-807A69B4 00018C 0004+00 0/1 0/0 0/0 .rodata          @6698 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6698 = 39.0f;
COMPILER_STRIP_GATE(0x807A69B0, &lit_6698);
#pragma pop

/* 807A69B4-807A69B8 000190 0004+00 0/1 0/0 0/0 .rodata          @6699 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6699 = 65.0f;
COMPILER_STRIP_GATE(0x807A69B4, &lit_6699);
#pragma pop

/* 807A69B8-807A69BC 000194 0004+00 0/1 0/0 0/0 .rodata          @6700 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6700 = 100000.0f;
COMPILER_STRIP_GATE(0x807A69B8, &lit_6700);
#pragma pop

/* 807A69BC-807A69C0 000198 0004+00 0/1 0/0 0/0 .rodata          @6701 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6701 = 90.0f;
COMPILER_STRIP_GATE(0x807A69BC, &lit_6701);
#pragma pop

/* 807A69C0-807A69C4 00019C 0004+00 0/1 0/0 0/0 .rodata          @6702 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6702 = -3.0f;
COMPILER_STRIP_GATE(0x807A69C0, &lit_6702);
#pragma pop

/* 807A69C4-807A69C8 0001A0 0004+00 0/1 0/0 0/0 .rodata          @6703 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6703 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x807A69C4, &lit_6703);
#pragma pop

/* 807A4A40-807A53BC 006D40 097C+00 2/1 0/0 0/0 .text            daE_ST_Execute__FP10e_st_class */
static void daE_ST_Execute(e_st_class* param_0) {
    // NONMATCHING
}

/* 807A53BC-807A53C4 0076BC 0008+00 1/0 0/0 0/0 .text            daE_ST_IsDelete__FP10e_st_class */
static bool daE_ST_IsDelete(e_st_class* param_0) {
    return true;
}

/* 807A53C4-807A542C 0076C4 0068+00 1/0 0/0 0/0 .text            daE_ST_Delete__FP10e_st_class */
static void daE_ST_Delete(e_st_class* param_0) {
    // NONMATCHING
}

/* 807A542C-807A5618 00772C 01EC+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 807A5618-807A578C 007918 0174+00 1/1 0/0 0/0 .text kabe_initial_pos_set__FP10e_st_class */
static void kabe_initial_pos_set(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A69C8-807A69CC 0001A4 0004+00 1/1 0/0 0/0 .rodata          @6838 */
SECTION_RODATA static f32 const lit_6838 = 5000.0f;
COMPILER_STRIP_GATE(0x807A69C8, &lit_6838);

/* 807A578C-807A586C 007A8C 00E0+00 1/1 0/0 0/0 .text roof_initial_pos_set__FP10e_st_class */
static void roof_initial_pos_set(e_st_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A69CC-807A69D0 0001A8 0004+00 0/1 0/0 0/0 .rodata          @6998 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6998 = -4000.0f;
COMPILER_STRIP_GATE(0x807A69CC, &lit_6998);
#pragma pop

/* 807A69D0-807A69D4 0001AC 0004+00 0/1 0/0 0/0 .rodata          @6999 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6999 = 65535.0f;
COMPILER_STRIP_GATE(0x807A69D0, &lit_6999);
#pragma pop

/* 807A69D4-807A69DC 0001B0 0008+00 0/1 0/0 0/0 .rodata          @7001 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7001[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807A69D4, &lit_7001);
#pragma pop

/* 807A69E0-807A69E0 0001BC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807A69E5 = "D_MN05";
#pragma pop

/* 807A586C-807A5CF4 007B6C 0488+00 1/0 0/0 0/0 .text            daE_ST_Create__FP10fopAc_ac_c */
static void daE_ST_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 807A5CF4-807A5F5C 007FF4 0268+00 1/1 0/0 0/0 .text            __ct__10e_st_classFv */
e_st_class::e_st_class() {
    // NONMATCHING
}

/* 807A5F5C-807A5F98 00825C 003C+00 1/1 0/0 0/0 .text            __dt__7st_footFv */
st_foot::~st_foot() {
    // NONMATCHING
}

/* 807A5F98-807A5F9C 008298 0004+00 1/1 0/0 0/0 .text            __ct__7st_footFv */
st_foot::st_foot() {
    /* empty function */
}

/* 807A5F9C-807A5FE4 00829C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 807A5FE4-807A602C 0082E4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 807A602C-807A6074 00832C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 807A6074-807A60D0 008374 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 807A60D0-807A6140 0083D0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 807A6140-807A61B0 008440 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 807A61B0-807A61B4 0084B0 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 807A61B4-807A61FC 0084B4 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 807A61FC-807A6244 0084FC 0048+00 2/1 0/0 0/0 .text            __dt__12daE_ST_HIO_cFv */
daE_ST_HIO_c::~daE_ST_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A69DC-807A69E0 0001B8 0004+00 0/1 0/0 0/0 .rodata          @7250 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7250 = 78.0f;
COMPILER_STRIP_GATE(0x807A69DC, &lit_7250);
#pragma pop

/* 807A6244-807A637C 008544 0138+00 0/0 1/0 0/0 .text            __sinit_d_a_e_st_cpp */
void __sinit_d_a_e_st_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x807A6244, __sinit_d_a_e_st_cpp);
#pragma pop

/* 807A637C-807A6384 00867C 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_807A637C() {
    // NONMATCHING
}

/* 807A6384-807A638C 008684 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_807A6384() {
    // NONMATCHING
}

/* 807A638C-807A6394 00868C 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_807A638C() {
    // NONMATCHING
}

/* 807A6394-807A639C 008694 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_807A6394() {
    // NONMATCHING
}

/* 807A639C-807A63A4 00869C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_807A639C() {
    // NONMATCHING
}

/* 807A67B8-807A67F4 008AB8 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 807A67F4-807A6810 008AF4 001C+00 1/1 0/0 0/0 .text            getHeadTopPos__9daPy_py_cCFv */
// void daPy_py_c::getHeadTopPos() const {
extern "C" void getHeadTopPos__9daPy_py_cCFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A6E78-807A6E7C 0000E0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_807A6E78[4];
#pragma pop

/* 807A6E7C-807A6E80 0000E4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_807A6E7C[4];
#pragma pop

/* 807A6E80-807A6E84 0000E8 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_807A6E80[4];
#pragma pop

/* 807A6E84-807A6E88 0000EC 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_807A6E84[4];
#pragma pop

/* 807A6E88-807A6E8C 0000F0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807A6E88[4];
#pragma pop

/* 807A6E8C-807A6E90 0000F4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807A6E8C[4];
#pragma pop

/* 807A6E90-807A6E94 0000F8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_807A6E90[4];
#pragma pop

/* 807A6E94-807A6E98 0000FC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_807A6E94[4];
#pragma pop

/* 807A6E98-807A6E9C 000100 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_807A6E98[4];
#pragma pop

/* 807A6E9C-807A6EA0 000104 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_807A6E9C[4];
#pragma pop

/* 807A6EA0-807A6EA4 000108 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_807A6EA0[4];
#pragma pop

/* 807A6EA4-807A6EA8 00010C 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_807A6EA4[4];
#pragma pop

/* 807A6EA8-807A6EAC 000110 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_807A6EA8[4];
#pragma pop

/* 807A6EAC-807A6EB0 000114 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807A6EAC[4];
#pragma pop

/* 807A6EB0-807A6EB4 000118 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_807A6EB0[4];
#pragma pop

/* 807A6EB4-807A6EB8 00011C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_807A6EB4[4];
#pragma pop

/* 807A6EB8-807A6EBC 000120 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_807A6EB8[4];
#pragma pop

/* 807A6EBC-807A6EC0 000124 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_807A6EBC[4];
#pragma pop

/* 807A6EC0-807A6EC4 000128 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_807A6EC0[4];
#pragma pop

/* 807A6EC4-807A6EC8 00012C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_807A6EC4[4];
#pragma pop

/* 807A6EC8-807A6ECC 000130 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_807A6EC8[4];
#pragma pop

/* 807A6ECC-807A6ED0 000134 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807A6ECC[4];
#pragma pop

/* 807A6ED0-807A6ED4 000138 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807A6ED0[4];
#pragma pop

/* 807A6ED4-807A6ED8 00013C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807A6ED4[4];
#pragma pop

/* 807A6ED8-807A6EDC 000140 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_807A6ED8[4];
#pragma pop

/* 807A69E0-807A69E0 0001BC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
