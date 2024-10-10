/**
 * @file d_a_obj_crvgate.cpp
 * 
*/

#include "d/actor/d_a_obj_crvgate.h"
#include "dol2asm.h"
#include "d/d_camera.h"


//
// Forward References:
//

extern "C" void initCcCylinder__14daObjCRVGATE_cFv();
extern "C" void setCcCylinder__14daObjCRVGATE_cFv();
extern "C" static void daObjCRVGATE_Create__FP10fopAc_ac_c();
extern "C" static void daObjCRVGATE_Delete__FP14daObjCRVGATE_c();
extern "C" void checkOpen__14daObjCRVGATE_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void actionStartEvent__14daObjCRVGATE_cFv();
extern "C" void actionWaitEvent__14daObjCRVGATE_cFv();
extern "C" void Demo_Set__14daObjCRVGATE_cFv();
extern "C" void SetOpen__14daObjCRVGATE_cFv();
extern "C" void actionDemoEvent__14daObjCRVGATE_cFv();
extern "C" void event_proc_call__14daObjCRVGATE_cFv();
extern "C" void CheckVec__14daObjCRVGATE_cFv();
extern "C" void KeyVib__14daObjCRVGATE_cFv();
extern "C" void DoorVib__14daObjCRVGATE_cFv();
extern "C" void VibStop__14daObjCRVGATE_cFv();
extern "C" void CloseVibration__14daObjCRVGATE_cFv();
extern "C" void CloseAction__14daObjCRVGATE_cFv();
extern "C" void OpenAction__14daObjCRVGATE_cFv();
extern "C" void HakaiMotion__14daObjCRVGATE_cFv();
extern "C" void DoorAction__14daObjCRVGATE_cFv();
extern "C" void B_CloseAction__14daObjCRVGATE_cFv();
extern "C" void SetB_Close__14daObjCRVGATE_cFv();
extern "C" void setBaseMtx__14daObjCRVGATE_cFv();
extern "C" static void daObjCRVGATE_Draw__FP14daObjCRVGATE_c();
extern "C" static void daObjCRVGATE_Execute__FP14daObjCRVGATE_c();
extern "C" void CreateHeap__14daObjCRVGATE_cFv();
extern "C" void SetDoor__14daObjCRVGATE_cFv();
extern "C" void create__14daObjCRVGATE_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __ct__4cXyzFv();
extern "C" static bool daObjCRVGATE_IsDelete__FP14daObjCRVGATE_c();
extern "C" void Create__14daObjCRVGATE_cFv();
extern "C" void Execute__14daObjCRVGATE_cFPPA3_A4_f();
extern "C" void Draw__14daObjCRVGATE_cFv();
extern "C" void Delete__14daObjCRVGATE_cFv();
extern "C" static void func_80BD30A8();
extern "C" static void func_80BD30B0();
extern "C" extern char const* const d_a_obj_crvgate__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_SearchByName__FsPP10fopAc_ac_c();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void getObjectResName2Index__14dRes_control_cFPCcPCc();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
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
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void dCam_getBody__Fv();
extern "C" void Eye__9dCamera_cFv();
extern "C" void Center__9dCamera_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ct__5csXyzFsss();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_21();
extern "C" void _savegpr_23();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_21();
extern "C" void _restgpr_23();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 80BD30C0-80BD3100 000000 0040+00 12/12 0/0 0/0 .rodata          ccCylSrc$3774 */
SECTION_RODATA static u8 const ccCylSrc[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x75, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BD30C0, &ccCylSrc);

/* 80BD3100-80BD3104 000040 0004+00 0/2 0/0 0/0 .rodata          @3792 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3792 = 100.0f;
COMPILER_STRIP_GATE(0x80BD3100, &lit_3792);
#pragma pop

/* 80BD3104-80BD3108 000044 0004+00 0/2 0/0 0/0 .rodata          @3793 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3793 = 95.0f;
COMPILER_STRIP_GATE(0x80BD3104, &lit_3793);
#pragma pop

/* 80BD3108-80BD3110 000048 0004+04 1/9 0/0 0/0 .rodata          @3794 */
SECTION_RODATA static u8 const lit_3794[4 + 4 /* padding */] = {
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
COMPILER_STRIP_GATE(0x80BD3108, &lit_3794);

/* 80BD3110-80BD3118 000050 0008+00 2/6 0/0 0/0 .rodata          @3796 */
SECTION_RODATA static u8 const lit_3796[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BD3110, &lit_3796);

/* 80BD0398-80BD0500 000078 0168+00 1/1 0/0 0/0 .text            initCcCylinder__14daObjCRVGATE_cFv
 */
void daObjCRVGATE_c::initCcCylinder() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD3118-80BD311C 000058 0004+00 0/1 0/0 0/0 .rodata          @3817 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3817 = 80.0f;
COMPILER_STRIP_GATE(0x80BD3118, &lit_3817);
#pragma pop

/* 80BD311C-80BD3120 00005C 0004+00 0/1 0/0 0/0 .rodata          @3818 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3818 = 130.0f;
COMPILER_STRIP_GATE(0x80BD311C, &lit_3818);
#pragma pop

/* 80BD0500-80BD0658 0001E0 0158+00 1/1 0/0 0/0 .text            setCcCylinder__14daObjCRVGATE_cFv
 */
void daObjCRVGATE_c::setCcCylinder() {
    // NONMATCHING
}

/* 80BD0658-80BD0678 000338 0020+00 1/0 0/0 0/0 .text            daObjCRVGATE_Create__FP10fopAc_ac_c
 */
static void daObjCRVGATE_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80BD0678-80BD069C 000358 0024+00 1/0 0/0 0/0 .text daObjCRVGATE_Delete__FP14daObjCRVGATE_c */
static void daObjCRVGATE_Delete(daObjCRVGATE_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD3120-80BD3128 000060 0008+00 0/3 0/0 0/0 .rodata          @3881 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3881[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BD3120, &lit_3881);
#pragma pop

/* 80BD3128-80BD3130 000068 0008+00 0/3 0/0 0/0 .rodata          @3882 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3882[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BD3128, &lit_3882);
#pragma pop

/* 80BD3130-80BD3138 000070 0008+00 0/4 0/0 0/0 .rodata          @3883 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3883[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BD3130, &lit_3883);
#pragma pop

/* 80BD3138-80BD313C 000078 0004+00 0/3 0/0 0/0 .rodata          @3884 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3884 = 200.0f;
COMPILER_STRIP_GATE(0x80BD3138, &lit_3884);
#pragma pop

/* 80BD069C-80BD0844 00037C 01A8+00 1/1 0/0 0/0 .text            checkOpen__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::checkOpen() {
    // NONMATCHING
}

/* 80BD0844-80BD0880 000524 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80BD0880-80BD0978 000560 00F8+00 1/1 0/0 0/0 .text actionStartEvent__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::actionStartEvent() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD313C-80BD3140 00007C 0004+00 2/5 0/0 0/0 .rodata          @3937 */
SECTION_RODATA static f32 const lit_3937 = 1.0f;
COMPILER_STRIP_GATE(0x80BD313C, &lit_3937);

/* 80BD3140-80BD3144 000080 0004+00 2/5 0/0 0/0 .rodata          @3938 */
SECTION_RODATA static f32 const lit_3938 = -1.0f;
COMPILER_STRIP_GATE(0x80BD3140, &lit_3938);

/* 80BD0978-80BD0A64 000658 00EC+00 1/1 0/0 0/0 .text            actionWaitEvent__14daObjCRVGATE_cFv
 */
void daObjCRVGATE_c::actionWaitEvent() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD3144-80BD3148 000084 0004+00 0/3 0/0 0/0 .rodata          @3990 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3990 = 300.0f;
COMPILER_STRIP_GATE(0x80BD3144, &lit_3990);
#pragma pop

/* 80BD3148-80BD314C 000088 0004+00 0/3 0/0 0/0 .rodata          @3991 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3991 = 500.0f;
COMPILER_STRIP_GATE(0x80BD3148, &lit_3991);
#pragma pop

/* 80BD0A64-80BD0B7C 000744 0118+00 1/1 0/0 0/0 .text            Demo_Set__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::Demo_Set() {
    // NONMATCHING
}

/* 80BD0B7C-80BD0B88 00085C 000C+00 2/2 0/0 0/0 .text            SetOpen__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::SetOpen() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD314C-80BD3150 00008C 0004+00 0/1 0/0 0/0 .rodata          @4030 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4030 = -5.0f;
COMPILER_STRIP_GATE(0x80BD314C, &lit_4030);
#pragma pop

/* 80BD3150-80BD3154 000090 0004+00 0/2 0/0 0/0 .rodata          @4031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4031 = 55.0f;
COMPILER_STRIP_GATE(0x80BD3150, &lit_4031);
#pragma pop

/* 80BD3154-80BD3158 000094 0004+00 0/1 0/0 0/0 .rodata          @4032 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4032 = 0.5f;
COMPILER_STRIP_GATE(0x80BD3154, &lit_4032);
#pragma pop

/* 80BD3158-80BD315C 000098 0004+00 0/1 0/0 0/0 .rodata          @4033 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4033 = 5.0f / 3.0f;
COMPILER_STRIP_GATE(0x80BD3158, &lit_4033);
#pragma pop

/* 80BD0B88-80BD0D28 000868 01A0+00 1/1 0/0 0/0 .text            actionDemoEvent__14daObjCRVGATE_cFv
 */
void daObjCRVGATE_c::actionDemoEvent() {
    // NONMATCHING
}

/* 80BD0D28-80BD0D90 000A08 0068+00 1/1 0/0 0/0 .text            event_proc_call__14daObjCRVGATE_cFv
 */
void daObjCRVGATE_c::event_proc_call() {
    // NONMATCHING
}

/* 80BD0D90-80BD0E1C 000A70 008C+00 1/1 0/0 0/0 .text            CheckVec__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::CheckVec() {
    // NONMATCHING
}

/* 80BD0E1C-80BD0F9C 000AFC 0180+00 1/1 0/0 0/0 .text            KeyVib__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::KeyVib() {
    // NONMATCHING
}

/* 80BD0F9C-80BD10C0 000C7C 0124+00 1/1 0/0 0/0 .text            DoorVib__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::DoorVib() {
    // NONMATCHING
}

/* 80BD10C0-80BD10D0 000DA0 0010+00 1/1 0/0 0/0 .text            VibStop__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::VibStop() {
    // NONMATCHING
}

/* 80BD10D0-80BD1110 000DB0 0040+00 1/1 0/0 0/0 .text            CloseVibration__14daObjCRVGATE_cFv
 */
void daObjCRVGATE_c::CloseVibration() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD315C-80BD3160 00009C 0004+00 0/2 0/0 0/0 .rodata          @4086 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4086 = 350.0f;
COMPILER_STRIP_GATE(0x80BD315C, &lit_4086);
#pragma pop

/* 80BD3160-80BD3164 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4087 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4087 = 120.0f;
COMPILER_STRIP_GATE(0x80BD3160, &lit_4087);
#pragma pop

/* 80BD3164-80BD3168 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4430 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4430 = 490.0f;
COMPILER_STRIP_GATE(0x80BD3164, &lit_4430);
#pragma pop

/* 80BD3168-80BD316C 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4431 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4431 = 10.0f;
COMPILER_STRIP_GATE(0x80BD3168, &lit_4431);
#pragma pop

/* 80BD316C-80BD3170 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4432 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4432 = 70.0f;
COMPILER_STRIP_GATE(0x80BD316C, &lit_4432);
#pragma pop

/* 80BD3170-80BD3174 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4433 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4433 = -30.0f;
COMPILER_STRIP_GATE(0x80BD3170, &lit_4433);
#pragma pop

/* 80BD1110-80BD18E0 000DF0 07D0+00 2/2 0/0 0/0 .text            CloseAction__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::CloseAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD3174-80BD3178 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4648 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4648 = 288.0f;
COMPILER_STRIP_GATE(0x80BD3174, &lit_4648);
#pragma pop

/* 80BD3178-80BD317C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4649 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4649 = 112.0f;
COMPILER_STRIP_GATE(0x80BD3178, &lit_4649);
#pragma pop

/* 80BD18E0-80BD21E4 0015C0 0904+00 1/1 0/0 0/0 .text            OpenAction__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::OpenAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD317C-80BD3180 0000BC 0004+00 1/1 0/0 0/0 .rodata          @4663 */
SECTION_RODATA static f32 const lit_4663 = -2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BD317C, &lit_4663);

/* 80BD21E4-80BD22C8 001EC4 00E4+00 1/1 0/0 0/0 .text            HakaiMotion__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::HakaiMotion() {
    // NONMATCHING
}

/* 80BD22C8-80BD2338 001FA8 0070+00 1/1 0/0 0/0 .text            DoorAction__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::DoorAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD3180-80BD3184 0000C0 0004+00 0/0 0/0 0/0 .rodata          @4671 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4671 = 50.0f;
COMPILER_STRIP_GATE(0x80BD3180, &lit_4671);
#pragma pop

/* 80BD3184-80BD3188 0000C4 0004+00 0/0 0/0 0/0 .rodata          @4672 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4672 = -10.0f;
COMPILER_STRIP_GATE(0x80BD3184, &lit_4672);
#pragma pop

/* 80BD3188-80BD3190 0000C8 0004+04 0/1 0/0 0/0 .rodata          @4700 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4700[1 + 1 /* padding */] = {
    7.0f / 10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80BD3188, &lit_4700);
#pragma pop

/* 80BD3190-80BD3198 0000D0 0008+00 0/1 0/0 0/0 .rodata          @4701 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4701[8] = {
    0xBF, 0xE6, 0x66, 0x66, 0x66, 0x66, 0x66, 0x66,
};
COMPILER_STRIP_GATE(0x80BD3190, &lit_4701);
#pragma pop

/* 80BD2338-80BD245C 002018 0124+00 1/1 0/0 0/0 .text            B_CloseAction__14daObjCRVGATE_cFv
 */
void daObjCRVGATE_c::B_CloseAction() {
    // NONMATCHING
}

/* 80BD245C-80BD2528 00213C 00CC+00 0/0 0/0 1/1 .text            SetB_Close__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::SetB_Close() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD3198-80BD319C 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4757 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4757 = 35.0f;
COMPILER_STRIP_GATE(0x80BD3198, &lit_4757);
#pragma pop

/* 80BD319C-80BD31A0 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4758 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4758 = -55.0f;
COMPILER_STRIP_GATE(0x80BD319C, &lit_4758);
#pragma pop

/* 80BD2528-80BD2624 002208 00FC+00 1/1 0/0 0/0 .text            setBaseMtx__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::setBaseMtx() {
    // NONMATCHING
}

/* 80BD2624-80BD2650 002304 002C+00 1/0 0/0 0/0 .text daObjCRVGATE_Draw__FP14daObjCRVGATE_c */
static void daObjCRVGATE_Draw(daObjCRVGATE_c* param_0) {
    // NONMATCHING
}

