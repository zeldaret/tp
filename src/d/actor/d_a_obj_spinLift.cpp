/**
 * @file d_a_obj_spinLift.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_spinLift.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__16daSpinLift_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__12daSpinLift_cFv();
extern "C" void CreateHeap__12daSpinLift_cFv();
extern "C" void create__12daSpinLift_cFv();
extern "C" void Execute__12daSpinLift_cFPPA3_A4_f();
extern "C" void moveLift__12daSpinLift_cFv();
extern "C" void init_modeWait__12daSpinLift_cFv();
extern "C" void modeWait__12daSpinLift_cFv();
extern "C" void init_modeUpMove__12daSpinLift_cFv();
extern "C" void modeUpMove__12daSpinLift_cFv();
extern "C" void init_modeDownMove__12daSpinLift_cFv();
extern "C" void modeDownMove__12daSpinLift_cFv();
extern "C" void init_modeMoveEnd__12daSpinLift_cFv();
extern "C" void modeMoveEnd__12daSpinLift_cFv();
extern "C" void Draw__12daSpinLift_cFv();
extern "C" void Delete__12daSpinLift_cFv();
extern "C" static void daSpinLift_Draw__FP12daSpinLift_c();
extern "C" static void daSpinLift_Execute__FP12daSpinLift_c();
extern "C" static void daSpinLift_Delete__FP12daSpinLift_c();
extern "C" static void daSpinLift_Create__FP10fopAc_ac_c();
extern "C" void __dt__16daSpinLift_HIO_cFv();
extern "C" void __sinit_d_a_obj_spinLift_cpp();
extern "C" extern char const* const d_a_obj_spinLift__stringBase0;

//
// External References:
//

extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
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
extern "C" void cLib_chaseF__FPfff();
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
/* 80CE4CBC-80CE4CC0 000000 0004+00 4/4 0/0 0/0 .rodata          @3637 */
SECTION_RODATA static u8 const lit_3637[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CE4CBC, &lit_3637);

/* 80CE4D30-80CE4D30 000074 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CE4D30 = "L4_N_Entr";
SECTION_DEAD static char const* const stringBase_80CE4D3A = "L4_N_SlpH";
SECTION_DEAD static char const* const stringBase_80CE4D44 = "L4_N_SlpL";
SECTION_DEAD static char const* const stringBase_80CE4D4E = "L4_Center";
SECTION_DEAD static char const* const stringBase_80CE4D58 = "L4_Switch";
SECTION_DEAD static char const* const stringBase_80CE4D62 = "L4_S_Slp";
SECTION_DEAD static char const* const stringBase_80CE4D6B = "L4_Wal_ZE";
SECTION_DEAD static char const* const stringBase_80CE4D75 = "L4_Wal_ZW";
SECTION_DEAD static char const* const stringBase_80CE4D7F = "L4_Wal_X";
#pragma pop

/* 80CE4DA8-80CE4DCC -00001 0024+00 3/3 0/0 0/0 .data            l_resNameIdx */
SECTION_DATA static void* l_resNameIdx[9] = {
    (void*)&d_a_obj_spinLift__stringBase0,
    (void*)(((char*)&d_a_obj_spinLift__stringBase0) + 0xA),
    (void*)(((char*)&d_a_obj_spinLift__stringBase0) + 0x14),
    (void*)(((char*)&d_a_obj_spinLift__stringBase0) + 0x1E),
    (void*)(((char*)&d_a_obj_spinLift__stringBase0) + 0x28),
    (void*)(((char*)&d_a_obj_spinLift__stringBase0) + 0x32),
    (void*)(((char*)&d_a_obj_spinLift__stringBase0) + 0x3B),
    (void*)(((char*)&d_a_obj_spinLift__stringBase0) + 0x45),
    (void*)(((char*)&d_a_obj_spinLift__stringBase0) + 0x4F),
};

/* 80CE4DCC-80CE4DD8 -00001 000C+00 0/1 0/0 0/0 .data            @3749 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3749[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__12daSpinLift_cFv,
};
#pragma pop

/* 80CE4DD8-80CE4DE4 -00001 000C+00 0/1 0/0 0/0 .data            @3750 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3750[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeUpMove__12daSpinLift_cFv,
};
#pragma pop

/* 80CE4DE4-80CE4DF0 -00001 000C+00 0/1 0/0 0/0 .data            @3751 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3751[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeDownMove__12daSpinLift_cFv,
};
#pragma pop

/* 80CE4DF0-80CE4DFC -00001 000C+00 0/1 0/0 0/0 .data            @3752 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3752[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeMoveEnd__12daSpinLift_cFv,
};
#pragma pop

/* 80CE4DFC-80CE4E2C 000074 0030+00 0/1 0/0 0/0 .data            mode_proc$3748 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80CE4E2C-80CE4E4C -00001 0020+00 1/0 0/0 0/0 .data            l_daSpinLift_Method */
static actor_method_class l_daSpinLift_Method = {
    (process_method_func)daSpinLift_Create__FP10fopAc_ac_c,
    (process_method_func)daSpinLift_Delete__FP12daSpinLift_c,
    (process_method_func)daSpinLift_Execute__FP12daSpinLift_c,
    0,
    (process_method_func)daSpinLift_Draw__FP12daSpinLift_c,
};

/* 80CE4E4C-80CE4E7C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SpinLift */
extern actor_process_profile_definition g_profile_Obj_SpinLift = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_SpinLift,      // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daSpinLift_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  512,                    // mPriority
  &l_daSpinLift_Method,   // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CE4E7C-80CE4EA4 0000F4 0028+00 1/1 0/0 0/0 .data            __vt__12daSpinLift_c */
SECTION_DATA extern void* __vt__12daSpinLift_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__12daSpinLift_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__12daSpinLift_cFPPA3_A4_f,
    (void*)Draw__12daSpinLift_cFv,
    (void*)Delete__12daSpinLift_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80CE4EA4-80CE4EB0 00011C 000C+00 2/2 0/0 0/0 .data            __vt__16daSpinLift_HIO_c */
SECTION_DATA extern void* __vt__16daSpinLift_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daSpinLift_HIO_cFv,
};

/* 80CE4EB0-80CE4EBC 000128 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80CE3DAC-80CE3DE4 0000EC 0038+00 1/1 0/0 0/0 .text            __ct__16daSpinLift_HIO_cFv */
daSpinLift_HIO_c::daSpinLift_HIO_c() {
    // NONMATCHING
}

/* 80CE3DE4-80CE3E2C 000124 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80CE3E2C-80CE3E9C 00016C 0070+00 2/2 0/0 0/0 .text            setBaseMtx__12daSpinLift_cFv */
void daSpinLift_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CE4CC0-80CE4CE4 000004 0024+00 1/1 0/0 0/0 .rodata          l_bmdIdx */
SECTION_RODATA static u8 const l_bmdIdx[36] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80CE4CC0, &l_bmdIdx);

/* 80CE3E9C-80CE3F1C 0001DC 0080+00 1/0 0/0 0/0 .text            CreateHeap__12daSpinLift_cFv */
void daSpinLift_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CE4CE4-80CE4D08 000028 0024+00 1/1 0/0 0/0 .rodata          l_dzbIdx */
SECTION_RODATA static u8 const l_dzbIdx[36] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07,
};
COMPILER_STRIP_GATE(0x80CE4CE4, &l_dzbIdx);

/* 80CE4D08-80CE4D0C 00004C 0004+00 1/1 0/0 0/0 .rodata          @3731 */
SECTION_RODATA static f32 const lit_3731 = 50.0f;
COMPILER_STRIP_GATE(0x80CE4D08, &lit_3731);

/* 80CE4D0C-80CE4D14 000050 0008+00 1/1 0/0 0/0 .rodata          @3733 */
SECTION_RODATA static u8 const lit_3733[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CE4D0C, &lit_3733);

/* 80CE4D14-80CE4D1C 000058 0008+00 1/1 0/0 0/0 .rodata          @3735 */
SECTION_RODATA static u8 const lit_3735[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CE4D14, &lit_3735);

/* 80CE3F1C-80CE40FC 00025C 01E0+00 1/1 0/0 0/0 .text            create__12daSpinLift_cFv */
void daSpinLift_c::create() {
    // NONMATCHING
}

/* 80CE40FC-80CE414C 00043C 0050+00 1/0 0/0 0/0 .text            Execute__12daSpinLift_cFPPA3_A4_f
 */
void daSpinLift_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CE4EC8-80CE4ED4 000008 000C+00 1/1 0/0 0/0 .bss             @3631 */
static u8 lit_3631[12];

/* 80CE4ED4-80CE4EE4 000014 0010+00 4/4 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[16];

/* 80CE4EE4-80CE4EE8 000024 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80CE4EE4[4];

/* 80CE414C-80CE4290 00048C 0144+00 1/1 0/0 0/0 .text            moveLift__12daSpinLift_cFv */
void daSpinLift_c::moveLift() {
    // NONMATCHING
}

/* 80CE4290-80CE429C 0005D0 000C+00 3/3 0/0 0/0 .text            init_modeWait__12daSpinLift_cFv */
void daSpinLift_c::init_modeWait() {
    // NONMATCHING
}

/* 80CE429C-80CE42A0 0005DC 0004+00 1/0 0/0 0/0 .text            modeWait__12daSpinLift_cFv */
void daSpinLift_c::modeWait() {
    /* empty function */
}

/* 80CE42A0-80CE42C4 0005E0 0024+00 1/1 0/0 0/0 .text            init_modeUpMove__12daSpinLift_cFv
 */
void daSpinLift_c::init_modeUpMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CE4D1C-80CE4D20 000060 0004+00 0/1 0/0 0/0 .rodata          @3877 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3877 = 30.0f;
COMPILER_STRIP_GATE(0x80CE4D1C, &lit_3877);
#pragma pop

/* 80CE4D20-80CE4D24 000064 0004+00 0/3 0/0 0/0 .rodata          @3878 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3878 = 1.0f;
COMPILER_STRIP_GATE(0x80CE4D20, &lit_3878);
#pragma pop

/* 80CE4D24-80CE4D28 000068 0004+00 0/2 0/0 0/0 .rodata          @3879 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3879 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CE4D24, &lit_3879);
#pragma pop

/* 80CE4D28-80CE4D2C 00006C 0004+00 0/3 0/0 0/0 .rodata          @3880 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3880 = -1.0f;
COMPILER_STRIP_GATE(0x80CE4D28, &lit_3880);
#pragma pop

/* 80CE42C4-80CE468C 000604 03C8+00 1/0 0/0 0/0 .text            modeUpMove__12daSpinLift_cFv */
void daSpinLift_c::modeUpMove() {
    // NONMATCHING
}

/* 80CE468C-80CE4698 0009CC 000C+00 1/1 0/0 0/0 .text            init_modeDownMove__12daSpinLift_cFv
 */
void daSpinLift_c::init_modeDownMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CE4D2C-80CE4D30 000070 0004+00 0/1 0/0 0/0 .rodata          @3907 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3907 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80CE4D2C, &lit_3907);
#pragma pop

/* 80CE4698-80CE4790 0009D8 00F8+00 1/0 0/0 0/0 .text            modeDownMove__12daSpinLift_cFv */
void daSpinLift_c::modeDownMove() {
    // NONMATCHING
}

/* 80CE4790-80CE4A9C 000AD0 030C+00 2/2 0/0 0/0 .text            init_modeMoveEnd__12daSpinLift_cFv
 */
void daSpinLift_c::init_modeMoveEnd() {
    // NONMATCHING
}

/* 80CE4A9C-80CE4AA0 000DDC 0004+00 1/0 0/0 0/0 .text            modeMoveEnd__12daSpinLift_cFv */
void daSpinLift_c::modeMoveEnd() {
    /* empty function */
}

/* 80CE4AA0-80CE4B44 000DE0 00A4+00 1/0 0/0 0/0 .text            Draw__12daSpinLift_cFv */
void daSpinLift_c::Draw() {
    // NONMATCHING
}

/* 80CE4B44-80CE4B84 000E84 0040+00 1/0 0/0 0/0 .text            Delete__12daSpinLift_cFv */
void daSpinLift_c::Delete() {
    // NONMATCHING
}

/* 80CE4B84-80CE4BB0 000EC4 002C+00 1/0 0/0 0/0 .text            daSpinLift_Draw__FP12daSpinLift_c
 */
static void daSpinLift_Draw(daSpinLift_c* param_0) {
    // NONMATCHING
}

/* 80CE4BB0-80CE4BD0 000EF0 0020+00 1/0 0/0 0/0 .text daSpinLift_Execute__FP12daSpinLift_c */
static void daSpinLift_Execute(daSpinLift_c* param_0) {
    // NONMATCHING
}

/* 80CE4BD0-80CE4BF0 000F10 0020+00 1/0 0/0 0/0 .text            daSpinLift_Delete__FP12daSpinLift_c
 */
static void daSpinLift_Delete(daSpinLift_c* param_0) {
    // NONMATCHING
}

/* 80CE4BF0-80CE4C10 000F30 0020+00 1/0 0/0 0/0 .text            daSpinLift_Create__FP10fopAc_ac_c
 */
static void daSpinLift_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80CE4C10-80CE4C6C 000F50 005C+00 2/1 0/0 0/0 .text            __dt__16daSpinLift_HIO_cFv */
daSpinLift_HIO_c::~daSpinLift_HIO_c() {
    // NONMATCHING
}

/* 80CE4C6C-80CE4CA8 000FAC 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_spinLift_cpp */
void __sinit_d_a_obj_spinLift_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80CE4C6C, __sinit_d_a_obj_spinLift_cpp);
#pragma pop

/* 80CE4D30-80CE4D30 000074 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
