/**
 * @file d_a_obj_lv4prelvtr.cpp
 * 
*/

#include "d/actor/d_a_obj_lv4prelvtr.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void create1st__14daObjPRElvtr_cFv();
extern "C" void setMtx__14daObjPRElvtr_cFv();
extern "C" void CreateHeap__14daObjPRElvtr_cFv();
extern "C" void Create__14daObjPRElvtr_cFv();
extern "C" static void searchObjSwTurn__FPvPv();
extern "C" void Execute__14daObjPRElvtr_cFPPA3_A4_f();
extern "C" void Draw__14daObjPRElvtr_cFv();
extern "C" void Delete__14daObjPRElvtr_cFv();
extern "C" static void daObjPRElvtr_create1st__FP14daObjPRElvtr_c();
extern "C" static void daObjPRElvtr_MoveBGDelete__FP14daObjPRElvtr_c();
extern "C" static void daObjPRElvtr_MoveBGExecute__FP14daObjPRElvtr_c();
extern "C" static void daObjPRElvtr_MoveBGDraw__FP14daObjPRElvtr_c();
extern "C" void __dt__14daObjPRElvtr_cFv();
extern "C" extern char const* const d_a_obj_lv4prelvtr__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
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
extern "C" void __dl__FPv();
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];

//
// Declarations:
//

/* ############################################################################################## */
/* 80C68B90-80C68B90 000028 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C68B90 = "PRElvtr";
#pragma pop

/* 80C68B98-80C68B9C -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_lv4prelvtr__stringBase0;

/* 80C685F8-80C68688 000078 0090+00 1/1 0/0 0/0 .text            create1st__14daObjPRElvtr_cFv */
void daObjPRElvtr_c::create1st() {
    // NONMATCHING
}

/* 80C68688-80C686F8 000108 0070+00 2/2 0/0 0/0 .text            setMtx__14daObjPRElvtr_cFv */
void daObjPRElvtr_c::setMtx() {
    // NONMATCHING
}

/* 80C686F8-80C68768 000178 0070+00 1/0 0/0 0/0 .text            CreateHeap__14daObjPRElvtr_cFv */
void daObjPRElvtr_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C68B68-80C68B80 000000 0018+00 1/1 0/0 0/0 .rodata          l_cull_box */
SECTION_RODATA static u8 const l_cull_box[24] = {
    0xC4, 0x35, 0x40, 0x00, 0xC3, 0x9D, 0x80, 0x00, 0xC4, 0x35, 0x40, 0x00,
    0x44, 0x35, 0x40, 0x00, 0xC1, 0x70, 0x00, 0x00, 0x44, 0x35, 0x40, 0x00,
};
COMPILER_STRIP_GATE(0x80C68B68, &l_cull_box);

/* 80C68768-80C687D0 0001E8 0068+00 1/0 0/0 0/0 .text            Create__14daObjPRElvtr_cFv */
void daObjPRElvtr_c::Create() {
    // NONMATCHING
}

/* 80C687D0-80C68844 000250 0074+00 1/1 0/0 0/0 .text            searchObjSwTurn__FPvPv */
static void searchObjSwTurn(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C68B80-80C68B84 000018 0004+00 1/1 0/0 0/0 .rodata          @3694 */
SECTION_RODATA static f32 const lit_3694 = 900.0f;
COMPILER_STRIP_GATE(0x80C68B80, &lit_3694);

/* 80C68B84-80C68B88 00001C 0004+00 1/1 0/0 0/0 .rodata          @3695 */
SECTION_RODATA static f32 const lit_3695 = 16383.0f;
COMPILER_STRIP_GATE(0x80C68B84, &lit_3695);

/* 80C68B88-80C68B90 000020 0008+00 1/1 0/0 0/0 .rodata          @3697 */
SECTION_RODATA static u8 const lit_3697[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C68B88, &lit_3697);

/* 80C68844-80C68944 0002C4 0100+00 1/0 0/0 0/0 .text            Execute__14daObjPRElvtr_cFPPA3_A4_f
 */
void daObjPRElvtr_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80C68944-80C689E8 0003C4 00A4+00 1/0 0/0 0/0 .text            Draw__14daObjPRElvtr_cFv */
void daObjPRElvtr_c::Draw() {
    // NONMATCHING
}

/* 80C689E8-80C68A24 000468 003C+00 1/0 0/0 0/0 .text            Delete__14daObjPRElvtr_cFv */
void daObjPRElvtr_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C68B9C-80C68BBC -00001 0020+00 1/0 0/0 0/0 .data            daObjPRElvtr_METHODS */
static actor_method_class daObjPRElvtr_METHODS = {
    (process_method_func)daObjPRElvtr_create1st__FP14daObjPRElvtr_c,
    (process_method_func)daObjPRElvtr_MoveBGDelete__FP14daObjPRElvtr_c,
    (process_method_func)daObjPRElvtr_MoveBGExecute__FP14daObjPRElvtr_c,
    0,
    (process_method_func)daObjPRElvtr_MoveBGDraw__FP14daObjPRElvtr_c,
};

/* 80C68BBC-80C68BEC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_PRElvtr */
extern actor_process_profile_definition g_profile_Obj_PRElvtr = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_PRElvtr,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjPRElvtr_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  665,                    // mPriority
  &daObjPRElvtr_METHODS,  // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C68BEC-80C68C18 000054 002C+00 2/2 0/0 0/0 .data            __vt__14daObjPRElvtr_c */
SECTION_DATA extern void* __vt__14daObjPRElvtr_c[11] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__14daObjPRElvtr_cFv,
    (void*)Create__14daObjPRElvtr_cFv,
    (void*)Execute__14daObjPRElvtr_cFPPA3_A4_f,
    (void*)Draw__14daObjPRElvtr_cFv,
    (void*)Delete__14daObjPRElvtr_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
    (void*)__dt__14daObjPRElvtr_cFv,
};

/* 80C68A24-80C68A84 0004A4 0060+00 1/0 0/0 0/0 .text daObjPRElvtr_create1st__FP14daObjPRElvtr_c
 */
static void daObjPRElvtr_create1st(daObjPRElvtr_c* param_0) {
    // NONMATCHING
}

/* 80C68A84-80C68AA4 000504 0020+00 1/0 0/0 0/0 .text
 * daObjPRElvtr_MoveBGDelete__FP14daObjPRElvtr_c                */
static void daObjPRElvtr_MoveBGDelete(daObjPRElvtr_c* param_0) {
    // NONMATCHING
}

/* 80C68AA4-80C68AC4 000524 0020+00 1/0 0/0 0/0 .text
 * daObjPRElvtr_MoveBGExecute__FP14daObjPRElvtr_c               */
static void daObjPRElvtr_MoveBGExecute(daObjPRElvtr_c* param_0) {
    // NONMATCHING
}

/* 80C68AC4-80C68AF0 000544 002C+00 1/0 0/0 0/0 .text daObjPRElvtr_MoveBGDraw__FP14daObjPRElvtr_c
 */
static void daObjPRElvtr_MoveBGDraw(daObjPRElvtr_c* param_0) {
    // NONMATCHING
}

/* 80C68AF0-80C68B60 000570 0070+00 1/0 0/0 0/0 .text            __dt__14daObjPRElvtr_cFv */
daObjPRElvtr_c::~daObjPRElvtr_c() {
    // NONMATCHING
}

/* 80C68B90-80C68B90 000028 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
