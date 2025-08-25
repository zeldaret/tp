/**
 * @file d_a_obj_poCandle.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_poCandle.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void __ct__16daPoCandle_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__12daPoCandle_cFv();
extern "C" void CreateHeap__12daPoCandle_cFv();
extern "C" void create__12daPoCandle_cFv();
extern "C" void lightInit__12daPoCandle_cFv();
extern "C" void setLight__12daPoCandle_cFv();
extern "C" void cutLight__12daPoCandle_cFv();
extern "C" void pointLightProc__12daPoCandle_cFv();
extern "C" void Execute__12daPoCandle_cFPPA3_A4_f();
extern "C" void init_modeWait__12daPoCandle_cFv();
extern "C" void modeWait__12daPoCandle_cFv();
extern "C" void init_modeOnFire__12daPoCandle_cFv();
extern "C" void modeOnFire__12daPoCandle_cFv();
extern "C" void modeOnSwWait__12daPoCandle_cFv();
extern "C" void init_modeEnd__12daPoCandle_cFv();
extern "C" void modeEnd__12daPoCandle_cFv();
extern "C" void eventStart__12daPoCandle_cFv();
extern "C" void Draw__12daPoCandle_cFv();
extern "C" void Delete__12daPoCandle_cFv();
extern "C" static void daPoCandle_Draw__FP12daPoCandle_c();
extern "C" static void daPoCandle_Execute__FP12daPoCandle_c();
extern "C" static void daPoCandle_Delete__FP12daPoCandle_c();
extern "C" static void daPoCandle_Create__FP10fopAc_ac_c();
extern "C" void __dt__16daPoCandle_HIO_cFv();
extern "C" void __sinit_d_a_obj_poCandle_cpp();
extern "C" static void func_80CB25A0();
extern "C" static void func_80CB25A8();
extern "C" void __dt__17dEvLib_callback_cFv();
extern "C" bool eventStart__17dEvLib_callback_cFv();
extern "C" bool eventRun__17dEvLib_callback_cFv();
extern "C" bool eventEnd__17dEvLib_callback_cFv();
extern "C" void __dt__12daPoCandle_cFv();
extern "C" extern char const* const d_a_obj_poCandle__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void eventUpdate__17dEvLib_callback_cFv();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
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
extern "C" void dKy_plight_set__FP15LIGHT_INFLUENCE();
extern "C" void dKy_plight_cut__FP15LIGHT_INFLUENCE();
extern "C" void dKy_BossLight_set__FP4cXyzP8_GXColorfUc();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_28();
extern "C" void _restgpr_28();
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80CB26B8-80CB26BC 000000 0004+00 3/3 0/0 0/0 .rodata          @3635 */
SECTION_RODATA static f32 const lit_3635 = 3.0f;
COMPILER_STRIP_GATE(0x80CB26B8, &lit_3635);

/* 80CB2710-80CB271C -00001 000C+00 0/1 0/0 0/0 .data            @3774 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3774[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__12daPoCandle_cFv,
};
#pragma pop

/* 80CB271C-80CB2728 -00001 000C+00 0/1 0/0 0/0 .data            @3775 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3775[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeOnFire__12daPoCandle_cFv,
};
#pragma pop

/* 80CB2728-80CB2734 -00001 000C+00 0/1 0/0 0/0 .data            @3776 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3776[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeOnSwWait__12daPoCandle_cFv,
};
#pragma pop

/* 80CB2734-80CB2740 -00001 000C+00 0/1 0/0 0/0 .data            @3777 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3777[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeEnd__12daPoCandle_cFv,
};
#pragma pop

/* 80CB2740-80CB2770 000050 0030+00 0/1 0/0 0/0 .data            mode_proc$3773 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80CB2770-80CB2790 -00001 0020+00 1/0 0/0 0/0 .data            l_daPoCandle_Method */
static actor_method_class l_daPoCandle_Method = {
    (process_method_func)daPoCandle_Create__FP10fopAc_ac_c,
    (process_method_func)daPoCandle_Delete__FP12daPoCandle_c,
    (process_method_func)daPoCandle_Execute__FP12daPoCandle_c,
    0,
    (process_method_func)daPoCandle_Draw__FP12daPoCandle_c,
};

/* 80CB2790-80CB27C0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_poCandle */
extern actor_process_profile_definition g_profile_Obj_poCandle = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_poCandle,      // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daPoCandle_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  650,                    // mPriority
  &l_daPoCandle_Method,   // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CB27C0-80CB27D8 0000D0 0018+00 3/3 0/0 0/0 .data            __vt__17dEvLib_callback_c */
SECTION_DATA extern void* __vt__17dEvLib_callback_c[6] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17dEvLib_callback_cFv,
    (void*)eventStart__17dEvLib_callback_cFv,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
};

/* 80CB27D8-80CB2820 0000E8 0048+00 2/2 0/0 0/0 .data            __vt__12daPoCandle_c */
SECTION_DATA extern void* __vt__12daPoCandle_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__12daPoCandle_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__12daPoCandle_cFPPA3_A4_f,
    (void*)Draw__12daPoCandle_cFv,
    (void*)Delete__12daPoCandle_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80CB25A8,
    (void*)func_80CB25A0,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
    (void*)__dt__12daPoCandle_cFv,
    (void*)eventStart__12daPoCandle_cFv,
};

/* 80CB2820-80CB282C 000130 000C+00 2/2 0/0 0/0 .data            __vt__16daPoCandle_HIO_c */
SECTION_DATA extern void* __vt__16daPoCandle_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daPoCandle_HIO_cFv,
};

/* 80CB282C-80CB2838 00013C 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80CB1A6C-80CB1A9C 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__16daPoCandle_HIO_cFv */
daPoCandle_HIO_c::daPoCandle_HIO_c() {
    // NONMATCHING
}

/* 80CB1A9C-80CB1AE4 00011C 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80CB1AE4-80CB1B6C 000164 0088+00 2/2 0/0 0/0 .text            setBaseMtx__12daPoCandle_cFv */
void daPoCandle_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB26E8-80CB26E8 000030 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CB26E8 = "P_PCNDL";
#pragma pop

/* 80CB1B6C-80CB1BD8 0001EC 006C+00 1/0 0/0 0/0 .text            CreateHeap__12daPoCandle_cFv */
void daPoCandle_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB26BC-80CB26C0 000004 0004+00 1/1 0/0 0/0 .rodata          @3714 */
SECTION_RODATA static f32 const lit_3714 = 25.0f;
COMPILER_STRIP_GATE(0x80CB26BC, &lit_3714);

/* 80CB1BD8-80CB1D74 000258 019C+00 1/1 0/0 0/0 .text            create__12daPoCandle_cFv */
void daPoCandle_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB26C0-80CB26C4 000008 0004+00 0/1 0/0 0/0 .rodata          @3737 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3737 = 10.0f;
COMPILER_STRIP_GATE(0x80CB26C0, &lit_3737);
#pragma pop

/* 80CB26C4-80CB26C8 00000C 0004+00 0/1 0/0 0/0 .rodata          @3738 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3738 = 500.0f;
COMPILER_STRIP_GATE(0x80CB26C4, &lit_3738);
#pragma pop

/* 80CB26C8-80CB26CC 000010 0004+00 2/4 0/0 0/0 .rodata          @3739 */
SECTION_RODATA static f32 const lit_3739 = 1.0f;
COMPILER_STRIP_GATE(0x80CB26C8, &lit_3739);

/* 80CB26CC-80CB26D0 000014 0004+00 0/2 0/0 0/0 .rodata          @3740 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3740[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CB26CC, &lit_3740);
#pragma pop

/* 80CB1D74-80CB1E00 0003F4 008C+00 1/1 0/0 0/0 .text            lightInit__12daPoCandle_cFv */
void daPoCandle_c::lightInit() {
    // NONMATCHING
}

