/**
 * @file d_a_obj_maki.cpp
 * 
*/

#include "d/actor/d_a_obj_maki.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__16daObj_Maki_HIO_cFv();
extern "C" static void daObj_Maki_Draw__FP14obj_maki_class();
extern "C" static void daObj_Maki_Execute__FP14obj_maki_class();
extern "C" static bool daObj_Maki_IsDelete__FP14obj_maki_class();
extern "C" static void daObj_Maki_Delete__FP14obj_maki_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daObj_Maki_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__16daObj_Maki_HIO_cFv();
extern "C" void __sinit_d_a_obj_maki_cpp();
extern "C" extern char const* const d_a_obj_maki__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_plight_set__FP15LIGHT_INFLUENCE();
extern "C" void dKy_plight_cut__FP15LIGHT_INFLUENCE();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void _savegpr_23();
extern "C" void _savegpr_29();
extern "C" void _restgpr_23();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80C90974-80C90980 000000 000A+02 1/1 0/0 0/0 .data            eff_id$3814 */
SECTION_DATA static u8 eff_id_3814[10 + 2 /* padding */] = {
    0x82,
    0x04,
    0x82,
    0x05,
    0x82,
    0x06,
    0x82,
    0x07,
    0x82,
    0x08,
    /* padding */
    0x00,
    0x00,
};

/* 80C90980-80C90984 00000C 0004+00 1/1 0/0 0/0 .data            eff_id$3833 */
SECTION_DATA static u8 eff_id_3833[4] = {
    0x82,
    0x09,
    0x82,
    0x0A,
};

/* 80C90984-80C909C4 000010 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4010 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0x40000000, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_METAL, 0x2, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80C909C4-80C909E4 -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Maki_Method */
static actor_method_class l_daObj_Maki_Method = {
    (process_method_func)daObj_Maki_Create__FP10fopAc_ac_c,
    (process_method_func)daObj_Maki_Delete__FP14obj_maki_class,
    (process_method_func)daObj_Maki_Execute__FP14obj_maki_class,
    (process_method_func)daObj_Maki_IsDelete__FP14obj_maki_class,
    (process_method_func)daObj_Maki_Draw__FP14obj_maki_class,
};

/* 80C909E4-80C90A14 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_MAKI */
extern actor_process_profile_definition g_profile_OBJ_MAKI = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_OBJ_MAKI,          // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(obj_maki_class), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  50,                     // mPriority
  &l_daObj_Maki_Method,   // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C90A14-80C90A20 0000A0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80C90A20-80C90A2C 0000AC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C90A2C-80C90A38 0000B8 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80C90A38-80C90A44 0000C4 000C+00 2/2 0/0 0/0 .data            __vt__16daObj_Maki_HIO_c */
SECTION_DATA extern void* __vt__16daObj_Maki_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daObj_Maki_HIO_cFv,
};

/* 80C8FE0C-80C8FE24 0000EC 0018+00 1/1 0/0 0/0 .text            __ct__16daObj_Maki_HIO_cFv */
daObj_Maki_HIO_c::daObj_Maki_HIO_c() {
    // NONMATCHING
}

/* 80C8FE24-80C8FEDC 000104 00B8+00 1/0 0/0 0/0 .text            daObj_Maki_Draw__FP14obj_maki_class
 */
static void daObj_Maki_Draw(obj_maki_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C90934-80C90938 000000 0004+00 3/3 0/0 0/0 .rodata          @3928 */
SECTION_RODATA static f32 const lit_3928 = 1.0f;
COMPILER_STRIP_GATE(0x80C90934, &lit_3928);

/* 80C90938-80C9093C 000004 0004+00 0/1 0/0 0/0 .rodata          @3929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3929 = -1.0f;
COMPILER_STRIP_GATE(0x80C90938, &lit_3929);
#pragma pop

/* 80C9093C-80C90940 000008 0004+00 0/1 0/0 0/0 .rodata          @3930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3930 = -150.0f;
COMPILER_STRIP_GATE(0x80C9093C, &lit_3930);
#pragma pop

/* 80C90940-80C90944 00000C 0004+00 0/1 0/0 0/0 .rodata          @3931 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3931 = 250.0f;
COMPILER_STRIP_GATE(0x80C90940, &lit_3931);
#pragma pop

/* 80C90944-80C90948 000010 0004+00 0/1 0/0 0/0 .rodata          @3932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3932 = 50.0f;
COMPILER_STRIP_GATE(0x80C90944, &lit_3932);
#pragma pop

/* 80C90948-80C9094C 000014 0004+00 1/2 0/0 0/0 .rodata          @3933 */
SECTION_RODATA static f32 const lit_3933 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C90948, &lit_3933);

/* 80C9094C-80C90950 000018 0004+00 0/1 0/0 0/0 .rodata          @3934 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3934[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C9094C, &lit_3934);
#pragma pop

/* 80C90950-80C90954 00001C 0004+00 0/1 0/0 0/0 .rodata          @3935 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3935 = 20000.0f;
COMPILER_STRIP_GATE(0x80C90950, &lit_3935);
#pragma pop

/* 80C8FEDC-80C90378 0001BC 049C+00 2/1 0/0 0/0 .text daObj_Maki_Execute__FP14obj_maki_class */
static void daObj_Maki_Execute(obj_maki_class* param_0) {
    // NONMATCHING
}

/* 80C90378-80C90380 000658 0008+00 1/0 0/0 0/0 .text daObj_Maki_IsDelete__FP14obj_maki_class */
static bool daObj_Maki_IsDelete(obj_maki_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80C90960-80C90960 00002C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C90960 = "Obj_maki";
#pragma pop

/* 80C90A50-80C90A54 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80C90A50[4];

/* 80C90380-80C903F0 000660 0070+00 1/0 0/0 0/0 .text daObj_Maki_Delete__FP14obj_maki_class */
static void daObj_Maki_Delete(obj_maki_class* param_0) {
    // NONMATCHING
}

/* 80C903F0-80C90544 0006D0 0154+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C90544-80C9058C 000824 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C90954-80C90958 000020 0004+00 0/1 0/0 0/0 .rodata          @4075 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4075 = -500.0f;
COMPILER_STRIP_GATE(0x80C90954, &lit_4075);
#pragma pop

/* 80C90958-80C9095C 000024 0004+00 0/1 0/0 0/0 .rodata          @4076 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4076 = -200.0f;
COMPILER_STRIP_GATE(0x80C90958, &lit_4076);
#pragma pop

/* 80C9095C-80C90960 000028 0004+00 0/1 0/0 0/0 .rodata          @4077 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4077 = 500.0f;
COMPILER_STRIP_GATE(0x80C9095C, &lit_4077);
#pragma pop

/* 80C90960-80C90960 00002C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C90969 = "F_SP118";
#pragma pop

/* 80C90A54-80C90A60 00000C 000C+00 1/1 0/0 0/0 .bss             @3764 */
static u8 lit_3764[12];

/* 80C90A60-80C90A68 000018 0008+00 2/2 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[8];

/* 80C9058C-80C9080C 00086C 0280+00 1/0 0/0 0/0 .text            daObj_Maki_Create__FP10fopAc_ac_c
 */
static void daObj_Maki_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C9080C-80C90854 000AEC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80C90854-80C9089C 000B34 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C9089C-80C908E4 000B7C 0048+00 2/1 0/0 0/0 .text            __dt__16daObj_Maki_HIO_cFv */
daObj_Maki_HIO_c::~daObj_Maki_HIO_c() {
    // NONMATCHING
}

/* 80C908E4-80C90920 000BC4 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_maki_cpp */
void __sinit_d_a_obj_maki_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80C908E4, __sinit_d_a_obj_maki_cpp);
#pragma pop

/* 80C90960-80C90960 00002C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
