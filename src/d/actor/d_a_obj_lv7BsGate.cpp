/**
 * @file d_a_obj_lv7BsGate.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv7BsGate.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__17daLv7BsGate_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__13daLv7BsGate_cFv();
extern "C" void CreateHeap__13daLv7BsGate_cFv();
extern "C" void create__13daLv7BsGate_cFv();
extern "C" void Execute__13daLv7BsGate_cFPPA3_A4_f();
extern "C" void moveGate__13daLv7BsGate_cFv();
extern "C" void init_modeWait__13daLv7BsGate_cFv();
extern "C" void modeWait__13daLv7BsGate_cFv();
extern "C" void init_modeOpen__13daLv7BsGate_cFv();
extern "C" void modeOpen__13daLv7BsGate_cFv();
extern "C" void init_modeClose__13daLv7BsGate_cFv();
extern "C" void modeClose__13daLv7BsGate_cFv();
extern "C" void Draw__13daLv7BsGate_cFv();
extern "C" void Delete__13daLv7BsGate_cFv();
extern "C" static void daLv7BsGate_Draw__FP13daLv7BsGate_c();
extern "C" static void daLv7BsGate_Execute__FP13daLv7BsGate_c();
extern "C" static void daLv7BsGate_Delete__FP13daLv7BsGate_c();
extern "C" static void daLv7BsGate_Create__FP10fopAc_ac_c();
extern "C" void __dt__17daLv7BsGate_HIO_cFv();
extern "C" void __sinit_d_a_obj_lv7BsGate_cpp();
extern "C" extern char const* const d_a_obj_lv7BsGate__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool Create__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C85210-80C85214 000000 0004+00 3/3 0/0 0/0 .rodata          @3628 */
SECTION_RODATA static f32 const lit_3628 = 2.0f;
COMPILER_STRIP_GATE(0x80C85210, &lit_3628);

/* 80C85214-80C85218 000004 0004+00 1/1 0/0 0/0 .rodata          @3629 */
SECTION_RODATA static f32 const lit_3629 = 12.0f;
COMPILER_STRIP_GATE(0x80C85214, &lit_3629);

/* 80C85234-80C85234 000024 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C85234 = "L7Gate";
SECTION_DEAD static char const* const stringBase_80C8523B = "L7GateL";
#pragma pop

/* 80C85264-80C8526C -00001 0008+00 3/3 0/0 0/0 .data            l_type */
SECTION_DATA static void* l_type[2] = {
    (void*)&d_a_obj_lv7BsGate__stringBase0,
    (void*)(((char*)&d_a_obj_lv7BsGate__stringBase0) + 0x7),
};

/* 80C8526C-80C85274 000028 0008+00 1/1 0/0 0/0 .data            l_bmdIdx */
SECTION_DATA static u8 l_bmdIdx[8] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04,
};

/* 80C85274-80C8527C 000030 0008+00 1/1 0/0 0/0 .data            l_dzbIdx */
SECTION_DATA static u8 l_dzbIdx[8] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07,
};

/* 80C8527C-80C85288 -00001 000C+00 0/1 0/0 0/0 .data            @3736 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3736[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__13daLv7BsGate_cFv,
};
#pragma pop

/* 80C85288-80C85294 -00001 000C+00 0/1 0/0 0/0 .data            @3737 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3737[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeOpen__13daLv7BsGate_cFv,
};
#pragma pop

/* 80C85294-80C852A0 -00001 000C+00 0/1 0/0 0/0 .data            @3738 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3738[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeClose__13daLv7BsGate_cFv,
};
#pragma pop

/* 80C852A0-80C852C4 00005C 0024+00 0/1 0/0 0/0 .data            mode_proc$3735 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[36] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C852C4-80C852E4 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv7BsGate_Method */
static actor_method_class l_daLv7BsGate_Method = {
    (process_method_func)daLv7BsGate_Create__FP10fopAc_ac_c,
    (process_method_func)daLv7BsGate_Delete__FP13daLv7BsGate_c,
    (process_method_func)daLv7BsGate_Execute__FP13daLv7BsGate_c,
    0,
    (process_method_func)daLv7BsGate_Draw__FP13daLv7BsGate_c,
};

/* 80C852E4-80C85314 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv7BsGate */
extern actor_process_profile_definition g_profile_Obj_Lv7BsGate = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv7BsGate,     // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daLv7BsGate_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  642,                    // mPriority
  &l_daLv7BsGate_Method,  // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C85314-80C8533C 0000D0 0028+00 1/1 0/0 0/0 .data            __vt__13daLv7BsGate_c */
SECTION_DATA extern void* __vt__13daLv7BsGate_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__13daLv7BsGate_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__13daLv7BsGate_cFPPA3_A4_f,
    (void*)Draw__13daLv7BsGate_cFv,
    (void*)Delete__13daLv7BsGate_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C8533C-80C85348 0000F8 000C+00 2/2 0/0 0/0 .data            __vt__17daLv7BsGate_HIO_c */
SECTION_DATA extern void* __vt__17daLv7BsGate_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daLv7BsGate_HIO_cFv,
};

/* 80C85348-80C85354 000104 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80C848AC-80C848E8 0000EC 003C+00 1/1 0/0 0/0 .text            __ct__17daLv7BsGate_HIO_cFv */
daLv7BsGate_HIO_c::daLv7BsGate_HIO_c() {
    // NONMATCHING
}

/* 80C848E8-80C84930 000128 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C85218-80C8521C 000008 0004+00 2/4 0/0 0/0 .rodata          @3650 */
SECTION_RODATA static u8 const lit_3650[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C85218, &lit_3650);

/* 80C84930-80C849CC 000170 009C+00 2/2 0/0 0/0 .text            setBaseMtx__13daLv7BsGate_cFv */
void daLv7BsGate_c::setBaseMtx() {
    // NONMATCHING
}

/* 80C849CC-80C84A4C 00020C 0080+00 1/0 0/0 0/0 .text            CreateHeap__13daLv7BsGate_cFv */
void daLv7BsGate_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C8521C-80C85220 00000C 0004+00 1/1 0/0 0/0 .rodata          @3722 */
SECTION_RODATA static f32 const lit_3722 = -450.0f;
COMPILER_STRIP_GATE(0x80C8521C, &lit_3722);

/* 80C84A4C-80C84BCC 00028C 0180+00 1/1 0/0 0/0 .text            create__13daLv7BsGate_cFv */
void daLv7BsGate_c::create() {
    // NONMATCHING
}

/* 80C84BCC-80C84C1C 00040C 0050+00 1/0 0/0 0/0 .text            Execute__13daLv7BsGate_cFPPA3_A4_f
 */
void daLv7BsGate_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C85360-80C8536C 000008 000C+00 1/1 0/0 0/0 .bss             @3622 */
static u8 lit_3622[12];

/* 80C8536C-80C8537C 000014 0010+00 3/3 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[16];

/* 80C8537C-80C85380 000024 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80C8537C[4];

/* 80C84C1C-80C84D24 00045C 0108+00 1/1 0/0 0/0 .text            moveGate__13daLv7BsGate_cFv */
void daLv7BsGate_c::moveGate() {
    // NONMATCHING
}

/* 80C84D24-80C84D30 000564 000C+00 3/3 0/0 0/0 .text            init_modeWait__13daLv7BsGate_cFv */
void daLv7BsGate_c::init_modeWait() {
    // NONMATCHING
}

/* 80C84D30-80C84D34 000570 0004+00 1/0 0/0 0/0 .text            modeWait__13daLv7BsGate_cFv */
void daLv7BsGate_c::modeWait() {
    /* empty function */
}

/* 80C84D34-80C84D40 000574 000C+00 1/1 0/0 0/0 .text            init_modeOpen__13daLv7BsGate_cFv */
void daLv7BsGate_c::init_modeOpen() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C85220-80C85224 000010 0004+00 0/2 0/0 0/0 .rodata          @3796 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3796 = 1.0f;
COMPILER_STRIP_GATE(0x80C85220, &lit_3796);
#pragma pop

/* 80C85224-80C85228 000014 0004+00 0/2 0/0 0/0 .rodata          @3797 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3797 = -1.0f;
COMPILER_STRIP_GATE(0x80C85224, &lit_3797);
#pragma pop

/* 80C85228-80C8522C 000018 0004+00 0/1 0/0 0/0 .rodata          @3798 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3798 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C85228, &lit_3798);
#pragma pop

/* 80C8522C-80C85230 00001C 0004+00 0/2 0/0 0/0 .rodata          @3799 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3799 = 0.5f;
COMPILER_STRIP_GATE(0x80C8522C, &lit_3799);
#pragma pop

/* 80C84D40-80C84E94 000580 0154+00 1/0 0/0 0/0 .text            modeOpen__13daLv7BsGate_cFv */
void daLv7BsGate_c::modeOpen() {
    // NONMATCHING
}

/* 80C84E94-80C84EA0 0006D4 000C+00 1/1 0/0 0/0 .text            init_modeClose__13daLv7BsGate_cFv
 */
void daLv7BsGate_c::init_modeClose() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C85230-80C85234 000020 0004+00 0/1 0/0 0/0 .rodata          @3833 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3833 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C85230, &lit_3833);
#pragma pop

/* 80C84EA0-80C84FF4 0006E0 0154+00 1/0 0/0 0/0 .text            modeClose__13daLv7BsGate_cFv */
void daLv7BsGate_c::modeClose() {
    // NONMATCHING
}

/* 80C84FF4-80C85098 000834 00A4+00 1/0 0/0 0/0 .text            Draw__13daLv7BsGate_cFv */
void daLv7BsGate_c::Draw() {
    // NONMATCHING
}

/* 80C85098-80C850D8 0008D8 0040+00 1/0 0/0 0/0 .text            Delete__13daLv7BsGate_cFv */
void daLv7BsGate_c::Delete() {
    // NONMATCHING
}

/* 80C850D8-80C85104 000918 002C+00 1/0 0/0 0/0 .text            daLv7BsGate_Draw__FP13daLv7BsGate_c
 */
static void daLv7BsGate_Draw(daLv7BsGate_c* param_0) {
    // NONMATCHING
}

/* 80C85104-80C85124 000944 0020+00 1/0 0/0 0/0 .text daLv7BsGate_Execute__FP13daLv7BsGate_c */
static void daLv7BsGate_Execute(daLv7BsGate_c* param_0) {
    // NONMATCHING
}

/* 80C85124-80C85144 000964 0020+00 1/0 0/0 0/0 .text daLv7BsGate_Delete__FP13daLv7BsGate_c */
static void daLv7BsGate_Delete(daLv7BsGate_c* param_0) {
    // NONMATCHING
}

/* 80C85144-80C85164 000984 0020+00 1/0 0/0 0/0 .text            daLv7BsGate_Create__FP10fopAc_ac_c
 */
static void daLv7BsGate_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C85164-80C851C0 0009A4 005C+00 2/1 0/0 0/0 .text            __dt__17daLv7BsGate_HIO_cFv */
daLv7BsGate_HIO_c::~daLv7BsGate_HIO_c() {
    // NONMATCHING
}

/* 80C851C0-80C851FC 000A00 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_lv7BsGate_cpp */
void __sinit_d_a_obj_lv7BsGate_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C851C0, __sinit_d_a_obj_lv7BsGate_cpp);
#pragma pop

/* 80C85234-80C85234 000024 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
