/**
 * @file d_a_obj_kage.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_kage.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void daObj_Kage_Draw__FP14obj_kage_class();
extern "C" static void daObj_Kage_Execute__FP14obj_kage_class();
extern "C" static bool daObj_Kage_IsDelete__FP14obj_kage_class();
extern "C" static void daObj_Kage_Delete__FP14obj_kage_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daObj_Kage_Create__FP10fopAc_ac_c();
extern "C" extern char const* const d_a_obj_kage__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cM_rndF__Ff();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];

//
// Declarations:
//

/* 80C314D8-80C3153C 000078 0064+00 1/0 0/0 0/0 .text            daObj_Kage_Draw__FP14obj_kage_class
 */
static void daObj_Kage_Draw(obj_kage_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C3195C-80C31960 000000 0004+00 2/2 0/0 0/0 .rodata          @3854 */
SECTION_RODATA static u8 const lit_3854[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C3195C, &lit_3854);

/* 80C31960-80C31964 000004 0004+00 0/1 0/0 0/0 .rodata          @3855 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3855 = 0.5f;
COMPILER_STRIP_GATE(0x80C31960, &lit_3855);
#pragma pop

/* 80C31964-80C31968 000008 0004+00 0/1 0/0 0/0 .rodata          @3856 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3856 = 40.0f;
COMPILER_STRIP_GATE(0x80C31964, &lit_3856);
#pragma pop

/* 80C31968-80C3196C 00000C 0004+00 0/1 0/0 0/0 .rodata          @3857 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3857 = 120.0f;
COMPILER_STRIP_GATE(0x80C31968, &lit_3857);
#pragma pop

/* 80C3196C-80C31970 000010 0004+00 0/1 0/0 0/0 .rodata          @3858 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3858 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C3196C, &lit_3858);
#pragma pop

/* 80C31970-80C31974 000014 0004+00 0/1 0/0 0/0 .rodata          @3859 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3859 = 2.0f;
COMPILER_STRIP_GATE(0x80C31970, &lit_3859);
#pragma pop

/* 80C31974-80C31978 000018 0004+00 0/1 0/0 0/0 .rodata          @3860 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3860 = -120.0f;
COMPILER_STRIP_GATE(0x80C31974, &lit_3860);
#pragma pop

/* 80C31978-80C3197C 00001C 0004+00 0/2 0/0 0/0 .rodata          @3861 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3861 = 200.0f;
COMPILER_STRIP_GATE(0x80C31978, &lit_3861);
#pragma pop

/* 80C3197C-80C31980 000020 0004+00 0/1 0/0 0/0 .rodata          @3862 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3862 = 500.0f;
COMPILER_STRIP_GATE(0x80C3197C, &lit_3862);
#pragma pop

/* 80C31980-80C31984 000024 0004+00 0/1 0/0 0/0 .rodata          @3863 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3863 = 1.0f;
COMPILER_STRIP_GATE(0x80C31980, &lit_3863);
#pragma pop

/* 80C31984-80C31988 000028 0004+00 0/1 0/0 0/0 .rodata          @3864 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3864 = 10.0f;
COMPILER_STRIP_GATE(0x80C31984, &lit_3864);
#pragma pop

/* 80C3153C-80C31764 0000DC 0228+00 2/1 0/0 0/0 .text daObj_Kage_Execute__FP14obj_kage_class */
static void daObj_Kage_Execute(obj_kage_class* param_0) {
    // NONMATCHING
}

/* 80C31764-80C3176C 000304 0008+00 1/0 0/0 0/0 .text daObj_Kage_IsDelete__FP14obj_kage_class */
static bool daObj_Kage_IsDelete(obj_kage_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80C31990-80C31990 000034 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C31990 = "Obj_kage";
#pragma pop

/* 80C3176C-80C3179C 00030C 0030+00 1/0 0/0 0/0 .text daObj_Kage_Delete__FP14obj_kage_class */
static void daObj_Kage_Delete(obj_kage_class* param_0) {
    // NONMATCHING
}

/* 80C3179C-80C31808 00033C 006C+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C31988-80C3198C 00002C 0004+00 0/1 0/0 0/0 .rodata          @3926 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3926 = 65536.0f;
COMPILER_STRIP_GATE(0x80C31988, &lit_3926);
#pragma pop

/* 80C3198C-80C31990 000030 0004+00 0/1 0/0 0/0 .rodata          @3927 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3927 = -200.0f;
COMPILER_STRIP_GATE(0x80C3198C, &lit_3927);
#pragma pop

/* 80C31808-80C31954 0003A8 014C+00 1/0 0/0 0/0 .text            daObj_Kage_Create__FP10fopAc_ac_c
 */
static void daObj_Kage_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C3199C-80C319BC -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Kage_Method */
static actor_method_class l_daObj_Kage_Method = {
    (process_method_func)daObj_Kage_Create__FP10fopAc_ac_c,
    (process_method_func)daObj_Kage_Delete__FP14obj_kage_class,
    (process_method_func)daObj_Kage_Execute__FP14obj_kage_class,
    (process_method_func)daObj_Kage_IsDelete__FP14obj_kage_class,
    (process_method_func)daObj_Kage_Draw__FP14obj_kage_class,
};

/* 80C319BC-80C319EC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_KAGE */
extern actor_process_profile_definition g_profile_OBJ_KAGE = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_OBJ_KAGE,          // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(obj_kage_class), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  62,                     // mPriority
  &l_daObj_Kage_Method,   // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C31990-80C31990 000034 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
