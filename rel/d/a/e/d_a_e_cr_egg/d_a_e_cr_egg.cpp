/**
 * @file d_a_e_cr_egg.cpp
 * 
*/

#include "rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg.h"
#include "d/cc/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void daE_CR_EGG_Draw__FP14e_cr_egg_class();
extern "C" static void e_cr_egg_move__FP14e_cr_egg_class();
extern "C" static void action__FP14e_cr_egg_class();
extern "C" static void daE_CR_EGG_Execute__FP14e_cr_egg_class();
extern "C" static bool daE_CR_EGG_IsDelete__FP14e_cr_egg_class();
extern "C" static void daE_CR_EGG_Delete__FP14e_cr_egg_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_CR_EGG_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" static void func_8069A8B4();
extern "C" static void func_8069A8BC();
extern "C" extern char const* const d_a_e_cr_egg__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void stopAnime__10Z2CreatureFv();
extern "C" void __dl__FPv();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 8069A8CC-8069A8D0 000000 0004+00 4/4 0/0 0/0 .rodata          @3657 */
SECTION_RODATA static f32 const lit_3657 = 30.0f;
COMPILER_STRIP_GATE(0x8069A8CC, &lit_3657);

/* 8069A8D0-8069A8D4 000004 0004+00 1/3 0/0 0/0 .rodata          @3658 */
SECTION_RODATA static f32 const lit_3658 = 1.0f;
COMPILER_STRIP_GATE(0x8069A8D0, &lit_3658);

/* 80699F38-80699FC8 000078 0090+00 1/0 0/0 0/0 .text            daE_CR_EGG_Draw__FP14e_cr_egg_class
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_CR_EGG_Draw(e_cr_egg_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/daE_CR_EGG_Draw__FP14e_cr_egg_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 8069A8D4-8069A8E0 000008 000C+00 0/1 0/0 0/0 .rodata          @3676 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3676[12] = {
    0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x0A,
};
COMPILER_STRIP_GATE(0x8069A8D4, &lit_3676);
#pragma pop

/* 8069A8E0-8069A8E4 000014 0004+00 0/1 0/0 0/0 .rodata          @3702 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3702 = 5.0f;
COMPILER_STRIP_GATE(0x8069A8E0, &lit_3702);
#pragma pop

/* 8069A8E4-8069A8E8 000018 0004+00 0/2 0/0 0/0 .rodata          @3703 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3703 = 3.0f;
COMPILER_STRIP_GATE(0x8069A8E4, &lit_3703);
#pragma pop

/* 8069A8E8-8069A8EC 00001C 0004+00 0/1 0/0 0/0 .rodata          @3704 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3704 = 10000.0f;
COMPILER_STRIP_GATE(0x8069A8E8, &lit_3704);
#pragma pop

/* 8069A8EC-8069A8F0 000020 0004+00 0/1 0/0 0/0 .rodata          @3705 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3705 = -0.5f;
COMPILER_STRIP_GATE(0x8069A8EC, &lit_3705);
#pragma pop

/* 8069A8F0-8069A8F4 000024 0004+00 0/1 0/0 0/0 .rodata          @3706 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3706 = 8000.0f;
COMPILER_STRIP_GATE(0x8069A8F0, &lit_3706);
#pragma pop

/* 8069A8F4-8069A8F8 000028 0004+00 0/1 0/0 0/0 .rodata          @3707 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3707 = -1.0f;
COMPILER_STRIP_GATE(0x8069A8F4, &lit_3707);
#pragma pop

/* 8069A8F8-8069A8FC 00002C 0004+00 0/1 0/0 0/0 .rodata          @3708 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3708 = 0.5f;
COMPILER_STRIP_GATE(0x8069A8F8, &lit_3708);
#pragma pop

/* 8069A914-8069A920 000000 000C+00 1/1 0/0 0/0 .data            spy$3662 */
SECTION_DATA static u8 spy[12] = {
    0x41, 0x88, 0x00, 0x00, 0x41, 0x00, 0x00, 0x00, 0x40, 0xA0, 0x00, 0x00,
};

/* 80699FC8-8069A258 000108 0290+00 1/1 0/0 0/0 .text            e_cr_egg_move__FP14e_cr_egg_class
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_cr_egg_move(e_cr_egg_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/e_cr_egg_move__FP14e_cr_egg_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 8069A8FC-8069A900 000030 0004+00 0/1 0/0 0/0 .rodata          @3728 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3728 = 700.0f;
COMPILER_STRIP_GATE(0x8069A8FC, &lit_3728);
#pragma pop

/* 8069A900-8069A904 000034 0004+00 0/2 0/0 0/0 .rodata          @3729 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3729[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8069A900, &lit_3729);
#pragma pop

/* 8069A904-8069A908 000038 0004+00 1/3 0/0 0/0 .rodata          @3730 */
SECTION_RODATA static f32 const lit_3730 = 20.0f;
COMPILER_STRIP_GATE(0x8069A904, &lit_3730);

/* 8069A258-8069A378 000398 0120+00 1/1 0/0 0/0 .text            action__FP14e_cr_egg_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void action(e_cr_egg_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/action__FP14e_cr_egg_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 8069A908-8069A90C 00003C 0004+00 0/1 0/0 0/0 .rodata          @3770 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3770 = -20.0f;
COMPILER_STRIP_GATE(0x8069A908, &lit_3770);
#pragma pop

/* 8069A378-8069A4C4 0004B8 014C+00 2/1 0/0 0/0 .text daE_CR_EGG_Execute__FP14e_cr_egg_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_CR_EGG_Execute(e_cr_egg_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/daE_CR_EGG_Execute__FP14e_cr_egg_class.s"
}
#pragma pop

/* 8069A4C4-8069A4CC 000604 0008+00 1/0 0/0 0/0 .text daE_CR_EGG_IsDelete__FP14e_cr_egg_class */
static bool daE_CR_EGG_IsDelete(e_cr_egg_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 8069A90C-8069A90C 000040 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8069A90C = "E_CR";
#pragma pop

/* 8069A4CC-8069A510 00060C 0044+00 1/0 0/0 0/0 .text daE_CR_EGG_Delete__FP14e_cr_egg_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_CR_EGG_Delete(e_cr_egg_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/daE_CR_EGG_Delete__FP14e_cr_egg_class.s"
}
#pragma pop

/* 8069A510-8069A57C 000650 006C+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void useHeapInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/useHeapInit__FP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 8069A920-8069A960 00000C 0040+00 1/1 0/0 0/0 .data            cc_sph_src$3802 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x1, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 20.0f} // mSph
    } // mSphAttr
};

/* 8069A960-8069A980 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_CR_EGG_Method */
static actor_method_class l_daE_CR_EGG_Method = {
    (process_method_func)daE_CR_EGG_Create__FP10fopAc_ac_c,
    (process_method_func)daE_CR_EGG_Delete__FP14e_cr_egg_class,
    (process_method_func)daE_CR_EGG_Execute__FP14e_cr_egg_class,
    (process_method_func)daE_CR_EGG_IsDelete__FP14e_cr_egg_class,
    (process_method_func)daE_CR_EGG_Draw__FP14e_cr_egg_class,
};

/* 8069A980-8069A9B0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_CR_EGG */
extern actor_process_profile_definition g_profile_E_CR_EGG = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_CR_EGG,          // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(e_cr_egg_class), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  114,                    // mPriority
  &l_daE_CR_EGG_Method,   // sub_method
  0x00040100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_0_e,      // cullType
};

/* 8069A9B0-8069A9BC 00009C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8069A9BC-8069A9C8 0000A8 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8069A9C8-8069A9EC 0000B4 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8069A8BC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8069A8B4,
};

/* 8069A57C-8069A7B4 0006BC 0238+00 1/0 0/0 0/0 .text            daE_CR_EGG_Create__FP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_CR_EGG_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/daE_CR_EGG_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 8069A7B4-8069A7FC 0008F4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 8069A7FC-8069A844 00093C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 8069A844-8069A8B4 000984 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 8069A8B4-8069A8BC 0009F4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_8069A8B4() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/func_8069A8B4.s"
}
#pragma pop

/* 8069A8BC-8069A8C4 0009FC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_8069A8BC() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_cr_egg/d_a_e_cr_egg/func_8069A8BC.s"
}
#pragma pop

/* 8069A90C-8069A90C 000040 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
