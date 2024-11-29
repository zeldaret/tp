/**
 * @file d_a_e_nz.cpp
 * 
*/

#include "d/actor/d_a_e_nz.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__12daE_NZ_HIO_cFv();
extern "C" static void anm_init__FP10e_nz_classifUcf();
extern "C" static void pl_check__FP10e_nz_classf();
extern "C" static void daE_NZ_Draw__FP10e_nz_class();
extern "C" static void e_nz_normal__FP10e_nz_class();
extern "C" static void e_nz_attack__FP10e_nz_class();
extern "C" static void e_nz_stick__FP10e_nz_class();
extern "C" static void damage_check__FP10e_nz_class();
extern "C" static void e_nz_damage__FP10e_nz_class();
extern "C" static void getPolyColor__FR13cBgS_PolyInfoiP8_GXColorP8_GXColorPUcPf();
extern "C" static void action__FP10e_nz_class();
extern "C" static void daE_NZ_Execute__FP10e_nz_class();
extern "C" static bool daE_NZ_IsDelete__FP10e_nz_class();
extern "C" static void daE_NZ_Delete__FP10e_nz_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_NZ_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_NZ_HIO_cFv();
extern "C" void __sinit_d_a_e_nz_cpp();
extern "C" static void func_8072BD0C();
extern "C" static void func_8072BD14();
extern "C" static void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_nz__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void create__21mDoExt_invisibleModelFP8J3DModelUc();
extern "C" void entryDL__21mDoExt_invisibleModelFP4cXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void cDmrNowMidnaTalk__Fv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_wayBgCheck__FPC10fopAc_ac_cff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void request__10dAttLook_cFP10fopAc_ac_cfffsi();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void ChkPolySafe__4cBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__18dBgS_ObjGndChk_SplFv();
extern "C" void __dt__18dBgS_ObjGndChk_SplFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void checkNowWolfEyeUp__9daPy_py_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_pol_eff_prim_get__FPC13cBgS_PolyInfoP8_GXColor();
extern "C" void dKy_pol_eff_env_get__FPC13cBgS_PolyInfoP8_GXColor();
extern "C" void dKy_pol_eff2_prim_get__FPC13cBgS_PolyInfoP8_GXColor();
extern "C" void dKy_pol_eff2_env_get__FPC13cBgS_PolyInfoP8_GXColor();
extern "C" void dKy_pol_eff_alpha_get__FPC13cBgS_PolyInfo();
extern "C" void dKy_pol_eff_ratio_get__FPC13cBgS_PolyInfo();
extern "C" void dKy_pol_eff2_alpha_get__FPC13cBgS_PolyInfo();
extern "C" void dKy_pol_eff2_ratio_get__FPC13cBgS_PolyInfo();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxTrans__FfffUc();
extern "C" void MtxScale__FfffUc();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_19();
extern "C" void _savegpr_20();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_20();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 8072C180-8072C184 000000 0004+00 8/8 0/0 0/0 .rodata          @3789 */
SECTION_RODATA static f32 const lit_3789 = 100.0f;
COMPILER_STRIP_GATE(0x8072C180, &lit_3789);

/* 8072C184-8072C188 000004 0004+00 2/9 0/0 0/0 .rodata          @3790 */
SECTION_RODATA static u8 const lit_3790[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8072C184, &lit_3790);

/* 8072C188-8072C190 000008 0004+04 2/9 0/0 0/0 .rodata          @3791 */
SECTION_RODATA static f32 const lit_3791[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8072C188, &lit_3791);

/* 8072C190-8072C198 000010 0008+00 0/2 0/0 0/0 .rodata          @3792 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3792[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8072C190, &lit_3792);
#pragma pop

/* 8072C198-8072C1A0 000018 0008+00 0/2 0/0 0/0 .rodata          @3793 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3793[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8072C198, &lit_3793);
#pragma pop

/* 8072C1A0-8072C1A8 000020 0008+00 0/2 0/0 0/0 .rodata          @3794 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3794[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8072C1A0, &lit_3794);
#pragma pop

/* 8072C1A8-8072C1AC 000028 0004+00 0/1 0/0 0/0 .rodata          @3795 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3795 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x8072C1A8, &lit_3795);
#pragma pop

/* 8072C1AC-8072C1B0 00002C 0004+00 0/1 0/0 0/0 .rodata          @3810 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3810 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x8072C1AC, &lit_3810);
#pragma pop

/* 8072C1B0-8072C1B4 000030 0004+00 0/3 0/0 0/0 .rodata          @3811 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3811 = 25.0f;
COMPILER_STRIP_GATE(0x8072C1B0, &lit_3811);
#pragma pop

/* 8072C1B4-8072C1B8 000034 0004+00 0/1 0/0 0/0 .rodata          @3812 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3812 = 45.0f;
COMPILER_STRIP_GATE(0x8072C1B4, &lit_3812);
#pragma pop

/* 8072C1B8-8072C1BC 000038 0004+00 0/2 0/0 0/0 .rodata          @3813 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3813 = 60.0f;
COMPILER_STRIP_GATE(0x8072C1B8, &lit_3813);
#pragma pop

/* 8072C1BC-8072C1C0 00003C 0004+00 1/4 0/0 0/0 .rodata          @3814 */
SECTION_RODATA static f32 const lit_3814 = 30.0f;
COMPILER_STRIP_GATE(0x8072C1BC, &lit_3814);

/* 8072C24C-8072C258 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8072C258-8072C26C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 8072C26C-8072C274 000020 0008+00 0/1 0/0 0/0 .data            e_prim$3668 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim[8] = {
    0xFF, 0x78, 0x00, 0x00, 0xFF, 0x64, 0x78, 0x00,
};
#pragma pop

/* 8072C274-8072C27C 000028 0008+00 0/1 0/0 0/0 .data            e_env$3669 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env[8] = {
    0x5A, 0x2D, 0x2D, 0x00, 0x3C, 0x1E, 0x1E, 0x00,
};
#pragma pop

/* 8072C27C-8072C284 000030 0006+02 0/1 0/0 0/0 .data            eff_id$3677 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 eff_id_3677[6 + 2 /* padding */] = {
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

/* 8072C284-8072C28C 000038 0008+00 5/5 0/0 0/0 .data            stick_bit */
SECTION_DATA static u8 stick_bit[8] = {
    0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80,
};

/* 8072C28C-8072C2DC 000040 0050+00 1/1 0/0 0/0 .data            stick_d */
SECTION_DATA static u8 stick_d[80] = {
    0x03, 0x00, 0x05, 0xDC, 0x3A, 0x98, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x7F, 0xFF,
    0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1B, 0x58, 0x8A, 0xD0, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00,
    0x03, 0xE8, 0x17, 0x70, 0x05, 0xDC, 0x00, 0x19, 0x03, 0x00, 0x9E, 0x58, 0xD8, 0xF0, 0x55, 0xF0,
    0x00, 0x14, 0x02, 0x00, 0x1F, 0x40, 0xAA, 0x10, 0xF4, 0x48, 0x00, 0x0F, 0x01, 0x00, 0x75, 0x30,
    0xEF, 0xFC, 0x05, 0xDC, 0x00, 0x19, 0x02, 0x00, 0x15, 0x7C, 0xB1, 0xE0, 0x5D, 0xC0, 0x00, 0x0F,
};

/* 8072C2DC-8072C2E4 000090 0008+00 1/1 0/0 0/0 .data            eff_id$4227 */
SECTION_DATA static u8 eff_id_4227[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};

/* 8072C2E4-8072C324 000098 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4510 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 8072C324-8072C344 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_NZ_Method */
static actor_method_class l_daE_NZ_Method = {
    (process_method_func)daE_NZ_Create__FP10fopAc_ac_c,
    (process_method_func)daE_NZ_Delete__FP10e_nz_class,
    (process_method_func)daE_NZ_Execute__FP10e_nz_class,
    (process_method_func)daE_NZ_IsDelete__FP10e_nz_class,
    (process_method_func)daE_NZ_Draw__FP10e_nz_class,
};

/* 8072C344-8072C374 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_NZ */
extern actor_process_profile_definition g_profile_E_NZ = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_E_NZ,             // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(e_nz_class),    // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  179,                   // mPriority
  &l_daE_NZ_Method,      // sub_method
  0x10044120,            // mStatus
  fopAc_ENEMY_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

/* 8072C374-8072C380 000128 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8072C380-8072C38C 000134 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8072C38C-8072C398 000140 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8072C398-8072C3A4 00014C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8072C3A4-8072C3B0 000158 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8072C3B0-8072C3D4 000164 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8072BD14,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8072BD0C,
};

/* 8072C3D4-8072C3E0 000188 000C+00 2/2 0/0 0/0 .data            __vt__12daE_NZ_HIO_c */
SECTION_DATA extern void* __vt__12daE_NZ_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_NZ_HIO_cFv,
};

/* 807299EC-80729A3C 0000EC 0050+00 1/1 0/0 0/0 .text            __ct__12daE_NZ_HIO_cFv */
daE_NZ_HIO_c::daE_NZ_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8072C1C0-8072C1C4 000040 0004+00 1/1 0/0 0/0 .rodata          @3828 */
SECTION_RODATA static f32 const lit_3828 = -1.0f;
COMPILER_STRIP_GATE(0x8072C1C0, &lit_3828);

/* 8072C240-8072C240 0000C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8072C240 = "E_NZ";
#pragma pop

/* 80729A3C-80729AE8 00013C 00AC+00 4/4 0/0 0/0 .text            anm_init__FP10e_nz_classifUcf */
static void anm_init(e_nz_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    // NONMATCHING
}

/* 80729AE8-80729B24 0001E8 003C+00 1/1 0/0 0/0 .text            pl_check__FP10e_nz_classf */
static void pl_check(e_nz_class* param_0, f32 param_1) {
    // NONMATCHING
}

/* 80729B24-80729C24 000224 0100+00 1/0 0/0 0/0 .text            daE_NZ_Draw__FP10e_nz_class */
static void daE_NZ_Draw(e_nz_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8072C1C4-8072C1C8 000044 0004+00 0/2 0/0 0/0 .rodata          @3935 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3935 = 0.5f;
COMPILER_STRIP_GATE(0x8072C1C4, &lit_3935);
#pragma pop

/* 8072C1C8-8072C1CC 000048 0004+00 0/3 0/0 0/0 .rodata          @3936 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3936 = 3.0f;
COMPILER_STRIP_GATE(0x8072C1C8, &lit_3936);
#pragma pop

/* 8072C1CC-8072C1D0 00004C 0004+00 1/2 0/0 0/0 .rodata          @3937 */
SECTION_RODATA static f32 const lit_3937 = 65535.0f;
COMPILER_STRIP_GATE(0x8072C1CC, &lit_3937);

/* 8072C1D0-8072C1D4 000050 0004+00 0/1 0/0 0/0 .rodata          @3938 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3938 = 7.0f;
COMPILER_STRIP_GATE(0x8072C1D0, &lit_3938);
#pragma pop

/* 8072C1D4-8072C1D8 000054 0004+00 0/1 0/0 0/0 .rodata          @3939 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3939 = 3000.0f;
COMPILER_STRIP_GATE(0x8072C1D4, &lit_3939);
#pragma pop

/* 8072C1D8-8072C1DC 000058 0004+00 0/1 0/0 0/0 .rodata          @3940 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3940 = 20.0f;
COMPILER_STRIP_GATE(0x8072C1D8, &lit_3940);
#pragma pop

/* 8072C1DC-8072C1E0 00005C 0004+00 0/1 0/0 0/0 .rodata          @3941 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3941 = 9.0f;
COMPILER_STRIP_GATE(0x8072C1DC, &lit_3941);
#pragma pop

/* 8072C1E0-8072C1E4 000060 0004+00 0/2 0/0 0/0 .rodata          @3942 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3942 = 10.0f;
COMPILER_STRIP_GATE(0x8072C1E0, &lit_3942);
#pragma pop

/* 8072C1E4-8072C1E8 000064 0004+00 0/2 0/0 0/0 .rodata          @3943 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3943 = 200.0f;
COMPILER_STRIP_GATE(0x8072C1E4, &lit_3943);
#pragma pop

/* 8072C1E8-8072C1EC 000068 0004+00 0/2 0/0 0/0 .rodata          @3944 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3944 = 50.0f;
COMPILER_STRIP_GATE(0x8072C1E8, &lit_3944);
#pragma pop

/* 8072C1EC-8072C1F0 00006C 0004+00 0/1 0/0 0/0 .rodata          @3945 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3945 = 500.0f;
COMPILER_STRIP_GATE(0x8072C1EC, &lit_3945);
#pragma pop

/* 8072C1F0-8072C1F4 000070 0004+00 0/1 0/0 0/0 .rodata          @3946 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3946 = 700.0f;
COMPILER_STRIP_GATE(0x8072C1F0, &lit_3946);
#pragma pop

/* 8072C1F4-8072C1F8 000074 0004+00 0/2 0/0 0/0 .rodata          @3947 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3947 = 400.0f;
COMPILER_STRIP_GATE(0x8072C1F4, &lit_3947);
#pragma pop

/* 8072C1F8-8072C1FC 000078 0004+00 0/1 0/0 0/0 .rodata          @3948 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3948 = 0.25f;
COMPILER_STRIP_GATE(0x8072C1F8, &lit_3948);
#pragma pop

/* 8072C3E8-8072C3EC 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 8072C3EC-8072C3F0 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 8072C3F0-8072C3F4 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 8072C3F4-8072C3F8 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 8072C3F8-8072C3FC 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 8072C3FC-8072C400 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 8072C400-8072C404 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 8072C404-8072C408 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 8072C408-8072C40C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 8072C40C-8072C410 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 8072C410-8072C414 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 8072C414-8072C418 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 8072C418-8072C41C 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 8072C41C-8072C420 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 8072C420-8072C424 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 8072C424-8072C428 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 8072C424 0001+00 data_8072C424 @1009 */
/* 8072C425 0003+00 data_8072C425 None */
static u8 struct_8072C424[4];

/* 8072C428-8072C434 000048 000C+00 1/1 0/0 0/0 .bss             @3805 */
static u8 lit_3805[12];

/* 8072C434-8072C454 000054 0020+00 5/6 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[32];

/* 8072C454-8072C458 000074 0004+00 5/5 0/0 0/0 .bss             None */
static u8 data_8072C454[4];

/* 80729C24-8072A044 000324 0420+00 1/1 0/0 0/0 .text            e_nz_normal__FP10e_nz_class */
static void e_nz_normal(e_nz_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8072C1FC-8072C200 00007C 0004+00 0/2 0/0 0/0 .rodata          @4088 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4088 = 5.0f;
COMPILER_STRIP_GATE(0x8072C1FC, &lit_4088);
#pragma pop

/* 8072C200-8072C204 000080 0004+00 0/2 0/0 0/0 .rodata          @4089 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4089 = 2.0f;
COMPILER_STRIP_GATE(0x8072C200, &lit_4089);
#pragma pop

/* 8072A044-8072A680 000744 063C+00 1/1 0/0 0/0 .text            e_nz_attack__FP10e_nz_class */
static void e_nz_attack(e_nz_class* param_0) {
    // NONMATCHING
}

/* 8072A680-8072A7C4 000D80 0144+00 1/1 0/0 0/0 .text            e_nz_stick__FP10e_nz_class */
static void e_nz_stick(e_nz_class* param_0) {
    // NONMATCHING
}

/* 8072A7C4-8072A8CC 000EC4 0108+00 1/1 0/0 0/0 .text            damage_check__FP10e_nz_class */
static void damage_check(e_nz_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8072C204-8072C208 000084 0004+00 0/2 0/0 0/0 .rodata          @4180 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4180 = 40.0f;
COMPILER_STRIP_GATE(0x8072C204, &lit_4180);
#pragma pop

/* 8072C208-8072C20C 000088 0004+00 0/1 0/0 0/0 .rodata          @4181 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4181 = -30.0f;
COMPILER_STRIP_GATE(0x8072C208, &lit_4181);
#pragma pop

/* 8072C20C-8072C210 00008C 0004+00 0/1 0/0 0/0 .rodata          @4182 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4182 = 15.0f;
COMPILER_STRIP_GATE(0x8072C20C, &lit_4182);
#pragma pop

/* 8072A8CC-8072AA90 000FCC 01C4+00 1/1 0/0 0/0 .text            e_nz_damage__FP10e_nz_class */
static void e_nz_damage(e_nz_class* param_0) {
    // NONMATCHING
}

/* 8072AA90-8072AB68 001190 00D8+00 1/1 0/0 0/0 .text
 * getPolyColor__FR13cBgS_PolyInfoiP8_GXColorP8_GXColorPUcPf    */
static void getPolyColor(cBgS_PolyInfo& param_0, int param_1, _GXColor* param_2,
                             _GXColor* param_3, u8* param_4, f32* param_5) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8072C210-8072C214 000090 0004+00 0/1 0/0 0/0 .rodata          @4318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4318 = -8.0f;
COMPILER_STRIP_GATE(0x8072C210, &lit_4318);
#pragma pop

/* 8072C214-8072C218 000094 0004+00 0/1 0/0 0/0 .rodata          @4319 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4319 = -120.0f;
COMPILER_STRIP_GATE(0x8072C214, &lit_4319);
#pragma pop

/* 8072C218-8072C21C 000098 0004+00 0/1 0/0 0/0 .rodata          @4320 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4320 = 5000.0f;
COMPILER_STRIP_GATE(0x8072C218, &lit_4320);
#pragma pop

/* 8072C21C-8072C220 00009C 0004+00 0/1 0/0 0/0 .rodata          @4321 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4321 = 7.0f / 20.0f;
COMPILER_STRIP_GATE(0x8072C21C, &lit_4321);
#pragma pop

/* 8072C458-8072C468 000078 000C+04 0/1 0/0 0/0 .bss             @4220 */
#pragma push
#pragma force_active on
static u8 lit_4220[12 + 4 /* padding */];
#pragma pop

/* 8072C468-8072C474 000088 000C+00 0/1 0/0 0/0 .bss             sc$4219 */
#pragma push
#pragma force_active on
static u8 sc[12];
#pragma pop

/* 8072AB68-8072B09C 001268 0534+00 1/1 0/0 0/0 .text            action__FP10e_nz_class */
static void action(e_nz_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8072C220-8072C224 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4444 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4444 = 255.0f;
COMPILER_STRIP_GATE(0x8072C220, &lit_4444);
#pragma pop

/* 8072C224-8072C228 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4445 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4445 = 8.0f;
COMPILER_STRIP_GATE(0x8072C224, &lit_4445);
#pragma pop

/* 8072C228-8072C22C 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4446 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4446 = 10000.0f;
COMPILER_STRIP_GATE(0x8072C228, &lit_4446);
#pragma pop

/* 8072C22C-8072C230 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4447 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4447 = 300.0f;
COMPILER_STRIP_GATE(0x8072C22C, &lit_4447);
#pragma pop

/* 8072C230-8072C238 0000B0 0004+04 0/1 0/0 0/0 .rodata          @4448 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4448[1 + 1 /* padding */] = {
    -300.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8072C230, &lit_4448);
#pragma pop

/* 8072C238-8072C240 0000B8 0008+00 0/1 0/0 0/0 .rodata          @4450 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4450[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8072C238, &lit_4450);
#pragma pop

/* 8072B09C-8072B5D4 00179C 0538+00 2/1 0/0 0/0 .text            daE_NZ_Execute__FP10e_nz_class */
static void daE_NZ_Execute(e_nz_class* param_0) {
    // NONMATCHING
}

/* 8072B5D4-8072B5DC 001CD4 0008+00 1/0 0/0 0/0 .text            daE_NZ_IsDelete__FP10e_nz_class */
static bool daE_NZ_IsDelete(e_nz_class* param_0) {
    return true;
}

/* 8072B5DC-8072B680 001CDC 00A4+00 1/0 0/0 0/0 .text            daE_NZ_Delete__FP10e_nz_class */
static void daE_NZ_Delete(e_nz_class* param_0) {
    // NONMATCHING
}

/* 8072B680-8072B7C4 001D80 0144+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8072C240-8072C240 0000C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8072C245 = "E_nz";
#pragma pop

/* 8072B7C4-8072BA74 001EC4 02B0+00 1/0 0/0 0/0 .text            daE_NZ_Create__FP10fopAc_ac_c */
static void daE_NZ_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8072BA74-8072BABC 002174 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 8072BABC-8072BB04 0021BC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8072BB04-8072BB60 002204 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 8072BB60-8072BBD0 002260 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8072BBD0-8072BC40 0022D0 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 8072BC40-8072BC88 002340 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 8072BC88-8072BCD0 002388 0048+00 2/1 0/0 0/0 .text            __dt__12daE_NZ_HIO_cFv */
daE_NZ_HIO_c::~daE_NZ_HIO_c() {
    // NONMATCHING
}

/* 8072BCD0-8072BD0C 0023D0 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_nz_cpp */
void __sinit_d_a_e_nz_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8072BCD0, __sinit_d_a_e_nz_cpp);
#pragma pop

/* 8072BD0C-8072BD14 00240C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8072BD0C() {
    // NONMATCHING
}

/* 8072BD14-8072BD1C 002414 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8072BD14() {
    // NONMATCHING
}

/* 8072BD1C-8072C130 00241C 0414+00 1/1 0/0 0/0 .text
 * setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz */
static void setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz* param_2,
                                   cXyz* param_3) {
    // NONMATCHING
}

/* 8072C130-8072C16C 002830 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8072C474-8072C478 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8072C474[4];
#pragma pop

/* 8072C478-8072C47C 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8072C478[4];
#pragma pop

/* 8072C47C-8072C480 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8072C47C[4];
#pragma pop

/* 8072C480-8072C484 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8072C480[4];
#pragma pop

/* 8072C484-8072C488 0000A4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8072C484[4];
#pragma pop

/* 8072C488-8072C48C 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8072C488[4];
#pragma pop

/* 8072C48C-8072C490 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8072C48C[4];
#pragma pop

/* 8072C490-8072C494 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8072C490[4];
#pragma pop

/* 8072C494-8072C498 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8072C494[4];
#pragma pop

/* 8072C498-8072C49C 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8072C498[4];
#pragma pop

/* 8072C49C-8072C4A0 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8072C49C[4];
#pragma pop

/* 8072C4A0-8072C4A4 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8072C4A0[4];
#pragma pop

/* 8072C4A4-8072C4A8 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8072C4A4[4];
#pragma pop

/* 8072C4A8-8072C4AC 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8072C4A8[4];
#pragma pop

/* 8072C4AC-8072C4B0 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8072C4AC[4];
#pragma pop

/* 8072C4B0-8072C4B4 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8072C4B0[4];
#pragma pop

/* 8072C4B4-8072C4B8 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8072C4B4[4];
#pragma pop

/* 8072C4B8-8072C4BC 0000D8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8072C4B8[4];
#pragma pop

/* 8072C4BC-8072C4C0 0000DC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8072C4BC[4];
#pragma pop

/* 8072C4C0-8072C4C4 0000E0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8072C4C0[4];
#pragma pop

/* 8072C4C4-8072C4C8 0000E4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8072C4C4[4];
#pragma pop

/* 8072C4C8-8072C4CC 0000E8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8072C4C8[4];
#pragma pop

/* 8072C4CC-8072C4D0 0000EC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8072C4CC[4];
#pragma pop

/* 8072C4D0-8072C4D4 0000F0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8072C4D0[4];
#pragma pop

/* 8072C4D4-8072C4D8 0000F4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8072C4D4[4];
#pragma pop

/* 8072C240-8072C240 0000C0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
