/**
 * @file d_a_e_mf.cpp
 * 
*/

#include "d/actor/d_a_e_mf.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "Z2AudioLib/Z2Instances.h"
#include "f_op/f_op_actor_enemy.h"
#include "d/d_bomb.h"
#include "f_op/f_op_kankyo_mng.h"
#include "d/actor/d_a_horse.h"
#include "d/d_com_inf_game.h"

UNK_REL_DATA;
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
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

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
static Vec jv_offset = { 0.0f, 0.0f, 0.0f };

/* 80713CE4-80713D74 -00001 0090+00 1/1 0/0 0/0 .data            jc_data */
static dJntColData_c jc_data[12] = {
    {0, 1, 2, 40.0f, &jv_offset}, {0, 1, 3, 30.0f, &jv_offset},
    {0, 1, 22, 40.0f, &jv_offset}, {0, 1, 11, 15.0f, &jv_offset},
    {0, 1, 12, 10.0f, &jv_offset}, {0, 1, 17, 15.0f, &jv_offset},
    {0, 1, 18, 10.0f, &jv_offset}, {0, 1, 23, 20.0f, &jv_offset},
    {0, 1, 24, 15.0f, &jv_offset}, {0, 1, 27, 20.0f, &jv_offset},
    {0, 1, 28, 15.0f, &jv_offset}, {0, 1, 32, 20.0f, &jv_offset},
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
    field_0x4 = -1;
    base_size = 1.3f;
    movement_speed = 8.0f;
    dash_speed = 28.0f;
    battle_init_range = 300.0f;
    attack_init_range = 350.0f;
    field_0x1c = 3;
    field_0x1e = 40;
    field_0x20 = 80;
    field_0x22 = 1;
    invulnerable = 0;
}

/* 8070A77C-8070A82C 00015C 00B0+00 2/2 0/0 0/0 .text            mf_disappear__FP10e_mf_class */
static void mf_disappear(e_mf_class* i_this) {
    fopEn_enemy_c* a_this = &i_this->actor;
    cXyz sp1c, sp28;

    MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(2), *calc_mtx);
    sp1c.set(0.0f, 0.0f, 0.0f);
    MtxPosition(&sp1c, &sp28);

    fopAcM_createDisappear(a_this, &sp28, 13, 0, 36);
    fopAcM_delete(a_this);

    int swBit = fopAcM_GetParam(a_this) >> 24;
    if (swBit != 0xFF) {
        dComIfGs_onSwitch(swBit, fopAcM_GetRoomNo(a_this));
    }
}

/* 8070A82C-8070A8D8 00020C 00AC+00 16/16 0/0 0/0 .text            anm_init__FP10e_mf_classifUcf */
static void anm_init(e_mf_class* i_this, int param_2, f32 i_morf, u8 i_attr, f32 i_rate) {
    i_this->mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_mf", param_2), i_attr, i_morf,
                                i_rate, 0.0f, -1.0f);
    i_this->field_0x5e0 = param_2;
}

/* 8070A8D8-8070AD94 0002B8 04BC+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        int jointNo = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        e_mf_class* i_this = (e_mf_class*)model->getUserArea();
        if (i_this != NULL) {
            MTXCopy(model->getAnmMtx(jointNo), *calc_mtx);

            if (jointNo != 0) {
                if (jointNo == 22) {
                    cMtx_YrotM(*calc_mtx, i_this->field_0x812);
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x7d0 + (i_this->field_0x810 - i_this->field_0x742[2].x));
                } else if (jointNo == 23) {
                    cMtx_YrotM(*calc_mtx, i_this->field_0x7da);
                } else if (jointNo == 24) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x7dc);
                } else if (jointNo == 27) {
                    cMtx_YrotM(*calc_mtx, i_this->field_0x7de);
                } else if (jointNo == 28) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x7e0);
                } else if (jointNo == 2) {
                    cMtx_YrotM(*calc_mtx, (i_this->field_0x6da / 2) + (i_this->field_0x742[1].y + - i_this->field_0x6d6));
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x742[1].x + i_this->field_0x7ce);
                } else if (jointNo == 3 || jointNo == 4) {
                    cMtx_YrotM(*calc_mtx, i_this->field_0x742[0].y + (i_this->field_0x6da - i_this->field_0x6d6));
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x7cc + (i_this->field_0x742[0].x - i_this->field_0x6d8));
                } else if (jointNo == 11) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x742[3].y + i_this->field_0x7d2);
                } else if (jointNo == 12) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x742[4].y + i_this->field_0x7d4);
                } else if (jointNo == 17) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x742[5].y + i_this->field_0x7d6);
                } else if (jointNo == 18) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x742[6].y + i_this->field_0x7d8);
                } else if (jointNo >= 31 && jointNo <= 34) {
                    cMtx_YrotM(*calc_mtx, i_this->field_0x742[jointNo - 2].x + i_this->field_0x806);
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x742[jointNo - 3].z);
                }
            }

            if (i_this->field_0x7ea != 0) {
                if ((jointNo & 1) != 0) {
                    cMtx_YrotM(*calc_mtx, i_this->field_0x7ea);
                } else if ((jointNo & 2) != 0) {
                    cMtx_XrotM(*calc_mtx, i_this->field_0x7ea);
                } else if ((jointNo & 4) != 0) {
                    cMtx_ZrotM(*calc_mtx, i_this->field_0x7ea);
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

/* 8070AD94-8070B03C 000774 02A8+00 1/0 0/0 0/0 .text            daE_MF_Draw__FP10e_mf_class */
static int daE_MF_Draw(e_mf_class* i_this) {
    fopEn_enemy_c* a_this = &i_this->actor;

    if (i_this->field_0x728 != 0) {
        return 1;
    }

    J3DModel* model = i_this->mpModelMorf->getModel();
    g_env_light.settingTevStruct(0, &a_this->current.pos, &a_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &a_this->tevStr);

    J3DModelData* modelData;
    J3DMaterial* matNode_p;
    if (i_this->field_0x6a4 != 0) {
        modelData = model->getModelData();
        for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
            matNode_p = modelData->getMaterialNodePointer(i);
            matNode_p->getTevColor(0)->r = i_this->field_0x6a8;
            matNode_p->getTevColor(0)->g = i_this->field_0x6a8;
            matNode_p->getTevColor(0)->b = i_this->field_0x6a8;
        }
    }

    i_this->mpModelMorf->entryDL();

    if (i_this->field_0x6a4 != 0) {
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
    g_env_light.setLightTevColorType_MAJI(i_this->field_0x68c, &a_this->tevStr);
    mDoExt_modelUpdateDL(i_this->field_0x68c);

    cXyz sp50;
    sp50.set(a_this->current.pos.x, a_this->current.pos.y + 50.0f, a_this->current.pos.z);
    i_this->mShadowKey = dComIfGd_setShadow(i_this->mShadowKey, 1, model, &sp50, 1150.0f, 0.0f, 
                                            a_this->current.pos.y, i_this->mObjAcch.GetGroundH(), 
                                            i_this->mObjAcch.m_gnd, &a_this->tevStr, 0, 1.0f, 
                                            dDlst_shadowControl_c::getSimpleTex());
    dComIfGd_addRealShadow(i_this->mShadowKey, i_this->field_0x5e4);
    dComIfGd_addRealShadow(i_this->mShadowKey, i_this->field_0x68c);
    
    return 1;
}

/* 8070B03C-8070B114 000A1C 00D8+00 2/2 0/0 0/0 .text other_bg_check__FP10e_mf_classP10fopAc_ac_c */
static BOOL other_bg_check(e_mf_class* i_this, fopAc_ac_c* i_actor) {
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

/* 8070B114-8070B1EC 000AF4 00D8+00 1/1 0/0 0/0 .text other_bg_check2__FP10e_mf_classP4cXyz */
static BOOL other_bg_check2(e_mf_class* i_this, cXyz* param_2) {
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

/* 80713F64-80713F68 -00001 0004+00 1/2 0/0 0/0 .bss             None */
/* 80713F64 0001+00 data_80713F64 @1009 */
/* 80713F65 0003+00 data_80713F65 None */
static u8 struct_80713F64;

static u8 data_80713F65;

/* 80713F74-80713F98 000054 0024+00 9/10 0/0 0/0 .bss             l_HIO */
static daE_MF_HIO_c l_HIO;

/* 80713F98-80713FC0 000078 0028+00 2/2 0/0 0/0 .bss             target_info */
static fopAc_ac_c* target_info[10];

/* 80713FC0-80713FC4 0000A0 0004+00 2/2 0/0 0/0 .bss             target_info_count */
static int target_info_count;

/* 8070B1EC-8070B268 000BCC 007C+00 1/1 0/0 0/0 .text            s_b_sub__FPvPv */
static void* s_b_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && dBomb_c::checkBombActor((fopAc_ac_c*)i_actor) && !((dBomb_c*)i_actor)->checkStateExplode() && target_info_count < 10) {
        target_info[target_info_count] = (fopAc_ac_c*)i_actor;
        target_info_count++;
    }

    return NULL;
}

/* 8070B268-8070B6E0 000C48 0478+00 2/2 0/0 0/0 .text            search_bomb__FP10e_mf_classi */
static dBomb_c* search_bomb(e_mf_class* i_this, BOOL param_2) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    target_info_count = 0;
    for (int i = 0; i < 10; i++) {
        target_info[i] = NULL;
    }

    fpcM_Search(s_b_sub, i_this);

    f32 threshold = 50.0f;
    if (target_info_count != 0) {
        cXyz sp44, sp50, sp5c;
        for (int i = 0; i < target_info_count;) {
            dBomb_c* bomb = (dBomb_c*)target_info[i];
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

/* 8070B6E0-8070B704 0010C0 0024+00 4/4 0/0 0/0 .text            bomb_view_check__FP10e_mf_class */
static dBomb_c* bomb_view_check(e_mf_class* i_this) {
    return search_bomb(i_this, TRUE);
}

/* 8070B704-8070B728 0010E4 0024+00 1/1 0/0 0/0 .text            bomb_check__FP10e_mf_class */
static dBomb_c* bomb_check(e_mf_class* i_this) {
    return search_bomb(i_this, FALSE);
}

/* 8070B728-8070B76C 001108 0044+00 1/1 0/0 0/0 .text            player_way_check__FP10e_mf_class */
static BOOL player_way_check(e_mf_class* i_this) {
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

/* 8070B76C-8070B848 00114C 00DC+00 4/4 0/0 0/0 .text            pl_check__FP10e_mf_classfs */
static int pl_check(e_mf_class* i_this, f32 param_2, s16 param_3) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    if (i_this->mPlayerDistance < param_2) {
        s16 sVar1 = a_this->shape_angle.y - i_this->mYAngleToPlayer;
        if (sVar1 < param_3 && sVar1 > (s16)-param_3 && !other_bg_check(i_this, player)) {
            return 1;
        }
    } else {
        for (int i = 0; i <= 2; i++) {
            if (i_this->field_0xa7c[i].ChkCoHit() != 0) {
                if (player == dCc_GetAc(i_this->field_0xa7c[i].GetCoHitObj()->GetAc())) {
                    return 2;
                }
            }
        }
    }

    return 0;
}

/* 8070B848-8070B950 001228 0108+00 3/3 0/0 0/0 .text            move_gake_check__FP10e_mf_classfSc */
static BOOL move_gake_check(e_mf_class* i_this, f32 param_2, s8 param_3) {
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

/* 8070B950-8070BB10 001330 01C0+00 1/1 0/0 0/0 .text jump_pos_check__FP10e_mf_classP4cXyz */
static BOOL jump_pos_check(e_mf_class* i_this, cXyz* param_2) {
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

/* 8070BB10-8070BF94 0014F0 0484+00 2/1 0/0 0/0 .text            e_mf_stay__FP10e_mf_class */
static void e_mf_stay(e_mf_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    cXyz sp30;

    i_this->field_0x6d4 = 5;
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

                i_this->field_0x6c0[0] = cM_rndF(10.0f) + 10.0f;
                i_this->field_0x718 = sound->position;
            }
            break;

        case 2:
            if (i_this->field_0x6c0[0] == 0) {
                anm_init(i_this, 21, 3.0f, 0, 1.5f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_FIND, -1);
                i_this->field_0x5b4 = 3;
            }
            break;

        case 3:
            if (i_this->mpModelMorf->isStop()) {
                if (other_bg_check2(i_this, &i_this->field_0x718)) {
                    i_this->field_0x6c0[0] = cM_rndF(10.0f) + 20.0f;
                    i_this->field_0x5b4 = 4;
                } else {
                    i_this->mAction = 10;
                    i_this->field_0x5b4 = 0;
                }
            }
            break;

        case 4:
            if (i_this->field_0x6c0[0] == 0) {
                i_this->field_0x5b4 = 10;
                i_this->field_0x6c0[0] = cM_rndF(10.0f) + 30.0f;
                anm_init(i_this, 33, 5.0f, 2, 1.5f);
            }
            break;

        case 5:
            if (i_this->field_0x6c0[0] == 0) {
                anm_init(i_this, 21, 3.0f, 0, 1.5f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_FIND, -1);
                i_this->field_0x5b4 = 6;
            }
            break;

        case 6:
            if (i_this->mpModelMorf->isStop()) {
                i_this->field_0x6c0[0] = cM_rndF(10.0f) + 20.0f;
                i_this->field_0x5b4 = 7;
            }
            break;

        case 7:
            if (i_this->field_0x6c0[0] == 0) {
                i_this->field_0x5b4 = 10;
                i_this->field_0x6c0[0] = cM_rndF(40.0f) + 50.0f;
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
            if (i_this->field_0x6c0[0] == 0) {
                i_this->field_0x5b4 = 0;
            }
    }

    if ((i_this->field_0x6ac & 15) == 0) {
        if (pl_check(i_this, i_this->field_0x6b8, 0x4000) != 0) {
            i_this->mAction = 3;
            i_this->field_0x5b4 = -10;
            i_this->field_0x6c0[0] = 60;
        } else if (bomb_view_check(i_this) != NULL) {
            i_this->mAction = 11;
            i_this->field_0x5b4 = 0;
        }
    }
}

/* 8070BF94-8070C2C4 001974 0330+00 1/1 0/0 0/0 .text            e_mf_otoreac__FP10e_mf_class */
static void e_mf_otoreac(e_mf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    cXyz sp40, sp4c;
    f32 fVar1 = 0.0f;
    i_this->field_0x6d4 = 2;

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 31, 10.0f, 2, cM_rndF(0.2f) + 1.5f);
            i_this->field_0x6c0[0] = cM_rndF(10.0f) + 20.0f;
            i_this->field_0x5b4 = 1;
            // fallthrough
        case 1:
            if (i_this->field_0x6c0[0] == 0) {
                anm_init(i_this, 30, 5.0f, 2, cM_rndFX(0.05f) + 1.0f);
                i_this->field_0x5b4 = 2;
            }
            break;

        case 2:
            fVar1 = l_HIO.dash_speed;
            if ((i_this->field_0x6ac & 3) == 0) {
                if ((i_this->field_0x6ac & 4) != 0) {
                    i_this->field_0x10c4 = 1;
                } else {
                    i_this->field_0x10c4 = 2;
                }
            }

            sp40 = i_this->field_0x718 - a_this->current.pos;
            cLib_addCalcAngleS2(&a_this->current.angle.y, cM_atan2s(sp40.x, sp40.z), 2, 0xC00);
            if (sp40.abs() < 250.0f || i_this->mObjAcch.ChkWallHit() != 0) {
                i_this->mAction = 0;
                i_this->field_0x5b4 = 0;
                i_this->field_0x6c0[0] = cM_rndF(50.0f) + 50.0f;
                anm_init(i_this, 33, 10.0f, 2, 1.0f);
            }
            break;


    }

    cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, 5.0f);
    if ((i_this->field_0x6ac & 15) == 0) {
        if (pl_check(i_this, i_this->field_0x6b8, 0x4000) != 0) {
            i_this->mAction = 3;
            i_this->field_0x5b4 = -10;
            i_this->field_0x6c0[0] = 60;
        } else if (bomb_view_check(i_this) != NULL) {
            i_this->mAction = 11;
            i_this->field_0x5b4 = 0;
        }
    }
}

/* 8070C2C4-8070C7C4 001CA4 0500+00 2/1 0/0 0/0 .text            e_mf_bomb_action__FP10e_mf_class */
static void e_mf_bomb_action(e_mf_class* i_this) {
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
            i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_FIND_BOMB, -1);
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
            i_this->field_0x6c0[1] = cM_rndF(10.0f) + 10.0f;
            // fallthrough
        case 3:
            if (i_this->field_0x6c0[1] == 0 && bomb->speedF < 0.1f) {
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
            i_this->mSound.startCreatureSoundLevel(Z2SE_EN_MF_V_LOOK_BOMB, 0, -1);
            sVar1 = i_this->mYAngleToPlayer;
            if (JMAFastSqrt(sp3c.x * sp3c.x + sp3c.z * sp3c.z) < 500.0f) {
                i_this->field_0x5b4 = 2;
            }
            break;

        case 10:
            i_this->field_0x6d2 = 0;
            fVar1 = l_HIO.dash_speed;
            if (JMAFastSqrt(sp3c.x * sp3c.x + sp3c.z * sp3c.z) < 100.0f) {
                i_this->field_0x6c0[0] = 20;
                i_this->field_0x5b4 = 11;
                anm_init(i_this, 30, 5.0f, 0, cM_rndFX(0.05f) + 1.0f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_KICK_BOMB, -1);
            }

            if (bomb->speedF > 0.1f) {
                i_this->field_0x5b4 = 2;
            }
            break;

        case 11:
            i_this->field_0x6d2 = 0;
            sVar1 = i_this->mYAngleToPlayer;

            if (i_this->field_0x6c0[0] >= 10) {
                cMtx_YrotS(*calc_mtx, sVar1);
                sp3c.x = -30.0f;
                sp3c.y = 0.0f;
                sp3c.z = 60.0f;
                MtxPosition(&sp3c, &sp48);
                sp48 += a_this->current.pos;

                cLib_addCalc2(&bomb->current.pos.x, sp48.x, 1.0f, 15.0f);
                cLib_addCalc2(&bomb->current.pos.z, sp48.z, 1.0f, 15.0f);

                if (i_this->field_0x6c0[0] == 10) {
                    bomb->speedF = 30.0f;
                    bomb->speed.y = 30.0f;
                    bomb->current.angle.y = a_this->shape_angle.y;
                }
            }

            if (i_this->field_0x6c0[0] == 0) {
                anm_init(i_this, 31, 5.0f, 2, 1.0f);
                i_this->field_0x5b4 = 5;
            }
    }

    cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, 5.0f);
    cLib_addCalcAngleS2(&a_this->current.angle.y, sVar1, 4, 0x1000);
    i_this->field_0x6d4 = 2;
    i_this->field_0x718 = bomb->current.pos;
}

/* 8070C7C4-8070CB1C 0021A4 0358+00 1/1 0/0 0/0 .text            e_mf_normal__FP10e_mf_class */
static void e_mf_normal(e_mf_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    cXyz sp44, sp50;
    f32 fVar1 = 0.0f;
    s16 sVar1 = 0x4000;
    s16 sVar2, sVar3;

    switch (i_this->field_0x5b4) {
        case 0:
        case 1:
        case 2:
            if (i_this->field_0x6c0[0] == 0) {
                if (fopAcM_wayBgCheck(a_this, 200.0f, 50.0f) || move_gake_check(i_this, 200.0f, 0)) {
                    sVar2 = cM_rndFX(10000.0f) + 32768.0f;
                    i_this->field_0x6c0[1] = 40;
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
                i_this->field_0x6c0[0] = cM_rndF(100.0f) + 100.0f;
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

            sVar3 = (sVar2 - a_this->current.angle.y) * 2;
            if (sVar3 > 0x1000) {
                sVar2 = 0x1000;
            } else if (sVar3 < -0x1000) {
                sVar2 = -0x1000;
            }

            cLib_addCalcAngleS2(&i_this->field_0x806, sVar2, 2, 0x400);

            if (i_this->field_0x6c0[0] == 0 || 
                ((i_this->field_0x6c0[1] == 0 && fopAcM_wayBgCheck(a_this, 200.0f, 50.0f)) || move_gake_check(i_this, 200.0f, 0))) {
                i_this->field_0x5b4 = 2;
                i_this->field_0x6c0[0] = cM_rndF(100.0f) + 50.0f;
                anm_init(i_this, 33, 10.0f, 2, 1.0f);
            }
            break;
    }

    cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, 3.0f);
    BOOL bVar1 = fopAcM_otoCheck(a_this, 2000.0f) | daPy_getPlayerActorClass()->checkWolfBark();
    if ((i_this->field_0x6ac & 15) == 0 || bVar1) {
        if (bVar1 || pl_check(i_this, i_this->field_0x6b8, sVar1) != 0) {
            i_this->mAction = 3;
            i_this->field_0x5b4 = -10;
            i_this->field_0x6c0[0] = 60;
        }

        if (bomb_view_check(i_this) != NULL) {
            i_this->mAction = 11;
            i_this->field_0x5b4 = 0;
        }
    }
}

/* 8070CB1C-8070CCB8 0024FC 019C+00 1/1 0/0 0/0 .text            e_mf_drawback__FP10e_mf_class */
static void e_mf_drawback(e_mf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 18, 5.0f, 0, 1.0f);
            i_this->field_0x5b4 = 1;
            a_this->speedF = -5.0f;
            i_this->field_0x6c8 = 10;
            i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_DRAWBACK, -1);
            i_this->field_0x5d4 = player->shape_angle.y + 0x8000;
            i_this->field_0x6c0[0] = 50;
            break;

        case 1:
            a_this->onHeadLockFlg();
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->field_0x5d4, 4, 0x400);
            cLib_addCalc0(&a_this->speedF, 1.0f, 0.1f);

            if (i_this->mpModelMorf->isStop() || i_this->field_0x6c0[0] == 0) {
                i_this->mAction = 3;
                i_this->field_0x5b4 = 0;
                i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_AWAKE, -1);
            }
            break;
    }

    if (move_gake_check(i_this, 50.0f, 1)) {
        i_this->mAction = 23;
        i_this->field_0x5b4 = 0;
    }
}

/* 8070CCB8-8070D090 002698 03D8+00 1/1 0/0 0/0 .text            e_mf_wolfbite__FP10e_mf_class */
static void e_mf_wolfbite(e_mf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);

    i_this->field_0x6c8 = 10;
    cLib_addCalc0(&a_this->speedF, 1.0f, 2.0f);

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 23, 3.0f, 0, 1.0f);
            i_this->field_0x5b4 = 1;
            i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_DRAWBACK, -1);
            a_this->health -= 10;
            i_this->field_0x10b8 = 0;
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
                    i_this->field_0x730 = (a_this->shape_angle.y - 0x8000) - player->shape_angle.y;
                    i_this->field_0x72c = 150.0f;
                    i_this->mAction = 21;
                    i_this->field_0x5b4 = 0;
                    i_this->field_0x704.y = player->shape_angle.y + 0x8000;
                    a_this->speed.y = 0.0f;
                    i_this->field_0x6e4 = -1.0f;
                    i_this->field_0x808 = 50;
                    i_this->mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 32);
                    i_this->field_0x6f0 = 1;
                    i_this->field_0x6c8 = 1000;
                    i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_DEATH, -1);
                    return;
                }

                i_this->field_0x10b8++;
                if (i_this->field_0x10b8 >= 4) {
                    player->offWolfEnemyHangBite();
                    anm_init(i_this, 25, 3.0f, 0, 1.0f);
                    i_this->field_0x5b4 = 3;
                }

                i_this->mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 30);
                i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_DAMAGE, -1);
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
                i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_AWAKE, -1);
            }
    }
}

/* 8070D090-8070D0D0 002A70 0040+00 1/1 0/0 0/0 .text            way_check__FP10e_mf_class */
static int way_check(e_mf_class* i_this) {
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

/* 8070D0D0-8070D2C8 002AB0 01F8+00 1/1 0/0 0/0 .text            shot_s_sub__FPvPv */
static void* shot_s_sub(void* i_actor, void* i_data) {
    e_mf_class* i_this = (e_mf_class*)i_data;
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    if ((fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_ARROW && (fopAcM_GetParam(i_actor) == 1 || fopAcM_GetParam(i_actor) == 2)) ||
        fopAcM_GetName(i_actor) == PROC_BOOMERANG && dComIfGp_checkPlayerStatus0(0, 0x80000) == 0 && daPy_py_c::checkBoomerangCharge() && fopAcM_GetParam(i_actor) == 1) {
        cXyz sp28(a_this->current.pos - ((fopAc_ac_c*)i_actor)->current.pos);
        if (sp28.abs() < 1000.0f) {
            return i_actor;
        }
    }

    if (dComIfGp_checkPlayerStatus0(0, 0x400) != 0 && i_this->mPlayerDistance < 1000.0f) {
        return dComIfGp_getPlayer(0);
    }

    return NULL;
}

/* 8070D2C8-8070DBB4 002CA8 08EC+00 1/1 0/0 0/0 .text            e_mf_fight_run__FP10e_mf_class */
static void e_mf_fight_run(e_mf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    cXyz sp4c, sp58;
    f32 fVar1 = 0.0f;
    int frame = i_this->mpModelMorf->getFrame();
    s8 sVar4 = 1;

    if (pl_check(i_this, i_this->field_0x6b8 + 50.0f, 0x7FFF) == 0 && i_this->field_0x6c0[0] == 0) {
        if (i_this->field_0x6ca == 0) {
            sVar4 = 0;
        }
    } else {
        i_this->field_0x6ca = 40;
    }

    switch (i_this->field_0x5b4) {
        case -10:
            anm_init(i_this, 31, 5.0f, 2, 1.0f);
            i_this->field_0x6c0[1] = cM_rndF(10.0f) + 15.0f;
            i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_FIND, -1);
            i_this->field_0x5b4 = -9;
            break;

        case -9:
            cLib_addCalc0(&a_this->speedF, 1.0f, 5.0f);
            if (i_this->field_0x6c0[1] == 0) {
                i_this->field_0x5b4 = 0;
            }
            break;

        case 0:
            anm_init(i_this, 30, 5.0f, 2, cM_rndFX(0.05f) + 1.0f);
            i_this->field_0x5b4 = 1;
            i_this->field_0x80c = 0;
            // fallthrough
        case 1:
            fVar1 = l_HIO.dash_speed;
            if ((i_this->field_0x6ac & 3) == 0) {
                if ((i_this->field_0x6ac & 4) != 0) {
                    i_this->field_0x10c4 = 1;
                } else {
                    i_this->field_0x10c4 = 2;
                }
            }

            if (i_this->mObjAcch.ChkWallHit() != 0 && !fopAcM_wayBgCheck(a_this, 200.0f, 120.0f)) {
                i_this->field_0x80c++;
            } else if (i_this->mPlayerDistance < l_HIO.battle_init_range) {
                anm_init(i_this, 32, 5.0f, 2, 1.0f);
                i_this->field_0x5b4 = 2;
                i_this->field_0x6c0[2] = cM_rndF(30.0f) + 30.0f;
            }

            if (i_this->field_0x80c > 20) {
                i_this->mAction = 8;
                i_this->field_0x5b4 = 0;
                return;
            }

            if (move_gake_check(i_this, 50.0f, 0)) {
                i_this->mAction = 25;
                i_this->field_0x5b4 = 0;
                i_this->field_0x6c8 = 100;
                a_this->speedF = 0.0f;
                return;
            }
            break;

        case 2:
            i_this->field_0x80e = 1;
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
                i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_BREATH, -1);
            }

            if (frame == 13 || frame == 27) {
                a_this->speedF = 0.0f;
                i_this->field_0x10c4 = 3;
                if (frame == 13) {
                    i_this->mSound.startCreatureSound(Z2SE_EN_MF_FN_RUN_L, 0, -1);
                } else {
                    i_this->mSound.startCreatureSound(Z2SE_EN_MF_FN_RUN_R, 0, -1);
                }
            }

            a_this->gravity = -5.0f;
            break;
    }

    s16 sVar1;
    if (i_this->field_0x5b4 >= 0) {
        if (i_this->field_0x80e == 0) {
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
        cLib_addCalcAngleS2(&i_this->field_0x806, sVar1, 2, 0x400);
    }

    u8 sVar3 = 0;
    if (fpcM_Search(shot_s_sub, i_this) != NULL || daPy_getPlayerActorClass()->checkHookshotShootReturnMode()) {
        sVar3 = 1;
        OS_REPORT(" DEF ON !!\n");
    }

    if (i_this->mPlayerDistance < 300.0f && daPy_getPlayerActorClass()->checkSpinnerRide() != 0) {
        sVar3 = 2;
    }

    if (sVar4 == 0) {
        if (i_this->field_0x6ca == 0) {
            i_this->mAction = 0;
            i_this->field_0x5b4 = 0;
            i_this->field_0x6c0[0] = cM_rndF(50.0f) + 50.0f;
            anm_init(i_this, 33, 10.0f, 2, 1.0f);

            if (i_this->field_0x80e == 0) {
                return;
            }

            a_this->current.angle.y = a_this->shape_angle.y;
            return;
        }
    } else {
        if ((sVar3 == 2 || dComIfGp_checkPlayerStatus1(0, 0x2000000) != 0) || (((i_this->mXAngleToPlayer < 0x1000 && i_this->mXAngleToPlayer > -0x1000) || sVar3 != 0) && player_way_check(i_this))) {
            if ((sVar3 != 0 || (i_this->mPlayerDistance < l_HIO.battle_init_range && 
                ((daPy_getPlayerActorClass()->getCutAtFlg() != 0 || daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_JUMP) || 
                ((i_this->field_0x6ac & 48) != 0 && daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_GUARD_ATTACK)))) && i_this->field_0x72c < 1.0f) {
                i_this->mAction = 7;
                if (cc_pl_cut_bit_get() == 0x100) {
                    i_this->field_0x5b4 = 0;
                } else {
                    i_this->field_0x5b4 = 5;
                }

                i_this->field_0x6e8 = 30.0f;
                i_this->field_0x6ec = a_this->shape_angle.y;
                i_this->field_0x6c0[0] = 0;
                i_this->field_0x6c8 = 15;
            } else {
                if (i_this->mPlayerDistance < l_HIO.attack_init_range) {
                    if (i_this->field_0x6c0[2] == 0) {
                        i_this->field_0x6c0[2] = cM_rndF(60.0f) + 30.0f;
                        if (way_check(i_this) == 0 && cM_rndF(1.0f) < 0.65f) {
                            i_this->mAction = 5;
                            i_this->field_0x5b4 = 0;
                        } else {
                            i_this->mAction = 6;
                            i_this->field_0x5b4 = 0;
                        }
                    }
                } else {
                    i_this->field_0x6c0[2] = cM_rndF(50.0f) + 30.0f;
                }

            }
        }
    }

    i_this->field_0x6d4 = 1;
    if ((i_this->field_0x6ac & 15) == 0 && bomb_view_check(i_this) != NULL) {
        i_this->mAction = 11;
        i_this->field_0x5b4 = 0;
    }

    if (move_gake_check(i_this, 150.0f, 1) && (i_this->field_0x6ac & 15) == 0 && cM_rndF(1.0f) < 0.5f) {
        i_this->field_0x6e0 = cM_rndF(10.0f) + 10.0f;
        i_this->field_0x6e1 = cM_rndF(1.9f);
    }

    if (move_gake_check(i_this, 50.0f, 1)) {
        if (cM_rndF(1.0f) < 0.5f) {
            i_this->mAction = 6;
            i_this->field_0x5b4 = 0;
        } else {
            i_this->mAction = 25;
            i_this->field_0x5b4 = 0;
            i_this->field_0x5c8 = a_this->current.pos;
            i_this->field_0x5bc = a_this->current.pos;
            i_this->field_0x6c8 = 100;
        }

        a_this->speedF = 0.0f;
    }

    if (i_this->mAction != 3 && i_this->field_0x80e != 0) {
        a_this->current.angle.y = a_this->shape_angle.y;
    }
}

/* 8070DBB4-8070DDDC 003594 0228+00 1/1 0/0 0/0 .text            e_mf_jump__FP10e_mf_class */
static void e_mf_jump(e_mf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    
    i_this->field_0x6d4 = 1;
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
            i_this->field_0x10c4 = 3;
            i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_JUMP, -1);
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
            i_this->field_0x10c4 = 3;
            i_this->field_0x6c0[0] = 3;
            i_this->mSound.startCreatureSound(Z2SE_EN_MF_FN_R, 0, -1);
            return;

        case 4:
            if (i_this->field_0x6c0[0] == 1) {
                i_this->mSound.startCreatureSound(Z2SE_EN_MF_FN_L, 0, -1);
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

/* 8070DDDC-8070E30C 0037BC 0530+00 1/1 0/0 0/0 .text            e_mf_gakejump__FP10e_mf_class */
static void e_mf_gakejump(e_mf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    cXyz sp24, sp30;

    i_this->field_0x6d4 = 1;
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
                i_this->field_0x6c0[0] = cM_rndF(15.0f) + 35.0f;
                i_this->field_0x5b4 = 1;
            }

            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mYAngleToPlayer, 4, 0x800);
            return;

        case 1:
            i_this->field_0x6d4 = 2;
            cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
            sp24.x = 0.0f;
            sp24.y = 0.0f;
            sp24.z = 100.0f;
            MtxPosition(&sp24, &i_this->field_0x718);
            i_this->field_0x718 += a_this->current.pos;

            if (i_this->field_0x6c0[0] != 0) {
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
                i_this->field_0x10c4 = 3;
                i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_JUMP, -1);
                i_this->field_0x6c0[0] = 20;
                i_this->field_0x6c0[1] = 60;
                i_this->field_0x5c8 = a_this->current.pos;
            } else {
                anm_init(i_this, 31, 5.0f, 2, cM_rndF(0.1f) + 0.9f);
                i_this->field_0x6c0[0] = cM_rndF(15.0f) + 35.0f;
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

            if (i_this->field_0x6c0[0] == 1) {
                anm_init(i_this, 28, 5.0f, 0, 1.0f);
            }

            if (sp24.abs() < (a_this->speedF * 1.1f)) {
                a_this->current.pos = i_this->field_0x5bc;
                anm_init(i_this, 29, 1.0f, 0, 1.0f);
                i_this->field_0x5b4 = 4;
                i_this->field_0x10c4 = 3;
                i_this->field_0x6c0[0] = 3;
                i_this->mSound.startCreatureSound(Z2SE_EN_MF_FN_R, 0, -1);
                a_this->speedF = 0.0f;
                i_this->field_0x6c8 = 0;
            }

            if (i_this->field_0x6c0[1] == 0 || i_this->mObjAcch.ChkWallHit() != 0) {
                i_this->mAction = 3;
                i_this->field_0x5b4 = 0;
            }
            return;

        case 4:
            if (i_this->field_0x6c0[0] == 1) {
                i_this->mSound.startCreatureSound(Z2SE_EN_MF_FN_L, 0, -1);
            }

            if (!i_this->mpModelMorf->isStop()) {
                return;
            }

            i_this->mAction = 3;
            i_this->field_0x5b4 = 0;
            return;
    }
}

/* 8070E30C-8070E36C 003CEC 0060+00 2/2 0/0 0/0 .text            at_hit_check__FP10e_mf_class */
static fopAc_ac_c* at_hit_check(e_mf_class* i_this) {
    if (i_this->field_0x5b4 >= 10) {
        return NULL;
    }
    
    if (i_this->field_0xe24.ChkAtHit() != 0) {
        return dCc_GetAc(i_this->field_0xe24.GetAtHitObj()->GetAc());
    }

    return NULL;
}

/* 8070E36C-8070E5E0 003D4C 0274+00 1/1 0/0 0/0 .text            e_mf_attack__FP10e_mf_class */
static void e_mf_attack(e_mf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    cXyz sp34, sp40;
    int frame = i_this->mpModelMorf->getFrame();

    i_this->field_0x6d4 = 1;
    s16 sVar1, sVar2;
    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 5, 6.0f, 0, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_KNIFE2_A, -1);
            i_this->field_0x5b4 = 1;
            // fallthrough
        case 1:
            if (frame < 15 || (frame >= 34 && frame <= 43)) {
                sVar1 = a_this->current.angle.y;
                cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mYAngleToPlayer, 2, 0x800);
                sVar1 -= a_this->current.angle.y;
                sVar1 *= 2;
                if (sVar1 > 0x1000) {
                    sVar1 = 0x1000;
                } else if (sVar1 < -0x1000) {
                    sVar1 = -0x1000;
                }
                cLib_addCalcAngleS2(&i_this->field_0x806, sVar1, 2, 0x400);
            }

            if (frame >= 15 && frame <= 20) {
                i_this->field_0x6cf = 1;
                i_this->field_0x6ce = 0;
            }

            if (frame >= 34 && frame <= 43) {
                i_this->field_0x6cf = 1;
                i_this->field_0x6ce = 1;
                cMtx_YrotS(*calc_mtx, a_this->current.angle.y);
                sp34.x = 0.0f;
                sp34.y = 0.0f;
                if (i_this->field_0x6c0[1] != 0) {
                    sp34.z = -35.0f;
                } else {
                    sp34.z = 25.0f;
                }
                MtxPosition(&sp34, &sp40);
                a_this->current.pos += sp40;
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 3;
                i_this->field_0x5b4 = 0;
            }
    }

    cLib_addCalc0(&a_this->speedF, 1.0f, 5.0f);
    if (i_this->field_0x6cf != 0) {
        fopAc_ac_c* actor_p = at_hit_check(i_this);
        if (actor_p != NULL && fopAcM_GetName(actor_p) == PROC_ALINK && daPy_getPlayerActorClass()->checkPlayerGuard()) {
            i_this->mpModelMorf->setPlaySpeed(0.0f);
            i_this->mAction = 3;
            i_this->field_0x5b4 = 0;
        }
    }
}

/* 8070E5E0-8070E760 003FC0 0180+00 1/1 0/0 0/0 .text            tail_eff_set__FP10e_mf_class */
static void tail_eff_set(e_mf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;

    J3DModel* model = i_this->mpModelMorf->getModel();
    i_this->field_0x10e4 = dComIfGp_particle_set(i_this->field_0x10e4, 0x815F, &a_this->current.pos, NULL, NULL);
    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(i_this->field_0x10e4);
    if (emitter != NULL) {
        MTXCopy(model->getAnmMtx(0), *calc_mtx);
        emitter->setGlobalRTMatrix(*calc_mtx);
    }

    i_this->field_0x10e8 = dComIfGp_particle_set(i_this->field_0x10e8, 0x8160, &a_this->current.pos, NULL, NULL);
    emitter = dComIfGp_particle_getEmitter(i_this->field_0x10e8);
    if (emitter != NULL) {
        MTXCopy(model->getAnmMtx(0), *calc_mtx);
        emitter->setGlobalRTMatrix(*calc_mtx);
    }
}

/* 8070E760-8070EA10 004140 02B0+00 1/1 0/0 0/0 .text            e_mf_tail_attack__FP10e_mf_class */
static void e_mf_tail_attack(e_mf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    cXyz sp30, sp3c;
    int frame = i_this->mpModelMorf->getFrame();

    i_this->field_0x6d4 = 1;
    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 8, 5.0f, 0, 1.0f);
            i_this->mpModelMorf->setFrame(20.0f);
            i_this->field_0x5b4 = 1;
            i_this->field_0x6c0[1] = 0;
            break;

        case 1:
            tail_eff_set(i_this);
            if (frame >= 33 && frame <= 41) {
                i_this->field_0x6cf = 1;
                i_this->field_0x6ce = 2;
                cMtx_YrotS(*calc_mtx, i_this->mYAngleToPlayer);
                sp30.x = 0.0f;
                sp30.y = 0.0f;
                sp30.z = 30.0f;
                MtxPosition(&sp30, &sp3c);
                a_this->current.pos += sp3c;

                if (at_hit_check(i_this) != NULL) {
                    i_this->field_0x6c0[1] = 80;
                }
            }

            if (i_this->field_0x6c0[1] != 0 && i_this->mpModelMorf->checkFrame(55.0f)) {
                i_this->mAction = 5;
                i_this->field_0x5b4 = 1;
                anm_init(i_this, 5, 4.0f, 0, 1.0f);
                i_this->mpModelMorf->setFrame(20.0f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_KNIFE2_A, -1);
                return;
            }

            if (frame == 40) {
                i_this->mSound.startCreatureSound(Z2SE_EN_MF_FN_RUN_R, 0, -1);
            } else if (frame == 43) {
                i_this->mSound.startCreatureSound(Z2SE_EN_MF_FN_RUN_L, 0, -1);
            }

            if (i_this->mpModelMorf->isStop()) {
                if (i_this->field_0x6c0[1] != 0) {
                    i_this->field_0x5b4 = 0;
                } else {
                    i_this->mAction = 3;
                    i_this->field_0x5b4 = 0;
                }
            }
    }

    a_this->current.angle.y += i_this->field_0x80a;
    a_this->shape_angle.y += i_this->field_0x80a;
    cLib_addCalcAngleS2(&i_this->field_0x80a, 0, 1, 300);
    cLib_addCalc0(&a_this->speedF, 1.0f, 3.0f);
}

/* 8070EA10-8070EC60 0043F0 0250+00 2/1 0/0 0/0 .text            e_mf_guard__FP10e_mf_class */
static void e_mf_guard(e_mf_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;

    i_this->field_0x6d1 = 1;
    i_this->field_0x6d4 = 1;

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 32, 3.0f, 0, 1.0f);
            i_this->field_0x5b4 = 1;
            a_this->speed.y = 20.0f;
            a_this->speedF = -8.0f;
            i_this->field_0x10c4 = 3;
            break;

        case 1:
            i_this->field_0x6c8 = 5;
            if (i_this->mpModelMorf->getFrame() >= 5.0f) {
                i_this->field_0x5b4 = 5;
                i_this->field_0x6c0[0] = 20;
            }
            break;

        case 5:
            anm_init(i_this, 22, 3.0f, 0, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_GUARD, -1);
            i_this->field_0x5b4 = 6;
            // fallthrough
        case 6:
            i_this->field_0x6c8 = 5;
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
            if (cc_pl_cut_bit_get() == 0x80 || cc_pl_cut_bit_get() == 0x800) {
                i_this->field_0x6c0[0] = 2;
                i_this->field_0x6c8 = 10;
            }

            if (dComIfGp_checkPlayerStatus0(0, 0x400) != 0) {
                i_this->field_0x6c0[0] = 20;
            }

            if (i_this->mPlayerDistance < 300.0f && daPy_getPlayerActorClass()->checkSpinnerRide() != 0) {
                i_this->field_0x6c0[0] = 2;
            }

            if (i_this->field_0x6c0[0] == 0) {
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

/* 8070EC60-8070ED10 004640 00B0+00 1/1 0/0 0/0 .text            e_mf_s_damage__FP10e_mf_class */
static void e_mf_s_damage(e_mf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;

    switch (i_this->field_0x5b4) {
        case 0:
            i_this->field_0x5b4 = 1;
            i_this->field_0x6c0[0] = 20;
            anm_init(i_this, 31, 10.0f, 2, 1.0f);
            break;

        case 1:
            if (i_this->field_0x6c0[0] == 0) {
                i_this->mAction = 3;
                i_this->field_0x5b4 = 0;
                i_this->field_0x6c0[0] = 40;
            }
    }

    cLib_addCalc0(&a_this->speedF, 1.0f, 3.0f);
}

/* 8070ED10-8070EEC4 0046F0 01B4+00 1/1 0/0 0/0 .text            kado_check__FP10e_mf_class */
static int kado_check(e_mf_class* i_this) {
    // NONMATCHING
    static int kado_bit[2] = {
        1, 2,
    };

    static f32 kado_check_x[2] = {
        80.0f, -80.0f,
    };

    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    dBgS_LinChk lin_chk;
    cXyz sp9c, spa8, spb4;
    BOOL rv = FALSE;

    cMtx_YrotS(*calc_mtx, i_this->field_0x704.y);
    for (int i = 0; i < 2; i++) {
        spa8 = a_this->current.pos;
        spa8.y += 100.0f;
        sp9c.x = 0.0f;
        sp9c.y = 0.0f;
        sp9c.z = 70.0f;
        MtxPosition(&sp9c, &spb4);
        spa8 += spb4;
        sp9c.y = 50.0f;
        sp9c.z = -150.0f;
        sp9c.x = 1.0f * kado_check_x[i];
        MtxPosition(&sp9c, &spb4);
        spb4 += spa8;
        lin_chk.Set(&spa8, &spb4, a_this);
        if (dComIfG_Bgsp().LineCross(&lin_chk)) {
            rv |= kado_bit[i];
        }
    }

    if (rv == 3) {
        rv = FALSE;
    }

    return rv;
}

/* 8070EEC4-8070F014 0048A4 0150+00 1/1 0/0 0/0 .text            body_gake__FP10e_mf_class */
static BOOL body_gake(e_mf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    J3DModel* model = i_this->mpModelMorf->getModel();
    cXyz sp7c, sp88;

    MTXCopy(model->getAnmMtx(2), *calc_mtx);
    sp7c.set(0.0f, 0.0f, 0.0f);
    MtxPosition(&sp7c, &sp88);

    dBgS_ObjGndChk gnd_chk;
    sp88.y += 100.0f;
    gnd_chk.SetPos(&sp88);
    sp88.y = dComIfG_Bgsp().GroundCross(&gnd_chk);

    if ((a_this->current.pos.y - sp88.y) > 300.0f) {
        return TRUE;
    }

    return FALSE;
}

/* 8070F08C-8070FBEC 004A6C 0B60+00 2/1 0/0 0/0 .text            e_mf_damage__FP10e_mf_class */
static void e_mf_damage(e_mf_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    cXyz sp34, sp40;

    if (a_this->health <= 0) {
        fopAcM_OffStatus(a_this, 0);
        a_this->attention_info.flags = 0;
    }

    if (daPy_py_c::checkNowWolf() != 0) {
        if (i_this->field_0x6d3 == 0 && a_this->checkWolfDownStartFlg()) {
            if (i_this->field_0x6c0[0] > 40) {
                i_this->field_0x6c0[0] = 90;
                OS_REPORT("      DN WOLFHIT LONG  \n");
            } else if (i_this->field_0x6c0[0] > 20) {
                i_this->field_0x6c0[0] = 70;
                OS_REPORT("      DN WOLFHIT MID  \n");
            } else {
                i_this->field_0x6c0[0] = 50;
                OS_REPORT("      DN WOLFHIT SHORT \n");
            }

            i_this->field_0x5b4 = 30;
            i_this->field_0x6d3 = 1;
            i_this->field_0x6c0[1] = l_HIO.field_0x20 + 1;
        }
    } else if (i_this != NULL && a_this->checkCutDownHitFlg()) {
        a_this->offCutDownHitFlg();
        i_this->field_0x5b4 = 3;
        a_this->health = 0;
        i_this->field_0x6c0[0] = 100;
        i_this->field_0x6c0[1] = 46;
        a_this->offDownFlg();
        a_this->health = 0;
        i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_DEATH, -1);
        i_this->field_0x6a4 = 1;
        daPy_getPlayerActorClass()->onEnemyDead();
        i_this->field_0x7ec = 15;
    }

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 9, 3.0f, 0, 1.0f);
            i_this->field_0x5b4 = 1;
            a_this->speedF = 0.0f;
            i_this->field_0x7c8 = 8000.0f;

            if (a_this->health <= 0) {
                i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_DEATH, -1);
                i_this->field_0x6a4 = 1;
                daPy_getPlayerActorClass()->onEnemyDead();
            } else {
                i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_DAMAGE2, -1);
            }

            i_this->field_0x6c0[0] = 0;
            break;

        case 1:
            if (i_this->mObjAcch.ChkWallHit() != 0 && i_this->field_0x6c0[0] == 0) {
                int iVar1 = kado_check(i_this);
                if (iVar1 != 0) {
                    OS_REPORT("              ..KADO KABE ..%x\n", iVar1);
                    if (iVar1 == 2) {
                        i_this->field_0x6ee = 0xC00;
                        i_this->field_0x704.y += -7000;
                    } else {
                        i_this->field_0x6ee = -0xC00;
                        i_this->field_0x704.y += 7000;
                    }

                    i_this->field_0x7c8 = 8000.0f;
                    i_this->field_0x734 = 100.0f;
                    i_this->field_0x73c = 100.0f;
                    i_this->field_0x808 = 40;
                    i_this->field_0x6c0[0] = 60;
                } else {
                    i_this->field_0x5b4 = 10;
                    a_this->speed.y = 0.0f;
                    i_this->field_0x6e4 *= 0.2f;
                    i_this->field_0x704.y += 0x8000;
                    i_this->field_0x7c8 = 8000.0f;
                    i_this->field_0x820 = 5;
                    i_this->field_0x734 = 100.0f;
                    i_this->field_0x73c = 100.0f;
                    i_this->field_0x808 = 40;
                    i_this->field_0x6ee = 0;
                }
            } else {
                cLib_addCalcAngleS2(&i_this->field_0x704.x, -0x4000, 1, 0x300);
                a_this->current.angle.y += i_this->field_0x6ee;
                a_this->shape_angle.y = a_this->current.angle.y;

                if (i_this->field_0x704.x <= -0x3000 && i_this->mObjAcch.ChkGroundHit()) {
                    i_this->field_0x5b4 = 2;
                    i_this->field_0x716 = 10;
                    i_this->mSound.startCreatureSound(Z2SE_CM_BODYFALL_L, 0, -1);

                    if (i_this->field_0x717 == 0) {
                        anm_init(i_this, 13, 5.0f, 0, 1.0f);
                    } else {
                        anm_init(i_this, 15, 5.0f, 0, 1.0f);
                    }

                    if (i_this->field_0x6f0 != 0) {
                        i_this->field_0x6e4 = 0.0f;
                        i_this->field_0x7c8 = 2000.0f;
                    } else {
                        if (i_this->field_0x717 == 0) {
                            i_this->field_0x734 = -100.0f;
                            i_this->field_0x73c = -100.0f;
                        } else {
                            i_this->field_0x734 = 100.0f;
                            i_this->field_0x73c = 100.0f;
                        }

                        i_this->field_0x738 = -0x5000;
                        i_this->field_0x740 = -0x4000;
                        i_this->field_0x808 = 40;
                        i_this->field_0x6e4 *= 0.5f;
                        a_this->speed.y = 20.0f;
                        i_this->field_0x6ee /= 2;
                        a_this->current.angle.y = i_this->field_0x704.y;
                        i_this->field_0x7c8 = 8000.0f;

                        MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(2), *calc_mtx);
                        sp34.set(0.0f, 0.0f, 0.0f);
                        MtxPosition(&sp34, &sp40);

                        fopAcM_effSmokeSet1(&i_this->field_0x10bc, &i_this->field_0x10c0, &sp40, NULL, 1.8f, &a_this->tevStr, 1);
                    }
                }
            }
            break;

        case 2:
            a_this->current.angle.y += i_this->field_0x6ee;
            a_this->shape_angle.y = a_this->current.angle.y;
            cLib_addCalcAngleS2(&i_this->field_0x704.x, -0x4000, 1, 0x300);

            if (i_this->mObjAcch.ChkGroundHit()) {
                if (a_this->health > 0 && daPy_py_c::checkNowWolf() == 0) {
                    a_this->onDownFlg();
                }

                dKy_Sound_set(a_this->current.pos, 100, fopAcM_GetID(a_this), 5);
                i_this->field_0x716 = 10;

                if (i_this->field_0x717 == 0) {
                    anm_init(i_this, 13, 3.0f, 0, 1.0f);
                } else {
                    anm_init(i_this, 15, 3.0f, 0, 1.0f);
                }

                i_this->field_0x6e4 = 0.0f;
                i_this->field_0x704.x = -0x4000;

                for (int i = 0; i < 4; i++) {
                    i_this->field_0x7e2[i] = cM_rndF(10.0f);
                }

                a_this->current.angle.y = i_this->field_0x704.y;
                if (daPy_py_c::checkNowWolf() != 0) {
                    i_this->field_0x6c0[0] = 80;
                    i_this->field_0x6c0[1] = 55;
                } else {
                    if (a_this->health <= 0) {
                        i_this->field_0x6c0[0] = 60;
                    } else {
                        i_this->field_0x6c0[0] = 5;
                    }
                    i_this->field_0x6c0[1] = 35;
                }

                i_this->field_0x5b4 = 3;
                i_this->field_0x7c8 = 1500.0f;

                MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(2), *calc_mtx);
                sp34.set(0.0f, 0.0f, 0.0f);
                MtxPosition(&sp34, &sp40);

                fopAcM_effSmokeSet1(&i_this->field_0x10bc, &i_this->field_0x10c0, &sp40, NULL, 1.0f, &a_this->tevStr, 1);
            }
            break;

        case 3:
            if (body_gake(i_this)) {
                i_this->field_0x6e4 = -20.0f;
                i_this->field_0x704.x -= 0x300;
            }

            if (a_this->health <= 0 && i_this->field_0x6c0[1] == 0) {
                MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(2), *calc_mtx);
                sp34.set(0.0f, 0.0f, 0.0f);
                MtxPosition(&sp34, &sp40);

                mf_disappear(i_this);
                fopAcM_delete(a_this);
                return;
            }

            if (daPy_getPlayerActorClass()->getCutType() != daPy_py_c::CUT_TYPE_DOWN && i_this->field_0x6c0[0] == 0) {
                i_this->field_0x5b4 = 20;
                if (i_this->field_0x717 == 0) {
                    anm_init(i_this, 14, 3.0f, 0, 1.0f);
                } else {
                    anm_init(i_this, 16, 3.0f, 0, 1.0f);
                }

                i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_UP, -1);

                if (i_this != NULL) {
                    a_this->offDownFlg();
                }
            }
            break;

        case 10:
            if (i_this->field_0x820 != 0) {
                cLib_addCalcAngleS2(&i_this->field_0x704.x, 0, 1, 0x300);
            } else {
                cLib_addCalcAngleS2(&i_this->field_0x704.x, -0x4000, 1, 0x800);
                if (i_this->mObjAcch.ChkGroundHit()) {
                    i_this->field_0x5b4 = 2;
                    if (i_this->field_0x717 == 0) {
                        i_this->field_0x734 = -100.0f;
                        i_this->field_0x73c = -100.0f;
                    } else {
                        i_this->field_0x734 = 100.0f;
                        i_this->field_0x73c = 100.0f;
                    }

                    i_this->field_0x738 = -0x5000;
                    i_this->field_0x740 = -0x4000;
                    i_this->field_0x6e4 *= 0.5f;
                    a_this->speed.y = 20.0f;
                    a_this->current.angle.y = i_this->field_0x704.y;
                    i_this->field_0x7c8 = 8000.0f;
                }
            }
            break;

        case 20:
            if (i_this->mpModelMorf->getFrame() >= 35.0f) {
                i_this->field_0x710.z = 0;
                i_this->field_0x710.x = 0;
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->field_0x704.y = 0;
                i_this->field_0x704.x = 0;
                anm_init(i_this, 31, 0.0f, 2, 1.0f);
                i_this->field_0x6c0[0] = 5;
                i_this->field_0x5b4 = 21;

                if (i_this != NULL) {
                    a_this->offDownFlg();
                }
            }
            break;

        case 21:
        case 22:
            i_this->field_0x6c8 = 0;
            if (i_this->field_0x6c0[0] == 0) {
                if (i_this->mPlayerDistance < 300.0f) {
                    i_this->mAction = 6;
                    i_this->field_0x5b4 = 0;
                } else {
                    i_this->mAction = 3;
                    i_this->field_0x5b4 = 0;
                }
            }
            break;

        case 30:
            if (!a_this->checkWolfDownPullFlg()) {
                i_this->field_0x6c0[1] = 0;
            }

            if (i_this->field_0x6c0[0] == 0) {
                i_this->field_0x5b4 = 31;
                if (i_this->field_0x717 == 0) {
                    anm_init(i_this, 10, 3.0f, 0, 1.0f);
                } else {
                    anm_init(i_this, 11, 3.0f, 0, 1.0f);
                }

                i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_UP, -1);
                i_this->field_0x6c0[0] = 10;
            } else if (i_this->field_0x6c0[1] == 1) {
                a_this->onWolfDownPullEndFlg();
                a_this->offCutDownHitFlg();
                a_this->health = 0;
                i_this->field_0x6c0[0] = 1000;
                i_this->field_0x6c0[1] = 35;
                i_this->field_0x5b4 = 3;
            }
            break;

        case 31:
            if (i_this->field_0x6c0[0] == 0) {
                a_this->offDownFlg();
                i_this->field_0x5b4 = 20;
                i_this->field_0x6d3 = 0;
            }
    }

    if (i_this != NULL && a_this->checkDownFlg()) {
        i_this->field_0x6d2 = 0;
    }

    if (i_this->field_0x7ec != 0) {
        i_this->field_0x7ec--;
        i_this->field_0x7ea = i_this->field_0x7ec * cM_ssin(i_this->field_0x7ec * 0x3800) * 100.0f;
    }
}

/* 8070FBEC-8070FD40 0055CC 0154+00 1/1 0/0 0/0 .text            e_mf_backdrop__FP10e_mf_class */
static void e_mf_backdrop(e_mf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;

    switch (i_this->field_0x5b4) {
        case 0:
            anm_init(i_this, 18, 3.0f, 0, 0.5f);
            i_this->field_0x5b4 = 1;
            i_this->field_0x704.y = a_this->shape_angle.y;
            i_this->field_0x704.x = 0;
            a_this->speedF = -3.0f;
            i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_DEATH, -1);
            // fallthrough
        case 1:
            if (i_this->field_0x704.x < -0x4000) {
                a_this->speedF = -6.0f;
            }

            if (a_this->speed.y < -20.0f) {
                i_this->field_0x5b4 = 2;
                a_this->speedF = 0.0f;
            }
            // fallthrough
        case 2:
            cLib_addCalcAngleS2(&i_this->field_0x704.x, -0x7000, 2, 0x800);
            if (i_this->field_0x5b4 == 2 && a_this->current.pos.y <= (i_this->mObjAcch.GetGroundH() + 100.0f)) {
                a_this->current.pos.y = i_this->mObjAcch.GetGroundH() + 100.0f;
                i_this->field_0x704.x = -0x4000;
                i_this->mAction = 21;
                i_this->field_0x5b4 = 0;
                i_this->field_0x6e4 = 0.0f;
                a_this->health = 0;
            }
    }
}

/* 8070FD40-8070FEE0 005720 01A0+00 1/1 0/0 0/0 .text            e_mf_water__FP10e_mf_class */
static void e_mf_water(e_mf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    cXyz sp20, sp2c, sp38;

    MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(2), *calc_mtx);
    sp20.set(0.0f, 0.0f, 0.0f);
    MtxPosition(&sp20, &sp2c);

    i_this->field_0x6c8 = 10;
    switch (i_this->field_0x5b4) {
        case 0:
        case 1:
            a_this->speed.y = 0.0f;
            if (i_this->field_0x717 == 0) {
                anm_init(i_this, 19, 3.0f, 2, 1.0f);
            } else {
                anm_init(i_this, 20, 3.0f, 2, 1.0f);
            }

            i_this->field_0x6c0[0] = 60;
            a_this->speedF = 0.0f;
            i_this->field_0x6e4 = 0.0f;
            i_this->field_0x6e8 = 0.0f;

            sp38 = a_this->current.pos;
            sp38.y = i_this->field_0xa3c;
            if (i_this->field_0x5b4 == 0) {
                fopKyM_createWpillar(&sp38, 1.5f, 0);
            } else {
                fopKyM_createMpillar(&sp38, 1.0f);
            }

            i_this->field_0x5b4 = 10;
            break;

        case 10:
            a_this->speed.y = 0.0f;
            cLib_addCalc2(&a_this->current.pos.y, i_this->field_0xa3c, 0.5f, 5.0f);
            cLib_addCalcAngleS2(&i_this->field_0x704.x, -0x4000, 4, 0x400);

            if (i_this->field_0x6c0[0] == 0) {
                mf_disappear(i_this);
            }
    }
}

/* 8070FEE0-8070FF98 0058C0 00B8+00 1/1 0/0 0/0 .text            wolfkick_damage__FP10e_mf_class */
static void wolfkick_damage(e_mf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    i_this->field_0x730 = (a_this->shape_angle.y - 0x8000) - i_this->mAtInfo.mHitDirection.y;
    i_this->field_0x72c = 150.0f;
    i_this->mAction = 21;
    i_this->field_0x5b4 = 0;
    i_this->field_0x704.y = player->shape_angle.y + 0x8000;
    a_this->speed.y = 0.0f;
    i_this->field_0x6e4 = -1.0f;
    i_this->field_0x808 = 50;
    i_this->mSound.startCollisionSE(Z2SE_HIT_WOOD_WEAPON, 31);
    i_this->field_0x6f0 = 1;
}

/* 8070FF98-807100A8 005978 0110+00 1/1 0/0 0/0 .text            big_damage__FP10e_mf_class */
static void big_damage(e_mf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;

    i_this->field_0x730 = (a_this->shape_angle.y - 0x8000) - i_this->mAtInfo.mHitDirection.y;
    i_this->field_0x72c = 150.0f;
    i_this->mAction = 21;
    i_this->field_0x5b4 = 0;
    i_this->field_0x704.y = i_this->mAtInfo.mHitDirection.y;
    a_this->speed.y = cM_rndF(10.0f) + 25.0f;
    i_this->field_0x6e4 = -20.0f;
    i_this->field_0x808 = 50;
    if ((i_this->mAtInfo.mHitBit & 0x80) != 0) {
        OS_REPORT("SPIN CUT HIT !!\n");
        i_this->field_0x6ee = cM_rndFX(800.0f) + 3000.0f;
    } else if ((i_this->mAtInfo.mHitBit & 0x800) != 0) {
        OS_REPORT("SPIN CUT L HIT !!\n");
        i_this->field_0x6ee = -(cM_rndFX(800.0f) + 3000.0f);
    } else {
        i_this->field_0x6ee = cM_rndFX(700.0f);
    }

    i_this->field_0x6f0 = 0;
}

/* 807100A8-80710158 005A88 00B0+00 1/1 0/0 0/0 .text            small_damage__FP10e_mf_class */
static void small_damage(e_mf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;

    i_this->mAction = 20;
    i_this->field_0x5b4 = 0;
    i_this->field_0x808 = 50;
    i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_DAMAGE, -1);

    if (i_this->field_0x80e != 0) {
        a_this->current.angle.y = a_this->shape_angle.y;
    }

    i_this->field_0x730 = (a_this->shape_angle.y - 0x8000) - i_this->mAtInfo.mHitDirection.y;
    i_this->field_0x72c = 150.0f;
    i_this->field_0x6e8 = 25.0f;
    i_this->field_0x6ec = i_this->mAtInfo.mHitDirection.y;
}

/* 80710158-807104EC 005B38 0394+00 1/1 0/0 0/0 .text            damage_check__FP10e_mf_class */
static void damage_check(e_mf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);

    i_this->mStts.Move();

    if (i_this->field_0x6c8 == 0) {
        fopEn_enemy_c* mf_p = (fopEn_enemy_c*)i_this;
        if (l_HIO.invulnerable != 0) {
            a_this->health = 100;
        }

        for (int i = 0; i <= 2; i++) {
            if (i_this->field_0xa7c[i].ChkTgHit() != 0) {
                i_this->mAtInfo.mpCollider = i_this->field_0xa7c[i].GetTgHitObj();
                if (player->getCutType() != daPy_py_c::CUT_TYPE_WOLF_B_LEFT && player->getCutType() != daPy_py_c::CUT_TYPE_WOLF_B_RIGHT &&
                    i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_WOLF_ATTACK) != 0) {
                    if (!player->onWolfEnemyHangBite(mf_p)) {
                        return;
                    }

                    OS_REPORT("DN PL BITE HANG \n");
                    i_this->mAction = 13;
                    i_this->field_0x5b4 = 0;
                    i_this->field_0x6c8 = 1000;
                    i_this->mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 31);
                    return;
                }

                i_this->field_0x10ba = 3;
                if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_10000000) != 0) {
                    wolfkick_damage(i_this);
                    i_this->field_0x6c8 = 1000;
                } else {
                    at_power_check(&i_this->mAtInfo);
                    s16 sVar1 = a_this->health;
                    cc_at_check(a_this, &i_this->mAtInfo);

                    if (daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_HEAD_JUMP) {
                        i_this->mAtInfo.mHitStatus = 0;
                    }

                    if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_UNK) != 0) {
                        i_this->field_0x6c8 = 20;
                    } else {
                        i_this->field_0x6c8 = 10;
                    }

                    if (i_this->mAtInfo.mAttackPower <= 1) {
                        i_this->field_0x6c8 = 10;
                    }

                    i_this->field_0x724 |= i_this->mAtInfo.mHitBit;
                    if (i_this->mAtInfo.mHitType == 16 || i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT) != 0) {
                        a_this->health = sVar1;
                        i_this->mAction = 12;
                        i_this->field_0x5b4 = 0;

                        if (i_this->field_0x80e != 0) {
                            a_this->current.angle.y = a_this->shape_angle.y;
                        }

                        i_this->field_0x730 = (a_this->shape_angle.y - 0x8000) - i_this->mAtInfo.mHitDirection.y;
                        i_this->field_0x72c = 100.0f;
                        i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_DAMAGE, -1);
                    } else {
                        if (daPy_getPlayerActorClass()->checkHorseRide() != 0 && dComIfGp_getHorseActor()->speedF >= 20.0f && i_this->mAtInfo.mHitType == 1) {
                            i_this->mAtInfo.mAttackPower = 20;
                            if (cM_rndF(1.0f) < 0.5f) {
                                i_this->mAtInfo.mHitBit |= 0x80;
                            } else {
                                i_this->mAtInfo.mHitBit |= 0x800;
                            }
                        }

                        if (a_this->health <= 0 || i_this->mAtInfo.mHitStatus != 0) {
                            if (player->getCutType() == daPy_py_c::CUT_TYPE_JUMP && player->checkCutJumpCancelTurn()) {
                                small_damage(i_this);
                                i_this->field_0x6c8 = 3;
                            } else {
                                big_damage(i_this);
                                i_this->field_0x6c8 = 1000;
                            }
                        } else {
                            small_damage(i_this);
                        }

                        a_this->speedF = 0.0f;
                    }
                }
                break;
            }
        }

        for (int i = 0; i < 3; i++) {
            if (a_this->health <= 1) {
                i_this->field_0xa7c[i].SetTgHitMark((CcG_Tg_HitMark)3);
            }
        }
    }
}

/* 807104EC-807119BC 005ECC 14D0+00 2/1 0/0 0/0 .text            action__FP10e_mf_class */
static void action(e_mf_class* i_this) {
    // NONMATCHING
    static s16 j_spd[11] = {
        0x4000, 0x4000, 0x4000,
        0x1000, 0x1000, 0x1000,
        0x1000, 0x4000, 0x4000,
        0x4000, 0x4000
    };

    fopEn_enemy_c* a_this = (fopEn_enemy_c*)i_this;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz sp240, sp24c;

    i_this->field_0x6d4 = 0;
    i_this->mPlayerDistance = fopAcM_searchPlayerDistanceXZ(a_this);
    i_this->mYAngleToPlayer = fopAcM_searchPlayerAngleY(a_this);
    i_this->mXAngleToPlayer = fopAcM_searchPlayerAngleX(a_this);
    damage_check(i_this);
    i_this->field_0x80e = 0;

    bool bVar1 = false;
    bool bVar2 = true;
    a_this->offHeadLockFlg();
    if (!fopAcM_otherBgCheck(player, a_this)) {
        fopAcM_OnStatus(a_this, 0);
        a_this->attention_info.flags = 4;
    } else {
        fopAcM_OffStatus(a_this, 0);
        a_this->attention_info.flags = 0;
    }

    switch (i_this->mAction) {
        case 0:
            e_mf_normal(i_this);
            break;

        case 3:
            e_mf_fight_run(i_this);
            bVar1 = true;
            break;

        case 5:
            e_mf_attack(i_this);
            bVar1 = true;
            break;

        case 6:
            e_mf_tail_attack(i_this);
            bVar1 = true;
            break;

        case 7:
            e_mf_guard(i_this);
            bVar1 = true;
            break;

        case 8:
            e_mf_jump(i_this);
            bVar1 = true;
            break;

        case 9:
            e_mf_stay(i_this);
            break;

        case 10:
            e_mf_otoreac(i_this);
            break;

        case 11:
            e_mf_bomb_action(i_this);
            break;

        case 12:
            e_mf_drawback(i_this);
            bVar1 = true;
            break;

        case 13:
            e_mf_wolfbite(i_this);
            break;

        case 20:
            e_mf_s_damage(i_this);
            break;

        case 21:
            e_mf_damage(i_this);
            break;

        case 23:
            e_mf_backdrop(i_this);
            break;

        case 24:
            e_mf_water(i_this);
            bVar2 = false;
            break;

        case 25:
            e_mf_gakejump(i_this);
            bVar1 = true;
    }

    f32 fVar1;
    if (bVar2) {
        dBgS_ObjGndChk gnd_chk;
        dBgS_ObjGndChk_Spl spl_chk;
        sp240 = a_this->current.pos;
        sp240.y += 150.0f;
        spl_chk.SetPos(&sp240);
        gnd_chk.SetPos(&sp240);
        i_this->field_0xa3c = dComIfG_Bgsp().GroundCross(&spl_chk);
        if (a_this->current.pos.y < i_this->field_0xa3c && (i_this->field_0xa3c - dComIfG_Bgsp().GroundCross(&gnd_chk)) > 100.0f) {
            OS_REPORT("DN YOGAN \n");
            i_this->mAction = 24;
            if (dComIfG_Bgsp().GetPolyAtt0(spl_chk) == 6) {
                i_this->field_0x5b4 = 1;
            } else {
                i_this->field_0x5b4 = 0;
            }

            a_this->current.pos.y = i_this->field_0xa3c;
        }
    }

    if (bVar1) {
        i_this->mSound.setLinkSearch(true);
    } else {
        i_this->mSound.setLinkSearch(false);
    }

    if (i_this->field_0x80e == 0) {
        cLib_addCalcAngleS2(&a_this->shape_angle.y, a_this->current.angle.y, 2, 0x2000);
    }

    cLib_addCalcAngleS2(&a_this->shape_angle.x, a_this->current.angle.x, 2, 0x2000);
    cLib_addCalcAngleS2(&a_this->shape_angle.z, a_this->current.angle.z, 2, 0x2000);

    if (i_this->field_0x5d8 == 0) {
        cLib_addCalc0(&i_this->field_0x700, 1.0f, 30.0f);

        if (i_this->field_0x6e4 == 0.0f) {
            cMtx_YrotS(*calc_mtx, a_this->current.angle.y);
            sp240.z = a_this->speedF;
        } else {
            cMtx_YrotS(*calc_mtx, i_this->field_0x704.y);
            if (i_this->field_0x820 == 0) {
                sp240.z = i_this->field_0x6e4;
            } else {
                sp240.z = 0.0f;
                a_this->speed.y = 0.0f;
            }

            a_this->gravity = 0.0f;
        }
        sp240.x = 0.0f;
        sp240.y = 0.0f;
        MtxPosition(&sp240, &sp24c);

        a_this->speed.x = sp24c.x;
        a_this->speed.z = sp24c.z;
        a_this->speed.y += a_this->gravity;
        a_this->current.pos += a_this->speed;
        a_this->gravity = -5.0f;

        if (a_this->speed.y < -100.0f) {
            a_this->speed.y = -100.0f;
        }

        if (i_this->mAction != 9 && i_this->field_0x6d2 != 0) {
            cXyz* move_pos = i_this->mStts.GetCCMoveP();
            if (move_pos != NULL) {
                a_this->current.pos.x += move_pos->x;
                a_this->current.pos.z += move_pos->z;
            }
        }

        if (i_this->field_0x6e8 > 0.1f) {
            sp240.x = 0.0f;
            sp240.y = 0.0f;
            sp240.z = -i_this->field_0x6e8;
            cMtx_YrotS(*calc_mtx, i_this->field_0x6ec);
            MtxPosition(&sp240, &sp24c);
            a_this->current.pos += sp24c;
            cLib_addCalc0(&i_this->field_0x6e8, 1.0f, 7.0f);
        }
    } else {
        cMtx_YrotS(*calc_mtx, i_this->field_0x5d4);
        cMtx_XrotM(*calc_mtx, i_this->field_0x5d6);
        sp240.x = 0.0f;
        sp240.y = 0.0f;
        sp240.z = a_this->speedF;
        MtxPosition(&sp240, &sp24c);
        a_this->current.pos += sp24c;
        sp240 = i_this->field_0x5bc - i_this->field_0x5c8;
        fVar1 = sp240.abs();
        sp240 = i_this->field_0x5bc - a_this->current.pos;
        f32 fVar2 = sp240.abs();
        f32 fVar3 = fVar1 * 0.3f;

        if (fVar3 > 250.0f) {
            fVar3 = 250.0f;
        }

        i_this->field_0x700 = fVar3 * cM_ssin((fVar2 / fVar1) * 32768.0f);
        i_this->field_0x5d8 = 0;
    }

    s16 sVar1 = 0x800;
    if (i_this->field_0x6e0 != 0) {
        i_this->field_0x6e0--;
        i_this->field_0x6d4 = 2;cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);

        if (i_this->field_0x6e1 == 0) {
            sp240.x = -100.0f;
        } else {
            sp240.x = 100.0f;
        }
        sp240.y = 100.0f;
        sp240.z = -100.0f;
        MtxPosition(&sp240, &i_this->field_0x718);
        i_this->field_0x718 += a_this->current.pos;
        sVar1 = 0x400;
    }

    if (i_this->field_0x6d4 == 0) {
        cLib_addCalcAngleS2(&i_this->field_0x6d6, 0, 2, sVar1);
        cLib_addCalcAngleS2(&i_this->field_0x6d8, 0, 2, sVar1);
        i_this->field_0x6dc = 0;
    } else {
        if (i_this->field_0x6d4 == 5) {
            if ((i_this->field_0x6ac & 15) == 0 && cM_rndF(1.0f) < 0.3f) {
                i_this->field_0x6dc = cM_rndFX(2500.0f);
            }
        } else {
            if (i_this->field_0x6d4 == 1) {
                sp240 = player->eyePos - a_this->current.pos;
            } else if (i_this->field_0x6d4 == 2) {
                sp240 = i_this->field_0x718 - a_this->current.pos;
            } else {
                sp240 = player->eyePos - a_this->current.pos;
            }
            sp240.y += l_HIO.base_size * -150.0f;

            s16 sVar2 = cM_atan2s(sp240.x, sp240.z) - a_this->shape_angle.y;
            s16 sVar3 = a_this->shape_angle.x + cM_atan2s(sp240.y, JMAFastSqrt(sp240.x * sp240.x + sp240.z * sp240.z));
            if (sVar2 < 0x2711) {
                if (sVar2 < -10000) {
                    sVar2 = -10000;
                }
            } else {
                sVar2 = 10000;
            }

            if (sVar3 < 0x2711) {
                if (sVar3 < -20000) {
                    sVar3 = -20000;
                }
            } else {
                sVar3 = 10000;
            }

            cLib_addCalcAngleS2(&i_this->field_0x6d6, sVar2 / 2, 2, sVar1);
            cLib_addCalcAngleS2(&i_this->field_0x6d8, sVar3 / 2, 2, sVar1);
        }

        i_this->field_0x6dc = 0;
    }

    cLib_addCalcAngleS2(&i_this->field_0x6da, i_this->field_0x6dc, 4, 0x400);

    if (i_this->field_0x6de != 0) {
        i_this->field_0x6de--;
        i_this->field_0x6da = i_this->field_0x6de * cM_ssin(i_this->field_0x6de * 1200) * 200.0f;
    }

    if (i_this->field_0x72c > 1.0f) {
        cMtx_YrotS(*calc_mtx, i_this->field_0x730);
        sp240.x = 0.0f;
        sp240.y = 0.0f;
        sp240.z = i_this->field_0x72c * 120.0f;
        if (sp240.z > 15000.0f) {
            sp240.z = 15000.0f;
        }
        MtxPosition(&sp240, &sp24c);
        
        i_this->field_0x784[0].y = sp24c.x;
        i_this->field_0x784[0].x = sp24c.z;
        i_this->field_0x784[1].y = sp24c.x;
        i_this->field_0x784[1].x = sp24c.z;
        cLib_addCalc0(&i_this->field_0x72c, 0.5f, 10.0f);
    }

    if (fabsf(i_this->field_0x73c) > 1.0f) {
        i_this->field_0x784[1].x = i_this->field_0x73c * cM_scos(i_this->field_0x740) * 70.0f;
        i_this->field_0x784[2].x += i_this->field_0x784[1].x;
        cLib_addCalc0(&i_this->field_0x73c, 1.0f, 3.0f);
        i_this->field_0x740 += 4000;
    }

    if (fabsf(i_this->field_0x734) > 1.0f) {
        i_this->field_0x784[0].x = i_this->field_0x734 * cM_scos(i_this->field_0x738) * 70.0f;
        cLib_addCalc0(&i_this->field_0x734, 1.0f, 3.0f);
        i_this->field_0x738 += 4000;
    }

    if (a_this->speed.y < 0.0f && i_this->mObjAcch.ChkGroundHit()) {
        cLib_addCalc0(&i_this->field_0x73c, 1.0f, 30.0f);
        cLib_addCalc0(&i_this->field_0x734, 1.0f, 30.0f);
    }

    if (i_this->field_0x6e4 != 0.0f) {
        s16 sVar4 = i_this->field_0x704.y - a_this->shape_angle.y;
        i_this->field_0x784[3].y = 0x4000 - sVar4;
        if (i_this->field_0x784[3].y < 0x1771) {
            if (i_this->field_0x784[3].y < -9000) {
                i_this->field_0x784[3].y = -9000;
            }
        } else {
            i_this->field_0x784[3].y = 6000;
        }

        i_this->field_0x784[4].y = 0x4000 - sVar4;
        if (i_this->field_0x784[4].y < 0x4269) {
            if (i_this->field_0x784[4].y < 0) {
                i_this->field_0x784[4].y = 0;
            }
        } else {
            i_this->field_0x784[4].y = 17000;
        }

        i_this->field_0x784[5].y = sVar4 + 0x4000;
        if (i_this->field_0x784[5].y < 0x1771) {
            if (i_this->field_0x784[5].y < -9000) {
                i_this->field_0x784[5].y = -9000;
            }
        } else {
            i_this->field_0x784[5].y = 6000;
        }

        i_this->field_0x784[6].y = sVar4 + 0x4000;
        if (i_this->field_0x784[6].y < 0x4269) {
            if (i_this->field_0x784[6].y < 0) {
                i_this->field_0x784[6].y = 0;
            }
        } else {
            i_this->field_0x784[6].y = 17000;
        }

        cMtx_YrotS(*calc_mtx, sVar4);
        sp240.x = 0.0f;
        sp240.y = 0.0f;
        sp240.z = 12000.0f;
        MtxPosition(&sp240, &sp24c);
        i_this->field_0x816.y = -sp24c.x;
        i_this->field_0x816.x = -sp24c.z * 1.3f;
        
        if (i_this->field_0x816.x > 10000) {
            i_this->field_0x816.x = 10000;
        }

        i_this->field_0x816.x += 6000;
    }

    for (int i = 0; i < 11; i++) {
        cLib_addCalcAngleS2(&i_this->field_0x742[i].x, i_this->field_0x784[i].x, 2, j_spd[i]);
        cLib_addCalcAngleS2(&i_this->field_0x742[i].y, i_this->field_0x784[i].y, 2, j_spd[i]);
        cLib_addCalcAngleS2(&i_this->field_0x742[i].z, i_this->field_0x784[i].z, 2, j_spd[i]);
        i_this->field_0x784[i].z = 0;
        i_this->field_0x784[i].x = 0;

        if (i < 3 || i > 6) {
            i_this->field_0x784[i].y = 0;
        } else if (i_this->field_0x7e2[i - 3] == 0) {
            s16 sVar5;
            if (i == 4 || i == 6) {
                sVar5 = 0x600;
            } else {
                sVar5 = 0x800;
            }

            cLib_addCalcAngleS2(&i_this->field_0x784[i].y, 0, 1, sVar5);
        } else {
            i_this->field_0x7e2[i - 6]--;
        }

        if (i > 2) {
            i_this->field_0x7e2[i - 2] = i_this->field_0x7c8 * cM_scos(i_this->field_0x6ac * 4000 + i * 20000);
        }
    }

    cLib_addCalc0(&i_this->field_0x7c8, 1.0f, 100.0f);
    cLib_addCalcAngleS2(&i_this->field_0x812, i_this->field_0x816.y, 2, 0x800);
    cLib_addCalcAngleS2(&i_this->field_0x810, i_this->field_0x816.x, 2, 0x800);
    i_this->field_0x816.x = 0;
    i_this->field_0x816.y = 0;
    if (i_this->field_0x808 != 0) {
        i_this->field_0x808--;
    }

    f32 fVar4 = i_this->field_0x808 * 1.0f;
    if (fVar4 > 30.0f) {
        fVar4 = 30.0f;
    }
    fVar1 = fVar4 * fVar4;

    for (int i = 0; i < 4; i++) {
        i_this->field_0x7ee[i].x = fVar1 * (cM_ssin(i_this->field_0x6ac * 5000 + i * -15000) * 5.0f);
        i_this->field_0x7ee[i].y = fVar1 * (cM_ssin(i_this->field_0x6ac * 0x12C0 + i * -13000) * 5.0f);
    }

    cLib_addCalcAngleS2(&i_this->field_0x806, 0, 4, 0x100);
    if (i_this->field_0x716 != 0) {
        i_this->field_0x716--;
        if (i_this->field_0x704.x != 0) {
            cXyz sp258, sp264, sp270;
            dBgS_GndChk gnd_chk2;
            s16 sVar6 = 0;
            s16 sVar7 = 0;
            fVar1 = 100.0f;

            MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(2), *calc_mtx);
            sp240.set(0.0f, 0.0f, 0.0f);
            MtxPosition(&sp240, &sp264);
            sp264.y += 100.0f + 100.0f;
            gnd_chk2.SetPos(&sp264);
            sp264.y = dComIfG_Bgsp().GroundCross(&gnd_chk2);

            if (sp264.y != -1000000000.0f) {
                sp258.x = sp264.x;
                sp258.y += 100.0f;
                sp258.z = sp264.z + fVar1;
                gnd_chk2.SetPos(&sp258);
                sp258.y = dComIfG_Bgsp().GroundCross(&gnd_chk2);

                if (sp258.y != -1000000000.0f) {
                    sVar7 = -cM_atan2s(sp258.y - sp264.y, sp258.z - sp264.z);
                    if (sVar7 > 0x3000 || sVar7 < -0x3000) {
                        sVar7 = 0;
                    }
                }

                sp258.x = sp264.x + fVar1;
                sp258.y += 100.0f;
                sp258.z = sp264.z;
                gnd_chk2.SetPos(&sp258);
                sp258.y = dComIfG_Bgsp().GroundCross(&gnd_chk2);
                if (sp258.y != -1000000000.0f) {
                    sVar6 = cM_atan2s(sp258.y - sp264.y, sp258.x - sp264.x);
                    if (sVar6 > 0x3000 || sVar6 < -0x3000) {
                        sVar6 = 0;
                    }
                }
            }

            dBgS_LinChk lin_chk;
            cXyz sp27c, sp288, sp294;
        }
    }
}

/* 807119BC-80711CB8 00739C 02FC+00 1/1 0/0 0/0 .text            anm_se_set__FP10e_mf_class */
static void anm_se_set(e_mf_class* i_this) {
    // NONMATCHING
}

/* 80713FC4-80713FC8 0000A4 0004+00 1/2 0/0 0/0 .bss             c_start */
static int c_start;

/* 80711CB8-80712998 007698 0CE0+00 2/1 0/0 0/0 .text            daE_MF_Execute__FP10e_mf_class */
static int daE_MF_Execute(e_mf_class* i_this) {
    // NONMATCHING
    fopEn_enemy_c* a_this = &i_this->actor;
    
    if (i_this->field_0x728 != 0) {
        return 1;
    }

    if (c_start == 0 && dComIfGp_event_runCheck() && 
        (fopAcM_getTalkEventPartner((fopAc_ac_c*)daPy_getLinkPlayerActorClass()) == daPy_py_c::getMidnaActor() || daPy_getPlayerActorClass()->eventInfo.checkCommandDoor())) {
        return 1;
    }

    cXyz sp2c;
    cXyz sp38;
    cXyz sp44;
    i_this->field_0x6ac++;
    for (int i = 0; i < 4; i++) {
        if (i_this->field_0x6c0[i] != 0) {
            i_this->field_0x6c0[i]--;
        }
    }

    if (i_this->field_0x6c8 != 0) {
        i_this->field_0x6c8--;
    }

    if (i_this->field_0x6cc != 0) {
        i_this->field_0x6cc--;
    }

    if (i_this->field_0x820 != 0) {
        i_this->field_0x820--;
    }

    if (i_this->field_0x6ca != 0) {
        i_this->field_0x6ca--;
    }

    i_this->field_0x6d2 = 1;
    action(i_this);

    if (i_this->field_0x820 == 0 && i_this->field_0x5d8 == 0) {
        if (i_this->field_0x6e4 != 0.0f) {
            cMtx_YrotS(*calc_mtx, i_this->field_0x704.y);
            sp2c.x = 0.0f;
            sp2c.y = 0.0f;
            sp2c.z = i_this->field_0x81c;
            MtxPosition(&sp2c, &sp38);
            a_this->current.pos += sp38;
            a_this->old.pos += sp38;
            cLib_addCalc2(&i_this->field_0x81c, i_this->field_0x6e4 * 2.0f, 1.0f, 5.0f);
        } else {
            cLib_addCalc0(&i_this->field_0x81c, 1.0f, 5.0f);
        }

        i_this->mObjAcch.CrrPos(dComIfG_Bgsp());
        if (i_this->field_0x6e4 != 0.0f) {
            a_this->current.pos -= sp38;
            a_this->old.pos -= sp38;
        }


        if (!i_this->mObjAcch.ChkGroundHit()) {
            if (a_this->speed.y < -10.0f) {
                i_this->field_0x822++;
                if (i_this->field_0x822 == 13) {
                    i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_DEATH, -1);
                }
            }
        } else {
            if (i_this->field_0x822 >= 13) {
                i_this->mAction = 21;
                i_this->field_0x5b4 = 0;
                a_this->speed.y = 0.0f;
                i_this->field_0x6e4 = -1.0;
                i_this->field_0x704.x = -0x3000;
                i_this->field_0x808 = 50;
                i_this->field_0x6c8 = 1000;
                a_this->health = 0;
            }

            i_this->field_0x822 = 0;
        }
    }

    mDoMtx_stack_c::transS(a_this->current.pos.x, a_this->current.pos.y + i_this->field_0x700, a_this->current.pos.z);
    mDoMtx_stack_c::XrotM(i_this->field_0x70a.x);
    mDoMtx_stack_c::ZrotM(i_this->field_0x70a.z);
    mDoMtx_stack_c::YrotM(i_this->field_0x704.y);
    mDoMtx_stack_c::XrotM(i_this->field_0x704.x);
    mDoMtx_stack_c::YrotM(-i_this->field_0x704.y);
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
    if (sp44.y < sp38.y) {
        i_this->field_0x717 = 0;
    }
    else {
        i_this->field_0x717 = 1;
    }

    cXyz sp50(0.0f, 0.0f, 0.0f);
    if (i_this->field_0x6c8 != 0) {
        sp50.set(-20000.0f, 200000.0f, 30000.0f);
    }

    MTXCopy(model->getAnmMtx(6), *calc_mtx);
    sp2c.set(30.0f, 30.0f, 0.0f);
    MtxPosition(&sp2c, &a_this->eyePos);
    cXyz sp5c;
    sp5c = a_this->eyePos + sp50;
    sp5c.y += 40.0f;
    i_this->field_0xa7c[0].SetC(sp5c);
    if (daPy_getPlayerActorClass()->checkHorseRide()) {
        i_this->field_0xa7c[0].SetR(50.0f);
    } else {
        i_this->field_0xa7c[0].SetR(70.0f);
    }
    
    a_this->attention_info.position = a_this->eyePos;
    a_this->attention_info.position.y += 70.0f;

    MTXCopy(model->getAnmMtx(1), *calc_mtx);
    sp2c.set(-30.0f, 0.0f, 0.0f);
    MtxPosition(&sp2c, &sp38);
    i_this->field_0xa7c[1].SetC(sp38 + sp50);
    i_this->field_0xa7c[1].SetR(45.0f);
    MTXCopy(model->getAnmMtx(2), *calc_mtx);
    sp2c.set(20.0f, 0.0f, 0.0f);
    MtxPosition(&sp2c, &sp38);
    i_this->field_0xa7c[2].SetC(sp38 + sp50);
    i_this->field_0xa7c[2].SetR(45.0f);

    for (int i = 0; i <= 2; i++) {
        if (i_this->field_0x6d2 != 0) {
            i_this->field_0xa7c[i].OnCoSetBit();
        } else {
            i_this->field_0xa7c[i].OffCoSetBit();
        }

        dComIfG_Ccsp()->Set(&i_this->field_0xa7c[i]);
    }

    MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(19), *calc_mtx);
    i_this->field_0x5e4->setBaseTRMtx(*calc_mtx);

    if (i_this->field_0x6cf != 0 && i_this->field_0x6ce <= 1) {
        sp2c.set(0.0f, 35.0f, 0.0f);
        MtxPosition(&sp2c, &sp38);
        if (i_this->field_0x6d0 == 0) {
            i_this->field_0x6d0 = 1;
            i_this->field_0xe24.StartCAt(sp38);
        } else {
            i_this->field_0xe24.MoveCAt(sp38);
        }

        if (i_this->field_0x6ce == 1) {
            i_this->field_0xe24.SetR(l_HIO.base_size * 80.0f);
        } else {
            i_this->field_0xe24.SetR(l_HIO.base_size * 60.0f);
        }
        i_this->field_0xe24.SetAtAtp(2);

        if (i_this->field_0x6c0[1] != 0) {
            i_this->field_0xe24.SetAtSpl((dCcG_At_Spl)1);
        } else {
            i_this->field_0xe24.SetAtSpl((dCcG_At_Spl)0);
        }
    }
    
    MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(12), *calc_mtx);
    i_this->field_0x68c->setBaseTRMtx(*calc_mtx);

    if (i_this->field_0x6cf != 0 && i_this->field_0x6ce == 2) {
        MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(34), *calc_mtx);
        sp2c.set(0.0f, 0.0f, 0.0f);
        MtxPosition(&sp2c, &sp38);

        if (i_this->field_0x6d0 == 0) {
            i_this->field_0x6d0 = 1;
            i_this->field_0xe24.StartCAt(sp38);
        }  else {
            i_this->field_0xe24.MoveCAt(sp38);
        }

        i_this->field_0xe24.SetR(70.0f * l_HIO.base_size);
        i_this->field_0xe24.SetAtAtp(3);
        i_this->field_0xe24.SetAtSpl((dCcG_At_Spl)10);
    }

    if (i_this->field_0x6cf == 0) {
        cXyz sp68(-23500.0f, -20000.0f, -50000.0f);
        i_this->field_0xe24.SetC(a_this->current.pos + sp68);
        i_this->field_0x6d0 = 0;
    } else {
        i_this->field_0x6cf = 0;
    }

    dComIfG_Ccsp()->Set(&i_this->field_0xe24);

    daPy_py_c* player;
    if (i_this->field_0x6d1 != 0 && i_this->field_0x6cc == 0) {
        player = (daPy_py_c*)dComIfGp_getPlayer(0);
        i_this->field_0x6c8 = 5;
        MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(12), *calc_mtx);
        sp2c.set(50.0f, 0.0f, 30.0f);
        MtxPosition(&sp2c, &sp38);
        i_this->field_0xf5c.SetC(sp38);
        i_this->field_0xf5c.SetR(70.0f * l_HIO.base_size);

        if (i_this->field_0xf5c.ChkTgHit()) {
            def_se_set(&i_this->mSound, i_this->field_0xf5c.GetTgHitObj(), 40, 0);
            dScnPly_c::setPauseTimer(l_HIO.field_0x1c);
            i_this->field_0x6cc = 10;
            cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
            sp2c.x = 0.0f;
            sp2c.y = 120.0f;
            sp2c.z = 50.0f;
            MtxPosition(&sp2c, &sp38);
            sp38 += a_this->current.pos;
            dComIfGp_setHitMark(2, NULL, &sp38, &a_this->shape_angle, NULL, 0);
            if (player->getIronBallCenterPos() != NULL) {
                i_this->mAction = 12;
                i_this->field_0x5b4 = 0;
                if (i_this->field_0x80e != 0) {
                    a_this->current.angle.y = a_this->shape_angle.y;
                }

                i_this->mSound.startCreatureVoice(Z2SE_EN_MF_V_DAMAGE, -1);
            }
        }
    } else {
        cXyz sp74(-23500.0f, -20000.0f, -30000.0f);
        i_this->field_0xf5c.SetC(a_this->current.pos + sp74);
    }

    i_this->field_0x6d1 = 0;
    dComIfG_Ccsp()->Set(&i_this->field_0xf5c);
    if (i_this->field_0x6a4 != 0) {
        cLib_addCalc2(&i_this->field_0x6a8, -20.0f, 1.0f, 0.4f);
    }
    player = (daPy_py_c*)dComIfGp_getPlayer(0);
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
    cXyz sp8c(1.5f, 1.5f, 1.5f);
    setMidnaBindEffect(a_this, &i_this->mSound, &a_this->eyePos, &sp8c);

    if ((a_this->current.pos.y - a_this->home.pos.y) < -5000.0f) {
        fopAcM_delete(a_this);
        OS_REPORT("MF NARAKU\n");
        int swBit = fopAcM_GetParam(a_this) >> 24;
        if (swBit != 0xFF) {
            dComIfGs_onSwitch(swBit, fopAcM_GetRoomNo(a_this));
        }
    }

    if (strcmp(dComIfGp_getStartStageName(), "D_MN07") == 0 && fopAcM_GetRoomNo(a_this) == 8 && a_this->health != 0 && a_this->current.pos.y <= -300.0f) {
        i_this->mAction = 21;
        i_this->field_0x5b4 = 0;
        i_this->field_0x6e4 = 0.0;
        a_this->health = 0;
    }

    return 1;
}

/* 80712998-807129A0 008378 0008+00 1/0 0/0 0/0 .text            daE_MF_IsDelete__FP10e_mf_class */
static int daE_MF_IsDelete(e_mf_class* i_this) {
    return 1;
}

/* 807129A0-80712A08 008380 0068+00 1/0 0/0 0/0 .text            daE_MF_Delete__FP10e_mf_class */
static int daE_MF_Delete(e_mf_class* i_this) {
    fopEn_enemy_c* a_this = &i_this->actor;
    dComIfG_resDelete(&i_this->mPhase, "E_mf");

    if (i_this->field_0x10b9 != 0) {
        data_80713F65 = 0;
    }

    if (a_this->heap != NULL) {
        i_this->mpModelMorf->stopZelAnime();
    }

    return 1;
}

/* 80712A08-80712BF0 0083E8 01E8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* a_this) {
    // NONMATCHING
    e_mf_class* i_this = (e_mf_class*)a_this;

    i_this->mpModelMorf = new mDoExt_McaMorfSO((J3DModelData*)dComIfG_getObjectRes("E_mf", 38), NULL, NULL,
                                               (J3DAnmTransform*)dComIfG_getObjectRes("E_mf", 31), 0, 1.0f,
                                               0, -1, &i_this->mSound, 0x80000, 0x11000084);
    if (i_this->mpModelMorf == NULL || i_this->mpModelMorf->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = i_this->mpModelMorf->getModel();
    model->setUserArea((u32)i_this);

    for (u16 i = 0; i < model->getModelData()->getJointNum(); i++) {
        model->getModelData()->getJointNodePointer(i)->setCallBack(nodeCallBack);
    }

    if (i_this->field_0x694.init(a_this, &jc_data[0], model, 12) == 0) {
        return 0;
    }

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("E_mf", 39);
    JUT_ASSERT(5274, modelData != 0);
    i_this->field_0x5e4 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (i_this->field_0x5e4 == NULL) {
        return 0;
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes("E_mf", 40);
    JUT_ASSERT(5286, modelData != 0);
    i_this->field_0x68c = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (i_this->field_0x68c == NULL) {
        return 0;
    }

    return 1;
}

/* 80712BF0-80712F20 0085D0 0330+00 1/0 0/0 0/0 .text            daE_MF_Create__FP10fopAc_ac_c */
static cPhs__Step daE_MF_Create(fopAc_ac_c* a_this) {
    // NONMATCHING
    e_mf_class* i_this = (e_mf_class*)a_this;

    fopAcM_SetupActor(a_this, e_mf_class);

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&i_this->mPhase, "E_mf");
    if (phase == cPhs_COMPLEATE_e) {
        int swBit = fopAcM_GetParam(a_this) >> 24;
        if (swBit != 0xFF) {
            if (dComIfGs_isSwitch(swBit, fopAcM_GetRoomNo(a_this))) {
                return cPhs_ERROR_e;
            }
        }

        OS_REPORT("E_mf PARAM %x\n", fopAcM_GetParam(a_this));
        i_this->field_0x5b6 = fopAcM_GetParam(a_this);
        i_this->field_0x5b9 = 1;
        i_this->field_0x5b7 = (fopAcM_GetParam(a_this) >> 8) & 15;
        i_this->field_0x5b8 = (fopAcM_GetParam(a_this) & 0xF000) >> 12;

        if ((a_this->home.angle.z & 0xFF) == 0 || (a_this->home.angle.z & 0xFF) == 0xFF) {
            i_this->field_0x6b8 = 100000.0f;
        } else {
            i_this->field_0x6b8 = (a_this->home.angle.z & 0xFF) * 100.0f;
        }

        OS_REPORT("E_mf AZ %x\n", a_this->home.angle.z);
        OS_REPORT("E_mf PR %d\n", i_this->field_0x6b8);
        a_this->shape_angle.z = 0;
        a_this->current.angle.z = 0;
        a_this->home.angle.z = 0;
        OS_REPORT("E_mf//////////////E_MF SET 1 !!\n");

        if (!fopAcM_entrySolidHeap(a_this, useHeapInit, 0x33E0)) {
            OS_REPORT("//////////////E_MF SET NON !!\n");
            return cPhs_ERROR_e;
        }

        if (data_80713F65 == 0) {
            i_this->field_0x10b9 = 1;
            data_80713F65 = 1;
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
        a_this->health = 200;
        a_this->field_0x560 = 200;
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
            i_this->field_0xa7c[i].Set(cc_sph_src);
            i_this->field_0xa7c[i].SetStts(&i_this->mStts);
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
        i_this->field_0xe24.Set(at_sph_src);
        i_this->field_0xe24.SetStts(&i_this->mStts);

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
        i_this->field_0xf5c.Set(tate_sph_src);
        i_this->field_0xf5c.SetStts(&i_this->mStts);

        i_this->field_0x6ac = (int)cM_rndF(65535.0f) & 0xFF00;

        if (i_this->field_0x5b6 == 0) {
            i_this->mAction = 9;
        }

        i_this->mSound.init(&a_this->current.pos, &a_this->eyePos, 3, 1);
        i_this->mSound.setEnemyName("E_mf");
        i_this->mAtInfo.mpSound = &i_this->mSound;

        if (strcmp(dComIfGp_getStartStageName(), "D_MN09") == 0) {
            fopAcM_OnStatus(a_this, fopAcM_STATUS_UNK_004000);
        }

        c_start = 1;
        daE_MF_Execute(i_this);
        c_start = 0;
    }

    return phase;
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

/* 80713924-80713960 009304 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

AUDIO_INSTANCES;

/* 80713AF4-80713AF4 000180 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 80713E34-80713E54 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_MF_Method */
static actor_method_class l_daE_MF_Method = {
    (process_method_func)daE_MF_Create,
    (process_method_func)daE_MF_Delete,
    (process_method_func)daE_MF_Execute,
    (process_method_func)daE_MF_IsDelete,
    (process_method_func)daE_MF_Draw,
};

/* 80713E54-80713E84 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_MF */
extern actor_process_profile_definition g_profile_E_MF = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_MF,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
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
