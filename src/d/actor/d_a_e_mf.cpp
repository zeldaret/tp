/**
 * @file d_a_e_mf.cpp
 * 
*/

#include "d/actor/d_a_e_mf.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__12daE_MF_HIO_cFv();
extern "C" static void mf_disappear__FP10e_mf_class();
extern "C" static void anm_init__FP10e_mf_classifUcf();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daE_MF_Draw__FP10e_mf_class();
extern "C" static void other_bg_check__FP10e_mf_classP10fopAc_ac_c();
extern "C" static void other_bg_check2__FP10e_mf_classP4cXyz();
extern "C" static void s_b_sub__FPvPv();
extern "C" static void search_bomb__FP10e_mf_classi();
extern "C" static void bomb_view_check__FP10e_mf_class();
extern "C" static void bomb_check__FP10e_mf_class();
extern "C" static void player_way_check__FP10e_mf_class();
extern "C" static void pl_check__FP10e_mf_classfs();
extern "C" static void move_gake_check__FP10e_mf_classfSc();
extern "C" static void jump_pos_check__FP10e_mf_classP4cXyz();
extern "C" static void e_mf_stay__FP10e_mf_class();
extern "C" static void e_mf_otoreac__FP10e_mf_class();
extern "C" static void e_mf_bomb_action__FP10e_mf_class();
extern "C" static void e_mf_normal__FP10e_mf_class();
extern "C" static void e_mf_drawback__FP10e_mf_class();
extern "C" static void e_mf_wolfbite__FP10e_mf_class();
extern "C" static void way_check__FP10e_mf_class();
extern "C" static void shot_s_sub__FPvPv();
extern "C" static void e_mf_fight_run__FP10e_mf_class();
extern "C" static void e_mf_jump__FP10e_mf_class();
extern "C" static void e_mf_gakejump__FP10e_mf_class();
extern "C" static void at_hit_check__FP10e_mf_class();
extern "C" static void e_mf_attack__FP10e_mf_class();
extern "C" static void tail_eff_set__FP10e_mf_class();
extern "C" static void e_mf_tail_attack__FP10e_mf_class();
extern "C" static void e_mf_guard__FP10e_mf_class();
extern "C" static void e_mf_s_damage__FP10e_mf_class();
extern "C" static void kado_check__FP10e_mf_class();
extern "C" static void body_gake__FP10e_mf_class();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" static void e_mf_damage__FP10e_mf_class();
extern "C" static void e_mf_backdrop__FP10e_mf_class();
extern "C" static void e_mf_water__FP10e_mf_class();
extern "C" static void wolfkick_damage__FP10e_mf_class();
extern "C" static void big_damage__FP10e_mf_class();
extern "C" static void small_damage__FP10e_mf_class();
extern "C" static void damage_check__FP10e_mf_class();
extern "C" static void action__FP10e_mf_class();
extern "C" static void anm_se_set__FP10e_mf_class();
extern "C" static void daE_MF_Execute__FP10e_mf_class();
extern "C" static bool daE_MF_IsDelete__FP10e_mf_class();
extern "C" static void daE_MF_Delete__FP10e_mf_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_MF_Create__FP10fopAc_ac_c();
extern "C" void __ct__10e_mf_classFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_MF_HIO_cFv();
extern "C" void __sinit_d_a_e_mf_cpp();
extern "C" static void func_807134E8();
extern "C" static void func_807134F0();
extern "C" static void func_807134F8();
extern "C" static void func_80713500();
extern "C" static void func_80713508();
extern "C" static void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz();
extern "C" void __dt__5csXyzFv();
extern "C" extern char const* const d_a_e_mf__stringBase0;

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
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_getTalkEventPartner__FPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_otoCheck__FPC10fopAc_ac_cf();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_wayBgCheck__FPC10fopAc_ac_cff();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fopKyM_createWpillar__FPC4cXyzfi();
extern "C" void fopKyM_createMpillar__FPC4cXyzf();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void checkStateCarry__7dBomb_cFv();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void __ct__9dJntCol_cFv();
extern "C" void init__9dJntCol_cFP10fopAc_ac_cPC13dJntColData_cP8J3DModeli();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
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
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void GetAtHitObj__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void StartCAt__8dCcD_SphFR4cXyz();
extern "C" void MoveCAt__8dCcD_SphFR4cXyz();
extern "C" void cc_pl_cut_bit_get__Fv();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void checkBoomerangCharge__9daPy_py_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_Sound_set__F4cXyziUii();
extern "C" void dKy_Sound_get__Fv();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
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
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
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
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" extern u8 pauseTimer__9dScnPly_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80713974-80713978 000000 0004+00 33/33 0/0 0/0 .rodata          @3828 */
SECTION_RODATA static f32 const lit_3828 = 100.0f;
COMPILER_STRIP_GATE(0x80713974, &lit_3828);

/* 80713978-8071397C 000004 0004+00 2/27 0/0 0/0 .rodata          @3829 */
SECTION_RODATA static u8 const lit_3829[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80713978, &lit_3829);

/* 8071397C-80713984 000008 0004+04 2/20 0/0 0/0 .rodata          @3830 */
SECTION_RODATA static f32 const lit_3830[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8071397C, &lit_3830);

