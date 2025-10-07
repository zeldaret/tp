/**
 * @file d_a_e_st.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_e_st.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_enemy.h"
#include "Z2AudioLib/Z2Instances.h"

class daE_ST_HIO_c : public JORReflexible {
public:
    /* 8079DDEC */ daE_ST_HIO_c();
    /* 807A61FC */ virtual ~daE_ST_HIO_c() {}

    void genMessage(JORMContext*);

    /* スタルチュラ - Skulltula */

    /* 0x04 */ s8 id;
    /* 0x08 */ f32 basic_size;          // 基本サイズ - Basic Size
    /* 0x0C */ f32 pl_recognize_dist;   // PL認識距離 - PL Recognition Distance
    /* 0x10 */ f32 combat_start_dist;   // 戦闘開始距離 - Combat Start Distance
    /* 0x14 */ s16 time_before_attack;  // 攻撃前間 - Time Before Attack
    /* 0x16 */ s16 down_time;           // ダウン時間 - Down Time
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ f32 field_0x20;
};

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

/* 807A6BC4-807A6C04 0001D8 0040+00 0/1 0/0 0/0 .data            at_sph_src$6888 */
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
    id = -1;
    basic_size = 1.7f;
    pl_recognize_dist = 1200.0f;
    combat_start_dist = 200.0f;
    time_before_attack = 0;
    down_time = 80;
    field_0x18 = 1.0f;
    field_0x1c = -0.5f;
    field_0x20 = -1.0f;
}

/* 8079DE4C-8079DEF8 00014C 00AC+00 22/22 0/0 0/0 .text            anm_init__FP10e_st_classifUcf */
static void anm_init(e_st_class* i_this, int i_index, f32 i_morf, u8 i_attr, f32 i_rate) {
    i_this->mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_st", i_index), i_attr, i_morf, i_rate, 0.0f, -1.0f);
    i_this->mAnm = i_index;
}

/* 8079DEF8-8079E1A4 0001F8 02AC+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        int jntNo = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        e_st_class* i_this = (e_st_class*)model->getUserArea();

        if (i_this != NULL) {
            MTXCopy(model->getAnmMtx(jntNo), *calc_mtx);

            if (jntNo >= 2 && jntNo <= 4) {
                cMtx_ZrotM(*calc_mtx, i_this->mStFeet[0].field_0x4[jntNo - 2]);
            } else if (jntNo >= 5 && jntNo <= 7) {
                cMtx_ZrotM(*calc_mtx, i_this->mStFeet[0].field_0x4[jntNo + 7]);
            } else if (jntNo >= 8 && jntNo <= 0xA) {
                cMtx_ZrotM(*calc_mtx, i_this->mStFeet[1].field_0x4[jntNo + 4]);
            } else if (jntNo >= 0xB && jntNo <= 0xD) {
                cMtx_ZrotM(*calc_mtx, i_this->mStFeet[2].field_0x4[jntNo + 1]);
            } else if (jntNo >= 0xE && jntNo <= 0x10) {
                cMtx_ZrotM(*calc_mtx, i_this->mStFeet[3].field_0x4[jntNo - 2]);
            } else if (jntNo >= 0x11 && jntNo <= 0x13) {
                cMtx_ZrotM(*calc_mtx, i_this->mStFeet[3].field_0x4[jntNo + 7]);
            } else if (jntNo >= 0x14 && jntNo <= 0x16) {
                cMtx_ZrotM(*calc_mtx, i_this->mStFeet[4].field_0x4[jntNo + 4]);
            } else if (jntNo >= 0x17 && jntNo <= 0x19) {
                cMtx_ZrotM(*calc_mtx, i_this->mStFeet[5].field_0x4[jntNo + 1]);
            }

            if (jntNo == TREG_S(0)) {
                cMtx_XrotM(*calc_mtx, TREG_S(1));
                cMtx_XrotM(*calc_mtx, TREG_S(2));
                cMtx_ZrotM(*calc_mtx, TREG_S(3));
            } else if (jntNo == TREG_S(4)) {
                cMtx_XrotM(*calc_mtx, TREG_S(5));
                cMtx_XrotM(*calc_mtx, TREG_S(6));
                cMtx_ZrotM(*calc_mtx, TREG_S(7));
            }

            model->setAnmMtx(jntNo, *calc_mtx);
            MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
        }
    }

    return 1;
}

/* 807A6DE0-807A6DE4 000048 0004+00 9/10 0/0 0/0 .bss             small */
static int small;

/* 807A6DE4-807A6DE8 00004C 0004+00 1/2 0/0 0/0 .bss             None */
static u8 data_807A6DE4[4];

/* 807A6DF4-807A6E18 00005C 0024+00 13/15 0/0 0/0 .bss             l_HIO */
static daE_ST_HIO_c l_HIO;

/* 8079E1A4-8079E43C 0004A4 0298+00 1/0 0/0 0/0 .text            daE_ST_Draw__FP10e_st_class */
static int daE_ST_Draw(e_st_class* i_this) {
    fopEn_enemy_c* a_this = &i_this->actor;
    J3DModel* model = i_this->mpModelMorf->getModel();

    g_env_light.settingTevStruct(0, &a_this->current.pos, &a_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &a_this->tevStr);

    if (i_this->field_0x7e4 != 0) {
        J3DModelData* modelData = model->getModelData();
        for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
            J3DMaterial* matNodeP = modelData->getMaterialNodePointer(i);
            matNodeP->getTevColor(0)->r = i_this->field_0x7e8;
            matNodeP->getTevColor(0)->g = i_this->field_0x7e8;
            matNodeP->getTevColor(0)->b = i_this->field_0x7e8;
        }
    }

    i_this->mpModelMorf->entryDL();
    cXyz pos;
    pos.set(a_this->current.pos.x, a_this->current.pos.y + 400.0f + BREG_F(18), a_this->current.pos.z);
    if (fopAcM_gc_c::gndCheck(&pos)) {
        pos.y = TREG_F(7) + fopAcM_gc_c::getGroundY();
        i_this->mShadowKey = dComIfGd_setShadow(i_this->mShadowKey, 1, model, &pos, l_HIO.basic_size * 700.0f, 0.0f,
                                                a_this->current.pos.y, fopAcM_gc_c::getGroundY(), *fopAcM_gc_c::getGroundCheck(),
                                                &a_this->tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    }

    if (i_this->field_0x720 != 0) {
        u8 uVar1 = JREG_S(5) + 180;
        _GXColor color = {uVar1, uVar1, uVar1, 0xFF};
        i_this->mLineMat1.update(20, color, &a_this->tevStr);
        dComIfGd_set3DlineMat(&i_this->mLineMat1);

        if (i_this->field_0x760 != 0) {
            _GXColor color2 = {uVar1, uVar1, uVar1, 0xFF};
            i_this->mLineMat2.update(20, color2, &a_this->tevStr);
            dComIfGd_set3DlineMat(&i_this->mLineMat2);
        }
    }

    return 1;
}

/* 8079E43C-8079E550 00073C 0114+00 1/1 0/0 0/0 .text            other_bg_check__FP10e_st_classP10fopAc_ac_c */
static BOOL other_bg_check(e_st_class* i_this, fopAc_ac_c* actor_p) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dBgS_LinChk lin_chk;
    cXyz pos, start, end;
    
    end = actor_p->current.pos;
    end.y += 150.0f;
    cMtx_YrotS(*calc_mtx, i_this->field_0x69c.y);
    cMtx_XrotM(*calc_mtx, i_this->field_0x69c.x);
    pos.x = 0.0f;
    pos.y = 100.0f;
    pos.z = 0.0f;
    MtxPosition(&pos, &start);
    start += a_this->current.pos;
    lin_chk.Set(&start, &end, a_this);

    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        return TRUE;
    }

    return FALSE;
}

/* 8079E550-8079E684 000850 0134+00 5/5 0/0 0/0 .text            pl_check__FP10e_st_classf */
static BOOL pl_check(e_st_class* i_this, f32 param_2) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz sp2c, sp38;

    if (player->current.pos.y - a_this->current.pos.y >= 750.0f || dComIfGp_event_runCheck()) {
        return FALSE;
    }
        
    if (i_this->field_0x7f8 < param_2) {
        player = (fopAc_ac_c*)dComIfGp_getPlayer(0);
        sp2c = player->current.pos - a_this->current.pos;
        cMtx_XrotS(*calc_mtx, -i_this->field_0x69c.x);
        cMtx_YrotM(*calc_mtx, -i_this->field_0x69c.y);
        MtxPosition(&sp2c, &sp38);
        s16 sVar1 = a_this->current.angle.y - cM_atan2s(sp38.x, sp38.z);

        if (sVar1 < 0x6000 && sVar1 > -0x6000 && !other_bg_check(i_this, player)) {
            return TRUE;
        }
    }

    return FALSE;
}

/* 8079E684-8079EAA8 000984 0424+00 1/1 0/0 0/0 .text            damage_check__FP10e_st_class */
static void damage_check(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);

    i_this->mStts.Move();

    if (i_this->field_0x68a != 0) {
        return;
    }

    if ((i_this->mAction == 0xA || i_this->mAction == 0xD || i_this->mAction == 0xB) && i_this->mSph2.ChkAtHit()) {
        i_this->field_0x7ec = JREG_F(8) + 40.0f + 160.0f;
        i_this->field_0x7f0 = 0;
        i_this->field_0x7f2 = player->shape_angle.y + 0x8000;
    }

    if (i_this->mSph1.ChkTgHit()) {
        i_this->mAtInfo.mpCollider = i_this->mSph1.GetTgHitObj();
        cc_at_check(a_this, &i_this->mAtInfo);

        if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_UNK)) {
            i_this->field_0x68a = 20;
        } else {
            i_this->field_0x68a = 10;
        }

        if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_THROW_OBJ) && small != 0) {
            i_this->mSound.startCreatureSound(Z2SE_EN_ST_SHELL_BREAK, 0, -1);
            OS_REPORT("E_st DAM %d\n", i_this->mAtInfo.mAttackPower);
        }

        if (i_this->mAtInfo.mHitType == 16) {
            if (i_this->field_0x720 == 1) {
                i_this->mAction = 0xC;
                i_this->mMode = 0;
                i_this->field_0x750 = i_this->field_0x710;
                i_this->field_0x720 = 2;
                i_this->field_0x75c = (BREG_F(3) + 0.002f) * (i_this->field_0x744.y - i_this->field_0x750.y);
            } else if (i_this->field_0x69c.x == 0) {
                i_this->mAction = 0x13;
                i_this->mMode = 0;
                i_this->field_0x7de = i_this->mAtInfo.mHitDirection.y;
                i_this->field_0x7e0 = YREG_F(8) + 10.0f;

                if (i_this->field_0x75c > 2.0f) {
                    i_this->field_0x75c = 2.0f;
                }
            } else {
                i_this->mAction = 0xC;
                i_this->mMode = 0;
            }
        } else if (a_this->health > 0) {
            if (i_this->field_0x720 == 1) {
                i_this->mAction = 0xC;
                i_this->mMode = 0;
                i_this->field_0x750 = i_this->field_0x710;
                i_this->field_0x720 = 2;
                i_this->field_0x75c = (BREG_F(3) + 0.002f) * (i_this->field_0x744.y - i_this->field_0x750.y);
            } else if (i_this->field_0x69c.x == 0) {
                i_this->mAction = 0x13;
                i_this->mMode = 0;
                i_this->field_0x7de = i_this->mAtInfo.mHitDirection.y;
                i_this->field_0x7e0 = YREG_F(9) + 30.0f;

                if (i_this->field_0x75c > 2.0f) {
                    i_this->field_0x75c = 2.0f;
                }

                if (player->getCutType() == daPy_py_c::CUT_TYPE_JUMP && player->checkCutJumpCancelTurn()) {
                    i_this->field_0x68a = 3;
                    i_this->field_0x7e0 = 10.0f;
                }
            } else {
                i_this->mAction = 0xC;
                i_this->mMode = 0;
            }
        } else {
            if (i_this->mAtInfo.mHitType == 1 && (daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_TURN_RIGHT || daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_UNK_9)) {
                i_this->field_0x7d4 = cM_rndF(1000.0f) + 4000.0f;
            } else {
                i_this->field_0x7d4 = cM_rndFX(2000.0f);
            }

            i_this->mSound.startCreatureVoice(Z2SE_EN_ST_V_DEATH, -1);
            daPy_getPlayerActorClass()->onEnemyDead();
            i_this->field_0x7e4 = 1;
            i_this->mAction = 0x14;
            i_this->mMode = 0;
            i_this->field_0x7de = i_this->mAtInfo.mHitDirection.y + (s16)cM_rndFX(8000.0f);

            if (i_this->field_0x720 == 1) {
                i_this->field_0x750 = i_this->field_0x710;
                i_this->field_0x720 = 2;
                i_this->field_0x75c = (BREG_F(3) + 0.002f) * (i_this->field_0x744.y - i_this->field_0x750.y);

                if (i_this->field_0x75c > 2.0f) {
                    i_this->field_0x75c = 2.0f;
                }
            }
        }
    }

    if (a_this->health <= 10) {
        i_this->mSph1.SetTgHitMark((CcG_Tg_HitMark)3);
    }
}

/* 8079EAA8-8079EC90 000DA8 01E8+00 3/3 0/0 0/0 .text            move_bg_check__FP10e_st_class */
static int move_bg_check(e_st_class* i_this) {
    dBgS_LinChk lin_chk;
    cXyz spa0, spac;

    int rv = 0;
    lin_chk.Set(&i_this->field_0x6bc, &i_this->field_0x6c8, NULL);
    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        rv = 1;
    }

    lin_chk.Set(&i_this->field_0x6c8, &i_this->field_0x6d4, NULL);
    if (!dComIfG_Bgsp().LineCross(&lin_chk)) {
        rv |= 2;
    } else if (i_this->arg1 == 3) {
        if (dComIfG_Bgsp().GetSpecialCode(lin_chk) != 3) {
            rv |= 2;
        }
    }

    for (int i = 0; i < 3; i++) {
        lin_chk.Set(&i_this->field_0x6bc, &i_this->field_0x6e0[i], NULL);

        if (dComIfG_Bgsp().LineCross(&lin_chk)) {
            cXyz spb8(i_this->field_0x6bc - i_this->field_0x6e0[i]);
            cMtx_YrotS(*calc_mtx, cM_atan2s(spb8.x, spb8.z));
            cMtx_XrotM(*calc_mtx, -cM_atan2s(spb8.y, JMAFastSqrt(spb8.x * spb8.x + spb8.z * spb8.z)));
            spb8.x = 0.0f;
            spb8.y = 0.0f;
            spb8.z = TREG_F(11) + 5.0f;
            MtxPosition(&spb8, &spac);
            i_this->mBgPos += spac;
            rv |= 4;
        }
    }

    return rv;
}

/* 8079EC90-8079EF3C 000F90 02AC+00 1/1 0/0 0/0 .text            bg_angle_set__FP10e_st_classs */
static void bg_angle_set(e_st_class* i_this, s16 i_maxStep) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dBgS_LinChk lin_chk;
    cXyz sp90, sp9c, spa8, spb4, spc0;

    MtxTrans(a_this->current.pos.x, a_this->current.pos.y, a_this->current.pos.z, 0);
    cMtx_YrotM(*calc_mtx, i_this->field_0x69c.y);
    cMtx_XrotM(*calc_mtx, i_this->field_0x69c.x);
    MtxPush();
    
    sp90.x = 0.0f;
    sp90.y = 150.0f;
    sp90.z = 100.0f;
    MtxPosition(&sp90, &spa8);
    sp90.y = -300.0f;
    MtxPosition(&sp90, &spb4);
    lin_chk.Set(&spa8, &spb4, NULL);

    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        spc0 = lin_chk.GetCross();
        sp90 = spc0 - a_this->current.pos;
        cMtx_XrotS(*calc_mtx, -i_this->field_0x69c.x);
        cMtx_YrotM(*calc_mtx, -i_this->field_0x69c.y);
        MtxPosition(&sp90, &sp9c);
        cLib_addCalcAngleS2(&i_this->field_0x6a4, -cM_atan2s(sp9c.y, sp9c.z), 4, i_maxStep);
    }

    MtxPull();
    sp90.x = 100.0f;
    sp90.y = 150.0f;
    sp90.z = 0.0f;
    MtxPosition(&sp90, &spa8);
    sp90.y = -300.0f;
    MtxPosition(&sp90, &spb4);
    lin_chk.Set(&spa8, &spb4, NULL);

    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        spc0 = lin_chk.GetCross();
        sp90 = spc0 - a_this->current.pos;
        cMtx_XrotS(*calc_mtx, -i_this->field_0x69c.x);
        cMtx_YrotM(*calc_mtx, -i_this->field_0x69c.y);
        MtxPosition(&sp90, &sp9c);
        cLib_addCalcAngleS2(&i_this->field_0x6a2, (s16)cM_atan2s(sp9c.y, sp9c.x), 4, i_maxStep);
    }
}

/* 8079EF3C-8079F08C 00123C 0150+00 3/3 0/0 0/0 .text            bg_pos_get__FP10e_st_class */
static BOOL bg_pos_get(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dBgS_LinChk lin_chk;
    cXyz pos, end;

    cMtx_YrotS(*calc_mtx, i_this->field_0x69c.y);
    cMtx_XrotM(*calc_mtx, i_this->field_0x69c.x);
    pos.x = 0.0f;
    pos.y = -400.0f;
    pos.z = 0.0f;
    MtxPosition(&pos, &end);
    end += i_this->mBgPos;
    lin_chk.Set(&i_this->mBgPos, &end, NULL);

    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        a_this->current.pos = lin_chk.GetCross();
        pos.y = 200.0f;
        MtxPosition(&pos, &end);
        i_this->mBgPos = a_this->current.pos + end;
        bg_angle_set(i_this, 0x400);
    } else {
        return FALSE;
    }

    return TRUE;
}

/* 8079F08C-8079F12C 00138C 00A0+00 1/1 0/0 0/0 .text            next_angle_get__FP10e_st_class */
static s16 next_angle_get(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp20, sp2c;

    sp20 = a_this->home.pos - a_this->current.pos;
    cMtx_XrotS(*calc_mtx, -i_this->field_0x69c.x);
    cMtx_YrotM(*calc_mtx, -i_this->field_0x69c.y);
    MtxPosition(&sp20, &sp2c);
    return cM_atan2s(sp2c.x, sp2c.z);
}

/* 8079F12C-8079F210 00142C 00E4+00 3/3 0/0 0/0 .text            move_calc__FP10e_st_class */
static void move_calc(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp1c, sp28;

    cMtx_YrotS(*calc_mtx, i_this->field_0x69c.y);
    cMtx_XrotM(*calc_mtx, i_this->field_0x69c.x);
    cMtx_YrotM(*calc_mtx, a_this->current.angle.y);
    sp1c.x = 0.0f;
    sp1c.y = TREG_F(8);
    sp1c.z = a_this->speedF;
    MtxPosition(&sp1c, &sp28);
    a_this->old.pos = i_this->mBgPos;
    i_this->mBgPos += sp28;

    if (!bg_pos_get(i_this)) {
        i_this->mBgPos = a_this->old.pos;
        i_this->mAction = 0;
        i_this->mMode = 0;
        OS_REPORT("/////// SORRY.. E_ST CANNOT MOVE..\n");
    }
}

/* 8079F210-8079F42C 001510 021C+00 1/1 0/0 0/0 .text            e_st_wait__FP10e_st_class */
static void e_st_wait(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    switch (i_this->mMode) {
        case 0:
            i_this->mMode = 1;
            anm_init(i_this, 0x22, 10.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            i_this->mTimers[0] = cM_rndF(100.0f) + 50.0f;
            i_this->mTimers[1] = cM_rndF(30.0f) + 30.0f;
            fopAcM_SetParam(a_this, 0);
            i_this->field_0x6b0.y = a_this->current.pos.y;
            break;
        
        case 1:
            if ((i_this->field_0x67c & 0xF) == 0 && cM_rndF(1.0f) < 0.5f) {
                i_this->mSound.startCreatureVoice(Z2SE_EN_ST_V_WAIT, -1);
            }

            if (i_this->mTimers[0] == 0) {
                i_this->mPlAngle = next_angle_get(i_this) + (s16)cM_rndFX(4000.0f);
                i_this->mMode = 2;
                anm_init(i_this, 0x21, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            }
            break;

        case 2:
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mPlAngle, 2, 0x100);
            s16 sVar1 = a_this->current.angle.y - i_this->mPlAngle;
            if (sVar1 < 0x10 && sVar1 > - 0x10) {
                i_this->mAction = 1;
                i_this->mMode = 0;
            }
            break;
    }

    if (i_this->mTimers[1] == 0 && pl_check(i_this, l_HIO.pl_recognize_dist)) {
        i_this->mAction = 2;
        i_this->mMode = 0;
        i_this->mTimers[0] = 0;
    }

    cLib_addCalc0(&a_this->speedF, 1.0f, 0.5f);

    if (move_bg_check(i_this)) {
        a_this->speedF = 0.0f;
    }
    
    move_calc(i_this);
}

/* 8079F42C-8079F4D8 00172C 00AC+00 2/2 0/0 0/0 .text            pl_angle_get__FP10e_st_class */
static s16 pl_angle_get(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp20, sp2c;
    fopAc_ac_c* player = (fopAc_ac_c*)dComIfGp_getPlayer(0);

    sp20 = player->current.pos - a_this->current.pos;
    cMtx_XrotS(*calc_mtx, -i_this->field_0x69c.x);
    cMtx_YrotM(*calc_mtx, -i_this->field_0x69c.y);
    MtxPosition(&sp20, &sp2c);
    return cM_atan2s(sp2c.x, sp2c.z);
}

/* 8079F4D8-8079F6A0 0017D8 01C8+00 1/1 0/0 0/0 .text            e_st_move__FP10e_st_class */
static void e_st_move(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp2c, sp38;
    s8 sVar1 = 0;
    
    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, 0x1F, 9.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            i_this->mMode = 1;
            i_this->mTimers[0] = cM_rndF(30.0f) + 30.0f;
            i_this->field_0x6b0.y = a_this->current.pos.y;
            // fallthrough
        case 1:
            if (move_bg_check(i_this)) {
                a_this->speedF = 0.0f;
                sVar1 = 1;
            }

            if (i_this->mTimers[0] == 0) {
                sVar1 = 1;
            }
            break;
    }

    cLib_addCalc2(&a_this->speedF, 4.0f, 1.0f, 0.5f);
    cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mPlAngle, 8, 0x100);

    if (sVar1 != 0) {
        i_this->mAction = 0;
        i_this->mMode = 0;
    } else {
        if (pl_check(i_this, l_HIO.pl_recognize_dist)) {
            i_this->mAction = 2;
            i_this->mMode = 1;
            i_this->mTimers[0] = 0;
        }
    }

    move_calc(i_this);

    if (i_this->field_0x7e0 > 0.1f) {
        sp2c.x = 0.0f;
        sp2c.y = 0.0f;
        sp2c.z = i_this->field_0x7e0;
        cMtx_YrotS(*calc_mtx, i_this->field_0x7de);
        MtxPosition(&sp2c, &sp38);
        a_this->current.pos += sp38;
        i_this->mBgPos.x = a_this->current.pos.x;
        i_this->mBgPos.z = a_this->current.pos.z;
        cLib_addCalc0(&i_this->field_0x7e0, 1.0f, TREG_F(12) + 7.0f);
        i_this->mBgc.CrrPos(dComIfG_Bgsp());
    }
}

/* 8079F6A0-8079FA18 0019A0 0378+00 1/1 0/0 0/0 .text            e_st_pl_search__FP10e_st_class */
static void e_st_pl_search(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp3c, sp48;
    int frame = i_this->mpModelMorf->getFrame();
    f32 fVar1 = 0.0f;

    switch (i_this->mMode) {
        case 0:
            if (i_this->mTimers[0] == 0) {
                if (!pl_check(i_this, AREG_F(0) + 350.0f) && daPy_getPlayerActorClass()->getStCaught()) {
                    anm_init(i_this, 0x23, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                    a_this->speedF = 0.0f;
                    i_this->mMode = 5;
                } else {
                    anm_init(i_this, 0x1F, 6.0f, J3DFrameCtrl::EMode_LOOP, 2.0f);
                    i_this->mMode = 1;
                }

                i_this->field_0x6b0.y = a_this->current.pos.y;
            }
            break;
        
        case 1:
            i_this->mMode = 2;
            i_this->mTimers[0] = cM_rndF(10.0f) + 10.0f;
            i_this->mpModelMorf->setPlaySpeed(2.0f);
            // fallthrough
        case 2:
            fVar1 = 8.0f;
            i_this->mPlAngle = pl_angle_get(i_this);
            sp3c = a_this->home.pos - a_this->current.pos;

            if (pl_check(i_this, AREG_F(1) + 120.0f)) {
                anm_init(i_this, 5, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                i_this->mMode = 3;
                i_this->mSound.startCreatureSound(Z2SE_EN_ST_ATTACK, 0, -1);
            } else if (i_this->arg1 == 0) {
                if (!pl_check(i_this, AREG_F(0) + 350.0f) && i_this->mTimers[0] == 0) {
                    i_this->mAction = 3;
                    i_this->mMode = 0;
                    return;
                }
            } else if (!pl_check(i_this, l_HIO.pl_recognize_dist + 100.0f)) {
                i_this->mAction = 1;
                i_this->mMode = 0;
            }
            break;
        
        case 3:
            if (frame >= 11 && frame <= 23) {
                i_this->field_0xb94 = 1;
            }

            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 0x23, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                i_this->mTimers[0] = cM_rndF(20.0f) + 20.0f;
                i_this->mMode = 0;
            }
            break;

        case 5:
            if (pl_check(i_this, AREG_F(0) + 350.0f) || !daPy_getPlayerActorClass()->getStCaught()) {
                i_this->mMode = 0;
            }
            break;
    }

    if (move_bg_check(i_this)) {
        fVar1 = 0.0f;
        a_this->speedF = 0.0f;
        i_this->mAction = 0;
        i_this->mMode = 0;
    }

    cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, 2.0f);
    cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mPlAngle, 4, 0x800);
    move_calc(i_this);
}

/* 8079FA18-8079FC4C 001D18 0234+00 1/1 0/0 0/0 .text            e_st_shoot__FP10e_st_class */
static void e_st_shoot(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp40, sp4c;

    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, 4, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mMode = 1;
            i_this->field_0xf84 = 0;
            a_this->speedF = 0.0f;
            break;
        
        case 1:
            i_this->mPlAngle = pl_angle_get(i_this);
            int frame = i_this->mpModelMorf->getFrame();

            if (frame >= 0x1E && frame <= 0x2A) {
                for (int i = 0; i < TREG_S(2) + 5; i++) {
                    fopAcM_createChild(PROC_E_ST_LINE, fopAcM_GetID(a_this), i_this->field_0xf84,
                                       &i_this->field_0x704, fopAcM_GetRoomNo(a_this), NULL, NULL, -1, NULL);
                    i_this->field_0xf84++;
                }
            }

            if (frame >= 0x1E && frame <= YREG_S(4) + 0x37) {
                i_this->mSound.startCreatureSoundLevel(Z2SE_EN_ST_SILK, 0, -1);
            }

            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 0x23, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                i_this->mMode = 2;
                i_this->mTimers[0] = 40;
            }
            break;

        case 2:
            if (i_this->mTimers[0] == 0) {
                if (daPy_getPlayerActorClass()->getStCaught() && fopAcM_GetParam(a_this) == 1) {
                    i_this->mAction = 0xF;
                    i_this->mMode = 0;
                } else {
                    i_this->mAction = 0;
                    i_this->mMode = 0;
                    i_this->mTimers[1] = cM_rndF(50.0f) + 50.0f;
                }
            }
            break;
    }

    cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mPlAngle, 4, 0x1000);
}

/* 8079FC4C-807A08BC 001F4C 0C70+00 2/1 0/0 0/0 .text            e_st_jump_attack__FP10e_st_class */
static void e_st_jump_attack(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz sp44, sp50;
    s8 sVar1 = 0;
    int frame = i_this->mpModelMorf->getFrame();

    switch (i_this->mMode) {
        case 0:
            i_this->mMode = 1;
            anm_init(i_this, 0x1D, 5.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->field_0x6a6.x = i_this->field_0x69c.x;
            i_this->field_0x6a6.y = i_this->field_0x69c.y;
            i_this->field_0x6ae = i_this->field_0x6a4;
            i_this->field_0x6ac = i_this->field_0x6a2;
            i_this->field_0x5bc = a_this->current.pos;
            a_this->shape_angle.y = a_this->current.angle.y;
            break;

        case 1:
            if (frame >= 0x17) {
                i_this->mMode = 2;
                anm_init(i_this, 0x1B, 5.0f, J3DFrameCtrl::EMode_NONE, 0.0f);
                i_this->mSound.startCreatureSound(Z2SE_EN_ST_JUMP, 0, -1);
            }
            break;

        case 2:
            sVar1 = 1;
            cLib_addCalcAngleS2(&a_this->current.angle.y, fopAcM_searchPlayerAngleY(a_this), 4, 0x1000);
            sp44 = daPy_getPlayerActorClass()->getHeadTopPos() - a_this->current.pos;
            cMtx_YrotS(*calc_mtx, cM_atan2s(sp44.x, sp44.z));
            cMtx_XrotM(*calc_mtx, -cM_atan2s(sp44.y, JMAFastSqrt(sp44.x * sp44.x + sp44.z * sp44.z)));
            sp44.x = 0.0f;
            sp44.y = 0.0f;
            sp44.z = KREG_F(5) + 80.0f;
            MtxPosition(&sp44, &a_this->speed);
            a_this->current.pos += a_this->speed;
            sp44 = daPy_getPlayerActorClass()->getHeadTopPos() - a_this->current.pos;

            if (sp44.abs() <= 85.0f) {
                i_this->mMode = 3;
                i_this->mTimers[0] = 65;
                i_this->mpModelMorf->setPlaySpeed(1.0f);
            }
            break;

        case 3:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 0x1C, 1.0f, J3DFrameCtrl::EMode_LOOP, 2.0f);
                i_this->mMode = 4;
            }
            // fallthrough
        case 4:
            sVar1 = 1;
            cLib_addCalcAngleS2(&a_this->current.angle.y, player->shape_angle.y + 0x8000, 2, 0x1000);
            cLib_addCalcAngleS2(&a_this->current.angle.x, YREG_S(0) + -0x2700, 2, 0x800);
            cMtx_YrotS(*calc_mtx, player->shape_angle.y);
            sp44.set(0.0f, -20.0f, 40.0f);
            MtxPosition(&sp44, &sp50);
            cLib_addCalc2(&a_this->current.pos.x, sp50.x + daPy_getPlayerActorClass()->getHeadTopPos().x, 1.0f, 70.0f);
            cLib_addCalc2(&a_this->current.pos.y, sp50.y + daPy_getPlayerActorClass()->getHeadTopPos().y, 1.0f, 70.0f);
            cLib_addCalc2(&a_this->current.pos.z, sp50.z + daPy_getPlayerActorClass()->getHeadTopPos().z, 1.0f, 70.0f);

            if (i_this->mpModelMorf->checkFrame(4.0f)) {
                i_this->mSound.startCreatureSound(Z2SE_EN_ST_HUG_ATTACK, 0, -1);
            }
            if (i_this->mTimers[0] > 15) {
                if (!daPy_getPlayerActorClass()->getStCaught()) {
                    i_this->mTimers[0] = 15;
                }
            }

            if (i_this->mTimers[0] == 0) {
                i_this->mMode = 5;
                anm_init(i_this, 0x1B, 2.0f, J3DFrameCtrl::EMode_NONE, 0.0f);
                i_this->mSound.startCreatureSound(Z2SE_EN_ST_JUMPBACK, 0, -1);
            }
            break;

        case 5:
            sVar1 = 2;
            sp44 = i_this->field_0x5bc - a_this->current.pos;
            cMtx_YrotS(*calc_mtx, cM_atan2s(sp44.x, sp44.z));
            cMtx_XrotM(*calc_mtx, -cM_atan2s(sp44.y, JMAFastSqrt(sp44.x * sp44.x + sp44.z * sp44.z)));
            sp44.x = 0.0f;
            sp44.y = 0.0f;
            sp44.z = KREG_F(5) + 80.0f;
            MtxPosition(&sp44, &a_this->speed);
            a_this->current.pos += a_this->speed;
            sp44 = i_this->field_0x5bc - a_this->current.pos;

            if (sp44.abs() <= 85.0f) {
                i_this->mMode = 6;
                anm_init(i_this, 0x1E, 1.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            }
            break;

        case 6:
            sVar1 = 2;
            cLib_addCalc2(&a_this->current.pos.x, i_this->field_0x5bc.x, 1.0f, fabsf(a_this->speed.x));
            cLib_addCalc2(&a_this->current.pos.y, i_this->field_0x5bc.y, 1.0f, fabsf(a_this->speed.y));
            cLib_addCalc2(&a_this->current.pos.z, i_this->field_0x5bc.z, 1.0f, fabsf(a_this->speed.z));
            sp44 = i_this->field_0x5bc - a_this->current.pos;

            if (i_this->mpModelMorf->isStop() && sp44.abs() <= 1.0f) {
                i_this->mAction = 0;
                i_this->mMode = 0;
            }
            break;
    }

    sp44 = i_this->field_0x5bc - player->eyePos;
    f32 fVar1 = sp44.abs();
    sp44 = i_this->field_0x5bc - a_this->current.pos;
    f32 fVar2 = sp44.abs();

    i_this->field_0x71c = cM_ssin((s16)((fVar2 / fVar1) * 32768.0f)) * 100.0f;

    if (sVar1 == 1) {
        cLib_addCalcAngleS2(&i_this->field_0x69c.y, 0, 4, 0x800);
        cLib_addCalcAngleS2(&i_this->field_0x69c.x, 0, 4, 0x800);
        cLib_addCalcAngleS2(&i_this->field_0x6a4, 0, 4, 0x800);
        cLib_addCalcAngleS2(&i_this->field_0x6a2, 0, 4, 0x800);
    } else if (sVar1 == 2) {
        cLib_addCalcAngleS2(&i_this->field_0x69c.y, i_this->field_0x6a6.y, 1, 0x1000);
        cLib_addCalcAngleS2(&i_this->field_0x69c.x, i_this->field_0x6a6.x, 1, 0x1000);
        cLib_addCalcAngleS2(&i_this->field_0x6a4, i_this->field_0x6ae, 1, 0x1000);
        cLib_addCalcAngleS2(&i_this->field_0x6a2, i_this->field_0x6ac, 1, 0x1000);
        cLib_addCalcAngleS2(&a_this->current.angle.y, a_this->shape_angle.y, 2, 0x1000);
        cLib_addCalcAngleS2(&a_this->current.angle.x, 0, 1, 0x1000);
    }
}

/* 807A08BC-807A0B44 002BBC 0288+00 1/1 0/0 0/0 .text            roof_line_calc__FP10e_st_class */
static void roof_line_calc(e_st_class* i_this) {
    cXyz sp40, sp4c;

    sp40 = (i_this->field_0x744 - i_this->field_0x710) * 0.05263158f;
    cXyz* pos_p = i_this->mLineMat1.getPos(0);
    for (int i = 0; i < 20; i++, pos_p++) {
        *pos_p = i_this->field_0x710 + (sp40 * i);
    }

    i_this->mCyl.SetH(fabsf(i_this->field_0x744.y - i_this->field_0x710.y));
    i_this->mCyl.SetC(i_this->field_0x710);
    dComIfG_Ccsp()->Set(&i_this->mCyl);

    if (i_this->mCyl.ChkTgHit()) {
        i_this->mAction = 0xC;
        i_this->mMode = 0;
        def_se_set(&i_this->mSound, i_this->mCyl.GetTgHitObj(), 0x21, NULL);
        pos_p = i_this->mCyl.GetTgHitPosP();
        i_this->field_0x750 = i_this->field_0x744;
        i_this->field_0x750.y = pos_p->y;
        i_this->field_0x764 = i_this->field_0x750.y - i_this->field_0x710.y;

        if (i_this->field_0x764 < 0.0f) {
            i_this->field_0x764 = 0.0f;
        }

        i_this->field_0x760 = 1;
        sp40 = (i_this->field_0x750 - i_this->field_0x710) * 0.05263158f;
        cXyz* pos_p2 = i_this->mLineMat2.getPos(0);
        for (int i = 0; i < 20; i++, pos_p2++) {
            *pos_p2 = i_this->field_0x710 + (sp40 * i);
        }

        i_this->field_0x720 = 2;
        i_this->field_0x75c = (BREG_F(3) + 0.002f) * (i_this->field_0x744.y - i_this->field_0x750.y);

        if (i_this->field_0x75c > 2.0f) {
            i_this->field_0x75c = 2.0f;
        }
    }
}

/* 807A0B44-807A0D20 002E44 01DC+00 1/1 0/0 0/0 .text            roof_line_calc2__FP10e_st_class */
static void roof_line_calc2(e_st_class* i_this) {
    cXyz sp50, sp5c;

    sp50 = (i_this->field_0x744 - i_this->field_0x750) * 0.05263158f;
    cXyz* pos_p = i_this->mLineMat1.getPos(0);
    cXyz sp68;
    for (int i = 0; i < 20; i++, pos_p++) {
        sp68.x = sp50.x;
        sp68.y = sp50.y * i_this->field_0x724;
        sp68.z = sp50.z;
        *pos_p = i_this->field_0x744 - (sp68 * i);
        f32 fVar1 = i * i_this->field_0x75c;
        pos_p->x += fVar1 * cM_ssin(i_this->field_0x67c * 0x5DC + i * 0x1644);
        pos_p->z += fVar1 * cM_scos(i_this->field_0x67c * 0x708 + i * 5000);
    }

    cLib_addCalc0(&i_this->field_0x75c, 1.0f, 0.02f);
    cLib_addCalc0(&i_this->field_0x724, 1.0f, 0.005f);
}

/* 807A0D20-807A0F64 003020 0244+00 1/1 0/0 0/0 .text            tail_line_calc__FP10e_st_class */
static void tail_line_calc(e_st_class* i_this) {
    f32 fVar2, fVar5;
    int i;
    cXyz* pos_p;
    f32* pfVar1;
    Vec pos;
    f32 fVar1, fVar3, fVar4;
    dBgS_GndChk gnd_chk;
    cXyz spd4, spe0;

    pos_p = i_this->mLineMat2.getPos(0);
    *pos_p = i_this->field_0x710;
    pos_p++;
    pfVar1 = &i_this->field_0x788;
    spd4.x = 0.0f;
    spd4.y = 0.0f;
    spd4.z = i_this->field_0x764 * (TREG_F(6) + 0.05f);
    fVar1 = TREG_F(7) + -5.0f;
    for (i = 1; i < 20; i++, pos_p++, pfVar1++) {
        fVar2 = pos_p->x - (pos_p - 1)->x;
        fVar3 = pos_p->z - (pos_p - 1)->z;
        fVar4 = pos_p->y + fVar1;

        if (fVar4 < *pfVar1) {
            fVar4 = *pfVar1;
        }

        fVar5 = fVar4 - (pos_p - 1)->y;
        cMtx_YrotS(*calc_mtx, cM_atan2s(fVar2, fVar3));
        cMtx_XrotM(*calc_mtx, -cM_atan2s(fVar5, JMAFastSqrt(fVar2 * fVar2 + fVar3 * fVar3)));
        MtxPosition(&spd4, &spe0);
        pos_p->x = (pos_p - 1)->x + spe0.x;
        pos_p->y = (pos_p - 1)->y + spe0.y;
        pos_p->z = (pos_p - 1)->z + spe0.z;

        if ((i_this->field_0x67c + i & 0xF) == 0) {
            pos = *pos_p;
            pos.y += 200.0f;
            gnd_chk.SetPos(&pos);
            *pfVar1 = dComIfG_Bgsp().GroundCross(&gnd_chk) + 5.0f;
            if (*pfVar1 - pos_p->y > 200.0f) {
                *pfVar1 = pos_p->y;
            }
        }
    }
}

/* 807A0F64-807A11EC 003264 0288+00 1/1 0/0 0/0 .text            e_st_hang__FP10e_st_class */
static void e_st_hang(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* player = (fopAc_ac_c*)dComIfGp_getPlayer(0);
    cXyz sp30, sp3c;

    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, 0x12, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            i_this->mpModelMorf->setFrame(cM_rndF(20.0f));
            i_this->mMode = 1;
            fopAcM_SetParam(a_this, 0);
            // fallthrough
        case 1:
            if ((i_this->field_0x67c & 0xF) == 0 && cM_rndF(1.0f) < 0.5f) {
                i_this->mSound.startCreatureVoice(Z2SE_EN_ST_V_WAIT, -1);
            }

            if (i_this->mTimers[0] == 0) {
                i_this->mTimers[0] = cM_rndF(100.0f) + 50.0f;
                i_this->mBgPos.y = a_this->home.pos.y + cM_rndFX(i_this->field_0x7d8);

                if (a_this->current.pos.y < i_this->mBgPos.y) {
                    a_this->speedF = 3.0f;
                } else {
                    a_this->speedF = 10.0f;
                }
            }
            break;
    }

    cLib_addCalc2(&a_this->current.pos.y, i_this->mBgPos.y, 0.1f, a_this->speed.y);
    cLib_addCalc2(&a_this->speed.y, a_this->speedF, 1.0f, 0.5f);
    cLib_addCalcAngleS2(&a_this->current.angle.y, fopAcM_searchPlayerAngleY(a_this), 0x10, 0x200);

    if (i_this->arg1 == 0 && i_this->mTimers[1] == 0) {
        if (!daPy_getPlayerActorClass()->getStCaught() && fopAcM_searchPlayerDistanceXZ(a_this) < 300.0f && a_this->current.pos.y - player->current.pos.y > 0.0f) {
            if (a_this->current.pos.y - dComIfGp_getPlayer(0)->current.pos.y > 1000.0f) {
                i_this->mAction = 0xC;
                i_this->field_0x750 = i_this->field_0x710;
                i_this->field_0x720 = 2;
                i_this->field_0x75c = (BREG_F(3) + 0.002f) * (i_this->field_0x744.y - i_this->field_0x750.y);

                if (i_this->field_0x75c > 2.0f) {
                    i_this->field_0x75c = 2.0f;
                }
            } else {
                i_this->mAction = 0xB;
            }

            i_this->mMode = 0;
        }
    }
}

