/**
 * @file d_a_e_mk_bo.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_mk_bo.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void daE_MK_BO_Draw__FP13e_mk_bo_class();
extern "C" static void hit_check__FP13e_mk_bo_class();
extern "C" static void e_mk_bo_shot__FP13e_mk_bo_class();
extern "C" static void e_mk_bo_start__FP13e_mk_bo_class();
extern "C" static void e_mk_bo_r04__FP13e_mk_bo_class();
extern "C" static void e_mk_bo_hasira__FP13e_mk_bo_class();
extern "C" static void e_mk_bo_demo_ground__FP13e_mk_bo_class();
extern "C" static void e_mk_bo_demo_spin__FP13e_mk_bo_class();
extern "C" static void action__FP13e_mk_bo_class();
extern "C" static void daE_MK_BO_Execute__FP13e_mk_bo_class();
extern "C" static bool daE_MK_BO_IsDelete__FP13e_mk_bo_class();
extern "C" static void daE_MK_BO_Delete__FP13e_mk_bo_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daE_MK_BO_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" static void func_8071F5E4();
extern "C" static void func_8071F5EC();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_mk_bo__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl();
extern "C" void play__14mDoExt_McaMorfFP3VecUlSc();
extern "C" void entryDL__14mDoExt_McaMorfFv();
extern "C" void modelCalc__14mDoExt_McaMorfFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void cDmrNowMidnaTalk__Fv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void GetAtHitObj__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void func_80280808();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void deleteObject__14Z2SoundObjBaseFv();
extern "C" void __ct__16Z2SoundObjSimpleFv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void _savegpr_22();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 8071CCEC-8071CE30 0000EC 0144+00 1/0 0/0 0/0 .text            daE_MK_BO_Draw__FP13e_mk_bo_class
 */
static void daE_MK_BO_Draw(e_mk_bo_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071F640-8071F644 000000 0004+00 8/8 0/0 0/0 .rodata          @3776 */
SECTION_RODATA static u8 const lit_3776[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8071F640, &lit_3776);

/* 8071F644-8071F648 000004 0004+00 1/8 0/0 0/0 .rodata          @3777 */
SECTION_RODATA static f32 const lit_3777 = 1.0f;
COMPILER_STRIP_GATE(0x8071F644, &lit_3777);

/* 8071F648-8071F64C 000008 0004+00 0/3 0/0 0/0 .rodata          @3778 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3778 = 100.0f;
COMPILER_STRIP_GATE(0x8071F648, &lit_3778);
#pragma pop

/* 8071F64C-8071F650 00000C 0004+00 0/1 0/0 0/0 .rodata          @3779 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3779 = 3.0f;
COMPILER_STRIP_GATE(0x8071F64C, &lit_3779);
#pragma pop

/* 8071CE30-8071D084 000230 0254+00 1/1 0/0 0/0 .text            hit_check__FP13e_mk_bo_class */
static void hit_check(e_mk_bo_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071F650-8071F658 000010 0008+00 0/3 0/0 0/0 .rodata          @3934 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3934[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8071F650, &lit_3934);
#pragma pop

/* 8071F658-8071F660 000018 0008+00 0/3 0/0 0/0 .rodata          @3935 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3935[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8071F658, &lit_3935);
#pragma pop

/* 8071F660-8071F668 000020 0008+00 0/3 0/0 0/0 .rodata          @3936 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3936[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8071F660, &lit_3936);
#pragma pop

/* 8071F668-8071F66C 000028 0004+00 0/1 0/0 0/0 .rodata          @3937 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3937 = 300.0f;
COMPILER_STRIP_GATE(0x8071F668, &lit_3937);
#pragma pop

/* 8071F66C-8071F670 00002C 0004+00 0/3 0/0 0/0 .rodata          @3938 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3938 = 160.0f;
COMPILER_STRIP_GATE(0x8071F66C, &lit_3938);
#pragma pop

/* 8071F670-8071F674 000030 0004+00 0/3 0/0 0/0 .rodata          @3939 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3939 = 350.0f;
COMPILER_STRIP_GATE(0x8071F670, &lit_3939);
#pragma pop

/* 8071F674-8071F678 000034 0004+00 0/3 0/0 0/0 .rodata          @3940 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3940 = 600.0f;
COMPILER_STRIP_GATE(0x8071F674, &lit_3940);
#pragma pop

/* 8071F678-8071F67C 000038 0004+00 0/1 0/0 0/0 .rodata          @3941 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3941 = 120.0f;
COMPILER_STRIP_GATE(0x8071F678, &lit_3941);
#pragma pop

/* 8071F67C-8071F680 00003C 0004+00 0/1 0/0 0/0 .rodata          @3942 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3942 = 30.0f;
COMPILER_STRIP_GATE(0x8071F67C, &lit_3942);
#pragma pop

/* 8071F680-8071F684 000040 0004+00 0/4 0/0 0/0 .rodata          @3943 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3943 = 40.0f;
COMPILER_STRIP_GATE(0x8071F680, &lit_3943);
#pragma pop

/* 8071F684-8071F688 000044 0004+00 0/5 0/0 0/0 .rodata          @3944 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3944 = 50.0f;
COMPILER_STRIP_GATE(0x8071F684, &lit_3944);
#pragma pop

/* 8071F688-8071F68C 000048 0004+00 0/5 0/0 0/0 .rodata          @3945 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3945 = 5.0f;
COMPILER_STRIP_GATE(0x8071F688, &lit_3945);
#pragma pop

/* 8071D084-8071D694 000484 0610+00 1/1 0/0 0/0 .text            e_mk_bo_shot__FP13e_mk_bo_class */
static void e_mk_bo_shot(e_mk_bo_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071F68C-8071F690 00004C 0004+00 0/1 0/0 0/0 .rodata          @4065 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4065 = 5000.0f;
COMPILER_STRIP_GATE(0x8071F68C, &lit_4065);
#pragma pop

/* 8071F690-8071F694 000050 0004+00 0/1 0/0 0/0 .rodata          @4066 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4066 = -3900.0f;
COMPILER_STRIP_GATE(0x8071F690, &lit_4066);
#pragma pop

/* 8071F694-8071F698 000054 0004+00 0/3 0/0 0/0 .rodata          @4067 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4067 = 200.0f;
COMPILER_STRIP_GATE(0x8071F694, &lit_4067);
#pragma pop

/* 8071D694-8071DBA0 000A94 050C+00 1/1 0/0 0/0 .text            e_mk_bo_start__FP13e_mk_bo_class */
static void e_mk_bo_start(e_mk_bo_class* param_0) {
    // NONMATCHING
}

/* 8071DBA0-8071DF04 000FA0 0364+00 1/1 0/0 0/0 .text            e_mk_bo_r04__FP13e_mk_bo_class */
static void e_mk_bo_r04(e_mk_bo_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071F698-8071F69C 000058 0004+00 0/1 0/0 0/0 .rodata          @4210 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4210 = 500.0f;
COMPILER_STRIP_GATE(0x8071F698, &lit_4210);
#pragma pop

/* 8071F69C-8071F6A0 00005C 0004+00 0/1 0/0 0/0 .rodata          @4211 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4211 = 7.0f;
COMPILER_STRIP_GATE(0x8071F69C, &lit_4211);
#pragma pop

/* 8071F6A0-8071F6A4 000060 0004+00 0/1 0/0 0/0 .rodata          @4212 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4212 = -2.0f / 5.0f;
COMPILER_STRIP_GATE(0x8071F6A0, &lit_4212);
#pragma pop

/* 8071F6A4-8071F6A8 000064 0004+00 0/2 0/0 0/0 .rodata          @4213 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4213 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x8071F6A4, &lit_4213);
#pragma pop

/* 8071F6A8-8071F6B0 000068 0004+04 0/1 0/0 0/0 .rodata          @4214 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4214[1 + 1 /* padding */] = {
    10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8071F6A8, &lit_4214);
#pragma pop

/* 8071F6B0-8071F6B8 000070 0008+00 0/1 0/0 0/0 .rodata          @4216 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4216[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8071F6B0, &lit_4216);
#pragma pop

/* 8071DF04-8071E1A4 001304 02A0+00 1/1 0/0 0/0 .text            e_mk_bo_hasira__FP13e_mk_bo_class
 */
static void e_mk_bo_hasira(e_mk_bo_class* param_0) {
    // NONMATCHING
}

/* 8071E1A4-8071E200 0015A4 005C+00 1/1 0/0 0/0 .text e_mk_bo_demo_ground__FP13e_mk_bo_class */
static void e_mk_bo_demo_ground(e_mk_bo_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071F6B8-8071F6BC 000078 0004+00 0/1 0/0 0/0 .rodata          @4306 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4306 = -1.0f;
COMPILER_STRIP_GATE(0x8071F6B8, &lit_4306);
#pragma pop

/* 8071F6BC-8071F6C0 00007C 0004+00 0/1 0/0 0/0 .rodata          @4307 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4307 = 20.0f;
COMPILER_STRIP_GATE(0x8071F6BC, &lit_4307);
#pragma pop

/* 8071F6C0-8071F6C4 000080 0004+00 0/1 0/0 0/0 .rodata          @4308 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4308 = 0.5f;
COMPILER_STRIP_GATE(0x8071F6C0, &lit_4308);
#pragma pop

/* 8071F6C4-8071F6C8 000084 0004+00 0/1 0/0 0/0 .rodata          @4309 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4309 = 170.0f;
COMPILER_STRIP_GATE(0x8071F6C4, &lit_4309);
#pragma pop

/* 8071F860-8071F870 000048 000C+04 0/1 0/0 0/0 .bss             @4243 */
#pragma push
#pragma force_active on
static u8 lit_4243[12 + 4 /* padding */];
#pragma pop

/* 8071F870-8071F87C 000058 000C+00 0/1 0/0 0/0 .bss             sc$4242 */
#pragma push
#pragma force_active on
static u8 sc[12];
#pragma pop

/* 8071E200-8071E6C4 001600 04C4+00 1/1 0/0 0/0 .text e_mk_bo_demo_spin__FP13e_mk_bo_class */
static void e_mk_bo_demo_spin(e_mk_bo_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071F6C8-8071F6CC 000088 0004+00 1/2 0/0 0/0 .rodata          @4353 */
SECTION_RODATA static f32 const lit_4353 = 10000.0f;
COMPILER_STRIP_GATE(0x8071F6C8, &lit_4353);

/* 8071E6C4-8071E8A4 001AC4 01E0+00 1/1 0/0 0/0 .text            action__FP13e_mk_bo_class */
static void action(e_mk_bo_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071F6CC-8071F6D0 00008C 0004+00 0/1 0/0 0/0 .rodata          @4580 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4580 = 100000.0f;
COMPILER_STRIP_GATE(0x8071F6CC, &lit_4580);
#pragma pop

/* 8071F700-8071F708 000020 0008+00 0/1 0/0 0/0 .data            bo_eno_1$4378 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 bo_eno_1[8] = {
    0x82, 0x14, 0x82, 0x15, 0x82, 0x0F, 0x82, 0x10,
};
#pragma pop

/* 8071F708-8071F710 000028 0008+00 0/1 0/0 0/0 .data            bo_eno_2$4379 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 bo_eno_2[8] = {
    0x82, 0x60, 0x82, 0x61, 0x82, 0x5E, 0x82, 0x5F,
};
#pragma pop

/* 8071F710-8071F714 000030 0004+00 0/1 0/0 0/0 .data            bo_eno_12$4402 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 bo_eno_12[4] = {
    0x82,
    0x0D,
    0x82,
    0x0E,
};
#pragma pop

/* 8071F714-8071F71C 000034 0008+00 0/1 0/0 0/0 .data            bo_eno_end$4410 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 bo_eno_end[8] = {
    0x02, 0x4C, 0x02, 0x4D, 0x02, 0x56, 0x02, 0x57,
};
#pragma pop

/* 8071E8A4-8071EECC 001CA4 0628+00 2/1 0/0 0/0 .text daE_MK_BO_Execute__FP13e_mk_bo_class */
static void daE_MK_BO_Execute(e_mk_bo_class* param_0) {
    // NONMATCHING
}

/* 8071EECC-8071EED4 0022CC 0008+00 1/0 0/0 0/0 .text daE_MK_BO_IsDelete__FP13e_mk_bo_class */
static bool daE_MK_BO_IsDelete(e_mk_bo_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 8071F6D8-8071F6D8 000098 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8071F6D8 = "E_mk";
#pragma pop

/* 8071EED4-8071EF24 0022D4 0050+00 1/0 0/0 0/0 .text            daE_MK_BO_Delete__FP13e_mk_bo_class
 */
static void daE_MK_BO_Delete(e_mk_bo_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071F71C-8071F75C 00003C 0040+00 1/1 0/0 0/0 .data            at_sph_src$4657 */
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_40, 0x2, 0x1f}, {0xd8fbfdff, 0x3}, 0x0}}, // mObj
        {dCcD_SE_WOOD, 0x1, 0x1, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_METAL, 0x5, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 30.0f} // mSph
    } // mSphAttr
};

/* 8071F75C-8071F77C -00001 0020+00 1/0 0/0 0/0 .data            l_daE_MK_BO_Method */
static actor_method_class l_daE_MK_BO_Method = {
    (process_method_func)daE_MK_BO_Create__FP10fopAc_ac_c,
    (process_method_func)daE_MK_BO_Delete__FP13e_mk_bo_class,
    (process_method_func)daE_MK_BO_Execute__FP13e_mk_bo_class,
    (process_method_func)daE_MK_BO_IsDelete__FP13e_mk_bo_class,
    (process_method_func)daE_MK_BO_Draw__FP13e_mk_bo_class,
};

/* 8071F77C-8071F7AC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_MK_BO */
extern actor_process_profile_definition g_profile_E_MK_BO = {
  fpcLy_CURRENT_e,       // mLayerID
  8,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_E_MK_BO,          // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(e_mk_bo_class), // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  166,                   // mPriority
  &l_daE_MK_BO_Method,   // sub_method
  0x00044100,            // mStatus
  fopAc_ENEMY_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

/* 8071F7AC-8071F7B8 0000CC 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8071F7B8-8071F7C4 0000D8 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8071F7C4-8071F7D0 0000E4 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8071F7D0-8071F7DC 0000F0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8071F7DC-8071F7E8 0000FC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8071F7E8-8071F80C 000108 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8071F5EC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8071F5E4,
};

/* 8071F80C-8071F818 00012C 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8071EF24-8071F120 002324 01FC+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8071F120-8071F168 002520 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071F6D0-8071F6D4 000090 0004+00 0/1 0/0 0/0 .rodata          @4729 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4729 = 80.0f;
COMPILER_STRIP_GATE(0x8071F6D0, &lit_4729);
#pragma pop

/* 8071F6D4-8071F6D8 000094 0004+00 0/1 0/0 0/0 .rodata          @4730 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4730 = 65535.0f;
COMPILER_STRIP_GATE(0x8071F6D4, &lit_4730);
#pragma pop

/* 8071F168-8071F3D0 002568 0268+00 1/0 0/0 0/0 .text            daE_MK_BO_Create__FP10fopAc_ac_c */
static void daE_MK_BO_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8071F3D0-8071F418 0027D0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 8071F418-8071F460 002818 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8071F460-8071F4BC 002860 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 8071F4BC-8071F52C 0028BC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8071F52C-8071F59C 00292C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 8071F59C-8071F5E4 00299C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 8071F5E4-8071F5EC 0029E4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8071F5E4() {
    // NONMATCHING
}

/* 8071F5EC-8071F5F4 0029EC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8071F5EC() {
    // NONMATCHING
}

/* 8071F5F4-8071F630 0029F4 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8071F87C-8071F880 000064 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8071F87C[4];
#pragma pop

/* 8071F880-8071F884 000068 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8071F880[4];
#pragma pop

/* 8071F884-8071F888 00006C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8071F884[4];
#pragma pop

/* 8071F888-8071F88C 000070 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8071F888[4];
#pragma pop

/* 8071F88C-8071F890 000074 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8071F88C[4];
#pragma pop

/* 8071F890-8071F894 000078 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8071F890[4];
#pragma pop

/* 8071F894-8071F898 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8071F894[4];
#pragma pop

/* 8071F898-8071F89C 000080 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8071F898[4];
#pragma pop

/* 8071F89C-8071F8A0 000084 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8071F89C[4];
#pragma pop

/* 8071F8A0-8071F8A4 000088 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8071F8A0[4];
#pragma pop

/* 8071F8A4-8071F8A8 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8071F8A4[4];
#pragma pop

/* 8071F8A8-8071F8AC 000090 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8071F8A8[4];
#pragma pop

/* 8071F8AC-8071F8B0 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8071F8AC[4];
#pragma pop

/* 8071F8B0-8071F8B4 000098 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8071F8B0[4];
#pragma pop

/* 8071F8B4-8071F8B8 00009C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8071F8B4[4];
#pragma pop

/* 8071F8B8-8071F8BC 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8071F8B8[4];
#pragma pop

/* 8071F8BC-8071F8C0 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8071F8BC[4];
#pragma pop

/* 8071F8C0-8071F8C4 0000A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8071F8C0[4];
#pragma pop

/* 8071F8C4-8071F8C8 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8071F8C4[4];
#pragma pop

/* 8071F8C8-8071F8CC 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8071F8C8[4];
#pragma pop

/* 8071F8CC-8071F8D0 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8071F8CC[4];
#pragma pop

/* 8071F8D0-8071F8D4 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8071F8D0[4];
#pragma pop

/* 8071F8D4-8071F8D8 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8071F8D4[4];
#pragma pop

/* 8071F8D8-8071F8DC 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8071F8D8[4];
#pragma pop

/* 8071F8DC-8071F8E0 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8071F8DC[4];
#pragma pop

/* 8071F6D8-8071F6D8 000098 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
