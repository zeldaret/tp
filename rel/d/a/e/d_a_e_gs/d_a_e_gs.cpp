/**
 * @file d_a_e_gs.cpp
 * 
*/

#include "rel/d/a/e/d_a_e_gs/d_a_e_gs.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__12daE_GS_HIO_cFv();
extern "C" static void anm_init__FP10e_gs_classifUcf();
extern "C" static void daE_GS_Draw__FP10e_gs_class();
extern "C" static void e_gs_wait__FP10e_gs_class();
extern "C" static void action__FP10e_gs_class();
extern "C" static void daE_GS_Execute__FP10e_gs_class();
extern "C" static bool daE_GS_IsDelete__FP10e_gs_class();
extern "C" static void daE_GS_Delete__FP10e_gs_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_GS_Create__FP10fopAc_ac_c();
extern "C" void __dt__12daE_GS_HIO_cFv();
extern "C" void __sinit_d_a_e_gs_cpp();
extern "C" extern char const* const d_a_e_gs__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
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
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void checkNowWolfEyeUp__9daPy_py_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cM_rndF__Ff();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxScale__FfffUc();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 806DFDF4-806DFDF8 000000 0004+00 3/3 0/0 0/0 .rodata          @3646 */
SECTION_RODATA static f32 const lit_3646 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x806DFDF4, &lit_3646);

/* 806DFDF8-806DFDFC 000004 0004+00 0/1 0/0 0/0 .rodata          @3647 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3647 = 60.0f;
COMPILER_STRIP_GATE(0x806DFDF8, &lit_3647);
#pragma pop

/* 806DFDFC-806DFE00 000008 0004+00 0/1 0/0 0/0 .rodata          @3648 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3648 = 30.0f;
COMPILER_STRIP_GATE(0x806DFDFC, &lit_3648);
#pragma pop

/* 806DFE00-806DFE04 00000C 0004+00 0/1 0/0 0/0 .rodata          @3649 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3649 = 300.0f;
COMPILER_STRIP_GATE(0x806DFE00, &lit_3649);
#pragma pop

/* 806DFE34-806DFE54 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_GS_Method */
static actor_method_class l_daE_GS_Method = {
    (process_method_func)daE_GS_Create__FP10fopAc_ac_c,
    (process_method_func)daE_GS_Delete__FP10e_gs_class,
    (process_method_func)daE_GS_Execute__FP10e_gs_class,
    (process_method_func)daE_GS_IsDelete__FP10e_gs_class,
    (process_method_func)daE_GS_Draw__FP10e_gs_class,
};

/* 806DFE54-806DFE84 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_GS */
extern actor_process_profile_definition g_profile_E_GS = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_GS,              // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(e_gs_class),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  115,                    // mPriority
  &l_daE_GS_Method,       // sub_method
  0x00044100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 806DFE84-806DFE90 000050 000C+00 2/2 0/0 0/0 .data            __vt__12daE_GS_HIO_c */
SECTION_DATA extern void* __vt__12daE_GS_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_GS_HIO_cFv,
};

/* 806DF46C-806DF4B4 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__12daE_GS_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daE_GS_HIO_c::daE_GS_HIO_c() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_gs/d_a_e_gs/__ct__12daE_GS_HIO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 806DFE04-806DFE08 000010 0004+00 2/4 0/0 0/0 .rodata          @3663 */
SECTION_RODATA static u8 const lit_3663[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x806DFE04, &lit_3663);

/* 806DFE08-806DFE0C 000014 0004+00 1/1 0/0 0/0 .rodata          @3664 */
SECTION_RODATA static f32 const lit_3664 = -1.0f;
COMPILER_STRIP_GATE(0x806DFE08, &lit_3664);

/* 806DFE2C-806DFE2C 000038 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_806DFE2C = "E_gs";
#pragma pop

/* 806DF4B4-806DF560 000134 00AC+00 1/1 0/0 0/0 .text            anm_init__FP10e_gs_classifUcf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void anm_init(e_gs_class* param_0, int param_1, f32 param_2, u8 param_3, f32 param_4) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_gs/d_a_e_gs/anm_init__FP10e_gs_classifUcf.s"
}
#pragma pop

/* ############################################################################################## */
/* 806DFE0C-806DFE10 000018 0004+00 2/4 0/0 0/0 .rodata          @3687 */
SECTION_RODATA static f32 const lit_3687 = 1.0f;
COMPILER_STRIP_GATE(0x806DFE0C, &lit_3687);

/* 806DF560-806DF660 0001E0 0100+00 1/0 0/0 0/0 .text            daE_GS_Draw__FP10e_gs_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_GS_Draw(e_gs_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_gs/d_a_e_gs/daE_GS_Draw__FP10e_gs_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806DFE10-806DFE14 00001C 0004+00 0/1 0/0 0/0 .rodata          @3715 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3715 = 40.0f;
COMPILER_STRIP_GATE(0x806DFE10, &lit_3715);
#pragma pop

/* 806DFE14-806DFE18 000020 0004+00 0/1 0/0 0/0 .rodata          @3716 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3716 = 50.0f;
COMPILER_STRIP_GATE(0x806DFE14, &lit_3716);
#pragma pop

/* 806DFE18-806DFE1C 000024 0004+00 0/1 0/0 0/0 .rodata          @3717 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3717 = 10.0f;
COMPILER_STRIP_GATE(0x806DFE18, &lit_3717);
#pragma pop

/* 806DFE1C-806DFE20 000028 0004+00 0/1 0/0 0/0 .rodata          @3718 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3718 = 20.0f;
COMPILER_STRIP_GATE(0x806DFE1C, &lit_3718);
#pragma pop

/* 806DFE98-806DFE9C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_806DFE98[4];

/* 806DFE9C-806DFEA8 00000C 000C+00 1/1 0/0 0/0 .bss             @3641 */
static u8 lit_3641[12];

/* 806DFEA8-806DFEC4 000018 001C+00 4/4 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[28];

/* 806DF660-806DF7CC 0002E0 016C+00 1/1 0/0 0/0 .text            e_gs_wait__FP10e_gs_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void e_gs_wait(e_gs_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_gs/d_a_e_gs/e_gs_wait__FP10e_gs_class.s"
}
#pragma pop

/* 806DF7CC-806DF874 00044C 00A8+00 1/1 0/0 0/0 .text            action__FP10e_gs_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void action(e_gs_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_gs/d_a_e_gs/action__FP10e_gs_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 806DFE20-806DFE24 00002C 0004+00 0/1 0/0 0/0 .rodata          @3789 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3789 = 255.0f;
COMPILER_STRIP_GATE(0x806DFE20, &lit_3789);
#pragma pop

/* 806DF874-806DFA48 0004F4 01D4+00 2/1 0/0 0/0 .text            daE_GS_Execute__FP10e_gs_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_GS_Execute(e_gs_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_gs/d_a_e_gs/daE_GS_Execute__FP10e_gs_class.s"
}
#pragma pop

/* 806DFA48-806DFA50 0006C8 0008+00 1/0 0/0 0/0 .text            daE_GS_IsDelete__FP10e_gs_class */
static bool daE_GS_IsDelete(e_gs_class* param_0) {
    return true;
}

/* 806DFA50-806DFAB8 0006D0 0068+00 1/0 0/0 0/0 .text            daE_GS_Delete__FP10e_gs_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_GS_Delete(e_gs_class* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_gs/d_a_e_gs/daE_GS_Delete__FP10e_gs_class.s"
}
#pragma pop

/* 806DFAB8-806DFC00 000738 0148+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void useHeapInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_gs/d_a_e_gs/useHeapInit__FP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 806DFE24-806DFE28 000030 0004+00 1/1 0/0 0/0 .rodata          @3893 */
SECTION_RODATA static f32 const lit_3893 = -200.0f;
COMPILER_STRIP_GATE(0x806DFE24, &lit_3893);

/* 806DFE28-806DFE2C 000034 0004+00 1/1 0/0 0/0 .rodata          @3894 */
SECTION_RODATA static f32 const lit_3894 = 200.0f;
COMPILER_STRIP_GATE(0x806DFE28, &lit_3894);

/* 806DFC00-806DFD5C 000880 015C+00 1/0 0/0 0/0 .text            daE_GS_Create__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_GS_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_gs/d_a_e_gs/daE_GS_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 806DFD5C-806DFDA4 0009DC 0048+00 2/1 0/0 0/0 .text            __dt__12daE_GS_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daE_GS_HIO_c::~daE_GS_HIO_c() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_gs/d_a_e_gs/__dt__12daE_GS_HIO_cFv.s"
}
#pragma pop

/* 806DFDA4-806DFDE0 000A24 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_gs_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_e_gs_cpp() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_gs/d_a_e_gs/__sinit_d_a_e_gs_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x806DFDA4, __sinit_d_a_e_gs_cpp);
#pragma pop

/* 806DFE2C-806DFE2C 000038 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
