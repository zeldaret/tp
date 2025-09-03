/**
 * @file d_a_obj_hb.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_hb.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void daOBJ_HB_Draw__FP12obj_hb_class();
extern "C" static void obj_hb_carry__FP12obj_hb_class();
extern "C" static void wall_angle_get__FP12obj_hb_class();
extern "C" static void water_check__FP12obj_hb_class();
extern "C" static void obj_hb_set__FP12obj_hb_class();
extern "C" static void getGroundAngle__FP10fopAc_ac_cP5csXyz();
extern "C" static void obj_hb_drop__FP12obj_hb_class();
extern "C" static void obj_hb_float__FP12obj_hb_class();
extern "C" static void action__FP12obj_hb_class();
extern "C" static void daOBJ_HB_Execute__FP12obj_hb_class();
extern "C" static bool daOBJ_HB_IsDelete__FP12obj_hb_class();
extern "C" static void daOBJ_HB_Delete__FP12obj_hb_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daOBJ_HB_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" static void func_80C1B5E8();
extern "C" static void func_80C1B5F0();
extern "C" extern char const* const d_a_obj_hb__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotS__FPA4_fs();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LockonTarget__12dAttention_cFl();
extern "C" void LockonTruth__12dAttention_cFv();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__18dBgS_ObjGndChk_SplFv();
extern "C" void __dt__18dBgS_ObjGndChk_SplFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void stopAnime__10Z2CreatureFv();
extern "C" void __dl__FPv();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u8 data_80C1B7E0[4];

//
// Declarations:
//

/* ############################################################################################## */
/* 80C1B600-80C1B604 000000 0004+00 9/9 0/0 0/0 .rodata          @3665 */
SECTION_RODATA static f32 const lit_3665 = 100.0f;
COMPILER_STRIP_GATE(0x80C1B600, &lit_3665);

/* 80C1B604-80C1B608 000004 0004+00 0/1 0/0 0/0 .rodata          @3666 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3666 = 400.0f;
COMPILER_STRIP_GATE(0x80C1B604, &lit_3666);
#pragma pop

/* 80C1B608-80C1B60C 000008 0004+00 1/9 0/0 0/0 .rodata          @3667 */
SECTION_RODATA static u8 const lit_3667[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80C1B608, &lit_3667);

/* 80C1B60C-80C1B610 00000C 0004+00 0/7 0/0 0/0 .rodata          @3668 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3668 = 1.0f;
COMPILER_STRIP_GATE(0x80C1B60C, &lit_3668);
#pragma pop

/* 80C195B8-80C19688 000078 00D0+00 1/0 0/0 0/0 .text            daOBJ_HB_Draw__FP12obj_hb_class */
static void daOBJ_HB_Draw(obj_hb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C1B610-80C1B614 000010 0004+00 0/5 0/0 0/0 .rodata          @3735 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3735 = 10.0f;
COMPILER_STRIP_GATE(0x80C1B610, &lit_3735);
#pragma pop

/* 80C1B614-80C1B618 000014 0004+00 0/4 0/0 0/0 .rodata          @3736 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3736 = 30.0f;
COMPILER_STRIP_GATE(0x80C1B614, &lit_3736);
#pragma pop

/* 80C1B618-80C1B61C 000018 0004+00 0/2 0/0 0/0 .rodata          @3737 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3737 = 0.25f;
COMPILER_STRIP_GATE(0x80C1B618, &lit_3737);
#pragma pop

/* 80C1B61C-80C1B620 00001C 0004+00 0/2 0/0 0/0 .rodata          @3738 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3738 = 1000.0f;
COMPILER_STRIP_GATE(0x80C1B61C, &lit_3738);
#pragma pop

/* 80C19688-80C1988C 000148 0204+00 1/1 0/0 0/0 .text            obj_hb_carry__FP12obj_hb_class */
static void obj_hb_carry(obj_hb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C1B620-80C1B624 000020 0004+00 0/1 0/0 0/0 .rodata          @3792 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3792 = -50.0f;
COMPILER_STRIP_GATE(0x80C1B620, &lit_3792);
#pragma pop

/* 80C1B624-80C1B628 000024 0004+00 0/2 0/0 0/0 .rodata          @3793 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3793 = 5.0f;
COMPILER_STRIP_GATE(0x80C1B624, &lit_3793);
#pragma pop

/* 80C1B628-80C1B62C 000028 0004+00 0/2 0/0 0/0 .rodata          @3794 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3794 = 200.0f;
COMPILER_STRIP_GATE(0x80C1B628, &lit_3794);
#pragma pop

/* 80C1B62C-80C1B630 00002C 0004+00 0/1 0/0 0/0 .rodata          @3795 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3795 = -1.0f;
COMPILER_STRIP_GATE(0x80C1B62C, &lit_3795);
#pragma pop

/* 80C1988C-80C19A2C 00034C 01A0+00 1/1 0/0 0/0 .text            wall_angle_get__FP12obj_hb_class */
static void wall_angle_get(obj_hb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C1B630-80C1B634 000030 0004+00 1/2 0/0 0/0 .rodata          @3804 */
SECTION_RODATA static f32 const lit_3804 = 500.0f;
COMPILER_STRIP_GATE(0x80C1B630, &lit_3804);

/* 80C19A2C-80C19AD8 0004EC 00AC+00 1/1 0/0 0/0 .text            water_check__FP12obj_hb_class */
static void water_check(obj_hb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C1B634-80C1B638 000034 0004+00 0/2 0/0 0/0 .rodata          @3818 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3818 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x80C1B634, &lit_3818);
#pragma pop

/* 80C1B638-80C1B63C 000038 0004+00 0/1 0/0 0/0 .rodata          @3819 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3819 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C1B638, &lit_3819);
#pragma pop

/* 80C1B63C-80C1B640 00003C 0004+00 0/2 0/0 0/0 .rodata          @3820 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3820 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C1B63C, &lit_3820);
#pragma pop

/* 80C1B640-80C1B644 000040 0004+00 0/1 0/0 0/0 .rodata          @3821 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3821 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x80C1B640, &lit_3821);
#pragma pop

/* 80C1B644-80C1B648 000044 0004+00 0/1 0/0 0/0 .rodata          @3822 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3822 = 800.0f;
COMPILER_STRIP_GATE(0x80C1B644, &lit_3822);
#pragma pop

/* 80C1B648-80C1B64C 000048 0004+00 1/3 0/0 0/0 .rodata          @3823 */
SECTION_RODATA static f32 const lit_3823 = 2000.0f;
COMPILER_STRIP_GATE(0x80C1B648, &lit_3823);

/* 80C1B64C-80C1B650 00004C 0004+00 0/2 0/0 0/0 .rodata          @3824 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3824 = 25.0f;
COMPILER_STRIP_GATE(0x80C1B64C, &lit_3824);
#pragma pop

/* 80C19AD8-80C19BEC 000598 0114+00 1/1 0/0 0/0 .text            obj_hb_set__FP12obj_hb_class */
static void obj_hb_set(obj_hb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C1B650-80C1B654 000050 0004+00 0/4 0/0 0/0 .rodata          @3855 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3855 = 50.0f;
COMPILER_STRIP_GATE(0x80C1B650, &lit_3855);
#pragma pop

/* 80C1B654-80C1B658 000054 0004+00 0/1 0/0 0/0 .rodata          @3856 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3856 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80C1B654, &lit_3856);
#pragma pop

/* 80C19BEC-80C19DA8 0006AC 01BC+00 1/1 0/0 0/0 .text getGroundAngle__FP10fopAc_ac_cP5csXyz */
static void getGroundAngle(fopAc_ac_c* param_0, csXyz* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C1B658-80C1B65C 000058 0004+00 0/2 0/0 0/0 .rodata          @4043 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4043 = 20.0f;
COMPILER_STRIP_GATE(0x80C1B658, &lit_4043);
#pragma pop

/* 80C1B65C-80C1B660 00005C 0004+00 0/1 0/0 0/0 .rodata          @4044 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4044 = -3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C1B65C, &lit_4044);
#pragma pop

/* 80C1B660-80C1B664 000060 0004+00 0/3 0/0 0/0 .rodata          @4045 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4045 = 0.5f;
COMPILER_STRIP_GATE(0x80C1B660, &lit_4045);
#pragma pop

/* 80C1B664-80C1B668 000064 0004+00 0/2 0/0 0/0 .rodata          @4046 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4046 = -30.0f;
COMPILER_STRIP_GATE(0x80C1B664, &lit_4046);
#pragma pop

/* 80C1B668-80C1B66C 000068 0004+00 0/1 0/0 0/0 .rodata          @4047 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4047 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C1B668, &lit_4047);
#pragma pop

/* 80C1B66C-80C1B670 00006C 0004+00 0/1 0/0 0/0 .rodata          @4048 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4048 = -2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C1B66C, &lit_4048);
#pragma pop

/* 80C1B670-80C1B674 000070 0004+00 0/1 0/0 0/0 .rodata          @4049 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4049 = 0.75f;
COMPILER_STRIP_GATE(0x80C1B670, &lit_4049);
#pragma pop

/* 80C1B674-80C1B678 000074 0004+00 0/1 0/0 0/0 .rodata          @4050 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4050 = 3500.0f;
COMPILER_STRIP_GATE(0x80C1B674, &lit_4050);
#pragma pop

/* 80C1B678-80C1B67C 000078 0004+00 0/1 0/0 0/0 .rodata          @4051 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4051 = 1300.0f;
COMPILER_STRIP_GATE(0x80C1B678, &lit_4051);
#pragma pop

/* 80C1B67C-80C1B680 00007C 0004+00 0/2 0/0 0/0 .rodata          @4052 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4052 = 2.0f;
COMPILER_STRIP_GATE(0x80C1B67C, &lit_4052);
#pragma pop

/* 80C1B680-80C1B684 000080 0004+00 0/1 0/0 0/0 .rodata          @4053 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4053 = -5.0f;
COMPILER_STRIP_GATE(0x80C1B680, &lit_4053);
#pragma pop

/* 80C1B684-80C1B688 000084 0004+00 0/2 0/0 0/0 .rodata          @4054 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4054 = 60.0f;
COMPILER_STRIP_GATE(0x80C1B684, &lit_4054);
#pragma pop

/* 80C1B688-80C1B690 000088 0008+00 0/1 0/0 0/0 .rodata          @4055 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4055[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C1B688, &lit_4055);
#pragma pop

/* 80C1B690-80C1B698 000090 0008+00 0/1 0/0 0/0 .rodata          @4056 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4056[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C1B690, &lit_4056);
#pragma pop

/* 80C1B698-80C1B6A0 000098 0008+00 0/1 0/0 0/0 .rodata          @4057 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4057[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C1B698, &lit_4057);
#pragma pop

/* 80C1B6A0-80C1B6A4 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4058 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4058 = 300.0f;
COMPILER_STRIP_GATE(0x80C1B6A0, &lit_4058);
#pragma pop

/* 80C1B6A4-80C1B6A8 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4059 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4059 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C1B6A4, &lit_4059);
#pragma pop

/* 80C1B6A8-80C1B6B0 0000A8 0004+04 0/1 0/0 0/0 .rodata          @4060 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4060[1 + 1 /* padding */] = {
    8.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80C1B6A8, &lit_4060);
#pragma pop

/* 80C1B6B0-80C1B6B8 0000B0 0008+00 0/2 0/0 0/0 .rodata          @4062 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4062[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80C1B6B0, &lit_4062);
#pragma pop

/* 80C19DA8-80C1A490 000868 06E8+00 1/1 0/0 0/0 .text            obj_hb_drop__FP12obj_hb_class */
static void obj_hb_drop(obj_hb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C1B6B8-80C1B6BC 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4122 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4122 = 19.0f / 20.0f;
COMPILER_STRIP_GATE(0x80C1B6B8, &lit_4122);
#pragma pop

/* 80C1B6BC-80C1B6C0 0000BC 0004+00 0/2 0/0 0/0 .rodata          @4123 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4123 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C1B6BC, &lit_4123);
#pragma pop

/* 80C1B6C0-80C1B6C4 0000C0 0004+00 0/2 0/0 0/0 .rodata          @4124 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4124 = 40.0f;
COMPILER_STRIP_GATE(0x80C1B6C0, &lit_4124);
#pragma pop

/* 80C1B6C4-80C1B6C8 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4125 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4125 = 0x3B83126F;
COMPILER_STRIP_GATE(0x80C1B6C4, &lit_4125);
#pragma pop

/* 80C1B6C8-80C1B6CC 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4126 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4126 = 1500.0f;
COMPILER_STRIP_GATE(0x80C1B6C8, &lit_4126);
#pragma pop

/* 80C1B6CC-80C1B6D0 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4127 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4127 = 130.0f;
COMPILER_STRIP_GATE(0x80C1B6CC, &lit_4127);
#pragma pop

/* 80C1A490-80C1A748 000F50 02B8+00 1/1 0/0 0/0 .text            obj_hb_float__FP12obj_hb_class */
static void obj_hb_float(obj_hb_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C1B6D0-80C1B6D4 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4293 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4293 = 5500.0f;
COMPILER_STRIP_GATE(0x80C1B6D0, &lit_4293);
#pragma pop

/* 80C1B6D4-80C1B6D8 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4294 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4294 = 5000.0f;
COMPILER_STRIP_GATE(0x80C1B6D4, &lit_4294);
#pragma pop

/* 80C1B6D8-80C1B6DC 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4295 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4295 = 3000.0f;
COMPILER_STRIP_GATE(0x80C1B6D8, &lit_4295);
#pragma pop

/* 80C1B6DC-80C1B6E0 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4296 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4296 = 4000.0f;
COMPILER_STRIP_GATE(0x80C1B6DC, &lit_4296);
#pragma pop

/* 80C1B6E0-80C1B6E4 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4297 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4297 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80C1B6E0, &lit_4297);
#pragma pop

/* 80C1B6E4-80C1B6E8 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4298 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4298 = -2.0f;
COMPILER_STRIP_GATE(0x80C1B6E4, &lit_4298);
#pragma pop

/* 80C1B6E8-80C1B6EC 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4299 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4299 = 2.5f;
COMPILER_STRIP_GATE(0x80C1B6E8, &lit_4299);
#pragma pop

/* 80C1B6EC-80C1B6F0 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4300 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4300 = -12.0f;
COMPILER_STRIP_GATE(0x80C1B6EC, &lit_4300);
#pragma pop

/* 80C1B6F0-80C1B6F4 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4301 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4301 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80C1B6F0, &lit_4301);
#pragma pop

/* 80C1B6F4-80C1B6F8 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4302 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4302 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80C1B6F4, &lit_4302);
#pragma pop

/* 80C1B6F8-80C1B6FC 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4303 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4303 = 20000.0f;
COMPILER_STRIP_GATE(0x80C1B6F8, &lit_4303);
#pragma pop

/* 80C1B708-80C1B710 000000 0008+00 1/1 0/0 0/0 .data            w_eff_id$4176 */
SECTION_DATA static u8 w_eff_id[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};

/* 80C1A748-80C1AF80 001208 0838+00 1/1 0/0 0/0 .text            action__FP12obj_hb_class */
static void action(obj_hb_class* param_0) {
    // NONMATCHING
}

/* 80C1AF80-80C1B124 001A40 01A4+00 2/1 0/0 0/0 .text            daOBJ_HB_Execute__FP12obj_hb_class
 */
static void daOBJ_HB_Execute(obj_hb_class* param_0) {
    // NONMATCHING
}

/* 80C1B124-80C1B12C 001BE4 0008+00 1/0 0/0 0/0 .text            daOBJ_HB_IsDelete__FP12obj_hb_class
 */
static bool daOBJ_HB_IsDelete(obj_hb_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80C1B700-80C1B700 000100 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80C1B700 = "E_HB";
#pragma pop

/* 80C1B12C-80C1B188 001BEC 005C+00 1/0 0/0 0/0 .text            daOBJ_HB_Delete__FP12obj_hb_class
 */
static void daOBJ_HB_Delete(obj_hb_class* param_0) {
    // NONMATCHING
}

/* 80C1B188-80C1B1F4 001C48 006C+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80C1B6FC-80C1B700 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4457 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4457 = 65535.0f;
COMPILER_STRIP_GATE(0x80C1B6FC, &lit_4457);
#pragma pop

/* 80C1B710-80C1B750 000008 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4381 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{AT_TYPE_1000, 0x3, 0xd}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_WOOD, 0x0, 0x1, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_STONE, 0x2, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80C1B750-80C1B770 -00001 0020+00 1/0 0/0 0/0 .data            l_daOBJ_HB_Method */
static actor_method_class l_daOBJ_HB_Method = {
    (process_method_func)daOBJ_HB_Create__FP10fopAc_ac_c,
    (process_method_func)daOBJ_HB_Delete__FP12obj_hb_class,
    (process_method_func)daOBJ_HB_Execute__FP12obj_hb_class,
    (process_method_func)daOBJ_HB_IsDelete__FP12obj_hb_class,
    (process_method_func)daOBJ_HB_Draw__FP12obj_hb_class,
};

/* 80C1B770-80C1B7A0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_HB */
extern actor_process_profile_definition g_profile_OBJ_HB = {
  fpcLy_CURRENT_e,       // mLayerID
  8,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_OBJ_HB,           // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(obj_hb_class),  // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  705,                   // mPriority
  &l_daOBJ_HB_Method,    // sub_method
  0x00040100,            // mStatus
  fopAc_ACTOR_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

/* 80C1B7A0-80C1B7AC 000098 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80C1B7AC-80C1B7B8 0000A4 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C1B7B8-80C1B7DC 0000B0 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C1B5F0,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C1B5E8,
};

/* 80C1B1F4-80C1B4E8 001CB4 02F4+00 1/0 0/0 0/0 .text            daOBJ_HB_Create__FP10fopAc_ac_c */
static void daOBJ_HB_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80C1B4E8-80C1B530 001FA8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80C1B530-80C1B578 001FF0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C1B578-80C1B5E8 002038 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80C1B5E8-80C1B5F0 0020A8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80C1B5E8() {
    // NONMATCHING
}

/* 80C1B5F0-80C1B5F8 0020B0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80C1B5F0() {
    // NONMATCHING
}

/* 80C1B700-80C1B700 000100 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
