/**
 * @file d_a_e_bs.cpp
 * 
*/

#include "d/actor/d_a_e_bs.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__12daE_BS_HIO_cFv();
extern "C" static void wepon_anm_init__FP10e_bs_classi();
extern "C" static void anm_init__FP10e_bs_classifUcf();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daE_BS_Draw__FP10e_bs_class();
extern "C" static void player_way_check__FP10e_bs_class();
extern "C" static void way_bg_check__FP10e_bs_classff();
extern "C" static void pl_check__FP10e_bs_classfs();
extern "C" static void e_bs_appear__FP10e_bs_class();
extern "C" static void e_bs_normal__FP10e_bs_class();
extern "C" static void e_bs_fight_run__FP10e_bs_class();
extern "C" static void at_hit_check__FP10e_bs_class();
extern "C" static void e_bs_attack__FP10e_bs_class();
extern "C" static void e_bs_damage__FP10e_bs_class();
extern "C" static void damage_check__FP10e_bs_class();
extern "C" static void action__FP10e_bs_class();
extern "C" static void anm_se_set__FP10e_bs_class();
extern "C" static void daE_BS_Execute__FP10e_bs_class();
extern "C" static bool daE_BS_IsDelete__FP10e_bs_class();
extern "C" static void daE_BS_Delete__FP10e_bs_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_BS_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_BS_HIO_cFv();
extern "C" void __sinit_d_a_e_bs_cpp();
extern "C" static void func_806909A0();
extern "C" static void func_806909A8();
extern "C" static void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz();
extern "C" extern char const* const d_a_e_bs__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void
__ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
extern "C" void setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void entryDL__14mDoExt_McaMorfFv();
extern "C" void modelCalc__14mDoExt_McaMorfFv();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemFromEnemyID__FUcPC4cXyziiPC5csXyzPC4cXyzPfPf();
extern "C" void fopAcM_otoCheck__FPC10fopAc_ac_cf();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
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
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void GetAtHitObj__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void StartCAt__8dCcD_SphFR4cXyz();
extern "C" void MoveCAt__8dCcD_SphFR4cXyz();
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
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_24();
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
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80690DD8-80690DDC 000000 0004+00 13/13 0/0 0/0 .rodata          @3788 */
SECTION_RODATA static f32 const lit_3788 = 100.0f;
COMPILER_STRIP_GATE(0x80690DD8, &lit_3788);

/* 80690DDC-80690DE0 000004 0004+00 3/13 0/0 0/0 .rodata          @3789 */
SECTION_RODATA static u8 const lit_3789[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80690DDC, &lit_3789);

/* 80690DE0-80690DE8 000008 0004+04 2/13 0/0 0/0 .rodata          @3790 */
SECTION_RODATA static f32 const lit_3790[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80690DE0, &lit_3790);

/* 80690DE8-80690DF0 000010 0008+00 0/1 0/0 0/0 .rodata          @3791 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3791[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80690DE8, &lit_3791);
#pragma pop

/* 80690DF0-80690DF8 000018 0008+00 0/1 0/0 0/0 .rodata          @3792 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3792[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80690DF0, &lit_3792);
#pragma pop

/* 80690DF8-80690E00 000020 0008+00 0/1 0/0 0/0 .rodata          @3793 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3793[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80690DF8, &lit_3793);
#pragma pop

/* 80690E00-80690E04 000028 0004+00 0/1 0/0 0/0 .rodata          @3794 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3794 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80690E00, &lit_3794);
#pragma pop

/* 80690E04-80690E08 00002C 0004+00 0/3 0/0 0/0 .rodata          @3809 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3809 = 3.0f;
COMPILER_STRIP_GATE(0x80690E04, &lit_3809);
#pragma pop

/* 80690E08-80690E0C 000030 0004+00 0/1 0/0 0/0 .rodata          @3810 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3810 = 3000.0f;
COMPILER_STRIP_GATE(0x80690E08, &lit_3810);
#pragma pop

/* 80690E0C-80690E10 000034 0004+00 0/1 0/0 0/0 .rodata          @3811 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3811 = 6.0f;
COMPILER_STRIP_GATE(0x80690E0C, &lit_3811);
#pragma pop

/* 80690E10-80690E14 000038 0004+00 0/2 0/0 0/0 .rodata          @3812 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3812 = 200.0f;
COMPILER_STRIP_GATE(0x80690E10, &lit_3812);
#pragma pop

/* 80690EC4-80690ED0 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80690ED0-80690EE4 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80690EE4-80690EEC 000020 0008+00 0/1 0/0 0/0 .data            e_prim$3667 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim[8] = {
    0xFF, 0x78, 0x00, 0x00, 0xFF, 0x64, 0x78, 0x00,
};
#pragma pop

/* 80690EEC-80690EF4 000028 0008+00 0/1 0/0 0/0 .data            e_env$3668 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env[8] = {
    0x5A, 0x2D, 0x2D, 0x00, 0x3C, 0x1E, 0x1E, 0x00,
};
#pragma pop

/* 80690EF4-80690EFC 000030 0006+02 0/1 0/0 0/0 .data            eff_id$3676 */
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

/* 80690EFC-80690F00 000038 0004+00 1/1 0/0 0/0 .data            ap_name$3966 */
SECTION_DATA static u8 ap_name_3966[4] = {
    0x81,
    0xD8,
    0x81,
    0xD9,
};

/* 80690F00-80690F40 -00001 0040+00 1/1 0/0 0/0 .data            @4131 */
SECTION_DATA static void* lit_4131[16] = {
    (void*)(((char*)e_bs_fight_run__FP10e_bs_class) + 0x54),
    (void*)(((char*)e_bs_fight_run__FP10e_bs_class) + 0x94),
    (void*)(((char*)e_bs_fight_run__FP10e_bs_class) + 0x27C),
    (void*)(((char*)e_bs_fight_run__FP10e_bs_class) + 0x27C),
    (void*)(((char*)e_bs_fight_run__FP10e_bs_class) + 0x27C),
    (void*)(((char*)e_bs_fight_run__FP10e_bs_class) + 0x27C),
    (void*)(((char*)e_bs_fight_run__FP10e_bs_class) + 0x27C),
    (void*)(((char*)e_bs_fight_run__FP10e_bs_class) + 0x27C),
    (void*)(((char*)e_bs_fight_run__FP10e_bs_class) + 0x27C),
    (void*)(((char*)e_bs_fight_run__FP10e_bs_class) + 0x27C),
    (void*)(((char*)e_bs_fight_run__FP10e_bs_class) + 0xAC),
    (void*)(((char*)e_bs_fight_run__FP10e_bs_class) + 0xD8),
    (void*)(((char*)e_bs_fight_run__FP10e_bs_class) + 0x10C),
    (void*)(((char*)e_bs_fight_run__FP10e_bs_class) + 0x1C4),
    (void*)(((char*)e_bs_fight_run__FP10e_bs_class) + 0x27C),
    (void*)(((char*)e_bs_fight_run__FP10e_bs_class) + 0x248),
};

/* 80690F40-80690F48 00007C 0006+02 1/1 0/0 0/0 .data            ap_name$4233 */
SECTION_DATA static u8 ap_name_4233[6 + 2 /* padding */] = {
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

/* 80690F48-80690F88 000084 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4691 */
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

/* 80690F88-80690FC8 0000C4 0040+00 1/1 0/0 0/0 .data            at_sph_src$4692 */
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};

/* 80690FC8-80690FE8 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_BS_Method */
static actor_method_class l_daE_BS_Method = {
    (process_method_func)daE_BS_Create__FP10fopAc_ac_c,
    (process_method_func)daE_BS_Delete__FP10e_bs_class,
    (process_method_func)daE_BS_Execute__FP10e_bs_class,
    (process_method_func)daE_BS_IsDelete__FP10e_bs_class,
    (process_method_func)daE_BS_Draw__FP10e_bs_class,
};

/* 80690FE8-80691018 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_BS */
extern actor_process_profile_definition g_profile_E_BS = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_E_BS,             // mProcName
  &g_fpcLf_Method.mBase, // sub_method
  sizeof(e_bs_class),    // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  124,                   // mPriority
  &l_daE_BS_Method,      // sub_method
  0x10040100,            // mStatus
  fopAc_ENEMY_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

/* 80691018-80691024 000154 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80691024-80691030 000160 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80691030-8069103C 00016C 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8069103C-80691048 000178 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80691048-80691054 000184 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80691054-80691078 000190 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806909A8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_806909A0,
};

/* 80691078-80691084 0001B4 000C+00 2/2 0/0 0/0 .data            __vt__12daE_BS_HIO_c */
SECTION_DATA extern void* __vt__12daE_BS_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_BS_HIO_cFv,
};

/* 8068E12C-8068E178 0000EC 004C+00 1/1 0/0 0/0 .text            __ct__12daE_BS_HIO_cFv */
daE_BS_HIO_c::daE_BS_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80690E14-80690E18 00003C 0004+00 0/4 0/0 0/0 .rodata          @3826 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3826 = 5.0f;
COMPILER_STRIP_GATE(0x80690E14, &lit_3826);
#pragma pop

/* 80690E18-80690E1C 000040 0004+00 1/2 0/0 0/0 .rodata          @3827 */
SECTION_RODATA static f32 const lit_3827 = -1.0f;
COMPILER_STRIP_GATE(0x80690E18, &lit_3827);

/* 80690EB8-80690EB8 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80690EB8 = "E_BS";
#pragma pop

/* 8068E178-8068E1F4 000138 007C+00 1/1 0/0 0/0 .text            wepon_anm_init__FP10e_bs_classi */
static void wepon_anm_init(e_bs_class* param_0, int param_1) {
    // NONMATCHING
}

/* 8068E1F4-8068E2D4 0001B4 00E0+00 5/5 0/0 0/0 .text            anm_init__FP10e_bs_classifUcf */
static void anm_init(e_bs_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* 8068E2D4-8068E3D4 000294 0100+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80690E1C-80690E20 000044 0004+00 0/2 0/0 0/0 .rodata          @3896 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3896 = 50.0f;
COMPILER_STRIP_GATE(0x80690E1C, &lit_3896);
#pragma pop

/* 80690E20-80690E24 000048 0004+00 0/2 0/0 0/0 .rodata          @3897 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3897 = 600.0f;
COMPILER_STRIP_GATE(0x80690E20, &lit_3897);
#pragma pop

/* 8068E3D4-8068E4F0 000394 011C+00 1/0 0/0 0/0 .text            daE_BS_Draw__FP10e_bs_class */
static void daE_BS_Draw(e_bs_class* param_0) {
    // NONMATCHING
}

/* 8068E4F0-8068E534 0004B0 0044+00 1/1 0/0 0/0 .text            player_way_check__FP10e_bs_class */
static void player_way_check(e_bs_class* param_0) {
    // NONMATCHING
}

/* 8068E534-8068E644 0004F4 0110+00 1/1 0/0 0/0 .text            way_bg_check__FP10e_bs_classff */
static void way_bg_check(e_bs_class* param_0, f32 param_1, f32 param_2) {
    // NONMATCHING
}

/* 8068E644-8068E708 000604 00C4+00 2/2 0/0 0/0 .text            pl_check__FP10e_bs_classfs */
static void pl_check(e_bs_class* param_0, f32 param_1, s16 param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80690E24-80690E28 00004C 0004+00 0/3 0/0 0/0 .rodata          @3996 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3996 = 20.0f;
COMPILER_STRIP_GATE(0x80690E24, &lit_3996);
#pragma pop

/* 8068E708-8068E8C4 0006C8 01BC+00 1/1 0/0 0/0 .text            e_bs_appear__FP10e_bs_class */
static void e_bs_appear(e_bs_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80690E28-80690E2C 000050 0004+00 0/1 0/0 0/0 .rodata          @4040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4040 = 32768.0f;
COMPILER_STRIP_GATE(0x80690E28, &lit_4040);
#pragma pop

/* 80690E2C-80690E30 000054 0004+00 0/1 0/0 0/0 .rodata          @4041 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4041 = 10000.0f;
COMPILER_STRIP_GATE(0x80690E2C, &lit_4041);
#pragma pop

/* 80690E30-80690E34 000058 0004+00 0/3 0/0 0/0 .rodata          @4042 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4042 = 10.0f;
COMPILER_STRIP_GATE(0x80690E30, &lit_4042);
#pragma pop

/* 80690E34-80690E38 00005C 0004+00 0/1 0/0 0/0 .rodata          @4043 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4043 = 2000.0f;
COMPILER_STRIP_GATE(0x80690E34, &lit_4043);
#pragma pop

/* 80691090-80691094 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80691090[4];

/* 80691094-806910A0 00000C 000C+00 1/1 0/0 0/0 .bss             @3804 */
static u8 lit_3804[12];

/* 806910A0-806910C0 000018 0020+00 6/6 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[32];

/* 8068E8C4-8068EB50 000884 028C+00 1/1 0/0 0/0 .text            e_bs_normal__FP10e_bs_class */
static void e_bs_normal(e_bs_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80690E38-80690E3C 000060 0004+00 0/2 0/0 0/0 .rodata          @4123 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4123 = 15.0f;
COMPILER_STRIP_GATE(0x80690E38, &lit_4123);
#pragma pop

/* 8068EB50-8068EF2C 000B10 03DC+00 2/1 0/0 0/0 .text            e_bs_fight_run__FP10e_bs_class */
static void e_bs_fight_run(e_bs_class* param_0) {
    // NONMATCHING
}

/* 8068EF2C-8068EF8C 000EEC 0060+00 1/1 0/0 0/0 .text            at_hit_check__FP10e_bs_class */
static void at_hit_check(e_bs_class* param_0) {
    // NONMATCHING
}

/* 8068EF8C-8068F15C 000F4C 01D0+00 1/1 0/0 0/0 .text            e_bs_attack__FP10e_bs_class */
static void e_bs_attack(e_bs_class* param_0) {
    // NONMATCHING
}

/* 8068F15C-8068F208 00111C 00AC+00 1/1 0/0 0/0 .text            e_bs_damage__FP10e_bs_class */
static void e_bs_damage(e_bs_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80690E3C-80690E40 000064 0004+00 0/1 0/0 0/0 .rodata          @4124 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4124 = 2.0f;
COMPILER_STRIP_GATE(0x80690E3C, &lit_4124);
#pragma pop

/* 80690E40-80690E44 000068 0004+00 0/1 0/0 0/0 .rodata          @4125 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4125 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80690E40, &lit_4125);
#pragma pop

/* 80690E44-80690E48 00006C 0004+00 0/0 0/0 0/0 .rodata          @4126 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4126 = 1.5f;
COMPILER_STRIP_GATE(0x80690E44, &lit_4126);
#pragma pop

/* 80690E48-80690E4C 000070 0004+00 0/1 0/0 0/0 .rodata          @4127 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4127 = 30.0f;
COMPILER_STRIP_GATE(0x80690E48, &lit_4127);
#pragma pop

/* 8068F208-8068F4C4 0011C8 02BC+00 1/1 0/0 0/0 .text            damage_check__FP10e_bs_class */
static void damage_check(e_bs_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80690E4C-80690E50 000074 0004+00 0/0 0/0 0/0 .rodata          @4128 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4128 = 7.0f / 20.0f;
COMPILER_STRIP_GATE(0x80690E4C, &lit_4128);
#pragma pop

/* 80690E50-80690E54 000078 0004+00 0/0 0/0 0/0 .rodata          @4129 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4129 = -1.5f;
COMPILER_STRIP_GATE(0x80690E50, &lit_4129);
#pragma pop

/* 80690E54-80690E58 00007C 0004+00 0/2 0/0 0/0 .rodata          @4130 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4130 = 0.5f;
COMPILER_STRIP_GATE(0x80690E54, &lit_4130);
#pragma pop

/* 80690E58-80690E5C 000080 0004+00 0/1 0/0 0/0 .rodata          @4431 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4431 = -5.0f;
COMPILER_STRIP_GATE(0x80690E58, &lit_4431);
#pragma pop

/* 80690E5C-80690E60 000084 0004+00 0/1 0/0 0/0 .rodata          @4432 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4432 = -60.0f;
COMPILER_STRIP_GATE(0x80690E5C, &lit_4432);
#pragma pop

/* 80690E60-80690E64 000088 0004+00 0/1 0/0 0/0 .rodata          @4433 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4433 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80690E60, &lit_4433);
#pragma pop

/* 80690E64-80690E68 00008C 0004+00 0/2 0/0 0/0 .rodata          @4434 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4434 = 7.0f;
COMPILER_STRIP_GATE(0x80690E64, &lit_4434);
#pragma pop

/* 80690E68-80690E6C 000090 0004+00 0/1 0/0 0/0 .rodata          @4435 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4435 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80690E68, &lit_4435);
#pragma pop

/* 80690E6C-80690E70 000094 0004+00 0/1 0/0 0/0 .rodata          @4436 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4436 = 2500.0f;
COMPILER_STRIP_GATE(0x80690E6C, &lit_4436);
#pragma pop

/* 80690E70-80690E74 000098 0004+00 0/1 0/0 0/0 .rodata          @4437 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4437 = -150.0f;
COMPILER_STRIP_GATE(0x80690E70, &lit_4437);
#pragma pop

/* 80690E74-80690E78 00009C 0004+00 0/1 0/0 0/0 .rodata          @4438 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4438 = 4000.0f;
COMPILER_STRIP_GATE(0x80690E74, &lit_4438);
#pragma pop

/* 8068F4C4-8068FA04 001484 0540+00 1/1 0/0 0/0 .text            action__FP10e_bs_class */
static void action(e_bs_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80690E78-80690E7C 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4491 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4491 = 38.0f;
COMPILER_STRIP_GATE(0x80690E78, &lit_4491);
#pragma pop

/* 80690E7C-80690E80 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4492 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4492 = 54.0f;
COMPILER_STRIP_GATE(0x80690E7C, &lit_4492);
#pragma pop

/* 80690E80-80690E84 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4493 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4493 = 9.0f;
COMPILER_STRIP_GATE(0x80690E80, &lit_4493);
#pragma pop

/* 80690E84-80690E88 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4494 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4494 = 14.0f;
COMPILER_STRIP_GATE(0x80690E84, &lit_4494);
#pragma pop

/* 80690E88-80690E8C 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4495 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4495 = 29.0f;
COMPILER_STRIP_GATE(0x80690E88, &lit_4495);
#pragma pop

/* 80690E8C-80690E90 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4496 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4496 = 16.0f;
COMPILER_STRIP_GATE(0x80690E8C, &lit_4496);
#pragma pop

/* 80690E90-80690E94 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4497 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4497 = 19.0f;
COMPILER_STRIP_GATE(0x80690E90, &lit_4497);
#pragma pop

/* 8068FA04-8068FBDC 0019C4 01D8+00 1/1 0/0 0/0 .text            anm_se_set__FP10e_bs_class */
static void anm_se_set(e_bs_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80690E94-80690E98 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4599 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4599 = -200000.0f;
COMPILER_STRIP_GATE(0x80690E94, &lit_4599);
#pragma pop

/* 80690E98-80690E9C 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4600 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4600 = -150000.0f;
COMPILER_STRIP_GATE(0x80690E98, &lit_4600);
#pragma pop

/* 80690E9C-80690EA0 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4601 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4601 = 35.0f;
COMPILER_STRIP_GATE(0x80690E9C, &lit_4601);
#pragma pop

/* 80690EA0-80690EA4 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4602 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4602 = 120.0f;
COMPILER_STRIP_GATE(0x80690EA0, &lit_4602);
#pragma pop

/* 8068FBDC-8068FFA8 001B9C 03CC+00 2/1 0/0 0/0 .text            daE_BS_Execute__FP10e_bs_class */
static void daE_BS_Execute(e_bs_class* param_0) {
    // NONMATCHING
}

/* 8068FFA8-8068FFB0 001F68 0008+00 1/0 0/0 0/0 .text            daE_BS_IsDelete__FP10e_bs_class */
static bool daE_BS_IsDelete(e_bs_class* param_0) {
    return true;
}

/* 8068FFB0-80690018 001F70 0068+00 1/0 0/0 0/0 .text            daE_BS_Delete__FP10e_bs_class */
static void daE_BS_Delete(e_bs_class* param_0) {
    // NONMATCHING
}

/* 80690018-80690224 001FD8 020C+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80690EA4-80690EA8 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4791 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4791 = 500.0f;
COMPILER_STRIP_GATE(0x80690EA4, &lit_4791);
#pragma pop

/* 80690EA8-80690EAC 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4792 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4792 = 80.0f;
COMPILER_STRIP_GATE(0x80690EA8, &lit_4792);
#pragma pop

/* 80690EAC-80690EB0 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4793 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4793 = 65535.0f;
COMPILER_STRIP_GATE(0x80690EAC, &lit_4793);
#pragma pop

/* 80690EB0-80690EB8 0000D8 0008+00 0/1 0/0 0/0 .rodata          @4795 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4795[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80690EB0, &lit_4795);
#pragma pop

/* 80690EB8-80690EB8 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80690EBD = "E_bs";
#pragma pop

/* 80690224-806905B8 0021E4 0394+00 1/0 0/0 0/0 .text            daE_BS_Create__FP10fopAc_ac_c */
static void daE_BS_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 806905B8-80690600 002578 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80690600-80690648 0025C0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80690648-80690714 002608 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80690714-80690798 0026D4 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80690798-806907F4 002758 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 806907F4-80690864 0027B4 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80690864-806908D4 002824 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 806908D4-8069091C 002894 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 8069091C-80690964 0028DC 0048+00 2/1 0/0 0/0 .text            __dt__12daE_BS_HIO_cFv */
daE_BS_HIO_c::~daE_BS_HIO_c() {
    // NONMATCHING
}

/* 80690964-806909A0 002924 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_bs_cpp */
void __sinit_d_a_e_bs_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80690964, __sinit_d_a_e_bs_cpp);
#pragma pop

/* 806909A0-806909A8 002960 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_806909A0() {
    // NONMATCHING
}

/* 806909A8-806909B0 002968 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_806909A8() {
    // NONMATCHING
}

/* 806909B0-80690DC4 002970 0414+00 1/1 0/0 0/0 .text
 * setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz */
static void setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz* param_2,
                                   cXyz* param_3) {
    // NONMATCHING
}

/* 80690EB8-80690EB8 0000E0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */