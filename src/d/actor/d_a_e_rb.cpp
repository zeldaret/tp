/**
 * @file d_a_e_rb.cpp
 * 
*/

#include "d/actor/d_a_e_rb.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__12daE_RB_HIO_cFv();
extern "C" static void anm_init__FP10e_rb_classifUcf();
extern "C" static void daE_RB_Draw__FP10e_rb_class();
extern "C" static void damage_check__FP10e_rb_class();
extern "C" static void e_rb_stay__FP10e_rb_class();
extern "C" static void e_rb_appear__FP10e_rb_class();
extern "C" static void e_rb_move__FP10e_rb_class();
extern "C" static void e_rb_attack__FP10e_rb_class();
extern "C" static void e_rb_disappear__FP10e_rb_class();
extern "C" static void e_rb_damage__FP10e_rb_class();
extern "C" static void action__FP10e_rb_class();
extern "C" static void e_rb_base_0__FP10e_rb_class();
extern "C" static void s_s_sub__FPvPv();
extern "C" static void e_rb_base_1__FP10e_rb_class();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" static void e_rb_base__FP10e_rb_class();
extern "C" static void daE_RB_Execute__FP10e_rb_class();
extern "C" static bool daE_RB_IsDelete__FP10e_rb_class();
extern "C" static void daE_RB_Delete__FP10e_rb_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_RB_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_RB_HIO_cFv();
extern "C" void __sinit_d_a_e_rb_cpp();
extern "C" static void func_807648BC();
extern "C" static void func_807648C4();
extern "C" static void func_807648CC();
extern "C" static void func_807648D4();
extern "C" static void func_807648DC();
extern "C" static void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz();
extern "C" extern char const* const d_a_e_rb__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
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
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
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
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_18();
extern "C" void _savegpr_19();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_18();
extern "C" void _restgpr_19();
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
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80764D0C-80764D10 000000 0004+00 13/13 0/0 0/0 .rodata          @3788 */
SECTION_RODATA static f32 const lit_3788 = 100.0f;
COMPILER_STRIP_GATE(0x80764D0C, &lit_3788);

/* 80764D10-80764D14 000004 0004+00 1/9 0/0 0/0 .rodata          @3789 */
SECTION_RODATA static u8 const lit_3789[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80764D10, &lit_3789);

/* 80764D14-80764D1C 000008 0004+04 1/10 0/0 0/0 .rodata          @3790 */
SECTION_RODATA static f32 const lit_3790[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80764D14, &lit_3790);

/* 80764D1C-80764D24 000010 0008+00 0/1 0/0 0/0 .rodata          @3791 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3791[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80764D1C, &lit_3791);
#pragma pop

/* 80764D24-80764D2C 000018 0008+00 0/1 0/0 0/0 .rodata          @3792 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3792[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80764D24, &lit_3792);
#pragma pop

/* 80764D2C-80764D34 000020 0008+00 0/1 0/0 0/0 .rodata          @3793 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3793[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80764D2C, &lit_3793);
#pragma pop

/* 80764D34-80764D38 000028 0004+00 0/2 0/0 0/0 .rodata          @3794 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3794 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80764D34, &lit_3794);
#pragma pop

/* 80764D38-80764D3C 00002C 0004+00 1/2 0/0 0/0 .rodata          @3809 */
SECTION_RODATA static f32 const lit_3809 = 1.5f;
COMPILER_STRIP_GATE(0x80764D38, &lit_3809);

/* 80764D3C-80764D40 000030 0004+00 1/1 0/0 0/0 .rodata          @3810 */
SECTION_RODATA static f32 const lit_3810 = -5.0f;
COMPILER_STRIP_GATE(0x80764D3C, &lit_3810);

/* 80764DDC-80764DE8 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80764DE8-80764DFC 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80764DFC-80764E04 000020 0008+00 0/1 0/0 0/0 .data            e_prim$3667 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim[8] = {
    0xFF, 0x78, 0x00, 0x00, 0xFF, 0x64, 0x78, 0x00,
};
#pragma pop

/* 80764E04-80764E0C 000028 0008+00 0/1 0/0 0/0 .data            e_env$3668 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env[8] = {
    0x5A, 0x2D, 0x2D, 0x00, 0x3C, 0x1E, 0x1E, 0x00,
};
#pragma pop

/* 80764E0C-80764E14 000030 0006+02 0/1 0/0 0/0 .data            eff_id$3676 */
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

/* 80764E14-80764E40 -00001 002C+00 1/1 0/0 0/0 .data            @4166 */
SECTION_DATA static void* lit_4166[11] = {
    (void*)(((char*)action__FP10e_rb_class) + 0x60),
    (void*)(((char*)action__FP10e_rb_class) + 0x6C),
    (void*)(((char*)action__FP10e_rb_class) + 0x88),
    (void*)(((char*)action__FP10e_rb_class) + 0xA8),
    (void*)(((char*)action__FP10e_rb_class) + 0x104),
    (void*)(((char*)action__FP10e_rb_class) + 0xC8),
    (void*)(((char*)action__FP10e_rb_class) + 0x104),
    (void*)(((char*)action__FP10e_rb_class) + 0x104),
    (void*)(((char*)action__FP10e_rb_class) + 0x104),
    (void*)(((char*)action__FP10e_rb_class) + 0x104),
    (void*)(((char*)action__FP10e_rb_class) + 0xE8),
};

/* 80764E40-80764E80 000064 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4557 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{AT_TYPE_1000, 0x1, 0xd}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_HARD_BODY, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80764E80-80764EA0 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_RB_Method */
static actor_method_class l_daE_RB_Method = {
    (process_method_func)daE_RB_Create__FP10fopAc_ac_c,
    (process_method_func)daE_RB_Delete__FP10e_rb_class,
    (process_method_func)daE_RB_Execute__FP10e_rb_class,
    (process_method_func)daE_RB_IsDelete__FP10e_rb_class,
    (process_method_func)daE_RB_Draw__FP10e_rb_class,
};

/* 80764EA0-80764ED0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_RB */
extern actor_process_profile_definition g_profile_E_RB = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_E_RB,             // mProcName
  &g_fpcLf_Method.mBase, // sub_method
  sizeof(e_rb_class),    // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  153,                   // mPriority
  &l_daE_RB_Method,      // sub_method
  0x10040120,            // mStatus
  fopAc_ENEMY_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

/* 80764ED0-80764EDC 0000F4 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80764EDC-80764EE8 000100 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80764EE8-80764EF4 00010C 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80764EF4-80764F00 000118 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80764F00-80764F0C 000124 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80764F0C-80764F30 000130 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807648DC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807648D4,
};

/* 80764F30-80764F3C 000154 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80764F3C-80764F6C 000160 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807648BC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807648CC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807648C4,
};

/* 80764F6C-80764F78 000190 000C+00 2/2 0/0 0/0 .data            __vt__12daE_RB_HIO_c */
SECTION_DATA extern void* __vt__12daE_RB_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_RB_HIO_cFv,
};

/* 8076238C-807623BC 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__12daE_RB_HIO_cFv */
daE_RB_HIO_c::daE_RB_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80764D40-80764D44 000034 0004+00 1/2 0/0 0/0 .rodata          @3824 */
SECTION_RODATA static f32 const lit_3824 = -1.0f;
COMPILER_STRIP_GATE(0x80764D40, &lit_3824);

/* 80764DD4-80764DD4 0000C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80764DD4 = "E_rb";
#pragma pop

/* 807623BC-80762464 00011C 00A8+00 5/5 0/0 0/0 .text            anm_init__FP10e_rb_classifUcf */
static void anm_init(e_rb_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80764D44-80764D48 000038 0004+00 0/3 0/0 0/0 .rodata          @3842 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3842 = -70.0f;
COMPILER_STRIP_GATE(0x80764D44, &lit_3842);
#pragma pop

/* 80764D48-80764D4C 00003C 0004+00 0/2 0/0 0/0 .rodata          @3843 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3843 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80764D48, &lit_3843);
#pragma pop

/* 80764D4C-80764D50 000040 0004+00 0/4 0/0 0/0 .rodata          @3844 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3844 = 40.0f;
COMPILER_STRIP_GATE(0x80764D4C, &lit_3844);
#pragma pop

/* 80764F80-80764F84 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80764F80[4];

/* 80764F84-80764F90 00000C 000C+00 1/1 0/0 0/0 .bss             @3804 */
static u8 lit_3804[12];

/* 80764F90-80764FA0 000018 0010+00 8/8 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[16];

/* 80762464-80762554 0001C4 00F0+00 1/0 0/0 0/0 .text            daE_RB_Draw__FP10e_rb_class */
static void daE_RB_Draw(e_rb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80764D50-80764D54 000044 0004+00 0/1 0/0 0/0 .rodata          @3889 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3889 = 60.0f;
COMPILER_STRIP_GATE(0x80764D50, &lit_3889);
#pragma pop

/* 80764D54-80764D58 000048 0004+00 2/6 0/0 0/0 .rodata          @3890 */
SECTION_RODATA static f32 const lit_3890 = 50.0f;
COMPILER_STRIP_GATE(0x80764D54, &lit_3890);

/* 80764D58-80764D5C 00004C 0004+00 0/2 0/0 0/0 .rodata          @3891 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3891 = 20.0f;
COMPILER_STRIP_GATE(0x80764D58, &lit_3891);
#pragma pop

/* 80764D5C-80764D60 000050 0004+00 1/2 0/0 0/0 .rodata          @3892 */
SECTION_RODATA static f32 const lit_3892 = 65536.0f;
COMPILER_STRIP_GATE(0x80764D5C, &lit_3892);

/* 80762554-80762764 0002B4 0210+00 1/1 0/0 0/0 .text            damage_check__FP10e_rb_class */
static void damage_check(e_rb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80764D60-80764D64 000054 0004+00 0/1 0/0 0/0 .rodata          @3901 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3901 = -200.0f;
COMPILER_STRIP_GATE(0x80764D60, &lit_3901);
#pragma pop

/* 80762764-807627E4 0004C4 0080+00 1/1 0/0 0/0 .text            e_rb_stay__FP10e_rb_class */
static void e_rb_stay(e_rb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80764D64-80764D68 000058 0004+00 0/1 0/0 0/0 .rodata          @3933 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3933 = 800.0f;
COMPILER_STRIP_GATE(0x80764D64, &lit_3933);
#pragma pop

/* 80764D68-80764D6C 00005C 0004+00 0/1 0/0 0/0 .rodata          @3934 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3934 = 300.0f;
COMPILER_STRIP_GATE(0x80764D68, &lit_3934);
#pragma pop

/* 80764D6C-80764D70 000060 0004+00 0/4 0/0 0/0 .rodata          @3935 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3935 = 3.0f;
COMPILER_STRIP_GATE(0x80764D6C, &lit_3935);
#pragma pop

/* 807627E4-807629D8 000544 01F4+00 1/1 0/0 0/0 .text            e_rb_appear__FP10e_rb_class */
static void e_rb_appear(e_rb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80764D70-80764D74 000064 0004+00 0/2 0/0 0/0 .rodata          @3982 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3982 = 200.0f;
COMPILER_STRIP_GATE(0x80764D70, &lit_3982);
#pragma pop

/* 80764D74-80764D78 000068 0004+00 0/1 0/0 0/0 .rodata          @3983 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3983 = 400.0f;
COMPILER_STRIP_GATE(0x80764D74, &lit_3983);
#pragma pop

/* 80764D78-80764D7C 00006C 0004+00 0/2 0/0 0/0 .rodata          @3984 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3984 = 33.0f;
COMPILER_STRIP_GATE(0x80764D78, &lit_3984);
#pragma pop

/* 80764D7C-80764D80 000070 0004+00 0/1 0/0 0/0 .rodata          @3985 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3985 = 0x3BA3D70A;
COMPILER_STRIP_GATE(0x80764D7C, &lit_3985);
#pragma pop

/* 807629D8-80762C4C 000738 0274+00 1/1 0/0 0/0 .text            e_rb_move__FP10e_rb_class */
static void e_rb_move(e_rb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80764D80-80764D84 000074 0004+00 0/3 0/0 0/0 .rodata          @4026 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4026 = 30.0f;
COMPILER_STRIP_GATE(0x80764D80, &lit_4026);
#pragma pop

/* 80764D84-80764D88 000078 0004+00 0/2 0/0 0/0 .rodata          @4027 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4027 = 2.0f;
COMPILER_STRIP_GATE(0x80764D84, &lit_4027);
#pragma pop

/* 80764D88-80764D8C 00007C 0004+00 0/1 0/0 0/0 .rodata          @4028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4028 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80764D88, &lit_4028);
#pragma pop

/* 80762C4C-80762E90 0009AC 0244+00 1/1 0/0 0/0 .text            e_rb_attack__FP10e_rb_class */
static void e_rb_attack(e_rb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80764D8C-80764D90 000080 0004+00 0/1 0/0 0/0 .rodata          @4043 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4043 = 2.5f;
COMPILER_STRIP_GATE(0x80764D8C, &lit_4043);
#pragma pop

/* 80762E90-80762FD4 000BF0 0144+00 1/1 0/0 0/0 .text            e_rb_disappear__FP10e_rb_class */
static void e_rb_disappear(e_rb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80764D90-80764D94 000084 0004+00 0/2 0/0 0/0 .rodata          @4063 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4063 = 10.0f;
COMPILER_STRIP_GATE(0x80764D90, &lit_4063);
#pragma pop

/* 80764D94-80764D9C 000088 0004+04 0/2 0/0 0/0 .rodata          @4064 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4064[1 + 1 /* padding */] = {
    35.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80764D94, &lit_4064);
#pragma pop

/* 80764D9C-80764DA4 000090 0008+00 0/1 0/0 0/0 .rodata          @4066 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4066[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80764D9C, &lit_4066);
#pragma pop

/* 80762FD4-807631E0 000D34 020C+00 1/1 0/0 0/0 .text            e_rb_damage__FP10e_rb_class */
static void e_rb_damage(e_rb_class* param_0) {
    // NONMATCHING
}

/* 807631E0-80763554 000F40 0374+00 2/1 0/0 0/0 .text            action__FP10e_rb_class */
static void action(e_rb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80764DA4-80764DAC 000098 0004+04 0/0 0/0 0/0 .rodata          @4165 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4165[1 + 1 /* padding */] = {
    3.0f / 5.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80764DA4, &lit_4165);
#pragma pop

/* 80764DAC-80764DB4 0000A0 0008+00 1/2 0/0 0/0 .rodata          @4183 */
SECTION_RODATA static u8 const lit_4183[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80764DAC, &lit_4183);

/* 80763554-80763618 0012B4 00C4+00 1/1 0/0 0/0 .text            e_rb_base_0__FP10e_rb_class */
static void e_rb_base_0(e_rb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80764FA0-80764FC8 000028 0028+00 2/2 0/0 0/0 .bss             child */
static u8 child[40];

/* 80764FC8-80764FCC 000050 0004+00 2/2 0/0 0/0 .bss             target_info_count */
static u8 target_info_count[4];

/* 80763618-807636BC 001378 00A4+00 1/1 0/0 0/0 .text            s_s_sub__FPvPv */
static void s_s_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80764DB4-80764DB8 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4362 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4362 = 15.0f;
COMPILER_STRIP_GATE(0x80764DB4, &lit_4362);
#pragma pop

/* 80764DB8-80764DBC 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4363 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4363 = 500.0f;
COMPILER_STRIP_GATE(0x80764DB8, &lit_4363);
#pragma pop

/* 80764DBC-80764DC0 0000B0 0004+00 0/2 0/0 0/0 .rodata          @4364 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4364 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80764DBC, &lit_4364);
#pragma pop

/* 80764DC0-80764DC4 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4365 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4365 = 5.0f;
COMPILER_STRIP_GATE(0x80764DC0, &lit_4365);
#pragma pop

/* 80764DC4-80764DC8 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4366 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4366 = 150.0f;
COMPILER_STRIP_GATE(0x80764DC4, &lit_4366);
#pragma pop

/* 80764DC8-80764DCC 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4367 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4367 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80764DC8, &lit_4367);
#pragma pop

/* 807636BC-80763CF0 00141C 0634+00 1/1 0/0 0/0 .text            e_rb_base_1__FP10e_rb_class */
static void e_rb_base_1(e_rb_class* param_0) {
    // NONMATCHING
}

/* 80763CF0-80763D38 001A50 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 80763D38-80763DB0 001A98 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* 80763DB0-80763DF4 001B10 0044+00 1/1 0/0 0/0 .text            e_rb_base__FP10e_rb_class */
static void e_rb_base(e_rb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80764DCC-80764DD0 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4492 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4492 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80764DCC, &lit_4492);
#pragma pop

/* 80764DD0-80764DD4 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4493 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4493 = 30000.0f;
COMPILER_STRIP_GATE(0x80764DD0, &lit_4493);
#pragma pop

/* 80763DF4-80764104 001B54 0310+00 2/1 0/0 0/0 .text            daE_RB_Execute__FP10e_rb_class */
static void daE_RB_Execute(e_rb_class* param_0) {
    // NONMATCHING
}

/* 80764104-8076410C 001E64 0008+00 1/0 0/0 0/0 .text            daE_RB_IsDelete__FP10e_rb_class */
static bool daE_RB_IsDelete(e_rb_class* param_0) {
    return true;
}

/* 8076410C-80764174 001E6C 0068+00 1/0 0/0 0/0 .text            daE_RB_Delete__FP10e_rb_class */
static void daE_RB_Delete(e_rb_class* param_0) {
    // NONMATCHING
}

/* 80764174-8076424C 001ED4 00D8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8076424C-80764624 001FAC 03D8+00 1/0 0/0 0/0 .text            daE_RB_Create__FP10fopAc_ac_c */
static void daE_RB_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80764624-8076466C 002384 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 8076466C-807646B4 0023CC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 807646B4-80764710 002414 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80764710-80764780 002470 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80764780-807647F0 0024E0 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 807647F0-80764838 002550 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80764838-80764880 002598 0048+00 2/1 0/0 0/0 .text            __dt__12daE_RB_HIO_cFv */
daE_RB_HIO_c::~daE_RB_HIO_c() {
    // NONMATCHING
}

/* 80764880-807648BC 0025E0 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_rb_cpp */
void __sinit_d_a_e_rb_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80764880, __sinit_d_a_e_rb_cpp);
#pragma pop

/* 807648BC-807648C4 00261C 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_807648BC() {
    // NONMATCHING
}

/* 807648C4-807648CC 002624 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_807648C4() {
    // NONMATCHING
}

/* 807648CC-807648D4 00262C 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_807648CC() {
    // NONMATCHING
}

/* 807648D4-807648DC 002634 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_807648D4() {
    // NONMATCHING
}

/* 807648DC-807648E4 00263C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_807648DC() {
    // NONMATCHING
}

/* 807648E4-80764CF8 002644 0414+00 1/1 0/0 0/0 .text
 * setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz */
static void setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz* param_2,
                                   cXyz* param_3) {
    // NONMATCHING
}

/* 80764DD4-80764DD4 0000C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */