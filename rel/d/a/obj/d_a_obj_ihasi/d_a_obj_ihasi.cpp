/**
 * @file d_a_obj_ihasi.cpp
 * 
*/

#include "rel/d/a/obj/d_a_obj_ihasi/d_a_obj_ihasi.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void daObj_Ihasi_Draw__FP15obj_ihasi_class();
extern "C" static void ih_normal__FP15obj_ihasi_class();
extern "C" static void ih_disappear__FP15obj_ihasi_class();
extern "C" static void action__FP15obj_ihasi_class();
extern "C" static void daObj_Ihasi_Execute__FP15obj_ihasi_class();
extern "C" static bool daObj_Ihasi_IsDelete__FP15obj_ihasi_class();
extern "C" static void daObj_Ihasi_Delete__FP15obj_ihasi_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daObj_Ihasi_Create__FP10fopAc_ac_c();
extern "C" extern char const* const d_a_obj_ihasi__stringBase0;

//
// External References:
//

extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cM_rndF__Ff();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];

//
// Declarations:
//

/* 80C26018-80C2611C 000078 0104+00 1/0 0/0 0/0 .text daObj_Ihasi_Draw__FP15obj_ihasi_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_Ihasi_Draw(obj_ihasi_class* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ihasi/d_a_obj_ihasi/daObj_Ihasi_Draw__FP15obj_ihasi_class.s"
}
#pragma pop

/* 80C2611C-80C26120 00017C 0004+00 1/1 0/0 0/0 .text            ih_normal__FP15obj_ihasi_class */
static void ih_normal(obj_ihasi_class* param_0) {
    /* empty function */
}

/* 80C26120-80C26124 000180 0004+00 1/1 0/0 0/0 .text            ih_disappear__FP15obj_ihasi_class
 */
static void ih_disappear(obj_ihasi_class* param_0) {
    /* empty function */
}

/* ############################################################################################## */
/* 80C26888-80C2688C 000000 0004+00 2/2 0/0 0/0 .rodata          @3841 */
SECTION_RODATA static f32 const lit_3841 = 34800.0f;
COMPILER_STRIP_GATE(0x80C26888, &lit_3841);

/* 80C2688C-80C26890 000004 0004+00 0/2 0/0 0/0 .rodata          @3842 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3842 = -300.0f;
COMPILER_STRIP_GATE(0x80C2688C, &lit_3842);
#pragma pop

/* 80C26890-80C26894 000008 0004+00 0/2 0/0 0/0 .rodata          @3843 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3843 = -26735.0f;
COMPILER_STRIP_GATE(0x80C26890, &lit_3843);
#pragma pop

/* 80C26124-80C26204 000184 00E0+00 1/1 0/0 0/0 .text            action__FP15obj_ihasi_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void action(obj_ihasi_class* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ihasi/d_a_obj_ihasi/action__FP15obj_ihasi_class.s"
}
#pragma pop

/* 80C26204-80C262C4 000264 00C0+00 2/1 0/0 0/0 .text daObj_Ihasi_Execute__FP15obj_ihasi_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_Ihasi_Execute(obj_ihasi_class* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ihasi/d_a_obj_ihasi/daObj_Ihasi_Execute__FP15obj_ihasi_class.s"
}
#pragma pop

/* 80C262C4-80C262CC 000324 0008+00 1/0 0/0 0/0 .text daObj_Ihasi_IsDelete__FP15obj_ihasi_class */
static bool daObj_Ihasi_IsDelete(obj_ihasi_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80C268C4-80C268C4 00003C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C268C4 = "Obj_ihasi";
#pragma pop

/* 80C262CC-80C26324 00032C 0058+00 1/0 0/0 0/0 .text daObj_Ihasi_Delete__FP15obj_ihasi_class */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_Ihasi_Delete(obj_ihasi_class* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ihasi/d_a_obj_ihasi/daObj_Ihasi_Delete__FP15obj_ihasi_class.s"
}
#pragma pop

/* ############################################################################################## */
/* 80C26894-80C26898 00000C 0004+00 1/1 0/0 0/0 .rodata          @3922 */
SECTION_RODATA static f32 const lit_3922 = 1.0f;
COMPILER_STRIP_GATE(0x80C26894, &lit_3922);

/* 80C268D8-80C268F8 -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Ihasi_Method */
static actor_method_class l_daObj_Ihasi_Method = {
    (process_method_func)daObj_Ihasi_Create__FP10fopAc_ac_c,
    (process_method_func)daObj_Ihasi_Delete__FP15obj_ihasi_class,
    (process_method_func)daObj_Ihasi_Execute__FP15obj_ihasi_class,
    (process_method_func)daObj_Ihasi_IsDelete__FP15obj_ihasi_class,
    (process_method_func)daObj_Ihasi_Draw__FP15obj_ihasi_class,
};

/* 80C268F8-80C26928 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_IHASI */
extern actor_process_profile_definition g_profile_OBJ_IHASI = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_OBJ_IHASI,          // mProcName
  &g_fpcLf_Method.mBase,   // sub_method
  sizeof(obj_ihasi_class), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  533,                     // mPriority
  &l_daObj_Ihasi_Method,   // sub_method
  0x00044000,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80C26928-80C26934 000050 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80C26324-80C264F8 000384 01D4+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void useHeapInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ihasi/d_a_obj_ihasi/useHeapInit__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80C264F8-80C26540 000558 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ihasi/d_a_obj_ihasi/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80C26898-80C2689C 000010 0004+00 0/1 0/0 0/0 .rodata          @4021 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4021 = 34750.0f;
COMPILER_STRIP_GATE(0x80C26898, &lit_4021);
#pragma pop

/* 80C2689C-80C268A0 000014 0004+00 0/1 0/0 0/0 .rodata          @4022 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4022 = -44000.0f;
COMPILER_STRIP_GATE(0x80C2689C, &lit_4022);
#pragma pop

/* 80C268A0-80C268A4 000018 0004+00 0/1 0/0 0/0 .rodata          @4023 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4023 = 35250.0f;
COMPILER_STRIP_GATE(0x80C268A0, &lit_4023);
#pragma pop

/* 80C268A4-80C268A8 00001C 0004+00 0/1 0/0 0/0 .rodata          @4024 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4024 = -43500.0f;
COMPILER_STRIP_GATE(0x80C268A4, &lit_4024);
#pragma pop

/* 80C268A8-80C268AC 000020 0004+00 0/1 0/0 0/0 .rodata          @4025 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4025 = 34250.0f;
COMPILER_STRIP_GATE(0x80C268A8, &lit_4025);
#pragma pop

/* 80C268AC-80C268B0 000024 0004+00 0/1 0/0 0/0 .rodata          @4026 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4026 = 65536.0f;
COMPILER_STRIP_GATE(0x80C268AC, &lit_4026);
#pragma pop

/* 80C268B0-80C268B4 000028 0004+00 0/1 0/0 0/0 .rodata          @4027 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4027 = 5700.0f;
COMPILER_STRIP_GATE(0x80C268B0, &lit_4027);
#pragma pop

/* 80C268B4-80C268B8 00002C 0004+00 0/1 0/0 0/0 .rodata          @4028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4028 = -30340.0f;
COMPILER_STRIP_GATE(0x80C268B4, &lit_4028);
#pragma pop

/* 80C268B8-80C268BC 000030 0004+00 0/1 0/0 0/0 .rodata          @4029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4029 = 35087.0f;
COMPILER_STRIP_GATE(0x80C268B8, &lit_4029);
#pragma pop

/* 80C268BC-80C268C0 000034 0004+00 0/1 0/0 0/0 .rodata          @4030 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4030 = -29879.0f;
COMPILER_STRIP_GATE(0x80C268BC, &lit_4030);
#pragma pop

/* 80C268C0-80C268C4 000038 0004+00 0/1 0/0 0/0 .rodata          @4031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4031 = 34500.0f;
COMPILER_STRIP_GATE(0x80C268C0, &lit_4031);
#pragma pop

/* 80C268C4-80C268C4 00003C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C268CE = "F_SP121";
#pragma pop

/* 80C26540-80C26880 0005A0 0340+00 1/0 0/0 0/0 .text            daObj_Ihasi_Create__FP10fopAc_ac_c
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daObj_Ihasi_Create(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_ihasi/d_a_obj_ihasi/daObj_Ihasi_Create__FP10fopAc_ac_c.s"
}
#pragma pop

/* 80C268C4-80C268C4 00003C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