/* 80CB1E00-80CB1E30 000480 0030+00 1/1 0/0 0/0 .text            setLight__12daPoCandle_cFv */
void daPoCandle_c::setLight() {
    // NONMATCHING
}

/* 80CB1E30-80CB1E60 0004B0 0030+00 1/1 0/0 0/0 .text            cutLight__12daPoCandle_cFv */
void daPoCandle_c::cutLight() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB26D0-80CB26D4 000018 0004+00 0/1 0/0 0/0 .rodata          @3758 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3758 = 0xBC6642FF;
COMPILER_STRIP_GATE(0x80CB26D0, &lit_3758);
#pragma pop

/* 80CB26D4-80CB26D8 00001C 0004+00 0/1 0/0 0/0 .rodata          @3766 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3766 = 0.5f;
COMPILER_STRIP_GATE(0x80CB26D4, &lit_3766);
#pragma pop

/* 80CB26D8-80CB26DC 000020 0004+00 0/1 0/0 0/0 .rodata          @3767 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3767 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CB26D8, &lit_3767);
#pragma pop

/* 80CB26DC-80CB26E0 000024 0004+00 0/1 0/0 0/0 .rodata          @3768 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3768 = 0x38D1B717;
COMPILER_STRIP_GATE(0x80CB26DC, &lit_3768);
#pragma pop

/* 80CB26E0-80CB26E4 000028 0004+00 0/1 0/0 0/0 .rodata          @3769 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3769 = 0x358637BD;
COMPILER_STRIP_GATE(0x80CB26E0, &lit_3769);
#pragma pop

/* 80CB1E60-80CB1F10 0004E0 00B0+00 1/1 0/0 0/0 .text            pointLightProc__12daPoCandle_cFv */
void daPoCandle_c::pointLightProc() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CB26E4-80CB26E8 00002C 0004+00 2/2 0/0 0/0 .rodata          @3814 */
SECTION_RODATA static f32 const lit_3814 = -1.0f;
COMPILER_STRIP_GATE(0x80CB26E4, &lit_3814);

/* 80CB2840-80CB284C 000008 000C+00 1/1 0/0 0/0 .bss             @3629 */
static u8 lit_3629[12];

/* 80CB284C-80CB2858 000014 000C+00 3/3 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[12];

/* 80CB2858-80CB285C 000020 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80CB2858[4];

/* 80CB1F10-80CB2140 000590 0230+00 1/0 0/0 0/0 .text            Execute__12daPoCandle_cFPPA3_A4_f
 */
void daPoCandle_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80CB2140-80CB214C 0007C0 000C+00 2/2 0/0 0/0 .text            init_modeWait__12daPoCandle_cFv */
void daPoCandle_c::init_modeWait() {
    // NONMATCHING
}

/* 80CB214C-80CB21D8 0007CC 008C+00 1/0 0/0 0/0 .text            modeWait__12daPoCandle_cFv */
void daPoCandle_c::modeWait() {
    // NONMATCHING
}

/* 80CB21D8-80CB22D4 000858 00FC+00 2/2 0/0 0/0 .text            init_modeOnFire__12daPoCandle_cFv
 */
void daPoCandle_c::init_modeOnFire() {
    // NONMATCHING
}

/* 80CB22D4-80CB22F4 000954 0020+00 1/0 0/0 0/0 .text            modeOnFire__12daPoCandle_cFv */
void daPoCandle_c::modeOnFire() {
    // NONMATCHING
}

/* 80CB22F4-80CB2354 000974 0060+00 1/0 0/0 0/0 .text            modeOnSwWait__12daPoCandle_cFv */
void daPoCandle_c::modeOnSwWait() {
    // NONMATCHING
}

/* 80CB2354-80CB2360 0009D4 000C+00 1/1 0/0 0/0 .text            init_modeEnd__12daPoCandle_cFv */
void daPoCandle_c::init_modeEnd() {
    // NONMATCHING
}

/* 80CB2360-80CB2364 0009E0 0004+00 1/0 0/0 0/0 .text            modeEnd__12daPoCandle_cFv */
void daPoCandle_c::modeEnd() {
    /* empty function */
}

/* 80CB2364-80CB2388 0009E4 0024+00 2/1 0/0 0/0 .text            eventStart__12daPoCandle_cFv */
void daPoCandle_c::eventStart() {
    // NONMATCHING
}

/* 80CB2388-80CB242C 000A08 00A4+00 1/0 0/0 0/0 .text            Draw__12daPoCandle_cFv */
void daPoCandle_c::Draw() {
    // NONMATCHING
}

/* 80CB242C-80CB247C 000AAC 0050+00 1/0 0/0 0/0 .text            Delete__12daPoCandle_cFv */
void daPoCandle_c::Delete() {
    // NONMATCHING
}

/* 80CB247C-80CB24A8 000AFC 002C+00 1/0 0/0 0/0 .text            daPoCandle_Draw__FP12daPoCandle_c
 */
static void daPoCandle_Draw(daPoCandle_c* param_0) {
    // NONMATCHING
}

/* 80CB24A8-80CB24C8 000B28 0020+00 1/0 0/0 0/0 .text daPoCandle_Execute__FP12daPoCandle_c */
static void daPoCandle_Execute(daPoCandle_c* param_0) {
    // NONMATCHING
}

/* 80CB24C8-80CB24E8 000B48 0020+00 1/0 0/0 0/0 .text            daPoCandle_Delete__FP12daPoCandle_c
 */
static void daPoCandle_Delete(daPoCandle_c* param_0) {
    // NONMATCHING
}

/* 80CB24E8-80CB2508 000B68 0020+00 1/0 0/0 0/0 .text            daPoCandle_Create__FP10fopAc_ac_c
 */
static void daPoCandle_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CB2508-80CB2564 000B88 005C+00 2/1 0/0 0/0 .text            __dt__16daPoCandle_HIO_cFv */
daPoCandle_HIO_c::~daPoCandle_HIO_c() {
    // NONMATCHING
}

/* 80CB2564-80CB25A0 000BE4 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_poCandle_cpp */
void __sinit_d_a_obj_poCandle_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80CB2564, __sinit_d_a_obj_poCandle_cpp);
#pragma pop

/* 80CB25A0-80CB25A8 000C20 0008+00 1/0 0/0 0/0 .text            @1448@eventStart__12daPoCandle_cFv
 */
static void func_80CB25A0() {
    // NONMATCHING
}

/* 80CB25A8-80CB25B0 000C28 0008+00 1/0 0/0 0/0 .text            @1448@__dt__12daPoCandle_cFv */
static void func_80CB25A8() {
    // NONMATCHING
}

/* 80CB25B0-80CB25F8 000C30 0048+00 1/0 0/0 0/0 .text            __dt__17dEvLib_callback_cFv */
// dEvLib_callback_c::~dEvLib_callback_c() {
extern "C" void __dt__17dEvLib_callback_cFv() {
    // NONMATCHING
}

/* 80CB25F8-80CB2600 000C78 0008+00 1/0 0/0 0/0 .text            eventStart__17dEvLib_callback_cFv
 */
// bool dEvLib_callback_c::eventStart() {
extern "C" bool eventStart__17dEvLib_callback_cFv() {
    return true;
}

/* 80CB2600-80CB2608 000C80 0008+00 2/0 0/0 0/0 .text            eventRun__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventRun() {
extern "C" bool eventRun__17dEvLib_callback_cFv() {
    return true;
}

/* 80CB2608-80CB2610 000C88 0008+00 2/0 0/0 0/0 .text            eventEnd__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventEnd() {
extern "C" bool eventEnd__17dEvLib_callback_cFv() {
    return true;
}

/* 80CB2610-80CB26A4 000C90 0094+00 2/1 0/0 0/0 .text            __dt__12daPoCandle_cFv */
daPoCandle_c::~daPoCandle_c() {
    // NONMATCHING
}

/* 80CB26E8-80CB26E8 000030 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