/* 80BD2650-80BD2670 002330 0020+00 2/1 0/0 0/0 .text daObjCRVGATE_Execute__FP14daObjCRVGATE_c */
static void daObjCRVGATE_Execute(daObjCRVGATE_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD31BC-80BD31BC 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BD31BC = "CrvGate";
SECTION_DEAD static char const* const stringBase_80BD31C4 = "CaravanGate.bmd";
SECTION_DEAD static char const* const stringBase_80BD31D4 = "CaravanKey.bmd";
#pragma pop

/* 80BD31F4-80BD31F8 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_crvgate__stringBase0;

/* 80BD2670-80BD2758 002350 00E8+00 1/0 0/0 0/0 .text            CreateHeap__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::CreateHeap() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD31A0-80BD31A4 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4833 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4833 = 700.0f;
COMPILER_STRIP_GATE(0x80BD31A0, &lit_4833);
#pragma pop

/* 80BD2758-80BD28C0 002438 0168+00 1/1 0/0 0/0 .text            SetDoor__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::SetDoor() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD31A4-80BD31A8 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4928 = -9.0f;
COMPILER_STRIP_GATE(0x80BD31A4, &lit_4928);
#pragma pop

/* 80BD31A8-80BD31AC 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4929 = -100.0f;
COMPILER_STRIP_GATE(0x80BD31A8, &lit_4929);
#pragma pop

/* 80BD31AC-80BD31B0 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4930 = -200.0f;
COMPILER_STRIP_GATE(0x80BD31AC, &lit_4930);
#pragma pop

/* 80BD31BC-80BD31BC 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BD31E3 = "CaravanGate.dzb";
#pragma pop

/* 80BD31F8-80BD3218 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjCRVGATE_Method */
static actor_method_class l_daObjCRVGATE_Method = {
    (process_method_func)daObjCRVGATE_Create__FP10fopAc_ac_c,
    (process_method_func)daObjCRVGATE_Delete__FP14daObjCRVGATE_c,
    (process_method_func)daObjCRVGATE_Execute__FP14daObjCRVGATE_c,
    (process_method_func)daObjCRVGATE_IsDelete__FP14daObjCRVGATE_c,
    (process_method_func)daObjCRVGATE_Draw__FP14daObjCRVGATE_c,
};

/* 80BD3218-80BD3248 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_CRVGATE */
extern actor_process_profile_definition g_profile_Obj_CRVGATE = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_CRVGATE,       // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daObjCRVGATE_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  466,                    // mPriority
  &l_daObjCRVGATE_Method, // sub_method
  0x00040180,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80BD3248-80BD3254 000054 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80BD3254-80BD3260 000060 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80BD3260-80BD326C 00006C 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BD326C-80BD3290 000078 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BD30B0,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BD30A8,
};