/* 80713984-8071398C 000010 0008+00 0/5 0/0 0/0 .rodata          @3831 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3831[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80713984, &lit_3831);
#pragma pop

/* 8071398C-80713994 000018 0008+00 0/5 0/0 0/0 .rodata          @3832 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3832[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8071398C, &lit_3832);
#pragma pop

/* 80713994-8071399C 000020 0008+00 0/5 0/0 0/0 .rodata          @3833 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3833[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80713994, &lit_3833);
#pragma pop

/* 8071399C-807139A0 000028 0004+00 0/1 0/0 0/0 .rodata          @3834 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3834 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x8071399C, &lit_3834);
#pragma pop

/* 807139A0-807139A4 00002C 0004+00 0/1 0/0 0/0 .rodata          @3849 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3849 = 13.0f / 10.0f;
COMPILER_STRIP_GATE(0x807139A0, &lit_3849);
#pragma pop

/* 807139A4-807139A8 000030 0004+00 0/1 0/0 0/0 .rodata          @3850 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3850 = 8.0f;
COMPILER_STRIP_GATE(0x807139A4, &lit_3850);
#pragma pop

/* 807139A8-807139AC 000034 0004+00 0/1 0/0 0/0 .rodata          @3851 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3851 = 28.0f;
COMPILER_STRIP_GATE(0x807139A8, &lit_3851);
#pragma pop

/* 807139AC-807139B0 000038 0004+00 0/6 0/0 0/0 .rodata          @3852 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3852 = 300.0f;
COMPILER_STRIP_GATE(0x807139AC, &lit_3852);
#pragma pop

/* 807139B0-807139B4 00003C 0004+00 0/1 0/0 0/0 .rodata          @3853 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3853 = 350.0f;
COMPILER_STRIP_GATE(0x807139B0, &lit_3853);
#pragma pop

/* 80713B08-80713B14 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80713B14-80713B28 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80713B28-80713B30 000020 0008+00 0/1 0/0 0/0 .data            e_prim$3707 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim[8] = {
    0xFF, 0x78, 0x00, 0x00, 0xFF, 0x64, 0x78, 0x00,
};
#pragma pop

/* 80713B30-80713B38 000028 0008+00 0/1 0/0 0/0 .data            e_env$3708 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env[8] = {
    0x5A, 0x2D, 0x2D, 0x00, 0x3C, 0x1E, 0x1E, 0x00,
};
#pragma pop

/* 80713B38-80713B40 000030 0006+02 0/1 0/0 0/0 .data            eff_id$3716 */
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

/* 80713B40-80713B6C -00001 002C+00 1/1 0/0 0/0 .data            @4569 */
SECTION_DATA static void* lit_4569[11] = {
    (void*)(((char*)e_mf_stay__FP10e_mf_class) + 0x4C),
    (void*)(((char*)e_mf_stay__FP10e_mf_class) + 0x78),
    (void*)(((char*)e_mf_stay__FP10e_mf_class) + 0x158),
    (void*)(((char*)e_mf_stay__FP10e_mf_class) + 0x1AC),
    (void*)(((char*)e_mf_stay__FP10e_mf_class) + 0x230),
    (void*)(((char*)e_mf_stay__FP10e_mf_class) + 0x280),
    (void*)(((char*)e_mf_stay__FP10e_mf_class) + 0x2D4),
    (void*)(((char*)e_mf_stay__FP10e_mf_class) + 0x330),
    (void*)(((char*)e_mf_stay__FP10e_mf_class) + 0x3BC),
    (void*)(((char*)e_mf_stay__FP10e_mf_class) + 0x40C),
    (void*)(((char*)e_mf_stay__FP10e_mf_class) + 0x3F8),
};

/* 80713B6C-80713B9C -00001 0030+00 1/1 0/0 0/0 .data            @4741 */
SECTION_DATA static void* lit_4741[12] = {
    (void*)(((char*)e_mf_bomb_action__FP10e_mf_class) + 0x98),
    (void*)(((char*)e_mf_bomb_action__FP10e_mf_class) + 0xE4),
    (void*)(((char*)e_mf_bomb_action__FP10e_mf_class) + 0x11C),
    (void*)(((char*)e_mf_bomb_action__FP10e_mf_class) + 0x15C),
    (void*)(((char*)e_mf_bomb_action__FP10e_mf_class) + 0x1A8),
    (void*)(((char*)e_mf_bomb_action__FP10e_mf_class) + 0x294),
    (void*)(((char*)e_mf_bomb_action__FP10e_mf_class) + 0x498),
    (void*)(((char*)e_mf_bomb_action__FP10e_mf_class) + 0x498),
    (void*)(((char*)e_mf_bomb_action__FP10e_mf_class) + 0x498),
    (void*)(((char*)e_mf_bomb_action__FP10e_mf_class) + 0x498),
    (void*)(((char*)e_mf_bomb_action__FP10e_mf_class) + 0x304),
    (void*)(((char*)e_mf_bomb_action__FP10e_mf_class) + 0x3C4),
};

/* 80713B9C-80713BC0 -00001 0024+00 1/1 0/0 0/0 .data            @5567 */
SECTION_DATA static void* lit_5567[9] = {
    (void*)(((char*)e_mf_guard__FP10e_mf_class) + 0x50),
    (void*)(((char*)e_mf_guard__FP10e_mf_class) + 0x88),
    (void*)(((char*)e_mf_guard__FP10e_mf_class) + 0x238),
    (void*)(((char*)e_mf_guard__FP10e_mf_class) + 0x238),
    (void*)(((char*)e_mf_guard__FP10e_mf_class) + 0x238),
    (void*)(((char*)e_mf_guard__FP10e_mf_class) + 0xB8),
    (void*)(((char*)e_mf_guard__FP10e_mf_class) + 0xFC),
    (void*)(((char*)e_mf_guard__FP10e_mf_class) + 0x150),
    (void*)(((char*)e_mf_guard__FP10e_mf_class) + 0x1FC),
};

/* 80713BC0-80713BC8 0000B8 0008+00 1/1 0/0 0/0 .data            kado_bit$5580 */
SECTION_DATA static u8 kado_bit[8] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02,
};

/* 80713BC8-80713BD0 0000C0 0008+00 1/1 0/0 0/0 .data            kado_check_x$5581 */
SECTION_DATA static u8 kado_check_x[8] = {
    0x42, 0xA0, 0x00, 0x00, 0xC2, 0xA0, 0x00, 0x00,
};

/* 80713BD0-80713C50 -00001 0080+00 1/1 0/0 0/0 .data            @6010 */
SECTION_DATA static void* lit_6010[32] = {
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0x194),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0x250),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0x4F0),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0x6E0),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0x820),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0x8D0),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0x974),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0x974),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xAC8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0x9B8),
    (void*)(((char*)e_mf_damage__FP10e_mf_class) + 0xA9C),
};

/* 80713C50-80713C68 000148 0016+02 1/1 0/0 0/0 .data            j_spd$6379 */
SECTION_DATA static u8 j_spd[22 + 2 /* padding */] = {
    0x40,
    0x00,
    0x40,
    0x00,
    0x40,
    0x00,
    0x10,
    0x00,
    0x10,
    0x00,
    0x10,
    0x00,
    0x10,
    0x00,
    0x40,
    0x00,
    0x40,
    0x00,
    0x40,
    0x00,
    0x40,
    0x00,
    /* padding */
    0x00,
    0x00,
};

/* 80713C68-80713C70 000160 0008+00 1/1 0/0 0/0 .data            foot_idx$6427 */
SECTION_DATA static u8 foot_idx[8] = {
    0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x1E,
};

/* 80713C70-80713CD8 -00001 0068+00 1/1 0/0 0/0 .data            @6893 */
SECTION_DATA static void* lit_6893[26] = {
    (void*)(((char*)action__FP10e_mf_class) + 0xE4),
    (void*)(((char*)action__FP10e_mf_class) + 0x1C0),
    (void*)(((char*)action__FP10e_mf_class) + 0x1C0),
    (void*)(((char*)action__FP10e_mf_class) + 0xF0),
    (void*)(((char*)action__FP10e_mf_class) + 0x1C0),
    (void*)(((char*)action__FP10e_mf_class) + 0x100),
    (void*)(((char*)action__FP10e_mf_class) + 0x110),
    (void*)(((char*)action__FP10e_mf_class) + 0x120),
    (void*)(((char*)action__FP10e_mf_class) + 0x130),
    (void*)(((char*)action__FP10e_mf_class) + 0x140),
    (void*)(((char*)action__FP10e_mf_class) + 0x14C),
    (void*)(((char*)action__FP10e_mf_class) + 0x174),
    (void*)(((char*)action__FP10e_mf_class) + 0x158),
    (void*)(((char*)action__FP10e_mf_class) + 0x168),
    (void*)(((char*)action__FP10e_mf_class) + 0x1C0),
    (void*)(((char*)action__FP10e_mf_class) + 0x1C0),
    (void*)(((char*)action__FP10e_mf_class) + 0x1C0),
    (void*)(((char*)action__FP10e_mf_class) + 0x1C0),
    (void*)(((char*)action__FP10e_mf_class) + 0x1C0),
    (void*)(((char*)action__FP10e_mf_class) + 0x1C0),
    (void*)(((char*)action__FP10e_mf_class) + 0x180),
    (void*)(((char*)action__FP10e_mf_class) + 0x18C),
    (void*)(((char*)action__FP10e_mf_class) + 0x1C0),
    (void*)(((char*)action__FP10e_mf_class) + 0x198),
    (void*)(((char*)action__FP10e_mf_class) + 0x1A4),
    (void*)(((char*)action__FP10e_mf_class) + 0x1B4),
};

/* 80713CD8-80713CE4 0001D0 000C+00 1/0 0/0 0/0 .data            jv_offset */
SECTION_DATA static u8 jv_offset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80713CE4-80713D74 -00001 0090+00 1/1 0/0 0/0 .data            jc_data */
SECTION_DATA static void* jc_data[36] = {
    (void*)0x00010002, (void*)0x42200000, (void*)&jv_offset, (void*)0x00010003, (void*)0x41F00000,
    (void*)&jv_offset, (void*)0x00010016, (void*)0x42200000, (void*)&jv_offset, (void*)0x0001000B,
    (void*)0x41700000, (void*)&jv_offset, (void*)0x0001000C, (void*)0x41200000, (void*)&jv_offset,
    (void*)0x00010011, (void*)0x41700000, (void*)&jv_offset, (void*)0x00010012, (void*)0x41200000,
    (void*)&jv_offset, (void*)0x00010017, (void*)0x41A00000, (void*)&jv_offset, (void*)0x00010018,
    (void*)0x41700000, (void*)&jv_offset, (void*)0x0001001B, (void*)0x41A00000, (void*)&jv_offset,
    (void*)0x0001001C, (void*)0x41700000, (void*)&jv_offset, (void*)0x00010020, (void*)0x41A00000,
    (void*)&jv_offset,
};

/* 80713D74-80713DB4 00026C 0040+00 0/1 0/0 0/0 .data            cc_sph_src$7407 */
#pragma push
#pragma force_active on
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fafdbf, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 80713DB4-80713DF4 0002AC 0040+00 0/1 0/0 0/0 .data            at_sph_src$7408 */
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

/* 80713DF4-80713E34 0002EC 0040+00 0/1 0/0 0/0 .data            tate_sph_src$7409 */
#pragma push
#pragma force_active on
static dCcD_SrcSph tate_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_STONE, 0x5, 0x0, 0x0, 0x303}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 100.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 80713E34-80713E54 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_MF_Method */
static actor_method_class l_daE_MF_Method = {
    (process_method_func)daE_MF_Create__FP10fopAc_ac_c,
    (process_method_func)daE_MF_Delete__FP10e_mf_class,
    (process_method_func)daE_MF_Execute__FP10e_mf_class,
    (process_method_func)daE_MF_IsDelete__FP10e_mf_class,
    (process_method_func)daE_MF_Draw__FP10e_mf_class,
};

/* 80713E54-80713E84 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_MF */
extern actor_process_profile_definition g_profile_E_MF = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_MF,              // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(e_mf_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  120,                    // mPriority
  &l_daE_MF_Method,       // sub_method
  0x00040000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80713E84-80713E90 00037C 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80713E90-80713E9C 000388 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80713E9C-80713EA8 000394 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80713EA8-80713EB4 0003A0 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80713EB4-80713EC0 0003AC 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80713EC0-80713EE4 0003B8 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80713508,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80713500,
};

/* 80713EE4-80713F14 0003DC 0030+00 3/3 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807134E8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807134F8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807134F0,
};

/* 80713F14-80713F20 00040C 000C+00 2/2 0/0 0/0 .data            __vt__12daE_MF_HIO_c */
SECTION_DATA extern void* __vt__12daE_MF_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_MF_HIO_cFv,
};

/* 8070A70C-8070A77C 0000EC 0070+00 1/1 0/0 0/0 .text            __ct__12daE_MF_HIO_cFv */
daE_MF_HIO_c::daE_MF_HIO_c() {
    // NONMATCHING
}

/* 8070A77C-8070A82C 00015C 00B0+00 2/2 0/0 0/0 .text            mf_disappear__FP10e_mf_class */
static void mf_disappear(e_mf_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807139B4-807139B8 000040 0004+00 1/4 0/0 0/0 .rodata          @3893 */
SECTION_RODATA static f32 const lit_3893 = -1.0f;
COMPILER_STRIP_GATE(0x807139B4, &lit_3893);

/* 80713AF4-80713AF4 000180 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80713AF4 = "E_mf";
#pragma pop

/* 8070A82C-8070A8D8 00020C 00AC+00 16/16 0/0 0/0 .text            anm_init__FP10e_mf_classifUcf */
static void anm_init(e_mf_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* 8070A8D8-8070AD94 0002B8 04BC+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807139B8-807139BC 000044 0004+00 0/11 0/0 0/0 .rodata          @4120 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4120 = 50.0f;
COMPILER_STRIP_GATE(0x807139B8, &lit_4120);
#pragma pop

/* 807139BC-807139C0 000048 0004+00 0/1 0/0 0/0 .rodata          @4121 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4121 = 1150.0f;
COMPILER_STRIP_GATE(0x807139BC, &lit_4121);
#pragma pop

/* 8070AD94-8070B03C 000774 02A8+00 1/0 0/0 0/0 .text            daE_MF_Draw__FP10e_mf_class */
static void daE_MF_Draw(e_mf_class* param_0) {
    // NONMATCHING
}

/* 8070B03C-8070B114 000A1C 00D8+00 2/2 0/0 0/0 .text other_bg_check__FP10e_mf_classP10fopAc_ac_c
 */
static void other_bg_check(e_mf_class* param_0, fopAc_ac_c* param_1) {
    // NONMATCHING
}

/* 8070B114-8070B1EC 000AF4 00D8+00 1/1 0/0 0/0 .text other_bg_check2__FP10e_mf_classP4cXyz */
static void other_bg_check2(e_mf_class* param_0, cXyz* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80713F28-80713F2C 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80713F2C-80713F30 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80713F30-80713F34 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80713F34-80713F38 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80713F38-80713F3C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80713F3C-80713F40 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80713F40-80713F44 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80713F44-80713F48 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80713F48-80713F4C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80713F4C-80713F50 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80713F50-80713F54 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80713F54-80713F58 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80713F58-80713F5C 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80713F5C-80713F60 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80713F60-80713F64 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80713F64-80713F68 -00001 0004+00 1/2 0/0 0/0 .bss             None */
/* 80713F64 0001+00 data_80713F64 @1009 */
/* 80713F65 0003+00 data_80713F65 None */
static u8 struct_80713F64[4];

/* 80713F68-80713F74 000048 000C+00 1/1 0/0 0/0 .bss             @3844 */
static u8 lit_3844[12];

/* 80713F74-80713F98 000054 0024+00 9/10 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[36];

/* 80713F98-80713FC0 000078 0028+00 2/2 0/0 0/0 .bss             target_info */
static u8 target_info[40];

/* 80713FC0-80713FC4 0000A0 0004+00 2/2 0/0 0/0 .bss             target_info_count */
static u8 target_info_count[4];

/* 8070B1EC-8070B268 000BCC 007C+00 1/1 0/0 0/0 .text            s_b_sub__FPvPv */
static void s_b_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807139C0-807139C4 00004C 0004+00 0/5 0/0 0/0 .rodata          @4346 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4346 = 30.0f;
COMPILER_STRIP_GATE(0x807139C0, &lit_4346);
#pragma pop

/* 807139C4-807139C8 000050 0004+00 0/1 0/0 0/0 .rodata          @4347 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4347 = 500.0f;
COMPILER_STRIP_GATE(0x807139C4, &lit_4347);
#pragma pop

/* 807139C8-807139CC 000054 0004+00 0/1 0/0 0/0 .rodata          @4348 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4348 = -125.0f;
COMPILER_STRIP_GATE(0x807139C8, &lit_4348);
#pragma pop

/* 807139CC-807139D0 000058 0004+00 0/1 0/0 0/0 .rodata          @4349 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4349 = 1500.0f;
COMPILER_STRIP_GATE(0x807139CC, &lit_4349);
#pragma pop

/* 8070B268-8070B6E0 000C48 0478+00 2/2 0/0 0/0 .text            search_bomb__FP10e_mf_classi */
static void search_bomb(e_mf_class* param_0, int param_1) {
    // NONMATCHING
}

/* 8070B6E0-8070B704 0010C0 0024+00 4/4 0/0 0/0 .text            bomb_view_check__FP10e_mf_class */
static void bomb_view_check(e_mf_class* param_0) {
    // NONMATCHING
}

/* 8070B704-8070B728 0010E4 0024+00 1/1 0/0 0/0 .text            bomb_check__FP10e_mf_class */
static void bomb_check(e_mf_class* param_0) {
    // NONMATCHING
}

/* 8070B728-8070B76C 001108 0044+00 1/1 0/0 0/0 .text            player_way_check__FP10e_mf_class */
static void player_way_check(e_mf_class* param_0) {
    // NONMATCHING
}

/* 8070B76C-8070B848 00114C 00DC+00 4/4 0/0 0/0 .text            pl_check__FP10e_mf_classfs */
static void pl_check(e_mf_class* param_0, f32 param_1, s16 param_2) {
    // NONMATCHING
}

/* 8070B848-8070B950 001228 0108+00 3/3 0/0 0/0 .text            move_gake_check__FP10e_mf_classfSc
 */
static void move_gake_check(e_mf_class* param_0, f32 param_1, s8 param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807139D0-807139D4 00005C 0004+00 0/4 0/0 0/0 .rodata          @4459 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4459 = 200.0f;
COMPILER_STRIP_GATE(0x807139D0, &lit_4459);
#pragma pop

/* 8070B950-8070BB10 001330 01C0+00 1/1 0/0 0/0 .text jump_pos_check__FP10e_mf_classP4cXyz */
static void jump_pos_check(e_mf_class* param_0, cXyz* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807139D4-807139D8 000060 0004+00 0/7 0/0 0/0 .rodata          @4559 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4559 = 10.0f;
COMPILER_STRIP_GATE(0x807139D4, &lit_4559);
#pragma pop

/* 807139D8-807139DC 000064 0004+00 0/2 0/0 0/0 .rodata          @4560 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4560 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x807139D8, &lit_4560);
#pragma pop

/* 807139DC-807139E0 000068 0004+00 0/3 0/0 0/0 .rodata          @4561 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4561 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x807139DC, &lit_4561);
#pragma pop

/* 807139E0-807139E4 00006C 0004+00 0/2 0/0 0/0 .rodata          @4562 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4562 = 2000.0f;
COMPILER_STRIP_GATE(0x807139E0, &lit_4562);
#pragma pop

/* 8070BB10-8070BF94 0014F0 0484+00 2/1 0/0 0/0 .text            e_mf_stay__FP10e_mf_class */
static void e_mf_stay(e_mf_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807139E4-807139E8 000070 0004+00 0/11 0/0 0/0 .rodata          @4563 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4563 = 3.0f;
COMPILER_STRIP_GATE(0x807139E4, &lit_4563);
#pragma pop

/* 807139E8-807139EC 000074 0004+00 0/4 0/0 0/0 .rodata          @4564 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4564 = 1.5f;
COMPILER_STRIP_GATE(0x807139E8, &lit_4564);
#pragma pop

/* 807139EC-807139F0 000078 0004+00 0/5 0/0 0/0 .rodata          @4565 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4565 = 20.0f;
COMPILER_STRIP_GATE(0x807139EC, &lit_4565);
#pragma pop

/* 807139F0-807139F4 00007C 0004+00 0/10 0/0 0/0 .rodata          @4566 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4566 = 5.0f;
COMPILER_STRIP_GATE(0x807139F0, &lit_4566);
#pragma pop

/* 807139F4-807139F8 000080 0004+00 0/1 0/0 0/0 .rodata          @4567 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4567 = 40.0f;
COMPILER_STRIP_GATE(0x807139F4, &lit_4567);
#pragma pop

/* 807139F8-807139FC 000084 0004+00 0/0 0/0 0/0 .rodata          @4568 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4568 = 75.0f;
COMPILER_STRIP_GATE(0x807139F8, &lit_4568);
#pragma pop

/* 807139FC-80713A04 000088 0008+00 0/1 0/0 0/0 .rodata          @4573 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4573[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807139FC, &lit_4573);
#pragma pop

/* 80713A04-80713A08 000090 0004+00 0/1 0/0 0/0 .rodata          @4634 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4634 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80713A04, &lit_4634);
#pragma pop

/* 80713A08-80713A0C 000094 0004+00 0/2 0/0 0/0 .rodata          @4635 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4635 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80713A08, &lit_4635);
#pragma pop

/* 80713A0C-80713A10 000098 0004+00 0/2 0/0 0/0 .rodata          @4636 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4636 = 250.0f;
COMPILER_STRIP_GATE(0x80713A0C, &lit_4636);
#pragma pop

/* 8070BF94-8070C2C4 001974 0330+00 1/1 0/0 0/0 .text            e_mf_otoreac__FP10e_mf_class */
static void e_mf_otoreac(e_mf_class* param_0) {
    // NONMATCHING
}

/* 8070C2C4-8070C7C4 001CA4 0500+00 2/1 0/0 0/0 .text            e_mf_bomb_action__FP10e_mf_class */
static void e_mf_bomb_action(e_mf_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80713A10-80713A14 00009C 0004+00 0/1 0/0 0/0 .rodata          @4737 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4737 = 600.0f;
COMPILER_STRIP_GATE(0x80713A10, &lit_4737);
#pragma pop

/* 80713A14-80713A18 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4738 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4738 = -30.0f;
COMPILER_STRIP_GATE(0x80713A14, &lit_4738);
#pragma pop

/* 80713A18-80713A1C 0000A4 0004+00 0/2 0/0 0/0 .rodata          @4739 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4739 = 60.0f;
COMPILER_STRIP_GATE(0x80713A18, &lit_4739);
#pragma pop

/* 80713A1C-80713A20 0000A8 0004+00 0/2 0/0 0/0 .rodata          @4740 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4740 = 15.0f;
COMPILER_STRIP_GATE(0x80713A1C, &lit_4740);
#pragma pop

/* 80713A20-80713A24 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4805 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4805 = 32768.0f;
COMPILER_STRIP_GATE(0x80713A20, &lit_4805);
#pragma pop

/* 80713A24-80713A28 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4806 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4806 = 10000.0f;
COMPILER_STRIP_GATE(0x80713A24, &lit_4806);
#pragma pop

/* 8070C7C4-8070CB1C 0021A4 0358+00 1/1 0/0 0/0 .text            e_mf_normal__FP10e_mf_class */
static void e_mf_normal(e_mf_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80713A28-80713A2C 0000B4 0004+00 0/2 0/0 0/0 .rodata          @4834 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4834 = -5.0f;
COMPILER_STRIP_GATE(0x80713A28, &lit_4834);
#pragma pop

/* 8070CB1C-8070CCB8 0024FC 019C+00 1/1 0/0 0/0 .text            e_mf_drawback__FP10e_mf_class */
static void e_mf_drawback(e_mf_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80713A2C-80713A30 0000B8 0004+00 0/2 0/0 0/0 .rodata          @4899 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4899 = 2.0f;
COMPILER_STRIP_GATE(0x80713A2C, &lit_4899);
#pragma pop

/* 80713A30-80713A34 0000BC 0004+00 1/5 0/0 0/0 .rodata          @4900 */
SECTION_RODATA static f32 const lit_4900 = 150.0f;
COMPILER_STRIP_GATE(0x80713A30, &lit_4900);

/* 8070CCB8-8070D090 002698 03D8+00 1/1 0/0 0/0 .text            e_mf_wolfbite__FP10e_mf_class */
static void e_mf_wolfbite(e_mf_class* param_0) {
    // NONMATCHING
}

/* 8070D090-8070D0D0 002A70 0040+00 1/1 0/0 0/0 .text            way_check__FP10e_mf_class */
static void way_check(e_mf_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80713A34-80713A38 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4971 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4971 = 1000.0f;
COMPILER_STRIP_GATE(0x80713A34, &lit_4971);
#pragma pop

/* 8070D0D0-8070D2C8 002AB0 01F8+00 1/1 0/0 0/0 .text            shot_s_sub__FPvPv */
static void shot_s_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80713A38-80713A3C 0000C4 0004+00 0/2 0/0 0/0 .rodata          @5152 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5152 = 120.0f;
COMPILER_STRIP_GATE(0x80713A38, &lit_5152);
#pragma pop

/* 80713A3C-80713A40 0000C8 0004+00 0/1 0/0 0/0 .rodata          @5153 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5153 = 32763.0f;
COMPILER_STRIP_GATE(0x80713A3C, &lit_5153);
#pragma pop

/* 80713A40-80713A44 0000CC 0004+00 0/1 0/0 0/0 .rodata          @5154 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5154 = 13.0f / 20.0f;
COMPILER_STRIP_GATE(0x80713A40, &lit_5154);
#pragma pop

/* 80713A44-80713A48 0000D0 0004+00 0/4 0/0 0/0 .rodata          @5155 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5155 = 0.5f;
COMPILER_STRIP_GATE(0x80713A44, &lit_5155);
#pragma pop

/* 80713A48-80713A4C 0000D4 0004+00 0/1 0/0 0/0 .rodata          @5156 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5156 = 19.0f / 10.0f;
COMPILER_STRIP_GATE(0x80713A48, &lit_5156);
#pragma pop

/* 8070D2C8-8070DBB4 002CA8 08EC+00 1/1 0/0 0/0 .text            e_mf_fight_run__FP10e_mf_class */
static void e_mf_fight_run(e_mf_class* param_0) {
    // NONMATCHING
}

/* 8070DBB4-8070DDDC 003594 0228+00 1/1 0/0 0/0 .text            e_mf_jump__FP10e_mf_class */
static void e_mf_jump(e_mf_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80713A4C-80713A50 0000D8 0004+00 0/2 0/0 0/0 .rodata          @5310 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5310 = 35.0f;
COMPILER_STRIP_GATE(0x80713A4C, &lit_5310);
#pragma pop

/* 80713A50-80713A54 0000DC 0004+00 0/1 0/0 0/0 .rodata          @5311 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5311 = 11.0f / 10.0f;
COMPILER_STRIP_GATE(0x80713A50, &lit_5311);
#pragma pop

/* 8070DDDC-8070E30C 0037BC 0530+00 1/1 0/0 0/0 .text            e_mf_gakejump__FP10e_mf_class */
static void e_mf_gakejump(e_mf_class* param_0) {
    // NONMATCHING
}

/* 8070E30C-8070E36C 003CEC 0060+00 2/2 0/0 0/0 .text            at_hit_check__FP10e_mf_class */
static void at_hit_check(e_mf_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80713A54-80713A58 0000E0 0004+00 0/1 0/0 0/0 .rodata          @5389 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5389 = 6.0f;
COMPILER_STRIP_GATE(0x80713A54, &lit_5389);
#pragma pop

/* 80713A58-80713A5C 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5390 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5390 = -35.0f;
COMPILER_STRIP_GATE(0x80713A58, &lit_5390);
#pragma pop

/* 80713A5C-80713A60 0000E8 0004+00 1/3 0/0 0/0 .rodata          @5391 */
SECTION_RODATA static f32 const lit_5391 = 25.0f;
COMPILER_STRIP_GATE(0x80713A5C, &lit_5391);

/* 8070E36C-8070E5E0 003D4C 0274+00 1/1 0/0 0/0 .text            e_mf_attack__FP10e_mf_class */
static void e_mf_attack(e_mf_class* param_0) {
    // NONMATCHING
}

/* 8070E5E0-8070E760 003FC0 0180+00 1/1 0/0 0/0 .text            tail_eff_set__FP10e_mf_class */
static void tail_eff_set(e_mf_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80713A60-80713A64 0000EC 0004+00 0/1 0/0 0/0 .rodata          @5509 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5509 = 55.0f;
COMPILER_STRIP_GATE(0x80713A60, &lit_5509);
#pragma pop

/* 80713A64-80713A68 0000F0 0004+00 0/1 0/0 0/0 .rodata          @5510 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5510 = 4.0f;
COMPILER_STRIP_GATE(0x80713A64, &lit_5510);
#pragma pop

/* 8070E760-8070EA10 004140 02B0+00 1/1 0/0 0/0 .text            e_mf_tail_attack__FP10e_mf_class */
static void e_mf_tail_attack(e_mf_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80713A68-80713A6C 0000F4 0004+00 0/1 0/0 0/0 .rodata          @5566 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5566 = -8.0f;
COMPILER_STRIP_GATE(0x80713A68, &lit_5566);
#pragma pop

/* 8070EA10-8070EC60 0043F0 0250+00 2/1 0/0 0/0 .text            e_mf_guard__FP10e_mf_class */
static void e_mf_guard(e_mf_class* param_0) {
    // NONMATCHING
}

/* 8070EC60-8070ED10 004640 00B0+00 1/1 0/0 0/0 .text            e_mf_s_damage__FP10e_mf_class */
static void e_mf_s_damage(e_mf_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80713A6C-80713A70 0000F8 0004+00 0/2 0/0 0/0 .rodata          @5615 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5615 = 70.0f;
COMPILER_STRIP_GATE(0x80713A6C, &lit_5615);
#pragma pop

/* 80713A70-80713A74 0000FC 0004+00 0/1 0/0 0/0 .rodata          @5616 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5616 = -150.0f;
COMPILER_STRIP_GATE(0x80713A70, &lit_5616);
#pragma pop

/* 8070ED10-8070EEC4 0046F0 01B4+00 1/1 0/0 0/0 .text            kado_check__FP10e_mf_class */
static void kado_check(e_mf_class* param_0) {
    // NONMATCHING
}

/* 8070EEC4-8070F014 0048A4 0150+00 1/1 0/0 0/0 .text            body_gake__FP10e_mf_class */
static void body_gake(e_mf_class* param_0) {
    // NONMATCHING
}

/* 8070F014-8070F08C 0049F4 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80713A74-80713A78 000100 0004+00 0/1 0/0 0/0 .rodata          @6006 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6006 = 8000.0f;
COMPILER_STRIP_GATE(0x80713A74, &lit_6006);
#pragma pop

/* 8070F08C-8070FBEC 004A6C 0B60+00 2/1 0/0 0/0 .text            e_mf_damage__FP10e_mf_class */
static void e_mf_damage(e_mf_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80713A78-80713A7C 000104 0004+00 0/0 0/0 0/0 .rodata          @6007 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6007 = -100.0f;
COMPILER_STRIP_GATE(0x80713A78, &lit_6007);
#pragma pop

/* 80713A7C-80713A80 000108 0004+00 0/0 0/0 0/0 .rodata          @6008 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6008 = 9.0f / 5.0f;
COMPILER_STRIP_GATE(0x80713A7C, &lit_6008);
#pragma pop

/* 80713A80-80713A84 00010C 0004+00 0/3 0/0 0/0 .rodata          @6009 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6009 = -20.0f;
COMPILER_STRIP_GATE(0x80713A80, &lit_6009);
#pragma pop

/* 80713A84-80713A88 000110 0004+00 0/1 0/0 0/0 .rodata          @6033 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6033 = -3.0f;
COMPILER_STRIP_GATE(0x80713A84, &lit_6033);
#pragma pop

/* 80713A88-80713A8C 000114 0004+00 0/1 0/0 0/0 .rodata          @6034 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6034 = -6.0f;
COMPILER_STRIP_GATE(0x80713A88, &lit_6034);
#pragma pop

/* 8070FBEC-8070FD40 0055CC 0154+00 1/1 0/0 0/0 .text            e_mf_backdrop__FP10e_mf_class */
static void e_mf_backdrop(e_mf_class* param_0) {
    // NONMATCHING
}

/* 8070FD40-8070FEE0 005720 01A0+00 1/1 0/0 0/0 .text            e_mf_water__FP10e_mf_class */
static void e_mf_water(e_mf_class* param_0) {
    // NONMATCHING
}

/* 8070FEE0-8070FF98 0058C0 00B8+00 1/1 0/0 0/0 .text            wolfkick_damage__FP10e_mf_class */
static void wolfkick_damage(e_mf_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80713A8C-80713A90 000118 0004+00 0/1 0/0 0/0 .rodata          @6087 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6087 = 3000.0f;
COMPILER_STRIP_GATE(0x80713A8C, &lit_6087);
#pragma pop

/* 80713A90-80713A94 00011C 0004+00 0/1 0/0 0/0 .rodata          @6088 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6088 = 800.0f;
COMPILER_STRIP_GATE(0x80713A90, &lit_6088);
#pragma pop

/* 80713A94-80713A98 000120 0004+00 0/1 0/0 0/0 .rodata          @6089 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6089 = 700.0f;
COMPILER_STRIP_GATE(0x80713A94, &lit_6089);
#pragma pop

/* 8070FF98-807100A8 005978 0110+00 1/1 0/0 0/0 .text            big_damage__FP10e_mf_class */
static void big_damage(e_mf_class* param_0) {
    // NONMATCHING
}

/* 807100A8-80710158 005A88 00B0+00 1/1 0/0 0/0 .text            small_damage__FP10e_mf_class */
static void small_damage(e_mf_class* param_0) {
    // NONMATCHING
}

/* 80710158-807104EC 005B38 0394+00 1/1 0/0 0/0 .text            damage_check__FP10e_mf_class */
static void damage_check(e_mf_class* param_0) {
    // NONMATCHING
}

/* 807104EC-807119BC 005ECC 14D0+00 2/1 0/0 0/0 .text            action__FP10e_mf_class */
static void action(e_mf_class* param_0) {
    // NONMATCHING
}

/* 807119BC-80711CB8 00739C 02FC+00 1/1 0/0 0/0 .text            anm_se_set__FP10e_mf_class */
static void anm_se_set(e_mf_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80713A98-80713A9C 000124 0004+00 0/0 0/0 0/0 .rodata          @6886 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6886 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80713A98, &lit_6886);
#pragma pop

/* 80713A9C-80713AA0 000128 0004+00 0/0 0/0 0/0 .rodata          @6887 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6887 = -4.0f;
COMPILER_STRIP_GATE(0x80713A9C, &lit_6887);
#pragma pop

/* 80713AA0-80713AA4 00012C 0004+00 0/0 0/0 0/0 .rodata          @6888 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6888 = 7.0f;
COMPILER_STRIP_GATE(0x80713AA0, &lit_6888);
#pragma pop

/* 80713AA4-80713AA8 000130 0004+00 0/0 0/0 0/0 .rodata          @6889 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6889 = 2500.0f;
COMPILER_STRIP_GATE(0x80713AA4, &lit_6889);
#pragma pop

/* 80713AA8-80713AAC 000134 0004+00 0/0 0/0 0/0 .rodata          @6890 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6890 = 15000.0f;
COMPILER_STRIP_GATE(0x80713AA8, &lit_6890);
#pragma pop

/* 80713AAC-80713AB0 000138 0004+00 0/0 0/0 0/0 .rodata          @6891 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6891 = 12000.0f;
COMPILER_STRIP_GATE(0x80713AAC, &lit_6891);
#pragma pop

/* 80713AB0-80713AB4 00013C 0004+00 0/0 0/0 0/0 .rodata          @6892 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6892 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80713AB0, &lit_6892);
#pragma pop

/* 80713AB4-80713AB8 000140 0004+00 0/1 0/0 0/0 .rodata          @7307 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7307 = -10.0f;
COMPILER_STRIP_GATE(0x80713AB4, &lit_7307);
#pragma pop

/* 80713AB8-80713ABC 000144 0004+00 0/2 0/0 0/0 .rodata          @7308 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7308 = -200.0f;
COMPILER_STRIP_GATE(0x80713AB8, &lit_7308);
#pragma pop

/* 80713ABC-80713AC0 000148 0004+00 0/1 0/0 0/0 .rodata          @7309 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7309 = -20000.0f;
COMPILER_STRIP_GATE(0x80713ABC, &lit_7309);
#pragma pop

/* 80713AC0-80713AC4 00014C 0004+00 0/1 0/0 0/0 .rodata          @7310 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7310 = 200000.0f;
COMPILER_STRIP_GATE(0x80713AC0, &lit_7310);
#pragma pop

/* 80713AC4-80713AC8 000150 0004+00 0/1 0/0 0/0 .rodata          @7311 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7311 = 30000.0f;
COMPILER_STRIP_GATE(0x80713AC4, &lit_7311);
#pragma pop

/* 80713AC8-80713ACC 000154 0004+00 0/1 0/0 0/0 .rodata          @7312 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7312 = 45.0f;
COMPILER_STRIP_GATE(0x80713AC8, &lit_7312);
#pragma pop

/* 80713ACC-80713AD0 000158 0004+00 0/2 0/0 0/0 .rodata          @7313 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7313 = 80.0f;
COMPILER_STRIP_GATE(0x80713ACC, &lit_7313);
#pragma pop

/* 80713AD0-80713AD4 00015C 0004+00 0/1 0/0 0/0 .rodata          @7314 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7314 = -23500.0f;
COMPILER_STRIP_GATE(0x80713AD0, &lit_7314);
#pragma pop

/* 80713AD4-80713AD8 000160 0004+00 0/1 0/0 0/0 .rodata          @7315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7315 = -50000.0f;
COMPILER_STRIP_GATE(0x80713AD4, &lit_7315);
#pragma pop

/* 80713AD8-80713ADC 000164 0004+00 0/1 0/0 0/0 .rodata          @7316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7316 = -30000.0f;
COMPILER_STRIP_GATE(0x80713AD8, &lit_7316);
#pragma pop

/* 80713ADC-80713AE0 000168 0004+00 0/1 0/0 0/0 .rodata          @7317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7317 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80713ADC, &lit_7317);
#pragma pop

/* 80713AE0-80713AE4 00016C 0004+00 0/1 0/0 0/0 .rodata          @7318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7318 = 180.0f;
COMPILER_STRIP_GATE(0x80713AE0, &lit_7318);
#pragma pop

/* 80713AE4-80713AE8 000170 0004+00 0/1 0/0 0/0 .rodata          @7319 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7319 = -5000.0f;
COMPILER_STRIP_GATE(0x80713AE4, &lit_7319);
#pragma pop

/* 80713AE8-80713AEC 000174 0004+00 0/1 0/0 0/0 .rodata          @7320 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7320 = -300.0f;
COMPILER_STRIP_GATE(0x80713AE8, &lit_7320);
#pragma pop

/* 80713AF4-80713AF4 000180 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80713AF9 = "D_MN07";
#pragma pop

/* 80713FC4-80713FC8 0000A4 0004+00 1/2 0/0 0/0 .bss             c_start */
static u8 c_start[4];

/* 80711CB8-80712998 007698 0CE0+00 2/1 0/0 0/0 .text            daE_MF_Execute__FP10e_mf_class */
static void daE_MF_Execute(e_mf_class* param_0) {
    // NONMATCHING
}

/* 80712998-807129A0 008378 0008+00 1/0 0/0 0/0 .text            daE_MF_IsDelete__FP10e_mf_class */
static bool daE_MF_IsDelete(e_mf_class* param_0) {
    return true;
}

/* 807129A0-80712A08 008380 0068+00 1/0 0/0 0/0 .text            daE_MF_Delete__FP10e_mf_class */
static void daE_MF_Delete(e_mf_class* param_0) {
    // NONMATCHING
}

/* 80712A08-80712BF0 0083E8 01E8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80713AEC-80713AF0 000178 0004+00 0/1 0/0 0/0 .rodata          @7484 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7484 = 100000.0f;
COMPILER_STRIP_GATE(0x80713AEC, &lit_7484);
#pragma pop

/* 80713AF0-80713AF4 00017C 0004+00 0/1 0/0 0/0 .rodata          @7485 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7485 = 65535.0f;
COMPILER_STRIP_GATE(0x80713AF0, &lit_7485);
#pragma pop

/* 80713AF4-80713AF4 000180 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80713B00 = "D_MN09";
#pragma pop

/* 80712BF0-80712F20 0085D0 0330+00 1/0 0/0 0/0 .text            daE_MF_Create__FP10fopAc_ac_c */
static void daE_MF_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80712F20-807130FC 008900 01DC+00 1/1 0/0 0/0 .text            __ct__10e_mf_classFv */
e_mf_class::e_mf_class() {
    // NONMATCHING
}

/* 807130FC-80713144 008ADC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80713144-8071318C 008B24 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8071318C-80713258 008B6C 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80713258-807132DC 008C38 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 807132DC-80713338 008CBC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80713338-807133A8 008D18 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 807133A8-80713418 008D88 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80713418-8071341C 008DF8 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 8071341C-80713464 008DFC 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80713464-807134AC 008E44 0048+00 2/1 0/0 0/0 .text            __dt__12daE_MF_HIO_cFv */
daE_MF_HIO_c::~daE_MF_HIO_c() {
    // NONMATCHING
}

/* 807134AC-807134E8 008E8C 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_mf_cpp */
void __sinit_d_a_e_mf_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x807134AC, __sinit_d_a_e_mf_cpp);
#pragma pop

/* 807134E8-807134F0 008EC8 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_807134E8() {
    // NONMATCHING
}

/* 807134F0-807134F8 008ED0 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_807134F0() {
    // NONMATCHING
}

/* 807134F8-80713500 008ED8 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_807134F8() {
    // NONMATCHING
}

/* 80713500-80713508 008EE0 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80713500() {
    // NONMATCHING
}

/* 80713508-80713510 008EE8 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80713508() {
    // NONMATCHING
}

/* 80713510-80713924 008EF0 0414+00 1/1 0/0 0/0 .text
 * setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz */
static void setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz* param_2,
                                   cXyz* param_3) {
    // NONMATCHING
}

/* 80713924-80713960 009304 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80713FC8-80713FCC 0000A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80713FC8[4];
#pragma pop

/* 80713FCC-80713FD0 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80713FCC[4];
#pragma pop

/* 80713FD0-80713FD4 0000B0 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80713FD0[4];
#pragma pop

/* 80713FD4-80713FD8 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80713FD4[4];
#pragma pop

/* 80713FD8-80713FDC 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80713FD8[4];
#pragma pop

/* 80713FDC-80713FE0 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80713FDC[4];
#pragma pop

/* 80713FE0-80713FE4 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80713FE0[4];
#pragma pop

/* 80713FE4-80713FE8 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80713FE4[4];
#pragma pop

/* 80713FE8-80713FEC 0000C8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80713FE8[4];
#pragma pop

/* 80713FEC-80713FF0 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80713FEC[4];
#pragma pop

/* 80713FF0-80713FF4 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80713FF0[4];
#pragma pop

/* 80713FF4-80713FF8 0000D4 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80713FF4[4];
#pragma pop

/* 80713FF8-80713FFC 0000D8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80713FF8[4];
#pragma pop

/* 80713FFC-80714000 0000DC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80713FFC[4];
#pragma pop

/* 80714000-80714004 0000E0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80714000[4];
#pragma pop

/* 80714004-80714008 0000E4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80714004[4];
#pragma pop

/* 80714008-8071400C 0000E8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80714008[4];
#pragma pop

/* 8071400C-80714010 0000EC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8071400C[4];
#pragma pop

/* 80714010-80714014 0000F0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80714010[4];
#pragma pop

/* 80714014-80714018 0000F4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80714014[4];
#pragma pop

/* 80714018-8071401C 0000F8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80714018[4];
#pragma pop

/* 8071401C-80714020 0000FC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8071401C[4];
#pragma pop

/* 80714020-80714024 000100 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80714020[4];
#pragma pop

/* 80714024-80714028 000104 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80714024[4];
#pragma pop

/* 80714028-8071402C 000108 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80714028[4];
#pragma pop

/* 80713AF4-80713AF4 000180 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */