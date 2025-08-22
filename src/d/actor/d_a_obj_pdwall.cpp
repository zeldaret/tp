/**
 * @file d_a_obj_pdwall.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_pdwall.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void create1st__13daObjPDwall_cFv();
extern "C" void setMtx__13daObjPDwall_cFv();
extern "C" void CreateHeap__13daObjPDwall_cFv();
extern "C" void Create__13daObjPDwall_cFv();
extern "C" void Execute__13daObjPDwall_cFPPA3_A4_f();
extern "C" void Draw__13daObjPDwall_cFv();
extern "C" void Delete__13daObjPDwall_cFv();
extern "C" static void daObjPDwall_create1st__FP13daObjPDwall_c();
extern "C" static void daObjPDwall_MoveBGDelete__FP13daObjPDwall_c();
extern "C" static void daObjPDwall_MoveBGExecute__FP13daObjPDwall_c();
extern "C" static void daObjPDwall_MoveBGDraw__FP13daObjPDwall_c();
extern "C" void __dt__13daObjPDwall_cFv();
extern "C" extern char const* const d_a_obj_pdwall__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 80CAD1F4-80CAD1F4 00003C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80CAD1F4 = "P_Dwall";
#pragma pop

/* 80CAD1FC-80CAD200 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_pdwall__stringBase0;

/* 80CAC7F8-80CAC8DC 000078 00E4+00 1/1 0/0 0/0 .text            create1st__13daObjPDwall_cFv */
void daObjPDwall_c::create1st() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CAD1B8-80CAD1D0 000000 0018+00 2/2 0/0 0/0 .rodata          l_cull_box */
SECTION_RODATA static u8 const l_cull_box[24] = {
    0xC2, 0xC8, 0x00, 0x00, 0xC4, 0x48, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x44, 0x3B, 0x80, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CAD1B8, &l_cull_box);

/* 80CAD1D0-80CAD1D4 000018 0004+00 1/1 0/0 0/0 .rodata          @3666 */
SECTION_RODATA static f32 const lit_3666 = 50.0f;
COMPILER_STRIP_GATE(0x80CAD1D0, &lit_3666);

/* 80CAD1D4-80CAD1D8 00001C 0004+00 1/3 0/0 0/0 .rodata          @3667 */
SECTION_RODATA static u8 const lit_3667[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80CAD1D4, &lit_3667);

/* 80CAD1D8-80CAD1E0 000020 0008+00 1/3 0/0 0/0 .rodata          @3669 */
SECTION_RODATA static u8 const lit_3669[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CAD1D8, &lit_3669);

/* 80CAC8DC-80CACA44 00015C 0168+00 2/2 0/0 0/0 .text            setMtx__13daObjPDwall_cFv */
void daObjPDwall_c::setMtx() {
    // NONMATCHING
}

/* 80CACA44-80CACBA8 0002C4 0164+00 1/0 0/0 0/0 .text            CreateHeap__13daObjPDwall_cFv */
void daObjPDwall_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CAD1E0-80CAD1E4 000028 0004+00 0/2 0/0 0/0 .rodata          @3731 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3731 = -30.0f;
COMPILER_STRIP_GATE(0x80CAD1E0, &lit_3731);
#pragma pop

/* 80CACBA8-80CACCE0 000428 0138+00 1/0 0/0 0/0 .text            Create__13daObjPDwall_cFv */
void daObjPDwall_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CAD1E4-80CAD1E8 00002C 0004+00 0/1 0/0 0/0 .rodata          @3787 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3787 = 5.0f;
COMPILER_STRIP_GATE(0x80CAD1E4, &lit_3787);
#pragma pop

/* 80CAD1E8-80CAD1EC 000030 0004+00 0/1 0/0 0/0 .rodata          @3788 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3788 = -1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80CAD1E8, &lit_3788);
#pragma pop

/* 80CAD1EC-80CAD1F0 000034 0004+00 0/1 0/0 0/0 .rodata          @3789 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3789 = 1.0f;
COMPILER_STRIP_GATE(0x80CAD1EC, &lit_3789);
#pragma pop

/* 80CAD1F0-80CAD1F4 000038 0004+00 0/1 0/0 0/0 .rodata          @3790 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3790 = -1.0f;
COMPILER_STRIP_GATE(0x80CAD1F0, &lit_3790);
#pragma pop

/* 80CACCE0-80CACF14 000560 0234+00 1/0 0/0 0/0 .text            Execute__13daObjPDwall_cFPPA3_A4_f
 */
void daObjPDwall_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80CACF14-80CACFD4 000794 00C0+00 1/0 0/0 0/0 .text            Draw__13daObjPDwall_cFv */
void daObjPDwall_c::Draw() {
    // NONMATCHING
}

/* 80CACFD4-80CAD074 000854 00A0+00 1/0 0/0 0/0 .text            Delete__13daObjPDwall_cFv */
void daObjPDwall_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80CAD200-80CAD220 -00001 0020+00 1/0 0/0 0/0 .data            daObjPDwall_METHODS */
static actor_method_class daObjPDwall_METHODS = {
    (process_method_func)daObjPDwall_create1st__FP13daObjPDwall_c,
    (process_method_func)daObjPDwall_MoveBGDelete__FP13daObjPDwall_c,
    (process_method_func)daObjPDwall_MoveBGExecute__FP13daObjPDwall_c,
    0,
    (process_method_func)daObjPDwall_MoveBGDraw__FP13daObjPDwall_c,
};

/* 80CAD220-80CAD250 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_PDwall */
extern actor_process_profile_definition g_profile_Obj_PDwall = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_PDwall,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjPDwall_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  671,                    // mPriority
  &daObjPDwall_METHODS,   // sub_method
  0x00044100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CAD250-80CAD27C 000054 002C+00 2/2 0/0 0/0 .data            __vt__13daObjPDwall_c */
SECTION_DATA extern void* __vt__13daObjPDwall_c[11] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__13daObjPDwall_cFv,
    (void*)Create__13daObjPDwall_cFv,
    (void*)Execute__13daObjPDwall_cFPPA3_A4_f,
    (void*)Draw__13daObjPDwall_cFv,
    (void*)Delete__13daObjPDwall_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
    (void*)__dt__13daObjPDwall_cFv,
};

/* 80CAD074-80CAD0D4 0008F4 0060+00 1/0 0/0 0/0 .text daObjPDwall_create1st__FP13daObjPDwall_c */
static void daObjPDwall_create1st(daObjPDwall_c* param_0) {
    // NONMATCHING
}

/* 80CAD0D4-80CAD0F4 000954 0020+00 1/0 0/0 0/0 .text daObjPDwall_MoveBGDelete__FP13daObjPDwall_c
 */
static void daObjPDwall_MoveBGDelete(daObjPDwall_c* param_0) {
    // NONMATCHING
}

/* 80CAD0F4-80CAD114 000974 0020+00 1/0 0/0 0/0 .text daObjPDwall_MoveBGExecute__FP13daObjPDwall_c
 */
static void daObjPDwall_MoveBGExecute(daObjPDwall_c* param_0) {
    // NONMATCHING
}

/* 80CAD114-80CAD140 000994 002C+00 1/0 0/0 0/0 .text daObjPDwall_MoveBGDraw__FP13daObjPDwall_c */
static void daObjPDwall_MoveBGDraw(daObjPDwall_c* param_0) {
    // NONMATCHING
}

/* 80CAD140-80CAD1B0 0009C0 0070+00 1/0 0/0 0/0 .text            __dt__13daObjPDwall_cFv */
daObjPDwall_c::~daObjPDwall_c() {
    // NONMATCHING
}

/* 80CAD1F4-80CAD1F4 00003C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
