/**
 * @file d_a_obj_kita.cpp
 * 
*/

#include "d/actor/d_a_obj_kita.h"
#include "dol2asm.h"




//
// Forward References:
//

extern "C" void __ct__16daObj_Kita_HIO_cFv();
extern "C" static void daObj_Kita_Draw__FP14obj_kita_class();
extern "C" static void ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" static void ita_control__FP14obj_kita_class();
extern "C" static void action__FP14obj_kita_class();
extern "C" static void daObj_Kita_Execute__FP14obj_kita_class();
extern "C" static bool daObj_Kita_IsDelete__FP14obj_kita_class();
extern "C" static void daObj_Kita_Delete__FP14obj_kita_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daObj_Kita_Create__FP10fopAc_ac_c();
extern "C" void __dt__6kita_sFv();
extern "C" void __ct__6kita_sFv();
extern "C" void __dt__16daObj_Kita_HIO_cFv();
extern "C" void __sinit_d_a_obj_kita_cpp();
extern "C" extern char const* const d_a_obj_kita__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void dKyw_get_wind_vec__Fv();
extern "C" void dKyw_get_wind_pow__Fv();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_21();
extern "C" void _savegpr_23();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _restgpr_21();
extern "C" void _restgpr_23();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C45F1C-80C45F20 000000 0004+00 4/4 0/0 0/0 .rodata          @3769 */
SECTION_RODATA static f32 const lit_3769 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C45F1C, &lit_3769);

/* 80C45F20-80C45F24 000004 0004+00 0/1 0/0 0/0 .rodata          @3770 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3770 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C45F20, &lit_3770);
#pragma pop

/* 80C45F24-80C45F28 000008 0004+00 0/1 0/0 0/0 .rodata          @3771 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3771 = 200.0f;
COMPILER_STRIP_GATE(0x80C45F24, &lit_3771);
#pragma pop

/* 80C45F28-80C45F2C 00000C 0004+00 0/1 0/0 0/0 .rodata          @3772 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3772 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C45F28, &lit_3772);
#pragma pop

/* 80C45F8C-80C45FAC -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Kita_Method */
static actor_method_class l_daObj_Kita_Method = {
    (process_method_func)daObj_Kita_Create__FP10fopAc_ac_c,
    (process_method_func)daObj_Kita_Delete__FP14obj_kita_class,
    (process_method_func)daObj_Kita_Execute__FP14obj_kita_class,
    (process_method_func)daObj_Kita_IsDelete__FP14obj_kita_class,
    (process_method_func)daObj_Kita_Draw__FP14obj_kita_class,
};

/* 80C45FAC-80C45FDC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_KITA */
extern actor_process_profile_definition g_profile_OBJ_KITA = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_OBJ_KITA,          // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(obj_kita_class), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  707,                    // mPriority
  &l_daObj_Kita_Method,   // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C45FDC-80C45FE8 000050 000C+00 2/2 0/0 0/0 .data            __vt__16daObj_Kita_HIO_c */
SECTION_DATA extern void* __vt__16daObj_Kita_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daObj_Kita_HIO_cFv,
};

/* 80C4534C-80C4538C 0000EC 0040+00 1/1 0/0 0/0 .text            __ct__16daObj_Kita_HIO_cFv */
daObj_Kita_HIO_c::daObj_Kita_HIO_c() {
    // NONMATCHING
}

/* 80C4538C-80C45424 00012C 0098+00 1/0 0/0 0/0 .text            daObj_Kita_Draw__FP14obj_kita_class
 */
static void daObj_Kita_Draw(obj_kita_class* param_0) {
    // NONMATCHING
}

/* 80C45424-80C45430 0001C4 000C+00 1/1 0/0 0/0 .text
 * ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c            */
static void ride_call_back(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C45F2C-80C45F30 000010 0004+00 0/1 0/0 0/0 .rodata          @3897 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3897 = 5.0f;
COMPILER_STRIP_GATE(0x80C45F2C, &lit_3897);
#pragma pop

/* 80C45F30-80C45F34 000014 0004+00 0/1 0/0 0/0 .rodata          @3898 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3898 = 500.0f;
COMPILER_STRIP_GATE(0x80C45F30, &lit_3898);
#pragma pop

/* 80C45F34-80C45F38 000018 0004+00 0/3 0/0 0/0 .rodata          @3899 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3899 = 1.0f;
COMPILER_STRIP_GATE(0x80C45F34, &lit_3899);
#pragma pop

/* 80C45F38-80C45F3C 00001C 0004+00 0/1 0/0 0/0 .rodata          @3900 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3900 = 10.0f;
COMPILER_STRIP_GATE(0x80C45F38, &lit_3900);
#pragma pop

/* 80C45F3C-80C45F40 000020 0004+00 0/1 0/0 0/0 .rodata          @3901 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3901 = 3.5f;
COMPILER_STRIP_GATE(0x80C45F3C, &lit_3901);
#pragma pop

/* 80C45F40-80C45F44 000024 0004+00 0/1 0/0 0/0 .rodata          @3902 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3902 = -1.0f;
COMPILER_STRIP_GATE(0x80C45F40, &lit_3902);
#pragma pop

/* 80C45F44-80C45F48 000028 0004+00 0/2 0/0 0/0 .rodata          @3903 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3903[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C45F44, &lit_3903);
#pragma pop

/* 80C45F48-80C45F4C 00002C 0004+00 0/1 0/0 0/0 .rodata          @3904 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3904 = 9000.0f;
COMPILER_STRIP_GATE(0x80C45F48, &lit_3904);
#pragma pop

/* 80C45F4C-80C45F50 000030 0004+00 0/1 0/0 0/0 .rodata          @3905 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3905 = 3000.0f;
COMPILER_STRIP_GATE(0x80C45F4C, &lit_3905);
#pragma pop

/* 80C45F50-80C45F54 000034 0004+00 0/1 0/0 0/0 .rodata          @3906 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3906 = 7000.0f;
COMPILER_STRIP_GATE(0x80C45F50, &lit_3906);
#pragma pop

/* 80C45F54-80C45F58 000038 0004+00 0/1 0/0 0/0 .rodata          @3907 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3907 = 1000.0f;
COMPILER_STRIP_GATE(0x80C45F54, &lit_3907);
#pragma pop

/* 80C45F58-80C45F5C 00003C 0004+00 0/1 0/0 0/0 .rodata          @3908 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3908 = 3.0f / 40.0f;
COMPILER_STRIP_GATE(0x80C45F58, &lit_3908);
#pragma pop

/* 80C45F5C-80C45F60 000040 0004+00 0/1 0/0 0/0 .rodata          @3909 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3909 = -40.0f;
COMPILER_STRIP_GATE(0x80C45F5C, &lit_3909);
#pragma pop

/* 80C45F60-80C45F64 000044 0004+00 0/1 0/0 0/0 .rodata          @3910 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3910 = 3.0f;
COMPILER_STRIP_GATE(0x80C45F60, &lit_3910);
#pragma pop

/* 80C45F64-80C45F6C 000048 0008+00 0/1 0/0 0/0 .rodata          @3913 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3913[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C45F64, &lit_3913);
#pragma pop

/* 80C45FF0-80C45FF4 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80C45FF0[4];

/* 80C45FF4-80C46000 00000C 000C+00 1/1 0/0 0/0 .bss             @3764 */
static u8 lit_3764[12];

/* 80C46000-80C46018 000018 0018+00 4/4 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[24];

/* 80C45430-80C458D8 0001D0 04A8+00 1/1 0/0 0/0 .text            ita_control__FP14obj_kita_class */
static void ita_control(obj_kita_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C45F6C-80C45F70 000050 0004+00 0/1 0/0 0/0 .rodata          @3955 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3955 = -200.0f;
COMPILER_STRIP_GATE(0x80C45F6C, &lit_3955);
#pragma pop

/* 80C45F70-80C45F74 000054 0004+00 0/1 0/0 0/0 .rodata          @3956 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3956 = 23.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C45F70, &lit_3956);
#pragma pop

/* 80C458D8-80C45A10 000678 0138+00 1/1 0/0 0/0 .text            action__FP14obj_kita_class */
static void action(obj_kita_class* param_0) {
    // NONMATCHING
}

/* 80C45A10-80C45A6C 0007B0 005C+00 2/1 0/0 0/0 .text daObj_Kita_Execute__FP14obj_kita_class */
static void daObj_Kita_Execute(obj_kita_class* param_0) {
    // NONMATCHING
}

/* 80C45A6C-80C45A74 00080C 0008+00 1/0 0/0 0/0 .text daObj_Kita_IsDelete__FP14obj_kita_class */
static bool daObj_Kita_IsDelete(obj_kita_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80C45F80-80C45F80 000064 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C45F80 = "Obj_kita";
#pragma pop

/* 80C45A74-80C45B10 000814 009C+00 1/0 0/0 0/0 .text daObj_Kita_Delete__FP14obj_kita_class */
static void daObj_Kita_Delete(obj_kita_class* param_0) {
    // NONMATCHING
}

/* 80C45B10-80C45C4C 0008B0 013C+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C45F74-80C45F78 000058 0004+00 0/1 0/0 0/0 .rodata          @4083 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4083 = 0.5f;
COMPILER_STRIP_GATE(0x80C45F74, &lit_4083);
#pragma pop

/* 80C45F78-80C45F7C 00005C 0004+00 0/1 0/0 0/0 .rodata          @4084 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4084 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C45F78, &lit_4084);
#pragma pop

/* 80C45F7C-80C45F80 000060 0004+00 0/1 0/0 0/0 .rodata          @4085 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4085 = 65535.0f;
COMPILER_STRIP_GATE(0x80C45F7C, &lit_4085);
#pragma pop

/* 80C45C4C-80C45E44 0009EC 01F8+00 1/0 0/0 0/0 .text            daObj_Kita_Create__FP10fopAc_ac_c
 */
static void daObj_Kita_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C45E44-80C45E80 000BE4 003C+00 1/1 0/0 0/0 .text            __dt__6kita_sFv */
kita_s::~kita_s() {
    // NONMATCHING
}

/* 80C45E80-80C45E84 000C20 0004+00 1/1 0/0 0/0 .text            __ct__6kita_sFv */
kita_s::kita_s() {
    /* empty function */
}

/* 80C45E84-80C45ECC 000C24 0048+00 2/1 0/0 0/0 .text            __dt__16daObj_Kita_HIO_cFv */
daObj_Kita_HIO_c::~daObj_Kita_HIO_c() {
    // NONMATCHING
}

/* 80C45ECC-80C45F08 000C6C 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_kita_cpp */
void __sinit_d_a_obj_kita_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C45ECC, __sinit_d_a_obj_kita_cpp);
#pragma pop

/* 80C45F80-80C45F80 000064 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
