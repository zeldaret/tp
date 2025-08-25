/**
 * @file d_a_obj_lv4prwall.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv4prwall.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void create1st__16daObjLv4PRwall_cFv();
extern "C" void setMtx__16daObjLv4PRwall_cFv();
extern "C" void CreateHeap__16daObjLv4PRwall_cFv();
extern "C" void Create__16daObjLv4PRwall_cFv();
extern "C" static void searchObjSwTurn__FPvPv();
extern "C" void Execute__16daObjLv4PRwall_cFPPA3_A4_f();
extern "C" void Draw__16daObjLv4PRwall_cFv();
extern "C" void Delete__16daObjLv4PRwall_cFv();
extern "C" static void daObjLv4PRwall_create1st__FP16daObjLv4PRwall_c();
extern "C" static void daObjLv4PRwall_MoveBGDelete__FP16daObjLv4PRwall_c();
extern "C" static void daObjLv4PRwall_MoveBGExecute__FP16daObjLv4PRwall_c();
extern "C" static void daObjLv4PRwall_MoveBGDraw__FP16daObjLv4PRwall_c();
extern "C" void __dt__16daObjLv4PRwall_cFv();
extern "C" extern char const* const d_a_obj_lv4prwall__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
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
extern "C" void cM_rndFX__Ff();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 80C698E8-80C698F4 000000 000C+00 2/2 0/0 0/0 .rodata          l_dzbidx */
SECTION_RODATA static u8 const l_dzbidx[12] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07,
};
COMPILER_STRIP_GATE(0x80C698E8, &l_dzbidx);

/* 80C69974-80C69974 00008C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C69974 = "PRWallR09";
SECTION_DEAD static char const* const stringBase_80C6997E = "P_Rwall";
SECTION_DEAD static char const* const stringBase_80C69986 = "PRWallR04";
#pragma pop

/* 80C69990-80C6999C -00001 000C+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName[3] = {
    (void*)&d_a_obj_lv4prwall__stringBase0,
    (void*)(((char*)&d_a_obj_lv4prwall__stringBase0) + 0xA),
    (void*)(((char*)&d_a_obj_lv4prwall__stringBase0) + 0x12),
};

/* 80C68C98-80C68DD8 000078 0140+00 1/1 0/0 0/1 .text            create1st__16daObjLv4PRwall_cFv */
void daObjLv4PRwall_c::create1st() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C698F4-80C69900 00000C 000C+00 1/1 0/0 0/0 .rodata          l_bmdidx */
SECTION_RODATA static u8 const l_bmdidx[12] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x80C698F4, &l_bmdidx);

/* 80C69900-80C69948 000018 0048+00 1/1 0/0 0/0 .rodata          l_cull_box */
SECTION_RODATA static u8 const l_cull_box[72] = {
    0xC4, 0xC8, 0x00, 0x00, 0xC2, 0xC8, 0x00, 0x00, 0xC4, 0xC8, 0x00, 0x00, 0x44, 0xC8, 0x00,
    0x00, 0x44, 0xB3, 0xB6, 0x66, 0x44, 0xC8, 0x00, 0x00, 0xC4, 0x89, 0x81, 0x48, 0xC2, 0x70,
    0x00, 0x00, 0xC4, 0x89, 0x90, 0x00, 0x44, 0x89, 0x80, 0x00, 0x44, 0xAF, 0x00, 0x00, 0x44,
    0x89, 0x90, 0x00, 0xC4, 0x89, 0x87, 0x5C, 0xC3, 0x48, 0x33, 0x33, 0xC4, 0x89, 0x87, 0x5C,
    0x44, 0x89, 0x87, 0x5C, 0x44, 0x7A, 0x2C, 0xCD, 0x44, 0x89, 0x87, 0x5C,
};
COMPILER_STRIP_GATE(0x80C69900, &l_cull_box);

/* 80C69948-80C6994C 000060 0004+00 1/1 0/0 0/0 .rodata          @3688 */
SECTION_RODATA static u32 const lit_3688 = 0x3C800000;
COMPILER_STRIP_GATE(0x80C69948, &lit_3688);

/* 80C6994C-80C69950 000064 0004+00 1/1 0/0 0/0 .rodata          @3689 */
SECTION_RODATA static f32 const lit_3689 = 2.0f;
COMPILER_STRIP_GATE(0x80C6994C, &lit_3689);

/* 80C69950-80C69958 000068 0008+00 1/1 0/0 0/0 .rodata          @3691 */
SECTION_RODATA static u8 const lit_3691[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C69950, &lit_3691);

/* 80C68DD8-80C68F20 0001B8 0148+00 3/3 0/0 0/0 .text            setMtx__16daObjLv4PRwall_cFv */
void daObjLv4PRwall_c::setMtx() {
    // NONMATCHING
}

/* 80C68F20-80C68FA0 000300 0080+00 1/0 0/0 0/0 .text            CreateHeap__16daObjLv4PRwall_cFv */
void daObjLv4PRwall_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C69958-80C6995C 000070 0004+00 1/2 0/0 0/0 .rodata          @3713 */
SECTION_RODATA static u8 const lit_3713[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C69958, &lit_3713);

/* 80C68FA0-80C69064 000380 00C4+00 1/0 0/0 0/0 .text            Create__16daObjLv4PRwall_cFv */
void daObjLv4PRwall_c::Create() {
    // NONMATCHING
}

/* 80C69064-80C690D8 000444 0074+00 1/1 0/0 0/0 .text            searchObjSwTurn__FPvPv */
static void searchObjSwTurn(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C6995C-80C69960 000074 0004+00 0/1 0/0 0/0 .rodata          @3959 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3959 = -2.0f;
COMPILER_STRIP_GATE(0x80C6995C, &lit_3959);
#pragma pop

/* 80C69960-80C69964 000078 0004+00 0/1 0/0 0/0 .rodata          @3960 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3960 = 1.0f;
COMPILER_STRIP_GATE(0x80C69960, &lit_3960);
#pragma pop

/* 80C69964-80C69968 00007C 0004+00 0/1 0/0 0/0 .rodata          @3961 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3961 = -1.0f;
COMPILER_STRIP_GATE(0x80C69964, &lit_3961);
#pragma pop

/* 80C69968-80C6996C 000080 0004+00 0/1 0/0 0/0 .rodata          @3962 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3962 = 0.5f;
COMPILER_STRIP_GATE(0x80C69968, &lit_3962);
#pragma pop

/* 80C6996C-80C69970 000084 0004+00 0/1 0/0 0/0 .rodata          @3963 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3963 = -1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C6996C, &lit_3963);
#pragma pop

/* 80C69970-80C69974 000088 0004+00 0/1 0/0 0/0 .rodata          @3964 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3964 = 20.0f;
COMPILER_STRIP_GATE(0x80C69970, &lit_3964);
#pragma pop

/* 80C690D8-80C696BC 0004B8 05E4+00 1/0 0/0 0/0 .text Execute__16daObjLv4PRwall_cFPPA3_A4_f */
void daObjLv4PRwall_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80C696BC-80C69760 000A9C 00A4+00 1/0 0/0 0/0 .text            Draw__16daObjLv4PRwall_cFv */
void daObjLv4PRwall_c::Draw() {
    // NONMATCHING
}

/* 80C69760-80C697A4 000B40 0044+00 1/0 0/0 0/0 .text            Delete__16daObjLv4PRwall_cFv */
void daObjLv4PRwall_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C6999C-80C699BC -00001 0020+00 1/0 0/0 0/0 .data            daObjLv4PRwall_METHODS */
static actor_method_class daObjLv4PRwall_METHODS = {
    (process_method_func)daObjLv4PRwall_create1st__FP16daObjLv4PRwall_c,
    (process_method_func)daObjLv4PRwall_MoveBGDelete__FP16daObjLv4PRwall_c,
    (process_method_func)daObjLv4PRwall_MoveBGExecute__FP16daObjLv4PRwall_c,
    0,
    (process_method_func)daObjLv4PRwall_MoveBGDraw__FP16daObjLv4PRwall_c,
};

/* 80C699BC-80C699EC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv4PRwall */
extern actor_process_profile_definition g_profile_Obj_Lv4PRwall = {
  fpcLy_CURRENT_e,          // mLayerID
  3,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_Obj_Lv4PRwall,       // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daObjLv4PRwall_c), // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  672,                      // mPriority
  &daObjLv4PRwall_METHODS,  // sub_method
  0x00040100,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80C699EC-80C69A18 00005C 002C+00 2/2 0/0 0/0 .data            __vt__16daObjLv4PRwall_c */
SECTION_DATA extern void* __vt__16daObjLv4PRwall_c[11] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__16daObjLv4PRwall_cFv,
    (void*)Create__16daObjLv4PRwall_cFv,
    (void*)Execute__16daObjLv4PRwall_cFPPA3_A4_f,
    (void*)Draw__16daObjLv4PRwall_cFv,
    (void*)Delete__16daObjLv4PRwall_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
    (void*)__dt__16daObjLv4PRwall_cFv,
};

/* 80C697A4-80C69804 000B84 0060+00 1/0 0/0 0/0 .text
 * daObjLv4PRwall_create1st__FP16daObjLv4PRwall_c               */
static void daObjLv4PRwall_create1st(daObjLv4PRwall_c* param_0) {
    // NONMATCHING
}

/* 80C69804-80C69824 000BE4 0020+00 1/0 0/0 0/0 .text
 * daObjLv4PRwall_MoveBGDelete__FP16daObjLv4PRwall_c            */
static void daObjLv4PRwall_MoveBGDelete(daObjLv4PRwall_c* param_0) {
    // NONMATCHING
}

/* 80C69824-80C69844 000C04 0020+00 1/0 0/0 0/0 .text
 * daObjLv4PRwall_MoveBGExecute__FP16daObjLv4PRwall_c           */
static void daObjLv4PRwall_MoveBGExecute(daObjLv4PRwall_c* param_0) {
    // NONMATCHING
}

/* 80C69844-80C69870 000C24 002C+00 1/0 0/0 0/0 .text
 * daObjLv4PRwall_MoveBGDraw__FP16daObjLv4PRwall_c              */
static void daObjLv4PRwall_MoveBGDraw(daObjLv4PRwall_c* param_0) {
    // NONMATCHING
}

/* 80C69870-80C698E0 000C50 0070+00 1/0 0/0 0/0 .text            __dt__16daObjLv4PRwall_cFv */
daObjLv4PRwall_c::~daObjLv4PRwall_c() {
    // NONMATCHING
}

/* 80C69974-80C69974 00008C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
