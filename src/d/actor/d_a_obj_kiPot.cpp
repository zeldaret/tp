/**
 * @file d_a_obj_kiPot.cpp
 * 
*/

#include "d/actor/d_a_obj_kiPot.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__13daKiPot_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__9daKiPot_cFv();
extern "C" void create__9daKiPot_cFv();
extern "C" void Execute__9daKiPot_cFv();
extern "C" void procMain__9daKiPot_cFv();
extern "C" void init_modeWait__9daKiPot_cFv();
extern "C" void modeWait__9daKiPot_cFv();
extern "C" void chkEvent__9daKiPot_cFv();
extern "C" bool Draw__9daKiPot_cFv();
extern "C" bool Delete__9daKiPot_cFv();
extern "C" static void daKiPot_Draw__FP9daKiPot_c();
extern "C" static void daKiPot_Execute__FP9daKiPot_c();
extern "C" static void daKiPot_Delete__FP9daKiPot_c();
extern "C" static void daKiPot_Create__FP10fopAc_ac_c();
extern "C" void __dt__13daKiPot_HIO_cFv();
extern "C" void __sinit_d_a_obj_kiPot_cpp();

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void request__11dAttCatch_cFP10fopAc_ac_cUcfffsi();
extern "C" void __dl__FPv();
extern "C" void __ptmf_scall();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C451A4-80C451BC 000000 0018+00 1/1 0/0 0/0 .data            l_cull_box */
SECTION_DATA static u8 l_cull_box[24] = {
    0xC2, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC2, 0x48, 0x00, 0x00,
    0x42, 0x48, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
};

/* 80C451BC-80C451C8 -00001 000C+00 1/1 0/0 0/0 .data            @3688 */
SECTION_DATA static void* lit_3688[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)modeWait__9daKiPot_cFv,
};

/* 80C451C8-80C451D4 000024 000C+00 1/1 0/0 0/0 .data            mode_proc$3687 */
SECTION_DATA static u8 mode_proc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80C451D4-80C451F4 -00001 0020+00 1/0 0/0 0/0 .data            l_daKiPot_Method */
static actor_method_class l_daKiPot_Method = {
    (process_method_func)daKiPot_Create__FP10fopAc_ac_c,
    (process_method_func)daKiPot_Delete__FP9daKiPot_c,
    (process_method_func)daKiPot_Execute__FP9daKiPot_c,
    0,
    (process_method_func)daKiPot_Draw__FP9daKiPot_c,
};

/* 80C451F4-80C45224 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_KiPot */
extern actor_process_profile_definition g_profile_Obj_KiPot = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_KiPot,         // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daKiPot_c),      // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  517,                    // mPriority
  &l_daKiPot_Method,      // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C45224-80C45230 000080 000C+00 2/2 0/0 0/0 .data            __vt__13daKiPot_HIO_c */
SECTION_DATA extern void* __vt__13daKiPot_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daKiPot_HIO_cFv,
};

/* 80C45230-80C4523C 00008C 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80C44D0C-80C44D30 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__13daKiPot_HIO_cFv */
daKiPot_HIO_c::daKiPot_HIO_c() {
    // NONMATCHING
}

/* 80C44D30-80C44D78 000110 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80C44D78-80C44DD0 000158 0058+00 2/2 0/0 0/0 .text            setBaseMtx__9daKiPot_cFv */
void daKiPot_c::setBaseMtx() {
    // NONMATCHING
}

/* 80C44DD0-80C44E7C 0001B0 00AC+00 1/1 0/0 0/0 .text            create__9daKiPot_cFv */
void daKiPot_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C45194-80C45198 000000 0004+00 2/2 0/0 0/0 .rodata          @3683 */
SECTION_RODATA static f32 const lit_3683 = 150.0f;
COMPILER_STRIP_GATE(0x80C45194, &lit_3683);

/* 80C44E7C-80C44EF8 00025C 007C+00 1/1 0/0 0/0 .text            Execute__9daKiPot_cFv */
void daKiPot_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C45248-80C45254 000008 000C+00 1/1 0/0 0/0 .bss             @3620 */
static u8 lit_3620[12];

/* 80C45254-80C4525C 000014 0008+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[8];

/* 80C4525C-80C45260 00001C 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_80C4525C[4];

/* 80C44EF8-80C44F74 0002D8 007C+00 1/1 0/0 0/0 .text            procMain__9daKiPot_cFv */
void daKiPot_c::procMain() {
    // NONMATCHING
}

/* 80C44F74-80C44F80 000354 000C+00 1/1 0/0 0/0 .text            init_modeWait__9daKiPot_cFv */
void daKiPot_c::init_modeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C45198-80C4519C 000004 0004+00 0/1 0/0 0/0 .rodata          @3711 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3711 = 100.0f;
COMPILER_STRIP_GATE(0x80C45198, &lit_3711);
#pragma pop

/* 80C4519C-80C451A0 000008 0004+00 0/1 0/0 0/0 .rodata          @3712 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3712 = 50.0f;
COMPILER_STRIP_GATE(0x80C4519C, &lit_3712);
#pragma pop

/* 80C451A0-80C451A4 00000C 0004+00 0/1 0/0 0/0 .rodata          @3713 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3713 = -50.0f;
COMPILER_STRIP_GATE(0x80C451A0, &lit_3713);
#pragma pop

/* 80C44F80-80C45008 000360 0088+00 1/0 0/0 0/0 .text            modeWait__9daKiPot_cFv */
void daKiPot_c::modeWait() {
    // NONMATCHING
}

/* 80C45008-80C45058 0003E8 0050+00 1/1 0/0 0/0 .text            chkEvent__9daKiPot_cFv */
void daKiPot_c::chkEvent() {
    // NONMATCHING
}

/* 80C45058-80C45060 000438 0008+00 1/1 0/0 0/0 .text            Draw__9daKiPot_cFv */
bool daKiPot_c::Draw() {
    return true;
}

/* 80C45060-80C45068 000440 0008+00 1/1 0/0 0/0 .text            Delete__9daKiPot_cFv */
bool daKiPot_c::Delete() {
    return true;
}

/* 80C45068-80C45088 000448 0020+00 1/0 0/0 0/0 .text            daKiPot_Draw__FP9daKiPot_c */
static void daKiPot_Draw(daKiPot_c* param_0) {
    // NONMATCHING
}

/* 80C45088-80C450A8 000468 0020+00 1/0 0/0 0/0 .text            daKiPot_Execute__FP9daKiPot_c */
static void daKiPot_Execute(daKiPot_c* param_0) {
    // NONMATCHING
}

/* 80C450A8-80C450C8 000488 0020+00 1/0 0/0 0/0 .text            daKiPot_Delete__FP9daKiPot_c */
static void daKiPot_Delete(daKiPot_c* param_0) {
    // NONMATCHING
}

/* 80C450C8-80C450E8 0004A8 0020+00 1/0 0/0 0/0 .text            daKiPot_Create__FP10fopAc_ac_c */
static void daKiPot_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C450E8-80C45144 0004C8 005C+00 2/1 0/0 0/0 .text            __dt__13daKiPot_HIO_cFv */
daKiPot_HIO_c::~daKiPot_HIO_c() {
    // NONMATCHING
}

/* 80C45144-80C45180 000524 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_kiPot_cpp */
void __sinit_d_a_obj_kiPot_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C45144, __sinit_d_a_obj_kiPot_cpp);
#pragma pop