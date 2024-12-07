/**
 * @file d_a_obj_waterGate.cpp
 * 
*/

#include "d/actor/d_a_obj_waterGate.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__14daWtGate_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__10daWtGate_cFv();
extern "C" void CreateHeap__10daWtGate_cFv();
extern "C" void create__10daWtGate_cFv();
extern "C" void Execute__10daWtGate_cFPPA3_A4_f();
extern "C" void move__10daWtGate_cFv();
extern "C" void init_modeWait__10daWtGate_cFv();
extern "C" void modeWait__10daWtGate_cFv();
extern "C" void init_modeOpen__10daWtGate_cFv();
extern "C" void modeOpen__10daWtGate_cFv();
extern "C" void init_modeClose__10daWtGate_cFv();
extern "C" void modeClose__10daWtGate_cFv();
extern "C" void init_modeEnd__10daWtGate_cFv();
extern "C" void modeEnd__10daWtGate_cFv();
extern "C" void Draw__10daWtGate_cFv();
extern "C" void Delete__10daWtGate_cFv();
extern "C" static void daWtGate_Draw__FP10daWtGate_c();
extern "C" static void daWtGate_Execute__FP10daWtGate_c();
extern "C" static void daWtGate_Delete__FP10daWtGate_c();
extern "C" static void daWtGate_Create__FP10fopAc_ac_c();
extern "C" void __dt__14daWtGate_HIO_cFv();
extern "C" void __sinit_d_a_obj_waterGate_cpp();
extern "C" extern char const* const d_a_obj_waterGate__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
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
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80D2C46C-80D2C470 000000 0004+00 3/3 0/0 0/0 .rodata          @3625 */
SECTION_RODATA static f32 const lit_3625 = 4.0f;
COMPILER_STRIP_GATE(0x80D2C46C, &lit_3625);

/* 80D2C498-80D2C4A4 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D2C4A4-80D2C4B8 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80D2C4B8-80D2C4C4 -00001 000C+00 0/1 0/0 0/0 .data            @3728 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3728[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__10daWtGate_cFv,
};
#pragma pop

/* 80D2C4C4-80D2C4D0 -00001 000C+00 0/1 0/0 0/0 .data            @3729 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3729[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeOpen__10daWtGate_cFv,
};
#pragma pop

/* 80D2C4D0-80D2C4DC -00001 000C+00 0/1 0/0 0/0 .data            @3730 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3730[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeClose__10daWtGate_cFv,
};
#pragma pop

/* 80D2C4DC-80D2C4E8 -00001 000C+00 0/1 0/0 0/0 .data            @3731 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3731[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeEnd__10daWtGate_cFv,
};
#pragma pop

/* 80D2C4E8-80D2C518 000050 0030+00 0/1 0/0 0/0 .data            mode_proc$3727 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80D2C518-80D2C538 -00001 0020+00 1/0 0/0 0/0 .data            l_daWtGate_Method */
static actor_method_class l_daWtGate_Method = {
    (process_method_func)daWtGate_Create__FP10fopAc_ac_c,
    (process_method_func)daWtGate_Delete__FP10daWtGate_c,
    (process_method_func)daWtGate_Execute__FP10daWtGate_c,
    0,
    (process_method_func)daWtGate_Draw__FP10daWtGate_c,
};

/* 80D2C538-80D2C568 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_WtGate */
extern actor_process_profile_definition g_profile_Obj_WtGate = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_WtGate,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daWtGate_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  522,                    // mPriority
  &l_daWtGate_Method,     // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80D2C568-80D2C590 0000D0 0028+00 1/1 0/0 0/0 .data            __vt__10daWtGate_c */
SECTION_DATA extern void* __vt__10daWtGate_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__10daWtGate_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__10daWtGate_cFPPA3_A4_f,
    (void*)Draw__10daWtGate_cFv,
    (void*)Delete__10daWtGate_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80D2C590-80D2C59C 0000F8 000C+00 2/2 0/0 0/0 .data            __vt__14daWtGate_HIO_c */
SECTION_DATA extern void* __vt__14daWtGate_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daWtGate_HIO_cFv,
};

/* 80D2C59C-80D2C5A8 000104 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80D2BB8C-80D2BBC4 0000EC 0038+00 1/1 0/0 0/0 .text            __ct__14daWtGate_HIO_cFv */
daWtGate_HIO_c::daWtGate_HIO_c() {
    // NONMATCHING
}

/* 80D2BBC4-80D2BC0C 000124 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80D2BC0C-80D2BC94 00016C 0088+00 2/2 0/0 0/0 .text            setBaseMtx__10daWtGate_cFv */
void daWtGate_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D2C48C-80D2C48C 000020 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D2C48C = "S_Zsuimon";
#pragma pop

/* 80D2BC94-80D2BD00 0001F4 006C+00 1/0 0/0 0/0 .text            CreateHeap__10daWtGate_cFv */
void daWtGate_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D2C470-80D2C474 000004 0004+00 1/1 0/0 0/0 .rodata          @3712 */
SECTION_RODATA static f32 const lit_3712 = 10.0f;
COMPILER_STRIP_GATE(0x80D2C470, &lit_3712);

/* 80D2C474-80D2C47C 000008 0008+00 1/1 0/0 0/0 .rodata          @3714 */
SECTION_RODATA static u8 const lit_3714[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D2C474, &lit_3714);

/* 80D2BD00-80D2BE7C 000260 017C+00 1/1 0/0 0/0 .text            create__10daWtGate_cFv */
void daWtGate_c::create() {
    // NONMATCHING
}

/* 80D2BE7C-80D2BECC 0003DC 0050+00 1/0 0/0 0/0 .text            Execute__10daWtGate_cFPPA3_A4_f */
void daWtGate_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D2C5B0-80D2C5BC 000008 000C+00 1/1 0/0 0/0 .bss             @3619 */
static u8 lit_3619[12];

/* 80D2C5BC-80D2C5C8 000014 000C+00 3/3 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[12];

/* 80D2C5C8-80D2C5CC 000020 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80D2C5C8[4];

/* 80D2BECC-80D2BF88 00042C 00BC+00 1/1 0/0 0/0 .text            move__10daWtGate_cFv */
void daWtGate_c::move() {
    // NONMATCHING
}

/* 80D2BF88-80D2BF94 0004E8 000C+00 3/3 0/0 0/0 .text            init_modeWait__10daWtGate_cFv */
void daWtGate_c::init_modeWait() {
    // NONMATCHING
}

/* 80D2BF94-80D2C010 0004F4 007C+00 1/0 0/0 0/0 .text            modeWait__10daWtGate_cFv */
void daWtGate_c::modeWait() {
    // NONMATCHING
}

/* 80D2C010-80D2C02C 000570 001C+00 1/1 0/0 0/0 .text            init_modeOpen__10daWtGate_cFv */
void daWtGate_c::init_modeOpen() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D2C47C-80D2C480 000010 0004+00 0/2 0/0 0/0 .rodata          @3781 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3781 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80D2C47C, &lit_3781);
#pragma pop

/* 80D2C480-80D2C484 000014 0004+00 0/2 0/0 0/0 .rodata          @3782 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3782 = 1.0f;
COMPILER_STRIP_GATE(0x80D2C480, &lit_3782);
#pragma pop

/* 80D2C484-80D2C488 000018 0004+00 0/2 0/0 0/0 .rodata          @3783 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3783[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D2C484, &lit_3783);
#pragma pop

/* 80D2C488-80D2C48C 00001C 0004+00 0/2 0/0 0/0 .rodata          @3784 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3784 = -1.0f;
COMPILER_STRIP_GATE(0x80D2C488, &lit_3784);
#pragma pop

/* 80D2C02C-80D2C134 00058C 0108+00 1/0 0/0 0/0 .text            modeOpen__10daWtGate_cFv */
void daWtGate_c::modeOpen() {
    // NONMATCHING
}

/* 80D2C134-80D2C150 000694 001C+00 1/1 0/0 0/0 .text            init_modeClose__10daWtGate_cFv */
void daWtGate_c::init_modeClose() {
    // NONMATCHING
}

/* 80D2C150-80D2C250 0006B0 0100+00 1/0 0/0 0/0 .text            modeClose__10daWtGate_cFv */
void daWtGate_c::modeClose() {
    // NONMATCHING
}

/* 80D2C250-80D2C25C 0007B0 000C+00 1/1 0/0 0/0 .text            init_modeEnd__10daWtGate_cFv */
void daWtGate_c::init_modeEnd() {
    // NONMATCHING
}

/* 80D2C25C-80D2C260 0007BC 0004+00 1/0 0/0 0/0 .text            modeEnd__10daWtGate_cFv */
void daWtGate_c::modeEnd() {
    /* empty function */
}

/* 80D2C260-80D2C304 0007C0 00A4+00 1/0 0/0 0/0 .text            Draw__10daWtGate_cFv */
void daWtGate_c::Draw() {
    // NONMATCHING
}

/* 80D2C304-80D2C334 000864 0030+00 1/0 0/0 0/0 .text            Delete__10daWtGate_cFv */
void daWtGate_c::Delete() {
    // NONMATCHING
}

/* 80D2C334-80D2C360 000894 002C+00 1/0 0/0 0/0 .text            daWtGate_Draw__FP10daWtGate_c */
static void daWtGate_Draw(daWtGate_c* param_0) {
    // NONMATCHING
}

/* 80D2C360-80D2C380 0008C0 0020+00 1/0 0/0 0/0 .text            daWtGate_Execute__FP10daWtGate_c */
static void daWtGate_Execute(daWtGate_c* param_0) {
    // NONMATCHING
}

/* 80D2C380-80D2C3A0 0008E0 0020+00 1/0 0/0 0/0 .text            daWtGate_Delete__FP10daWtGate_c */
static void daWtGate_Delete(daWtGate_c* param_0) {
    // NONMATCHING
}

/* 80D2C3A0-80D2C3C0 000900 0020+00 1/0 0/0 0/0 .text            daWtGate_Create__FP10fopAc_ac_c */
static void daWtGate_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80D2C3C0-80D2C41C 000920 005C+00 2/1 0/0 0/0 .text            __dt__14daWtGate_HIO_cFv */
daWtGate_HIO_c::~daWtGate_HIO_c() {
    // NONMATCHING
}

/* 80D2C41C-80D2C458 00097C 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_waterGate_cpp */
void __sinit_d_a_obj_waterGate_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80D2C41C, __sinit_d_a_obj_waterGate_cpp);
#pragma pop

/* 80D2C48C-80D2C48C 000020 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
