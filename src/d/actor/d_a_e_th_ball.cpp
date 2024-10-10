/**
 * @file d_a_e_th_ball.cpp
 * 
*/

#include "d/actor/d_a_e_th_ball.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static void chain_draw__FP15e_th_ball_class();
extern "C" static void daE_TH_BALL_Draw__FP15e_th_ball_class();
extern "C" static void chain_control_01__FP15e_th_ball_class();
extern "C" void __dt__4cXyzFv();
extern "C" static void chain_control_02__FP15e_th_ball_class();
extern "C" static void chain_control_03__FP15e_th_ball_class();
extern "C" static void chain_control_11__FP15e_th_ball_class();
extern "C" static void chain_control_12__FP15e_th_ball_class();
extern "C" static void chain_control_13__FP15e_th_ball_class();
extern "C" static void chain_control_21__FP15e_th_ball_class();
extern "C" static void normal_move__FP15e_th_ball_classSc();
extern "C" static void e_th_ball_stop__FP15e_th_ball_class();
extern "C" static void e_th_ball_spin__FP15e_th_ball_class();
extern "C" static void wall_angle_get__FP15e_th_ball_class();
extern "C" static void e_th_ball_shot__FP15e_th_ball_class();
extern "C" static void e_th_ball_return__FP15e_th_ball_class();
extern "C" static void e_th_ball_end__FP15e_th_ball_class();
extern "C" static void action__FP15e_th_ball_class();
extern "C" static void get_demo__FP15e_th_ball_class();
extern "C" static void daE_TH_BALL_Execute__FP15e_th_ball_class();
extern "C" static bool daE_TH_BALL_IsDelete__FP15e_th_ball_class();
extern "C" static void daE_TH_BALL_Delete__FP15e_th_ball_class();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" static void daE_TH_BALL_Create__FP10fopAc_ac_c();
extern "C" void __ct__15e_th_ball_classFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" static void func_807B7EA0();
extern "C" static void func_807B7EA8();
extern "C" extern char const* const d_a_e_th_ball__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdate__FP8J3DModel();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs();
extern "C" void fopAcM_createItemForTrBoxDemo__FPC4cXyziiiPC5csXyzPC4cXyz();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj();
extern "C" void onSwitch__12dSv_memBit_cFi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void StartShock__12dVibration_cFii4cXyz();
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
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void GetAtHitObj__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void setLookPos__9daPy_py_cFP4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_pol_sound_get__FPC13cBgS_PolyInfo();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void MtxTrans__FfffUc();
extern "C" void MtxScale__FfffUc();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_21();
extern "C" void _savegpr_22();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_21();
extern "C" void _restgpr_22();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 m_cpadInfo__8mDoCPd_c[256];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern void* calc_mtx[1 + 1 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 807B7EB8-807B7EBC 000000 0004+00 16/16 0/0 0/0 .rodata          @3746 */
SECTION_RODATA static f32 const lit_3746 = 1.0f;
COMPILER_STRIP_GATE(0x807B7EB8, &lit_3746);

/* 807B7EBC-807B7EC0 000004 0004+00 2/14 0/0 0/0 .rodata          @3747 */
SECTION_RODATA static u8 const lit_3747[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x807B7EBC, &lit_3747);

/* 807B7EC0-807B7EC4 000008 0004+00 0/1 0/0 0/0 .rodata          @3748 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3748 = 12.0f;
COMPILER_STRIP_GATE(0x807B7EC0, &lit_3748);
#pragma pop

/* 807B80E0-807B80E4 000000 0004+00 12/12 0/0 0/0 .bss             master */
static u8 master[4];

/* 807B4918-807B4C40 000078 0328+00 1/1 0/0 0/0 .text            chain_draw__FP15e_th_ball_class */
static void chain_draw(e_th_ball_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B7EC4-807B7EC8 00000C 0004+00 2/2 0/0 0/0 .rodata          @3759 */
SECTION_RODATA static f32 const lit_3759 = 55.0f;
COMPILER_STRIP_GATE(0x807B7EC4, &lit_3759);

/* 807B4C40-807B4CEC 0003A0 00AC+00 1/0 0/0 0/0 .text daE_TH_BALL_Draw__FP15e_th_ball_class */
static void daE_TH_BALL_Draw(e_th_ball_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B7EC8-807B7ECC 000010 0004+00 0/3 0/0 0/0 .rodata          @3847 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3847 = 20.0f;
COMPILER_STRIP_GATE(0x807B7EC8, &lit_3847);
#pragma pop

/* 807B7ECC-807B7ED0 000014 0004+00 0/3 0/0 0/0 .rodata          @3848 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3848 = 1000.0f;
COMPILER_STRIP_GATE(0x807B7ECC, &lit_3848);
#pragma pop

/* 807B7ED0-807B7ED4 000018 0004+00 1/5 0/0 0/0 .rodata          @3849 */
SECTION_RODATA static f32 const lit_3849 = 25.0f;
COMPILER_STRIP_GATE(0x807B7ED0, &lit_3849);

/* 807B7ED4-807B7ED8 00001C 0004+00 0/5 0/0 0/0 .rodata          @3850 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3850 = 200.0f;
COMPILER_STRIP_GATE(0x807B7ED4, &lit_3850);
#pragma pop

/* 807B7ED8-807B7EDC 000020 0004+00 0/3 0/0 0/0 .rodata          @3851 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3851 = 7.0f;
COMPILER_STRIP_GATE(0x807B7ED8, &lit_3851);
#pragma pop

/* 807B4CEC-807B5074 00044C 0388+00 1/1 0/0 0/0 .text chain_control_01__FP15e_th_ball_class */
static void chain_control_01(e_th_ball_class* param_0) {
    // NONMATCHING
}

/* 807B5074-807B50B0 0007D4 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B7EDC-807B7EE0 000024 0004+00 0/1 0/0 0/0 .rodata          @3969 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3969 = 90.0f;
COMPILER_STRIP_GATE(0x807B7EDC, &lit_3969);
#pragma pop

/* 807B7EE0-807B7EE8 000028 0004+04 0/1 0/0 0/0 .rodata          @3970 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3970[1 + 1 /* padding */] = {
    -100.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x807B7EE0, &lit_3970);
#pragma pop

/* 807B7EE8-807B7EF0 000030 0008+00 0/4 0/0 0/0 .rodata          @3971 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3971[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807B7EE8, &lit_3971);
#pragma pop

/* 807B7EF0-807B7EF8 000038 0008+00 0/4 0/0 0/0 .rodata          @3972 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3972[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807B7EF0, &lit_3972);
#pragma pop

/* 807B7EF8-807B7F00 000040 0008+00 0/4 0/0 0/0 .rodata          @3973 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3973[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807B7EF8, &lit_3973);
#pragma pop

/* 807B7F00-807B7F04 000048 0004+00 0/1 0/0 0/0 .rodata          @3974 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3974 = 1024.0f;
COMPILER_STRIP_GATE(0x807B7F00, &lit_3974);
#pragma pop

/* 807B7F04-807B7F08 00004C 0004+00 0/1 0/0 0/0 .rodata          @3975 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3975 = 16384.0f;
COMPILER_STRIP_GATE(0x807B7F04, &lit_3975);
#pragma pop

/* 807B7F08-807B7F10 000050 0004+04 0/1 0/0 0/0 .rodata          @3976 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3976[1 + 1 /* padding */] = {
    2048.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x807B7F08, &lit_3976);
#pragma pop

/* 807B50B0-807B54B4 000810 0404+00 1/1 0/0 0/0 .text chain_control_02__FP15e_th_ball_class */
static void chain_control_02(e_th_ball_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B7F10-807B7F18 000058 0008+00 1/2 0/0 0/0 .rodata          @4027 */
SECTION_RODATA static u8 const lit_4027[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807B7F10, &lit_4027);

/* 807B54B4-807B56A4 000C14 01F0+00 1/1 0/0 0/0 .text chain_control_03__FP15e_th_ball_class */
static void chain_control_03(e_th_ball_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B7F18-807B7F1C 000060 0004+00 0/4 0/0 0/0 .rodata          @4090 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4090 = 10.0f;
COMPILER_STRIP_GATE(0x807B7F18, &lit_4090);
#pragma pop

/* 807B7F1C-807B7F20 000064 0004+00 0/3 0/0 0/0 .rodata          @4091 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4091 = -20.0f;
COMPILER_STRIP_GATE(0x807B7F1C, &lit_4091);
#pragma pop

/* 807B56A4-807B5980 000E04 02DC+00 1/1 0/0 0/0 .text chain_control_11__FP15e_th_ball_class */
static void chain_control_11(e_th_ball_class* param_0) {
    // NONMATCHING
}

/* 807B5980-807B5B38 0010E0 01B8+00 1/1 0/0 0/0 .text chain_control_12__FP15e_th_ball_class */
static void chain_control_12(e_th_ball_class* param_0) {
    // NONMATCHING
}

/* 807B5B38-807B5C34 001298 00FC+00 1/1 0/0 0/0 .text chain_control_13__FP15e_th_ball_class */
static void chain_control_13(e_th_ball_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B7F20-807B7F24 000068 0004+00 0/1 0/0 0/0 .rodata          @4203 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4203 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x807B7F20, &lit_4203);
#pragma pop

/* 807B5C34-807B5F2C 001394 02F8+00 1/1 0/0 0/0 .text chain_control_21__FP15e_th_ball_class */
static void chain_control_21(e_th_ball_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B7F24-807B7F28 00006C 0004+00 0/2 0/0 0/0 .rodata          @4231 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4231 = 5.0f;
COMPILER_STRIP_GATE(0x807B7F24, &lit_4231);
#pragma pop

/* 807B7F28-807B7F2C 000070 0004+00 0/1 0/0 0/0 .rodata          @4232 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4232 = 47.0f;
COMPILER_STRIP_GATE(0x807B7F28, &lit_4232);
#pragma pop

/* 807B7F2C-807B7F30 000074 0004+00 0/1 0/0 0/0 .rodata          @4233 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4233 = -30.0f;
COMPILER_STRIP_GATE(0x807B7F2C, &lit_4233);
#pragma pop

/* 807B7F30-807B7F34 000078 0004+00 0/1 0/0 0/0 .rodata          @4234 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4234 = 2.0f;
COMPILER_STRIP_GATE(0x807B7F30, &lit_4234);
#pragma pop

/* 807B5F2C-807B60CC 00168C 01A0+00 4/4 0/0 0/0 .text            normal_move__FP15e_th_ball_classSc
 */
static void normal_move(e_th_ball_class* param_0, s8 param_1) {
    // NONMATCHING
}

/* 807B60CC-807B615C 00182C 0090+00 1/1 0/0 0/0 .text            e_th_ball_stop__FP15e_th_ball_class
 */
static void e_th_ball_stop(e_th_ball_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B7F34-807B7F38 00007C 0004+00 0/1 0/0 0/0 .rodata          @4326 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4326 = 13.0f;
COMPILER_STRIP_GATE(0x807B7F34, &lit_4326);
#pragma pop

/* 807B7F38-807B7F3C 000080 0004+00 0/1 0/0 0/0 .rodata          @4327 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4327 = 29.0f;
COMPILER_STRIP_GATE(0x807B7F38, &lit_4327);
#pragma pop

/* 807B7F3C-807B7F40 000084 0004+00 0/1 0/0 0/0 .rodata          @4328 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4328 = 65536.0f;
COMPILER_STRIP_GATE(0x807B7F3C, &lit_4328);
#pragma pop

/* 807B7F40-807B7F44 000088 0004+00 0/1 0/0 0/0 .rodata          @4329 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4329 = -130.0f;
COMPILER_STRIP_GATE(0x807B7F40, &lit_4329);
#pragma pop

/* 807B7F44-807B7F48 00008C 0004+00 0/1 0/0 0/0 .rodata          @4330 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4330 = 300.0f;
COMPILER_STRIP_GATE(0x807B7F44, &lit_4330);
#pragma pop

/* 807B7F48-807B7F4C 000090 0004+00 0/2 0/0 0/0 .rodata          @4331 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4331 = 0.5f;
COMPILER_STRIP_GATE(0x807B7F48, &lit_4331);
#pragma pop

/* 807B7F4C-807B7F50 000094 0004+00 0/2 0/0 0/0 .rodata          @4332 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4332 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x807B7F4C, &lit_4332);
#pragma pop

/* 807B7F50-807B7F54 000098 0004+00 0/2 0/0 0/0 .rodata          @4333 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4333 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x807B7F50, &lit_4333);
#pragma pop

/* 807B7F54-807B7F58 00009C 0004+00 0/2 0/0 0/0 .rodata          @4334 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4334 = 80.0f;
COMPILER_STRIP_GATE(0x807B7F54, &lit_4334);
#pragma pop

/* 807B7F58-807B7F5C 0000A0 0004+00 0/3 0/0 0/0 .rodata          @4335 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4335 = 50.0f;
COMPILER_STRIP_GATE(0x807B7F58, &lit_4335);
#pragma pop

/* 807B7F5C-807B7F60 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4336 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4336 = 40.0f;
COMPILER_STRIP_GATE(0x807B7F5C, &lit_4336);
#pragma pop

/* 807B615C-807B6594 0018BC 0438+00 1/1 0/0 0/0 .text            e_th_ball_spin__FP15e_th_ball_class
 */
static void e_th_ball_spin(e_th_ball_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B7F60-807B7F64 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4391 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4391 = -50.0f;
COMPILER_STRIP_GATE(0x807B7F60, &lit_4391);
#pragma pop

/* 807B7F64-807B7F68 0000AC 0004+00 0/2 0/0 0/0 .rodata          @4392 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4392 = -1.0f;
COMPILER_STRIP_GATE(0x807B7F64, &lit_4392);
#pragma pop

/* 807B6594-807B6734 001CF4 01A0+00 1/1 0/0 0/0 .text            wall_angle_get__FP15e_th_ball_class
 */
static void wall_angle_get(e_th_ball_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B7F68-807B7F6C 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4430 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4430 = -25.0f;
COMPILER_STRIP_GATE(0x807B7F68, &lit_4430);
#pragma pop

/* 807B7F6C-807B7F70 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4431 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4431 = 15.0f;
COMPILER_STRIP_GATE(0x807B7F6C, &lit_4431);
#pragma pop

/* 807B7F70-807B7F74 0000B8 0004+00 0/2 0/0 0/0 .rodata          @4432 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4432 = 100.0f;
COMPILER_STRIP_GATE(0x807B7F70, &lit_4432);
#pragma pop

/* 807B7F74-807B7F78 0000BC 0004+00 0/3 0/0 0/0 .rodata          @4433 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4433 = 30.0f;
COMPILER_STRIP_GATE(0x807B7F74, &lit_4433);
#pragma pop

/* 807B7F78-807B7F7C 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4434 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4434 = 4000.0f;
COMPILER_STRIP_GATE(0x807B7F78, &lit_4434);
#pragma pop

/* 807B7F7C-807B7F80 0000C4 0004+00 0/2 0/0 0/0 .rodata          @4435 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4435 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x807B7F7C, &lit_4435);
#pragma pop

/* 807B7F80-807B7F84 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4436 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4436 = 160.0f;
COMPILER_STRIP_GATE(0x807B7F80, &lit_4436);
#pragma pop

/* 807B6734-807B69A4 001E94 0270+00 1/1 0/0 0/0 .text            e_th_ball_shot__FP15e_th_ball_class
 */
static void e_th_ball_shot(e_th_ball_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B7F84-807B7F88 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4508 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4508 = -40.0f;
COMPILER_STRIP_GATE(0x807B7F84, &lit_4508);
#pragma pop

/* 807B7F88-807B7F8C 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4509 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4509 = 8.0f;
COMPILER_STRIP_GATE(0x807B7F88, &lit_4509);
#pragma pop

/* 807B7F8C-807B7F90 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4510 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4510 = 3000.0f;
COMPILER_STRIP_GATE(0x807B7F8C, &lit_4510);
#pragma pop

/* 807B7F90-807B7F94 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4511 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4511 = 6000.0f;
COMPILER_STRIP_GATE(0x807B7F90, &lit_4511);
#pragma pop

/* 807B69A4-807B6D00 002104 035C+00 1/1 0/0 0/0 .text e_th_ball_return__FP15e_th_ball_class */
static void e_th_ball_return(e_th_ball_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B7F94-807B7F98 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4529 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4529 = 45.0f;
COMPILER_STRIP_GATE(0x807B7F94, &lit_4529);
#pragma pop

/* 807B7F98-807B7F9C 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4530 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4530 = 130.0f;
COMPILER_STRIP_GATE(0x807B7F98, &lit_4530);
#pragma pop

/* 807B6D00-807B6DC8 002460 00C8+00 1/1 0/0 0/0 .text            e_th_ball_end__FP15e_th_ball_class
 */
static void e_th_ball_end(e_th_ball_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B7F9C-807B7FA0 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4650 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4650 = 1.0f / 25.0f;
COMPILER_STRIP_GATE(0x807B7F9C, &lit_4650);
#pragma pop

/* 807B7FA0-807B7FA4 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4651 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4651 = 0x3B03126F;
COMPILER_STRIP_GATE(0x807B7FA0, &lit_4651);
#pragma pop

/* 807B7FA4-807B7FA8 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4652 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4652 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x807B7FA4, &lit_4652);
#pragma pop

/* 807B7FA8-807B7FAC 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4653 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4653 = 17.0f / 20.0f;
COMPILER_STRIP_GATE(0x807B7FA8, &lit_4653);
#pragma pop

/* 807B7FAC-807B7FB0 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4654 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4654 = 12000.0f;
COMPILER_STRIP_GATE(0x807B7FAC, &lit_4654);
#pragma pop

/* 807B7FB0-807B7FB4 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4655 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4655 = 0x3D0F5C29;
COMPILER_STRIP_GATE(0x807B7FB0, &lit_4655);
#pragma pop

/* 807B7FC0-807B7FC0 000108 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807B7FC0 = "E_th";
#pragma pop

/* 807B6DC8-807B7454 002528 068C+00 1/1 0/0 0/0 .text            action__FP15e_th_ball_class */
static void action(e_th_ball_class* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B80E4-807B80E8 000004 0004+00 1/1 0/0 0/0 .bss             demo_id */
static u8 demo_id[4];

/* 807B7454-807B753C 002BB4 00E8+00 1/1 0/0 0/0 .text            get_demo__FP15e_th_ball_class */
static void get_demo(e_th_ball_class* param_0) {
    // NONMATCHING
}

/* 807B753C-807B7744 002C9C 0208+00 2/1 0/0 0/0 .text daE_TH_BALL_Execute__FP15e_th_ball_class */
static void daE_TH_BALL_Execute(e_th_ball_class* param_0) {
    // NONMATCHING
}

/* 807B7744-807B774C 002EA4 0008+00 1/0 0/0 0/0 .text daE_TH_BALL_IsDelete__FP15e_th_ball_class */
static bool daE_TH_BALL_IsDelete(e_th_ball_class* param_0) {
    return true;
}

/* ############################################################################################## */
/* 807B7FC0-807B7FC0 000108 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807B7FC5 = "E_th_ball";
#pragma pop

/* 807B774C-807B77AC 002EAC 0060+00 1/0 0/0 0/0 .text daE_TH_BALL_Delete__FP15e_th_ball_class */
static void daE_TH_BALL_Delete(e_th_ball_class* param_0) {
    // NONMATCHING
}

/* 807B77AC-807B792C 002F0C 0180+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B7FB4-807B7FB8 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4827 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4827 = -2000.0f;
COMPILER_STRIP_GATE(0x807B7FB4, &lit_4827);
#pragma pop

/* 807B7FB8-807B7FBC 000100 0004+00 0/1 0/0 0/0 .rodata          @4828 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4828 = -1000.0f;
COMPILER_STRIP_GATE(0x807B7FB8, &lit_4828);
#pragma pop

/* 807B7FBC-807B7FC0 000104 0004+00 0/1 0/0 0/0 .rodata          @4829 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4829 = 2000.0f;
COMPILER_STRIP_GATE(0x807B7FBC, &lit_4829);
#pragma pop

/* 807B7FD0-807B8010 000000 0040+00 1/1 0/0 0/0 .data            cc_sph_src$4795 */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8ebfdff, 0x3}, 0x75}}, // mObj
        {dCcD_SE_NONE, 0x1, 0x2, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_METAL, 0x2, 0x0, 0x0, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 55.0f} // mSph
    } // mSphAttr
};

/* 807B8010-807B8050 000040 0040+00 1/1 0/0 0/0 .data            at_sph_src$4796 */
static dCcD_SrcSph at_sph_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_BOSS_SWING, 0x4, 0x1d}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x1, 0xe, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 55.0f} // mSph
    } // mSphAttr
};

/* 807B792C-807B7AA8 00308C 017C+00 1/0 0/0 0/0 .text            daE_TH_BALL_Create__FP10fopAc_ac_c
 */
static void daE_TH_BALL_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807B8050-807B8070 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_TH_BALL_Method */
static actor_method_class l_daE_TH_BALL_Method = {
    (process_method_func)daE_TH_BALL_Create__FP10fopAc_ac_c,
    (process_method_func)daE_TH_BALL_Delete__FP15e_th_ball_class,
    (process_method_func)daE_TH_BALL_Execute__FP15e_th_ball_class,
    (process_method_func)daE_TH_BALL_IsDelete__FP15e_th_ball_class,
    (process_method_func)daE_TH_BALL_Draw__FP15e_th_ball_class,
};

/* 807B8070-807B80A0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_TH_BALL */
extern actor_process_profile_definition g_profile_E_TH_BALL = {
  fpcLy_CURRENT_e,         // mLayerID
  8,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_E_TH_BALL,          // mProcName
  &g_fpcLf_Method.mBase,   // sub_method
  sizeof(e_th_ball_class), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  135,                     // mPriority
  &l_daE_TH_BALL_Method,   // sub_method
  0x00040100,              // mStatus
  fopAc_ENEMY_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 807B80A0-807B80AC 0000D0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 807B80AC-807B80B8 0000DC 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 807B80B8-807B80DC 0000E8 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807B7EA8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807B7EA0,
};

/* 807B7AA8-807B7D5C 003208 02B4+00 1/1 0/0 0/0 .text            __ct__15e_th_ball_classFv */
e_th_ball_class::e_th_ball_class() {
    // NONMATCHING
}

/* 807B7D5C-807B7DA4 0034BC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 807B7DA4-807B7DEC 003504 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 807B7DEC-807B7E5C 00354C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 807B7E5C-807B7E98 0035BC 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 807B7E98-807B7E9C 0035F8 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 807B7E9C-807B7EA0 0035FC 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 807B7EA0-807B7EA8 003600 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_807B7EA0() {
    // NONMATCHING
}

/* 807B7EA8-807B7EB0 003608 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_807B7EA8() {
    // NONMATCHING
}

/* 807B7FC0-807B7FC0 000108 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */