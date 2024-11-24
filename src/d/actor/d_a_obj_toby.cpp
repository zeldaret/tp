/**
 * @file d_a_obj_toby.cpp
 * 
*/

#include "d/actor/d_a_obj_toby.h"
#include "dol2asm.h"
#include "d/d_camera.h"

//
// Forward References:
//

extern "C" void __ct__16daObj_Toby_HIO_cFv();
extern "C" static void daObj_Toby_Draw__FP14obj_toby_class();
extern "C" static void s_bomb_sub__FPvPv();
extern "C" void __dt__4cXyzFv();
extern "C" static void shot_b_sub__FPvPv();
extern "C" static void s_hz_sub__FPvPv();
extern "C" static void yuka_ground__FP14obj_toby_classP6yuka_s();
extern "C" static void yuka_fly__FP14obj_toby_classP6yuka_s();
extern "C" static void yuka_mtxset__FP14obj_toby_classP6yuka_s();
extern "C" static void yuka_control__FP14obj_toby_class();
extern "C" static void demo_camera__FP14obj_toby_class();
extern "C" static void daObj_Toby_Execute__FP14obj_toby_class();
extern "C" static bool daObj_Toby_IsDelete__FP14obj_toby_class();
extern "C" static void daObj_Toby_Delete__FP14obj_toby_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void set_pos_check__FP14obj_toby_classi();
extern "C" static void daObj_Toby_Create__FP10fopAc_ac_c();
extern "C" void __dt__6yuka_sFv();
extern "C" void __ct__6yuka_sFv();
extern "C" void __dt__16daObj_Toby_HIO_cFv();
extern "C" void __sinit_d_a_obj_toby_cpp();
extern "C" void getLeftHandPos__9daPy_py_cCFv();
extern "C" extern char const* const d_a_obj_toby__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc();
extern "C" void removeSimpleModel__14dComIfG_play_cFP12J3DModelDatai();
extern "C" void entrySimpleModel__14dComIfG_play_cFP8J3DModeli();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void create__19dPa_simpleEcallBackFP17JPAEmitterManagerUsUc();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void checkBoomerangCharge__9daPy_py_cFv();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __apl__5csXyzFR5csXyz();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_21();
extern "C" void _savegpr_23();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_29();
extern "C" void _restgpr_21();
extern "C" void _restgpr_23();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void isWait__8daE_HZ_cFv();
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80D155E8-80D155EC 000000 0004+00 9/9 0/0 0/0 .rodata          @3806 */
SECTION_RODATA static f32 const lit_3806 = 1.0f;
COMPILER_STRIP_GATE(0x80D155E8, &lit_3806);

/* 80D156D4-80D15794 000000 00C0+00 1/1 0/0 0/0 .data            r05yuka_image */
SECTION_DATA static u8 r05yuka_image[192] = {
    0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x01, 0x01, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x00, 0x01, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x01, 0x00, 0x01, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x01, 0x01, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D15794-80D15854 0000C0 00C0+00 1/1 0/0 0/0 .data            r11yuka_image */
SECTION_DATA static u8 r11yuka_image[192] = {
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x01, 0x01, 0x00, 0x01, 0x01, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x01, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x01, 0x00, 0x01, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x01, 0x01, 0x00, 0x01, 0x01, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80D15854-80D15874 -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Toby_Method */
static actor_method_class l_daObj_Toby_Method = {
    (process_method_func)daObj_Toby_Create__FP10fopAc_ac_c,
    (process_method_func)daObj_Toby_Delete__FP14obj_toby_class,
    (process_method_func)daObj_Toby_Execute__FP14obj_toby_class,
    (process_method_func)daObj_Toby_IsDelete__FP14obj_toby_class,
    (process_method_func)daObj_Toby_Draw__FP14obj_toby_class,
};

/* 80D15874-80D158A4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_TOBY */
extern actor_process_profile_definition g_profile_OBJ_TOBY = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_OBJ_TOBY,          // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(obj_toby_class), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  58,                     // mPriority
  &l_daObj_Toby_Method,   // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80D158A4-80D158B0 0001D0 000C+00 2/2 0/0 0/0 .data            __vt__16daObj_Toby_HIO_c */
SECTION_DATA extern void* __vt__16daObj_Toby_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daObj_Toby_HIO_cFv,
};

/* 80D1378C-80D137B0 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__16daObj_Toby_HIO_cFv */
daObj_Toby_HIO_c::daObj_Toby_HIO_c() {
    // NONMATCHING
}

/* 80D137B0-80D13870 000110 00C0+00 1/0 0/0 0/0 .text            daObj_Toby_Draw__FP14obj_toby_class
 */
static void daObj_Toby_Draw(obj_toby_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D155EC-80D155F0 000004 0004+00 0/4 0/0 0/0 .rodata          @3880 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3880[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80D155EC, &lit_3880);
#pragma pop

/* 80D155F0-80D155F8 000008 0008+00 0/2 0/0 0/0 .rodata          @3881 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3881[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D155F0, &lit_3881);
#pragma pop

/* 80D155F8-80D15600 000010 0008+00 0/2 0/0 0/0 .rodata          @3882 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3882[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D155F8, &lit_3882);
#pragma pop

/* 80D15600-80D15608 000018 0008+00 0/2 0/0 0/0 .rodata          @3883 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3883[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D15600, &lit_3883);
#pragma pop

/* 80D15608-80D1560C 000020 0004+00 0/1 0/0 0/0 .rodata          @3884 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3884 = 350.0f;
COMPILER_STRIP_GATE(0x80D15608, &lit_3884);
#pragma pop

/* 80D13870-80D139FC 0001D0 018C+00 1/1 0/0 0/0 .text            s_bomb_sub__FPvPv */
static void s_bomb_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80D139FC-80D13A38 00035C 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80D13A38-80D13ABC 000398 0084+00 1/1 0/0 0/0 .text            shot_b_sub__FPvPv */
static void shot_b_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D1560C-80D15610 000024 0004+00 1/1 0/0 0/0 .rodata          @3917 */
SECTION_RODATA static f32 const lit_3917 = 1600.0f;
COMPILER_STRIP_GATE(0x80D1560C, &lit_3917);

/* 80D158B8-80D158BC 000008 0001+03 2/2 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80D158BC-80D158C0 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80D158C0-80D158C4 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80D158C4-80D158C8 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80D158C8-80D158CC 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80D158CC-80D158D0 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80D158D0-80D158D4 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80D158D4-80D158D8 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80D158D8-80D158DC 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80D158DC-80D158E0 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80D158E0-80D158E4 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80D158E4-80D158E8 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80D158E8-80D158EC 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80D158EC-80D158F0 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80D158F0-80D158F4 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80D158F4-80D158F8 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 80D158F4 0001+00 data_80D158F4 @1009 */
/* 80D158F5 0003+00 data_80D158F5 None */
static u8 struct_80D158F4[4];

/* 80D158F8-80D15904 000048 000C+00 1/1 0/0 0/0 .bss             @3801 */
static u8 lit_3801[12];

/* 80D15904-80D15910 000054 000C+00 2/2 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[12];

/* 80D15910-80D15914 000060 0004+00 1/2 0/0 0/0 .bss             hz_check_pos_x */
static u8 hz_check_pos_x[4];

/* 80D15914-80D15918 000064 0004+00 1/2 0/0 0/0 .bss             hz_check_pos_z */
static u8 hz_check_pos_z[4];

/* 80D13ABC-80D13B58 00041C 009C+00 1/1 0/0 0/0 .text            s_hz_sub__FPvPv */
static void s_hz_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D15610-80D15614 000028 0004+00 0/1 0/0 0/0 .rodata          @4077 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4077 = 80.0f;
COMPILER_STRIP_GATE(0x80D15610, &lit_4077);
#pragma pop

/* 80D15614-80D15618 00002C 0004+00 0/2 0/0 0/0 .rodata          @4078 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4078 = 100.0f;
COMPILER_STRIP_GATE(0x80D15614, &lit_4078);
#pragma pop

/* 80D15618-80D1561C 000030 0004+00 0/3 0/0 0/0 .rodata          @4079 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4079 = 50.0f;
COMPILER_STRIP_GATE(0x80D15618, &lit_4079);
#pragma pop

/* 80D1561C-80D15620 000034 0004+00 0/2 0/0 0/0 .rodata          @4080 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4080 = 65536.0f;
COMPILER_STRIP_GATE(0x80D1561C, &lit_4080);
#pragma pop

/* 80D15620-80D15624 000038 0004+00 1/3 0/0 0/0 .rodata          @4081 */
SECTION_RODATA static f32 const lit_4081 = -1.0f;
COMPILER_STRIP_GATE(0x80D15620, &lit_4081);

/* 80D15624-80D15628 00003C 0004+00 0/1 0/0 0/0 .rodata          @4082 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4082 = -50.0f;
COMPILER_STRIP_GATE(0x80D15624, &lit_4082);
#pragma pop

/* 80D15628-80D1562C 000040 0004+00 0/1 0/0 0/0 .rodata          @4083 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4083 = 400.0f;
COMPILER_STRIP_GATE(0x80D15628, &lit_4083);
#pragma pop

/* 80D1562C-80D15630 000044 0004+00 0/1 0/0 0/0 .rodata          @4084 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4084 = 60.0f;
COMPILER_STRIP_GATE(0x80D1562C, &lit_4084);
#pragma pop

/* 80D15630-80D15634 000048 0004+00 0/2 0/0 0/0 .rodata          @4085 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4085 = 30.0f;
COMPILER_STRIP_GATE(0x80D15630, &lit_4085);
#pragma pop

/* 80D15634-80D15638 00004C 0004+00 0/1 0/0 0/0 .rodata          @4086 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4086 = 4000.0f;
COMPILER_STRIP_GATE(0x80D15634, &lit_4086);
#pragma pop

/* 80D15638-80D1563C 000050 0004+00 0/1 0/0 0/0 .rodata          @4087 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4087 = 500.0f;
COMPILER_STRIP_GATE(0x80D15638, &lit_4087);
#pragma pop

/* 80D1563C-80D15640 000054 0004+00 0/1 0/0 0/0 .rodata          @4088 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4088 = 2000.0f;
COMPILER_STRIP_GATE(0x80D1563C, &lit_4088);
#pragma pop

/* 80D15640-80D15644 000058 0004+00 0/1 0/0 0/0 .rodata          @4089 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4089 = 2.0f;
COMPILER_STRIP_GATE(0x80D15640, &lit_4089);
#pragma pop

/* 80D15644-80D15648 00005C 0004+00 0/1 0/0 0/0 .rodata          @4090 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4090 = 10.0f;
COMPILER_STRIP_GATE(0x80D15644, &lit_4090);
#pragma pop

/* 80D15918-80D15928 000068 000C+04 0/1 0/0 0/0 .bss             @3946 */
#pragma push
#pragma force_active on
static u8 lit_3946[12 + 4 /* padding */];
#pragma pop

/* 80D15928-80D15934 000078 000C+00 0/1 0/0 0/0 .bss             sc$3945 */
#pragma push
#pragma force_active on
static u8 sc_3945[12];
#pragma pop

/* 80D13B58-80D1417C 0004B8 0624+00 1/1 0/0 0/0 .text yuka_ground__FP14obj_toby_classP6yuka_s */
static void yuka_ground(obj_toby_class* param_0, yuka_s* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D15648-80D1564C 000060 0004+00 0/1 0/0 0/0 .rodata          @4117 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4117 = 5.0f;
COMPILER_STRIP_GATE(0x80D15648, &lit_4117);
#pragma pop

/* 80D1417C-80D14264 000ADC 00E8+00 1/1 0/0 0/0 .text yuka_fly__FP14obj_toby_classP6yuka_s */
static void yuka_fly(obj_toby_class* param_0, yuka_s* param_1) {
    // NONMATCHING
}

/* 80D14264-80D14384 000BC4 0120+00 1/1 0/0 0/0 .text yuka_mtxset__FP14obj_toby_classP6yuka_s */
static void yuka_mtxset(obj_toby_class* param_0, yuka_s* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D15934-80D15944 000084 000C+04 0/1 0/0 0/0 .bss             @4167 */
#pragma push
#pragma force_active on
static u8 lit_4167[12 + 4 /* padding */];
#pragma pop

/* 80D15944-80D15950 000094 000C+00 0/1 0/0 0/0 .bss             sc$4166 */
#pragma push
#pragma force_active on
static u8 sc_4166[12];
#pragma pop

/* 80D14384-80D14584 000CE4 0200+00 1/1 0/0 0/0 .text            yuka_control__FP14obj_toby_class */
static void yuka_control(obj_toby_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D1564C-80D15650 000064 0004+00 0/1 0/0 0/0 .rodata          @4271 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4271 = 55.0f;
COMPILER_STRIP_GATE(0x80D1564C, &lit_4271);
#pragma pop

/* 80D15650-80D15654 000068 0004+00 0/1 0/0 0/0 .rodata          @4272 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4272 = 800.0f;
COMPILER_STRIP_GATE(0x80D15650, &lit_4272);
#pragma pop

/* 80D15654-80D15658 00006C 0004+00 0/1 0/0 0/0 .rodata          @4273 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4273 = 200.0f;
COMPILER_STRIP_GATE(0x80D15654, &lit_4273);
#pragma pop

/* 80D15658-80D1565C 000070 0004+00 0/1 0/0 0/0 .rodata          @4274 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4274 = 600.0f;
COMPILER_STRIP_GATE(0x80D15658, &lit_4274);
#pragma pop

/* 80D1565C-80D15660 000074 0004+00 0/2 0/0 0/0 .rodata          @4275 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4275 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80D1565C, &lit_4275);
#pragma pop

/* 80D15660-80D15664 000078 0004+00 0/2 0/0 0/0 .rodata          @4276 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4276 = 0.5f;
COMPILER_STRIP_GATE(0x80D15660, &lit_4276);
#pragma pop

/* 80D14584-80D14810 000EE4 028C+00 1/1 0/0 0/0 .text            demo_camera__FP14obj_toby_class */
static void demo_camera(obj_toby_class* param_0) {
    // NONMATCHING
}

/* 80D14810-80D14884 001170 0074+00 2/1 0/0 0/0 .text daObj_Toby_Execute__FP14obj_toby_class */
static void daObj_Toby_Execute(obj_toby_class* param_0) {
    // NONMATCHING
}

/* 80D14884-80D1488C 0011E4 0008+00 1/0 0/0 0/0 .text daObj_Toby_IsDelete__FP14obj_toby_class */
static bool daObj_Toby_IsDelete(obj_toby_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80D15664-80D1566C 00007C 0008+00 1/1 0/0 0/0 .rodata          l_bmdidx$4300 */
SECTION_RODATA static u8 const l_bmdidx_4300[8] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05,
};
COMPILER_STRIP_GATE(0x80D15664, &l_bmdidx_4300);

/* 80D1488C-80D149DC 0011EC 0150+00 1/0 0/0 0/0 .text daObj_Toby_Delete__FP14obj_toby_class */
static void daObj_Toby_Delete(obj_toby_class* param_0) {
    // NONMATCHING
}

/* 80D149DC-80D14BD4 00133C 01F8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D1566C-80D15670 000084 0004+00 0/1 0/0 0/0 .rodata          @4422 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4422 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80D1566C, &lit_4422);
#pragma pop

/* 80D15670-80D15674 000088 0004+00 0/1 0/0 0/0 .rodata          @4423 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4423 = 8.0f;
COMPILER_STRIP_GATE(0x80D15670, &lit_4423);
#pragma pop

/* 80D15674-80D15678 00008C 0004+00 0/1 0/0 0/0 .rodata          @4424 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4424 = 2.5f;
COMPILER_STRIP_GATE(0x80D15674, &lit_4424);
#pragma pop

/* 80D15678-80D1567C 000090 0004+00 0/1 0/0 0/0 .rodata          @4425 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4425 = 4.0f;
COMPILER_STRIP_GATE(0x80D15678, &lit_4425);
#pragma pop

/* 80D14BD4-80D14CFC 001534 0128+00 1/1 0/0 0/0 .text            set_pos_check__FP14obj_toby_classi
 */
static void set_pos_check(obj_toby_class* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D1567C-80D15684 000094 0008+00 0/1 0/0 0/0 .rodata          l_bmdidx$4530 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_bmdidx_4530[8] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05,
};
COMPILER_STRIP_GATE(0x80D1567C, &l_bmdidx_4530);
#pragma pop

/* 80D15684-80D15688 00009C 0004+00 0/1 0/0 0/0 .rodata          @4751 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4751 = 15.0f;
COMPILER_STRIP_GATE(0x80D15684, &lit_4751);
#pragma pop

/* 80D15688-80D1568C 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4752 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4752 = 150.0f;
COMPILER_STRIP_GATE(0x80D15688, &lit_4752);
#pragma pop

/* 80D1568C-80D15690 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4753 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4753 = 1.5f;
COMPILER_STRIP_GATE(0x80D1568C, &lit_4753);
#pragma pop

/* 80D15690-80D15694 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4754 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4754 = 75.0f;
COMPILER_STRIP_GATE(0x80D15690, &lit_4754);
#pragma pop

/* 80D15694-80D15698 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4755 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4755 = 32.5f;
COMPILER_STRIP_GATE(0x80D15694, &lit_4755);
#pragma pop

/* 80D15698-80D1569C 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4756 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4756 = 155.0f;
COMPILER_STRIP_GATE(0x80D15698, &lit_4756);
#pragma pop

/* 80D1569C-80D156A0 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4757 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4757 = 250.0f;
COMPILER_STRIP_GATE(0x80D1569C, &lit_4757);
#pragma pop

/* 80D156A0-80D156A4 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4758 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4758 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80D156A0, &lit_4758);
#pragma pop

/* 80D156A4-80D156A8 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4759 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4759 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80D156A4, &lit_4759);
#pragma pop

/* 80D156A8-80D156B0 0000C0 0008+00 0/1 0/0 0/0 .rodata          @4761 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4761[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D156A8, &lit_4761);
#pragma pop

/* 80D156B0-80D156B8 0000C8 0008+00 0/1 0/0 0/0 .rodata          @4764 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4764[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D156B0, &lit_4764);
#pragma pop

/* 80D156B8-80D156B8 0000D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80D156B8 = "D_MN07";
SECTION_DEAD static char const* const stringBase_80D156BF = "Obj_Tob7";
SECTION_DEAD static char const* const stringBase_80D156C8 = "Obj_Toby";
#pragma pop

/* 80D14CFC-80D154F4 00165C 07F8+00 1/0 0/0 0/0 .text            daObj_Toby_Create__FP10fopAc_ac_c
 */
static void daObj_Toby_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80D154F4-80D15530 001E54 003C+00 1/1 0/0 0/0 .text            __dt__6yuka_sFv */
yuka_s::~yuka_s() {
    // NONMATCHING
}

/* 80D15530-80D15534 001E90 0004+00 1/1 0/0 0/0 .text            __ct__6yuka_sFv */
yuka_s::yuka_s() {
    /* empty function */
}

/* 80D15534-80D1557C 001E94 0048+00 2/1 0/0 0/0 .text            __dt__16daObj_Toby_HIO_cFv */
daObj_Toby_HIO_c::~daObj_Toby_HIO_c() {
    // NONMATCHING
}

/* 80D1557C-80D155B8 001EDC 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_toby_cpp */
void __sinit_d_a_obj_toby_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80D1557C, __sinit_d_a_obj_toby_cpp);
#pragma pop

/* 80D155B8-80D155D4 001F18 001C+00 1/1 0/0 0/0 .text            getLeftHandPos__9daPy_py_cCFv */
// void daPy_py_c::getLeftHandPos() const {
extern "C" void getLeftHandPos__9daPy_py_cCFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80D15950-80D15954 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80D15950[4];
#pragma pop

/* 80D15954-80D15958 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80D15954[4];
#pragma pop

/* 80D15958-80D1595C 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80D15958[4];
#pragma pop

/* 80D1595C-80D15960 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80D1595C[4];
#pragma pop

/* 80D15960-80D15964 0000B0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D15960[4];
#pragma pop

/* 80D15964-80D15968 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D15964[4];
#pragma pop

/* 80D15968-80D1596C 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80D15968[4];
#pragma pop

/* 80D1596C-80D15970 0000BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80D1596C[4];
#pragma pop

/* 80D15970-80D15974 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80D15970[4];
#pragma pop

/* 80D15974-80D15978 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80D15974[4];
#pragma pop

/* 80D15978-80D1597C 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80D15978[4];
#pragma pop

/* 80D1597C-80D15980 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80D1597C[4];
#pragma pop

/* 80D15980-80D15984 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80D15980[4];
#pragma pop

/* 80D15984-80D15988 0000D4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D15984[4];
#pragma pop

/* 80D15988-80D1598C 0000D8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80D15988[4];
#pragma pop

/* 80D1598C-80D15990 0000DC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80D1598C[4];
#pragma pop

/* 80D15990-80D15994 0000E0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80D15990[4];
#pragma pop

/* 80D15994-80D15998 0000E4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80D15994[4];
#pragma pop

/* 80D15998-80D1599C 0000E8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80D15998[4];
#pragma pop

/* 80D1599C-80D159A0 0000EC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80D1599C[4];
#pragma pop

/* 80D159A0-80D159A4 0000F0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80D159A0[4];
#pragma pop

/* 80D159A4-80D159A8 0000F4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D159A4[4];
#pragma pop

/* 80D159A8-80D159AC 0000F8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D159A8[4];
#pragma pop

/* 80D159AC-80D159B0 0000FC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80D159AC[4];
#pragma pop

/* 80D159B0-80D159B4 000100 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80D159B0[4];
#pragma pop

/* 80D156B8-80D156B8 0000D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
