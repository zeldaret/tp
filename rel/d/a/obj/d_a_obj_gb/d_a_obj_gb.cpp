/**
 * @file d_a_obj_gb.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_gb/d_a_obj_gb.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void daObj_Gb_Draw__FP12obj_gb_class();
extern "C" static void daObj_Gb_Execute__FP12obj_gb_class();
extern "C" void __dt__4cXyzFv();
extern "C" static bool daObj_Gb_IsDelete__FP12obj_gb_class();
extern "C" static void daObj_Gb_Delete__FP12obj_gb_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daObj_Gb_Create__FP10fopAc_ac_c();
extern "C" void __ct__4cXyzFv();
extern "C" extern char const* const d_a_obj_gb__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_bg_MAxx_proc__FPv();
extern "C" void cM_rndF__Ff();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __construct_array();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80BF6318-80BF63F8 000078 00E0+00 1/0 0/0 0/0 .text            daObj_Gb_Draw__FP12obj_gb_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_Gb_Draw(obj_gb_class* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_gb/d_a_obj_gb/daObj_Gb_Draw__FP12obj_gb_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BF6DBC-80BF6DC0 000000 0004+00 2/2 0/0 0/0 .rodata          @3890 */
SECTION_RODATA static f32 const lit_3890 = 0.5f;
COMPILER_STRIP_GATE(0x80BF6DBC, &lit_3890);

/* 80BF6DC0-80BF6DC4 000004 0004+00 1/2 0/0 0/0 .rodata          @3891 */
SECTION_RODATA static f32 const lit_3891 = 1.0f;
COMPILER_STRIP_GATE(0x80BF6DC0, &lit_3891);

/* 80BF6DC4-80BF6DC8 000008 0004+00 0/1 0/0 0/0 .rodata          @3892 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3892 = -1.0f;
COMPILER_STRIP_GATE(0x80BF6DC4, &lit_3892);
#pragma pop

/* 80BF6DC8-80BF6DCC 00000C 0004+00 0/1 0/0 0/0 .rodata          @3893 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3893 = 29.0f;
COMPILER_STRIP_GATE(0x80BF6DC8, &lit_3893);
#pragma pop

/* 80BF6DCC-80BF6DD0 000010 0004+00 1/3 0/0 0/0 .rodata          @3894 */
SECTION_RODATA static u8 const lit_3894[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BF6DCC, &lit_3894);

/* 80BF6DD0-80BF6DD4 000014 0004+00 0/1 0/0 0/0 .rodata          @3895 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3895 = -200.0f;
COMPILER_STRIP_GATE(0x80BF6DD0, &lit_3895);
#pragma pop

/* 80BF6DEC-80BF6DEC 000030 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BF6DEC = "D_MN09B";
#pragma pop

/* 80BF63F8-80BF678C 000158 0394+00 2/1 0/0 0/0 .text            daObj_Gb_Execute__FP12obj_gb_class
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_Gb_Execute(obj_gb_class* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_gb/d_a_obj_gb/daObj_Gb_Execute__FP12obj_gb_class.s"
}
#pragma pop

/* 80BF678C-80BF67C8 0004EC 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_gb/d_a_obj_gb/__dt__4cXyzFv.s"
}
#pragma pop

/* 80BF67C8-80BF67D0 000528 0008+00 1/0 0/0 0/0 .text            daObj_Gb_IsDelete__FP12obj_gb_class
 */
static bool daObj_Gb_IsDelete(obj_gb_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80BF6DEC-80BF6DEC 000030 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BF6DF4 = "Obj_gb";
#pragma pop

/* 80BF67D0-80BF682C 000530 005C+00 1/0 0/0 0/0 .text            daObj_Gb_Delete__FP12obj_gb_class
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_Gb_Delete(obj_gb_class* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_gb/d_a_obj_gb/daObj_Gb_Delete__FP12obj_gb_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BF6DFC-80BF6E08 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80BF6E08-80BF6E1C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80BF6E1C-80BF6E24 000020 0008+00 0/1 0/0 0/0 .data            bmd$3914 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 bmd[8] = {
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07,
};
#pragma pop

/* 80BF6E24-80BF6E2C 000028 0008+00 0/1 0/0 0/0 .data            brk$3915 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 brk[8] = {
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0B,
};
#pragma pop

/* 80BF6E2C-80BF6E34 000030 0008+00 0/1 0/0 0/0 .data            btk$3916 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 btk[8] = {
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0F,
};
#pragma pop

/* 80BF6E34-80BF6E3C 000038 0008+00 0/1 0/0 0/0 .data            dzb$3917 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 dzb[8] = {
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x13,
};
#pragma pop

/* 80BF6E3C-80BF6E5C -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Gb_Method */
static actor_method_class l_daObj_Gb_Method = {
    (process_method_func)daObj_Gb_Create__FP10fopAc_ac_c,
    (process_method_func)daObj_Gb_Delete__FP12obj_gb_class,
    (process_method_func)daObj_Gb_Execute__FP12obj_gb_class,
    (process_method_func)daObj_Gb_IsDelete__FP12obj_gb_class,
    (process_method_func)daObj_Gb_Draw__FP12obj_gb_class,
};

/* 80BF6E5C-80BF6E8C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_GB */
extern actor_process_profile_definition g_profile_OBJ_GB = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_OBJ_GB,            // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(obj_gb_class),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  56,                     // mPriority
  &l_daObj_Gb_Method,     // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80BF6E8C-80BF6E98 000090 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80BF682C-80BF6A98 00058C 026C+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void useHeapInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_gb/d_a_obj_gb/useHeapInit__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80BF6A98-80BF6AE0 0007F8 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_gb/d_a_obj_gb/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80BF6DD4-80BF6DD8 000018 0004+00 0/1 0/0 0/0 .rodata          @4083 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4083 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80BF6DD4, &lit_4083);
#pragma pop

/* 80BF6DD8-80BF6DDC 00001C 0004+00 0/1 0/0 0/0 .rodata          @4084 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4084 = 0x3EAAAA9F;
COMPILER_STRIP_GATE(0x80BF6DD8, &lit_4084);
#pragma pop

/* 80BF6DDC-80BF6DE0 000020 0004+00 0/1 0/0 0/0 .rodata          @4085 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4085 = 65536.0f;
COMPILER_STRIP_GATE(0x80BF6DDC, &lit_4085);
#pragma pop

/* 80BF6DE0-80BF6DE4 000024 0004+00 0/1 0/0 0/0 .rodata          @4086 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4086 = 1000.0f;
COMPILER_STRIP_GATE(0x80BF6DE0, &lit_4086);
#pragma pop

/* 80BF6DE4-80BF6DEC 000028 0008+00 0/1 0/0 0/0 .rodata          @4088 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4088[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BF6DE4, &lit_4088);
#pragma pop

/* 80BF6AE0-80BF6DB0 000840 02D0+00 1/0 0/0 0/0 .text            daObj_Gb_Create__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_Gb_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_gb/d_a_obj_gb/daObj_Gb_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80BF6DB0-80BF6DB4 000B10 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" asm void __ct__4cXyzFv() {
    /* empty function */
}

/* 80BF6DEC-80BF6DEC 000030 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
