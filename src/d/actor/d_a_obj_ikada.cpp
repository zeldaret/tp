/**
 * @file d_a_obj_ikada.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_ikada.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void RideOn_Angle__12daObjIkada_cFRsfsf();
extern "C" void Check_RideOn__12daObjIkada_cFv();
extern "C" void initBaseMtx__12daObjIkada_cFv();
extern "C" void setBaseMtx__12daObjIkada_cFv();
extern "C" static void rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" static void daObjIkada_Draw__FP12daObjIkada_c();
extern "C" static void daObjIkada_Execute__FP12daObjIkada_c();
extern "C" static bool daObjIkada_IsDelete__FP12daObjIkada_c();
extern "C" static void daObjIkada_Delete__FP12daObjIkada_c();
extern "C" static void daObjIkada_Create__FP10fopAc_ac_c();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void CreateHeap__12daObjIkada_cFv();
extern "C" void Create__12daObjIkada_cFv();
extern "C" void Execute__12daObjIkada_cFPPA3_A4_f();
extern "C" void Draw__12daObjIkada_cFv();
extern "C" void Delete__12daObjIkada_cFv();
extern "C" static void func_80C274D8();
extern "C" static void func_80C274E0();
extern "C" extern char const* const d_a_obj_ikada__stringBase0;

//
// External References:
//

extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void waterCheck__11fopAcM_wt_cFPC4cXyz();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void getObjectResName2Index__14dRes_control_cFPCcPCc();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void cM_rndFX__Ff();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void __dl__FPv();
extern "C" void _savegpr_26();
extern "C" void _savegpr_29();
extern "C" void _restgpr_26();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mWaterY__11fopAcM_wt_c[1 + 1 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 80C274F0-80C274F8 000000 0004+04 3/3 0/0 0/0 .rodata          @3668 */
SECTION_RODATA static u8 const lit_3668[4 + 4 /* padding */] = {
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
COMPILER_STRIP_GATE(0x80C274F0, &lit_3668);

/* 80C274F8-80C27500 000008 0008+00 1/3 0/0 0/0 .rodata          @3670 */
SECTION_RODATA static u8 const lit_3670[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C274F8, &lit_3670);

/* 80C269B8-80C26A20 000078 0068+00 1/1 0/0 0/0 .text            RideOn_Angle__12daObjIkada_cFRsfsf
 */
void daObjIkada_c::RideOn_Angle(s16& param_0, f32 param_1, s16 param_2, f32 param_3) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C27500-80C27508 000010 0008+00 0/1 0/0 0/0 .rodata          @3725 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3725[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C27500, &lit_3725);
#pragma pop

/* 80C27508-80C27510 000018 0008+00 0/1 0/0 0/0 .rodata          @3726 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3726[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C27508, &lit_3726);
#pragma pop

/* 80C27510-80C27518 000020 0008+00 0/1 0/0 0/0 .rodata          @3727 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3727[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C27510, &lit_3727);
#pragma pop

/* 80C27518-80C2751C 000028 0004+00 0/2 0/0 0/0 .rodata          @3728 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3728 = 250.0f;
COMPILER_STRIP_GATE(0x80C27518, &lit_3728);
#pragma pop

/* 80C2751C-80C27520 00002C 0004+00 0/3 0/0 0/0 .rodata          @3729 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3729 = 300.0f;
COMPILER_STRIP_GATE(0x80C2751C, &lit_3729);
#pragma pop

/* 80C27520-80C27524 000030 0004+00 0/2 0/0 0/0 .rodata          @3730 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3730 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C27520, &lit_3730);
#pragma pop

/* 80C27524-80C27528 000034 0004+00 0/3 0/0 0/0 .rodata          @3731 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3731 = 100.0f;
COMPILER_STRIP_GATE(0x80C27524, &lit_3731);
#pragma pop

/* 80C26A20-80C26C50 0000E0 0230+00 1/1 0/0 0/0 .text            Check_RideOn__12daObjIkada_cFv */
void daObjIkada_c::Check_RideOn() {
    // NONMATCHING
}

/* 80C26C50-80C26C7C 000310 002C+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjIkada_cFv */
void daObjIkada_c::initBaseMtx() {
    // NONMATCHING
}

/* 80C26C7C-80C26CD8 00033C 005C+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjIkada_cFv */
void daObjIkada_c::setBaseMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C27528-80C2752C 000038 0004+00 1/1 0/0 0/0 .rodata          @3767 */
SECTION_RODATA static f32 const lit_3767 = -1.0f;
COMPILER_STRIP_GATE(0x80C27528, &lit_3767);

/* 80C2752C-80C27530 00003C 0004+00 1/1 0/0 0/0 .rodata          @3768 */
SECTION_RODATA static f32 const lit_3768 = -6.0f;
COMPILER_STRIP_GATE(0x80C2752C, &lit_3768);

/* 80C26CD8-80C26D3C 000398 0064+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallBack(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* 80C26D3C-80C26D68 0003FC 002C+00 1/0 0/0 0/0 .text            daObjIkada_Draw__FP12daObjIkada_c
 */
static void daObjIkada_Draw(daObjIkada_c* param_0) {
    // NONMATCHING
}

/* 80C26D68-80C26D88 000428 0020+00 1/0 0/0 0/0 .text daObjIkada_Execute__FP12daObjIkada_c */
static void daObjIkada_Execute(daObjIkada_c* param_0) {
    // NONMATCHING
}

/* 80C26D88-80C26D90 000448 0008+00 1/0 0/0 0/0 .text daObjIkada_IsDelete__FP12daObjIkada_c */
static bool daObjIkada_IsDelete(daObjIkada_c* param_0) {
    return true;
}

/* 80C26D90-80C26DB4 000450 0024+00 1/0 0/0 0/0 .text            daObjIkada_Delete__FP12daObjIkada_c
 */
static void daObjIkada_Delete(daObjIkada_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C27530-80C27534 000040 0004+00 0/1 0/0 0/0 .rodata          @3846 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3846 = 200.0f;
COMPILER_STRIP_GATE(0x80C27530, &lit_3846);
#pragma pop

/* 80C27534-80C27538 000044 0004+00 0/1 0/0 0/0 .rodata          @3847 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3847 = 32000.0f;
COMPILER_STRIP_GATE(0x80C27534, &lit_3847);
#pragma pop

/* 80C27538-80C2753C 000048 0004+00 0/1 0/0 0/0 .rodata          @3848 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3848 = -250.0f;
COMPILER_STRIP_GATE(0x80C27538, &lit_3848);
#pragma pop

/* 80C2753C-80C27540 00004C 0004+00 0/1 0/0 0/0 .rodata          @3849 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3849 = -50.0f;
COMPILER_STRIP_GATE(0x80C2753C, &lit_3849);
#pragma pop

/* 80C27540-80C27544 000050 0004+00 0/1 0/0 0/0 .rodata          @3850 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3850 = -300.0f;
COMPILER_STRIP_GATE(0x80C27540, &lit_3850);
#pragma pop

/* 80C27544-80C27548 000054 0004+00 0/1 0/0 0/0 .rodata          @3851 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3851 = 50.0f;
COMPILER_STRIP_GATE(0x80C27544, &lit_3851);
#pragma pop

/* 80C27564-80C27564 000074 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C27564 = "M_Ikada";
SECTION_DEAD static char const* const stringBase_80C2756C = "M_Ikada.dzb";
#pragma pop

/* 80C27584-80C27588 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_ikada__stringBase0;

/* 80C27588-80C275A8 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjIkada_Method */
static actor_method_class l_daObjIkada_Method = {
    (process_method_func)daObjIkada_Create__FP10fopAc_ac_c,
    (process_method_func)daObjIkada_Delete__FP12daObjIkada_c,
    (process_method_func)daObjIkada_Execute__FP12daObjIkada_c,
    (process_method_func)daObjIkada_IsDelete__FP12daObjIkada_c,
    (process_method_func)daObjIkada_Draw__FP12daObjIkada_c,
};

/* 80C275A8-80C275D8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Ikada */
extern actor_process_profile_definition g_profile_Obj_Ikada = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Ikada,         // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjIkada_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  455,                    // mPriority
  &l_daObjIkada_Method,   // sub_method
  0x00040180,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80C275D8-80C275FC 000054 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C274E0,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C274D8,
};

/* 80C275FC-80C27624 000078 0028+00 1/1 0/0 0/0 .data            __vt__12daObjIkada_c */
SECTION_DATA extern void* __vt__12daObjIkada_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__12daObjIkada_cFv,
    (void*)Create__12daObjIkada_cFv,
    (void*)Execute__12daObjIkada_cFPPA3_A4_f,
    (void*)Draw__12daObjIkada_cFv,
    (void*)Delete__12daObjIkada_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80C26DB4-80C26FB8 000474 0204+00 1/0 0/0 0/0 .text            daObjIkada_Create__FP10fopAc_ac_c
 */
static void daObjIkada_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C26FB8-80C27028 000678 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C27564-80C27564 000074 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C27578 = "M_Ikada.bmd";
#pragma pop

/* 80C27028-80C270A0 0006E8 0078+00 1/0 0/0 0/0 .text            CreateHeap__12daObjIkada_cFv */
void daObjIkada_c::CreateHeap() {
    // NONMATCHING
}

/* 80C270A0-80C270E0 000760 0040+00 1/0 0/0 0/0 .text            Create__12daObjIkada_cFv */
void daObjIkada_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C27548-80C2754C 000058 0004+00 0/1 0/0 0/0 .rodata          @3912 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3912 = 848.0f;
COMPILER_STRIP_GATE(0x80C27548, &lit_3912);
#pragma pop

/* 80C2754C-80C27550 00005C 0004+00 0/1 0/0 0/0 .rodata          @3913 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3913 = 2.0f;
COMPILER_STRIP_GATE(0x80C2754C, &lit_3913);
#pragma pop

/* 80C27550-80C27554 000060 0004+00 0/1 0/0 0/0 .rodata          @3914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3914 = 11.0f;
COMPILER_STRIP_GATE(0x80C27550, &lit_3914);
#pragma pop

/* 80C27554-80C27558 000064 0004+00 0/1 0/0 0/0 .rodata          @3915 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3915 = 5.0f;
COMPILER_STRIP_GATE(0x80C27554, &lit_3915);
#pragma pop

/* 80C27558-80C2755C 000068 0004+00 0/1 0/0 0/0 .rodata          @3916 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3916 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C27558, &lit_3916);
#pragma pop

/* 80C2755C-80C27560 00006C 0004+00 0/1 0/0 0/0 .rodata          @3917 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3917 = 15.0f;
COMPILER_STRIP_GATE(0x80C2755C, &lit_3917);
#pragma pop

/* 80C27560-80C27564 000070 0004+00 0/1 0/0 0/0 .rodata          @3918 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3918 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C27560, &lit_3918);
#pragma pop

/* 80C270E0-80C27400 0007A0 0320+00 1/0 0/0 0/0 .text            Execute__12daObjIkada_cFPPA3_A4_f
 */
void daObjIkada_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80C27400-80C274A4 000AC0 00A4+00 1/0 0/0 0/0 .text            Draw__12daObjIkada_cFv */
void daObjIkada_c::Draw() {
    // NONMATCHING
}

/* 80C274A4-80C274D8 000B64 0034+00 1/0 0/0 0/0 .text            Delete__12daObjIkada_cFv */
void daObjIkada_c::Delete() {
    // NONMATCHING
}

/* 80C274D8-80C274E0 000B98 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80C274D8() {
    // NONMATCHING
}

/* 80C274E0-80C274E8 000BA0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80C274E0() {
    // NONMATCHING
}

/* 80C27564-80C27564 000074 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
