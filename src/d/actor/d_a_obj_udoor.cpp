/**
 * @file d_a_obj_udoor.cpp
 * 
*/

#include "d/actor/d_a_obj_udoor.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void daObj_Udoor_Draw__FP15obj_udoor_class();
extern "C" static void daObj_Udoor_Execute__FP15obj_udoor_class();
extern "C" static bool daObj_Udoor_IsDelete__FP15obj_udoor_class();
extern "C" static void daObj_Udoor_Delete__FP15obj_udoor_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daObj_Udoor_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" extern char const* const d_a_obj_udoor__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void getLayerNo__14dComIfG_play_cFi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80D20738-80D2079C 000078 0064+00 1/0 0/0 0/0 .text daObj_Udoor_Draw__FP15obj_udoor_class */
static void daObj_Udoor_Draw(obj_udoor_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D20DE0-80D20DE4 000000 0004+00 2/2 0/0 0/0 .rodata          @3707 */
SECTION_RODATA static f32 const lit_3707 = 2000.0f;
COMPILER_STRIP_GATE(0x80D20DE0, &lit_3707);

/* 80D20DE4-80D20DE8 000004 0004+00 0/1 0/0 0/0 .rodata          @3708 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3708 = 1.0f;
COMPILER_STRIP_GATE(0x80D20DE4, &lit_3708);
#pragma pop

/* 80D20DE8-80D20DEC 000008 0004+00 0/1 0/0 0/0 .rodata          @3709 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3709 = -1.0f;
COMPILER_STRIP_GATE(0x80D20DE8, &lit_3709);
#pragma pop

/* 80D20DEC-80D20DF0 00000C 0004+00 0/1 0/0 0/0 .rodata          @3710 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3710 = -20066.0f;
COMPILER_STRIP_GATE(0x80D20DEC, &lit_3710);
#pragma pop

/* 80D20DF0-80D20DF4 000010 0004+00 0/1 0/0 0/0 .rodata          @3711 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3711 = -20428.0f;
COMPILER_STRIP_GATE(0x80D20DF0, &lit_3711);
#pragma pop

/* 80D20DF4-80D20DF8 000014 0004+00 0/1 0/0 0/0 .rodata          @3712 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3712 = 500.0f;
COMPILER_STRIP_GATE(0x80D20DF4, &lit_3712);
#pragma pop

/* 80D20DF8-80D20DFC 000018 0004+00 0/1 0/0 0/0 .rodata          @3713 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3713 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80D20DF8, &lit_3713);
#pragma pop

/* 80D20DFC-80D20E00 00001C 0004+00 0/1 0/0 0/0 .rodata          @3714 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3714 = 50.0f;
COMPILER_STRIP_GATE(0x80D20DFC, &lit_3714);
#pragma pop

/* 80D2079C-80D209BC 0000DC 0220+00 2/1 0/0 0/0 .text daObj_Udoor_Execute__FP15obj_udoor_class */
static void daObj_Udoor_Execute(obj_udoor_class* param_0) {
    // NONMATCHING
}

/* 80D209BC-80D209C4 0002FC 0008+00 1/0 0/0 0/0 .text daObj_Udoor_IsDelete__FP15obj_udoor_class */
static bool daObj_Udoor_IsDelete(obj_udoor_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80D20E10-80D20E10 000030 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D20E10 = "Obj_udoor";
#pragma pop

/* 80D209C4-80D20A1C 000304 0058+00 1/0 0/0 0/0 .text daObj_Udoor_Delete__FP15obj_udoor_class */
static void daObj_Udoor_Delete(obj_udoor_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D20E1C-80D20E24 000000 0008+00 1/1 0/0 0/0 .data            bmdd$3732 */
SECTION_DATA static u8 bmdd[8] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05,
};

/* 80D20E24-80D20E2C 000008 0008+00 1/1 0/0 0/0 .data            dzbd$3733 */
SECTION_DATA static u8 dzbd[8] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x09,
};

/* 80D20A1C-80D20B40 00035C 0124+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D20E00-80D20E04 000020 0004+00 0/1 0/0 0/0 .rodata          @3828 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3828 = -300.0f;
COMPILER_STRIP_GATE(0x80D20E00, &lit_3828);
#pragma pop

/* 80D20E04-80D20E08 000024 0004+00 0/1 0/0 0/0 .rodata          @3829 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3829 = -600.0f;
COMPILER_STRIP_GATE(0x80D20E04, &lit_3829);
#pragma pop

/* 80D20E08-80D20E0C 000028 0004+00 0/1 0/0 0/0 .rodata          @3830 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3830 = 300.0f;
COMPILER_STRIP_GATE(0x80D20E08, &lit_3830);
#pragma pop

/* 80D20E0C-80D20E10 00002C 0004+00 0/1 0/0 0/0 .rodata          @3831 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3831 = 600.0f;
COMPILER_STRIP_GATE(0x80D20E0C, &lit_3831);
#pragma pop

/* 80D20E2C-80D20E6C 000010 0040+00 1/1 0/0 0/0 .data            cc_sph_src$3768 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80D20E6C-80D20E8C -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Udoor_Method */
static actor_method_class l_daObj_Udoor_Method = {
    (process_method_func)daObj_Udoor_Create__FP10fopAc_ac_c,
    (process_method_func)daObj_Udoor_Delete__FP15obj_udoor_class,
    (process_method_func)daObj_Udoor_Execute__FP15obj_udoor_class,
    (process_method_func)daObj_Udoor_IsDelete__FP15obj_udoor_class,
    (process_method_func)daObj_Udoor_Draw__FP15obj_udoor_class,
};

/* 80D20E8C-80D20EBC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_UDOOR */
extern actor_process_profile_definition g_profile_OBJ_UDOOR = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_OBJ_UDOOR,          // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(obj_udoor_class), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  77,                      // mPriority
  &l_daObj_Udoor_Method,   // sub_method
  0x00040100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80D20EBC-80D20EC8 0000A0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80D20EC8-80D20ED4 0000AC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80D20B40-80D20D48 000480 0208+00 1/0 0/0 0/0 .text            daObj_Udoor_Create__FP10fopAc_ac_c
 */
static void daObj_Udoor_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80D20D48-80D20D90 000688 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80D20D90-80D20DD8 0006D0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80D20E10-80D20E10 000030 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
