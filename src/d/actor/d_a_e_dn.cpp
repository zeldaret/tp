/**
 * @file d_a_e_dn.cpp
 * 
*/

#include "d/actor/d_a_e_dn.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
UNK_REL_DATA;
#include "d/d_bomb.h"
#include "f_op/f_op_actor_enemy.h"


//
// Forward References:
//

extern "C" void __ct__12daE_DN_HIO_cFv();
extern "C" static void dn_disappear__FP10e_dn_class();
extern "C" static void anm_init__FP10e_dn_classifUcf();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daE_DN_Draw__FP10e_dn_class();
extern "C" static void other_bg_check__FP10e_dn_classP10fopAc_ac_c();
extern "C" static void other_bg_check2__FP10e_dn_classP4cXyz();
extern "C" static void s_b_sub__FPvPv();
extern "C" static void search_bomb__FP10e_dn_classi();
extern "C" static void bomb_view_check__FP10e_dn_class();
extern "C" static void bomb_check__FP10e_dn_class();
extern "C" static void player_way_check__FP10e_dn_class();
extern "C" static void pl_check__FP10e_dn_classfs();
extern "C" static void move_gake_check__FP10e_dn_classfSc();
extern "C" static void jump_pos_check__FP10e_dn_classP4cXyz();
extern "C" static void e_dn_stay__FP10e_dn_class();
extern "C" static void e_dn_otoreac__FP10e_dn_class();
extern "C" static void e_dn_bomb_action__FP10e_dn_class();
extern "C" static void e_dn_normal__FP10e_dn_class();
extern "C" static void e_dn_drawback__FP10e_dn_class();
extern "C" static void e_dn_wolfbite__FP10e_dn_class();
extern "C" static void way_check__FP10e_dn_class();
extern "C" static void shot_s_sub__FPvPv();
extern "C" static void e_dn_fight_run__FP10e_dn_class();
extern "C" static void e_dn_jump__FP10e_dn_class();
extern "C" static void e_dn_gakejump__FP10e_dn_class();
extern "C" static void at_hit_check__FP10e_dn_class();
extern "C" static void e_dn_attack_0__FP10e_dn_class();
extern "C" static void e_dn_attack__FP10e_dn_class();
extern "C" static void tail_eff_set__FP10e_dn_class();
extern "C" static void e_dn_tail_attack__FP10e_dn_class();
extern "C" static void e_dn_guard__FP10e_dn_class();
extern "C" static void e_dn_s_damage__FP10e_dn_class();
extern "C" static void kado_check__FP10e_dn_class();
extern "C" static void body_gake__FP10e_dn_class();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" static void e_dn_damage__FP10e_dn_class();
extern "C" static void e_dn_backdrop__FP10e_dn_class();
extern "C" static void e_dn_water__FP10e_dn_class();
extern "C" static void e_dn_reg__FP10e_dn_class();
extern "C" static void wolfkick_damage__FP10e_dn_class();
extern "C" static void big_damage__FP10e_dn_class();
extern "C" static void small_damage__FP10e_dn_class();
extern "C" static void damage_check__FP10e_dn_class();
extern "C" static void action__FP10e_dn_class();
extern "C" static void anm_se_set__FP10e_dn_class();
extern "C" static void daE_DN_Execute__FP10e_dn_class();
extern "C" static bool daE_DN_IsDelete__FP10e_dn_class();
extern "C" static void daE_DN_Delete__FP10e_dn_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_DN_Create__FP10fopAc_ac_c();
extern "C" void __ct__10e_dn_classFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_DN_HIO_cFv();
extern "C" void __sinit_d_a_e_dn_cpp();
extern "C" static void func_804EE420();
extern "C" static void func_804EE428();
extern "C" static void func_804EE430();
extern "C" static void func_804EE438();
extern "C" static void func_804EE440();
extern "C" void __dt__5csXyzFv();
extern "C" extern char const* const d_a_e_dn__stringBase0;

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
extern "C" void StartShock__12dVibration_cFii4cXyz();
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
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

/* 804EEA78-804EEAA4 -00001 002C+00 1/1 0/0 0/0 .data            @4546 */
SECTION_DATA static void* lit_4546[11] = {
    (void*)(((char*)e_dn_stay__FP10e_dn_class) + 0x4C),
    (void*)(((char*)e_dn_stay__FP10e_dn_class) + 0x78),
    (void*)(((char*)e_dn_stay__FP10e_dn_class) + 0x158),
    (void*)(((char*)e_dn_stay__FP10e_dn_class) + 0x1AC),
    (void*)(((char*)e_dn_stay__FP10e_dn_class) + 0x230),
    (void*)(((char*)e_dn_stay__FP10e_dn_class) + 0x280),
    (void*)(((char*)e_dn_stay__FP10e_dn_class) + 0x2D4),
    (void*)(((char*)e_dn_stay__FP10e_dn_class) + 0x330),
    (void*)(((char*)e_dn_stay__FP10e_dn_class) + 0x3BC),
    (void*)(((char*)e_dn_stay__FP10e_dn_class) + 0x40C),
    (void*)(((char*)e_dn_stay__FP10e_dn_class) + 0x3F8),
};

/* 804EEAA4-804EEAD4 -00001 0030+00 1/1 0/0 0/0 .data            @4719 */
SECTION_DATA static void* lit_4719[12] = {
    (void*)(((char*)e_dn_bomb_action__FP10e_dn_class) + 0x98),
    (void*)(((char*)e_dn_bomb_action__FP10e_dn_class) + 0xE4),
    (void*)(((char*)e_dn_bomb_action__FP10e_dn_class) + 0x11C),
    (void*)(((char*)e_dn_bomb_action__FP10e_dn_class) + 0x15C),
    (void*)(((char*)e_dn_bomb_action__FP10e_dn_class) + 0x1A8),
    (void*)(((char*)e_dn_bomb_action__FP10e_dn_class) + 0x2A0),
    (void*)(((char*)e_dn_bomb_action__FP10e_dn_class) + 0x4A4),
    (void*)(((char*)e_dn_bomb_action__FP10e_dn_class) + 0x4A4),
    (void*)(((char*)e_dn_bomb_action__FP10e_dn_class) + 0x4A4),
    (void*)(((char*)e_dn_bomb_action__FP10e_dn_class) + 0x4A4),
    (void*)(((char*)e_dn_bomb_action__FP10e_dn_class) + 0x310),
    (void*)(((char*)e_dn_bomb_action__FP10e_dn_class) + 0x3D0),
};

/* 804EEAD4-804EEAF8 -00001 0024+00 1/1 0/0 0/0 .data            @5544 */
SECTION_DATA static void* lit_5544[9] = {
    (void*)(((char*)e_dn_guard__FP10e_dn_class) + 0x50),
    (void*)(((char*)e_dn_guard__FP10e_dn_class) + 0x88),
    (void*)(((char*)e_dn_guard__FP10e_dn_class) + 0x1E0),
    (void*)(((char*)e_dn_guard__FP10e_dn_class) + 0x1E0),
    (void*)(((char*)e_dn_guard__FP10e_dn_class) + 0x1E0),
    (void*)(((char*)e_dn_guard__FP10e_dn_class) + 0xB8),
    (void*)(((char*)e_dn_guard__FP10e_dn_class) + 0xFC),
    (void*)(((char*)e_dn_guard__FP10e_dn_class) + 0x150),
    (void*)(((char*)e_dn_guard__FP10e_dn_class) + 0x1A4),
};

/* 804EEAF8-804EEB00 0000B8 0008+00 1/1 0/0 0/0 .data            kado_bit$5557 */
SECTION_DATA static u8 kado_bit[8] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02,
};

/* 804EEB00-804EEB08 0000C0 0008+00 1/1 0/0 0/0 .data            kado_check_x$5558 */
SECTION_DATA static u8 kado_check_x[8] = {
    0x42, 0xA0, 0x00, 0x00, 0xC2, 0xA0, 0x00, 0x00,
};

/* 804EEB08-804EEB88 -00001 0080+00 1/1 0/0 0/0 .data            @5981 */
SECTION_DATA static void* lit_5981[32] = {
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0x1B8),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0x274),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0x514),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0x704),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0x844),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0x8F4),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0x998),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0x998),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xB00),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0x9F0),
    (void*)(((char*)e_dn_damage__FP10e_dn_class) + 0xAD4),
};

/* 804EEB88-804EEBA0 000148 0016+02 1/1 0/0 0/0 .data            j_spd$6416 */
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

/* 804EEBA0-804EEBA8 000160 0008+00 1/1 0/0 0/0 .data            foot_idx$6464 */
SECTION_DATA static u8 foot_idx[8] = {
    0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x1E,
};

/* 804EEBA8-804EEC9C -00001 00F4+00 1/1 0/0 0/0 .data            @6935 */
SECTION_DATA static void* lit_6935[61] = {
    (void*)(((char*)action__FP10e_dn_class) + 0xE4),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0xF0),
    (void*)(((char*)action__FP10e_dn_class) + 0x100),
    (void*)(((char*)action__FP10e_dn_class) + 0x110),
    (void*)(((char*)action__FP10e_dn_class) + 0x120),
    (void*)(((char*)action__FP10e_dn_class) + 0x130),
    (void*)(((char*)action__FP10e_dn_class) + 0x140),
    (void*)(((char*)action__FP10e_dn_class) + 0x150),
    (void*)(((char*)action__FP10e_dn_class) + 0x15C),
    (void*)(((char*)action__FP10e_dn_class) + 0x184),
    (void*)(((char*)action__FP10e_dn_class) + 0x168),
    (void*)(((char*)action__FP10e_dn_class) + 0x178),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x190),
    (void*)(((char*)action__FP10e_dn_class) + 0x19C),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1A8),
    (void*)(((char*)action__FP10e_dn_class) + 0x1B4),
    (void*)(((char*)action__FP10e_dn_class) + 0x1C4),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1DC),
    (void*)(((char*)action__FP10e_dn_class) + 0x1D4),
};

/* 80713CD8-80713CE4 0001D0 000C+00 1/0 0/0 0/0 .data            jv_offset */
Vec jv_offset = { 0.0f, 0.0f, 0.0f };

/* 80713CE4-80713D74 -00001 0090+00 1/1 0/0 0/0 .data            jc_data */
dJntColData_c jc_data[12] = {
    {0, 1, 2, 40.0f, &jv_offset}, {0, 1, 3, 30.0f, &jv_offset},
    {0, 1, 22, 40.0f, &jv_offset}, {0, 1, 11, 15.0f, &jv_offset},
    {0, 1, 12, 10.0f, &jv_offset}, {0, 1, 17, 15.0f, &jv_offset},
    {0, 1, 18, 10.0f, &jv_offset}, {0, 1, 23, 20.0f, &jv_offset},
    {0, 1, 24, 15.0f, &jv_offset}, {0, 1, 27, 20.0f, &jv_offset},
    {0, 1, 28, 15.0f, &jv_offset}, {0, 1, 32, 20.0f, &jv_offset},
};

/* 804EEE48-804EEE54 000408 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 804EEE54-804EEE60 000414 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 804EEE60-804EEE6C 000420 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 804EEE6C-804EEE78 00042C 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 804EEE78-804EEE84 000438 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 804EEE84-804EEEA8 000444 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_804EE440,
    (void*)NULL,
    (void*)NULL,
    (void*)func_804EE438,
};

/* 804EEEA8-804EEED8 000468 0030+00 3/3 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_804EE420,
    (void*)NULL,
    (void*)NULL,
    (void*)func_804EE430,
    (void*)NULL,
    (void*)NULL,
    (void*)func_804EE428,
};

/* 804EEED8-804EEEE4 000498 000C+00 2/2 0/0 0/0 .data            __vt__12daE_DN_HIO_c */
SECTION_DATA extern void* __vt__12daE_DN_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_DN_HIO_cFv,
};

/* 804E51AC-804E5220 0000EC 0074+00 1/1 0/0 0/0 .text            __ct__12daE_DN_HIO_cFv */
daE_DN_HIO_c::daE_DN_HIO_c() {
    field_0x4 = -1;
    base_size = 1.1f;
    movement_speed = 7.5f;
    dash_speed = 25.0f;
    battle_init_range = 300.0f;
    attack_init_range = 350.0f;
    field_0x1c = 3;
    field_0x1e = 40;
    field_0x20 = 80;
    field_0x22 = 1;
    invulnerable = 0;
    field_0x24 = 0;
}

/* 804E5220-804E52D0 000160 00B0+00 2/2 0/0 0/0 .text            dn_disappear__FP10e_dn_class */
static void dn_disappear(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    cXyz sp1c, sp28;

    MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(2), *calc_mtx);
    sp1c.set(0.0f, 0.0f, 0.0f);
    MtxPosition(&sp1c, &sp28);

    fopAcM_createDisappear(a_this, &sp28, 13, 0, 21);
    fopAcM_delete(a_this);

    int swBit = fopAcM_GetParam(a_this) >> 24;
    if (swBit != 0xFF) {
        dComIfGs_onSwitch(swBit, fopAcM_GetRoomNo(a_this));
    }
}

/* 804E52D0-804E537C 000210 00AC+00 18/18 0/0 0/0 .text            anm_init__FP10e_dn_classifUcf */
static void anm_init(e_dn_class* i_this, int param_2, f32 i_morf, u8 i_attr, f32 i_rate) {
    i_this->mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_dn", param_2), i_attr, i_morf,
                                i_rate, 0.0f, -1.0f);
    i_this->field_0x5e0 = param_2;
}

/* 804E537C-804E5838 0002BC 04BC+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        int jointNo = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        e_dn_class* i_this = (e_dn_class*)model->getUserArea();
        if (i_this != NULL) {
            MTXCopy(model->getAnmMtx(jointNo), *calc_mtx);

            if (jointNo != 0) {
                if (jointNo == 22) {
                    cMtx_YrotM(*calc_mtx, i_this->field_0x832);
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x7f0 + (i_this->field_0x830 - i_this->field_0x762[2].x));
                } else if (jointNo == 23) {
                    cMtx_YrotM(*calc_mtx, i_this->field_0x7fa);
                } else if (jointNo == 24) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x7fc[0]);
                } else if (jointNo == 27) {
                    cMtx_YrotM(*calc_mtx, i_this->field_0x7fc[1]);
                } else if (jointNo == 28) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x7fc[2]);
                } else if (jointNo == 2) {
                    cMtx_YrotM(*calc_mtx, (i_this->field_0x6fa / 2) + (i_this->field_0x762[1].y + - i_this->field_0x6f6));
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x762[1].x + i_this->field_0x7ec[1]);
                } else if (jointNo == 3 || jointNo == 4) {
                    cMtx_YrotM(*calc_mtx, i_this->field_0x762[0].y + (i_this->field_0x6fa - i_this->field_0x6f6));
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x7ec[0] + (i_this->field_0x762[0].x - i_this->field_0x6f8));
                } else if (jointNo == 11) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x762[3].y + i_this->field_0x7f2);
                } else if (jointNo == 12) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x762[4].y + i_this->field_0x7f4);
                } else if (jointNo == 17) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x762[5].y + i_this->field_0x7f6);
                } else if (jointNo == 18) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x762[6].y + i_this->field_0x7f8);
                } else if (jointNo >= 31 && jointNo <= 34) {
                    cMtx_YrotM(*calc_mtx, i_this->field_0x762[jointNo - 2].x + i_this->field_0x826);
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x762[jointNo - 3].z);
                }
            }

            if (i_this->field_0x80a != 0) {
                if ((jointNo & 1) != 0) {
                    cMtx_YrotM(*calc_mtx, i_this->field_0x80a);
                } else if ((jointNo & 2) != 0) {
                    cMtx_XrotM(*calc_mtx, i_this->field_0x80a);
                } else if ((jointNo & 4) != 0) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x80a);
                }
            }

            model->setAnmMtx(jointNo, *calc_mtx);
            MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
            if (jointNo == 0) {
                MTXCopy(model->getAnmMtx(jointNo), *calc_mtx);
                cMtx_YrotM(*calc_mtx, 0);
                cMtx_XrotM(*calc_mtx, 0);
                cMtx_ZrotM(*calc_mtx, 0);
                model->setAnmMtx(jointNo, *calc_mtx);
                MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
            }

            if (jointNo == 0) {
                MTXCopy(model->getAnmMtx(jointNo), *calc_mtx);
                cMtx_YrotM(*calc_mtx, 0);
                cMtx_XrotM(*calc_mtx, 0);
                cMtx_ZrotM(*calc_mtx, 0);
                model->setAnmMtx(jointNo, *calc_mtx);
                MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
            }
        }
    }

    return 1;
}

/* 804E5838-804E5B20 000778 02E8+00 1/0 0/0 0/0 .text            daE_DN_Draw__FP10e_dn_class */
static int daE_DN_Draw(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;

    if (i_this->field_0x10d8 != 0) {
        return 1;
    }

    J3DModel* model = i_this->mpModelMorf->getModel();
    g_env_light.settingTevStruct(0, &a_this->current.pos, &a_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &a_this->tevStr);

    J3DModelData* modelData;
    J3DMaterial* matNode_p;
    if (i_this->field_0x6c4 != 0) {
        modelData = model->getModelData();
        for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
            matNode_p = modelData->getMaterialNodePointer(i);
            matNode_p->getTevColor(0)->r = i_this->field_0x6c8;
            matNode_p->getTevColor(0)->g = i_this->field_0x6c8;
            matNode_p->getTevColor(0)->b = i_this->field_0x6c8;
        }
    }

    i_this->mpModelMorf->entryDL();

    if (i_this->field_0x6c4 != 0) {
        modelData = model->getModelData();
        for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
            matNode_p = modelData->getMaterialNodePointer(i);
            matNode_p->getTevColor(0)->r = 0;
            matNode_p->getTevColor(0)->g = 0;
            matNode_p->getTevColor(0)->b = 0;
        }
    }

    g_env_light.setLightTevColorType_MAJI(i_this->field_0x5e4, &a_this->tevStr);
    mDoExt_modelUpdateDL(i_this->field_0x5e4);

    if (i_this->field_0x690 != NULL) {
        g_env_light.setLightTevColorType_MAJI(i_this->field_0x690, &a_this->tevStr);
        mDoExt_modelUpdateDL(i_this->field_0x690);
    }

    g_env_light.setLightTevColorType_MAJI(i_this->field_0x68c, &a_this->tevStr);
    mDoExt_modelUpdateDL(i_this->field_0x68c);

    cXyz sp50;
    sp50.set(a_this->current.pos.x, a_this->current.pos.y + 50.0f, a_this->current.pos.z);
    i_this->mShadowKey = dComIfGd_setShadow(i_this->mShadowKey, 1, model, &sp50, 1150.0f, 0.0f, 
                                            a_this->current.pos.y, i_this->mObjAcch.GetGroundH(), 
                                            i_this->mObjAcch.m_gnd, &a_this->tevStr, 0, 1.0f, 
                                            dDlst_shadowControl_c::getSimpleTex());
    dComIfGd_addRealShadow(i_this->mShadowKey, i_this->field_0x5e4);
    if (i_this->field_0x690 != NULL) {
        dComIfGd_addRealShadow(i_this->mShadowKey, i_this->field_0x690);
    }
    dComIfGd_addRealShadow(i_this->mShadowKey, i_this->field_0x68c);
    
    return 1;
}

/* 804E5B20-804E5BF8 000A60 00D8+00 2/2 0/0 0/0 .text other_bg_check__FP10e_dn_classP10fopAc_ac_c */
static BOOL other_bg_check(e_dn_class* i_this, fopAc_ac_c* i_actor) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    dBgS_LinChk lin_chk;
    cXyz start, end;

    end = i_actor->current.pos;
    end.y += 100.0f;
    start = a_this->current.pos;
    start.y = a_this->eyePos.y;
    lin_chk.Set(&start, &end, a_this);

    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        return TRUE;
    }

    return FALSE;
}

/* 804E5BF8-804E5CD0 000B38 00D8+00 1/1 0/0 0/0 .text other_bg_check2__FP10e_dn_classP4cXyz */
static BOOL other_bg_check2(e_dn_class* i_this, cXyz* param_2) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    dBgS_LinChk lin_chk;
    cXyz start, end;

    end = *param_2;
    end.y += 100.0f;
    start = a_this->current.pos;
    start.y = a_this->eyePos.y;

    lin_chk.Set(&start, &end, a_this);

    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        return TRUE;
    }

    return FALSE;
}

UNK_REL_BSS;

/* 804EEF2C-804EEF30 -00001 0004+00 1/2 0/0 0/0 .bss             None */
/* 804EEF2C 0001+00 data_804EEF2C @1009 */
/* 804EEF2D 0003+00 data_804EEF2D None */
static u8 l_initHIO;

/* 804EEF3C-804EEF64 000054 0028+00 10/11 0/0 0/0 .bss             l_HIO */
static daE_DN_HIO_c l_HIO;

/* 804EEF64-804EEF8C 00007C 0028+00 2/2 0/0 0/0 .bss             target_info */
static fopAc_ac_c* target_info[10];

/* 804EEF8C-804EEF90 0000A4 0004+00 2/2 0/0 0/0 .bss             target_info_count */
static int target_info_count;

/* 804E5CD0-804E5D4C 000C10 007C+00 1/1 0/0 0/0 .text            s_b_sub__FPvPv */
static void* s_b_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && dBomb_c::checkBombActor((fopAc_ac_c*)i_actor) && !((dBomb_c*)i_actor)->checkStateExplode() && target_info_count < 10) {
        target_info[target_info_count] = (fopAc_ac_c*)i_actor;
        target_info_count++;
    }

    return NULL;
}

/* 804E5D4C-804E61D8 000C8C 048C+00 2/2 0/0 0/0 .text            search_bomb__FP10e_dn_classi */
static dBomb_c* search_bomb(e_dn_class* i_this, int param_2) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    dBomb_c* bomb;
    if ((i_this->field_0x744 & 0x10000000) == 0) {
        return NULL;
    }

    target_info_count = 0;
    for (int i = 0; i < 10; i++) {
        target_info[i] = NULL;
    }

    fpcM_Search(s_b_sub, i_this);

    f32 threshold = 50.0f;
    if (target_info_count != 0) {
        cXyz sp44, sp50, sp5c;
        for (int i = 0; i < target_info_count;) {
            bomb = (dBomb_c*)target_info[i];
            sp44.x = bomb->current.pos.x - a_this->eyePos.x;
            sp44.y = 50.0f + bomb->current.pos.y - a_this->eyePos.y;
            sp44.z = bomb->current.pos.z - a_this->eyePos.z;
            sp50.x = bomb->current.pos.x - a_this->current.pos.x;
            sp50.y = bomb->current.pos.y - a_this->current.pos.y;
            sp50.z = bomb->current.pos.z - a_this->current.pos.z;

            if (sp44.abs() < threshold && !(sp50.abs() > i_this->mPlayerDistance + 30.0f) && (!other_bg_check(i_this, bomb) || !param_2)) {
                if (param_2) {
                    if (fabsf(50.0f + bomb->current.pos.y - a_this->eyePos.y) <= 300.0f) {
                        s16 sVar1 = a_this->shape_angle.y - cM_atan2s(sp44.x, sp44.z);
                        if (sVar1 < 0) {
                            sVar1 = -1 * sVar1;
                        }

                        if ((u16)sVar1 < 20000) {
                            return bomb;
                        }

                        cMtx_YrotS(*calc_mtx, -a_this->shape_angle.y);
                        MtxPosition(&sp44, &sp5c);

                        if (fabsf(sp5c.x) < 500.0f && fabsf(sp5c.y) < 300.0f && sp5c.z > -125.0f && sp5c.z < 500.0f) {
                            return bomb;
                        }
                    }
                } else {
                    return bomb;
                }
            }

            i++;
            if (i == target_info_count) {
                i = 0;
                threshold += 50.0f;
                if (threshold > 1500.0f) {
                    return NULL;
                }
            }
        }
    } else {
        return NULL;
    }
    
    return NULL;
}

/* 804E61D8-804E61FC 001118 0024+00 4/4 0/0 0/0 .text            bomb_view_check__FP10e_dn_class */
static dBomb_c* bomb_view_check(e_dn_class* i_this) {
    return search_bomb(i_this, TRUE);
}

/* 804E61FC-804E6220 00113C 0024+00 1/1 0/0 0/0 .text            bomb_check__FP10e_dn_class */
static dBomb_c* bomb_check(e_dn_class* i_this) {
    return search_bomb(i_this, FALSE);
}

/* 804E6220-804E6264 001160 0044+00 1/1 0/0 0/0 .text            player_way_check__FP10e_dn_class */
static BOOL player_way_check(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;

    s16 sVar1 = a_this->shape_angle.y - dComIfGp_getPlayer(0)->shape_angle.y;
    if ((int)sVar1 < 0) {
        sVar1 = -sVar1;
    }

    if (((u32)sVar1 & 0xFFFF) < 0x6000) {
        return FALSE;
    }

    return TRUE;
}

/* 804E6264-804E6340 0011A4 00DC+00 4/4 0/0 0/0 .text            pl_check__FP10e_dn_classfs */
static int pl_check(e_dn_class* i_this, f32 param_2, s16 param_3) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);

    if (i_this->mPlayerDistance < param_2) {
        s16 sVar1 = a_this->shape_angle.y - i_this->mYAngleToPlayer;
        if (sVar1 < param_3 && sVar1 > (s16)-param_3 && !other_bg_check(i_this, player)) {
            return 1;
        }
    }
        
    for (int i = 0; i <= 2; i++) {
        if (i_this->field_0xa9c[i].ChkCoHit() != 0) {
            if (player == dCc_GetAc(i_this->field_0xa9c[i].GetCoHitObj()->GetAc())) {
                return 2;
            }
        }
    }
    
    return 0;
}

/* 804E6340-804E6448 001280 0108+00 3/3 0/0 0/0 .text            move_gake_check__FP10e_dn_classfSc */
static BOOL move_gake_check(e_dn_class* i_this, f32 param_2, s8 param_3) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    dBgS_GndChk gnd_chk;
    cXyz sp84, sp90;

    cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
    sp84.x = 0.0f;
    sp84.y = 100.0f;
    if (param_3 != 0) {
        sp84.z = -param_2;
    } else {
        sp84.z = param_2;
    }
    MtxPosition(&sp84, &sp90);
    sp90 += a_this->current.pos;
    gnd_chk.SetPos(&sp90);

    if (a_this->current.pos.y - dComIfG_Bgsp().GroundCross(&gnd_chk) > 300.0f) {
        return TRUE;
    }

    return FALSE;
}

/* 804E6448-804E6608 001388 01C0+00 1/1 0/0 0/0 .text jump_pos_check__FP10e_dn_classP4cXyz */
static BOOL jump_pos_check(e_dn_class* i_this, cXyz* param_2) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    dBgS_GndChk gnd_chk;
    cXyz sp94, spa0;
    f32 fVar1 = 300.0f;

    cMtx_YrotS(*calc_mtx, i_this->mYAngleToPlayer);
    sp94.x = 0.0f;
    sp94.y = 200.0f;

    int i = 0;
    while (i < 10) {
        sp94.z = fVar1;
        MtxPosition(&sp94, &spa0);
        spa0 += a_this->current.pos;
        gnd_chk.SetPos(&spa0);
        spa0.y = dComIfG_Bgsp().GroundCross(&gnd_chk);

        if ((a_this->current.pos.y - spa0.y) < 200.0f) {
            *param_2 = spa0;
            sp94.z += 200.0f;
            MtxPosition(&sp94, &spa0);
            spa0 += a_this->current.pos;
            gnd_chk.SetPos(&spa0);
            spa0.y = dComIfG_Bgsp().GroundCross(&gnd_chk);

            if ((a_this->current.pos.y - spa0.y) < 200.0f) {
                *param_2 = spa0;
            }

            return TRUE;
        }

        fVar1 += 50.0f;
        i++;
    }

    return FALSE;
}

/* 804E6608-804E6A8C 001548 0484+00 2/1 0/0 0/0 .text            e_dn_stay__FP10e_dn_class */
static void e_dn_stay(e_dn_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    cXyz sp30;

    i_this->field_0x6f4 = 5;
    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 31, 10.0f, 2, cM_rndF(0.1f) + 0.9f);
            i_this->field_0x5b4 = 1;
            // fallthrough
        case 1:
            if (fopAcM_otoCheck(a_this, 2000.0f) || daPy_getPlayerActorClass()->checkWolfBark()) {
                SND_INFLUENCE* sound = dKy_Sound_get();
                sp30 = sound->position - a_this->current.pos;
                if (cM_atan2s(sp30.y, JMAFastSqrt(sp30.x * sp30.x + sp30.z * sp30.z)) > 0x1000) {
                    i_this->field_0x5b4 = 5;
                } else {
                    i_this->field_0x5b4 = 2;
                }

                i_this->field_0x6e0[0] = cM_rndF(10.0f) + 10.0f;
                i_this->field_0x738 = sound->position;
            }
            break;

        case 2:
            if (i_this->field_0x6e0[0] == 0) {
                anm_init(i_this, 21, 3.0f, 0, 1.5f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_FIND, -1);
                i_this->field_0x5b4 = 3;
            }
            break;

        case 3:
            if (i_this->mpModelMorf->isStop()) {
                if (other_bg_check2(i_this, &i_this->field_0x738)) {
                    i_this->field_0x6e0[0] = cM_rndF(10.0f) + 20.0f;
                    i_this->field_0x5b4 = 4;
                } else {
                    i_this->mAction = 10;
                    i_this->field_0x5b4 = 0;
                }
            }
            break;

        case 4:
            if (i_this->field_0x6e0[0] == 0) {
                i_this->field_0x5b4 = 10;
                i_this->field_0x6e0[0] = cM_rndF(10.0f) + 30.0f;
                anm_init(i_this, 33, 5.0f, 2, 1.5f);
            }
            break;

        case 5:
            if (i_this->field_0x6e0[0] == 0) {
                anm_init(i_this, 21, 3.0f, 0, 1.5f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_FIND, -1);
                i_this->field_0x5b4 = 6;
            }
            break;

        case 6:
            if (i_this->mpModelMorf->isStop()) {
                i_this->field_0x6e0[0] = cM_rndF(10.0f) + 20.0f;
                i_this->field_0x5b4 = 7;
            }
            break;

        case 7:
            if (i_this->field_0x6e0[0] == 0) {
                i_this->field_0x5b4 = 10;
                i_this->field_0x6e0[0] = cM_rndF(40.0f) + 50.0f;
                anm_init(i_this, 34, 5.0f, 2, 1.3f);
                i_this->mpModelMorf->setFrame(cM_rndF(75.0f));
            }
            break;

        case 8:
            if (i_this->mpModelMorf->isStop()) {
                i_this->field_0x5b4 = 0;
            }
            break;

        case 10:
            if (i_this->field_0x6e0[0] == 0) {
                i_this->field_0x5b4 = 0;
            }
    }

    if ((i_this->field_0x6cc & 15) == 0) {
        if (pl_check(i_this, i_this->field_0x6d8, 0x4000) != 0) {
            i_this->mAction = 3;
            i_this->field_0x5b4 = -10;
            i_this->field_0x6e0[0] = 60;
        } else if (bomb_view_check(i_this) != NULL) {
            i_this->mAction = 11;
            i_this->field_0x5b4 = 0;
        }
    }
}

/* 804E6A8C-804E6DBC 0019CC 0330+00 1/1 0/0 0/0 .text            e_dn_otoreac__FP10e_dn_class */
static void e_dn_otoreac(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    cXyz sp40, sp4c;
    f32 fVar1 = 0.0f;
    i_this->field_0x6f4 = 2;

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 31, 10.0f, 2, cM_rndF(0.2f) + 1.5f);
            i_this->field_0x6e0[0] = cM_rndF(10.0f) + 20.0f;
            i_this->field_0x5b4 = 1;
            // fallthrough
        case 1:
            if (i_this->field_0x6e0[0] == 0) {
                anm_init(i_this, 30, 5.0f, 2, cM_rndFX(0.05f) + 1.0f);
                i_this->field_0x5b4 = 2;
            }
            break;

        case 2:
            fVar1 = l_HIO.dash_speed;
            if ((i_this->field_0x6cc & 3) == 0) {
                if ((i_this->field_0x6cc & 4) != 0) {
                    i_this->field_0x10e4 = 1;
                } else {
                    i_this->field_0x10e4 = 2;
                }
            }

            sp40 = i_this->field_0x738 - a_this->current.pos;
            cLib_addCalcAngleS2(&a_this->current.angle.y, cM_atan2s(sp40.x, sp40.z), 2, 0xC00);
            if (sp40.abs() < 250.0f || i_this->mObjAcch.ChkWallHit() != 0) {
                i_this->mAction = 0;
                i_this->field_0x5b4 = 0;
                i_this->field_0x6e0[0] = cM_rndF(50.0f) + 50.0f;
                anm_init(i_this, 33, 10.0f, 2, 1.0f);
            }
            break;


    }

    cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, 5.0f);
    if ((i_this->field_0x6cc & 15) == 0) {
        if (pl_check(i_this, i_this->field_0x6d8, 0x4000) != 0) {
            i_this->mAction = 3;
            i_this->field_0x5b4 = -10;
            i_this->field_0x6e0[0] = 60;
        } else if (bomb_view_check(i_this) != NULL) {
            i_this->mAction = 11;
            i_this->field_0x5b4 = 0;
        }
    }
}

/* 804E6DBC-804E72C8 001CFC 050C+00 2/1 0/0 0/0 .text            e_dn_bomb_action__FP10e_dn_class */
static void e_dn_bomb_action(e_dn_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    s16 sVar2;
    cXyz sp3c, sp48;
    dBomb_c* bomb = bomb_check(i_this);
    if (bomb == NULL) {
        i_this->mAction = 3;
        i_this->field_0x5b4 = 0;
        return;
    }

    sp3c.x = bomb->current.pos.x - a_this->current.pos.x;
    sp3c.z = bomb->current.pos.z - a_this->current.pos.z;
    s16 sVar1 = cM_atan2s(sp3c.x, sp3c.z);
    f32 fVar1 = 0.0f;

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 21, 3.0f, 0, 1.5f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_FIND_BOMB, -1);
            i_this->field_0x5b4 = 1;
            break;

        case 1:
            if (i_this->mpModelMorf->isStop()) {
                i_this->field_0x5b4 = 2;
            }
            break;

        case 2:
            i_this->field_0x5b4 = 3;
            anm_init(i_this, 31, 5.0f, 2, 1.0f);
            i_this->field_0x6e0[1] = cM_rndF(10.0f) + 10.0f;
            // fallthrough
        case 3:
            if (i_this->field_0x6e0[1] == 0 && bomb->speedF < 0.1f) {
                i_this->field_0x5b4 = 4;
                anm_init(i_this, 30, 5.0f, 2, cM_rndFX(0.05f) + 1.0f);
            }
            break;

        case 4:
            if (bomb->speedF < 0.1f && !bomb->checkStateCarry() && JMAFastSqrt(sp3c.x * sp3c.x + sp3c.z * sp3c.z) < 250.0f) {
                sVar2 = i_this->mYAngleToPlayer - a_this->shape_angle.y;
                if (sVar2 < 0x4000 && sVar2 > -0x4000) {
                    i_this->field_0x5b4 = 10;
                    break;
                }
            }

            sVar1 += 0x8000;
            fVar1 = l_HIO.dash_speed;
            if (JMAFastSqrt(sp3c.x * sp3c.x + sp3c.z * sp3c.z) > 600.0f) {
                i_this->field_0x5b4 = 5;
                anm_init(i_this, 31, 5.0f, 2, 1.0f);
            }
            
            break;

        case 5:
            i_this->mSound.startCreatureSoundLevel(Z2SE_EN_DN_V_LOOK_BOMB, 0, -1);
            sVar1 = i_this->mYAngleToPlayer;
            if (JMAFastSqrt(sp3c.x * sp3c.x + sp3c.z * sp3c.z) < 500.0f) {
                i_this->field_0x5b4 = 2;
            }
            break;

        case 10:
            i_this->field_0x6f2 = 0;
            fVar1 = l_HIO.dash_speed;
            if (JMAFastSqrt(sp3c.x * sp3c.x + sp3c.z * sp3c.z) < 100.0f) {
                i_this->field_0x6e0[0] = 20;
                i_this->field_0x5b4 = 11;
                anm_init(i_this, 30, 5.0f, 0, cM_rndFX(0.05f) + 1.0f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_KICK_BOMB, -1);
            }

            if (bomb->speedF > 0.1f) {
                i_this->field_0x5b4 = 2;
            }
            break;

        case 11:
            i_this->field_0x6f2 = 0;
            sVar1 = i_this->mYAngleToPlayer;

            if (i_this->field_0x6e0[0] >= 10) {
                cMtx_YrotS(*calc_mtx, sVar1);
                sp3c.x = -30.0f;
                sp3c.y = 0.0f;
                sp3c.z = 60.0f;
                MtxPosition(&sp3c, &sp48);
                sp48 += a_this->current.pos;

                cLib_addCalc2(&bomb->current.pos.x, sp48.x, 1.0f, 15.0f);
                cLib_addCalc2(&bomb->current.pos.z, sp48.z, 1.0f, 15.0f);

                if (i_this->field_0x6e0[0] == 10) {
                    bomb->speedF = 30.0f;
                    bomb->speed.y = 30.0f;
                    bomb->current.angle.y = a_this->shape_angle.y;
                }
            }

            if (i_this->field_0x6e0[0] == 0) {
                anm_init(i_this, 31, 5.0f, 2, 1.0f);
                i_this->field_0x5b4 = 5;
            }
    }

    cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, 5.0f);
    cLib_addCalcAngleS2(&a_this->current.angle.y, sVar1, 4, 0x1000);
    i_this->field_0x6f4 = 2;
    i_this->field_0x738 = bomb->current.pos;
}

/* 804E72C8-804E7620 002208 0358+00 1/1 0/0 0/0 .text            e_dn_normal__FP10e_dn_class */
static void e_dn_normal(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    cXyz sp44, sp50;
    f32 fVar1 = 0.0f;
    s16 sVar1 = 0x4000;
    s16 sVar2, sVar3;

    switch (i_this->field_0x5b4) {
        case 0:
        case 1:
        case 2:
            if (i_this->field_0x6e0[0] == 0) {
                if (fopAcM_wayBgCheck(a_this, 200.0f, 50.0f) || move_gake_check(i_this, 200.0f, 0)) {
                    sVar2 = cM_rndFX(10000.0f) + 32768.0f;
                    i_this->field_0x6e0[1] = 40;
                } else {
                    sp50.x = a_this->home.pos.x + cM_rndFX(600.0f);
                    sp50.y = a_this->home.pos.y;
                    sp50.z = a_this->home.pos.z + cM_rndFX(600.0f);
                    sp44 = sp50 - a_this->current.pos;

                    sVar2 = cM_atan2s(sp44.x, sp44.z) - a_this->current.angle.y;
                    if (sVar2 > 0x3000) {
                        sVar2 = 0x3000;
                    } else if (sVar2 < -0x3000) {
                        sVar2 = -0x3000;
                    }
                }

                i_this->field_0x5d4 = a_this->current.angle.y + sVar2;
                anm_init(i_this, 35, 10.0f, 2, 1.0f);
                i_this->field_0x5b4 = 3;
                i_this->field_0x6e0[0] = cM_rndF(100.0f) + 100.0f;
            } else {
                sVar1 = 0x7000;
            }
            break;

        case 3:
            fVar1 = l_HIO.movement_speed;
            sVar2 = a_this->current.angle.y;
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->field_0x5d4, 2, 0x400);
            sVar3 = a_this->current.angle.y - i_this->field_0x5d4;
            if (sVar3 > 0x1000 || sVar3 < -0x1000) {
                fVar1 = 0.0f;
            }

            sVar2 -= a_this->current.angle.y;
            sVar2 *= 2;
            if (sVar2 > 0x1000) {
                sVar2 = 0x1000;
            } else if (sVar2 < -0x1000) {
                sVar2 = -0x1000;
            }

            cLib_addCalcAngleS2(&i_this->field_0x826, sVar2, 2, 0x400);

            if (i_this->field_0x6e0[0] == 0 || 
                (i_this->field_0x6e0[1] == 0 && (fopAcM_wayBgCheck(a_this, 200.0f, 50.0f) || move_gake_check(i_this, 200.0f, 0)))) {
                i_this->field_0x5b4 = 2;
                i_this->field_0x6e0[0] = cM_rndF(100.0f) + 50.0f;
                anm_init(i_this, 33, 10.0f, 2, 1.0f);
            }
            break;
    }

    cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, 3.0f);
    BOOL bVar1 = fopAcM_otoCheck(a_this, 2000.0f) | daPy_getPlayerActorClass()->checkWolfBark();
    if ((i_this->field_0x6cc & 15) == 0 || bVar1) {
        if (bVar1 || pl_check(i_this, i_this->field_0x6d8, sVar1) != 0) {
            i_this->mAction = 3;
            i_this->field_0x5b4 = -10;
            i_this->field_0x6e0[0] = 60;
        }

        if (bomb_view_check(i_this) != NULL) {
            i_this->mAction = 11;
            i_this->field_0x5b4 = 0;
        }
    }
}

/* 804E7620-804E77A8 002560 0188+00 1/1 0/0 0/0 .text            e_dn_drawback__FP10e_dn_class */
static void e_dn_drawback(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 18, 5.0f, 0, 1.0f);
            i_this->field_0x5b4 = 1;
            a_this->speedF = -5.0f;
            i_this->field_0x6e8 = 10;
            i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_DRAWBACK, -1);
            i_this->field_0x5d4 = player->shape_angle.y + 0x8000;
            break;

        case 1:
            a_this->onHeadLockFlg();
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->field_0x5d4, 4, 0x400);
            cLib_addCalc0(&a_this->speedF, 1.0f, 0.1f);

            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 3;
                i_this->field_0x5b4 = 0;
                i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_AWAKE, -1);
            }
            break;
    }

    if (move_gake_check(i_this, 50.0f, 1)) {
        i_this->mAction = 23;
        i_this->field_0x5b4 = 0;
    }
}

/* 804E77A8-804E7B34 0026E8 038C+00 1/1 0/0 0/0 .text            e_dn_wolfbite__FP10e_dn_class */
static void e_dn_wolfbite(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);

    i_this->field_0x6e8 = 10;
    cLib_addCalc0(&a_this->speedF, 1.0f, 2.0f);

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 23, 3.0f, 0, 1.0f);
            i_this->field_0x5b4 = 1;
            i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_DRAWBACK, -1);
            a_this->health -= 10;
            break;

        case 1:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 26, 3.0f, 2, 1.0f);
                i_this->field_0x5b4 = 2;
            }
            break;

        case 2:
            if (i_this->field_0x5e0 == 24) {
                if (i_this->mpModelMorf->isStop()) {
                    anm_init(i_this, 26, 3.0f, 2, 1.0f);
                }
            }

            if (a_this->health <= 0 || a_this->checkWolfBiteDamage()) {
                a_this->offWolfBiteDamage();
                anm_init(i_this, 24, 2.0f, 0, 1.0f);
                a_this->health -= 10;
                if (a_this->health <= 0) {
                    player->offWolfEnemyHangBite();
                    i_this->field_0x750 = (a_this->shape_angle.y - 0x8000) - player->shape_angle.y;
                    i_this->field_0x74c = 150.0f;
                    i_this->mAction = 21;
                    i_this->field_0x5b4 = 0;
                    i_this->field_0x724.y = player->shape_angle.y + 0x8000;
                    a_this->speed.y = 0.0f;
                    i_this->field_0x704 = -1.0f;
                    i_this->field_0x828 = 50;
                    i_this->mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 32);
                    i_this->field_0x710 = 1;
                    i_this->field_0x6e8 = 1000;
                    i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_DEATH, -1);
                    return;
                }

                i_this->mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 30);
                i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_DAMAGE, -1);
            }

            if (!player->checkWolfEnemyHangBiteOwn(a_this)) {
                anm_init(i_this, 25, 3.0f, 0, 1.0f);
                i_this->field_0x5b4 = 3;
            }
            break;

        case 3:
            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 3;
                i_this->field_0x5b4 = 0;
                i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_AWAKE, -1);
            }
    }
}

/* 804E7B34-804E7B74 002A74 0040+00 1/1 0/0 0/0 .text            way_check__FP10e_dn_class */
static int way_check(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    s16 sVar1 = a_this->shape_angle.y - i_this->mYAngleToPlayer;
    if (sVar1 <= 0x4000 && sVar1 >= -0x4000) {
        return 0;
    }

    if (sVar1 < 0) {
        return 1;
    }

    return 2;
}

/* 804EEF90-804EEF94 0000A8 0004+00 2/2 0/0 0/0 .bss             learn_check */
static int learn_check;

/* 804E7B74-804E7D18 002AB4 01A4+00 1/1 0/0 0/0 .text            shot_s_sub__FPvPv */
static void* shot_s_sub(void* i_actor, void* i_data) {
    e_dn_class* i_this = (e_dn_class*)i_data;
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    if ((fopAcM_IsActor(i_actor) && (learn_check & 0x80000000) != 0 && fopAcM_GetName(i_actor) == PROC_ARROW && (fopAcM_GetParam(i_actor) == 1 || 
        fopAcM_GetParam(i_actor) == 2))) {
        cXyz sp28(a_this->current.pos - ((fopAc_ac_c*)i_actor)->current.pos);
        if (sp28.abs() < 1000.0f) {
            return i_actor;
        }
    }

    return NULL;
}

/* 804E7D18-804E8620 002C58 0908+00 1/1 0/0 0/0 .text            e_dn_fight_run__FP10e_dn_class */
static void e_dn_fight_run(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    cXyz sp4c, sp58;
    f32 fVar1 = 0.0f;
    int frame = i_this->mpModelMorf->getFrame();
    s8 sVar4 = 1;

    if (pl_check(i_this, i_this->field_0x6d8 + 50.0f, 0x7FFF) == 0 && i_this->field_0x6e0[0] == 0) {
        if (i_this->field_0x6ea == 0) {
            sVar4 = 0;
        }
    } else {
        i_this->field_0x6ea = 40;
    }

    switch (i_this->field_0x5b4) {
        case -10:
            anm_init(i_this, 31, 5.0f, 2, 1.0f);
            i_this->field_0x6e0[1] = cM_rndF(10.0f) + 15.0f;
            i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_FIND, -1);
            i_this->field_0x5b4 = -9;
            break;

        case -9:
            cLib_addCalc0(&a_this->speedF, 1.0f, 5.0f);
            if (i_this->field_0x6e0[1] == 0) {
                i_this->field_0x5b4 = 0;
            }
            break;

        case 0:
            anm_init(i_this, 30, 5.0f, 2, cM_rndFX(0.05f) + 1.0f);
            i_this->field_0x5b4 = 1;
            i_this->field_0x82c = 0;
            // fallthrough
        case 1:
            fVar1 = l_HIO.dash_speed;
            if ((i_this->field_0x6cc & 3) == 0) {
                if ((i_this->field_0x6cc & 4) != 0) {
                    i_this->field_0x10e4 = 1;
                } else {
                    i_this->field_0x10e4 = 2;
                }
            }

            if (i_this->mObjAcch.ChkWallHit() != 0 && !fopAcM_wayBgCheck(a_this, 200.0f, 120.0f)) {
                i_this->field_0x82c++;
            } else if (i_this->mPlayerDistance < l_HIO.battle_init_range) {
                anm_init(i_this, 32, 5.0f, 2, 1.0f);
                i_this->field_0x5b4 = 2;
                i_this->field_0x6e0[2] = cM_rndF(30.0f) + 30.0f;
            }

            if (i_this->field_0x82c > 20) {
                i_this->mAction = 8;
                i_this->field_0x5b4 = 0;
                return;
            }

            if (move_gake_check(i_this, 50.0f, 0)) {
                i_this->mAction = 25;
                i_this->field_0x5b4 = 0;
                i_this->field_0x6e8 = 100;
                a_this->speedF = 0.0f;
                return;
            }
            break;

        case 2:
            i_this->field_0x82e = 1;
            if (frame == 7 || frame == 21) {
                a_this->speed.y = 10.0f;
                if (i_this->mPlayerDistance > (l_HIO.battle_init_range + 250.0f)) {
                    i_this->field_0x5b4 = 0;
                    a_this->current.angle.y = a_this->shape_angle.y;
                    break;
                }

                if (i_this->mPlayerDistance > (l_HIO.battle_init_range + 100.0f)) {
                    a_this->current.angle.y = i_this->mYAngleToPlayer;
                } else if (i_this->mPlayerDistance < (l_HIO.battle_init_range - 100.0f)) {
                    a_this->current.angle.y = -i_this->mYAngleToPlayer;
                } else {
                    a_this->current.angle.y = cM_rndFX(32763.0f);
                }

                a_this->speedF = cM_rndF(5.0f) + 5.0f;
                i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_BREATH, -1);
            }

            if (frame == 13 || frame == 27) {
                a_this->speedF = 0.0f;
                i_this->field_0x10e4 = 3;
                if (frame == 13) {
                    i_this->mSound.startCreatureSound(Z2SE_EN_DN_FN_RUN_L, 0, -1);
                } else {
                    i_this->mSound.startCreatureSound(Z2SE_EN_DN_FN_RUN_R, 0, -1);
                }
            }

            a_this->gravity = -5.0f;
            break;
    }

    s16 sVar1;
    if (i_this->field_0x5b4 >= 0) {
        if (i_this->field_0x82e == 0) {
            sVar1 = a_this->current.angle.y;
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mYAngleToPlayer, 2, 0x800);
            sVar1 -= a_this->current.angle.y;
            s16 sVar2 = a_this->current.angle.y - i_this->mYAngleToPlayer;
            if (sVar2 > 0x800 || sVar2 < -0x800) {
                fVar1 = 0.0f;
            }

            cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, 5.0f);
        } else {
            sVar1 = a_this->shape_angle.y;
            cLib_addCalcAngleS2(&a_this->shape_angle.y, i_this->mYAngleToPlayer, 4, 0x800);
            sVar1 -= a_this->shape_angle.y;
        }

        sVar1 *= 2;
        if (sVar1 > 0x1000) {
            sVar1 = 0x1000;
        } else if (sVar1 < -0x1000) {
            sVar1 = -0x1000;
        }
        cLib_addCalcAngleS2(&i_this->field_0x826, sVar1, 2, 0x400);
    }

    u8 sVar3 = 0;
    learn_check = i_this->field_0x744;
    if (fpcM_Search(shot_s_sub, i_this) != NULL || ((i_this->field_0x744 & 0x1000) != 0 && daPy_getPlayerActorClass()->checkHookshotShootReturnMode())) {
        sVar3 = 1;
        OS_REPORT(" DEF ON !!\n");
    }

    if (sVar4 == 0) {
        if (i_this->field_0x6ea == 0) {
            i_this->mAction = 0;
            i_this->field_0x5b4 = 0;
            i_this->field_0x6e0[0] = cM_rndF(50.0f) + 50.0f;
            anm_init(i_this, 33, 10.0f, 2, 1.0f);

            if (i_this->field_0x82e == 0) {
                return;
            }

            a_this->current.angle.y = a_this->shape_angle.y;
            return;
        }
    } else {
        if (dComIfGp_checkPlayerStatus1(0, 0x2000000) != 0 || 
            (((i_this->mXAngleToPlayer < 0x1000 && i_this->mXAngleToPlayer > -0x1000) || sVar3 != 0) && player_way_check(i_this))) {
            if ((sVar3 != 0 || (i_this->mPlayerDistance < l_HIO.battle_init_range && (i_this->field_0x744 & cc_pl_cut_bit_get()) != 0 &&
                ((daPy_getPlayerActorClass()->getCutAtFlg() != 0 || daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_JUMP) ||
                (i_this->field_0x744 & 0x400) != 0))) && i_this->field_0x74c < 1.0f) {
                i_this->mAction = 7;
                if (cc_pl_cut_bit_get() == 0x100) {
                    i_this->field_0x5b4 = 0;
                } else {
                    i_this->field_0x5b4 = 5;
                }

                i_this->field_0x708 = 30.0f;
                i_this->field_0x70c = a_this->shape_angle.y;
                i_this->field_0x6e0[0] = 0;
                i_this->field_0x6e8 = 15;
            } else {
                if (i_this->mPlayerDistance < l_HIO.attack_init_range) {
                    if (i_this->field_0x6e0[2] == 0) {
                        i_this->field_0x6e0[2] = cM_rndF(30.0f) + 30.0f;
                        if (cM_rndF(1.0f) < 1.0f) {
                            if (way_check(i_this) == 0 && cM_rndF(1.0f) < 0.75f) {
                                if (i_this->mPlayerDistance < l_HIO.attack_init_range - 100.0f) {
                                    i_this->mAction = 4;
                                } else {
                                    i_this->mAction = 5;
                                }

                                i_this->field_0x5b4 = 0;
                            } else {
                                i_this->mAction = 6;
                                i_this->field_0x5b4 = 0;
                            }
                        }
                    }
                }

            }
        }
    }

    i_this->field_0x6f4 = 1;
    if ((i_this->field_0x6cc & 15) == 0 && bomb_view_check(i_this) != NULL) {
        i_this->mAction = 11;
        i_this->field_0x5b4 = 0;
    }

    if (i_this->field_0x5b7 == 1 && move_gake_check(i_this, 150.0f, 1) && (i_this->field_0x6cc & 15) == 0 && cM_rndF(1.0f) < 0.5f) {
        i_this->field_0x700 = cM_rndF(10.0f) + 10.0f;
        i_this->field_0x701 = cM_rndF(1.9f);
    }

    if (move_gake_check(i_this, 50.0f, 1)) {
        if (i_this->field_0x5b7 == 1) {
            if (cM_rndF(1.0f) < 0.5f) {
                i_this->mAction = 6;
                i_this->field_0x5b4 = 0;
            } else {
                i_this->mAction = 25;
                i_this->field_0x5b4 = 0;
                i_this->field_0x5c8 = a_this->current.pos;
                i_this->field_0x5bc = a_this->current.pos;
                i_this->field_0x6e8 = 100;
            }

            a_this->speedF = 0.0f;
        } else {
            i_this->mAction = 23;
            i_this->field_0x5b4 = 0;
        }
    }

    if (i_this->mAction != 3 && i_this->field_0x82e != 0) {
        a_this->current.angle.y = a_this->shape_angle.y;
    }
}

/* 804E8620-804E8848 003560 0228+00 1/1 0/0 0/0 .text            e_dn_jump__FP10e_dn_class */
static void e_dn_jump(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    
    i_this->field_0x6f4 = 1;
    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 27, 3.0f, 0, 1.0f);
            i_this->field_0x5b4 = 1;
            return;

        case 1:
            if (!i_this->mpModelMorf->isStop()) {
                return;
            }

            a_this->speed.y = 50.0f;
            i_this->field_0x5b4 = 2;
            i_this->field_0x10e4 = 3;
            i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_JUMP, -1);
            // fallthrough
        case 2:
            a_this->speedF = 30.0f;
            if (a_this->speed.y <= 0.0f) {
                anm_init(i_this, 28, 5.0f, 0, 1.0f);
                i_this->field_0x5b4 = 3;
            }
            return;

        case 3:
            if (!i_this->mObjAcch.ChkGroundHit()) {
                return;
            }

            anm_init(i_this, 29, 1.0f, 0, 1.0f);
            i_this->field_0x5b4 = 4;
            i_this->field_0x10e4 = 3;
            i_this->field_0x6e0[0] = 3;
            i_this->mSound.startCreatureSound(Z2SE_EN_DN_FN_R, 0, -1);
            return;

        case 4:
            if (i_this->field_0x6e0[0] == 1) {
                i_this->mSound.startCreatureSound(Z2SE_EN_DN_FN_L, 0, -1);
            }

            cLib_addCalc0(&a_this->speedF, 1.0f, 10.0f);
            if (!i_this->mpModelMorf->isStop()) {
                return;
            }

            i_this->mAction = 3;
            i_this->field_0x5b4 = 0;
            return;
    }
}

/* 804E8848-804E8D78 003788 0530+00 1/1 0/0 0/0 .text            e_dn_gakejump__FP10e_dn_class */
static void e_dn_gakejump(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    cXyz sp24, sp30;

    i_this->field_0x6f4 = 1;
    switch (i_this->field_0x5b4) {
        case 0:
            if (jump_pos_check(i_this, &i_this->field_0x5bc)) {
                anm_init(i_this, 27, 3.0f, 0, 1.0f);
                i_this->field_0x5b4 = 2;
                a_this->current.angle.y = i_this->mYAngleToPlayer;
                return;
            }

            if (i_this->field_0x5e0 != 31) {
                anm_init(i_this, 31, 5.0f, 2, cM_rndF(0.1f) + 0.9f);
                i_this->field_0x6e0[0] = cM_rndF(15.0f) + 35.0f;
                i_this->field_0x5b4 = 1;
            }

            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mYAngleToPlayer, 4, 0x800);
            return;

        case 1:
            i_this->field_0x6f4 = 2;
            cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
            sp24.x = 0.0f;
            sp24.y = 0.0f;
            sp24.z = 100.0f;
            MtxPosition(&sp24, &i_this->field_0x738);
            i_this->field_0x738 += a_this->current.pos;

            if (i_this->field_0x6e0[0] != 0) {
                return;
            }

            i_this->field_0x5b4 = 0;
            return;

        case 2:
            if (!i_this->mpModelMorf->isStop()) {
                return;
            }

            if (jump_pos_check(i_this, &i_this->field_0x5bc)) {
                i_this->field_0x5b4 = 3;
                i_this->field_0x10e4 = 3;
                i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_JUMP, -1);
                i_this->field_0x6e0[0] = 20;
                i_this->field_0x6e0[1] = 60;
                i_this->field_0x5c8 = a_this->current.pos;
            } else {
                anm_init(i_this, 31, 5.0f, 2, cM_rndF(0.1f) + 0.9f);
                i_this->field_0x6e0[0] = cM_rndF(15.0f) + 35.0f;
                i_this->field_0x5b4 = 1;
                return;
            }
            // fallthrough
        case 3:
            i_this->field_0x5d8 = 1;
            sp24 = i_this->field_0x5bc - a_this->current.pos;
            i_this->field_0x5d4 = cM_atan2s(sp24.x, sp24.z);
            i_this->field_0x5d6 = -cM_atan2s(sp24.y, JMAFastSqrt(sp24.x * sp24.x + sp24.z * sp24.z));
            a_this->speedF = 50.0f;

            if (i_this->field_0x6e0[0] == 1) {
                anm_init(i_this, 28, 5.0f, 0, 1.0f);
            }

            if (sp24.abs() < (a_this->speedF * 1.1f)) {
                a_this->current.pos = i_this->field_0x5bc;
                anm_init(i_this, 29, 1.0f, 0, 1.0f);
                i_this->field_0x5b4 = 4;
                i_this->field_0x10e4 = 3;
                i_this->field_0x6e0[0] = 3;
                i_this->mSound.startCreatureSound(Z2SE_EN_DN_FN_R, 0, -1);
                a_this->speedF = 0.0f;
                i_this->field_0x6e8 = 0;
            }

            if (i_this->field_0x6e0[1] == 0 || i_this->mObjAcch.ChkWallHit() != 0) {
                i_this->mAction = 3;
                i_this->field_0x5b4 = 0;
            }
            return;

        case 4:
            if (i_this->field_0x6e0[0] == 1) {
                i_this->mSound.startCreatureSound(Z2SE_EN_DN_FN_L, 0, -1);
            }

            if (!i_this->mpModelMorf->isStop()) {
                return;
            }

            i_this->mAction = 3;
            i_this->field_0x5b4 = 0;
            return;
    }
}

/* 804E8D78-804E8DD8 003CB8 0060+00 2/2 0/0 0/0 .text            at_hit_check__FP10e_dn_class */
static fopAc_ac_c* at_hit_check(e_dn_class* i_this) {
    if (i_this->field_0x5b4 >= 10) {
        return NULL;
    }
    
    if (i_this->field_0xe44.ChkAtHit() != 0) {
        return dCc_GetAc(i_this->field_0xe44.GetAtHitObj()->GetAc());
    }

    return NULL;
}

/* 804E8DD8-804E8F78 003D18 01A0+00 1/1 0/0 0/0 .text            e_dn_attack_0__FP10e_dn_class */
static void e_dn_attack_0(e_dn_class* i_this) {
    // NONMATCHING

}

/* 804E8F78-804E91D4 003EB8 025C+00 1/1 0/0 0/0 .text            e_dn_attack__FP10e_dn_class */
static void e_dn_attack(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    cXyz sp34, sp40;
    int frame = i_this->mpModelMorf->getFrame();

    i_this->field_0x6f4 = 1;
    s16 sVar1, sVar2;
    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 5, 6.0f, 0, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_KNIFE2_A, -1);
            i_this->field_0x5b4 = 1;
            // fallthrough
        case 1:
            if (frame < 10 || (frame >= 25 && frame <= 30)) {
                sVar1 = a_this->current.angle.y;
                cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mYAngleToPlayer, 2, 0x800);
                sVar1 -= a_this->current.angle.y;
                sVar1 *= 2;
                if (sVar1 > 0x1000) {
                    sVar1 = 0x1000;
                } else if (sVar1 < -0x1000) {
                    sVar1 = -0x1000;
                }
                cLib_addCalcAngleS2(&i_this->field_0x826, sVar1, 2, 0x400);
            }

            if (frame >= 13 && frame <= 18) {
                i_this->field_0x6ef = 1;
                i_this->field_0x6ee = 0;
            }

            if (frame >= 25 && frame <= 30) {
                i_this->field_0x6ef = 1;
                i_this->field_0x6ee = 1;
                cMtx_YrotS(*calc_mtx, a_this->current.angle.y);
                sp34.x = 0.0f;
                sp34.y = 0.0f;
                sp34.z = 25.0f;
                MtxPosition(&sp34, &sp40);
                a_this->current.pos += sp40;
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 3;
                i_this->field_0x5b4 = 0;
            }
    }

    cLib_addCalc0(&a_this->speedF, 1.0f, 5.0f);
    if (i_this->field_0x6ef != 0) {
        fopAc_ac_c* actor_p = at_hit_check(i_this);
        if (actor_p != NULL && fopAcM_GetName(actor_p) == PROC_ALINK && daPy_getPlayerActorClass()->checkPlayerGuard()) {
            i_this->mpModelMorf->setPlaySpeed(0.0f);
            i_this->mAction = 3;
            i_this->field_0x5b4 = 0;
        }
    }
}

/* 804E91D4-804E9354 004114 0180+00 1/1 0/0 0/0 .text            tail_eff_set__FP10e_dn_class */
static void tail_eff_set(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;

    J3DModel* model = i_this->mpModelMorf->getModel();
    i_this->field_0x10f8 = dComIfGp_particle_set(i_this->field_0x10f8, 0x815F, &a_this->current.pos, NULL, NULL);
    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(i_this->field_0x10f8);
    if (emitter != NULL) {
        MTXCopy(model->getAnmMtx(0), *calc_mtx);
        emitter->setGlobalRTMatrix(*calc_mtx);
    }

    i_this->field_0x10fc = dComIfGp_particle_set(i_this->field_0x10fc, 0x8160, &a_this->current.pos, NULL, NULL);
    emitter = dComIfGp_particle_getEmitter(i_this->field_0x10fc);
    if (emitter != NULL) {
        MTXCopy(model->getAnmMtx(0), *calc_mtx);
        emitter->setGlobalRTMatrix(*calc_mtx);
    }
}

/* 804E9354-804E9544 004294 01F0+00 1/1 0/0 0/0 .text            e_dn_tail_attack__FP10e_dn_class */
static void e_dn_tail_attack(e_dn_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    cXyz sp30, sp3c;
    int frame = i_this->mpModelMorf->getFrame();

    i_this->field_0x6f4 = 1;
    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 8, 5.0f, 0, 1.0f);
            i_this->field_0x5b4 = 1;
            break;

        case 1:
            if (frame >= 19) {
                tail_eff_set(i_this);
            }

            if (frame >= 33 && frame <= 41) {
                i_this->field_0x6ef = 1;
                i_this->field_0x6ee = 2;
                cMtx_YrotS(*calc_mtx, i_this->mYAngleToPlayer);
                sp30.x = 0.0f;
                sp30.y = 0.0f;
                sp30.z = 30.0f;
                MtxPosition(&sp30, &sp3c);
                a_this->current.pos += sp3c;
            }

            if (frame == 40) {
                i_this->mSound.startCreatureSound(Z2SE_EN_DN_FN_RUN_R, 0, -1);
            } else if (frame == 43) {
                i_this->mSound.startCreatureSound(Z2SE_EN_DN_FN_RUN_L, 0, -1);
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 3;
                i_this->field_0x5b4 = 0;
            }
    }

    a_this->current.angle.y += i_this->field_0x82a;
    a_this->shape_angle.y += i_this->field_0x82a;
    cLib_addCalcAngleS2(&i_this->field_0x82a, 0, 1, 300);
    cLib_addCalc0(&a_this->speedF, 1.0f, 3.0f);
}

/* 804E9544-804E973C 004484 01F8+00 2/1 0/0 0/0 .text            e_dn_guard__FP10e_dn_class */
static void e_dn_guard(e_dn_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;

    i_this->field_0x6f1 = 1;
    i_this->field_0x6f4 = 1;

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 32, 3.0f, 0, 1.0f);
            i_this->field_0x5b4 = 1;
            a_this->speed.y = 20.0f;
            a_this->speedF = -8.0f;
            i_this->field_0x10e4 = 3;
            break;

        case 1:
            i_this->field_0x6e8 = 5;
            if (i_this->mpModelMorf->getFrame() >= 5.0f) {
                i_this->field_0x5b4 = 5;
                i_this->field_0x6e0[0] = 20;
            }
            break;

        case 5:
            anm_init(i_this, 22, 3.0f, 0, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_GUARD, -1);
            i_this->field_0x5b4 = 6;
            // fallthrough
        case 6:
            i_this->field_0x6e8 = 5;
            if (i_this->mObjAcch.ChkGroundHit()) {
                cLib_addCalc0(&a_this->speedF, 1.0f, 10.0f);
            }

            if (i_this->mpModelMorf->getFrame() >= 8.0f) {
                i_this->mpModelMorf->setPlaySpeed(0.0f);
                i_this->field_0x5b4 = 7;
                a_this->speedF = 0.0f;
            }
            break;

        case 7:
            i_this->field_0x6e8 = 5;
            if (cc_pl_cut_bit_get() == 0x80 || cc_pl_cut_bit_get() == 0x800) {
                i_this->field_0x6e0[0] = 20;
            }

            if (i_this->field_0x6e0[0] == 0) {
                i_this->field_0x5b4 = 8;
                i_this->mpModelMorf->setPlaySpeed(1.0f);
            }
            break;

        case 8:
            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 3;
                i_this->field_0x5b4 = 0;
            }
    }
}

/* 804E973C-804E97EC 00467C 00B0+00 1/1 0/0 0/0 .text            e_dn_s_damage__FP10e_dn_class */
static void e_dn_s_damage(e_dn_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804EE998-804EE99C 0000EC 0004+00 0/0 0/0 0/0 .rodata          @5543 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5543 = 8.0f;
COMPILER_STRIP_GATE(0x804EE998, &lit_5543);
#pragma pop

/* 804EE99C-804EE9A0 0000F0 0004+00 0/2 0/0 0/0 .rodata          @5592 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5592 = 70.0f;
COMPILER_STRIP_GATE(0x804EE99C, &lit_5592);
#pragma pop

/* 804EE9A0-804EE9A4 0000F4 0004+00 0/1 0/0 0/0 .rodata          @5593 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5593 = -150.0f;
COMPILER_STRIP_GATE(0x804EE9A0, &lit_5593);
#pragma pop

/* 804E97EC-804E99A0 00472C 01B4+00 1/1 0/0 0/0 .text            kado_check__FP10e_dn_class */
static void kado_check(e_dn_class* i_this) {
    // NONMATCHING
}

/* 804E99A0-804E9AF0 0048E0 0150+00 1/1 0/0 0/0 .text            body_gake__FP10e_dn_class */
static void body_gake(e_dn_class* i_this) {
    // NONMATCHING
}

/* 804E9AF0-804E9B68 004A30 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804EE9A4-804EE9A8 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5977 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5977 = 8000.0f;
COMPILER_STRIP_GATE(0x804EE9A4, &lit_5977);
#pragma pop

/* 804E9B68-804EA700 004AA8 0B98+00 2/1 0/0 0/0 .text            e_dn_damage__FP10e_dn_class */
static void e_dn_damage(e_dn_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804EE9A8-804EE9AC 0000FC 0004+00 0/1 0/0 0/0 .rodata          @5978 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5978 = -100.0f;
COMPILER_STRIP_GATE(0x804EE9A8, &lit_5978);
#pragma pop

/* 804EE9AC-804EE9B0 000100 0004+00 0/0 0/0 0/0 .rodata          @5979 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5979 = 9.0f / 5.0f;
COMPILER_STRIP_GATE(0x804EE9AC, &lit_5979);
#pragma pop

/* 804EE9B0-804EE9B4 000104 0004+00 0/3 0/0 0/0 .rodata          @5980 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5980 = -20.0f;
COMPILER_STRIP_GATE(0x804EE9B0, &lit_5980);
#pragma pop

/* 804EE9B4-804EE9B8 000108 0004+00 0/1 0/0 0/0 .rodata          @6004 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6004 = -3.0f;
COMPILER_STRIP_GATE(0x804EE9B4, &lit_6004);
#pragma pop

/* 804EE9B8-804EE9BC 00010C 0004+00 0/1 0/0 0/0 .rodata          @6005 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6005 = -6.0f;
COMPILER_STRIP_GATE(0x804EE9B8, &lit_6005);
#pragma pop

/* 804EA700-804EA854 005640 0154+00 1/1 0/0 0/0 .text            e_dn_backdrop__FP10e_dn_class */
static void e_dn_backdrop(e_dn_class* i_this) {
    // NONMATCHING
}

/* 804EA854-804EA9F4 005794 01A0+00 1/1 0/0 0/0 .text            e_dn_water__FP10e_dn_class */
static void e_dn_water(e_dn_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804EE9BC-804EE9C0 000110 0004+00 0/1 0/0 0/0 .rodata          @6097 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6097 = -8613.0f;
COMPILER_STRIP_GATE(0x804EE9BC, &lit_6097);
#pragma pop

/* 804EE9C0-804EE9C4 000114 0004+00 0/1 0/0 0/0 .rodata          @6098 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6098 = 8017.0f;
COMPILER_STRIP_GATE(0x804EE9C0, &lit_6098);
#pragma pop

/* 804EE9C4-804EE9C8 000118 0004+00 0/1 0/0 0/0 .rodata          @6099 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6099 = -8044.0f;
COMPILER_STRIP_GATE(0x804EE9C4, &lit_6099);
#pragma pop

/* 804EE9C8-804EE9CC 00011C 0004+00 0/1 0/0 0/0 .rodata          @6100 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6100 = 8616.0f;
COMPILER_STRIP_GATE(0x804EE9C8, &lit_6100);
#pragma pop

/* 804EE9CC-804EE9D0 000120 0004+00 0/2 0/0 0/0 .rodata          @6101 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6101 = 3000.0f;
COMPILER_STRIP_GATE(0x804EE9CC, &lit_6101);
#pragma pop

/* 804EE9D0-804EE9D4 000124 0004+00 0/2 0/0 0/0 .rodata          @6102 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6102 = 800.0f;
COMPILER_STRIP_GATE(0x804EE9D0, &lit_6102);
#pragma pop

/* 804EA9F4-804EAD1C 005934 0328+00 1/1 0/0 0/0 .text            e_dn_reg__FP10e_dn_class */
static void e_dn_reg(e_dn_class* i_this) {
    // NONMATCHING
}

/* 804EAD1C-804EADD4 005C5C 00B8+00 1/1 0/0 0/0 .text            wolfkick_damage__FP10e_dn_class */
static void wolfkick_damage(e_dn_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804EE9D4-804EE9D8 000128 0004+00 0/1 0/0 0/0 .rodata          @6120 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6120 = 700.0f;
COMPILER_STRIP_GATE(0x804EE9D4, &lit_6120);
#pragma pop

/* 804EADD4-804EAEE4 005D14 0110+00 1/1 0/0 0/0 .text            big_damage__FP10e_dn_class */
static void big_damage(e_dn_class* i_this) {
    // NONMATCHING
}

/* 804EAEE4-804EAF94 005E24 00B0+00 1/1 0/0 0/0 .text            small_damage__FP10e_dn_class */
static void small_damage(e_dn_class* i_this) {
    // NONMATCHING
}

/* 804EAF94-804EB344 005ED4 03B0+00 1/1 0/0 0/0 .text            damage_check__FP10e_dn_class */
static void damage_check(e_dn_class* i_this) {
    // NONMATCHING
}

/* 804EB344-804EC854 006284 1510+00 2/1 0/0 0/0 .text            action__FP10e_dn_class */
static void action(e_dn_class* i_this) {
    // NONMATCHING
}

/* 804EC854-804ECB50 007794 02FC+00 1/1 0/0 0/0 .text            anm_se_set__FP10e_dn_class */
static void anm_se_set(e_dn_class* i_this) {
    // NONMATCHING
}

/* 804EEF94-804EEF98 0000AC 0004+00 1/2 0/0 0/0 .bss             c_start */
static int c_start;

/* 804ECB50-804ED83C 007A90 0CEC+00 2/1 0/0 0/0 .text            daE_DN_Execute__FP10e_dn_class */
static int daE_DN_Execute(e_dn_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    f32 fVar1 = 0.0f;
    
    if (i_this->field_0x10d8 != 0) {
        return 1;
    }

    if (c_start == 0 && dComIfGp_event_runCheck() && 
        (fopAcM_getTalkEventPartner((fopAc_ac_c*)daPy_getLinkPlayerActorClass()) == daPy_py_c::getMidnaActor() || daPy_getPlayerActorClass()->eventInfo.checkCommandDoor())) {
        return 1;
    }

    cXyz sp2c;
    cXyz sp38;
    cXyz sp44;
    i_this->field_0x6cc++;
    for (int i = 0; i < 4; i++) {
        if (i_this->field_0x6e0[i] != 0) {
            i_this->field_0x6e0[i]--;
        }
    }

    if (i_this->field_0x6e8 != 0) {
        i_this->field_0x6e8--;
    }

    if (i_this->field_0x6ec != 0) {
        i_this->field_0x6ec--;
    }

    if (i_this->field_0x840 != 0) {
        i_this->field_0x840--;
    }

    if (i_this->field_0x6ea != 0) {
        i_this->field_0x6ea--;
    }

    i_this->field_0x6f2 = 1;
    action(i_this);

    if (i_this->field_0x840 == 0 && i_this->field_0x5d8 == 0) {
        if (i_this->field_0x704 != fVar1) {
            cMtx_YrotS(*calc_mtx, i_this->field_0x724.y);
            sp2c.x = 0.0f;
            sp2c.y = 0.0f;
            sp2c.z = i_this->field_0x83c;
            MtxPosition(&sp2c, &sp38);
            a_this->current.pos += sp38;
            a_this->old.pos += sp38;
            cLib_addCalc2(&i_this->field_0x83c, i_this->field_0x704 * 2.0f, 1.0f, 5.0f);
        } else {
            cLib_addCalc0(&i_this->field_0x83c, 1.0f, 5.0f);
        }

        i_this->mObjAcch.CrrPos(dComIfG_Bgsp());
        if (i_this->field_0x704 != fVar1) {
            a_this->current.pos -= sp38;
            a_this->old.pos -= sp38;
        }


        if (!i_this->mObjAcch.ChkGroundHit()) {
            if (a_this->speed.y < -10.0f) {
                i_this->field_0x842++;
                if (i_this->field_0x842 == 13) {
                    i_this->mSound.startCreatureVoice(Z2SE_EN_DN_V_DEATH, -1);
                }
            }
        } else {
            if (i_this->field_0x842 >= 13) {
                i_this->mAction = 21;
                i_this->field_0x5b4 = 0;
                a_this->speed.y = 0.0f;
                i_this->field_0x704 = -1.0;
                i_this->field_0x724.x = -0x3000;
                i_this->field_0x828 = 50;
                i_this->field_0x6e8 = 1000;
                a_this->health = 0;
            }

            i_this->field_0x842 = 0;
        }
    }

    mDoMtx_stack_c::transS(a_this->current.pos.x, a_this->current.pos.y + i_this->field_0x720, a_this->current.pos.z);
    mDoMtx_stack_c::XrotM(i_this->field_0x72a.x);
    mDoMtx_stack_c::ZrotM(i_this->field_0x72a.z);
    mDoMtx_stack_c::YrotM(i_this->field_0x724.y);
    mDoMtx_stack_c::XrotM(i_this->field_0x724.x);
    mDoMtx_stack_c::YrotM(-i_this->field_0x724.y);
    mDoMtx_stack_c::YrotM(a_this->shape_angle.y);
    mDoMtx_stack_c::XrotM(a_this->shape_angle.x);
    mDoMtx_stack_c::ZrotM(a_this->shape_angle.z);
    mDoMtx_stack_c::scaleM(l_HIO.base_size * a_this->scale.x, l_HIO.base_size * a_this->scale.x, l_HIO.base_size * a_this->scale.x);

    J3DModel* model = i_this->mpModelMorf->getModel();
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    i_this->mpModelMorf->play(0, 0);
    anm_se_set(i_this);
    i_this->mpModelMorf->modelCalc();
    MTXCopy(model->getAnmMtx(2), *calc_mtx);

    sp2c.set(0.0f, 0.0f, 0.0f);
    MtxPosition(&sp2c, &sp38);
    sp2c.set(0.0f, 0.0f, -200.0f);
    MtxPosition(&sp2c, &sp44);
    if (sp38.y < sp44.y) {
        i_this->field_0x737 = 0;
    }
    else {
        i_this->field_0x737 = 1;
    }

    cXyz sp50(0.0f, 0.0f, 0.0f);
    if (i_this->field_0x6e8 != 0) {
        sp50.set(-20000.0f, 200000.0f, 30000.0f);
    }

    MTXCopy(model->getAnmMtx(6), *calc_mtx);
    sp2c.set(30.0f, 30.0f, 0.0f);
    MtxPosition(&sp2c, &a_this->eyePos);

    i_this->field_0xa9c[0].SetC(a_this->eyePos + sp50);
    if (daPy_getPlayerActorClass()->checkHorseRide()) {
        i_this->field_0xa9c[0].SetR(70.0f);
    } else {
        i_this->field_0xa9c[0].SetR(50.0f);
    }
    
    a_this->attention_info.position = a_this->eyePos;
    a_this->attention_info.position.y += 70.0f;

    MTXCopy(model->getAnmMtx(1), *calc_mtx);
    sp2c.set(-30.0f, 0.0f, 0.0f);
    MtxPosition(&sp2c, &sp38);
    i_this->field_0xa9c[1].SetC(sp38 + sp50);
    i_this->field_0xa9c[1].SetR(45.0f);
    MTXCopy(model->getAnmMtx(2), *calc_mtx);
    sp2c.set(20.0f, 0.0f, 0.0f);
    MtxPosition(&sp2c, &sp38);
    i_this->field_0xa9c[2].SetC(sp38 + sp50);
    i_this->field_0xa9c[2].SetR(45.0f);

    for (int i = 0; i <= 2; i++) {
        if (i_this->field_0x6f2 != 0) {
            i_this->field_0xa9c[i].OnCoSetBit();
        } else {
            i_this->field_0xa9c[i].OffCoSetBit();
        }

        dComIfG_Ccsp()->Set(&i_this->field_0xa9c[i]);
    }

    MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(19), *calc_mtx);
    i_this->field_0x5e4->setBaseTRMtx(*calc_mtx);

    if (i_this->field_0x6ef != 0 && i_this->field_0x6ee <= 1) {
        sp2c.set(0.0f, 60.0f, 0.0f);
        MtxPosition(&sp2c, &sp38);
        if (i_this->field_0x6f0 == 0) {
            i_this->field_0x6f0 = 1;
            i_this->field_0xe44.StartCAt(sp38);
        } else {
            i_this->field_0xe44.MoveCAt(sp38);
        }

        if (i_this->field_0x6ee == 1) {
            i_this->field_0xe44.SetR(l_HIO.base_size * 80.0f);
        } else {
            i_this->field_0xe44.SetR(l_HIO.base_size * 50.0f);
        }

        i_this->field_0xe44.SetAtAtp(1);
    }

    if (i_this->field_0x690 != NULL) {
        if (i_this->field_0x694 == 0) {
            MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(6), mDoMtx_stack_c::get());
            mDoMtx_stack_c::multVecZero(&i_this->field_0x698);
        } else {
            i_this->field_0x698 += i_this->field_0x6a4;
            if (i_this->field_0x6a4.y <= i_this->mObjAcch.GetGroundH()) {
                i_this->field_0x690 = NULL;
            }

            i_this->field_0x6a4.y -= 5.0f;
            mDoMtx_stack_c::transS(i_this->field_0x698.x, i_this->field_0x698.y, i_this->field_0x698.z);
            mDoMtx_stack_c::YrotM(i_this->field_0x6b0);
            mDoMtx_stack_c::XrotM(i_this->field_0x6b2);
        }

        i_this->field_0x690->setBaseTRMtx(mDoMtx_stack_c::get());
    }
    
    MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(12), *calc_mtx);
    i_this->field_0x68c->setBaseTRMtx(*calc_mtx);

    if (i_this->field_0x6ef != 0 && i_this->field_0x6ee == 2) {
        MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(34), *calc_mtx);
        sp2c.set(0.0f, 0.0f, 0.0f);
        MtxPosition(&sp2c, &sp38);

        if (i_this->field_0x6f0 == 0) {
            i_this->field_0x6f0 = 1;
            i_this->field_0xe44.StartCAt(sp38);
        }  else {
            i_this->field_0xe44.MoveCAt(sp38);
        }

        i_this->field_0xe44.SetAtAtp(2);
        i_this->field_0xe44.SetR(70.0f * l_HIO.base_size);
        // i_this->field_0xe44.SetAtSpl((dCcG_At_Spl)2);
    }

    if (i_this->field_0x6ef == 0) {
        cXyz sp68(-23500.0f, -20000.0f, -50000.0f);
        i_this->field_0xe44.SetC(a_this->current.pos + sp68);
        i_this->field_0x6f0 = 0;
    } else {
        i_this->field_0x6ef = 0;
    }

    dComIfG_Ccsp()->Set(&i_this->field_0xe44);

    if (i_this->field_0x6f1 != 0 && i_this->field_0x6ec == 0) {
        MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(12), *calc_mtx);
        sp2c.set(50.0f, 0.0f, 30.0f);
        MtxPosition(&sp2c, &sp38);
        i_this->field_0xf7c.SetC(sp38);
        i_this->field_0xf7c.SetR(70.0f * l_HIO.base_size);

        if (i_this->field_0xf7c.ChkTgHit()) {
            def_se_set(&i_this->mSound, i_this->field_0xf7c.GetTgHitObj(), 40, 0);
            dScnPly_c::setPauseTimer(l_HIO.field_0x1c);
            i_this->field_0x6ec = 10;
            cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
            sp2c.x = 0.0f;
            sp2c.y = 120.0f;
            sp2c.z = 50.0f;
            MtxPosition(&sp2c, &sp38);
            sp38 += a_this->current.pos;
            dComIfGp_setHitMark(2, NULL, &sp38, &a_this->shape_angle, NULL, 0);
        }
    } else {
        cXyz sp74(-23500.0f, -20000.0f, -30000.0f);
        i_this->field_0xf7c.SetC(a_this->current.pos + sp74);
    }

    i_this->field_0x6f1 = 0;
    dComIfG_Ccsp()->Set(&i_this->field_0xf7c);
    if (i_this->field_0x6c4 != 0) {
        cLib_addCalc2(&i_this->field_0x6c8, -20.0f, 1.0f, 0.4f);
    }
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(2), mDoMtx_stack_c::get());
    mDoMtx_stack_c::multVecZero(&sp38);
    sp2c = player->current.pos - sp38;
    cMtx_YrotS(*calc_mtx, cM_atan2s(sp2c.x, sp2c.z));
    sp2c.x = 0.0;
    sp2c.y = 45.0f;
    sp2c.z = 30.0f;
    MtxPosition(&sp2c, &sp44);
    sp44 += sp38;
    a_this->setDownPos(&sp44);
    cXyz sp80(a_this->eyePos);
    sp80.y += 180.0f;
    a_this->setHeadLockPos(&sp80);

    a_this->attention_info.flags |= 0x200000;

    if ((a_this->current.pos.y - a_this->home.pos.y) < -5000.0f) {
        fopAcM_delete(a_this);
        OS_REPORT("DN NARAKU\n");
        int swBit = fopAcM_GetParam(a_this) >> 24;
        if (swBit != 0xFF) {
            dComIfGs_onSwitch(swBit, fopAcM_GetRoomNo(a_this));
        }
    }

    if (strcmp(dComIfGp_getStartStageName(), "D_MN07") == 0 && fopAcM_GetRoomNo(a_this) == 8 && a_this->health != 0 && a_this->current.pos.y <= -300.0f) {
        i_this->mAction = 21;
        i_this->field_0x5b4 = 0;
        i_this->field_0x704 = 0.0;
        a_this->health = 0;
    }

    return 1;
}

/* 804ED83C-804ED844 00877C 0008+00 1/0 0/0 0/0 .text            daE_DN_IsDelete__FP10e_dn_class */
static int daE_DN_IsDelete(e_dn_class* i_this) {
    return 1;
}

/* 804ED844-804ED8AC 008784 0068+00 1/0 0/0 0/0 .text            daE_DN_Delete__FP10e_dn_class */
static int daE_DN_Delete(e_dn_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    dComIfG_resDelete(&i_this->mPhase, "E_dn");

    if (i_this->field_0x10d9 != 0) {
        l_initHIO = 0;
    }

    if (a_this->heap != NULL) {
        i_this->mpModelMorf->stopZelAnime();
    }

    return 1;
}

/* 804ED8AC-804EDAEC 0087EC 0240+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* a_this) {
    e_dn_class* i_this = (e_dn_class*)a_this;

    i_this->mpModelMorf = new mDoExt_McaMorfSO((J3DModelData*)dComIfG_getObjectRes("E_dn", 38), NULL, NULL,
                                               (J3DAnmTransform*)dComIfG_getObjectRes("E_dn", 31), 0, 1.0f,
                                               0, -1, &i_this->mSound, 0x80000, 0x11000084);
    if (i_this->mpModelMorf == NULL || i_this->mpModelMorf->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = i_this->mpModelMorf->getModel();
    model->setUserArea((u32)i_this);

    for (u16 i = 0; i < model->getModelData()->getJointNum(); i++) {
        if (i != 0) {
            model->getModelData()->getJointNodePointer(i)->setCallBack(nodeCallBack);
        }
    }

    if (i_this->mJntCol.init(a_this, &jc_data[0], model, 12) == 0) {
        return 0;
    }

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("E_dn", 39);
    JUT_ASSERT(5420, modelData != 0);
    i_this->field_0x5e4 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (i_this->field_0x5e4 == NULL) {
        return 0;
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes("E_dn", 41);
    JUT_ASSERT(5432, modelData != 0);
    i_this->field_0x68c = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (i_this->field_0x68c == NULL) {
        return 0;
    }

    if (i_this->field_0x5b7 == 1) {
        modelData = (J3DModelData*)dComIfG_getObjectRes("E_dn", 40);
        JUT_ASSERT(5443, modelData != 0);
        i_this->field_0x690 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (i_this->field_0x690 == NULL) {
            return 0;
        }
    }

    return 1;
}

/* 804EDAEC-804EDE58 008A2C 036C+00 1/0 0/0 0/0 .text            daE_DN_Create__FP10fopAc_ac_c */
static cPhs__Step daE_DN_Create(fopAc_ac_c* a_this) {
    // NONMATCHING
    e_dn_class* i_this = (e_dn_class*)a_this;

    fopAcM_SetupActor(a_this, e_dn_class);

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&i_this->mPhase, "E_dn");
    if (phase == cPhs_COMPLEATE_e) {
        int swBit = fopAcM_GetParam(a_this) >> 24;
        if (swBit != 0xFF) {
            if (dComIfGs_isSwitch(swBit, fopAcM_GetRoomNo(a_this))) {
                return cPhs_ERROR_e;
            }
        }

        OS_REPORT("E_dn PARAM %x\n", fopAcM_GetParam(a_this));
        i_this->field_0x5b6 = fopAcM_GetParam(a_this);
        i_this->field_0x5b9 = 1;
        i_this->field_0x5b7 = (fopAcM_GetParam(a_this) >> 8) & 15;
        i_this->field_0x5b8 = (fopAcM_GetParam(a_this) & 0xF000) >> 12;

        if ((a_this->home.angle.z & 0xFF) == 0 || (a_this->home.angle.z & 0xFF) == 0xFF) {
            i_this->field_0x6d8 = 100000.0f;
        } else {
            i_this->field_0x6d8 = (a_this->home.angle.z & 0xFF) * 100.0f;
        }

        OS_REPORT("E_dn AZ %x\n", a_this->home.angle.z);
        OS_REPORT("E_dn PR %d\n", i_this->field_0x6d8);
        a_this->shape_angle.z = 0;
        a_this->current.angle.z = 0;
        a_this->home.angle.z = 0;
        OS_REPORT("E_dn//////////////E_DN SET 1 !!\n");

        if (!fopAcM_entrySolidHeap(a_this, useHeapInit, 0x3BF0)) {
            OS_REPORT("//////////////E_DN SET NON !!\n");
            return cPhs_ERROR_e;
        }

        if (l_initHIO == 0) {
            i_this->field_0x10d9 = 1;
            l_initHIO = 1;
            l_HIO.field_0x4 = -1;
        }

        fopAcM_OnStatus(a_this, fopAcM_STATUS_UNK_000100);
        a_this->attention_info.flags = 4;
        fopAcM_SetMtx(a_this, i_this->mpModelMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(a_this, -200.0f, -200.0f, -200.0f);
        fopAcM_SetMax(a_this, 200.0f, 200.0f, 200.0f);

        i_this->mObjAcch.Set(fopAcM_GetPosition_p(a_this), fopAcM_GetOldPosition_p(a_this), a_this, 1,
                             &i_this->mAcchCir, fopAcM_GetSpeed_p(a_this), NULL, NULL);
        i_this->mAcchCir.SetWall(80.0f, 100.0f);

        if (i_this->field_0x5b7 == 1) {
            a_this->health = 100;
            a_this->field_0x560 = 100;
        } else {
            a_this->health = 100;
            a_this->field_0x560 = 100;
        }
        i_this->mStts.Init(200, 0, a_this);

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
        for (int i = 0; i <= 2; i++) {
            i_this->field_0xa9c[i].Set(cc_sph_src);
            i_this->field_0xa9c[i].SetStts(&i_this->mStts);
        }

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
        i_this->field_0xe44.Set(at_sph_src);
        i_this->field_0xe44.SetStts(&i_this->mStts);

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
        i_this->field_0xf7c.Set(tate_sph_src);
        i_this->field_0xf7c.SetStts(&i_this->mStts);

        i_this->field_0x6cc = (int)cM_rndF(65535.0f) & 0xFF00;

        if (i_this->field_0x5b6 == 0) {
            i_this->mAction = 9;
        }

        if ((i_this->field_0x5b6 == 13 || i_this->field_0x5b6 == 14) || (i_this->field_0x5b6 == 15 || i_this->field_0x5b6 == 16)) {
            i_this->field_0x10d8 = 1;
            i_this->mAction = 60;
            fopAcM_OnStatus(a_this, fopAcM_STATUS_UNK_004000);
            i_this->mAcchCir.SetWall(80.0f, 2.0f);
        }

        i_this->mSound.init(&a_this->current.pos, &a_this->eyePos, 3, 1);
        i_this->mSound.setEnemyName("E_dn");
        i_this->mAtInfo.mpSound = &i_this->mSound;

        c_start = 1;
        daE_DN_Execute(i_this);
        c_start = 0;
    }

    return phase;
}

/* 804EDE58-804EE034 008D98 01DC+00 1/1 0/0 0/0 .text            __ct__10e_dn_classFv */
e_dn_class::e_dn_class() {}

/* 804EE034-804EE07C 008F74 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 804EE07C-804EE0C4 008FBC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 804EE0C4-804EE190 009004 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 804EE190-804EE214 0090D0 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 804EE214-804EE270 009154 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 804EE270-804EE2E0 0091B0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 804EE2E0-804EE350 009220 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 804EE350-804EE354 009290 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 804EE354-804EE39C 009294 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 804EE3E4-804EE420 009324 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_dn_cpp */
void __sinit_d_a_e_dn_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x804EE3E4, __sinit_d_a_e_dn_cpp);
#pragma pop

/* 804EE420-804EE428 009360 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_804EE420() {
    // NONMATCHING
}

/* 804EE428-804EE430 009368 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_804EE428() {
    // NONMATCHING
}

/* 804EE430-804EE438 009370 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_804EE430() {
    // NONMATCHING
}

/* 804EE438-804EE440 009378 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_804EE438() {
    // NONMATCHING
}

/* 804EE440-804EE448 009380 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_804EE440() {
    // NONMATCHING
}

/* 804EE85C-804EE898 00979C 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804EEF98-804EEF9C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_804EEF98[4];
#pragma pop

/* 804EEF9C-804EEFA0 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_804EEF9C[4];
#pragma pop

/* 804EEFA0-804EEFA4 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_804EEFA0[4];
#pragma pop

/* 804EEFA4-804EEFA8 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_804EEFA4[4];
#pragma pop

/* 804EEFA8-804EEFAC 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804EEFA8[4];
#pragma pop

/* 804EEFAC-804EEFB0 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804EEFAC[4];
#pragma pop

/* 804EEFB0-804EEFB4 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_804EEFB0[4];
#pragma pop

/* 804EEFB4-804EEFB8 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_804EEFB4[4];
#pragma pop

/* 804EEFB8-804EEFBC 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_804EEFB8[4];
#pragma pop

/* 804EEFBC-804EEFC0 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_804EEFBC[4];
#pragma pop

/* 804EEFC0-804EEFC4 0000D8 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_804EEFC0[4];
#pragma pop

/* 804EEFC4-804EEFC8 0000DC 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_804EEFC4[4];
#pragma pop

/* 804EEFC8-804EEFCC 0000E0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_804EEFC8[4];
#pragma pop

/* 804EEFCC-804EEFD0 0000E4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804EEFCC[4];
#pragma pop

/* 804EEFD0-804EEFD4 0000E8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_804EEFD0[4];
#pragma pop

/* 804EEFD4-804EEFD8 0000EC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_804EEFD4[4];
#pragma pop

/* 804EEFD8-804EEFDC 0000F0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_804EEFD8[4];
#pragma pop

/* 804EEFDC-804EEFE0 0000F4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_804EEFDC[4];
#pragma pop

/* 804EEFE0-804EEFE4 0000F8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_804EEFE0[4];
#pragma pop

/* 804EEFE4-804EEFE8 0000FC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_804EEFE4[4];
#pragma pop

/* 804EEFE8-804EEFEC 000100 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_804EEFE8[4];
#pragma pop

/* 804EEFEC-804EEFF0 000104 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804EEFEC[4];
#pragma pop

/* 804EEFF0-804EEFF4 000108 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804EEFF0[4];
#pragma pop

/* 804EEFF4-804EEFF8 00010C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_804EEFF4[4];
#pragma pop

/* 804EEFF8-804EEFFC 000110 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_804EEFF8[4];
#pragma pop

/* 804EEA34-804EEA34 000188 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 804EEDF8-804EEE18 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_DN_Method */
static actor_method_class l_daE_DN_Method = {
    (process_method_func)daE_DN_Create,
    (process_method_func)daE_DN_Delete,
    (process_method_func)daE_DN_Execute,
    (process_method_func)daE_DN_IsDelete,
    (process_method_func)daE_DN_Draw,
};

/* 804EEE18-804EEE48 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_DN */
extern actor_process_profile_definition g_profile_E_DN = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_DN,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_dn_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  118,                    // mPriority
  &l_daE_DN_Method,       // sub_method
  0x00040000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
