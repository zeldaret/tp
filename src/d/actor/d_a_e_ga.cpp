/**
 * @file d_a_e_ga.cpp
 * 
*/

#include "d/actor/d_a_e_ga.h"
#include "dol2asm.h"




//
// Forward References:
//

extern "C" void __ct__12daE_Ga_HIO_cFv();
extern "C" static void daE_Ga_Draw__FP10e_ga_class();
extern "C" static void ga_fly__FP10e_ga_classP4ga_s();
extern "C" static void bt_fly__FP10e_ga_classP4ga_s();
extern "C" static void ga_control__FP10e_ga_class();
extern "C" static void daE_Ga_Execute__FP10e_ga_class();
extern "C" static bool daE_Ga_IsDelete__FP10e_ga_class();
extern "C" static void daE_Ga_Delete__FP10e_ga_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_Ga_Create__FP10fopAc_ac_c();
extern "C" void __dt__4ga_sFv();
extern "C" void __ct__4ga_sFv();
extern "C" void __dt__12daE_Ga_HIO_cFv();
extern "C" void __sinit_d_a_e_ga_cpp();
extern "C" extern char const* const d_a_e_ga__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc();
extern "C" void removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai();
extern "C" void entrySimpleModel__14dComIfG_play_cFP8J3DModeli();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 804FBB90-804FBB94 000000 0004+00 5/5 0/0 0/0 .rodata          @3646 */
SECTION_RODATA static f32 const lit_3646 = 1.0f;
COMPILER_STRIP_GATE(0x804FBB90, &lit_3646);

/* 804FBBE0-804FBC00 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_Ga_Method */
static actor_method_class l_daE_Ga_Method = {
    (process_method_func)daE_Ga_Create__FP10fopAc_ac_c,
    (process_method_func)daE_Ga_Delete__FP10e_ga_class,
    (process_method_func)daE_Ga_Execute__FP10e_ga_class,
    (process_method_func)daE_Ga_IsDelete__FP10e_ga_class,
    (process_method_func)daE_Ga_Draw__FP10e_ga_class,
};

/* 804FBC00-804FBC30 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_GA */
extern actor_process_profile_definition g_profile_E_GA = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_GA,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_ga_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  138,                    // mPriority
  &l_daE_Ga_Method,       // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 804FBC30-804FBC3C 000050 000C+00 2/2 0/0 0/0 .data            __vt__12daE_Ga_HIO_c */
SECTION_DATA extern void* __vt__12daE_Ga_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_Ga_HIO_cFv,
};

/* 804FB0EC-804FB110 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__12daE_Ga_HIO_cFv */
daE_Ga_HIO_c::daE_Ga_HIO_c() {
    // NONMATCHING
}

/* 804FB110-804FB1B0 000110 00A0+00 1/0 0/0 0/0 .text            daE_Ga_Draw__FP10e_ga_class */
static void daE_Ga_Draw(e_ga_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FBB94-804FBB98 000004 0004+00 0/2 0/0 0/0 .rodata          @3713 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3713 = 100.0f;
COMPILER_STRIP_GATE(0x804FBB94, &lit_3713);
#pragma pop

/* 804FBB98-804FBB9C 000008 0004+00 0/1 0/0 0/0 .rodata          @3714 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3714 = 10.0f;
COMPILER_STRIP_GATE(0x804FBB98, &lit_3714);
#pragma pop

/* 804FBB9C-804FBBA0 00000C 0004+00 0/2 0/0 0/0 .rodata          @3715 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3715 = 200.0f;
COMPILER_STRIP_GATE(0x804FBB9C, &lit_3715);
#pragma pop

/* 804FBBA0-804FBBA8 000010 0004+04 0/3 0/0 0/0 .rodata          @3716 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3716[4 + 4 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x804FBBA0, &lit_3716);
#pragma pop

/* 804FBBA8-804FBBB0 000018 0008+00 0/2 0/0 0/0 .rodata          @3718 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3718[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x804FBBA8, &lit_3718);
#pragma pop

/* 804FB1B0-804FB3A8 0001B0 01F8+00 1/1 0/0 0/0 .text            ga_fly__FP10e_ga_classP4ga_s */
static void ga_fly(e_ga_class* param_0, ga_s* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FBBB0-804FBBB4 000020 0004+00 0/1 0/0 0/0 .rodata          @3759 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3759 = 12.0f;
COMPILER_STRIP_GATE(0x804FBBB0, &lit_3759);
#pragma pop

/* 804FBBB4-804FBBB8 000024 0004+00 0/1 0/0 0/0 .rodata          @3760 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3760 = 7.0f;
COMPILER_STRIP_GATE(0x804FBBB4, &lit_3760);
#pragma pop

/* 804FB3A8-804FB5C0 0003A8 0218+00 1/1 0/0 0/0 .text            bt_fly__FP10e_ga_classP4ga_s */
static void bt_fly(e_ga_class* param_0, ga_s* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FBBB8-804FBBBC 000028 0004+00 0/1 0/0 0/0 .rodata          @3796 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3796 = -15.0f;
COMPILER_STRIP_GATE(0x804FBBB8, &lit_3796);
#pragma pop

/* 804FBBBC-804FBBC0 00002C 0004+00 0/1 0/0 0/0 .rodata          @3797 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3797 = -5.0f;
COMPILER_STRIP_GATE(0x804FBBBC, &lit_3797);
#pragma pop

/* 804FB5C0-804FB6F8 0005C0 0138+00 1/1 0/0 0/0 .text            ga_control__FP10e_ga_class */
static void ga_control(e_ga_class* param_0) {
    // NONMATCHING
}

/* 804FB6F8-804FB71C 0006F8 0024+00 2/1 0/0 0/0 .text            daE_Ga_Execute__FP10e_ga_class */
static void daE_Ga_Execute(e_ga_class* param_0) {
    // NONMATCHING
}

/* 804FB71C-804FB724 00071C 0008+00 1/0 0/0 0/0 .text            daE_Ga_IsDelete__FP10e_ga_class */
static bool daE_Ga_IsDelete(e_ga_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 804FBBD4-804FBBD4 000044 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_804FBBD4 = "E_ga";
#pragma pop

/* 804FBC48-804FBC4C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_804FBC48[4];

/* 804FB724-804FB7C4 000724 00A0+00 1/0 0/0 0/0 .text            daE_Ga_Delete__FP10e_ga_class */
static void daE_Ga_Delete(e_ga_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FBBD4-804FBBD4 000044 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_804FBBD9 = "E_Ga";
#pragma pop

/* 804FB7C4-804FB874 0007C4 00B0+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 804FBBC0-804FBBC4 000030 0004+00 0/0 0/0 0/0 .rodata          l_bmdidx$3809 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_bmdidx[4] = {
    0x00,
    0x00,
    0x00,
    0x03,
};
COMPILER_STRIP_GATE(0x804FBBC0, &l_bmdidx);
#pragma pop

/* 804FBBC4-804FBBC8 000034 0004+00 0/1 0/0 0/0 .rodata          @3912 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3912 = 65536.0f;
COMPILER_STRIP_GATE(0x804FBBC4, &lit_3912);
#pragma pop

/* 804FBBC8-804FBBCC 000038 0004+00 0/1 0/0 0/0 .rodata          @3913 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3913 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x804FBBC8, &lit_3913);
#pragma pop

/* 804FBBCC-804FBBD0 00003C 0004+00 0/1 0/0 0/0 .rodata          @3914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3914 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x804FBBCC, &lit_3914);
#pragma pop

/* 804FBBD0-804FBBD4 000040 0004+00 0/1 0/0 0/0 .rodata          @3915 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3915 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x804FBBD0, &lit_3915);
#pragma pop

/* 804FBC4C-804FBC58 00000C 000C+00 1/1 0/0 0/0 .bss             @3641 */
static u8 lit_3641[12];

/* 804FBC58-804FBC64 000018 000C+00 2/2 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[12];

/* 804FB874-804FBAB8 000874 0244+00 1/0 0/0 0/0 .text            daE_Ga_Create__FP10fopAc_ac_c */
static void daE_Ga_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 804FBAB8-804FBAF4 000AB8 003C+00 1/1 0/0 0/0 .text            __dt__4ga_sFv */
ga_s::~ga_s() {
    // NONMATCHING
}

/* 804FBAF4-804FBAF8 000AF4 0004+00 1/1 0/0 0/0 .text            __ct__4ga_sFv */
ga_s::ga_s() {
    /* empty function */
}

/* 804FBAF8-804FBB40 000AF8 0048+00 2/1 0/0 0/0 .text            __dt__12daE_Ga_HIO_cFv */
daE_Ga_HIO_c::~daE_Ga_HIO_c() {
    // NONMATCHING
}

/* 804FBB40-804FBB7C 000B40 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_ga_cpp */
void __sinit_d_a_e_ga_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x804FBB40, __sinit_d_a_e_ga_cpp);
#pragma pop

/* 804FBBD4-804FBBD4 000044 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
