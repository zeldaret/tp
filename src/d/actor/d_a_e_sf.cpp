/**
 * @file d_a_e_sf.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_e_sf.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_camera.h"
#include "f_op/f_op_actor_enemy.h"
#include "f_op/f_op_camera_mng.h"
#include "Z2AudioLib/Z2Instances.h"

class daE_SF_HIO_c {
public:
    /* 8078512C */ daE_SF_HIO_c();
    /* 8078977C */ virtual ~daE_SF_HIO_c() {}

    /* スタルフォス - Stalfos */
    /* 0x04 */ s8 id;
    /* 0x08 */ f32 basic_size;              // 基本サイズ - Basic Size
    /* 0x0C */ f32 move_spd;                // 移動速度 - Movement Speed
    /* 0x10 */ f32 charge_spd;              // 突進速度 - Charge Speed
    /* 0x14 */ f32 p_recognize_dist_m;      // P認識距離　M - P Recognition Distance M
    /* 0x18 */ f32 combat_start_range;      // 戦闘開始範囲 - Combat Start Range
    /* 0x1C */ f32 attack_start_range;      // 攻撃開始範囲 - Attack Start Range
    /* 0x20 */ f32 defense_recognize_range; // 防御認識範囲 - Defense Recognition Range
    /* 0x24 */ u8 invulnerable;             // 不死身 - Invulnerable
};


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
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

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
// static u16 ap_name[3] = {
//     0x81DA,
//     0x81DB,
//     0x81DC,
// };

/* 80789E08-80789E10 000078 0008+00 1/1 0/0 0/0 .data            foot_idx$4976 */
// static int foot_idx[2] = {
//     0x14, 0x18,
// };

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
// static u16 p_name[2] = {
//     0x81CB,
//     0x81CC,
// };

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
daE_SF_HIO_c::daE_SF_HIO_c() {
    id = -1;
    basic_size = 1.2f;
    move_spd = 5.0f;
    p_recognize_dist_m = 3000.0f;
    charge_spd = 10.0f;
    combat_start_range = 250.0f;
    attack_start_range = 300.0f;
    defense_recognize_range = 300.0f;
    invulnerable = false;
}

/* 80785188-80785234 000148 00AC+00 11/11 0/0 0/0 .text            anm_init__FP10e_sf_classifUcf */
static void anm_init(e_sf_class* i_this, int i_index, f32 i_morf, u8 i_attr, f32 i_rate) {
    i_this->mpModelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_sf", i_index), i_attr, i_morf, i_rate, 0.0f, -1.0f);
    i_this->mAnm = i_index;
}

/* 80785234-8078545C 0001F4 0228+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        int jntNo = i_joint->getJntNo();
        J3DModel* model = j3dSys.getModel();
        e_sf_class* i_this = (e_sf_class*)model->getUserArea();

        if (i_this != NULL) {
            MTXCopy(model->getAnmMtx(jntNo), *calc_mtx);

            if (jntNo == 4) {
                cMtx_YrotM(*calc_mtx, i_this->field_0x6b0 + i_this->field_0x6b8);
                cMtx_XrotM(*calc_mtx, i_this->field_0x6b2);
                cMtx_ZrotM(*calc_mtx, -i_this->field_0x6b6);
            }

            model->setAnmMtx(jntNo, *calc_mtx);
            MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);

            if (jntNo == TREG_S(0)) {
                MTXCopy(model->getAnmMtx(jntNo), *calc_mtx);
                cMtx_YrotM(*calc_mtx, TREG_S(1));
                cMtx_XrotM(*calc_mtx, TREG_S(2));
                cMtx_ZrotM(*calc_mtx, TREG_S(3));
                model->setAnmMtx(jntNo, *calc_mtx);
                MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
            }

            if (jntNo == TREG_S(4)) {
                MTXCopy(model->getAnmMtx(jntNo), *calc_mtx);
                cMtx_YrotM(*calc_mtx, TREG_S(5));
                cMtx_XrotM(*calc_mtx, TREG_S(6));
                cMtx_ZrotM(*calc_mtx, TREG_S(7));
                model->setAnmMtx(jntNo, *calc_mtx);
                MTXCopy(*calc_mtx, J3DSys::mCurrentMtx);
            }
        }
    }

    return 1;
}

/* 8078545C-80785654 00041C 01F8+00 1/0 0/0 0/0 .text            daE_SF_Draw__FP10e_sf_class */
static int daE_SF_Draw(e_sf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    J3DModel* model = i_this->mpModelMorf->getModel();

    g_env_light.settingTevStruct(0, &a_this->current.pos, &a_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &a_this->tevStr);

    J3DModelData* modelData = model->getModelData();
    s16 color = i_this->field_0x6a6;
    for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
        J3DMaterial* matNode_p = modelData->getMaterialNodePointer(i);
        if (i == 0) {
            matNode_p->getTevColor(2)->r = color;
            matNode_p->getTevColor(2)->g = color;
            matNode_p->getTevColor(2)->b = color;
        }
    }

    i_this->mpModelMorf->entryDL();

    if (i_this->field_0x5dc != NULL) {
        g_env_light.setLightTevColorType_MAJI(i_this->field_0x5dc, &a_this->tevStr);
        mDoExt_modelUpdateDL(i_this->field_0x5dc);
    }

    if (i_this->arg3 != 0xFF) {
        g_env_light.setLightTevColorType_MAJI(i_this->field_0x5e0, &a_this->tevStr);
        mDoExt_modelUpdateDL(i_this->field_0x5e0);
    }

    cXyz pos;
    pos.set(a_this->current.pos.x, a_this->current.pos.y + 50.0f + BREG_F(18), a_this->current.pos.z);
    i_this->mShadowKey = dComIfGd_setShadow(i_this->mShadowKey, 1, model, &pos, BREG_F(19) + 900.0f, 0.0f,
                                            a_this->current.pos.y, i_this->mBgc.GetGroundH(), i_this->mBgc.m_gnd, &a_this->tevStr,
                                            0, 1.0f, dDlst_shadowControl_c::getSimpleTex());

    if (i_this->field_0x5dc != NULL) {
        dComIfGd_addRealShadow(i_this->mShadowKey, i_this->field_0x5dc);
    }

    if (i_this->arg3 != 0xFF) {
        dComIfGd_addRealShadow(i_this->mShadowKey, i_this->field_0x5e0);
    }

    return 1;
}

/* 80785654-8078572C 000614 00D8+00 1/1 0/0 0/0 .text            other_bg_check__FP10e_sf_classP10fopAc_ac_c */
static BOOL other_bg_check(e_sf_class* i_this, fopAc_ac_c* i_actor) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dBgS_LinChk lin_chk;
    cXyz sp98, start, end;

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

/* 8078572C-80785770 0006EC 0044+00 2/2 0/0 0/0 .text            player_way_check__FP10e_sf_class */
static BOOL player_way_check(e_sf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* player = (fopAc_ac_c*)dComIfGp_getPlayer(0);

    s16 angle_delta = a_this->shape_angle.y - player->shape_angle.y;
    if (angle_delta < 0) {
        angle_delta = -angle_delta;
    }

    if ((u32)(angle_delta & 0xFFFF) < 0x6000) {
        return FALSE;
    }

    return TRUE;
}

/* 80785770-80785880 000730 0110+00 1/1 0/0 0/0 .text            way_bg_check__FP10e_sf_classff */
static BOOL way_bg_check(e_sf_class* i_this, f32 param_2, f32 param_3) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dBgS_LinChk lin_chk;
    cXyz spa8, start, end;

    start = a_this->current.pos;
    start.y += param_3;
    cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
    spa8.x = 0.0f;
    spa8.y = param_3;
    spa8.z = param_2;
    MtxPosition(&spa8, &end);
    end += a_this->current.pos;

    lin_chk.Set(&start, &end, a_this);
    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        return TRUE;
    }

    return FALSE;
}

/* 80785880-80785944 000840 00C4+00 2/2 0/0 0/0 .text            pl_check__FP10e_sf_classfs */
static int pl_check(e_sf_class* i_this, f32 i_distance, s16 param_3) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* player = (fopAc_ac_c*)dComIfGp_getPlayer(0);

    if (i_this->mPlayerDistanceXZ < i_distance) {
        s16 angle_delta = a_this->shape_angle.y - i_this->mPlayerAngleY;
        if (angle_delta < param_3 && angle_delta > (s16)-param_3 && !other_bg_check(i_this, player)) {
            return 1;
        }
    }

    for (int i = 0; i <= 2; i++) {
        if (i_this->field_0x970[i].ChkCoHit()) {
            return 2;
        }
    }

    return 0;
}

/* 8078A07C-8078A0A4 000054 0028+00 8/9 0/0 0/0 .bss             l_HIO */
static daE_SF_HIO_c l_HIO;

/* 80785944-80785BF8 000904 02B4+00 1/1 0/0 0/0 .text            e_sf_normal__FP10e_sf_class */
static void e_sf_normal(e_sf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp48, sp54;
    f32 target = 0.0f;
    s16 angle = 0x4000;
    s16 y_offset;

    switch (i_this->mActionPhase) {
        case 0:
        case 1:
        case 2:
            if (i_this->mTimers[0] == 0) {
                if (way_bg_check(i_this, 200.0f, 50.0f)) {
                    y_offset = cM_rndFX(10000.0f) + 32768.0f;
                    i_this->mTimers[1] = 40;
                } else {
                    sp54.x = a_this->home.pos.x + cM_rndFX(600.0f);
                    sp54.y = a_this->home.pos.y;
                    sp54.z = a_this->home.pos.z + cM_rndFX(600.0f);
                    sp48 = sp54 - a_this->current.pos;

                    y_offset = cM_atan2s(sp48.x, sp48.z) - a_this->current.angle.y;
                    if (y_offset > 0x3000) {
                        y_offset = 0x3000;
                    } else if (y_offset < -0x3000) {
                        y_offset = -0x3000;
                    }
                }

                i_this->field_0x5d0 = a_this->current.angle.y + y_offset;
                anm_init(i_this, 0xE, 10.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                i_this->mActionPhase = 3;
                i_this->mTimers[0] = cM_rndF(100.0f) + 100.0f;
            } else {
                angle = 0x7000;
            }
            break;
        
        case 3:
            target = l_HIO.move_spd;
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->field_0x5d0, 8, 0x400);

            if (i_this->mTimers[0] == 0 || (i_this->mTimers[1] == 0 && way_bg_check(i_this, 200.0f, 50.0f))) {
                i_this->mActionPhase = 2;
                i_this->mTimers[0] = cM_rndF(100.0f) + 50.0f;

                if (i_this->arg2 == 0) {
                    anm_init(i_this, 0xC, 10.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                } else {
                    anm_init(i_this, 0xD, 10.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                }
            }
            break;
    }

    cLib_addCalc2(&a_this->speedF, target, 1.0f, 3.0f);

    BOOL isOto = fopAcM_otoCheck(a_this, 2000.0f);
    if (((i_this->mFrameCounter & 0xF) == 0 || isOto) && (isOto || pl_check(i_this, i_this->field_0x694, angle) != 0)) {
        i_this->mAction = 3;
        i_this->mActionPhase = -10;
        i_this->mTimers[0] = 60;
    }
}

/* 80785BF8-80785D30 000BB8 0138+00 1/1 0/0 0/0 .text            e_sf_drawback__FP10e_sf_class */
static void e_sf_drawback(e_sf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* player = (fopAc_ac_c*)dComIfGp_getPlayer(0);

    switch (i_this->mActionPhase) {
        case 0:
            anm_init(i_this, 8, 5.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mActionPhase = 1;
            a_this->speedF = KREG_F(4) + -5.0f;
            i_this->field_0x6a4 = 10;
            i_this->mSound.startCreatureVoice(Z2SE_EN_SF_V_DRAWBACK, -1);
            i_this->field_0x5d0 = player->shape_angle.y + 0x8000;
            break;
        
        case 1:
            a_this->onHeadLockFlg();
            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->field_0x5d0, 4, 0x400);
            cLib_addCalc0(&a_this->speedF, 1.0f, KREG_F(5) + 0.1f);

            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 3;
                i_this->mActionPhase = 0;
            }
            break;
    }
}

/* 80785D30-807860F4 000CF0 03C4+00 2/1 0/0 0/0 .text            e_sf_fight_run__FP10e_sf_class */
static void e_sf_fight_run(e_sf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp44, sp50;
    f32 target = 0.0f;
    int frame = i_this->mpModelMorf->getFrame();

    switch (i_this->mActionPhase) {
        case -10:
            if (i_this->arg2 == 0) {
                anm_init(i_this, 0xC, 10.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            } else {
                anm_init(i_this, 0xD, 10.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
            }

            i_this->mTimers[1] = cM_rndF(10.0f) + 15.0f;
            i_this->mSound.startCreatureVoice(Z2SE_EN_SF_V_NOTICE, -1);
            i_this->mActionPhase = -9;
            break;

        case -9:
            if (i_this->mTimers[1] == 0) {
                i_this->mActionPhase = 0;
            }
            break;
        
        case 0:
            if (i_this->arg2 == 0) {
                anm_init(i_this, 0xF, 5.0f, J3DFrameCtrl::EMode_LOOP, cM_rndFX(0.05f) + 1.0f);
            } else {
                anm_init(i_this, 0x10, 5.0f, J3DFrameCtrl::EMode_LOOP, cM_rndFX(0.05f) + 1.0f);
            }

            i_this->mActionPhase = 1;
            // fallthrough
        case 1:
            target = l_HIO.charge_spd;

            if (i_this->mPlayerDistanceXZ < l_HIO.combat_start_range) {
                i_this->mActionPhase = 2;
            }
            break;

        case 2:
            target = l_HIO.move_spd;

            if (i_this->mPlayerDistanceXZ > l_HIO.combat_start_range + 50.0f) {
                i_this->mActionPhase = 0;
            } else if (i_this->mPlayerDistanceXZ < l_HIO.combat_start_range - 50.0f) {
                i_this->mActionPhase = 3;
                if (i_this->arg2 == 0) {
                    anm_init(i_this, 0xF, 5.0f, J3DFrameCtrl::EMode_LOOP, -1.0f);
                } else {
                    anm_init(i_this, 0x10, 5.0f, J3DFrameCtrl::EMode_LOOP, -1.0f);
                }
            }
            break;

        case 3:
            target = -l_HIO.move_spd;

            if (i_this->mPlayerDistanceXZ > l_HIO.combat_start_range) {
                i_this->mActionPhase = 2;
            }
            break;
    }

    cLib_addCalc2(&a_this->speedF, target, 1.0f, 3.0f);

    if (i_this->mActionPhase >= 0) {
        cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mPlayerAngleY, 4, 0x800);
    }

    if (pl_check(i_this, i_this->field_0x694 + 50.0f, 0x7FFF) == 0 && i_this->mTimers[0] == 0) {
        i_this->mAction = 0;
        i_this->mActionPhase = 0;
        i_this->mTimers[0] = cM_rndF(50.0f) + 50.0f;

        if (i_this->arg2 == 0) {
            anm_init(i_this, 0xC, 10.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
        } else {
            anm_init(i_this, 0xD, 10.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
        }
    } else {
        if (i_this->mPlayerAngleX < 0x1000 && i_this->mPlayerAngleX > -0x1000 && player_way_check(i_this) &&
            i_this->mPlayerDistanceXZ < l_HIO.attack_start_range && i_this->mTimers[2] == 0) {
            i_this->mTimers[2] = cM_rndF(20.0f) + 10.0f;

            if (cM_rndF(1.0f) < 0.5f) {
                if (i_this->arg2 == 0) {
                    i_this->mAction = 5;
                } else {
                    i_this->mAction = 4;
                }

                i_this->mActionPhase = 0;
            }
        }

        i_this->field_0x6ae = 1;
    }
}

/* 807860F4-80786154 0010B4 0060+00 2/2 0/0 0/0 .text            at_hit_check__FP10e_sf_class */
static fopAc_ac_c* at_hit_check(e_sf_class* i_this) {
    dComIfGp_getPlayer(0);

    if (i_this->mActionPhase >= 10) {
        return NULL;
    }

    if (i_this->mAtSph.ChkAtHit()) {
        return dCc_GetAc(i_this->mAtSph.GetAtHitObj()->GetAc());
    }

    return NULL;
}

static f32 dummy() {
    return 40.0f;
}

/* 80786154-8078632C 001114 01D8+00 1/1 0/0 0/0 .text            e_sf_attack_0__FP10e_sf_class */
static void e_sf_attack_0(e_sf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp34, sp40;
    int frame = i_this->mpModelMorf->getFrame();

    i_this->field_0x6ae = 1;

    switch (i_this->mActionPhase) {
        case 0:
            anm_init(i_this, 5, TREG_F(14) + 6.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_SF_V_ATTACK, -1);
            i_this->mActionPhase = 1;
            // fallthrough
        case 1:
            if (frame >= 0xF && frame <= 0x16) {
                i_this->field_0x6a9 = 1;
            }

            if (frame == 0xF) {
                i_this->mSound.startCreatureSound(Z2SE_EN_SF_SWING_SWORD_S, 0, -1);
            }

            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 3;
                i_this->mActionPhase = 0;
            }
            break;
    }

    cLib_addCalc0(&a_this->speedF, 1.0f, 5.0f);

    if (i_this->field_0x6a9 != 0) {
        fopAc_ac_c* actor_p = at_hit_check(i_this);
        if (actor_p != NULL && fopAcM_GetName(actor_p) == PROC_ALINK) {
            if (daPy_getPlayerActorClass()->checkPlayerGuard()) {
                i_this->mpModelMorf->setPlaySpeed(0.0f);
                i_this->mAction = 3;
                i_this->mActionPhase = 0;
                i_this->mTimers[2] = cM_rndF(20.0f) + 10.0f;
            }
        }
    }
}

/* 8078632C-80786524 0012EC 01F8+00 1/1 0/0 0/0 .text            e_sf_attack__FP10e_sf_class */
static void e_sf_attack(e_sf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp34, sp40;
    int frame = i_this->mpModelMorf->getFrame();

    i_this->field_0x6ae = 1;

    switch (i_this->mActionPhase) {
        case 0:
            anm_init(i_this, 4, TREG_F(14) + 8.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_SF_V_ATTACK, -1);
            i_this->mActionPhase = 1;
            // fallthrough
        case 1:
            if (frame < 0x3A) {
                cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mPlayerAngleY, 2, 0x800);
            }

            if (frame == (int)(TREG_F(7) + 10.0f)) {
                anm_init(i_this, 4, 5.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                i_this->mpModelMorf->setFrame(55.0f);
            }

            if (frame >= 0x51 && frame <= 0x56) {
                i_this->field_0x6a9 = 1;
            }

            if (frame == 0x4E) {
                i_this->mSound.startCreatureSound(Z2SE_EN_SF_SWING_SWORD_L, 0, -1);
            }

            if (frame >= (int)(TREG_F(8) + 100.0f)) {
                i_this->mAction = 3;
                i_this->mActionPhase = 0;
            }
            break;
    }

    cLib_addCalc0(&a_this->speedF, 1.0f, 5.0f);

    if (i_this->field_0x6a9 != 0) {
        fopAc_ac_c* actor_p = at_hit_check(i_this);
        if (actor_p != NULL && fopAcM_GetName(actor_p) == PROC_ALINK) {
            if (daPy_getPlayerActorClass()->checkPlayerGuard()) {
                i_this->mpModelMorf->setPlaySpeed(0.0f);
                i_this->mAction = 3;
                i_this->mActionPhase = 0;
                i_this->mTimers[2] = cM_rndF(20.0f) + 10.0f;
            }
        }
    }
}

/* 80786524-807866F8 0014E4 01D4+00 1/1 0/0 0/0 .text            e_sf_guard__FP10e_sf_class */
static int e_sf_guard(e_sf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    i_this->field_0x6ab = 1;
    i_this->field_0x6ae = 1;

    int rv = 0;

    switch (i_this->mActionPhase) {
        case 0:
            anm_init(i_this, 0xA, 2.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_SF_V_GUARD, -1);
            i_this->mActionPhase = 1;
            break;

        case 1:
            i_this->field_0x6a4 = 5;

            if (i_this->mBgc.ChkGroundHit()) {
                cLib_addCalc0(&a_this->speedF, 1.0f, 10.0f);
            }

            if (i_this->mpModelMorf->getFrame() >= 8.0f) {
                i_this->mpModelMorf->setPlaySpeed(0.0f);
                i_this->mActionPhase = 2;
                a_this->speedF = 0.0f;
                break;
            }

            cLib_addCalcAngleS2(&a_this->current.angle.y, i_this->mPlayerAngleY, 2, 0x800);
            break;
        
        case 2:
            if (cc_pl_cut_bit_get() == 0x100 || cc_pl_cut_bit_get() == 0x80 || cc_pl_cut_bit_get() == 0x400) {
                i_this->mTimers[0] = KREG_S(0) + 20;
            } else {
                i_this->mTimers[0] = 0;
            }

            if (i_this->mTimers[0] != 0) {
                break;
            }

            i_this->mActionPhase = 3;
            i_this->mpModelMorf->setPlaySpeed(1.0f);
            // fallthrough
        case 3:
            if (i_this->mpModelMorf->isStop()) {
                i_this->mAction = 3;
                i_this->mActionPhase = 0;
            }

            rv = 1;
    }

    return rv;
}

/* 807866F8-80786844 0016B8 014C+00 1/1 0/0 0/0 .text            e_sf_s_damage__FP10e_sf_class */
static void e_sf_s_damage(e_sf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    switch (i_this->mActionPhase) {
        case 0:
            i_this->mActionPhase = 1;
            anm_init(i_this, 6, 5.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mSound.startCreatureVoice(Z2SE_EN_SF_V_DAMAGE, -1);
            i_this->mSound.startCreatureSound(Z2SE_EN_SF_SHAKE_BONES, 0, -1);
            break;
        
        case 1:
            if (i_this->mpModelMorf->isStop()) {
                if (i_this->mTimers[1] != 0) {
                    i_this->mAction = 7;
                    i_this->mActionPhase = 0;
                    i_this->mTimers[0] = 0;
                    i_this->field_0x6a4 = 15;
                } else {
                    i_this->mAction = 3;
                    i_this->mActionPhase = 0;
                    i_this->mTimers[0] = 30;
                }
            }
            break;
    }

    cLib_addCalc0(&a_this->speedF, 1.0f, 3.0f);
}

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
static int ret_ct;

/* 80786844-80786B70 001804 032C+00 1/1 0/0 0/0 .text            e_sf_crash__FP10e_sf_class */
static void e_sf_crash(e_sf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    for (int i = 0; i < 3; i++) {
        i_this->field_0x970[i].SetTgType(0x400020);
    }

    i_this->mStts.Init(0xFF, 0, a_this);

    switch (i_this->mActionPhase) {
        case 0:
            i_this->mActionPhase = 1;
            anm_init(i_this, 7, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            a_this->speedF = 0.0f;
            fopAcM_OffStatus(a_this, 0);
            a_this->attention_info.flags = 0;
            cXyz scale(l_HIO.basic_size, l_HIO.basic_size, l_HIO.basic_size);
            dComIfGp_particle_set(0x81C9, &a_this->current.pos, &a_this->shape_angle, &scale);
            
            if (dComIfG_Bgsp().GetPolyAtt0(i_this->mBgc.m_gnd) == 4) {
                dComIfGp_particle_set(0x81C8, &a_this->current.pos, &a_this->shape_angle, &scale);
            }

            i_this->mSound.startCreatureVoice(Z2SE_EN_SF_V_FALLDOWN, -1);
            i_this->mSound.startCreatureSound(Z2SE_EN_SF_BREAK_DOWN, 0, -1);
            break;
        
        case 1:
            if (i_this->mpModelMorf->isStop()) {
                i_this->mTimers[0] = cM_rndF(50.0f) + 300.0f;
                i_this->mActionPhase = 2;
            }
            break;

        case 2:
            if (i_this->mTimers[0] == 40 && i_this->field_0xffc == 0) {
                if (strcmp(dComIfGp_getStartStageName(), "D_MN10") == 0 && fopAcM_GetRoomNo(a_this) == 7) {
                    i_this->mDemoMode = 10;
                    i_this->field_0xffc = 1;
                }
            }

            if (i_this->mTimers[0] == 0) {
                i_this->mAction = 0x1F;
                i_this->mActionPhase = 0;
                
                ret_ct++;
                if (ret_ct >= 3) {
                    dComIfGs_onOneZoneSwitch(5, -1);
                }

                for (int i = 0; i < 3; i++) {
                    i_this->field_0x970[i].SetTgType(0xD8FBFDFF);
                }

                i_this->mStts.Init(200, 0, a_this);
                i_this->field_0x6a4 = 5;
            }
            break;
    }
}

/* 80786B70-80786C50 001B30 00E0+00 1/1 0/0 0/0 .text            e_sf_crashwait__FP10e_sf_class */
static void e_sf_crashwait(e_sf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    i_this->field_0x6a4 = 5;

    switch (i_this->mActionPhase) {
        case 0:
            i_this->mActionPhase = 1;
            anm_init(i_this, 7, 3.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mpModelMorf->setFrame(39.0f);
            a_this->speedF = 0.0f;
            fopAcM_OffStatus(a_this, 0);
            a_this->attention_info.flags = 0;
            // fallthrough
        case 1:
            if (i_this->mPlayerDistanceXZ < i_this->arg1 * 100.0f) {
                i_this->mAction = 0x1F;
                i_this->mActionPhase = 0;
            }
            break;
    }
}

/* 80786C50-80786DC0 001C10 0170+00 1/1 0/0 0/0 .text            e_sf_sitwait__FP10e_sf_class */
static s16 e_sf_sitwait(e_sf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    dComIfGp_getPlayer(0);

    i_this->field_0x6a4 = 5;

    s16 rv = 0;

    switch (i_this->mActionPhase) {
        case 0:
            i_this->mActionPhase = 1;
            anm_init(i_this, 0xB, 0.0f, J3DFrameCtrl::EMode_NONE, 0.0f);
            fopAcM_OffStatus(a_this, 0);
            a_this->attention_info.flags = 0;
            // fallthrough
        case 1:
            if (dComIfGs_isOneZoneSwitch(0, -1)) {
                i_this->mActionPhase = 2;
                i_this->mpModelMorf->setPlaySpeed(1.0f);
                i_this->mDemoMode = 1;
            }
            break;
        
        case 2:
            rv = 0xFF;
            i_this->mSound.startCreatureVoiceLevel(Z2SE_EN_SF_V_FIRST_DEMO, -1);

            if (dComIfGp_getEvent().checkSkipEdge() || i_this->mpModelMorf->isStop()) {
                i_this->mAction = 3;
                i_this->mActionPhase = -10;
                i_this->mTimers[0] = 60;
                fopAcM_OnStatus(a_this, 0);
                a_this->attention_info.flags = fopAc_AttnFlag_BATTLE_e;
                i_this->mDemoMode = 100;
            }
    }

    return rv;
}

/* 80786DC0-80787018 001D80 0258+00 1/1 0/0 0/0 .text            e_sf_getup__FP10e_sf_class */
static s16 e_sf_getup(e_sf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;

    i_this->field_0x6a4 = 5;
    s16 rv = 0;

    switch (i_this->mActionPhase) {
        case 0:
            i_this->mTimers[0] = 40;
            csXyz rotation(a_this->shape_angle);
            cXyz scale(l_HIO.basic_size, l_HIO.basic_size, l_HIO.basic_size);

            for (int i = 0; i <= 2; i++) {
                dComIfGp_particle_set(0x81CA, &a_this->current.pos, &rotation, &scale);
                rotation.y += 0x5555;
            }

            i_this->mActionPhase = 1;
            i_this->mSound.startCreatureVoice(Z2SE_EN_SF_V_RESURRECTION, -1);
            break;

        case 1:
            if (i_this->mTimers[0] == 0) {
                i_this->mActionPhase = 2;
                anm_init(i_this, 9, 5.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
                i_this->mSound.startCreatureSound(Z2SE_EN_SF_BUILD_UP, 0, -1);
            }
            break;
        
        case 2:
            if (i_this->mpModelMorf->isStop()) {
                if (i_this->arg2 == 0) {
                    anm_init(i_this, 0xC, 10.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                } else {
                    anm_init(i_this, 0xD, 10.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
                }

                i_this->mTimers[0] = 40;
                i_this->mActionPhase = 3;
            }
            break;

        case 3:
            rv = 0xFF;

            if (i_this->mTimers[0] == 0) {
                i_this->mAction = 3;
                i_this->mActionPhase = -10;
                i_this->mTimers[0] = 60;
                a_this->health = 200;
                fopAcM_OnStatus(a_this, 0);
                a_this->attention_info.flags = fopAc_AttnFlag_BATTLE_e;
            }
            break;
    }

    return rv;
}

/* 80787018-807870D0 001FD8 00B8+00 1/1 0/0 0/0 .text            crash_eff__FP10e_sf_class */
static void crash_eff(e_sf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz scale(1.5f, 1.5f, 1.5f);

    static u16 ap_name[3] = {
        0x81DA,
        0x81DB,
        0x81DC,
    };

    for (int i = 0; i <= 2; i++) {
        dComIfGp_particle_set(ap_name[i], &a_this->current.pos, &a_this->shape_angle, &scale);
    }
}

/* 807870D0-807873C0 002090 02F0+00 1/1 0/0 0/0 .text            damage_check__FP10e_sf_class */
static void damage_check(e_sf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);

    i_this->mStts.Move();

    if (i_this->field_0x6a4 != 0) {
        return;
    }

    if (l_HIO.invulnerable) {
        a_this->health = 1000;
    }

    for (int i = 0; i <= 2; i++) {
        if (i_this->field_0x970[i].ChkTgHit()) {
            i_this->mAtInfo.mpCollider = i_this->field_0x970[i].GetTgHitObj();
            cc_at_check(a_this, &i_this->mAtInfo);

            if (i_this->mAtInfo.mHitType == 0x10) {
                if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOOMERANG)) {
                    i_this->mAction = 0x14;
                    i_this->mActionPhase = 0;
                    i_this->field_0x6c4 = 0.0f;
                } else {
                    i_this->mAction = 8;
                    i_this->mActionPhase = 0;
                    i_this->field_0x6a4 = 6;
                }
            } else {
                s8 bVar1 = false;
                s8 bVar2 = false;

                if (i_this->field_0x6ad != 0) {
                    i_this->field_0x6ad = 0;
                    bVar2 = true;
                }

                if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOMB) || (daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_HEAD_JUMP || i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_IRON_BALL))) {
                    if (i_this->mAction == 0x1E || i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_BOMB)) {
                        fopAcM_createDisappear(a_this, &a_this->current.pos, 15, 0, 0x29);
                        fopAcM_delete(a_this);

                        if (i_this->mSwBit != 0xFF) {
                            dComIfGs_onSwitch(i_this->mSwBit, fopAcM_GetRoomNo(a_this));
                        }
                        return;
                    }

                    crash_eff(i_this);
                    bVar1 = true;
                }

                if (i_this->mAtInfo.mpCollider->ChkAtType(AT_TYPE_UNK)) {
                    i_this->field_0x6a4 = 20;
                } else if (player->getCutType() == daPy_py_c::CUT_TYPE_JUMP && player->checkCutJumpCancelTurn()) {
                    i_this->field_0x6a4 = 3;
                    i_this->field_0x6ad = 1;
                } else {
                    i_this->field_0x6a4 = 6;
                }

                if (a_this->health <= 0 || bVar1 || bVar2) {
                    i_this->mAction = 0x1E;
                    i_this->mActionPhase = 0;
                    a_this->health = 0;
                } else {
                    i_this->mAction = 0x14;
                    i_this->mActionPhase = 0;
                    i_this->field_0x6c4 = TREG_F(0) + 25.0f;
                    i_this->field_0x6c8 = i_this->mAtInfo.mHitDirection.y;

                    if (i_this->arg3 != 0xFF) {
                        if (daPy_getPlayerActorClass()->getCutCount() >= 4) {
                            i_this->field_0x6a4 = 40;
                            i_this->mTimers[1] = 40;
                        }
                    }
                }

                if (i_this->mAtInfo.mAttackPower <= 1) {
                    i_this->field_0x6a4 = KREG_S(8) + 10;
                }

                a_this->speedF = 0.0f;
            }
            break;
        }
    }

    for (int i = 0; i <= 2; i++) {
        if (a_this->health <= 1) {
            a_this->health = 0;
            i_this->field_0x970[i].SetTgHitMark(CcG_Tg_UNK_MARK_3);
        }
    }
}

enum Action {
    /* 0x00 */ ACTION_NORMAL,
    /* 0x03 */ ACTION_FIGHT_RUN = 0x3,
    /* 0x04 */ ACTION_ATTACK_0,
    /* 0x05 */ ACTION_ATTACK,
    /* 0x07 */ ACTION_GUARD = 0x7,
    /* 0x08 */ ACTION_DRAWBACK,
    /* 0x14 */ ACTION_S_DAMAGE = 0x14,
    /* 0x1E */ ACTION_CRASH = 0x1E,
    /* 0x1F */ ACTION_GETUP,
    /* 0x20 */ ACTION_CRASHWAIT,
    /* 0x21 */ ACTION_SITWAIT,
};

/* 807873C0-80787DD8 002380 0A18+00 2/1 0/0 0/0 .text            action__FP10e_sf_class */
static void action(e_sf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* player = (fopAc_ac_c*)dComIfGp_getPlayer(0);
    cXyz spcc, spd8;

    i_this->field_0x6ae = 0;
    i_this->mPlayerDistanceXZ = fopAcM_searchPlayerDistanceXZ(a_this);
    i_this->mPlayerAngleY = fopAcM_searchPlayerAngleY(a_this);
    i_this->mPlayerAngleX = fopAcM_searchPlayerAngleX(a_this);
    i_this->field_0x694 = l_HIO.p_recognize_dist_m;
    damage_check(i_this);
    s8 sVar1 = 0;
    s8 sVar2 = 0;
    s16 sVar3 = 0xFF;
    a_this->offHeadLockFlg();

    switch (i_this->mAction) {
        case ACTION_NORMAL:
            e_sf_normal(i_this);
            break;

        case ACTION_FIGHT_RUN:
            e_sf_fight_run(i_this);
            sVar1 = 1;
            sVar2 = 1;
            break;

        case ACTION_ATTACK_0:
            e_sf_attack_0(i_this);
            sVar1 = 1;
            sVar2 = 1;
            break;

        case ACTION_ATTACK:
            e_sf_attack(i_this);
            sVar1 = 1;
            sVar2 = 1;
            break;

        case ACTION_GUARD:
            if (e_sf_guard(i_this) != 0) {
                sVar1 = 1;
            }
            
            sVar2 = 1;
            break;

        case ACTION_DRAWBACK:
            e_sf_drawback(i_this);
            sVar2 = 1;
            break;

        case ACTION_S_DAMAGE:
            e_sf_s_damage(i_this);
            sVar2 = 1;
            break;

        case ACTION_CRASH:
            e_sf_crash(i_this);
            sVar3 = 0;
            i_this->field_0x6ae = -1;
            break;

        case ACTION_GETUP:
            sVar3 = e_sf_getup(i_this);
            i_this->field_0x6ae = -1;
            break;

        case ACTION_CRASHWAIT:
            e_sf_crashwait(i_this);
            sVar3 = 0;
            i_this->field_0x6ae = -1;
            break;

        case ACTION_SITWAIT:
            sVar3 = e_sf_sitwait(i_this);
            i_this->field_0x6ae = -1;
            break;
    }

    if (sVar2) {
        i_this->mSound.setLinkSearch(true);
    } else {
        i_this->mSound.setLinkSearch(false);
    }

    cLib_addCalcAngleS2(&i_this->field_0x6a6, sVar3, 1, 4);

    if (i_this->arg3 != 0xFF && sVar1 && i_this->mPlayerAngleX < 0x1000 && i_this->mPlayerAngleX > -0x1000 && player_way_check(i_this)) {
        u32 sVar8;
        if (i_this->arg3 == 0 && cM_rndF(1.0f) < 0.2f) {
            sVar8 = 0x3FF;
        } else {
            sVar8 = 0x3FF;
        }

        if (i_this->mPlayerDistanceXZ < l_HIO.defense_recognize_range) {
            int iVar1 = (cc_pl_cut_bit_get() & sVar8);
            if (iVar1 != 0) {
                i_this->mAction = 7;
                i_this->mActionPhase = 0;
                i_this->mTimers[0] = 0;
                i_this->field_0x6a4 = 15;
            }
        }
    }

    cLib_addCalcAngleS2(&a_this->shape_angle.y, a_this->current.angle.y, 2, 0x2000);
    cLib_addCalcAngleS2(&a_this->shape_angle.x, a_this->current.angle.x, 2, 0x2000);
    cLib_addCalcAngleS2(&a_this->shape_angle.z, a_this->current.angle.z, 2, 0x2000);

    if (i_this->field_0x6c0) {
        cMtx_YrotS(*calc_mtx, i_this->field_0x6e4.y);

        if (i_this->field_0x718 == 0) {
            spcc.z = i_this->field_0x6c0;
        } else {
            spcc.z = 0.0f;
            a_this->speed.y = 0.0f;
        }

        a_this->gravity = -4.0f;
    } else {
        cMtx_YrotS(*calc_mtx, a_this->current.angle.y);
        spcc.z = a_this->speedF;
    }
    spcc.x = 0.0f;
    spcc.y = 0.0f;
    MtxPosition(&spcc, &spd8);
    a_this->speed.x = spd8.x;
    a_this->speed.z = spd8.z;
    a_this->current.pos += a_this->speed * l_HIO.basic_size;
    a_this->speed.y += a_this->gravity;
    a_this->gravity = -5.0f;

    if (a_this->speed.y < -120.0f) {
        a_this->speed.y = -120.0f;
    }

    cXyz* ccMoveP = i_this->mStts.GetCCMoveP();
    if (ccMoveP != NULL) {
        a_this->current.pos.x += ccMoveP->x;
        a_this->current.pos.y += ccMoveP->y;
        a_this->current.pos.z += ccMoveP->z;
    }

    if (i_this->field_0x6c4 > 0.1f) {
        spcc.x = 0.0f;
        spcc.y = 0.0f;
        spcc.z = -i_this->field_0x6c4;
        cMtx_YrotS(*calc_mtx, i_this->field_0x6c8);
        MtxPosition(&spcc, &spd8);
        a_this->current.pos += spd8;
        cLib_addCalc0(&i_this->field_0x6c4, 1.0f, TREG_F(12) + 7.0f);
    }
    
    i_this->mBgc.CrrPos(dComIfG_Bgsp());

    if (i_this->field_0x6ae > 0) {
        if (i_this->field_0x6ae == 5) {
            if ((i_this->mFrameCounter & 0xF) == 0 && cM_rndF(1.0f) < 0.3f) {
                i_this->field_0x6ba = cM_rndFX(2500.0f);
            }
        } else {
            if (i_this->field_0x6ae == 1) {
                spcc = player->eyePos - a_this->current.pos;
            } else if (i_this->field_0x6ae == 2) {
                spcc = i_this->field_0x6f8 - a_this->current.pos;
            } else {
                spcc = player->eyePos - a_this->current.pos;
            }
            spcc.y += -(TREG_F(2) + 150.0f) * l_HIO.basic_size;
            s16 sVar4 = cM_atan2s(spcc.x, spcc.z) - a_this->shape_angle.y;
            s16 sVar5 = a_this->shape_angle.x + cM_atan2s(spcc.y, JMAFastSqrt(spcc.x * spcc.x + spcc.z * spcc.z));

            if (sVar4 > 10000) {
                sVar4 = 10000;
            } else if (sVar4 < -10000) {
                sVar4 = -10000;
            }

            if (sVar5 > 10000) {
                sVar5 = 10000;
            } else if (sVar5 < -10000) {
                sVar5 = -10000;
            }

            cLib_addCalcAngleS2(&i_this->field_0x6b0, (s16)sVar4, 2, 0x1000);
            cLib_addCalcAngleS2(&i_this->field_0x6b6, (s16)sVar5, 2, 0x1000);
        }

        i_this->field_0x6ba = 0;
    } else {
        cLib_addCalcAngleS2(&i_this->field_0x6b0, 0, 2, 0x1000);
        cLib_addCalcAngleS2(&i_this->field_0x6b6, 0, 2, 0x1000);
        i_this->field_0x6ba = 0;
    }

    cLib_addCalcAngleS2(&i_this->field_0x6b8, i_this->field_0x6ba, 4, 0x400);

    if (i_this->field_0x6ae >= 0) {
        if ((i_this->mFrameCounter & 0x1F) == 0 && cM_rndF(1.0f) < 0.5f) {
            i_this->field_0x6b4 = cM_rndFX(4000.0f);
        }
    } else {
        i_this->field_0x6b4 = 0;
    }

    cLib_addCalcAngleS2(&i_this->field_0x6b2, i_this->field_0x6b4, 4, 0x400);

    if (i_this->field_0x6bc != 0) {
        i_this->field_0x6bc--;
        i_this->field_0x6b8 = (BREG_F(18) + 200.0f) * (i_this->field_0x6bc * cM_ssin(i_this->field_0x6bc * (BREG_S(5) + 12000)));
    }

    if (i_this->field_0x6f6) {
        i_this->field_0x6f6--;
        if (i_this->field_0x6e4.x != 0) {
            Vec spe4;
            cXyz pos, spfc;
            dBgS_GndChk gnd_chk;
            s16 sVar6 = 0;
            s16 sVar7 = 0;
            f32 fVar1 = 100.0f;

            MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(2), *calc_mtx);
            spcc.set(0.0f, 0.0f, 0.0f);
            MtxPosition(&spcc, &pos);
            pos.y += 100.0f;
            pos.y += 100.0f;
            gnd_chk.SetPos(&pos);
            pos.y = dComIfG_Bgsp().GroundCross(&gnd_chk);

            if (pos.y != -1e9f) {
                spe4.x = pos.x;
                spe4.y = pos.y + 100.0f;
                spe4.z = pos.z + fVar1;
                gnd_chk.SetPos(&spe4);
                spe4.y = dComIfG_Bgsp().GroundCross(&gnd_chk);

                if (spe4.y != -1e9f) {
                    sVar7 = -cM_atan2s(spe4.y - pos.y, spe4.z - pos.z);
                    if (sVar7 > 0x3000 || sVar7 < -0x3000) {
                        sVar7 = 0;
                    }
                }

                spe4.x = pos.x + fVar1;
                spe4.y = pos.y + 100.0f;
                spe4.z = pos.z;
                gnd_chk.SetPos(&spe4);
                spe4.y = dComIfG_Bgsp().GroundCross(&gnd_chk);

                if (spe4.y != -1e9f) {
                    sVar6 = (s16)cM_atan2s(spe4.y - pos.y, spe4.x - pos.x);
                    if (sVar6 > 0x3000 || sVar6 < -0x3000) {
                        sVar6 = 0;
                    }
                }
            }

            i_this->field_0x6f0.x = sVar7;
            i_this->field_0x6f0.z = sVar6;
        }
    }

    cLib_addCalcAngleS2(&i_this->field_0x6ea.x, i_this->field_0x6f0.x, 1, 0x400);
    cLib_addCalcAngleS2(&i_this->field_0x6ea.z, i_this->field_0x6f0.z, 1, 0x400);

    if (i_this->field_0xfb8 != 0) {
        J3DModel* model = i_this->mpModelMorf->getModel();
        spcc.set(0.0f, 0.0f, 0.0f);

        static int foot_idx[2] = {
            0x14, 0x18,
        };

        for (int i = 0; i < 2; i++) {
            if (i_this->field_0xfb8 == 3 || (i_this->field_0xfb8 == 2 && i == 1) || (i_this->field_0xfb8 == 1 && i == 0)) {
                MTXCopy(model->getAnmMtx(foot_idx[i]), *calc_mtx);
                MtxPosition(&spcc, &spd8);
                fopAcM_effSmokeSet2(&i_this->field_0xfbc[i], &i_this->field_0xfc4[i], &spd8, &a_this->shape_angle, TREG_F(8) + 1.0f, &a_this->tevStr);
            }
        }

        i_this->field_0xfb8 = 0;
    }

    cXyz i_effSize(1.5f, 1.5f, 1.5f);
    setMidnaBindEffect(a_this, &i_this->mSound, &a_this->eyePos, &i_effSize);
}

/* 80787DD8-80787FE0 002D98 0208+00 1/1 0/0 0/0 .text            anm_se_set__FP10e_sf_class */
static void anm_se_set(e_sf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    s8 sVar1 = 0;

    if (i_this->mAnm == 4) {
        if (i_this->mpModelMorf->checkFrame(83.0f)) {
            sVar1 = 1;
        }
    } else if (i_this->mAnm == 6) {
        if (i_this->mpModelMorf->checkFrame(3.5f)) {
            sVar1 = 1;
        }
    } else if (i_this->mAnm == 8) {
        if (i_this->mpModelMorf->checkFrame(4.0f) || i_this->mpModelMorf->checkFrame(13.0f) || i_this->mpModelMorf->checkFrame(24.0f) ||
            i_this->mpModelMorf->checkFrame(38.0f) || i_this->mpModelMorf->checkFrame(57.0f)) {
            sVar1 = 1;
        }
    } else if (i_this->mAnm == 0xE) {
        if (i_this->mpModelMorf->checkFrame(0.5f) || i_this->mpModelMorf->checkFrame(22.0f)) {
            sVar1 = 1;
        }
    } else if (i_this->mAnm == 0xF) {
        if (i_this->mpModelMorf->checkFrame(11.0f) || i_this->mpModelMorf->checkFrame(22.0f)) {
            sVar1 = 1;
        }
    } else if (i_this->mAnm == 0x10 && (i_this->mpModelMorf->checkFrame(8.0f) || i_this->mpModelMorf->checkFrame(18.0f))) {
        sVar1 = 1;
    }

    if (sVar1 != 0) {
        i_this->mSound.startCreatureSound(Z2SE_STALFOS_FOOTNOTE, 0, -1);
    }
}

/* 80787FE0-80788568 002FA0 0588+00 1/1 0/0 0/0 .text            demo_camera__FP10e_sf_class */
static void demo_camera(e_sf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    fopAc_ac_c* player = (fopAc_ac_c*)dComIfGp_getPlayer(0);
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    dComIfGp_getCamera(0);
    cXyz sp30, sp3c, sp48, sp54;
    s8 sVar1 = 0;

    switch (i_this->mDemoMode) {
        case 0:
            break;
        
        case 1:
            if (!a_this->eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(a_this, 2, 0xFFFF, 0);
                a_this->eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                return;
            }

            camera->mCamera.Stop();
            i_this->mDemoMode = 2;
            i_this->field_0xfda = 0;
            i_this->mDemoCamFovy = 75.0f;
            camera->mCamera.SetTrimSize(3);
            dComIfGp_getEvent().startCheckSkipEdge(a_this);
            daPy_getPlayerActorClass()->changeOriginalDemo();
            daPy_getPlayerActorClass()->changeDemoMode(0x17, 1, 2, 0);
            // fallthrough
        case 2:
            cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
            sp30.x = NREG_F(0);
            sp30.y = NREG_F(1) + 50.0f;
            sp30.z = NREG_F(2) + 400.0f;
            MtxPosition(&sp30, &i_this->mDemoCamEye);
            i_this->mDemoCamEye += a_this->current.pos;
            sp54.x = a_this->current.pos.x;
            sp54.z = a_this->current.pos.z;
            sp54.y = a_this->eyePos.y - 20.0f + NREG_F(3);

            if (sp54.y < a_this->current.pos.y + NREG_F(4) + 90.0f) {
                sp54.y = a_this->current.pos.y + NREG_F(4) + 90.0f;
            }

            if (i_this->field_0xfda == 0) {
                i_this->mDemoCamCenter = sp54;
            } else {
                cLib_addCalc2(&i_this->mDemoCamCenter.y, sp54.y, 0.1f, 20.0f);
                cLib_addCalc2(&i_this->mDemoCamFovy, 55.0f, 0.05f, 0.25f);
            }
            break;
        
        case 10:
            if (!a_this->eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(a_this, 2, 0xFFFF, 0);
                a_this->eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                return;
            }

            camera->mCamera.Stop();
            i_this->mDemoMode = 11;
            i_this->field_0xfda = 0;
            i_this->mDemoCamFovy = 75.0f;
            camera->mCamera.SetTrimSize(3);
            daPy_getPlayerActorClass()->changeOriginalDemo();
            daPy_getPlayerActorClass()->changeDemoMode(0x17, 1, 2, 0);
            // fallthrough
        case 11:
            sp30.x = -8918.0f - a_this->current.pos.x;
            sp30.z = -462.0f - a_this->current.pos.z;
            s16 angle = cM_atan2s(sp30.x, sp30.z);
            a_this->current.angle.y = angle;
            a_this->shape_angle.y = angle;
            cMtx_YrotS(*calc_mtx, a_this->shape_angle.y);
            sp30.x = NREG_F(0);
            sp30.y = NREG_F(1) + 50.0f;
            sp30.z = NREG_F(2) + 400.0f;
            MtxPosition(&sp30, &i_this->mDemoCamEye);
            i_this->mDemoCamEye += a_this->current.pos;
            sp54.x = a_this->current.pos.x;
            sp54.z = a_this->current.pos.z;
            sp54.y = a_this->eyePos.y - 20.0f + NREG_F(3);

            if (sp54.y < a_this->current.pos.y + NREG_F(4) + 90.0f) {
                sp54.y = a_this->current.pos.y + NREG_F(4) + 90.0f;
            }

            if (i_this->field_0xfda == 0) {
                i_this->mDemoCamCenter = sp54;
                sp30.x = 0.0f;
                sp30.y = 0.0f;
                sp30.z = 700.0f;
                MtxPosition(&sp30, &sp3c);
                sp3c += a_this->current.pos;
                daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp3c, a_this->shape_angle.y + 0x8000, 0);
            } else {
                cLib_addCalc2(&i_this->mDemoCamCenter.y, sp54.y, 0.1f, 20.0f);
                cLib_addCalc2(&i_this->mDemoCamFovy, 55.0f, 0.05f, 0.2f);
            }

            if (i_this->field_0xfda == 220) {
                i_this->mDemoMode = 100;
            }
            break;

        case 100:
            sVar1 = 1;
            cMtx_YrotS(*calc_mtx, player->shape_angle.y);
            sp30.x = 0.0f;
            sp30.y = JREG_F(1) + 100.0f;
            sp30.z = JREG_F(2) + -250.0f;
            MtxPosition(&sp30, &i_this->mDemoCamEye);
            i_this->mDemoCamEye += player->current.pos;
            i_this->mDemoCamCenter = a_this->eyePos;
            break;
    }

    if (sVar1) {
        camera->mCamera.Reset(i_this->mDemoCamCenter, i_this->mDemoCamEye);
        camera->mCamera.Start();
        camera->mCamera.SetTrimSize(0);
        dComIfGp_event_reset();
        daPy_getPlayerActorClass()->cancelOriginalDemo();
        i_this->mDemoMode = 0;
    }

    if (i_this->mDemoMode > 0) {
        cXyz center = i_this->mDemoCamCenter;
        cXyz eye = i_this->mDemoCamEye;
        camera->mCamera.Set(center, eye, i_this->mDemoCamFovy, 0);
        i_this->field_0xfda++;
    }
}

/* 80788568-80788D38 003528 07D0+00 2/1 0/0 0/0 .text            daE_SF_Execute__FP10e_sf_class */
static int daE_SF_Execute(e_sf_class* i_this) {
    fopEn_enemy_c* a_this = (fopEn_enemy_c*)&i_this->actor;
    cXyz sp2c, sp38, sp44;

    i_this->mFrameCounter++;

    for (int i = 0; i < 4; i++) {
        if (i_this->mTimers[i] != 0) {
            i_this->mTimers[i]--;
        }
    }

    if (i_this->field_0x6a4 != 0) {
        i_this->field_0x6a4--;
    }

    if (i_this->field_0x718 != 0) {
        i_this->field_0x718--;
    }

    if (i_this->field_0x71a != 0) {
        i_this->field_0x71a--;
    }

    i_this->field_0x6ac = 1;
    action(i_this);
    mDoMtx_stack_c::transS(a_this->current.pos.x, a_this->current.pos.y, a_this->current.pos.z);
    mDoMtx_stack_c::XrotM(i_this->field_0x6ea.x);
    mDoMtx_stack_c::ZrotM(i_this->field_0x6ea.z);
    mDoMtx_stack_c::YrotM(i_this->field_0x6e4.y);
    mDoMtx_stack_c::XrotM(i_this->field_0x6e4.x);
    mDoMtx_stack_c::YrotM(-i_this->field_0x6e4.y);
    mDoMtx_stack_c::YrotM(a_this->shape_angle.y);
    mDoMtx_stack_c::XrotM(a_this->shape_angle.x);
    mDoMtx_stack_c::ZrotM(a_this->shape_angle.z);
    mDoMtx_stack_c::scaleM(l_HIO.basic_size * a_this->scale.x, l_HIO.basic_size * a_this->scale.x, l_HIO.basic_size * a_this->scale.x);

    J3DModel* model = i_this->mpModelMorf->getModel();
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    i_this->mpModelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(a_this)));
    anm_se_set(i_this);
    i_this->mpModelMorf->modelCalc();
    cXyz sp50(0.0f, 0.0f, 0.0f);
    cXyz sp5c(-200000.0f, -200000.0f, -150000.0f);

    if (i_this->field_0x6a4 != 0) {
        sp50 += sp5c;
    }

    MTXCopy(model->getAnmMtx(4), *calc_mtx);
    sp2c.set(KREG_F(12) + -20.0f, KREG_F(13) + -30.0f, KREG_F(14));
    MtxPosition(&sp2c, &a_this->eyePos);
    i_this->field_0x970[0].SetC(a_this->eyePos + sp50);
    i_this->field_0x970[0].SetR(l_HIO.basic_size * 30.0f);
    a_this->attention_info.position = a_this->eyePos;
    a_this->attention_info.position.y += BREG_F(7) + 80.0f;

    MTXCopy(model->getAnmMtx(2), *calc_mtx);
    sp2c.set(BREG_F(11), BREG_F(12), BREG_F(13));
    MtxPosition(&sp2c, &sp38);
    i_this->field_0x970[1].SetC(sp38 + sp50);
    i_this->field_0x970[1].SetR(l_HIO.basic_size * 35.0f);
    
    MTXCopy(model->getAnmMtx(0x10), *calc_mtx);
    sp2c.set(BREG_F(14) + 30.0f, BREG_F(15), BREG_F(16));
    MtxPosition(&sp2c, &sp38);
    i_this->field_0x970[2].SetC(sp38 + sp50);
    i_this->field_0x970[2].SetR(l_HIO.basic_size * 35.0f);

    for (int i = 0; i <= 2; i++) {
        if (i_this->field_0x6ac != 0) {
            i_this->field_0x970[i].OnCoSetBit();
        } else {
            i_this->field_0x970[i].OffCoSetBit();
        }
        dComIfG_Ccsp()->Set(&i_this->field_0x970[i]);
    }

    if (i_this->field_0x5dc != NULL) {
        MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(0xD), *calc_mtx);
        i_this->field_0x5dc->setBaseTRMtx(*calc_mtx);

        if (i_this->field_0x6a9 != 0) {
            if (i_this->arg2 == 0) {
                sp2c.set(BREG_F(7), BREG_F(8), BREG_F(9) + -60.0f);
            } else {
                sp2c.set(BREG_F(7), BREG_F(8), BREG_F(9) + -30.0f);
            }

            MtxPosition(&sp2c, &sp38);

            if (i_this->field_0x6aa == 0) {
                i_this->field_0x6aa = 1;
                i_this->mAtSph.StartCAt(sp38);
            } else {
                i_this->mAtSph.MoveCAt(sp38);
            }

            i_this->mAtSph.SetR(l_HIO.basic_size * 50.0f);
        }
    }

    if (i_this->arg3 != 0xFF) {
        MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(8), *calc_mtx);
        i_this->field_0x5e0->setBaseTRMtx(*calc_mtx);
    }

    if (i_this->field_0x6a9 == 0) {
        i_this->mAtSph.SetC(sp5c);
        i_this->field_0x6aa = 0;
    } else {
        i_this->field_0x6a9 = 0;
    }
    
    dComIfG_Ccsp()->Set(&i_this->mAtSph);

    if (i_this->field_0x6ab != 0) {
        MTXCopy(i_this->mpModelMorf->getModel()->getAnmMtx(8), *calc_mtx);
        sp2c.set(JREG_F(5), JREG_F(6) + 40.0f, JREG_F(7));
        MtxPosition(&sp2c, &sp38);
        i_this->field_0xe50.SetC(sp38);
        i_this->field_0xe50.SetR((JREG_F(8) + 50.0f) * l_HIO.basic_size);
        i_this->field_0x6ab = 0;

        if (i_this->field_0x71a == 0 && i_this->field_0xe50.ChkTgHit()) {
            i_this->field_0x71a = 15;
            dScnPly_c::setPauseTimer(3);

            if (i_this->arg3 == 1) {
                i_this->mAtInfo.mpCollider = i_this->field_0xe50.GetTgHitObj();
                at_power_check(&i_this->mAtInfo);

                if (i_this->mAtInfo.mAttackPower <= 10) {
                    i_this->field_0x5c0 -= i_this->mAtInfo.mAttackPower;
                } else {
                    i_this->field_0x5c0 = 0;
                }

                if (i_this->field_0x5c0 <= 0) {
                    i_this->arg3 = 0xFF;
                    cXyz scale(l_HIO.basic_size, l_HIO.basic_size, l_HIO.basic_size);

                    static u16 p_name[2] = {
                        0x81CB,
                        0x81CC,
                    };

                    for (int i = 0; i <= 1; i++) {
                        JPABaseEmitter* emitter = dComIfGp_particle_set(p_name[i], &a_this->current.pos, &a_this->shape_angle, &scale);
                        if (emitter != NULL) {
                            MTXCopy(i_this->field_0x5e0->getAnmMtx(0), *calc_mtx);
                            emitter->setGlobalRTMatrix(*calc_mtx);
                        }
                    }

                    i_this->mSound.startCreatureSound(Z2SE_OBJ_WOODSHIELD_BREAK, 0, -1);
                } else {
                    def_se_set(&i_this->mSound, i_this->field_0xe50.GetTgHitObj(), 0x29, 0);
                }
            } else {
                def_se_set(&i_this->mSound, i_this->field_0xe50.GetTgHitObj(), 0x28, 0);
            }
        }
    } else {
        i_this->field_0xe50.SetC(sp38 + sp5c);
    }

    dComIfG_Ccsp()->Set(&i_this->field_0xe50);

    demo_camera(i_this);
    a_this->attention_info.flags |= fopAc_AttnFlag_UNK_0x200000;
    cXyz pos(a_this->eyePos);
    pos.y += NREG_F(7) + 180.0f;
    a_this->setHeadLockPos(&pos);
    a_this->attention_info.flags |= fopAc_AttnFlag_UNK_0x200000;

    return 1;
}

/* 80788D38-80788D40 003CF8 0008+00 1/0 0/0 0/0 .text            daE_SF_IsDelete__FP10e_sf_class */
static bool daE_SF_IsDelete(e_sf_class* i_this) {
    return true;
}

/* 80788D40-80788DA8 003D00 0068+00 1/0 0/0 0/0 .text            daE_SF_Delete__FP10e_sf_class */
static void daE_SF_Delete(e_sf_class* i_this) {
    // NONMATCHING
}

/* 80788DA8-80788F88 003D68 01E0+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

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
static void daE_SF_Create(fopAc_ac_c* a_this) {
    // NONMATCHING
    fopAcM_SetupActor(a_this, e_sf_class);
    e_sf_class* i_this = (e_sf_class*)a_this;
}

/* 80789418-80789460 0043D8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80789460-807894A8 004420 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 807894A8-80789574 004468 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80789574-807895F8 004534 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 807895F8-80789654 0045B8 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80789654-807896C4 004614 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 807896C4-80789734 004684 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80789734-8078977C 0046F4 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

// /* 8078977C-807897C4 00473C 0048+00 2/1 0/0 0/0 .text            __dt__12daE_SF_HIO_cFv */
// daE_SF_HIO_c::~daE_SF_HIO_c() {
//     // NONMATCHING
// }

/* 807897C4-80789800 004784 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_sf_cpp */
void __sinit_d_a_e_sf_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x807897C4, __sinit_d_a_e_sf_cpp);
#pragma pop

/* 80789800-80789808 0047C0 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80789800() {
    // NONMATCHING
}

/* 80789808-80789810 0047C8 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80789808() {
    // NONMATCHING
}

AUDIO_INSTANCES;

/* 80789F6C-80789F8C -00001 0020+00 1/0 0/0 0/0 .data            l_daE_SF_Method */
static actor_method_class l_daE_SF_Method = {
    (process_method_func)daE_SF_Create,
    (process_method_func)daE_SF_Delete,
    (process_method_func)daE_SF_Execute,
    (process_method_func)daE_SF_IsDelete,
    (process_method_func)daE_SF_Draw,
};

/* 80789F8C-80789FBC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_SF */
extern actor_process_profile_definition g_profile_E_SF = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_SF,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
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