/* 80BD3290-80BD32B8 00009C 0028+00 1/1 0/0 0/0 .data            __vt__14daObjCRVGATE_c */
SECTION_DATA extern void* __vt__14daObjCRVGATE_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__14daObjCRVGATE_cFv,
    (void*)Create__14daObjCRVGATE_cFv,
    (void*)Execute__14daObjCRVGATE_cFPPA3_A4_f,
    (void*)Draw__14daObjCRVGATE_cFv,
    (void*)Delete__14daObjCRVGATE_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80BD28C0-80BD2BE4 0025A0 0324+00 1/1 0/0 0/0 .text            create__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::create() {
    // NONMATCHING
}

/* 80BD2BE4-80BD2C2C 0028C4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80BD2C2C-80BD2C74 00290C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80BD2C74-80BD2D40 002954 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80BD2D40-80BD2DC4 002A20 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80BD2DC4-80BD2E0C 002AA4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80BD2E0C-80BD2E7C 002AEC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80BD2E7C-80BD2E80 002B5C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80BD2E80-80BD2E88 002B60 0008+00 1/0 0/0 0/0 .text daObjCRVGATE_IsDelete__FP14daObjCRVGATE_c */
static bool daObjCRVGATE_IsDelete(daObjCRVGATE_c* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80BD31B0-80BD31B4 0000F0 0004+00 0/1 0/0 0/0 .rodata          @5063 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5063 = -1000.0f;
COMPILER_STRIP_GATE(0x80BD31B0, &lit_5063);
#pragma pop

/* 80BD31B4-80BD31B8 0000F4 0004+00 0/1 0/0 0/0 .rodata          @5064 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5064 = -500.0f;
COMPILER_STRIP_GATE(0x80BD31B4, &lit_5064);
#pragma pop

/* 80BD31B8-80BD31BC 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5065 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5065 = 1000.0f;
COMPILER_STRIP_GATE(0x80BD31B8, &lit_5065);
#pragma pop

/* 80BD2E88-80BD2ECC 002B68 0044+00 1/0 0/0 0/0 .text            Create__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD32B8-80BD32BC 000000 0002+02 1/1 0/0 0/0 .bss s_CoCount__29@unnamed@d_a_obj_crvgate_cpp@ */
static u8 data_80BD32B8[2 + 2 /* padding */];

/* 80BD2ECC-80BD2FB8 002BAC 00EC+00 1/0 0/0 0/0 .text            Execute__14daObjCRVGATE_cFPPA3_A4_f
 */
void daObjCRVGATE_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80BD2FB8-80BD3074 002C98 00BC+00 1/0 0/0 0/0 .text            Draw__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::Draw() {
    // NONMATCHING
}

/* 80BD3074-80BD30A8 002D54 0034+00 1/0 0/0 0/0 .text            Delete__14daObjCRVGATE_cFv */
void daObjCRVGATE_c::Delete() {
    // NONMATCHING
}

/* 80BD30A8-80BD30B0 002D88 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80BD30A8() {
    // NONMATCHING
}

/* 80BD30B0-80BD30B8 002D90 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80BD30B0() {
    // NONMATCHING
}

/* 80BD31BC-80BD31BC 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */