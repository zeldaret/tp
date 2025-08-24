/**
 * @file d_a_e_mm_mt.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_e_mm_mt.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_enemy.h"


//
// Forward References:
//

extern "C" static void daE_MM_MT_Draw__FP13e_mm_mt_class();
extern "C" static void e_mm_hookCheck__FP13e_mm_mt_class();
extern "C" static void e_mm_mt_normal__FP13e_mm_mt_class();
extern "C" static void e_mm_mt_hagare__FP13e_mm_mt_class();
extern "C" static void e_mm_mt_carry__FP13e_mm_mt_class();
extern "C" static void wall_angle_get__FP13e_mm_mt_class();
extern "C" static void e_mm_mt_drop__FP13e_mm_mt_class();
extern "C" static void action__FP13e_mm_mt_class();
extern "C" static void daE_MM_MT_Execute__FP13e_mm_mt_class();
extern "C" static bool daE_MM_MT_IsDelete__FP13e_mm_mt_class();
extern "C" static void daE_MM_MT_Delete__FP13e_mm_mt_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_MM_MT_Create__FP10fopAc_ac_c();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" static void func_8072542C();
extern "C" static void func_80725434();
extern "C" extern char const* const d_a_e_mm_mt__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotS__FPA4_fs();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void GetAtHitObj__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void at_power_check__FP11dCcU_AtInfo();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void atan2sX_Z__4cXyzCFv();
extern "C" void atan2sY_XZ__4cXyzCFv();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_distanceAngleS__Fss();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void __dl__FPv();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_19();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_25();
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
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 80725884-80725888 00002C 0004+00 0/1 0/0 0/0 .rodata          @3829 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3829 = 700.0f;
COMPILER_STRIP_GATE(0x80725884, &lit_3829);
#pragma pop

/* 80722F78-8072305C 000078 00E4+00 1/0 0/0 0/0 .text            daE_MM_MT_Draw__FP13e_mm_mt_class
 */
static void daE_MM_MT_Draw(e_mm_mt_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80725888-8072588C 000030 0004+00 0/3 0/0 0/0 .rodata          @3883 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3883 = 20.0f;
COMPILER_STRIP_GATE(0x80725888, &lit_3883);
#pragma pop

/* 8072588C-80725890 000034 0004+00 0/4 0/0 0/0 .rodata          @3884 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3884 = -1.0f;
COMPILER_STRIP_GATE(0x8072588C, &lit_3884);
#pragma pop

/* 8072305C-80723270 00015C 0214+00 2/2 0/0 0/0 .text            e_mm_hookCheck__FP13e_mm_mt_class
 */
static void e_mm_hookCheck(e_mm_mt_class* param_0) {
    // NONMATCHING
}

/* 80723270-807234E8 000370 0278+00 1/1 0/0 0/0 .text            e_mm_mt_normal__FP13e_mm_mt_class
 */
static void e_mm_mt_normal(e_mm_mt_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80725890-80725894 000038 0004+00 0/1 0/0 0/0 .rodata          @4008 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4008 = 150.0f;
COMPILER_STRIP_GATE(0x80725890, &lit_4008);
#pragma pop

/* 80725894-80725898 00003C 0004+00 0/1 0/0 0/0 .rodata          @4009 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4009 = 3.0f;
COMPILER_STRIP_GATE(0x80725894, &lit_4009);
#pragma pop

/* 80725898-8072589C 000040 0004+00 0/1 0/0 0/0 .rodata          @4010 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4010 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80725898, &lit_4010);
#pragma pop

/* 8072589C-807258A0 000044 0004+00 0/2 0/0 0/0 .rodata          @4011 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4011 = 2000.0f;
COMPILER_STRIP_GATE(0x8072589C, &lit_4011);
#pragma pop

/* 807258A0-807258A4 000048 0004+00 0/2 0/0 0/0 .rodata          @4012 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4012 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x807258A0, &lit_4012);
#pragma pop

/* 807258A4-807258A8 00004C 0004+00 0/4 0/0 0/0 .rodata          @4013 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4013 = 200.0f;
COMPILER_STRIP_GATE(0x807258A4, &lit_4013);
#pragma pop

/* 807258A8-807258AC 000050 0004+00 0/1 0/0 0/0 .rodata          @4014 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4014 = 59.0f / 20.0f;
COMPILER_STRIP_GATE(0x807258A8, &lit_4014);
#pragma pop

/* 807258AC-807258B0 000054 0004+00 0/2 0/0 0/0 .rodata          @4015 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4015 = 5.0f;
COMPILER_STRIP_GATE(0x807258AC, &lit_4015);
#pragma pop

/* 807258B0-807258B4 000058 0004+00 0/3 0/0 0/0 .rodata          @4016 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4016 = 30.0f;
COMPILER_STRIP_GATE(0x807258B0, &lit_4016);
#pragma pop

/* 807258B4-807258B8 00005C 0004+00 0/3 0/0 0/0 .rodata          @4017 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4017 = 0.5f;
COMPILER_STRIP_GATE(0x807258B4, &lit_4017);
#pragma pop

/* 807234E8-80723744 0005E8 025C+00 1/1 0/0 0/0 .text            e_mm_mt_hagare__FP13e_mm_mt_class
 */
static void e_mm_mt_hagare(e_mm_mt_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807258B8-807258BC 000060 0004+00 0/2 0/0 0/0 .rodata          @4089 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4089 = 10.0f;
COMPILER_STRIP_GATE(0x807258B8, &lit_4089);
#pragma pop

/* 807258BC-807258C0 000064 0004+00 0/1 0/0 0/0 .rodata          @4090 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4090 = 0.25f;
COMPILER_STRIP_GATE(0x807258BC, &lit_4090);
#pragma pop

/* 807258C0-807258C4 000068 0004+00 0/2 0/0 0/0 .rodata          @4091 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4091 = 1000.0f;
COMPILER_STRIP_GATE(0x807258C0, &lit_4091);
#pragma pop

/* 807258C4-807258C8 00006C 0004+00 0/1 0/0 0/0 .rodata          @4092 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4092 = -1000000000.0f;
COMPILER_STRIP_GATE(0x807258C4, &lit_4092);
#pragma pop

/* 80723744-807239CC 000844 0288+00 1/1 0/0 0/0 .text            e_mm_mt_carry__FP13e_mm_mt_class */
static void e_mm_mt_carry(e_mm_mt_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807258C8-807258CC 000070 0004+00 0/1 0/0 0/0 .rodata          @4146 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4146 = -50.0f;
COMPILER_STRIP_GATE(0x807258C8, &lit_4146);
#pragma pop

/* 807239CC-80723B70 000ACC 01A4+00 1/1 0/0 0/0 .text            wall_angle_get__FP13e_mm_mt_class
 */
static void wall_angle_get(e_mm_mt_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807258CC-807258D0 000074 0004+00 0/1 0/0 0/0 .rodata          @4338 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4338 = -3.0f / 10.0f;
COMPILER_STRIP_GATE(0x807258CC, &lit_4338);
#pragma pop

/* 807258D0-807258D4 000078 0004+00 0/1 0/0 0/0 .rodata          @4339 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4339 = -30.0f;
COMPILER_STRIP_GATE(0x807258D0, &lit_4339);
#pragma pop

/* 807258D4-807258D8 00007C 0004+00 0/1 0/0 0/0 .rodata          @4340 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4340 = -2.0f / 5.0f;
COMPILER_STRIP_GATE(0x807258D4, &lit_4340);
#pragma pop

/* 807258D8-807258DC 000080 0004+00 0/1 0/0 0/0 .rodata          @4341 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4341 = 0.75f;
COMPILER_STRIP_GATE(0x807258D8, &lit_4341);
#pragma pop

/* 807258DC-807258E0 000084 0004+00 0/1 0/0 0/0 .rodata          @4342 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4342 = 3500.0f;
COMPILER_STRIP_GATE(0x807258DC, &lit_4342);
#pragma pop

/* 807258E0-807258E4 000088 0004+00 0/1 0/0 0/0 .rodata          @4343 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4343 = 1.5f;
COMPILER_STRIP_GATE(0x807258E0, &lit_4343);
#pragma pop

/* 807258E4-807258E8 00008C 0004+00 0/1 0/0 0/0 .rodata          @4344 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4344 = 1300.0f;
COMPILER_STRIP_GATE(0x807258E4, &lit_4344);
#pragma pop

/* 807258E8-807258EC 000090 0004+00 0/2 0/0 0/0 .rodata          @4345 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4345 = 2.0f;
COMPILER_STRIP_GATE(0x807258E8, &lit_4345);
#pragma pop

/* 807258EC-807258F0 000094 0004+00 0/1 0/0 0/0 .rodata          @4346 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4346 = -5.0f;
COMPILER_STRIP_GATE(0x807258EC, &lit_4346);
#pragma pop

/* 807258F0-807258F8 000098 0008+00 0/2 0/0 0/0 .rodata          @4348 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4348[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807258F0, &lit_4348);
#pragma pop

/* 80723B70-80724190 000C70 0620+00 1/1 0/0 0/0 .text            e_mm_mt_drop__FP13e_mm_mt_class */
static void e_mm_mt_drop(e_mm_mt_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807258F8-807258FC 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4730 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4730 = 50.0f;
COMPILER_STRIP_GATE(0x807258F8, &lit_4730);
#pragma pop

/* 807258FC-80725900 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4731 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4731 = 40.0f;
COMPILER_STRIP_GATE(0x807258FC, &lit_4731);
#pragma pop

/* 80725900-80725904 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4732 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4732 = 5500.0f;
COMPILER_STRIP_GATE(0x80725900, &lit_4732);
#pragma pop

/* 80725904-80725908 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4733 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4733 = 5000.0f;
COMPILER_STRIP_GATE(0x80725904, &lit_4733);
#pragma pop

/* 80725908-8072590C 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4734 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4734 = 3000.0f;
COMPILER_STRIP_GATE(0x80725908, &lit_4734);
#pragma pop

/* 8072590C-80725910 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4735 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4735 = 4000.0f;
COMPILER_STRIP_GATE(0x8072590C, &lit_4735);
#pragma pop

/* 80725910-80725914 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4736 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4736 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80725910, &lit_4736);
#pragma pop

/* 80725914-80725918 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4737 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4737 = -60.0f;
COMPILER_STRIP_GATE(0x80725914, &lit_4737);
#pragma pop

/* 80725918-8072591C 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4738 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4738 = -90.0f;
COMPILER_STRIP_GATE(0x80725918, &lit_4738);
#pragma pop

/* 8072591C-80725920 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4739 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4739 = 60.0f;
COMPILER_STRIP_GATE(0x8072591C, &lit_4739);
#pragma pop

/* 80725920-80725924 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4740 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4740 = 20000.0f;
COMPILER_STRIP_GATE(0x80725920, &lit_4740);
#pragma pop

/* 80724190-80724D40 001290 0BB0+00 1/1 0/0 0/0 .text            action__FP13e_mm_mt_class */
static void action(e_mm_mt_class* param_0) {
    // NONMATCHING
}

/* 80724D40-80724DF4 001E40 00B4+00 2/1 0/0 0/0 .text daE_MM_MT_Execute__FP13e_mm_mt_class */
static void daE_MM_MT_Execute(e_mm_mt_class* param_0) {
    // NONMATCHING
}

/* 80724DF4-80724DFC 001EF4 0008+00 1/0 0/0 0/0 .text daE_MM_MT_IsDelete__FP13e_mm_mt_class */
static bool daE_MM_MT_IsDelete(e_mm_mt_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 8072592C-8072592C 0000D4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8072592C = "E_MM_MT";
#pragma pop

/* 80724DFC-80724E58 001EFC 005C+00 1/0 0/0 0/0 .text            daE_MM_MT_Delete__FP13e_mm_mt_class
 */
static void daE_MM_MT_Delete(e_mm_mt_class* param_0) {
    // NONMATCHING
}

/* 80724E58-80724EE0 001F58 0088+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80725924-80725928 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4896 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4896 = -200.0f;
COMPILER_STRIP_GATE(0x80725924, &lit_4896);
#pragma pop

/* 80725928-8072592C 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4897 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4897 = 65535.0f;
COMPILER_STRIP_GATE(0x80725928, &lit_4897);
#pragma pop

/* 8072596C-807259AC 000038 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4792 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0xd}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_METAL, 0x0, 0x1, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x2, 0x0, 0x0, 0x407}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 807259AC-807259EC 000078 0040+00 1/1 0/0 0/0 .data            hk_sph_src$4793 */
static dCcD_SrcSph hk_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x4080, 0x3}, 0x0}}, // mObj
        {dCcD_SE_13, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x406}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 807259EC-80725A0C -00001 0020+00 1/0 0/0 0/0 .data            l_daE_MM_MT_Method */
static actor_method_class l_daE_MM_MT_Method = {
    (process_method_func)daE_MM_MT_Create__FP10fopAc_ac_c,
    (process_method_func)daE_MM_MT_Delete__FP13e_mm_mt_class,
    (process_method_func)daE_MM_MT_Execute__FP13e_mm_mt_class,
    (process_method_func)daE_MM_MT_IsDelete__FP13e_mm_mt_class,
    (process_method_func)daE_MM_MT_Draw__FP13e_mm_mt_class,
};

/* 80725A0C-80725A3C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_MM_MT */
extern actor_process_profile_definition g_profile_E_MM_MT = {
  fpcLy_CURRENT_e,        // mLayerID
  8,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_MM_MT,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(e_mm_mt_class),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  168,                    // mPriority
  &l_daE_MM_MT_Method,    // sub_method
  0x000C0100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80725A3C-80725A48 000108 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80725A48-80725A54 000114 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80725A54-80725A60 000120 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80725A60-80725A6C 00012C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80725A6C-80725A78 000138 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80725A78-80725A9C 000144 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80725434,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8072542C,
};

/* 80724EE0-80725218 001FE0 0338+00 1/0 0/0 0/0 .text            daE_MM_MT_Create__FP10fopAc_ac_c */
static void daE_MM_MT_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80725218-80725260 002318 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80725260-807252A8 002360 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 807252A8-80725304 0023A8 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80725304-80725374 002404 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80725374-807253E4 002474 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 807253E4-8072542C 0024E4 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 8072542C-80725434 00252C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8072542C() {
    // NONMATCHING
}

/* 80725434-8072543C 002534 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80725434() {
    // NONMATCHING
}

/* 8072592C-8072592C 0000D4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
