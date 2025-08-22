/**
 * @file d_a_obj_hasu2.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_hasu2.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" static void rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void __ct__Q29nObjMHasu12daObjMHasu_cFv();
extern "C" void create1st__Q29nObjMHasu12daObjMHasu_cFv();
extern "C" void setMtx__Q29nObjMHasu12daObjMHasu_cFv();
extern "C" void CreateHeap__Q29nObjMHasu12daObjMHasu_cFv();
extern "C" void Create__Q29nObjMHasu12daObjMHasu_cFv();
extern "C" void Execute__Q29nObjMHasu12daObjMHasu_cFPPA3_A4_f();
extern "C" void Draw__Q29nObjMHasu12daObjMHasu_cFv();
extern "C" void Delete__Q29nObjMHasu12daObjMHasu_cFv();
extern "C" void upDownHasu__Q29nObjMHasu12daObjMHasu_cFv();
extern "C" void updateCount__Q29nObjMHasu12daObjMHasu_cFUc();
extern "C" void setHasuCount__Q29nObjMHasu12daObjMHasu_cFf();
extern "C" static void daObjMHasu_create1st__FPQ29nObjMHasu12daObjMHasu_c();
extern "C" static void daObjMHasu_MoveBGDelete__FPQ29nObjMHasu12daObjMHasu_c();
extern "C" static void daObjMHasu_MoveBGExecute__FPQ29nObjMHasu12daObjMHasu_c();
extern "C" static void daObjMHasu_MoveBGDraw__FPQ29nObjMHasu12daObjMHasu_c();
extern "C" void __dt__Q29nObjMHasu12daObjMHasu_cFv();
extern "C" extern char const* const d_a_obj_hasu2__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __cvt_fp2unsigned();
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80C18298-80C182DC 000078 0044+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallBack(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C18A58-80C18A70 000000 0018+00 4/4 0/0 0/0 .rodata          l_cull_box */
SECTION_RODATA static u8 const l_cull_box[24] = {
    0xC2, 0xF6, 0x00, 0x00, 0xC3, 0x2F, 0x00, 0x00, 0xC3, 0x0E, 0x00, 0x00,
    0x43, 0x05, 0x00, 0x00, 0x41, 0xE8, 0x00, 0x00, 0x42, 0xFE, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C18A58, &l_cull_box);

/* 80C18A70-80C18A74 000018 0004+00 0/1 0/0 0/0 .rodata          @3634 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3634 = 25.5f;
COMPILER_STRIP_GATE(0x80C18A70, &lit_3634);
#pragma pop

/* 80C18A74-80C18A78 00001C 0004+00 0/2 0/0 0/0 .rodata          @3635 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3635 = 6.5f;
COMPILER_STRIP_GATE(0x80C18A74, &lit_3635);
#pragma pop

/* 80C18A78-80C18A7C 000020 0004+00 0/1 0/0 0/0 .rodata          @3636 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3636 = 5.5f;
COMPILER_STRIP_GATE(0x80C18A78, &lit_3636);
#pragma pop

/* 80C18AA0-80C18AA0 000048 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C18AA0 = "M_Hasu";
#pragma pop

/* 80C18AA8-80C18AAC -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_hasu2__stringBase0;

/* 80C18AAC-80C18ACC -00001 0020+00 1/0 0/0 0/0 .data            daObjMHasu_METHODS */
static actor_method_class daObjMHasu_METHODS = {
    (process_method_func)daObjMHasu_create1st__FPQ29nObjMHasu12daObjMHasu_c,
    (process_method_func)daObjMHasu_MoveBGDelete__FPQ29nObjMHasu12daObjMHasu_c,
    (process_method_func)daObjMHasu_MoveBGExecute__FPQ29nObjMHasu12daObjMHasu_c,
    0,
    (process_method_func)daObjMHasu_MoveBGDraw__FPQ29nObjMHasu12daObjMHasu_c,
};

/* 80C18ACC-80C18AFC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_MHasu */
extern actor_process_profile_definition g_profile_Obj_MHasu = {
  fpcLy_CURRENT_e,                   // mLayerID
  3,                                 // mListID
  fpcPi_CURRENT_e,                   // mListPrio
  PROC_Obj_MHasu,                    // mProcName
  &g_fpcLf_Method.base,             // sub_method
  sizeof(nObjMHasu::daObjMHasu_c),   // mSize
  0,                                 // mSizeOther
  0,                                 // mParameters
  &g_fopAc_Method.base,              // sub_method
  666,                               // mPriority
  &daObjMHasu_METHODS,               // sub_method
  0x00040100,                        // mStatus
  fopAc_ACTOR_e,                     // mActorType
  fopAc_CULLBOX_CUSTOM_e,            // cullType
};

/* 80C18AFC-80C18B28 000054 002C+00 2/2 0/0 0/0 .data            __vt__Q29nObjMHasu12daObjMHasu_c */
SECTION_DATA extern void* __vt__Q29nObjMHasu12daObjMHasu_c[11] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__Q29nObjMHasu12daObjMHasu_cFv,
    (void*)Create__Q29nObjMHasu12daObjMHasu_cFv,
    (void*)Execute__Q29nObjMHasu12daObjMHasu_cFPPA3_A4_f,
    (void*)Draw__Q29nObjMHasu12daObjMHasu_cFv,
    (void*)Delete__Q29nObjMHasu12daObjMHasu_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
    (void*)__dt__Q29nObjMHasu12daObjMHasu_cFv,
};

/* 80C182DC-80C18340 0000BC 0064+00 1/1 0/0 0/0 .text            __ct__Q29nObjMHasu12daObjMHasu_cFv
 */
nObjMHasu::daObjMHasu_c::daObjMHasu_c() {
    // NONMATCHING
}

/* 80C18340-80C183D0 000120 0090+00 1/1 0/0 0/0 .text create1st__Q29nObjMHasu12daObjMHasu_cFv */
void nObjMHasu::daObjMHasu_c::create1st() {
    // NONMATCHING
}

/* 80C183D0-80C18440 0001B0 0070+00 2/2 0/0 0/0 .text setMtx__Q29nObjMHasu12daObjMHasu_cFv */
void nObjMHasu::daObjMHasu_c::setMtx() {
    // NONMATCHING
}

/* 80C18440-80C184B0 000220 0070+00 1/0 0/0 0/0 .text CreateHeap__Q29nObjMHasu12daObjMHasu_cFv */
void nObjMHasu::daObjMHasu_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C18A7C-80C18A80 000024 0004+00 0/2 0/0 0/0 .rodata          @3685 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3685 = 0.5f;
COMPILER_STRIP_GATE(0x80C18A7C, &lit_3685);
#pragma pop

/* 80C18A80-80C18A84 000028 0004+00 0/2 0/0 0/0 .rodata          @3686 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3686 = 7.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C18A80, &lit_3686);
#pragma pop

/* 80C18A84-80C18A88 00002C 0004+00 0/1 0/0 0/0 .rodata          @3687 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3687 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C18A84, &lit_3687);
#pragma pop

/* 80C184B0-80C185A4 000290 00F4+00 1/0 0/0 0/0 .text Create__Q29nObjMHasu12daObjMHasu_cFv */
void nObjMHasu::daObjMHasu_c::Create() {
    // NONMATCHING
}

/* 80C185A4-80C18600 000384 005C+00 1/0 0/0 0/0 .text
 * Execute__Q29nObjMHasu12daObjMHasu_cFPPA3_A4_f                */
void nObjMHasu::daObjMHasu_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80C18600-80C186A4 0003E0 00A4+00 1/0 0/0 0/0 .text            Draw__Q29nObjMHasu12daObjMHasu_cFv
 */
void nObjMHasu::daObjMHasu_c::Draw() {
    // NONMATCHING
}

/* 80C186A4-80C186E0 000484 003C+00 1/0 0/0 0/0 .text Delete__Q29nObjMHasu12daObjMHasu_cFv */
void nObjMHasu::daObjMHasu_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C18A88-80C18A8C 000030 0004+00 0/1 0/0 0/0 .rodata          @3757 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3757 = 6.0f;
COMPILER_STRIP_GATE(0x80C18A88, &lit_3757);
#pragma pop

/* 80C18A8C-80C18A90 000034 0004+00 0/1 0/0 0/0 .rodata          @3758 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3758 = 1.0f;
COMPILER_STRIP_GATE(0x80C18A8C, &lit_3758);
#pragma pop

/* 80C18A90-80C18A94 000038 0004+00 0/1 0/0 0/0 .rodata          @3759 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3759 = -1.0f;
COMPILER_STRIP_GATE(0x80C18A90, &lit_3759);
#pragma pop

/* 80C18A94-80C18A98 00003C 0004+00 0/1 0/0 0/0 .rodata          @3760 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3760[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C18A94, &lit_3760);
#pragma pop

/* 80C186E0-80C18888 0004C0 01A8+00 1/1 0/0 0/0 .text upDownHasu__Q29nObjMHasu12daObjMHasu_cFv */
void nObjMHasu::daObjMHasu_c::upDownHasu() {
    // NONMATCHING
}

/* 80C18888-80C188A0 000668 0018+00 1/1 0/0 0/0 .text updateCount__Q29nObjMHasu12daObjMHasu_cFUc
 */
void nObjMHasu::daObjMHasu_c::updateCount(u8 param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C18A98-80C18A9C 000040 0004+00 0/1 0/0 0/0 .rodata          @3782 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3782 = 1.5f;
COMPILER_STRIP_GATE(0x80C18A98, &lit_3782);
#pragma pop

/* 80C18A9C-80C18AA0 000044 0004+00 0/1 0/0 0/0 .rodata          @3783 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3783 = 10.0f;
COMPILER_STRIP_GATE(0x80C18A9C, &lit_3783);
#pragma pop

/* 80C188A0-80C18920 000680 0080+00 1/1 0/0 0/0 .text setHasuCount__Q29nObjMHasu12daObjMHasu_cFf
 */
void nObjMHasu::daObjMHasu_c::setHasuCount(f32 param_0) {
    // NONMATCHING
}

/* 80C18920-80C18974 000700 0054+00 1/0 0/0 0/0 .text
 * daObjMHasu_create1st__FPQ29nObjMHasu12daObjMHasu_c           */
static void daObjMHasu_create1st(nObjMHasu::daObjMHasu_c* param_0) {
    // NONMATCHING
}

/* 80C18974-80C18994 000754 0020+00 1/0 0/0 0/0 .text
 * daObjMHasu_MoveBGDelete__FPQ29nObjMHasu12daObjMHasu_c        */
static void daObjMHasu_MoveBGDelete(nObjMHasu::daObjMHasu_c* param_0) {
    // NONMATCHING
}

/* 80C18994-80C189B4 000774 0020+00 1/0 0/0 0/0 .text
 * daObjMHasu_MoveBGExecute__FPQ29nObjMHasu12daObjMHasu_c       */
static void daObjMHasu_MoveBGExecute(nObjMHasu::daObjMHasu_c* param_0) {
    // NONMATCHING
}

/* 80C189B4-80C189E0 000794 002C+00 1/0 0/0 0/0 .text
 * daObjMHasu_MoveBGDraw__FPQ29nObjMHasu12daObjMHasu_c          */
static void daObjMHasu_MoveBGDraw(nObjMHasu::daObjMHasu_c* param_0) {
    // NONMATCHING
}

/* 80C189E0-80C18A50 0007C0 0070+00 1/0 0/0 0/0 .text            __dt__Q29nObjMHasu12daObjMHasu_cFv
 */
nObjMHasu::daObjMHasu_c::~daObjMHasu_c() {
    // NONMATCHING
}

/* 80C18AA0-80C18AA0 000048 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