/* 807A11EC-807A1568 0034EC 037C+00 1/1 0/0 0/0 .text            e_st_hang_shoot__FP10e_st_class */
static void e_st_hang_shoot(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* player = (fopAc_ac_c*)dComIfGp_getPlayer(0);
    cXyz sp40, sp4c;

    if (a_this->current.pos.y - player->current.pos.y <= 0.0f) {
        i_this->mAction = 10;
        i_this->mMode = 0;
        i_this->mTimers[1] = cM_rndF(20.0f) + 20.0f;
        return;
    }

    switch (i_this->mMode) {
        case 0:
            if (i_this->arg2 == 0) {
                i_this->mMode = 2;
                anm_init(i_this, 0x17, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                i_this->mTimers[0] = 80;
                i_this->field_0xf84 = 0;
                break;
            } else {
                i_this->mMode = 1;
                i_this->mBgPos.y = player->current.pos.y + 500.0f;

                if (i_this->mBgPos.y > i_this->field_0x744.y - 50.0f) {
                    i_this->mBgPos.y = i_this->field_0x744.y - 50.0f;
                } else if (i_this->mBgPos.y < a_this->home.pos.y + 50.0f) {
                    i_this->mBgPos.y = a_this->home.pos.y + 50.0f;
                }

                anm_init(i_this, 0x12, 5.0f, J3DFrameCtrl::EMode_LOOP, 2.5f);
            }
            // fallthrough
        case 1:
            if (fabsf(a_this->current.pos.y - i_this->mBgPos.y) < 50.0f) {
                i_this->mMode = 2;
                anm_init(i_this, 0x17, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                i_this->mTimers[0] = 80;
                i_this->field_0xf84 = 0;
            }
            break;
        
        case 2:
            int frame = i_this->mpModelMorf->getFrame();

            if (frame >= 0x1E && frame <= 0x2A) {
                for (int i = 0; i < TREG_S(2) + 5; i++) {
                    fopAcM_createChild(PROC_E_ST_LINE, fopAcM_GetID(a_this), i_this->field_0xf84,
                                       &i_this->field_0x704, fopAcM_GetRoomNo(a_this), NULL, NULL, -1, NULL);
                    i_this->field_0xf84++;
                }
            }

            if (frame >= 0x1E && frame <= YREG_S(4) + 0x37) {
                i_this->mSound.startCreatureSoundLevel(Z2SE_EN_ST_SILK, 0, -1);
            }

            if (i_this->mpModelMorf->isStop()) {
                if (daPy_getPlayerActorClass()->getStCaught() && fopAcM_GetParam(a_this) == 1) {
                    i_this->mAction = 0xC;
                    i_this->mMode = 0;
                    i_this->field_0x750 = i_this->field_0x710;
                    i_this->field_0x720 = 2;
                    i_this->field_0x75c = (BREG_F(3) + 0.002f) * (i_this->field_0x744.y - i_this->field_0x750.y);

                    if (i_this->field_0x75c > 2.0f) {
                        i_this->field_0x75c = 2.0f;
                    }
                } else {
                    i_this->mAction = 0xA;
                    i_this->mMode = 0;
                    i_this->mTimers[1] = cM_rndF(50.0f) + 50.0f;
                }
            }
            break;
    }

    cLib_addCalc2(&a_this->current.pos.y, i_this->mBgPos.y, 0.2f, 15.0f);
    cLib_addCalcAngleS2(&a_this->current.angle.y, fopAcM_searchPlayerAngleY(a_this), 4, 0x1000);
}

/* 807A1568-807A17DC 003868 0274+00 1/1 0/0 0/0 .text            e_st_hang_drop__FP10e_st_class */
static void e_st_hang_drop(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp28;

    i_this->field_0x68a = 5;
    cLib_addCalcAngleS2(&a_this->current.angle.x, 0, 4, 0x400);
    cLib_addCalcAngleS2(&i_this->field_0x69c.y, 0, 1, 0x400);
    cLib_addCalcAngleS2(&i_this->field_0x69c.x, 0, 1, 0x400);

    switch (i_this->mMode) {
        case 0:
            i_this->mMode = 1;

            if (i_this->field_0x69c.x != 0) {
                cMtx_YrotS(*calc_mtx, i_this->field_0x69c.y);
                cMtx_XrotM(*calc_mtx, i_this->field_0x69c.x);
                sp28.x = 0.0f;
                sp28.y = YREG_F(5) + 10.0f;
                sp28.z = 0.0f;
                MtxPosition(&sp28, &a_this->speed);
            } else {
                a_this->speed.set(0.0f, 0.0f, 0.0f);
            }

            a_this->speedF = 0.0f;
            anm_init(i_this, 0x22, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            break;
        
        case 1:
            if (i_this->mBgc.ChkGroundHit()) {
                i_this->mMode = 2;
                i_this->mBgPos = a_this->current.pos;
                a_this->home.pos = a_this->current.pos;
                bg_pos_get(i_this);
                anm_init(i_this, 0x1E, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                a_this->speed.set(0.0f, 0.0f, 0.0f);
            }
            break;

        case 2:
            cLib_addCalcAngleS2(&a_this->current.angle.x, 0, 1, 0x1000);
            cLib_addCalcAngleS2(&i_this->field_0x69c.y, 0, 1, 0x1000);
            cLib_addCalcAngleS2(&i_this->field_0x69c.x, 0, 1, 0x1000);

            if (i_this->mpModelMorf->isStop()) {
                i_this->field_0x69c.y = 0;
                i_this->field_0x69c.x = 0;
                a_this->current.angle.x = 0;
                i_this->mAction = 0x32;
                i_this->mMode = 0;
                i_this->arg0 = 2;
            }
            break;
    }

    a_this->current.pos += a_this->speed;
    a_this->speed.y -= YREG_F(7) + 3.0f;
    i_this->mBgc.CrrPos(dComIfG_Bgsp());
}

/* 807A17DC-807A1DB8 003ADC 05DC+00 1/1 0/0 0/0 .text            e_st_hang_2__FP10e_st_class */
static u8 e_st_hang_2(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    cXyz sp28, sp34;
    u8 rv = 0;
    s8 bVar1 = 0;
    s8 bVar2 = 0;

    switch (i_this->mMode) {
        case 0:
            i_this->mMode = 1;
            i_this->mTimers[1] = cM_rndF(100.0f);
            // fallthrough
        case 1:
            if (fabsf(a_this->current.pos.y - a_this->home.pos.y) < 5.0f && i_this->mAnm != 0x12) {
                anm_init(i_this, 0x12, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                i_this->mpModelMorf->setFrame(cM_rndF(20.0f));
            }

            if ((i_this->field_0x67c & 0xF) == 0 && cM_rndF(1.0f) < 0.5f) {
                i_this->mSound.startCreatureVoice(Z2SE_EN_ST_V_WAIT, -1);
            }

            cLib_addCalc2(&a_this->current.pos.y, a_this->home.pos.y, 0.5f, 10.0f);

            if (i_this->mTimers[1] == 0 && fabsf(a_this->current.pos.y - a_this->home.pos.y) < 10.0f) {
                rv = 1;
            }

            if (fopAcM_searchPlayerDistanceXZ(a_this) < i_this->field_0x7d8 && a_this->current.pos.y - player->current.pos.y > 0.0f) {
                i_this->mMode = 2;
                i_this->field_0x7ec = 20.0f;
                i_this->field_0x7f0 = 0;
                i_this->field_0x7f2 = cM_rndF(65536.0f);
                i_this->mSound.startCreatureSound(Z2SE_EN_ST_APPEAR, 0, -1);
            }
            break;
        
        case 2:
            if (i_this->arg1 == 4) {
                i_this->mBgPos.y = player->current.pos.y + 120.0f + 150.0f + YREG_F(7);
            } else {
                i_this->mBgPos.y = player->current.pos.y + 120.0f;
            }

            sp28.set(a_this->current.pos.x, a_this->current.pos.y, a_this->current.pos.z);

            if (fopAcM_gc_c::gndCheck(&sp28)) {
                sp28.y = TREG_F(7) + fopAcM_gc_c::getGroundY() + 120.0f + 20.0f;

                if (i_this->mBgPos.y < sp28.y) {
                    i_this->mBgPos.y = sp28.y;
                }

                if (small == 0) {
                    bVar2 = true;
                }
            }

            if (i_this->mTimers[0] == 58) {
                i_this->mSound.startCreatureSound(Z2SE_EN_ST_JUMPBACK, 0, -1);
            }

            cLib_addCalc2(&a_this->current.pos.y, i_this->mBgPos.y, 1.0f, 50.0f);

            if (!player->checkPlayerFly() && fabsf(a_this->current.pos.y - i_this->mBgPos.y) < 10.0f) {
                if (!daPy_getPlayerActorClass()->getStCaught() && i_this->arg1 == 4) {
                    i_this->mAction = 0xE;
                    i_this->mMode = 0;
                    return 0;
                }

                if (bVar2) {
                    bVar1 = true;
                } else {
                    anm_init(i_this, 0x14, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                    i_this->mMode = 3;
                    i_this->mTimers[0] = 60;
                }
            }
            break;

        case 3:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 0x13, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            }

            a_this->field_0x566 = 1;
            
            if (i_this->mTimers[0] == 0 && (fopAcM_searchPlayerDistanceXZ(a_this) > i_this->field_0x7d8 + 50.0f || a_this->current.pos.y - player->current.pos.y <= 0.0f)) {
                i_this->mMode = 1;
                anm_init(i_this, 0x16, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            }

            if (i_this->mSph2.ChkAtHit()) {
                i_this->mMode = 4;
                anm_init(i_this, 0x15, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            }
            break;
            
        case 4:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 0x13, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                i_this->mMode = 3;
            }
            break;
    }

    cLib_addCalcAngleS2(&a_this->current.angle.y, fopAcM_searchPlayerAngleY(a_this), 0x10, 0x400);

    if (bVar1 || (daPy_getPlayerActorClass()->getStCaught() && fopAcM_GetParam(a_this) == 1)) {
        i_this->mSound.startCreatureSound(Z2SE_EN_ST_SILK_RELEASE, 0, -1);
        i_this->mAction = 0xC;
        i_this->mMode = 0;
        i_this->field_0x750 = i_this->field_0x710;
        i_this->field_0x720 = 2;
        i_this->field_0x75c = (BREG_F(3) + 0.002f) * (i_this->field_0x744.y - i_this->field_0x750.y);

        if (i_this->field_0x75c > 2.0f) {
            i_this->field_0x75c = 2.0f;
        }
    }

    return rv;
}

/* 807A1DB8-807A1FA4 0040B8 01EC+00 1/1 0/0 0/0 .text            e_st_hang_2_shoot__FP10e_st_class */
static void e_st_hang_2_shoot(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* player = (fopAc_ac_c*)dComIfGp_getPlayer(0);
    cXyz sp40, sp4c;

    if (a_this->current.pos.y - player->current.pos.y <= 0.0f) {
        i_this->mAction = 0xD;
        i_this->mMode = 0;
        return;
    }

    switch (i_this->mMode) {
        case 0:
            i_this->mMode = 1;
            anm_init(i_this, 0x17, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->field_0xf84 = 0;
            break;
        
        case 1:
            int frame = i_this->mpModelMorf->getFrame();

            if (frame >= 0x1E && frame <= 0x2A) {
                for (int i = 0; i < TREG_S(2) + 5; i++) {
                    fopAcM_createChild(PROC_E_ST_LINE, fopAcM_GetID(a_this), i_this->field_0xf84,
                                       &i_this->field_0x704, fopAcM_GetRoomNo(a_this), NULL, NULL, -1, NULL);
                    i_this->field_0xf84++;
                }
            }

            if (frame >= 0x1E && frame <= YREG_S(4) + 0x37) {
                i_this->mSound.startCreatureSoundLevel(Z2SE_EN_ST_SILK, 0, -1);
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 0xD;
                i_this->mMode = 3;
                anm_init(i_this, 0x13, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            }
            break;
    }

    cLib_addCalcAngleS2(&a_this->current.angle.y, fopAcM_searchPlayerAngleY(a_this), 4, 0x1000);
}

/* 807A1FA4-807A2110 0042A4 016C+00 1/1 0/0 0/0 .text            e_st_s_damage__FP10e_st_class */
static void e_st_s_damage(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    switch (i_this->mMode) {
        case 0:
            i_this->mMode = 1;
            anm_init(i_this, 9, 2.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            break;
        
        case 1:
            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 0x33;
                i_this->mMode = 0;
                i_this->arg0 = 2;
            }
            break;
    }

    cLib_addCalcAngleS2(&a_this->current.angle.y, fopAcM_searchPlayerAngleY(a_this), 4, 0x1000);

    if (i_this->field_0x7e0 > 0.1f) {
        cXyz sp1c, sp28;

        sp1c.x = 0.0f;
        sp1c.y = 0.0f;
        sp1c.z = -i_this->field_0x7e0;
        cMtx_YrotS(*calc_mtx, i_this->field_0x7de);
        MtxPosition(&sp1c, &sp28);
        a_this->current.pos += sp28;
        i_this->mBgPos.x = a_this->current.pos.x;
        i_this->mBgPos.z = a_this->current.pos.z;
        cLib_addCalc0(&i_this->field_0x7e0, 1.0f, TREG_F(12) + 7.0f);
        i_this->mBgc.CrrPos(dComIfG_Bgsp());
    }
}

/* 807A2110-807A266C 004410 055C+00 1/1 0/0 0/0 .text            e_st_damage__FP10e_st_class */
static void e_st_damage(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp54, sp60;
    s16 sVar1 = 0x200;
    
    i_this->field_0x68a = 6;
    i_this->field_0x7ec = 0.0f;

    switch (i_this->mMode) {
        case 0:
            i_this->mMode = 1;
            anm_init(i_this, 0x18, 2.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->field_0x7f4 = 17.0f;

            if (a_this->current.angle.x < 0x1000 && a_this->current.angle.x > -0x1000) {
                if (i_this->field_0x69c.y != 0 || i_this->field_0x69c.x != 0) {
                    cMtx_YrotS(*calc_mtx, i_this->field_0x69c.y);
                    cMtx_XrotM(*calc_mtx, i_this->field_0x69c.x);
                    sp54.x = 0.0f;
                    sp54.y = YREG_F(5) + 10.0f;
                    sp54.z = 0.0f;
                } else {
                    cMtx_YrotS(*calc_mtx, i_this->field_0x7de);
                    sp54.x = 0.0f;
                    sp54.y = YREG_F(5) + 35.0f;
                    sp54.z = -30.0f;
                }

                // sp54.x = 0.0f;
                MtxPosition(&sp54, &a_this->speed);
            } else {
                cMtx_YrotS(*calc_mtx, i_this->field_0x7de);
                sp54.x = 0.0f;
                sp54.y = 40.0f;
                sp54.z = -30.0f;
                MtxPosition(&sp54, &a_this->speed);
            }

            i_this->field_0x6a2 = 0;
            i_this->field_0x6a4 = 0;
            i_this->mTimers[2] = 10;
            break;

        case 1:
            if (i_this->mBgc.ChkGroundHit() || i_this->mpModelMorf->getFrame() >= i_this->field_0x7f4) {
                i_this->field_0x7f4 = YREG_F(4) + 2.0f;
                anm_init(i_this, 0xE, 10.0f, J3DFrameCtrl::EMode_LOOP, i_this->field_0x7f4);
                i_this->mMode = 2;
            }
            // fallthrough
        case 2:
            a_this->current.angle.y += i_this->field_0x7d4;
            cLib_addCalcAngleS2(&a_this->current.angle.x, -0x8000, 4, 0x700);

            if (i_this->mBgc.ChkGroundHit()) {
                i_this->mSound.startCreatureSound(Z2SE_CM_BODYFALL_M, 0, -1);
                i_this->mMode = 3;
                a_this->speed.x *= 0.3f;
                a_this->speed.z *= 0.3f;
                a_this->speed.y = 30.0f;
                sVar1 = 0x1000;
                fopAcM_effSmokeSet1(&i_this->field_0xf6c, &i_this->field_0xf70, &a_this->current.pos, NULL, 1.0f, &a_this->tevStr, 1);
                i_this->mTimers[1] = 60;
            }

            if (i_this->mTimers[2] == 0 && i_this->mBgc.ChkWallHit()) {
                i_this->mTimers[2] = 10;
                a_this->speed.x *= -0.3f;
                a_this->speed.z *= -0.3f;
            }
            break;
        
        case 3:
        case 4:
        case 5:
            a_this->current.angle.y += i_this->field_0x7d4;
            sVar1 = 0x800;

            if (i_this->mBgc.ChkGroundHit()) {
                if (i_this->mMode == 3) {
                    i_this->mTimers[1] = 60;
                    i_this->mMode = 4;
                }

                a_this->speed.x *= 0.5f;
                a_this->speed.z *= 0.5f;
                sVar1 = 0x1000;

                if (i_this->mAnm == 0xD && i_this->mTimers[0] == 0) {
                    u8 i_size;
                    if (small != 0) {
                        i_size = 7;
                    } else {
                        i_size = 16;
                    }

                    fopAcM_createDisappear(a_this, &a_this->current.pos, i_size, 0, 6);
                    fopAcM_delete(a_this);

                    if (i_this->mSwBit != 0xFF) {
                        dComIfGs_onSwitch(i_this->mSwBit, fopAcM_GetRoomNo(a_this));
                    }
                }
            }

            f32 fVar2 = i_this->mTimers[1] * (TREG_F(14) + 150.0f);
            f32 fVar3 = cM_ssin(i_this->mTimers[1] * 4000);
            s16 sVar2 = fVar2 * fVar3 + 32768.0f;
            cLib_addCalcAngleS2(&a_this->current.angle.x, sVar2, 4, sVar1);
            cLib_addCalcAngleS2(&a_this->current.angle.z, (s16)(fVar2 * cM_scos(i_this->mTimers[1] * 3000)), 4, sVar1);

            if (i_this->mMode == 4) {
                cLib_addCalc0(&i_this->field_0x7f4, 1.0f, 0.1f);
                i_this->mpModelMorf->setPlaySpeed(i_this->field_0x7f4);

                if (i_this->field_0x7f4 < 0.2f) {
                    i_this->mMode = 5;
                    anm_init(i_this, 0xD, YREG_F(6) + 30.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                    i_this->mTimers[0] = 40;
                }
            }

            if (i_this->mMode >= 4) {
                cLib_addCalcAngleS2(&i_this->field_0x7d4, 0, 1, 0x50);
            }
            break;
    }

    cLib_addCalcAngleS2(&i_this->field_0x69c.y, 0, 4, sVar1);
    cLib_addCalcAngleS2(&i_this->field_0x69c.x, 0, 4, sVar1);
    a_this->current.pos += a_this->speed;
    a_this->speed.y -= YREG_F(8) + 5.0f;
    a_this->current.pos.y -= 30.0f;
    a_this->old.pos.y -= 30.0f;
    i_this->mBgc.CrrPos(dComIfG_Bgsp());
    a_this->current.pos.y += 30.0f;
    a_this->old.pos.y += 30.0f;
}

/* 807A266C-807A28A0 00496C 0234+00 1/1 0/0 0/0 .text            e_st_water__FP10e_st_class */
static void e_st_water(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp4c, sp58;

    sp4c = a_this->home.pos - a_this->current.pos;

    switch (i_this->mMode) {
        case 0:
            i_this->mpModelMorf->setPlaySpeed(0.0f);
            i_this->mMode = 1;
            i_this->mTimers[0] = 40;
            a_this->speed.y = 0.0f;
            i_this->field_0x7e4 = 1;
            anm_init(i_this, 0x24, 3.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            i_this->mSound.startCreatureSound(Z2SE_EN_ST_V_WATERDEAD, 0, -1);
            // fallthrough
        case 1:
            a_this->current.pos.y += a_this->speed.y;
            a_this->speed.y -= 0.1f;

            if (a_this->speed.y < -2.0f) {
                a_this->speed.y = -2.0f;
            }

            if (i_this->mTimers[0] == 0) {
                fopAcM_createDisappear(a_this, &a_this->current.pos, l_HIO.basic_size * 10.0f, 0, 6);
                fopAcM_delete(a_this);

                if (i_this->mSwBit != 0xFF) {
                    dComIfGs_onSwitch(i_this->mSwBit, fopAcM_GetRoomNo(a_this));
                }
            }
            break;
    }

    a_this->current.pos.x += a_this->speed.x;
    a_this->current.pos.z += a_this->speed.z;
    i_this->mBgc.CrrPos(dComIfG_Bgsp());
    a_this->speed.x *= 0.9f;
    a_this->speed.z *= 0.9f;

    cXyz sp64(a_this->current.pos);
    sp64.y = i_this->mGroundCross;

    if (fabsf(sp64.y - a_this->current.pos.y) < 70.0f) {
        f32 fVar1 = 2.0f;
        if (small != 0) {
            fVar1 = 1.0f;
        }

        fopAcM_effHamonSet(&i_this->field_0xf7c, &sp64, fVar1, 0.2f);
    }
}

/* 807A28A0-807A2970 004BA0 00D0+00 1/1 0/0 0/0 .text            water_check__FP10e_st_class */
static bool water_check(e_st_class* i_this) {
    fopEn_enemy_c* a_this = &i_this->actor;
    
    if (small != 0) {
        i_this->mGroundCross = 3120.0f;
    } else {
        dBgS_ObjGndChk_Spl gnd_chk_spl;
        Vec pos;
        pos.x = a_this->current.pos.x;
        pos.y = a_this->current.pos.y + 200.0f;
        pos.z = a_this->current.pos.z;
        gnd_chk_spl.SetPos(&pos);
        i_this->mGroundCross = dComIfG_Bgsp().GroundCross(&gnd_chk_spl);
    }

    return i_this->mGroundCross > a_this->current.pos.y + 10.0f + WREG_F(11) ? true : false;
}

/* 807A2970-807A2A88 004C70 0118+00 1/1 0/0 0/0 .text            gr_check__FP10e_st_class */
static bool gr_check(e_st_class* i_this) {
    fopEn_enemy_c* a_this = &i_this->actor;
    dBgS_ObjGndChk gnd_chk;
    Vec pos;
    pos.x = a_this->current.pos.x;
    pos.y = a_this->current.pos.y + 200.0f;
    pos.z = a_this->current.pos.z;
    gnd_chk.SetPos(&pos);

    if (a_this->current.pos.y - dComIfG_Bgsp().GroundCross(&gnd_chk) > 200.0f) {
        return true;
    }

    return false;
}

/* 807A2B00-807A2D28 004E00 0228+00 1/1 0/0 0/0 .text            e_st_g_normal__FP10e_st_class */
static void e_st_g_normal(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp4c, sp58;
    f32 fVar1 = 0.0f;

    switch (i_this->mMode) {
        case 0:
            i_this->mMode = 1;
            anm_init(i_this, 0x22, 10.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            i_this->mTimers[0] = cM_rndF(100.0f) + 50.0f;
            i_this->mPlAngle = a_this->current.angle.y;
            break;

        case 1:
            if (i_this->mTimers[0] == 0) {
                i_this->mMode = 2;
                sp4c.x = a_this->home.pos.x + cM_rndFX(700.0f);
                f32 fVar2 = cM_rndFX(700.0f);
                sp4c.z = a_this->home.pos.z + fVar2;
                sp4c.x -= a_this->current.pos.x;
                sp4c.z -= a_this->current.pos.z;
                i_this->mPlAngle = cM_atan2s(sp4c.x, sp4c.z);                
            }
            break;
        
        case 2:
            s16 sVar1 = i_this->mPlAngle - a_this->current.angle.y;
            if (sVar1 < 0x800 && sVar1 > -0x800) {
                anm_init(i_this, 0x1F, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                i_this->mMode = 3;
                i_this->mTimers[0] = cM_rndF(100.0f) + 50.0f;
            } else if (i_this->mAnm != 0x21) {
                anm_init(i_this, 0x21, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            }
            break;

        case 3:
            fVar1 = (VREG_F(0) + 1.7f) * l_HIO.basic_size;

            if (i_this->mTimers[0] == 0) {
                i_this->mMode = 0;
            }
            break;
    }

    cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, 1.0f);
    cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mPlAngle, 2, 0x100);

    if (pl_check(i_this, l_HIO.pl_recognize_dist)) {
        i_this->mAction = 0x33;
        i_this->mMode = 0;
    }
}

/* 807A2D28-807A3148 005028 0420+00 1/1 0/0 0/0 .text            e_st_g_fight__FP10e_st_class */
static u8 e_st_g_fight(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp64, sp70;
    int frame = i_this->mpModelMorf->getFrame();
    f32 fVar1 = 0.0f;
    s16 sVar1 = 0x200;
    s8 sVar2 = 0;
    s8 sVar3 = 0;
    u8 rv = 0;
    f32 combat_start_dist = l_HIO.combat_start_dist;
    if (small != 0) {
        combat_start_dist *= BREG_F(11) + 0.58f;
    }

    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, 0x1F, 6.0f, J3DFrameCtrl::EMode_LOOP, 2.0f);
            i_this->mMode = 1;
            // fallthrough
        case 1:
            sVar1 = 0x400;
            i_this->mPlAngle = fopAcM_searchPlayerAngleY(a_this);
            fVar1 = (VREG_F(2) + 3.5f) * l_HIO.basic_size;
            if (pl_check(i_this, combat_start_dist)) {
                i_this->mMode = 2;
                anm_init(i_this, 0x23, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                i_this->mTimers[0] = cM_rndF(20.0f) + 20.0f;
            }
            break;
        
        case 2:
            rv = 1;
            i_this->mPlAngle = fopAcM_searchPlayerAngleY(a_this);

            if (i_this->mTimers[0] == 0) {
                anm_init(i_this, 6, 5.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_ST_V_ATTACKA, -1);
                i_this->mMode = 3;
            }

            sVar3 = 1;
            break;
        
        case 3:
            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 7, 1.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_ST_V_ATTACKB, -1);
                i_this->mMode = 4;
                i_this->mTimers[0] = l_HIO.time_before_attack;
            }

            sVar3 = 1;
            break;

        case 4:
            if (i_this->mTimers[0] == 0) {
                anm_init(i_this, 8, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_ST_V_ATTACKC, -1);
                i_this->mMode = 5;
            }

            sVar3 = 1;
            break;
            
        case 5:
            if (frame >= 0x1A && frame <= 0x22) {
                i_this->field_0xb94 = 1;
            }

            if (i_this->mpModelMorf->isStop()) {
                sVar2 = 1;
            }
            break;
    }

    cLib_addCalc2(&a_this->speedF, fVar1, 1.0f, 2.0f);
    cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mPlAngle, 2, sVar1);

    if (sVar3 != 0 && i_this->field_0x7f8 > combat_start_dist + 100.0f) {
        i_this->mMode = 0;
    }

    if (!pl_check(i_this, l_HIO.pl_recognize_dist + 100.0f) || sVar2 != 0) {
        i_this->mAction = 0x32;
        i_this->mMode = 0;
        rv = 0;
    }

    if (i_this->mSph2.ChkAtHit()) {
        fopAc_ac_c* actor_p = dCc_GetAc(i_this->mSph2.GetAtHitObj()->GetAc());
        if (actor_p != NULL && fopAcM_GetName(actor_p) == PROC_ALINK) {
            dComIfGp_getVibration().StartShock(4, 31, cXyz(0.0f, 1.0f, 0.0f));
        }
    }

    return rv;
}

/* 807A3148-807A3240 005448 00F8+00 1/1 0/0 0/0 .text            e_st_g_def__FP10e_st_class */
static int e_st_g_def(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp48, sp54;

    i_this->field_0xcf4 = 1;

    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, 0x11, 2.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_ST_V_DEFENSE, -1);
            i_this->mMode = 1;
            break;
        
        case 1:
            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 0x33;
                i_this->mMode = 0;
            }
            break;
    }

    cLib_addCalc2(&a_this->speedF, 0.0f, 1.0f, 2.0f);
    return 1;
}

/* 807A3240-807A3360 005540 0120+00 1/1 0/0 0/0 .text            e_st_g_damage__FP10e_st_class */
static void e_st_g_damage(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    switch (i_this->mMode) {
        case 0:
            if ((i_this->field_0x7dc & 1) != 0) {
                anm_init(i_this, 0x19, 2.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            } else {
                anm_init(i_this, 0x1A, 2.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            }

            i_this->mSound.startCreatureVoice(Z2SE_EN_ST_V_HIT, -1);
            i_this->field_0x7dc++;
            i_this->mMode = 1;
            break;
        
        case 1:
            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 0x33;
                i_this->mMode = 0;
            }
            break;
    }

    cLib_addCalc2(&a_this->speedF, 0.0f, 1.0f, 2.0f);
}

/* 807A3360-807A3450 005660 00F0+00 1/1 0/0 0/0 .text            e_st_g_s_damage__FP10e_st_class */
static void e_st_g_s_damage(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    switch (i_this->mMode) {
        case 0:
            i_this->mMode = 1;
            anm_init(i_this, 9, 2.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_ST_V_NODAMAGE, -1);
            break;
        
        case 1:
            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 0x33;
                i_this->mMode = 0;
            }
            break;
    }

    cLib_addCalc2(&a_this->speedF, 0.0f, 1.0f, 2.0f);
}

/* 807A3450-807A3548 005750 00F8+00 1/1 0/0 0/0 .text            e_st_g_wind__FP10e_st_class */
static void e_st_g_wind(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    switch (i_this->mMode) {
        case 0:
            i_this->mMode = 1;
            anm_init(i_this, 0x25, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mSound.startCreatureSound(Z2SE_EN_ST_V_WINDDAMAGE, 0, -1);
            break;
        
        case 1:
            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 0x33;
                i_this->mMode = 0;
                i_this->arg0 = 2;
            }
            break;
    }

    cLib_addCalc0(&a_this->speedF, 1.0f, 3.0f);
}

/* 807A3548-807A3858 005848 0310+00 1/1 0/0 0/0 .text            e_st_g_chance__FP10e_st_class */
static void e_st_g_chance(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp3c, sp48;

    i_this->field_0xcf4 = 2;

    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, 0xA, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_ST_V_DAWNA, -1);
            i_this->mMode = 1;
            a_this->onDownFlg();
            break;

        case 1:
            if (i_this->mpModelMorf->checkFrame(13.0f)) {
                i_this->mSound.startCreatureSound(Z2SE_CM_BODYFALL_M, 0, -1);
            }

            if (i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 0xB, 1.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_ST_V_DAWNB, -1);
                i_this->mMode = 2;
                i_this->mTimers[0] = l_HIO.down_time;
            }
            break;
        
        case 2:
            if (i_this->mAnm == 0xC && i_this->mpModelMorf->isStop()) {
                anm_init(i_this, 0xB, 3.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            }

            if (i_this->mTimers[0] == 0) {
                anm_init(i_this, 0x20, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                i_this->mSound.startCreatureVoice(Z2SE_EN_ST_V_STAND, -1);
                i_this->mMode = 3;
            }
            break;

        case 3:
            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 0x33;
                i_this->mMode = 0;
                a_this->offDownFlg();
            }
            break;
    }

    cLib_addCalc2(&a_this->speedF, 0.0f, 1.0f, 4.0f);
    a_this->setDownPos(&a_this->current.pos);

    if (a_this->checkCutDownHitFlg()) {
        i_this->mAction = 0x39;
        i_this->mMode = 0;
        a_this->offCutDownHitFlg();
        a_this->offDownFlg();
        i_this->field_0x7e4 = 1;
        daPy_getPlayerActorClass()->onEnemyDead();
    }
}

/* 807A3858-807A3B38 005B58 02E0+00 1/1 0/0 0/0 .text            e_st_g_end__FP10e_st_class */
static u8 e_st_g_end(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp58, sp64;
    u8 rv = 1;
    
    i_this->field_0x68c = 10;
    i_this->field_0x68a = 10;

    switch (i_this->mMode) {
        case 0:
            anm_init(i_this, 0xF, 1.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_ST_V_DEATH2, -1);
            i_this->mMode = 2;
            break;
        
        case 2:
            if (i_this->mpModelMorf->checkFrame(36.5f)) {
                i_this->mSound.startCreatureSound(Z2SE_CM_BODYFALL_S, 0, -1);
            }

            if (i_this->mpModelMorf->isStop()) {
                fopAcM_createDisappear(a_this, &a_this->current.pos, l_HIO.basic_size * 10.0f, 0, 6);
                fopAcM_delete(a_this);

                if (i_this->mSwBit != 0xFF) {
                    dComIfGs_onSwitch(i_this->mSwBit, fopAcM_GetRoomNo(a_this));
                }
            }
            break;

        case 10:
            anm_init(i_this, 0x10, 2.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_ST_V_DEATHA, -1);
            i_this->mMode = 11;
            break;

        case 11:
            rv = 0;

            if (i_this->mpModelMorf->checkFrame(32.0f)) {
                i_this->mSound.startCreatureSound(Z2SE_CM_BODYFALL_M, 0, -1);
            }

            if (i_this->mpModelMorf->isStop()) {
                fopAcM_createDisappear(a_this, &a_this->current.pos, l_HIO.basic_size * 10.0f, 0, 6);
                fopAcM_delete(a_this);

                if (i_this->mSwBit != 0xFF) {
                    dComIfGs_onSwitch(i_this->mSwBit, fopAcM_GetRoomNo(a_this));
                }
            }
            break;
    }

    if (i_this->mBgc.ChkWallHit()) {
        a_this->speedF = 0.0f;
    }

    cLib_addCalc2(&a_this->speedF, 0.0f, 1.0f, 4.0f);
    return rv;
}

/* 807A3B38-807A3E44 005E38 030C+00 1/1 0/0 0/0 .text            damage_check_g__FP10e_st_class */
static void damage_check_g(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* player = (fopAc_ac_c*)dComIfGp_getPlayer(0);

    i_this->mStts.Move();

    if (i_this->field_0x68a != 0) {
        return;
    }

    if (i_this->mSph1.ChkTgHit()) {
        i_this->mAtInfo.mpCollider = i_this->mSph1.GetTgHitObj();

        if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOOMERANG)) {
            i_this->mAction = 0x37;
            i_this->mMode = 0;
            i_this->field_0x68a = 10;
            return;
        }

        cc_at_check(a_this, &i_this->mAtInfo);
        OS_REPORT("E_st DAM %d\n", i_this->mAtInfo.mAttackPower);
        OS_REPORT("E_st HP  %d\n", a_this->health);
        i_this->field_0x68a = 10;

        if (i_this->mAtInfo.mHitType == 0x10) {
            i_this->mAction = 0x36;
            i_this->mMode = 0;
            a_this->speedF = KREG_F(15) + -10.0f;
        } else if (a_this->health <= 0) {
            i_this->mAction = 0x39;
            i_this->mMode = 10;
            daPy_getPlayerActorClass()->onEnemyDead();
            a_this->speedF = KREG_F(14) + -40.0f;
            daPy_getPlayerActorClass()->onEnemyDead();
            i_this->field_0x7e4 = 1;
        } else {
            if (daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_JUMP) {
                if (daPy_getPlayerActorClass()->checkCutJumpCancelTurn()) {
                    i_this->field_0x68a = NREG_S(7) + 3;
                }
            }

            if (i_this->mAtInfo.mHitType == 1 && (daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_TURN_RIGHT || daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_UNK_9)) {
                i_this->mAction = 0x38;
                a_this->speedF = KREG_F(14) + -40.0f;
                i_this->field_0x68a = 30;
            } else if (daPy_getPlayerActorClass()->getCutCount() >= 4) {
                i_this->mAction = 0x38;
                a_this->speedF = KREG_F(14) + -40.0f;
                i_this->field_0x68a = 20;
            } else {
                i_this->mAction = 0x35;
                a_this->speedF = KREG_F(18) + -15.0f;
            }

            i_this->mMode = 0;
        }
    }

    if (a_this->health <= 10) {
        a_this->health = 0;
        i_this->mSph1.SetTgHitMark((CcG_Tg_HitMark)3);
    }

    if (i_this->field_0x68c == 0 && i_this->mSph3.ChkTgHit()) {
        cXyz sp24, sp30;
        def_se_set(&i_this->mSound, i_this->mSph3.GetTgHitObj(), 0x34, NULL);
        dScnPly_c::setPauseTimer(4);
        i_this->field_0x68c = 10;
        cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
        sp24.x = KREG_F(0);
        sp24.y = KREG_F(1) + 100.0f;
        sp24.z = KREG_F(2) + 50.0f;
        MtxPosition(&sp24, &sp30);
        sp30 += a_this->current.pos;
        dComIfGp_setHitMark(2, NULL, &sp30, &a_this->shape_angle, NULL, 0);

        if (i_this->mAnm == 0xB) {
            anm_init(i_this, 0xC, 2.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_ST_V_DAWNC, -1);
        }

        a_this->speedF = KREG_F(17) + -12.0f;
    }
}

/* 807A3E44-807A4004 006144 01C0+00 1/1 0/0 0/0 .text            ground_angle_set__FP10e_st_class */
static void ground_angle_set(e_st_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dComIfGp_getPlayer(0);
    s16 sVar1 = 0;
    s16 sVar2 = 0;
    cXyz spc8, spd4;
    dBgS_GndChk gnd_chk;
    f32 fVar1 = (VREG_F(11) + 58.0f) * l_HIO.basic_size;

    if (i_this->mBgc.GetGroundH() != -1e9f) {
        Vec spbc;
        spbc.x = a_this->current.pos.x;
        spbc.y = a_this->current.pos.y + 100.0f;
        spbc.z = a_this->current.pos.z + fVar1;
        gnd_chk.SetPos(&spbc);
        spbc.y = dComIfG_Bgsp().GroundCross(&gnd_chk);

        if (spbc.y != -1e9f) {
            sVar2 = -cM_atan2s(spbc.y - a_this->current.pos.y, spbc.z - a_this->current.pos.z);
            if (sVar2 > 0x2000 || sVar2 < -0x2000) {
                sVar2 = 0;
            }
        }

        spbc.x = a_this->current.pos.x + fVar1;
        spbc.y = a_this->current.pos.y + 100.0f;
        spbc.z = a_this->current.pos.z;
        gnd_chk.SetPos(&spbc);
        spbc.y = dComIfG_Bgsp().GroundCross(&gnd_chk);

        if (spbc.y != -1e9f) {
            sVar1 = (s16)cM_atan2s(spbc.y - a_this->current.pos.y, spbc.x - a_this->current.pos.x);
            if (sVar1 > 0x2000 || sVar1 < -0x2000) {
                sVar1 = 0;
            }
        }

        cLib_addCalcAngleS2(&i_this->field_0x6a4, sVar2, 4, 0x300);
        cLib_addCalcAngleS2(&i_this->field_0x6a2, sVar1, 4, 0x300);
    }
}

/* ############################################################################################## */
/* 807A6970-807A6974 00014C 0004+00 0/2 0/0 0/0 .rodata          @6300 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6300 = 20000.0f;
COMPILER_STRIP_GATE(0x807A6970, &lit_6300);
#pragma pop

/* 807A4004-807A4148 006304 0144+00 1/1 0/0 0/0 .text foot_control__FP10e_st_classP7st_foot */
static void foot_control(e_st_class* i_this, st_foot* foot_p) {
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
static void foot_control_main(e_st_class* i_this) {
    // NONMATCHING
}

/* 807A421C-807A4A40 00651C 0824+00 2/1 0/0 0/0 .text            action__FP10e_st_class */
static void action(e_st_class* i_this) {
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
static void daE_ST_Execute(e_st_class* i_this) {
    // NONMATCHING
}

/* 807A53BC-807A53C4 0076BC 0008+00 1/0 0/0 0/0 .text            daE_ST_IsDelete__FP10e_st_class */
static bool daE_ST_IsDelete(e_st_class* i_this) {
    return true;
}

/* 807A53C4-807A542C 0076C4 0068+00 1/0 0/0 0/0 .text            daE_ST_Delete__FP10e_st_class */
static void daE_ST_Delete(e_st_class* i_this) {
    // NONMATCHING
}

/* 807A542C-807A5618 00772C 01EC+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* a_this) {
    // NONMATCHING
}

/* 807A5618-807A578C 007918 0174+00 1/1 0/0 0/0 .text kabe_initial_pos_set__FP10e_st_class */
static void kabe_initial_pos_set(e_st_class* i_this) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807A69C8-807A69CC 0001A4 0004+00 1/1 0/0 0/0 .rodata          @6838 */
SECTION_RODATA static f32 const lit_6838 = 5000.0f;
COMPILER_STRIP_GATE(0x807A69C8, &lit_6838);

/* 807A578C-807A586C 007A8C 00E0+00 1/1 0/0 0/0 .text roof_initial_pos_set__FP10e_st_class */
static void roof_initial_pos_set(e_st_class* i_this) {
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

// /* 807A61FC-807A6244 0084FC 0048+00 2/1 0/0 0/0 .text            __dt__12daE_ST_HIO_cFv */
// daE_ST_HIO_c::~daE_ST_HIO_c() {
//     // NONMATCHING
// }

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

AUDIO_INSTANCES;

/* 807A6C88-807A6CA8 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_ST_Method */
static actor_method_class l_daE_ST_Method = {
    (process_method_func)daE_ST_Create,
    (process_method_func)daE_ST_Delete,
    (process_method_func)daE_ST_Execute,
    (process_method_func)daE_ST_IsDelete,
    (process_method_func)daE_ST_Draw,
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
