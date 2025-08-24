/**
 * @file d_a_obj_szbridge.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_szbridge.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void rideCallback__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void rideActor__15daObjSZbridge_cFP10fopAc_ac_c();
extern "C" void create1st__15daObjSZbridge_cFv();
extern "C" void setMtx__15daObjSZbridge_cFv();
extern "C" void CreateHeap__15daObjSZbridge_cFv();
extern "C" void chkBg__15daObjSZbridge_cFv();
extern "C" void __dt__11dBgS_WtrChkFv();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" void Create__15daObjSZbridge_cFv();
extern "C" void Execute__15daObjSZbridge_cFPPA3_A4_f();
extern "C" void Draw__15daObjSZbridge_cFv();
extern "C" void Delete__15daObjSZbridge_cFv();
extern "C" static void daObjSZbridge_create1st__FP15daObjSZbridge_c();
extern "C" static void daObjSZbridge_MoveBGDelete__FP15daObjSZbridge_c();
extern "C" static void daObjSZbridge_MoveBGExecute__FP15daObjSZbridge_c();
extern "C" static void daObjSZbridge_MoveBGDraw__FP15daObjSZbridge_c();
extern "C" void __dt__15daObjSZbridge_cFv();
extern "C" static void func_80D04C00();
extern "C" static void func_80D04C08();
extern "C" static void func_80D04C10();
extern "C" static void func_80D04C18();
extern "C" static void func_80D04C20();
extern "C" static void func_80D04C28();
extern "C" extern char const* const d_a_obj_szbridge__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void SplGrpChk__4dBgSFP14dBgS_SplGrpChk();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void Set__14dBgS_SplGrpChkFR4cXyzf();
extern "C" void __dt__14dBgS_SplGrpChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__11dBgS_WtrChkFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cM_rndF__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dl__FPv();
extern "C" void _savegpr_26();
extern "C" void _restgpr_26();
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
extern "C" u8 now__14mDoMtx_stack_c[48];

//
// Declarations:
//

/* 80D04338-80D04360 000078 0028+00 1/1 0/0 0/0 .text
 * rideCallback__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallback(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D04C38-80D04C50 000000 0018+00 3/3 0/0 0/0 .rodata          l_cull_box */
SECTION_RODATA static u8 const l_cull_box[24] = {
    0xC3, 0x9B, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00, 0xC4, 0x3E, 0x00, 0x00,
    0x43, 0x9B, 0x00, 0x00, 0x43, 0xB4, 0x00, 0x00, 0x44, 0x3E, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D04C38, &l_cull_box);

/* 80D04C50-80D04C54 000018 0004+00 0/1 0/0 0/0 .rodata          @3642 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3642 = 1.0f;
COMPILER_STRIP_GATE(0x80D04C50, &lit_3642);
#pragma pop

/* 80D04C54-80D04C58 00001C 0004+00 0/1 0/0 0/0 .rodata          @3643 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3643 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D04C54, &lit_3643);
#pragma pop

/* 80D04C58-80D04C5C 000020 0004+00 0/1 0/0 0/0 .rodata          @3644 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3644 = 7.0f;
COMPILER_STRIP_GATE(0x80D04C58, &lit_3644);
#pragma pop

/* 80D04C5C-80D04C60 000024 0004+00 0/1 0/0 0/0 .rodata          @3645 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3645 = 1.0f / 25.0f;
COMPILER_STRIP_GATE(0x80D04C5C, &lit_3645);
#pragma pop

/* 80D04C60-80D04C64 000028 0004+00 0/1 0/0 0/0 .rodata          @3646 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3646 = 0.25f;
COMPILER_STRIP_GATE(0x80D04C60, &lit_3646);
#pragma pop

/* 80D04360-80D04424 0000A0 00C4+00 1/1 0/0 0/0 .text rideActor__15daObjSZbridge_cFP10fopAc_ac_c
 */
void daObjSZbridge_c::rideActor(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D04C80-80D04C80 000048 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D04C80 = "S_Zbridge";
#pragma pop

/* 80D04C8C-80D04C90 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_szbridge__stringBase0;

/* 80D04424-80D044B8 000164 0094+00 1/1 0/0 0/0 .text            create1st__15daObjSZbridge_cFv */
void daObjSZbridge_c::create1st() {
    // NONMATCHING
}

/* 80D044B8-80D04528 0001F8 0070+00 2/2 0/0 0/0 .text            setMtx__15daObjSZbridge_cFv */
void daObjSZbridge_c::setMtx() {
    // NONMATCHING
}

/* 80D04528-80D04598 000268 0070+00 1/0 0/0 0/0 .text            CreateHeap__15daObjSZbridge_cFv */
void daObjSZbridge_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D04C64-80D04C68 00002C 0004+00 0/1 0/0 0/0 .rodata          @3715 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3715 = 700.0f;
COMPILER_STRIP_GATE(0x80D04C64, &lit_3715);
#pragma pop

/* 80D04C68-80D04C6C 000030 0004+00 0/1 0/0 0/0 .rodata          @3716 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3716 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80D04C68, &lit_3716);
#pragma pop

/* 80D04C6C-80D04C70 000034 0004+00 0/1 0/0 0/0 .rodata          @3717 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3717 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80D04C6C, &lit_3717);
#pragma pop

/* 80D04C70-80D04C74 000038 0004+00 0/1 0/0 0/0 .rodata          @3718 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3718 = 70.0f;
COMPILER_STRIP_GATE(0x80D04C70, &lit_3718);
#pragma pop

/* 80D04C74-80D04C78 00003C 0004+00 0/1 0/0 0/0 .rodata          @3719 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_3719 = 0x3F7C28F6;
COMPILER_STRIP_GATE(0x80D04C74, &lit_3719);
#pragma pop

/* 80D04C78-80D04C7C 000040 0004+00 0/1 0/0 0/0 .rodata          @3720 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3720 = 5.0f;
COMPILER_STRIP_GATE(0x80D04C78, &lit_3720);
#pragma pop

/* 80D04C90-80D04CB0 -00001 0020+00 1/0 0/0 0/0 .data            daObjSZbridge_METHODS */
static actor_method_class daObjSZbridge_METHODS = {
    (process_method_func)daObjSZbridge_create1st__FP15daObjSZbridge_c,
    (process_method_func)daObjSZbridge_MoveBGDelete__FP15daObjSZbridge_c,
    (process_method_func)daObjSZbridge_MoveBGExecute__FP15daObjSZbridge_c,
    0,
    (process_method_func)daObjSZbridge_MoveBGDraw__FP15daObjSZbridge_c,
};

/* 80D04CB0-80D04CE0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SZbridge */
extern actor_process_profile_definition g_profile_Obj_SZbridge = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_SZbridge,       // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjSZbridge_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  676,                     // mPriority
  &daObjSZbridge_METHODS,  // sub_method
  0x00040100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80D04CE0-80D04D10 000054 0030+00 2/2 0/0 0/0 .data            __vt__11dBgS_WtrChk */
SECTION_DATA extern void* __vt__11dBgS_WtrChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11dBgS_WtrChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D04C18,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D04C28,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D04C20,
};

/* 80D04D10-80D04D40 000084 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D04C00,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D04C10,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80D04C08,
};

/* 80D04598-80D047D4 0002D8 023C+00 2/2 0/0 0/0 .text            chkBg__15daObjSZbridge_cFv */
void daObjSZbridge_c::chkBg() {
    // NONMATCHING
}

/* 80D047D4-80D0484C 000514 0078+00 4/3 0/0 0/0 .text            __dt__11dBgS_WtrChkFv */
// dBgS_WtrChk::~dBgS_WtrChk() {
extern "C" void __dt__11dBgS_WtrChkFv() {
    // NONMATCHING
}

/* 80D0484C-80D048C4 00058C 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D04C7C-80D04C80 000044 0004+00 1/1 0/0 0/0 .rodata          @3739 */
SECTION_RODATA static u8 const lit_3739[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D04C7C, &lit_3739);

/* 80D048C4-80D04974 000604 00B0+00 1/0 0/0 0/0 .text            Create__15daObjSZbridge_cFv */
void daObjSZbridge_c::Create() {
    // NONMATCHING
}

/* 80D04974-80D049E4 0006B4 0070+00 1/0 0/0 0/0 .text Execute__15daObjSZbridge_cFPPA3_A4_f */
void daObjSZbridge_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80D049E4-80D04A88 000724 00A4+00 1/0 0/0 0/0 .text            Draw__15daObjSZbridge_cFv */
void daObjSZbridge_c::Draw() {
    // NONMATCHING
}

/* 80D04A88-80D04AC4 0007C8 003C+00 1/0 0/0 0/0 .text            Delete__15daObjSZbridge_cFv */
void daObjSZbridge_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D04D40-80D04D6C 0000B4 002C+00 2/2 0/0 0/0 .data            __vt__15daObjSZbridge_c */
SECTION_DATA extern void* __vt__15daObjSZbridge_c[11] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__15daObjSZbridge_cFv,
    (void*)Create__15daObjSZbridge_cFv,
    (void*)Execute__15daObjSZbridge_cFPPA3_A4_f,
    (void*)Draw__15daObjSZbridge_cFv,
    (void*)Delete__15daObjSZbridge_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
    (void*)__dt__15daObjSZbridge_cFv,
};

/* 80D04AC4-80D04B24 000804 0060+00 1/0 0/0 0/0 .text daObjSZbridge_create1st__FP15daObjSZbridge_c
 */
static void daObjSZbridge_create1st(daObjSZbridge_c* param_0) {
    // NONMATCHING
}

/* 80D04B24-80D04B44 000864 0020+00 1/0 0/0 0/0 .text
 * daObjSZbridge_MoveBGDelete__FP15daObjSZbridge_c              */
static void daObjSZbridge_MoveBGDelete(daObjSZbridge_c* param_0) {
    // NONMATCHING
}

/* 80D04B44-80D04B64 000884 0020+00 1/0 0/0 0/0 .text
 * daObjSZbridge_MoveBGExecute__FP15daObjSZbridge_c             */
static void daObjSZbridge_MoveBGExecute(daObjSZbridge_c* param_0) {
    // NONMATCHING
}

/* 80D04B64-80D04B90 0008A4 002C+00 1/0 0/0 0/0 .text
 * daObjSZbridge_MoveBGDraw__FP15daObjSZbridge_c                */
static void daObjSZbridge_MoveBGDraw(daObjSZbridge_c* param_0) {
    // NONMATCHING
}

/* 80D04B90-80D04C00 0008D0 0070+00 1/0 0/0 0/0 .text            __dt__15daObjSZbridge_cFv */
daObjSZbridge_c::~daObjSZbridge_c() {
    // NONMATCHING
}

/* 80D04C00-80D04C08 000940 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_80D04C00() {
    // NONMATCHING
}

/* 80D04C08-80D04C10 000948 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_80D04C08() {
    // NONMATCHING
}

/* 80D04C10-80D04C18 000950 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_80D04C10() {
    // NONMATCHING
}

/* 80D04C18-80D04C20 000958 0008+00 1/0 0/0 0/0 .text            @16@__dt__11dBgS_WtrChkFv */
static void func_80D04C18() {
    // NONMATCHING
}

/* 80D04C20-80D04C28 000960 0008+00 1/0 0/0 0/0 .text            @52@__dt__11dBgS_WtrChkFv */
static void func_80D04C20() {
    // NONMATCHING
}

/* 80D04C28-80D04C30 000968 0008+00 1/0 0/0 0/0 .text            @36@__dt__11dBgS_WtrChkFv */
static void func_80D04C28() {
    // NONMATCHING
}

/* 80D04C80-80D04C80 000048 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
