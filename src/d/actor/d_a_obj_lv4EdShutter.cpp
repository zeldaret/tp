/**
 * @file d_a_obj_lv4EdShutter.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv4EdShutter.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__20daLv4EdShutter_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__16daLv4EdShutter_cFv();
extern "C" void CreateHeap__16daLv4EdShutter_cFv();
extern "C" void create__16daLv4EdShutter_cFv();
extern "C" void Execute__16daLv4EdShutter_cFPPA3_A4_f();
extern "C" void move__16daLv4EdShutter_cFv();
extern "C" void init_modeWait__16daLv4EdShutter_cFv();
extern "C" void modeWait__16daLv4EdShutter_cFv();
extern "C" void init_modeOpen__16daLv4EdShutter_cFv();
extern "C" void modeOpen__16daLv4EdShutter_cFv();
extern "C" void init_modeClose__16daLv4EdShutter_cFv();
extern "C" void modeClose__16daLv4EdShutter_cFv();
extern "C" void init_modeEnd__16daLv4EdShutter_cFv();
extern "C" void modeEnd__16daLv4EdShutter_cFv();
extern "C" void eventStart__16daLv4EdShutter_cFv();
extern "C" void Draw__16daLv4EdShutter_cFv();
extern "C" void Delete__16daLv4EdShutter_cFv();
extern "C" static void daLv4EdShutter_Draw__FP16daLv4EdShutter_c();
extern "C" static void daLv4EdShutter_Execute__FP16daLv4EdShutter_c();
extern "C" static void daLv4EdShutter_Delete__FP16daLv4EdShutter_c();
extern "C" static void daLv4EdShutter_Create__FP10fopAc_ac_c();
extern "C" void __dt__20daLv4EdShutter_HIO_cFv();
extern "C" void __sinit_d_a_obj_lv4EdShutter_cpp();
extern "C" static void func_80C5E7C4();
extern "C" static void func_80C5E7CC();
extern "C" void __dt__17dEvLib_callback_cFv();
extern "C" bool eventStart__17dEvLib_callback_cFv();
extern "C" bool eventRun__17dEvLib_callback_cFv();
extern "C" bool eventEnd__17dEvLib_callback_cFv();
extern "C" void __dt__16daLv4EdShutter_cFv();
extern "C" extern char const* const d_a_obj_lv4EdShutter__stringBase0;

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
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void orderEvent__17dEvLib_callback_cFiii();
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
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C5E8DC-80C5E8E0 000000 0004+00 3/3 0/0 0/0 .rodata          @3634 */
SECTION_RODATA static f32 const lit_3634 = 80.0f;
COMPILER_STRIP_GATE(0x80C5E8DC, &lit_3634);

/* 80C5E8E0-80C5E8E4 000004 0004+00 1/1 0/0 0/0 .rodata          @3635 */
SECTION_RODATA static f32 const lit_3635 = 40.0f;
COMPILER_STRIP_GATE(0x80C5E8E0, &lit_3635);

/* 80C5E924-80C5E930 -00001 000C+00 0/1 0/0 0/0 .data            @3721 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3721[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__16daLv4EdShutter_cFv,
};
#pragma pop

/* 80C5E930-80C5E93C -00001 000C+00 0/1 0/0 0/0 .data            @3722 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3722[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeOpen__16daLv4EdShutter_cFv,
};
#pragma pop

/* 80C5E93C-80C5E948 -00001 000C+00 0/1 0/0 0/0 .data            @3723 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3723[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeClose__16daLv4EdShutter_cFv,
};
#pragma pop

/* 80C5E948-80C5E954 -00001 000C+00 0/1 0/0 0/0 .data            @3724 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3724[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeEnd__16daLv4EdShutter_cFv,
};
#pragma pop

/* 80C5E954-80C5E984 000050 0030+00 0/1 0/0 0/0 .data            mode_proc$3720 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C5E984-80C5E9A4 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv4EdShutter_Method */
static actor_method_class l_daLv4EdShutter_Method = {
    (process_method_func)daLv4EdShutter_Create__FP10fopAc_ac_c,
    (process_method_func)daLv4EdShutter_Delete__FP16daLv4EdShutter_c,
    (process_method_func)daLv4EdShutter_Execute__FP16daLv4EdShutter_c,
    0,
    (process_method_func)daLv4EdShutter_Draw__FP16daLv4EdShutter_c,
};

/* 80C5E9A4-80C5E9D4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv4EdShutter */
extern actor_process_profile_definition g_profile_Obj_Lv4EdShutter = {
  fpcLy_CURRENT_e,          // mLayerID
  3,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_Obj_Lv4EdShutter,    // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daLv4EdShutter_c), // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  636,                      // mPriority
  &l_daLv4EdShutter_Method, // sub_method
  0x00040100,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80C5E9D4-80C5E9EC 0000D0 0018+00 3/3 0/0 0/0 .data            __vt__17dEvLib_callback_c */
SECTION_DATA extern void* __vt__17dEvLib_callback_c[6] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17dEvLib_callback_cFv,
    (void*)eventStart__17dEvLib_callback_cFv,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
};

/* 80C5E9EC-80C5EA34 0000E8 0048+00 2/2 0/0 0/0 .data            __vt__16daLv4EdShutter_c */
SECTION_DATA extern void* __vt__16daLv4EdShutter_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__16daLv4EdShutter_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__16daLv4EdShutter_cFPPA3_A4_f,
    (void*)Draw__16daLv4EdShutter_cFv,
    (void*)Delete__16daLv4EdShutter_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C5E7CC,
    (void*)func_80C5E7C4,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
    (void*)__dt__16daLv4EdShutter_cFv,
    (void*)eventStart__16daLv4EdShutter_cFv,
};

/* 80C5EA34-80C5EA40 000130 000C+00 2/2 0/0 0/0 .data            __vt__20daLv4EdShutter_HIO_c */
SECTION_DATA extern void* __vt__20daLv4EdShutter_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__20daLv4EdShutter_HIO_cFv,
};

/* 80C5EA40-80C5EA4C 00013C 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80C5DDAC-80C5DDF0 0000EC 0044+00 1/1 0/0 0/0 .text            __ct__20daLv4EdShutter_HIO_cFv */
daLv4EdShutter_HIO_c::daLv4EdShutter_HIO_c() {
    // NONMATCHING
}

/* 80C5DDF0-80C5DE38 000130 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80C5DE38-80C5DEC8 000178 0090+00 2/2 0/0 0/0 .text            setBaseMtx__16daLv4EdShutter_cFv */
void daLv4EdShutter_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C5E8FC-80C5E8FC 000020 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C5E8FC = "P_AShtr";
#pragma pop

/* 80C5DEC8-80C5DF34 000208 006C+00 1/0 0/0 0/0 .text            CreateHeap__16daLv4EdShutter_cFv */
void daLv4EdShutter_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C5E8E4-80C5E8E8 000008 0004+00 1/2 0/0 0/0 .rodata          @3704 */
SECTION_RODATA static f32 const lit_3704 = -300.0f;
COMPILER_STRIP_GATE(0x80C5E8E4, &lit_3704);

/* 80C5DF34-80C5E0A4 000274 0170+00 1/1 0/0 0/0 .text            create__16daLv4EdShutter_cFv */
void daLv4EdShutter_c::create() {
    // NONMATCHING
}

/* 80C5E0A4-80C5E0F4 0003E4 0050+00 1/0 0/0 0/0 .text Execute__16daLv4EdShutter_cFPPA3_A4_f */
void daLv4EdShutter_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C5EA58-80C5EA64 000008 000C+00 1/1 0/0 0/0 .bss             @3628 */
static u8 lit_3628[12];

/* 80C5EA64-80C5EA74 000014 0010+00 3/3 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[16];

/* 80C5EA74-80C5EA78 000024 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80C5EA74[4];

/* 80C5E0F4-80C5E1B0 000434 00BC+00 1/1 0/0 0/0 .text            move__16daLv4EdShutter_cFv */
void daLv4EdShutter_c::move() {
    // NONMATCHING
}

/* 80C5E1B0-80C5E1C8 0004F0 0018+00 3/3 0/0 0/0 .text            init_modeWait__16daLv4EdShutter_cFv
 */
void daLv4EdShutter_c::init_modeWait() {
    // NONMATCHING
}

/* 80C5E1C8-80C5E2E0 000508 0118+00 1/0 0/0 0/0 .text            modeWait__16daLv4EdShutter_cFv */
void daLv4EdShutter_c::modeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C5E8E8-80C5E8EC 00000C 0004+00 2/2 0/0 0/0 .rodata          @3787 */
SECTION_RODATA static f32 const lit_3787 = 1.0f;
COMPILER_STRIP_GATE(0x80C5E8E8, &lit_3787);

/* 80C5E8EC-80C5E8F0 000010 0004+00 2/2 0/0 0/0 .rodata          @3788 */
SECTION_RODATA static f32 const lit_3788 = -1.0f;
COMPILER_STRIP_GATE(0x80C5E8EC, &lit_3788);

/* 80C5E2E0-80C5E394 000620 00B4+00 1/1 0/0 0/0 .text            init_modeOpen__16daLv4EdShutter_cFv
 */
void daLv4EdShutter_c::init_modeOpen() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C5E8F0-80C5E8F4 000014 0004+00 0/2 0/0 0/0 .rodata          @3816 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3816 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C5E8F0, &lit_3816);
#pragma pop

/* 80C5E8F4-80C5E8F8 000018 0004+00 0/2 0/0 0/0 .rodata          @3817 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3817 = 5.0f;
COMPILER_STRIP_GATE(0x80C5E8F4, &lit_3817);
#pragma pop

/* 80C5E8F8-80C5E8FC 00001C 0004+00 0/2 0/0 0/0 .rodata          @3818 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3818[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C5E8F8, &lit_3818);
#pragma pop

/* 80C5E394-80C5E464 0006D4 00D0+00 1/0 0/0 0/0 .text            modeOpen__16daLv4EdShutter_cFv */
void daLv4EdShutter_c::modeOpen() {
    // NONMATCHING
}

/* 80C5E464-80C5E518 0007A4 00B4+00 1/1 0/0 0/0 .text init_modeClose__16daLv4EdShutter_cFv */
void daLv4EdShutter_c::init_modeClose() {
    // NONMATCHING
}

/* 80C5E518-80C5E584 000858 006C+00 1/0 0/0 0/0 .text            modeClose__16daLv4EdShutter_cFv */
void daLv4EdShutter_c::modeClose() {
    // NONMATCHING
}

/* 80C5E584-80C5E590 0008C4 000C+00 2/2 0/0 0/0 .text            init_modeEnd__16daLv4EdShutter_cFv
 */
void daLv4EdShutter_c::init_modeEnd() {
    // NONMATCHING
}

/* 80C5E590-80C5E594 0008D0 0004+00 1/0 0/0 0/0 .text            modeEnd__16daLv4EdShutter_cFv */
void daLv4EdShutter_c::modeEnd() {
    /* empty function */
}

/* 80C5E594-80C5E5CC 0008D4 0038+00 2/1 0/0 0/0 .text            eventStart__16daLv4EdShutter_cFv */
void daLv4EdShutter_c::eventStart() {
    // NONMATCHING
}

/* 80C5E5CC-80C5E670 00090C 00A4+00 1/0 0/0 0/0 .text            Draw__16daLv4EdShutter_cFv */
void daLv4EdShutter_c::Draw() {
    // NONMATCHING
}

/* 80C5E670-80C5E6A0 0009B0 0030+00 1/0 0/0 0/0 .text            Delete__16daLv4EdShutter_cFv */
void daLv4EdShutter_c::Delete() {
    // NONMATCHING
}

/* 80C5E6A0-80C5E6CC 0009E0 002C+00 1/0 0/0 0/0 .text daLv4EdShutter_Draw__FP16daLv4EdShutter_c */
static void daLv4EdShutter_Draw(daLv4EdShutter_c* param_0) {
    // NONMATCHING
}

/* 80C5E6CC-80C5E6EC 000A0C 0020+00 1/0 0/0 0/0 .text daLv4EdShutter_Execute__FP16daLv4EdShutter_c
 */
static void daLv4EdShutter_Execute(daLv4EdShutter_c* param_0) {
    // NONMATCHING
}

/* 80C5E6EC-80C5E70C 000A2C 0020+00 1/0 0/0 0/0 .text daLv4EdShutter_Delete__FP16daLv4EdShutter_c
 */
static void daLv4EdShutter_Delete(daLv4EdShutter_c* param_0) {
    // NONMATCHING
}

/* 80C5E70C-80C5E72C 000A4C 0020+00 1/0 0/0 0/0 .text daLv4EdShutter_Create__FP10fopAc_ac_c */
static void daLv4EdShutter_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C5E72C-80C5E788 000A6C 005C+00 2/1 0/0 0/0 .text            __dt__20daLv4EdShutter_HIO_cFv */
daLv4EdShutter_HIO_c::~daLv4EdShutter_HIO_c() {
    // NONMATCHING
}

/* 80C5E788-80C5E7C4 000AC8 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_lv4EdShutter_cpp */
void __sinit_d_a_obj_lv4EdShutter_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C5E788, __sinit_d_a_obj_lv4EdShutter_cpp);
#pragma pop

/* 80C5E7C4-80C5E7CC 000B04 0008+00 1/0 0/0 0/0 .text @1448@eventStart__16daLv4EdShutter_cFv */
static void func_80C5E7C4() {
    // NONMATCHING
}

/* 80C5E7CC-80C5E7D4 000B0C 0008+00 1/0 0/0 0/0 .text            @1448@__dt__16daLv4EdShutter_cFv */
static void func_80C5E7CC() {
    // NONMATCHING
}

/* 80C5E7D4-80C5E81C 000B14 0048+00 1/0 0/0 0/0 .text            __dt__17dEvLib_callback_cFv */
// dEvLib_callback_c::~dEvLib_callback_c() {
extern "C" void __dt__17dEvLib_callback_cFv() {
    // NONMATCHING
}

/* 80C5E81C-80C5E824 000B5C 0008+00 1/0 0/0 0/0 .text            eventStart__17dEvLib_callback_cFv
 */
// bool dEvLib_callback_c::eventStart() {
extern "C" bool eventStart__17dEvLib_callback_cFv() {
    return true;
}

/* 80C5E824-80C5E82C 000B64 0008+00 2/0 0/0 0/0 .text            eventRun__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventRun() {
extern "C" bool eventRun__17dEvLib_callback_cFv() {
    return true;
}

/* 80C5E82C-80C5E834 000B6C 0008+00 2/0 0/0 0/0 .text            eventEnd__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventEnd() {
extern "C" bool eventEnd__17dEvLib_callback_cFv() {
    return true;
}

/* 80C5E834-80C5E8C8 000B74 0094+00 2/1 0/0 0/0 .text            __dt__16daLv4EdShutter_cFv */
daLv4EdShutter_c::~daLv4EdShutter_c() {
    // NONMATCHING
}

/* 80C5E8FC-80C5E8FC 000020 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
