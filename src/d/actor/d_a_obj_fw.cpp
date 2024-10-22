/**
 * @file d_a_obj_fw.cpp
 * 
*/

#include "d/actor/d_a_obj_fw.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__14daObj_Fw_HIO_cFv();
extern "C" static void ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" static void daObj_Fw_Draw__FP12obj_fw_class();
extern "C" static void water_check__FP12obj_fw_class();
extern "C" static void fw_float__FP12obj_fw_class();
extern "C" static void action__FP12obj_fw_class();
extern "C" static void daObj_Fw_Execute__FP12obj_fw_class();
extern "C" static bool daObj_Fw_IsDelete__FP12obj_fw_class();
extern "C" static void daObj_Fw_Delete__FP12obj_fw_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daObj_Fw_Create__FP10fopAc_ac_c();
extern "C" void __dt__14daObj_Fw_HIO_cFv();
extern "C" void __sinit_d_a_obj_fw_cpp();
extern "C" extern char const* const d_a_obj_fw__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__18dBgS_ObjGndChk_SplFv();
extern "C" void __dt__18dBgS_ObjGndChk_SplFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80BF2B48-80BF2B4C 000000 0004+00 5/5 0/0 0/0 .rodata          @3647 */
SECTION_RODATA static f32 const lit_3647 = 1.0f;
COMPILER_STRIP_GATE(0x80BF2B48, &lit_3647);

/* 80BF2BAC-80BF2BB4 000000 0008+00 1/1 0/0 0/0 .data            bmdd$3836 */
SECTION_DATA static u8 bmdd[8] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05,
};

/* 80BF2BB4-80BF2BBC 000008 0008+00 1/1 0/0 0/0 .data            dzbd$3837 */
SECTION_DATA static u8 dzbd[8] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x09,
};

/* 80BF2BBC-80BF2BDC -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Fw_Method */
static actor_method_class l_daObj_Fw_Method = {
    (process_method_func)daObj_Fw_Create__FP10fopAc_ac_c,
    (process_method_func)daObj_Fw_Delete__FP12obj_fw_class,
    (process_method_func)daObj_Fw_Execute__FP12obj_fw_class,
    (process_method_func)daObj_Fw_IsDelete__FP12obj_fw_class,
    (process_method_func)daObj_Fw_Draw__FP12obj_fw_class,
};

/* 80BF2BDC-80BF2C0C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_FW */
extern actor_process_profile_definition g_profile_OBJ_FW = {
  fpcLy_CURRENT_e,        // mLayerID
  8,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_OBJ_FW,            // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(obj_fw_class),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  42,                     // mPriority
  &l_daObj_Fw_Method,     // sub_method
  0x00044100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80BF2C0C-80BF2C18 000060 000C+00 2/2 0/0 0/0 .data            __vt__14daObj_Fw_HIO_c */
SECTION_DATA extern void* __vt__14daObj_Fw_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daObj_Fw_HIO_cFv,
};

/* 80BF204C-80BF2070 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__14daObj_Fw_HIO_cFv */
daObj_Fw_HIO_c::daObj_Fw_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BF2B4C-80BF2B50 000004 0004+00 0/1 0/0 0/0 .rodata          @3667 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3667 = -50.0f;
COMPILER_STRIP_GATE(0x80BF2B4C, &lit_3667);
#pragma pop

/* 80BF2B50-80BF2B54 000008 0004+00 0/3 0/0 0/0 .rodata          @3668 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3668[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80BF2B50, &lit_3668);
#pragma pop

/* 80BF2B54-80BF2B58 00000C 0004+00 0/2 0/0 0/0 .rodata          @3669 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3669 = 10.0f;
COMPILER_STRIP_GATE(0x80BF2B54, &lit_3669);
#pragma pop

/* 80BF2C20-80BF2C24 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80BF2C20[4];

/* 80BF2C24-80BF2C30 00000C 000C+00 1/1 0/0 0/0 .bss             @3642 */
static u8 lit_3642[12];

/* 80BF2C30-80BF2C3C 000018 000C+00 4/4 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[12];

/* 80BF2070-80BF219C 000110 012C+00 1/1 0/0 0/0 .text
 * ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c            */
static void ride_call_back(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* 80BF219C-80BF2200 00023C 0064+00 1/0 0/0 0/0 .text            daObj_Fw_Draw__FP12obj_fw_class */
static void daObj_Fw_Draw(obj_fw_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BF2B58-80BF2B5C 000010 0004+00 1/1 0/0 0/0 .rodata          @3694 */
SECTION_RODATA static f32 const lit_3694 = 500.0f;
COMPILER_STRIP_GATE(0x80BF2B58, &lit_3694);

/* 80BF2200-80BF22AC 0002A0 00AC+00 1/1 0/0 0/0 .text            water_check__FP12obj_fw_class */
static void water_check(obj_fw_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BF2B5C-80BF2B60 000014 0004+00 0/1 0/0 0/0 .rodata          @3740 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3740 = 0.25f;
COMPILER_STRIP_GATE(0x80BF2B5C, &lit_3740);
#pragma pop

/* 80BF2B60-80BF2B64 000018 0004+00 0/1 0/0 0/0 .rodata          @3741 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3741 = 3.5f;
COMPILER_STRIP_GATE(0x80BF2B60, &lit_3741);
#pragma pop

/* 80BF2B64-80BF2B68 00001C 0004+00 0/1 0/0 0/0 .rodata          @3742 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3742 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80BF2B64, &lit_3742);
#pragma pop

/* 80BF2B68-80BF2B6C 000020 0004+00 0/1 0/0 0/0 .rodata          @3743 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3743 = -300.0f;
COMPILER_STRIP_GATE(0x80BF2B68, &lit_3743);
#pragma pop

/* 80BF2B6C-80BF2B70 000024 0004+00 0/1 0/0 0/0 .rodata          @3744 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3744 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x80BF2B6C, &lit_3744);
#pragma pop

/* 80BF2B70-80BF2B74 000028 0004+00 0/1 0/0 0/0 .rodata          @3745 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3745 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80BF2B70, &lit_3745);
#pragma pop

/* 80BF2B74-80BF2B78 00002C 0004+00 0/1 0/0 0/0 .rodata          @3746 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3746 = 300.0f;
COMPILER_STRIP_GATE(0x80BF2B74, &lit_3746);
#pragma pop

/* 80BF2B78-80BF2B7C 000030 0004+00 0/1 0/0 0/0 .rodata          @3747 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3747 = 2.0f;
COMPILER_STRIP_GATE(0x80BF2B78, &lit_3747);
#pragma pop

/* 80BF2B7C-80BF2B80 000034 0004+00 0/1 0/0 0/0 .rodata          @3748 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3748 = 20.0f;
COMPILER_STRIP_GATE(0x80BF2B7C, &lit_3748);
#pragma pop

/* 80BF2B80-80BF2B84 000038 0004+00 0/1 0/0 0/0 .rodata          @3749 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3749 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BF2B80, &lit_3749);
#pragma pop

/* 80BF2B84-80BF2B88 00003C 0004+00 0/1 0/0 0/0 .rodata          @3750 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3750 = -20.0f;
COMPILER_STRIP_GATE(0x80BF2B84, &lit_3750);
#pragma pop

/* 80BF2B88-80BF2B8C 000040 0004+00 0/1 0/0 0/0 .rodata          @3751 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3751 = 3.0f;
COMPILER_STRIP_GATE(0x80BF2B88, &lit_3751);
#pragma pop

/* 80BF22AC-80BF24C4 00034C 0218+00 1/1 0/0 0/0 .text            fw_float__FP12obj_fw_class */
static void fw_float(obj_fw_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BF2B8C-80BF2B90 000044 0004+00 0/1 0/0 0/0 .rodata          @3802 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3802 = 15.0f;
COMPILER_STRIP_GATE(0x80BF2B8C, &lit_3802);
#pragma pop

/* 80BF24C4-80BF2670 000564 01AC+00 1/1 0/0 0/0 .text            action__FP12obj_fw_class */
static void action(obj_fw_class* param_0) {
    // NONMATCHING
}

/* 80BF2670-80BF2718 000710 00A8+00 2/1 0/0 0/0 .text            daObj_Fw_Execute__FP12obj_fw_class
 */
static void daObj_Fw_Execute(obj_fw_class* param_0) {
    // NONMATCHING
}

/* 80BF2718-80BF2720 0007B8 0008+00 1/0 0/0 0/0 .text            daObj_Fw_IsDelete__FP12obj_fw_class
 */
static bool daObj_Fw_IsDelete(obj_fw_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80BF2BA4-80BF2BA4 00005C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BF2BA4 = "RYUW00";
#pragma pop

/* 80BF2720-80BF279C 0007C0 007C+00 1/0 0/0 0/0 .text            daObj_Fw_Delete__FP12obj_fw_class
 */
static void daObj_Fw_Delete(obj_fw_class* param_0) {
    // NONMATCHING
}

/* 80BF279C-80BF28D0 00083C 0134+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BF2B90-80BF2B94 000048 0004+00 0/1 0/0 0/0 .rodata          @3918 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3918 = -1000.0f;
COMPILER_STRIP_GATE(0x80BF2B90, &lit_3918);
#pragma pop

/* 80BF2B94-80BF2B98 00004C 0004+00 0/1 0/0 0/0 .rodata          @3919 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3919 = -600.0f;
COMPILER_STRIP_GATE(0x80BF2B94, &lit_3919);
#pragma pop

/* 80BF2B98-80BF2B9C 000050 0004+00 0/1 0/0 0/0 .rodata          @3920 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3920 = 1000.0f;
COMPILER_STRIP_GATE(0x80BF2B98, &lit_3920);
#pragma pop

/* 80BF2B9C-80BF2BA0 000054 0004+00 0/1 0/0 0/0 .rodata          @3921 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3921 = 600.0f;
COMPILER_STRIP_GATE(0x80BF2B9C, &lit_3921);
#pragma pop

/* 80BF2BA0-80BF2BA4 000058 0004+00 0/1 0/0 0/0 .rodata          @3922 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3922 = 65536.0f;
COMPILER_STRIP_GATE(0x80BF2BA0, &lit_3922);
#pragma pop

/* 80BF28D0-80BF2AB0 000970 01E0+00 1/0 0/0 0/0 .text            daObj_Fw_Create__FP10fopAc_ac_c */
static void daObj_Fw_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80BF2AB0-80BF2AF8 000B50 0048+00 2/1 0/0 0/0 .text            __dt__14daObj_Fw_HIO_cFv */
daObj_Fw_HIO_c::~daObj_Fw_HIO_c() {
    // NONMATCHING
}

/* 80BF2AF8-80BF2B34 000B98 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_fw_cpp */
void __sinit_d_a_obj_fw_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80BF2AF8, __sinit_d_a_obj_fw_cpp);
#pragma pop

/* 80BF2BA4-80BF2BA4 00005C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */