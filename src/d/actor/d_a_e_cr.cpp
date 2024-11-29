/**
 * @file d_a_e_cr.cpp
 * 
*/

#include "d/actor/d_a_e_cr.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__12daE_CR_HIO_cFv();
extern "C" static void anm_init__FP10e_cr_classifUcf();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void daE_CR_Draw__FP10e_cr_class();
extern "C" static void other_bg_check__FP10e_cr_classP10fopAc_ac_c();
extern "C" static void pl_check__FP10e_cr_classfs();
extern "C" static void damage_check__FP10e_cr_class();
extern "C" static void way_bg_check__FP10e_cr_classf();
extern "C" static void e_cr_move__FP10e_cr_class();
extern "C" static void e_cr_s_damage__FP10e_cr_class();
extern "C" static void e_cr_damage__FP10e_cr_class();
extern "C" static void action__FP10e_cr_class();
extern "C" static void daE_CR_Execute__FP10e_cr_class();
extern "C" static bool daE_CR_IsDelete__FP10e_cr_class();
extern "C" static void daE_CR_Delete__FP10e_cr_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_CR_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_CR_HIO_cFv();
extern "C" void __sinit_d_a_e_cr_cpp();
extern "C" static void func_80699878();
extern "C" static void func_80699880();
extern "C" static void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz();
extern "C" extern char const* const d_a_e_cr__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
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
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
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
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_19();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
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
/* 80699CB0-80699CB4 000000 0004+00 8/8 0/0 0/0 .rodata          @3788 */
SECTION_RODATA static f32 const lit_3788 = 100.0f;
COMPILER_STRIP_GATE(0x80699CB0, &lit_3788);

/* 80699CB4-80699CB8 000004 0004+00 2/7 0/0 0/0 .rodata          @3789 */
SECTION_RODATA static u8 const lit_3789[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80699CB4, &lit_3789);

/* 80699CB8-80699CC0 000008 0004+04 2/7 0/0 0/0 .rodata          @3790 */
SECTION_RODATA static f32 const lit_3790[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80699CB8, &lit_3790);

/* 80699CC0-80699CC8 000010 0008+00 0/1 0/0 0/0 .rodata          @3791 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3791[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80699CC0, &lit_3791);
#pragma pop

/* 80699CC8-80699CD0 000018 0008+00 0/1 0/0 0/0 .rodata          @3792 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3792[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80699CC8, &lit_3792);
#pragma pop

/* 80699CD0-80699CD8 000020 0008+00 0/1 0/0 0/0 .rodata          @3793 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3793[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80699CD0, &lit_3793);
#pragma pop

/* 80699CD8-80699CDC 000028 0004+00 0/1 0/0 0/0 .rodata          @3794 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3794 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80699CD8, &lit_3794);
#pragma pop

/* 80699CDC-80699CE0 00002C 0004+00 0/2 0/0 0/0 .rodata          @3809 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3809 = 3.0f;
COMPILER_STRIP_GATE(0x80699CDC, &lit_3809);
#pragma pop

/* 80699CE0-80699CE4 000030 0004+00 1/3 0/0 0/0 .rodata          @3810 */
SECTION_RODATA static f32 const lit_3810 = 40.0f;
COMPILER_STRIP_GATE(0x80699CE0, &lit_3810);

/* 80699CE4-80699CE8 000034 0004+00 0/1 0/0 0/0 .rodata          @3811 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3811 = 400.0f;
COMPILER_STRIP_GATE(0x80699CE4, &lit_3811);
#pragma pop

/* 80699D4C-80699D58 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80699D58-80699D6C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80699D6C-80699D74 000020 0008+00 0/1 0/0 0/0 .data            e_prim$3667 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim[8] = {
    0xFF, 0x78, 0x00, 0x00, 0xFF, 0x64, 0x78, 0x00,
};
#pragma pop

/* 80699D74-80699D7C 000028 0008+00 0/1 0/0 0/0 .data            e_env$3668 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env[8] = {
    0x5A, 0x2D, 0x2D, 0x00, 0x3C, 0x1E, 0x1E, 0x00,
};
#pragma pop

/* 80699D7C-80699D84 000030 0006+02 0/1 0/0 0/0 .data            eff_id$3676 */
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

/* 80699D84-80699DC4 000038 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4251 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80699DC4-80699DE4 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_CR_Method */
static actor_method_class l_daE_CR_Method = {
    (process_method_func)daE_CR_Create__FP10fopAc_ac_c,
    (process_method_func)daE_CR_Delete__FP10e_cr_class,
    (process_method_func)daE_CR_Execute__FP10e_cr_class,
    (process_method_func)daE_CR_IsDelete__FP10e_cr_class,
    (process_method_func)daE_CR_Draw__FP10e_cr_class,
};

/* 80699DE4-80699E14 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_CR */
extern actor_process_profile_definition g_profile_E_CR = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_E_CR,             // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(e_cr_class),    // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  113,                   // mPriority
  &l_daE_CR_Method,      // sub_method
  0x10040100,            // mStatus
  fopAc_ENEMY_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

/* 80699E14-80699E20 0000C8 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80699E20-80699E2C 0000D4 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80699E2C-80699E38 0000E0 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80699E38-80699E44 0000EC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80699E44-80699E50 0000F8 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80699E50-80699E74 000104 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80699880,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80699878,
};

/* 80699E74-80699E80 000128 000C+00 2/2 0/0 0/0 .data            __vt__12daE_CR_HIO_c */
SECTION_DATA extern void* __vt__12daE_CR_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_CR_HIO_cFv,
};

/* 8069800C-80698044 0000EC 0038+00 1/1 0/0 0/0 .text            __ct__12daE_CR_HIO_cFv */
daE_CR_HIO_c::daE_CR_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80699CE8-80699CEC 000038 0004+00 1/1 0/0 0/0 .rodata          @3825 */
SECTION_RODATA static f32 const lit_3825 = -1.0f;
COMPILER_STRIP_GATE(0x80699CE8, &lit_3825);

/* 80699D40-80699D40 000090 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80699D40 = "E_CR";
#pragma pop

/* 80698044-806980F0 000124 00AC+00 3/3 0/0 0/0 .text            anm_init__FP10e_cr_classifUcf */
static void anm_init(e_cr_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* 806980F0-806981B4 0001D0 00C4+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 806981B4-80698250 000294 009C+00 1/0 0/0 0/0 .text            daE_CR_Draw__FP10e_cr_class */
static void daE_CR_Draw(e_cr_class* param_0) {
    // NONMATCHING
}

/* 80698250-80698328 000330 00D8+00 1/1 0/0 0/0 .text other_bg_check__FP10e_cr_classP10fopAc_ac_c
 */
static void other_bg_check(e_cr_class* param_0, fopAc_ac_c* param_1) {
    // NONMATCHING
}

/* 80698328-806983A4 000408 007C+00 1/1 0/0 0/0 .text            pl_check__FP10e_cr_classfs */
static void pl_check(e_cr_class* param_0, f32 param_1, s16 param_2) {
    // NONMATCHING
}

/* 806983A4-80698498 000484 00F4+00 1/1 0/0 0/0 .text            damage_check__FP10e_cr_class */
static void damage_check(e_cr_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80699CEC-80699CF0 00003C 0004+00 2/4 0/0 0/0 .rodata          @3954 */
SECTION_RODATA static f32 const lit_3954 = 50.0f;
COMPILER_STRIP_GATE(0x80699CEC, &lit_3954);

/* 80698498-806985A4 000578 010C+00 1/1 0/0 0/0 .text            way_bg_check__FP10e_cr_classf */
static void way_bg_check(e_cr_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80699CF0-80699CF4 000040 0004+00 0/2 0/0 0/0 .rodata          @4018 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4018 = 30.0f;
COMPILER_STRIP_GATE(0x80699CF0, &lit_4018);
#pragma pop

/* 80699CF4-80699CF8 000044 0004+00 0/1 0/0 0/0 .rodata          @4019 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4019 = 60.0f;
COMPILER_STRIP_GATE(0x80699CF4, &lit_4019);
#pragma pop

/* 80699CF8-80699CFC 000048 0004+00 0/1 0/0 0/0 .rodata          @4020 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4020 = 200.0f;
COMPILER_STRIP_GATE(0x80699CF8, &lit_4020);
#pragma pop

/* 80699CFC-80699D00 00004C 0004+00 0/2 0/0 0/0 .rodata          @4021 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4021 = 20.0f;
COMPILER_STRIP_GATE(0x80699CFC, &lit_4021);
#pragma pop

/* 80699D00-80699D04 000050 0004+00 0/2 0/0 0/0 .rodata          @4022 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4022 = 10.0f;
COMPILER_STRIP_GATE(0x80699D00, &lit_4022);
#pragma pop

/* 80699D04-80699D08 000054 0004+00 0/1 0/0 0/0 .rodata          @4023 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4023 = 30000.0f;
COMPILER_STRIP_GATE(0x80699D04, &lit_4023);
#pragma pop

/* 80699D08-80699D0C 000058 0004+00 0/4 0/0 0/0 .rodata          @4024 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4024 = 5.0f;
COMPILER_STRIP_GATE(0x80699D08, &lit_4024);
#pragma pop

/* 80699D0C-80699D10 00005C 0004+00 0/1 0/0 0/0 .rodata          @4025 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4025 = 15000.0f;
COMPILER_STRIP_GATE(0x80699D0C, &lit_4025);
#pragma pop

/* 80699D10-80699D14 000060 0004+00 0/3 0/0 0/0 .rodata          @4026 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4026 = 0.5f;
COMPILER_STRIP_GATE(0x80699D10, &lit_4026);
#pragma pop

/* 80699D14-80699D18 000064 0004+00 0/1 0/0 0/0 .rodata          @4027 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4027 = 35.0f;
COMPILER_STRIP_GATE(0x80699D14, &lit_4027);
#pragma pop

/* 80699D18-80699D1C 000068 0004+00 0/2 0/0 0/0 .rodata          @4028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4028 = 15.0f;
COMPILER_STRIP_GATE(0x80699D18, &lit_4028);
#pragma pop

/* 80699E88-80699E8C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80699E88[4];

/* 80699E8C-80699E98 00000C 000C+00 1/1 0/0 0/0 .bss             @3804 */
static u8 lit_3804[12];

/* 80699E98-80699EAC 000018 0014+00 4/4 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[20];

/* 806985A4-80698A5C 000684 04B8+00 1/1 0/0 0/0 .text            e_cr_move__FP10e_cr_class */
static void e_cr_move(e_cr_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80699D1C-80699D20 00006C 0004+00 0/2 0/0 0/0 .rodata          @4051 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4051 = 2.0f;
COMPILER_STRIP_GATE(0x80699D1C, &lit_4051);
#pragma pop

/* 80699D20-80699D24 000070 0004+00 0/1 0/0 0/0 .rodata          @4052 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4052 = -25.0f;
COMPILER_STRIP_GATE(0x80699D20, &lit_4052);
#pragma pop

/* 80699D24-80699D28 000074 0004+00 0/1 0/0 0/0 .rodata          @4053 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4053 = 4.0f;
COMPILER_STRIP_GATE(0x80699D24, &lit_4053);
#pragma pop

/* 80698A5C-80698B80 000B3C 0124+00 1/1 0/0 0/0 .text            e_cr_s_damage__FP10e_cr_class */
static void e_cr_s_damage(e_cr_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80699D28-80699D2C 000078 0004+00 0/1 0/0 0/0 .rodata          @4074 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4074 = 38.0f;
COMPILER_STRIP_GATE(0x80699D28, &lit_4074);
#pragma pop

/* 80699D2C-80699D30 00007C 0004+00 0/1 0/0 0/0 .rodata          @4075 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4075 = 8.0f;
COMPILER_STRIP_GATE(0x80699D2C, &lit_4075);
#pragma pop

/* 80699D30-80699D34 000080 0004+00 0/1 0/0 0/0 .rodata          @4076 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4076 = -30.0f;
COMPILER_STRIP_GATE(0x80699D30, &lit_4076);
#pragma pop

/* 80699D34-80699D38 000084 0004+00 0/1 0/0 0/0 .rodata          @4077 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4077 = 1000.0f;
COMPILER_STRIP_GATE(0x80699D34, &lit_4077);
#pragma pop

/* 80699D38-80699D3C 000088 0004+00 0/1 0/0 0/0 .rodata          @4078 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4078 = 25.0f;
COMPILER_STRIP_GATE(0x80699D38, &lit_4078);
#pragma pop

/* 80698B80-80698D6C 000C60 01EC+00 1/1 0/0 0/0 .text            e_cr_damage__FP10e_cr_class */
static void e_cr_damage(e_cr_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80699D3C-80699D40 00008C 0004+00 0/1 0/0 0/0 .rodata          @4124 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4124 = 7.0f;
COMPILER_STRIP_GATE(0x80699D3C, &lit_4124);
#pragma pop

/* 80698D6C-80698F88 000E4C 021C+00 1/1 0/0 0/0 .text            action__FP10e_cr_class */
static void action(e_cr_class* param_0) {
    // NONMATCHING
}

/* 80698F88-806991BC 001068 0234+00 2/1 0/0 0/0 .text            daE_CR_Execute__FP10e_cr_class */
static void daE_CR_Execute(e_cr_class* param_0) {
    // NONMATCHING
}

/* 806991BC-806991C4 00129C 0008+00 1/0 0/0 0/0 .text            daE_CR_IsDelete__FP10e_cr_class */
static bool daE_CR_IsDelete(e_cr_class* param_0) {
    return true;
}

/* 806991C4-8069922C 0012A4 0068+00 1/0 0/0 0/0 .text            daE_CR_Delete__FP10e_cr_class */
static void daE_CR_Delete(e_cr_class* param_0) {
    // NONMATCHING
}

/* 8069922C-8069936C 00130C 0140+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80699D40-80699D40 000090 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80699D45 = "E_cr";
#pragma pop

/* 8069936C-806995E0 00144C 0274+00 1/0 0/0 0/0 .text            daE_CR_Create__FP10fopAc_ac_c */
static void daE_CR_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 806995E0-80699628 0016C0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80699628-80699670 001708 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80699670-806996CC 001750 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 806996CC-8069973C 0017AC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8069973C-806997AC 00181C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 806997AC-806997F4 00188C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 806997F4-8069983C 0018D4 0048+00 2/1 0/0 0/0 .text            __dt__12daE_CR_HIO_cFv */
daE_CR_HIO_c::~daE_CR_HIO_c() {
    // NONMATCHING
}

/* 8069983C-80699878 00191C 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_cr_cpp */
void __sinit_d_a_e_cr_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8069983C, __sinit_d_a_e_cr_cpp);
#pragma pop

/* 80699878-80699880 001958 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80699878() {
    // NONMATCHING
}

/* 80699880-80699888 001960 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80699880() {
    // NONMATCHING
}

/* 80699888-80699C9C 001968 0414+00 1/1 0/0 0/0 .text
 * setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz */
static void setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz* param_2,
                                   cXyz* param_3) {
    // NONMATCHING
}

/* 80699D40-80699D40 000090 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
