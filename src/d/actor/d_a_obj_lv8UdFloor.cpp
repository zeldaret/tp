/**
 * @file d_a_obj_lv8UdFloor.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv8UdFloor.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__15daUdFloor_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__11daUdFloor_cFv();
extern "C" void CreateHeap__11daUdFloor_cFv();
extern "C" void create__11daUdFloor_cFv();
extern "C" void Execute__11daUdFloor_cFPPA3_A4_f();
extern "C" void moveLift__11daUdFloor_cFv();
extern "C" void init_modeWait__11daUdFloor_cFv();
extern "C" void modeWait__11daUdFloor_cFv();
extern "C" void init_modeUpMoveInit__11daUdFloor_cFv();
extern "C" void modeUpMoveInit__11daUdFloor_cFv();
extern "C" void colorAnm__11daUdFloor_cFi();
extern "C" void init_modeUpMove__11daUdFloor_cFv();
extern "C" void modeUpMove__11daUdFloor_cFv();
extern "C" void init_modeDownMoveInit__11daUdFloor_cFv();
extern "C" void modeDownMoveInit__11daUdFloor_cFv();
extern "C" void init_modeDownMove__11daUdFloor_cFv();
extern "C" void modeDownMove__11daUdFloor_cFv();
extern "C" void Draw__11daUdFloor_cFv();
extern "C" void Delete__11daUdFloor_cFv();
extern "C" static void daUdFloor_Draw__FP11daUdFloor_c();
extern "C" static void daUdFloor_Execute__FP11daUdFloor_c();
extern "C" static void daUdFloor_Delete__FP11daUdFloor_c();
extern "C" static void daUdFloor_Create__FP10fopAc_ac_c();
extern "C" void __dt__15daUdFloor_HIO_cFv();
extern "C" void __sinit_d_a_obj_lv8UdFloor_cpp();
extern "C" extern char const* const d_a_obj_lv8UdFloor__stringBase0;

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
extern "C" void cLib_chaseF__FPfff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
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
/* 80C8CBF0-80C8CBF4 000000 0004+00 5/5 0/0 0/0 .rodata          @3628 */
SECTION_RODATA static u8 const lit_3628[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C8CBF0, &lit_3628);

/* 80C8CC34-80C8CC34 000044 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C8CC34 = "L8Step";
SECTION_DEAD static char const* const stringBase_80C8CC3B = "L8StepX";
#pragma pop

/* 80C8CC64-80C8CC6C -00001 0008+00 3/3 0/0 0/0 .data            l_resNameIdx */
SECTION_DATA static void* l_resNameIdx[2] = {
    (void*)&d_a_obj_lv8UdFloor__stringBase0,
    (void*)(((char*)&d_a_obj_lv8UdFloor__stringBase0) + 0x7),
};

/* 80C8CC6C-80C8CC78 -00001 000C+00 0/1 0/0 0/0 .data            @3736 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3736[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__11daUdFloor_cFv,
};
#pragma pop

/* 80C8CC78-80C8CC84 -00001 000C+00 0/1 0/0 0/0 .data            @3737 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3737[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeUpMoveInit__11daUdFloor_cFv,
};
#pragma pop

/* 80C8CC84-80C8CC90 -00001 000C+00 0/1 0/0 0/0 .data            @3738 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3738[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeUpMove__11daUdFloor_cFv,
};
#pragma pop

/* 80C8CC90-80C8CC9C -00001 000C+00 0/1 0/0 0/0 .data            @3739 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3739[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeDownMoveInit__11daUdFloor_cFv,
};
#pragma pop

/* 80C8CC9C-80C8CCA8 -00001 000C+00 0/1 0/0 0/0 .data            @3740 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3740[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeDownMove__11daUdFloor_cFv,
};
#pragma pop

/* 80C8CCA8-80C8CCE4 000064 003C+00 0/1 0/0 0/0 .data            mode_proc$3735 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mode_proc[60] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80C8CCE4-80C8CD04 -00001 0020+00 1/0 0/0 0/0 .data            l_daUdFloor_Method */
static actor_method_class l_daUdFloor_Method = {
    (process_method_func)daUdFloor_Create__FP10fopAc_ac_c,
    (process_method_func)daUdFloor_Delete__FP11daUdFloor_c,
    (process_method_func)daUdFloor_Execute__FP11daUdFloor_c,
    0,
    (process_method_func)daUdFloor_Draw__FP11daUdFloor_c,
};

/* 80C8CD04-80C8CD34 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv8UdFloor */
extern actor_process_profile_definition g_profile_Obj_Lv8UdFloor = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Lv8UdFloor,    // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daUdFloor_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  646,                    // mPriority
  &l_daUdFloor_Method,    // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C8CD34-80C8CD5C 0000F0 0028+00 1/1 0/0 0/0 .data            __vt__11daUdFloor_c */
SECTION_DATA extern void* __vt__11daUdFloor_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__11daUdFloor_cFv,
    (void*)Create__16dBgS_MoveBgActorFv,
    (void*)Execute__11daUdFloor_cFPPA3_A4_f,
    (void*)Draw__11daUdFloor_cFv,
    (void*)Delete__11daUdFloor_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C8CD5C-80C8CD68 000118 000C+00 2/2 0/0 0/0 .data            __vt__15daUdFloor_HIO_c */
SECTION_DATA extern void* __vt__15daUdFloor_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daUdFloor_HIO_cFv,
};

/* 80C8CD68-80C8CD74 000124 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80C8BD0C-80C8BD80 0000EC 0074+00 1/1 0/0 0/0 .text            __ct__15daUdFloor_HIO_cFv */
daUdFloor_HIO_c::daUdFloor_HIO_c() {
    // NONMATCHING
}

/* 80C8BD80-80C8BDC8 000160 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80C8BDC8-80C8BE64 0001A8 009C+00 2/2 0/0 0/0 .text            setBaseMtx__11daUdFloor_cFv */
void daUdFloor_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C8CBF4-80C8CBFC 000004 0008+00 1/1 0/0 0/0 .rodata          l_bmdIdx */
SECTION_RODATA static u8 const l_bmdIdx[8] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80C8CBF4, &l_bmdIdx);

/* 80C8BE64-80C8BEE4 000244 0080+00 1/0 0/0 0/0 .text            CreateHeap__11daUdFloor_cFv */
void daUdFloor_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C8CBFC-80C8CC04 00000C 0008+00 0/1 0/0 0/0 .rodata          l_dzbIdx */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_dzbIdx[8] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07,
};
COMPILER_STRIP_GATE(0x80C8CBFC, &l_dzbIdx);
#pragma pop

/* 80C8CC04-80C8CC0C 000014 0008+00 0/1 0/0 0/0 .rodata          l_heap_size */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_heap_size[8] = {
    0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x14, 0x00,
};
COMPILER_STRIP_GATE(0x80C8CC04, &l_heap_size);
#pragma pop

/* 80C8CC0C-80C8CC10 00001C 0004+00 0/1 0/0 0/0 .rodata          @3718 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3718 = 50.0f;
COMPILER_STRIP_GATE(0x80C8CC0C, &lit_3718);
#pragma pop

/* 80C8CC10-80C8CC18 000020 0008+00 0/1 0/0 0/0 .rodata          @3720 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3720[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C8CC10, &lit_3720);
#pragma pop

/* 80C8CC18-80C8CC20 000028 0008+00 1/2 0/0 0/0 .rodata          @3722 */
SECTION_RODATA static u8 const lit_3722[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C8CC18, &lit_3722);

/* 80C8CD80-80C8CD8C 000008 000C+00 1/1 0/0 0/0 .bss             @3622 */
static u8 lit_3622[12];

/* 80C8CD8C-80C8CDA4 000014 0018+00 7/7 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[24];

/* 80C8BEE4-80C8C0DC 0002C4 01F8+00 1/1 0/0 0/0 .text            create__11daUdFloor_cFv */
void daUdFloor_c::create() {
    // NONMATCHING
}

/* 80C8C0DC-80C8C12C 0004BC 0050+00 1/0 0/0 0/0 .text            Execute__11daUdFloor_cFPPA3_A4_f */
void daUdFloor_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C8CDA4-80C8CDA8 00002C 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80C8CDA4[4];

/* 80C8C12C-80C8C264 00050C 0138+00 1/1 0/0 0/0 .text            moveLift__11daUdFloor_cFv */
void daUdFloor_c::moveLift() {
    // NONMATCHING
}

/* 80C8C264-80C8C270 000644 000C+00 3/3 0/0 0/0 .text            init_modeWait__11daUdFloor_cFv */
void daUdFloor_c::init_modeWait() {
    // NONMATCHING
}

/* 80C8C270-80C8C274 000650 0004+00 1/0 0/0 0/0 .text            modeWait__11daUdFloor_cFv */
void daUdFloor_c::modeWait() {
    /* empty function */
}

/* ############################################################################################## */
/* 80C8CC20-80C8CC24 000030 0004+00 4/6 0/0 0/0 .rodata          @3777 */
SECTION_RODATA static f32 const lit_3777 = 1.0f;
COMPILER_STRIP_GATE(0x80C8CC20, &lit_3777);

/* 80C8CC24-80C8CC28 000034 0004+00 3/5 0/0 0/0 .rodata          @3778 */
SECTION_RODATA static f32 const lit_3778 = -1.0f;
COMPILER_STRIP_GATE(0x80C8CC24, &lit_3778);

/* 80C8C274-80C8C310 000654 009C+00 1/1 0/0 0/0 .text init_modeUpMoveInit__11daUdFloor_cFv */
void daUdFloor_c::init_modeUpMoveInit() {
    // NONMATCHING
}

/* 80C8C310-80C8C354 0006F0 0044+00 1/0 0/0 0/0 .text            modeUpMoveInit__11daUdFloor_cFv */
void daUdFloor_c::modeUpMoveInit() {
    // NONMATCHING
}

/* 80C8C354-80C8C5E4 000734 0290+00 2/2 0/0 0/0 .text            colorAnm__11daUdFloor_cFi */
void daUdFloor_c::colorAnm(int param_0) {
    // NONMATCHING
}

/* 80C8C5E4-80C8C68C 0009C4 00A8+00 1/1 0/0 0/0 .text            init_modeUpMove__11daUdFloor_cFv */
void daUdFloor_c::init_modeUpMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C8CC28-80C8CC2C 000038 0004+00 0/1 0/0 0/0 .rodata          @3856 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3856 = 30.0f;
COMPILER_STRIP_GATE(0x80C8CC28, &lit_3856);
#pragma pop

/* 80C8CC2C-80C8CC30 00003C 0004+00 0/2 0/0 0/0 .rodata          @3857 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3857 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C8CC2C, &lit_3857);
#pragma pop

/* 80C8C68C-80C8C7F8 000A6C 016C+00 1/0 0/0 0/0 .text            modeUpMove__11daUdFloor_cFv */
void daUdFloor_c::modeUpMove() {
    // NONMATCHING
}

/* 80C8C7F8-80C8C81C 000BD8 0024+00 1/1 0/0 0/0 .text init_modeDownMoveInit__11daUdFloor_cFv */
void daUdFloor_c::init_modeDownMoveInit() {
    // NONMATCHING
}

/* 80C8C81C-80C8C860 000BFC 0044+00 1/0 0/0 0/0 .text            modeDownMoveInit__11daUdFloor_cFv
 */
void daUdFloor_c::modeDownMoveInit() {
    // NONMATCHING
}

/* 80C8C860-80C8C8E4 000C40 0084+00 1/1 0/0 0/0 .text            init_modeDownMove__11daUdFloor_cFv
 */
void daUdFloor_c::init_modeDownMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C8CC30-80C8CC34 000040 0004+00 0/1 0/0 0/0 .rodata          @3892 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3892 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C8CC30, &lit_3892);
#pragma pop

/* 80C8C8E4-80C8C994 000CC4 00B0+00 1/0 0/0 0/0 .text            modeDownMove__11daUdFloor_cFv */
void daUdFloor_c::modeDownMove() {
    // NONMATCHING
}

/* 80C8C994-80C8CA78 000D74 00E4+00 1/0 0/0 0/0 .text            Draw__11daUdFloor_cFv */
void daUdFloor_c::Draw() {
    // NONMATCHING
}

/* 80C8CA78-80C8CAB8 000E58 0040+00 1/0 0/0 0/0 .text            Delete__11daUdFloor_cFv */
void daUdFloor_c::Delete() {
    // NONMATCHING
}

/* 80C8CAB8-80C8CAE4 000E98 002C+00 1/0 0/0 0/0 .text            daUdFloor_Draw__FP11daUdFloor_c */
static void daUdFloor_Draw(daUdFloor_c* param_0) {
    // NONMATCHING
}

/* 80C8CAE4-80C8CB04 000EC4 0020+00 1/0 0/0 0/0 .text            daUdFloor_Execute__FP11daUdFloor_c
 */
static void daUdFloor_Execute(daUdFloor_c* param_0) {
    // NONMATCHING
}

/* 80C8CB04-80C8CB24 000EE4 0020+00 1/0 0/0 0/0 .text            daUdFloor_Delete__FP11daUdFloor_c
 */
static void daUdFloor_Delete(daUdFloor_c* param_0) {
    // NONMATCHING
}

/* 80C8CB24-80C8CB44 000F04 0020+00 1/0 0/0 0/0 .text            daUdFloor_Create__FP10fopAc_ac_c */
static void daUdFloor_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C8CB44-80C8CBA0 000F24 005C+00 2/1 0/0 0/0 .text            __dt__15daUdFloor_HIO_cFv */
daUdFloor_HIO_c::~daUdFloor_HIO_c() {
    // NONMATCHING
}

/* 80C8CBA0-80C8CBDC 000F80 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_lv8UdFloor_cpp */
void __sinit_d_a_obj_lv8UdFloor_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C8CBA0, __sinit_d_a_obj_lv8UdFloor_cpp);
#pragma pop

/* 80C8CC34-80C8CC34 000044 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
