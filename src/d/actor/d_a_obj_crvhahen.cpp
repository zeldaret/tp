/**
 * @file d_a_obj_crvhahen.cpp
 * 
*/

#include "d/actor/d_a_obj_crvhahen.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daObjCRVHAHEN_Create__FP10fopAc_ac_c();
extern "C" static void daObjCRVHAHEN_Delete__FP15daObjCRVHAHEN_c();
extern "C" void HahenSet__15daObjCRVHAHEN_cF4cXyz4cXyz4cXyz4cXyzf();
extern "C" void Wall_Check__15daObjCRVHAHEN_cF4cXyz4cXyz();
extern "C" void __dt__4cXyzFv();
extern "C" void Hahen_Hakai__15daObjCRVHAHEN_cFii();
extern "C" void CheckCull__15daObjCRVHAHEN_cFv();
extern "C" void checkViewArea__15daObjCRVHAHEN_cFP4cXyz();
extern "C" void Execute__15daObjCRVHAHEN_cFv();
extern "C" void Delete__15daObjCRVHAHEN_cFv();
extern "C" void setBaseMtx__15daObjCRVHAHEN_cFv();
extern "C" static void daObjCRVHAHEN_Draw__FP15daObjCRVHAHEN_c();
extern "C" static void daObjCRVHAHEN_Execute__FP15daObjCRVHAHEN_c();
extern "C" void create__15daObjCRVHAHEN_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" static bool daObjCRVHAHEN_IsDelete__FP15daObjCRVHAHEN_c();
extern "C" extern char const* const d_a_obj_crvhahen__stringBase0;

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotS__14mDoMtx_stack_cFRC5csXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void mDoLib_project__FP3VecP3Vec();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc();
extern "C" void removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai();
extern "C" void entrySimpleModel__14dComIfG_play_cFP8J3DModeli();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_21();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_21();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];

//
// Declarations:
//

/* ############################################################################################## */
/* 80BD4048-80BD4048 000058 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BD4048 = "CrvFence";
SECTION_DEAD static char const* const stringBase_80BD4051 = "CaravanPiece.bmd";
#pragma pop

/* 80BD4064-80BD4068 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_crvhahen__stringBase0;

/* 80BD3338-80BD33E8 000078 00B0+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80BD33E8-80BD3408 000128 0020+00 1/0 0/0 0/0 .text daObjCRVHAHEN_Create__FP10fopAc_ac_c */
static void daObjCRVHAHEN_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80BD3408-80BD342C 000148 0024+00 1/0 0/0 0/0 .text daObjCRVHAHEN_Delete__FP15daObjCRVHAHEN_c */
static void daObjCRVHAHEN_Delete(daObjCRVHAHEN_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD3FF0-80BD3FF4 000000 0004+00 5/5 0/0 0/0 .rodata          @3703 */
SECTION_RODATA static f32 const lit_3703 = 0.5f;
COMPILER_STRIP_GATE(0x80BD3FF0, &lit_3703);

/* 80BD3FF4-80BD3FF8 000004 0004+00 0/1 0/0 0/0 .rodata          @3704 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3704 = 1.0f;
COMPILER_STRIP_GATE(0x80BD3FF4, &lit_3704);
#pragma pop

/* 80BD3FF8-80BD3FFC 000008 0004+00 0/1 0/0 0/0 .rodata          @3705 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3705 = 5000.0f;
COMPILER_STRIP_GATE(0x80BD3FF8, &lit_3705);
#pragma pop

/* 80BD3FFC-80BD4000 00000C 0004+00 0/1 0/0 0/0 .rodata          @3706 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3706 = 65536.0f;
COMPILER_STRIP_GATE(0x80BD3FFC, &lit_3706);
#pragma pop

/* 80BD342C-80BD3628 00016C 01FC+00 0/0 0/0 2/2 .text
 * HahenSet__15daObjCRVHAHEN_cF4cXyz4cXyz4cXyz4cXyzf            */
void daObjCRVHAHEN_c::HahenSet(cXyz param_0, cXyz param_1, cXyz param_2, cXyz param_3,
                                   f32 param_4) {
    // NONMATCHING
}

/* 80BD3628-80BD36E4 000368 00BC+00 1/1 0/0 0/0 .text Wall_Check__15daObjCRVHAHEN_cF4cXyz4cXyz */
void daObjCRVHAHEN_c::Wall_Check(cXyz param_0, cXyz param_1) {
    // NONMATCHING
}

/* 80BD36E4-80BD3720 000424 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD4000-80BD4004 000010 0004+00 0/2 0/0 0/0 .rodata          @3773 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3773 = -9.0f;
COMPILER_STRIP_GATE(0x80BD4000, &lit_3773);
#pragma pop

/* 80BD4004-80BD4008 000014 0004+00 0/1 0/0 0/0 .rodata          @3774 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3774 = 13.0f;
COMPILER_STRIP_GATE(0x80BD4004, &lit_3774);
#pragma pop

/* 80BD4008-80BD400C 000018 0004+00 0/1 0/0 0/0 .rodata          @3775 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3775 = -3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BD4008, &lit_3775);
#pragma pop

/* 80BD400C-80BD4010 00001C 0004+00 0/1 0/0 0/0 .rodata          @3776 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3776 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BD400C, &lit_3776);
#pragma pop

/* 80BD3720-80BD38DC 000460 01BC+00 1/1 0/0 0/0 .text            Hahen_Hakai__15daObjCRVHAHEN_cFii
 */
void daObjCRVHAHEN_c::Hahen_Hakai(int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD4010-80BD4018 000020 0004+04 0/2 0/0 0/0 .rodata          @3836 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3836[4 + 4 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BD4010, &lit_3836);
#pragma pop

/* 80BD4018-80BD4020 000028 0008+00 0/1 0/0 0/0 .rodata          @3837 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3837[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BD4018, &lit_3837);
#pragma pop

/* 80BD4020-80BD4028 000030 0008+00 0/1 0/0 0/0 .rodata          @3838 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3838[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BD4020, &lit_3838);
#pragma pop

/* 80BD4028-80BD4030 000038 0008+00 0/1 0/0 0/0 .rodata          @3839 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3839[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BD4028, &lit_3839);
#pragma pop

/* 80BD38DC-80BD3A9C 00061C 01C0+00 1/1 0/0 0/0 .text            CheckCull__15daObjCRVHAHEN_cFv */
void daObjCRVHAHEN_c::CheckCull() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD4030-80BD4034 000040 0004+00 0/1 0/0 0/0 .rodata          @3852 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3852 = 608.0f;
COMPILER_STRIP_GATE(0x80BD4030, &lit_3852);
#pragma pop

/* 80BD4034-80BD4038 000044 0004+00 0/1 0/0 0/0 .rodata          @3853 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3853 = 448.0f;
COMPILER_STRIP_GATE(0x80BD4034, &lit_3853);
#pragma pop

/* 80BD3A9C-80BD3B20 0007DC 0084+00 1/1 0/0 0/0 .text checkViewArea__15daObjCRVHAHEN_cFP4cXyz */
void daObjCRVHAHEN_c::checkViewArea(cXyz* param_0) {
    // NONMATCHING
}

/* 80BD3B20-80BD3B74 000860 0054+00 1/1 0/0 0/0 .text            Execute__15daObjCRVHAHEN_cFv */
void daObjCRVHAHEN_c::Execute() {
    // NONMATCHING
}

/* 80BD3B74-80BD3C0C 0008B4 0098+00 1/1 0/0 0/0 .text            Delete__15daObjCRVHAHEN_cFv */
void daObjCRVHAHEN_c::Delete() {
    // NONMATCHING
}

/* 80BD3C0C-80BD3CA0 00094C 0094+00 1/1 0/0 0/0 .text            setBaseMtx__15daObjCRVHAHEN_cFv */
void daObjCRVHAHEN_c::setBaseMtx() {
    // NONMATCHING
}

/* 80BD3CA0-80BD3D9C 0009E0 00FC+00 1/0 0/0 0/0 .text daObjCRVHAHEN_Draw__FP15daObjCRVHAHEN_c */
static void daObjCRVHAHEN_Draw(daObjCRVHAHEN_c* param_0) {
    // NONMATCHING
}

/* 80BD3D9C-80BD3DBC 000ADC 0020+00 2/1 0/0 0/0 .text daObjCRVHAHEN_Execute__FP15daObjCRVHAHEN_c
 */
static void daObjCRVHAHEN_Execute(daObjCRVHAHEN_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD4038-80BD403C 000048 0004+00 0/1 0/0 0/0 .rodata          @3993 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3993 = -1000.0f;
COMPILER_STRIP_GATE(0x80BD4038, &lit_3993);
#pragma pop

/* 80BD403C-80BD4040 00004C 0004+00 0/1 0/0 0/0 .rodata          @3994 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3994 = -500.0f;
COMPILER_STRIP_GATE(0x80BD403C, &lit_3994);
#pragma pop

/* 80BD4040-80BD4044 000050 0004+00 0/1 0/0 0/0 .rodata          @3995 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3995 = 1000.0f;
COMPILER_STRIP_GATE(0x80BD4040, &lit_3995);
#pragma pop

/* 80BD4044-80BD4048 000054 0004+00 0/1 0/0 0/0 .rodata          @3996 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3996 = 500.0f;
COMPILER_STRIP_GATE(0x80BD4044, &lit_3996);
#pragma pop

/* 80BD3DBC-80BD3F9C 000AFC 01E0+00 1/1 0/0 0/0 .text            create__15daObjCRVHAHEN_cFv */
void daObjCRVHAHEN_c::create() {
    // NONMATCHING
}

/* 80BD3F9C-80BD3FD8 000CDC 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80BD3FD8-80BD3FDC 000D18 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80BD3FDC-80BD3FE0 000D1C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80BD3FE0-80BD3FE8 000D20 0008+00 1/0 0/0 0/0 .text daObjCRVHAHEN_IsDelete__FP15daObjCRVHAHEN_c
 */
static bool daObjCRVHAHEN_IsDelete(daObjCRVHAHEN_c* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80BD4068-80BD4088 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjCRVHAHEN_Method */
static actor_method_class l_daObjCRVHAHEN_Method = {
    (process_method_func)daObjCRVHAHEN_Create__FP10fopAc_ac_c,
    (process_method_func)daObjCRVHAHEN_Delete__FP15daObjCRVHAHEN_c,
    (process_method_func)daObjCRVHAHEN_Execute__FP15daObjCRVHAHEN_c,
    (process_method_func)daObjCRVHAHEN_IsDelete__FP15daObjCRVHAHEN_c,
    (process_method_func)daObjCRVHAHEN_Draw__FP15daObjCRVHAHEN_c,
};

/* 80BD4088-80BD40B8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_CRVHAHEN */
extern actor_process_profile_definition g_profile_Obj_CRVHAHEN = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_CRVHAHEN,       // mProcName
  &g_fpcLf_Method.mBase,   // sub_method
  sizeof(daObjCRVHAHEN_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  468,                     // mPriority
  &l_daObjCRVHAHEN_Method, // sub_method
  0x00040000,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80BD4048-80BD4048 000058 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */