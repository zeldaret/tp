/**
 * @file d_a_obj_timeFire.cpp
 * 
*/

#include "d/actor/d_a_obj_timeFire.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__16daTimeFire_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void setBaseMtx__12daTimeFire_cFv();
extern "C" void create__12daTimeFire_cFv();
extern "C" void lightInit__12daTimeFire_cFv();
extern "C" void setLight__12daTimeFire_cFv();
extern "C" void cutLight__12daTimeFire_cFv();
extern "C" void Execute__12daTimeFire_cFv();
extern "C" void fireCheck__12daTimeFire_cFUc();
extern "C" bool Draw__12daTimeFire_cFv();
extern "C" void Delete__12daTimeFire_cFv();
extern "C" static void daTimeFire_Draw__FP12daTimeFire_c();
extern "C" static void daTimeFire_Execute__FP12daTimeFire_c();
extern "C" static void daTimeFire_Delete__FP12daTimeFire_c();
extern "C" static void daTimeFire_Create__FP10fopAc_ac_c();
extern "C" void __dt__16daTimeFire_HIO_cFv();
extern "C" void __sinit_d_a_obj_timeFire_cpp();

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dKy_getdaytime_hour__Fv();
extern "C" void dKy_getdaytime_minute__Fv();
extern "C" void dKy_plight_set__FP15LIGHT_INFLUENCE();
extern "C" void dKy_plight_cut__FP15LIGHT_INFLUENCE();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void _savegpr_28();
extern "C" void _restgpr_28();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80D0F100-80D0F120 -00001 0020+00 1/0 0/0 0/0 .data            l_daTimeFire_Method */
static actor_method_class l_daTimeFire_Method = {
    (process_method_func)daTimeFire_Create__FP10fopAc_ac_c,
    (process_method_func)daTimeFire_Delete__FP12daTimeFire_c,
    (process_method_func)daTimeFire_Execute__FP12daTimeFire_c,
    0,
    (process_method_func)daTimeFire_Draw__FP12daTimeFire_c,
};

/* 80D0F120-80D0F150 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_TimeFire */
extern actor_process_profile_definition g_profile_Obj_TimeFire = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_TimeFire,      // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daTimeFire_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  661,                    // mPriority
  &l_daTimeFire_Method,   // sub_method
  0x00060000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80D0F150-80D0F15C 000050 000C+00 2/2 0/0 0/0 .data            __vt__16daTimeFire_HIO_c */
SECTION_DATA extern void* __vt__16daTimeFire_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daTimeFire_HIO_cFv,
};

/* 80D0F15C-80D0F168 00005C 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 80D0E8EC-80D0E910 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__16daTimeFire_HIO_cFv */
daTimeFire_HIO_c::daTimeFire_HIO_c() {
    // NONMATCHING
}

/* 80D0E910-80D0E958 000110 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
// mDoHIO_entry_c::~mDoHIO_entry_c() {
extern "C" void __dt__14mDoHIO_entry_cFv() {
    // NONMATCHING
}

/* 80D0E958-80D0E9B0 000158 0058+00 1/1 0/0 0/0 .text            setBaseMtx__12daTimeFire_cFv */
void daTimeFire_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D0F0E4-80D0F0EC 000000 0004+04 2/2 0/0 0/0 .rodata          @3686 */
SECTION_RODATA static f32 const lit_3686[1 + 1 /* padding */] = {
    10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80D0F0E4, &lit_3686);

/* 80D0F0EC-80D0F0F4 000008 0008+00 1/1 0/0 0/0 .rodata          @3688 */
SECTION_RODATA static u8 const lit_3688[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D0F0EC, &lit_3688);

/* 80D0E9B0-80D0EACC 0001B0 011C+00 1/1 0/0 0/0 .text            create__12daTimeFire_cFv */
void daTimeFire_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D0F0F4-80D0F0F8 000010 0004+00 0/1 0/0 0/0 .rodata          @3707 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3707 = 500.0f;
COMPILER_STRIP_GATE(0x80D0F0F4, &lit_3707);
#pragma pop

/* 80D0F0F8-80D0F0FC 000014 0004+00 2/3 0/0 0/0 .rodata          @3708 */
SECTION_RODATA static f32 const lit_3708 = 1.0f;
COMPILER_STRIP_GATE(0x80D0F0F8, &lit_3708);

/* 80D0EACC-80D0EB40 0002CC 0074+00 1/1 0/0 0/0 .text            lightInit__12daTimeFire_cFv */
void daTimeFire_c::lightInit() {
    // NONMATCHING
}

/* 80D0EB40-80D0EB64 000340 0024+00 2/2 0/0 0/0 .text            setLight__12daTimeFire_cFv */
void daTimeFire_c::setLight() {
    // NONMATCHING
}

/* 80D0EB64-80D0EB88 000364 0024+00 2/2 0/0 0/0 .text            cutLight__12daTimeFire_cFv */
void daTimeFire_c::cutLight() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D0F0FC-80D0F100 000018 0004+00 2/2 0/0 0/0 .rodata          @3757 */
SECTION_RODATA static f32 const lit_3757 = -1.0f;
COMPILER_STRIP_GATE(0x80D0F0FC, &lit_3757);

/* 80D0EB88-80D0ED68 000388 01E0+00 1/1 0/0 0/0 .text            Execute__12daTimeFire_cFv */
void daTimeFire_c::Execute() {
    // NONMATCHING
}

/* 80D0ED68-80D0EF88 000568 0220+00 2/2 0/0 0/0 .text            fireCheck__12daTimeFire_cFUc */
void daTimeFire_c::fireCheck(u8 param_0) {
    // NONMATCHING
}

/* 80D0EF88-80D0EF90 000788 0008+00 1/1 0/0 0/0 .text            Draw__12daTimeFire_cFv */
bool daTimeFire_c::Draw() {
    return true;
}

/* 80D0EF90-80D0EFB8 000790 0028+00 1/1 0/0 0/0 .text            Delete__12daTimeFire_cFv */
void daTimeFire_c::Delete() {
    // NONMATCHING
}

/* 80D0EFB8-80D0EFD8 0007B8 0020+00 1/0 0/0 0/0 .text            daTimeFire_Draw__FP12daTimeFire_c
 */
static void daTimeFire_Draw(daTimeFire_c* param_0) {
    // NONMATCHING
}

/* 80D0EFD8-80D0EFF8 0007D8 0020+00 1/0 0/0 0/0 .text daTimeFire_Execute__FP12daTimeFire_c */
static void daTimeFire_Execute(daTimeFire_c* param_0) {
    // NONMATCHING
}

/* 80D0EFF8-80D0F018 0007F8 0020+00 1/0 0/0 0/0 .text            daTimeFire_Delete__FP12daTimeFire_c
 */
static void daTimeFire_Delete(daTimeFire_c* param_0) {
    // NONMATCHING
}

/* 80D0F018-80D0F038 000818 0020+00 1/0 0/0 0/0 .text            daTimeFire_Create__FP10fopAc_ac_c
 */
static void daTimeFire_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80D0F038-80D0F094 000838 005C+00 2/1 0/0 0/0 .text            __dt__16daTimeFire_HIO_cFv */
daTimeFire_HIO_c::~daTimeFire_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D0F170-80D0F17C 000008 000C+00 1/1 0/0 0/0 .bss             @3621 */
static u8 lit_3621[12];

/* 80D0F17C-80D0F184 000014 0008+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[8];

/* 80D0F094-80D0F0D0 000894 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_timeFire_cpp */
void __sinit_d_a_obj_timeFire_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80D0F094, __sinit_d_a_obj_timeFire_cpp);
#pragma pop