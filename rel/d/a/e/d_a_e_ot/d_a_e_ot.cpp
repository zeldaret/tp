/**
 * @file d_a_e_ot.cpp
 * 
*/

#include "rel/d/a/e/d_a_e_ot/d_a_e_ot.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void __ct__12daE_OT_HIO_cFv();
extern "C" void draw__8daE_OT_cFv();
extern "C" static void daE_OT_Draw__FP8daE_OT_c();
extern "C" void setBck__8daE_OT_cFiUcff();
extern "C" void setActionMode__8daE_OT_cFii();
extern "C" void damage_check__8daE_OT_cFv();
extern "C" void checkWaterSurface__8daE_OT_cFv();
extern "C" void setWaterEffect__8daE_OT_cFv();
extern "C" void setEggBreakEffect__8daE_OT_cFv();
extern "C" void setDeathLightEffect__8daE_OT_cFv();
extern "C" void setEggStay__8daE_OT_cFv();
extern "C" void executeEgg__8daE_OT_cFv();
extern "C" void executeBorn__8daE_OT_cFv();
extern "C" void executeAttack__8daE_OT_cFv();
extern "C" void executePanic__8daE_OT_cFv();
extern "C" void executeDamage__8daE_OT_cFv();
extern "C" void action__8daE_OT_cFv();
extern "C" void mtx_set__8daE_OT_cFv();
extern "C" void cc_set__8daE_OT_cFv();
extern "C" void execute__8daE_OT_cFv();
extern "C" static void daE_OT_Execute__FP8daE_OT_c();
extern "C" static bool daE_OT_IsDelete__FP8daE_OT_c();
extern "C" void _delete__8daE_OT_cFv();
extern "C" static void daE_OT_Delete__FP8daE_OT_c();
extern "C" void CreateHeap__8daE_OT_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daE_OT_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" static void daE_OT_Create__FP8daE_OT_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_OT_HIO_cFv();
extern "C" void __sinit_d_a_e_ot_cpp();
extern "C" static void func_8073CA34();
extern "C" static void func_8073CA3C();
extern "C" static void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz();
extern "C" void __dt__4cXyzFv();
extern "C" extern char const* const d_a_e_ot__stringBase0;

//
// External References:
//

extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_SearchByName__FsPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void fpcM_IsCreating__FUi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__18dBgS_ObjGndChk_SplFv();
extern "C" void __dt__18dBgS_ObjGndChk_SplFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void _savegpr_19();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_26();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" extern u8 pauseTimer__9dScnPly_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 8073CEA8-8073CEAC 000000 0004+00 14/14 0/0 0/0 .rodata          @3910 */
SECTION_RODATA static f32 const lit_3910 = 100.0f;
COMPILER_STRIP_GATE(0x8073CEA8, &lit_3910);

/* 8073CEAC-8073CEB0 000004 0004+00 1/11 0/0 0/0 .rodata          @3911 */
SECTION_RODATA static u8 const lit_3911[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8073CEAC, &lit_3911);

/* 8073CEB0-8073CEB8 000008 0004+04 4/13 0/0 0/0 .rodata          @3912 */
SECTION_RODATA static f32 const lit_3912[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8073CEB0, &lit_3912);

/* 8073CEB8-8073CEC0 000010 0008+00 0/2 0/0 0/0 .rodata          @3913 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3913[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8073CEB8, &lit_3913);
#pragma pop

/* 8073CEC0-8073CEC8 000018 0008+00 0/2 0/0 0/0 .rodata          @3914 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3914[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8073CEC0, &lit_3914);
#pragma pop

/* 8073CEC8-8073CED0 000020 0008+00 0/2 0/0 0/0 .rodata          @3915 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3915[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8073CEC8, &lit_3915);
#pragma pop

/* 8073CED0-8073CED4 000028 0004+00 0/2 0/0 0/0 .rodata          @3916 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3916 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x8073CED0, &lit_3916);
#pragma pop

/* 8073CED4-8073CED8 00002C 0004+00 0/2 0/0 0/0 .rodata          @3932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3932 = 13.0f;
COMPILER_STRIP_GATE(0x8073CED4, &lit_3932);
#pragma pop

/* 8073CED8-8073CEDC 000030 0004+00 0/2 0/0 0/0 .rodata          @3933 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3933 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x8073CED8, &lit_3933);
#pragma pop

/* 8073CEDC-8073CEE0 000034 0004+00 1/6 0/0 0/0 .rodata          @3934 */
SECTION_RODATA static f32 const lit_3934 = 20.0f;
COMPILER_STRIP_GATE(0x8073CEDC, &lit_3934);

/* 8073CF74-8073CF80 000000 000C+00 3/3 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8073CF80-8073CF94 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
SECTION_DATA static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 8073CF94-8073CF9C 000020 0008+00 0/1 0/0 0/0 .data            e_prim$3789 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim[8] = {
    0xFF, 0x78, 0x00, 0x00, 0xFF, 0x64, 0x78, 0x00,
};
#pragma pop

/* 8073CF9C-8073CFA4 000028 0008+00 0/1 0/0 0/0 .data            e_env$3790 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env[8] = {
    0x5A, 0x2D, 0x2D, 0x00, 0x3C, 0x1E, 0x1E, 0x00,
};
#pragma pop

/* 8073CFA4-8073CFAC 000030 0006+02 0/1 0/0 0/0 .data            eff_id$3798 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 eff_id[6 + 2 /* padding */] = {
    0x02,
    0x9D,
    0x02,
    0x9E,
    0x02,
    0x9F,
    /* padding */
    0x00,
    0x00,
};
#pragma pop

/* 8073CFAC-8073CFBC 000038 0010+00 0/1 0/0 0/0 .data rand_speed__22@unnamed@d_a_e_ot_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_8073CFAC[16] = {
    0xC0, 0x80, 0x00, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
};
#pragma pop

/* 8073CFBC-8073CFC4 000048 0008+00 1/2 0/0 0/0 .data rand_angle__22@unnamed@d_a_e_ot_cpp@ */
SECTION_DATA static u8 data_8073CFBC[8] = {
    0xF8, 0x00, 0x04, 0x00, 0xFC, 0x00, 0x08, 0x00,
};

/* 8073CFC4-8073CFCC 000050 0008+00 0/1 0/0 0/0 .data rand_angle2__22@unnamed@d_a_e_ot_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_8073CFC4[8] = {
    0xD0, 0x00, 0x30, 0x00, 0xB0, 0x00, 0x50, 0x00,
};
#pragma pop

/* 8073CFCC-8073D0BC 000058 00F0+00 0/1 0/0 0/0 .data            egg_pos__22@unnamed@d_a_e_ot_cpp@
 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_8073CFCC[240] = {
    0x00, 0x00, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00,
    0x42, 0x70, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00, 0x42, 0x8C, 0x00, 0x00, 0x43, 0x0C, 0x00, 0x00,
    0xC1, 0x20, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00, 0xC2, 0x5C, 0x00, 0x00,
    0xC2, 0x96, 0x00, 0x00, 0x42, 0xB4, 0x00, 0x00, 0x42, 0x5C, 0x00, 0x00, 0x42, 0xA0, 0x00, 0x00,
    0x42, 0xA0, 0x00, 0x00, 0x43, 0x0C, 0x00, 0x00, 0xC2, 0x20, 0x00, 0x00, 0x42, 0x5C, 0x00, 0x00,
    0x43, 0x02, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00, 0x42, 0xDC, 0x00, 0x00,
    0xC2, 0x20, 0x00, 0x00, 0x42, 0xF0, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00,
    0x42, 0x8C, 0x00, 0x00, 0xC3, 0x16, 0x00, 0x00, 0xC2, 0x5C, 0x00, 0x00, 0x42, 0x82, 0x00, 0x00,
    0xC2, 0xDC, 0x00, 0x00, 0xC2, 0xC8, 0x00, 0x00, 0x42, 0xBE, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00,
    0x42, 0xC8, 0x00, 0x00, 0x42, 0x8C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00,
    0xC2, 0xC8, 0x00, 0x00, 0xC2, 0x8C, 0x00, 0x00, 0x42, 0xB4, 0x00, 0x00, 0xC2, 0x70, 0x00, 0x00,
    0x42, 0xA0, 0x00, 0x00, 0x43, 0x07, 0x00, 0x00, 0xC2, 0x82, 0x00, 0x00, 0x42, 0x8C, 0x00, 0x00,
    0x42, 0xB4, 0x00, 0x00, 0xC3, 0x07, 0x00, 0x00, 0x42, 0x8C, 0x00, 0x00, 0x42, 0xFA, 0x00, 0x00,
    0x42, 0xA0, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00, 0x42, 0xF0, 0x00, 0x00, 0xC2, 0x20, 0x00, 0x00,
};
#pragma pop

/* 8073D0BC-8073D0FC 000148 0040+00 0/1 0/0 0/0 .data            cc_ot_src__22@unnamed@d_a_e_ot_cpp@
 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_8073D0BC[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10,
    0xD8, 0xFA, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x74, 0x0C, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 8073D0FC-8073D13C 000188 0040+00 0/1 0/0 0/0 .data cc_ot_at_src__22@unnamed@d_a_e_ot_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_8073D0FC[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 8073D13C-8073D144 0001C8 0008+00 1/1 0/0 0/0 .data            w_eff_id$4089 */
SECTION_DATA static u8 w_eff_id_4089[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};

/* 8073D144-8073D148 0001D0 0004+00 1/1 0/0 0/0 .data            w_eff_id$4129 */
SECTION_DATA static u8 w_eff_id_4129[4] = {
    0x85,
    0x50,
    0x85,
    0x51,
};

/* 8073D148-8073D150 0001D4 0008+00 1/1 0/0 0/0 .data            w_eff_id$4146 */
SECTION_DATA static u8 w_eff_id_4146[8] = {
    0x85, 0x4C, 0x85, 0x4D, 0x85, 0x4E, 0x85, 0x4F,
};

/* 8073D150-8073D178 -00001 0028+00 1/1 0/0 0/0 .data            @4281 */
SECTION_DATA static void* lit_4281[10] = {
    (void*)(((char*)executeEgg__8daE_OT_cFv) + 0x44),
    (void*)(((char*)executeEgg__8daE_OT_cFv) + 0x44),
    (void*)(((char*)executeEgg__8daE_OT_cFv) + 0x44),
    (void*)(((char*)executeEgg__8daE_OT_cFv) + 0x344),
    (void*)(((char*)executeEgg__8daE_OT_cFv) + 0xCC),
    (void*)(((char*)executeEgg__8daE_OT_cFv) + 0x260),
    (void*)(((char*)executeEgg__8daE_OT_cFv) + 0xCC),
    (void*)(((char*)executeEgg__8daE_OT_cFv) + 0x260),
    (void*)(((char*)executeEgg__8daE_OT_cFv) + 0xCC),
    (void*)(((char*)executeEgg__8daE_OT_cFv) + 0x260),
};

/* 8073D178-8073D19C -00001 0024+00 1/1 0/0 0/0 .data            @4453 */
SECTION_DATA static void* lit_4453[9] = {
    (void*)(((char*)executePanic__8daE_OT_cFv) + 0x44),
    (void*)(((char*)executePanic__8daE_OT_cFv) + 0x44),
    (void*)(((char*)executePanic__8daE_OT_cFv) + 0x158),
    (void*)(((char*)executePanic__8daE_OT_cFv) + 0x1A0),
    (void*)(((char*)executePanic__8daE_OT_cFv) + 0x1FC),
    (void*)(((char*)executePanic__8daE_OT_cFv) + 0x2D8),
    (void*)(((char*)executePanic__8daE_OT_cFv) + 0x324),
    (void*)(((char*)executePanic__8daE_OT_cFv) + 0x378),
    (void*)(((char*)executePanic__8daE_OT_cFv) + 0x3C8),
};

/* 8073D19C-8073D1BC -00001 0020+00 1/0 0/0 0/0 .data            l_daE_OT_Method */
static actor_method_class l_daE_OT_Method = {
    (process_method_func)daE_OT_Create__FP8daE_OT_c,
    (process_method_func)daE_OT_Delete__FP8daE_OT_c,
    (process_method_func)daE_OT_Execute__FP8daE_OT_c,
    (process_method_func)daE_OT_IsDelete__FP8daE_OT_c,
    (process_method_func)daE_OT_Draw__FP8daE_OT_c,
};

/* 8073D1BC-8073D1EC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_OT */
extern actor_process_profile_definition g_profile_E_OT = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_OT,              // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daE_OT_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  203,                    // mPriority
  &l_daE_OT_Method,       // sub_method
  0x00050100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 8073D1EC-8073D1F8 000278 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8073D1F8-8073D204 000284 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8073D204-8073D210 000290 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8073D210-8073D21C 00029C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8073D21C-8073D228 0002A8 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8073D228-8073D24C 0002B4 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8073CA3C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8073CA34,
};

/* 8073D24C-8073D258 0002D8 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8073D258-8073D264 0002E4 000C+00 2/2 0/0 0/0 .data            __vt__12daE_OT_HIO_c */
SECTION_DATA extern void* __vt__12daE_OT_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_OT_HIO_cFv,
};

/* 8073A2CC-8073A314 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__12daE_OT_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daE_OT_HIO_c::daE_OT_HIO_c() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/__ct__12daE_OT_HIO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8073CEE0-8073CEE4 000038 0004+00 0/1 0/0 0/0 .rodata          @3976 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3976 = 300.0f;
COMPILER_STRIP_GATE(0x8073CEE0, &lit_3976);
#pragma pop

/* 8073A314-8073A434 000134 0120+00 1/1 0/0 0/0 .text            draw__8daE_OT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_OT_c::draw() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/draw__8daE_OT_cFv.s"
}
#pragma pop

/* 8073A434-8073A454 000254 0020+00 1/0 0/0 0/0 .text            daE_OT_Draw__FP8daE_OT_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_OT_Draw(daE_OT_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/daE_OT_Draw__FP8daE_OT_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 8073CEE4-8073CEE8 00003C 0004+00 2/2 0/0 0/0 .rodata          @3986 */
SECTION_RODATA static f32 const lit_3986 = -1.0f;
COMPILER_STRIP_GATE(0x8073CEE4, &lit_3986);

/* 8073CF6C-8073CF6C 0000C4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8073CF6C = "E_OT";
#pragma pop

/* 8073A454-8073A4F8 000274 00A4+00 4/4 0/0 0/0 .text            setBck__8daE_OT_cFiUcff */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_OT_c::setBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/setBck__8daE_OT_cFiUcff.s"
}
#pragma pop

/* 8073A4F8-8073A510 000318 0018+00 4/4 0/0 0/0 .text            setActionMode__8daE_OT_cFii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_OT_c::setActionMode(int param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/setActionMode__8daE_OT_cFii.s"
}
#pragma pop

/* ############################################################################################## */
/* 8073CEE8-8073CEEC 000040 0004+00 0/2 0/0 0/0 .rodata          @4075 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4075 = 500.0f;
COMPILER_STRIP_GATE(0x8073CEE8, &lit_4075);
#pragma pop

/* 8073A510-8073A7B0 000330 02A0+00 1/1 0/0 0/0 .text            damage_check__8daE_OT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_OT_c::damage_check() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/damage_check__8daE_OT_cFv.s"
}
#pragma pop

/* 8073A7B0-8073A838 0005D0 0088+00 1/1 0/0 0/0 .text            checkWaterSurface__8daE_OT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_OT_c::checkWaterSurface() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/checkWaterSurface__8daE_OT_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8073CEEC-8073CEF0 000044 0004+00 2/3 0/0 0/0 .rodata          @4125 */
SECTION_RODATA static f32 const lit_4125 = 0.5f;
COMPILER_STRIP_GATE(0x8073CEEC, &lit_4125);

/* 8073D270-8073D274 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 8073D274-8073D278 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 8073D278-8073D27C 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 8073D27C-8073D280 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 8073D280-8073D284 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 8073D284-8073D288 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 8073D288-8073D28C 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 8073D28C-8073D290 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 8073D290-8073D294 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 8073D294-8073D298 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 8073D298-8073D29C 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 8073D29C-8073D2A0 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 8073D2A0-8073D2A4 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 8073D2A4-8073D2A8 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 8073D2A8-8073D2AC 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 8073D2AC-8073D2B0 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 8073D2AC 0001+00 data_8073D2AC @1009 */
/* 8073D2AD 0003+00 data_8073D2AD None */
static u8 struct_8073D2AC[4];

/* 8073D2B0-8073D2BC 000048 000C+00 1/1 0/0 0/0 .bss             @3926 */
static u8 lit_3926[12];

/* 8073D2BC-8073D2DC 000054 0020+00 4/4 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[32];

/* 8073D2DC-8073D2E0 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 8073D2DC 0001+00 data_8073D2DC None */
/* 8073D2DD 0003+00 data_8073D2DD None */
static u8 struct_8073D2DC[4];

/* 8073D2E0-8073D2F0 000078 000C+04 0/1 0/0 0/0 .bss             @4086 */
#pragma push
#pragma force_active on
static u8 lit_4086[12 + 4 /* padding */];
#pragma pop

/* 8073D2F0-8073D2FC 000088 000C+00 0/1 0/0 0/0 .bss             sc$4085 */
#pragma push
#pragma force_active on
static u8 sc[12];
#pragma pop

/* 8073A838-8073A99C 000658 0164+00 3/3 0/0 0/0 .text            setWaterEffect__8daE_OT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_OT_c::setWaterEffect() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/setWaterEffect__8daE_OT_cFv.s"
}
#pragma pop

/* 8073A99C-8073AA40 0007BC 00A4+00 1/1 0/0 0/0 .text            setEggBreakEffect__8daE_OT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_OT_c::setEggBreakEffect() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/setEggBreakEffect__8daE_OT_cFv.s"
}
#pragma pop

/* 8073AA40-8073AB38 000860 00F8+00 1/1 0/0 0/0 .text            setDeathLightEffect__8daE_OT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_OT_c::setDeathLightEffect() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/setDeathLightEffect__8daE_OT_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8073CEF0-8073CEF4 000048 0004+00 0/2 0/0 0/0 .rodata          @4199 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4199 = 15.0f;
COMPILER_STRIP_GATE(0x8073CEF0, &lit_4199);
#pragma pop

/* 8073AB38-8073AC14 000958 00DC+00 1/1 0/0 0/0 .text            setEggStay__8daE_OT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_OT_c::setEggStay() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/setEggStay__8daE_OT_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8073CEF4-8073CEF8 00004C 0004+00 0/2 0/0 0/0 .rodata          @4269 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4269 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x8073CEF4, &lit_4269);
#pragma pop

/* 8073CEF8-8073CEFC 000050 0004+00 0/1 0/0 0/0 .rodata          @4270 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4270 = 7.0f / 5.0f;
COMPILER_STRIP_GATE(0x8073CEF8, &lit_4270);
#pragma pop

/* 8073CEFC-8073CF00 000054 0004+00 0/1 0/0 0/0 .rodata          @4271 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4271 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x8073CEFC, &lit_4271);
#pragma pop

/* 8073AC14-8073AF70 000A34 035C+00 2/1 0/0 0/0 .text            executeEgg__8daE_OT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_OT_c::executeEgg() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/executeEgg__8daE_OT_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8073CF00-8073CF04 000058 0004+00 0/2 0/0 0/0 .rodata          @4272 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4272 = 5.0f;
COMPILER_STRIP_GATE(0x8073CF00, &lit_4272);
#pragma pop

/* 8073CF04-8073CF08 00005C 0004+00 0/1 0/0 0/0 .rodata          @4273 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4273 = 4096.0f;
COMPILER_STRIP_GATE(0x8073CF04, &lit_4273);
#pragma pop

/* 8073CF08-8073CF0C 000060 0004+00 0/1 0/0 0/0 .rodata          @4274 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4274 = 50.0f;
COMPILER_STRIP_GATE(0x8073CF08, &lit_4274);
#pragma pop

/* 8073CF0C-8073CF10 000064 0004+00 0/3 0/0 0/0 .rodata          @4275 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4275 = 30.0f;
COMPILER_STRIP_GATE(0x8073CF0C, &lit_4275);
#pragma pop

/* 8073CF10-8073CF14 000068 0004+00 0/1 0/0 0/0 .rodata          @4276 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4276 = 10.0f;
COMPILER_STRIP_GATE(0x8073CF10, &lit_4276);
#pragma pop

/* 8073CF14-8073CF18 00006C 0004+00 0/1 0/0 0/0 .rodata          @4277 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4277 = 16384.0f;
COMPILER_STRIP_GATE(0x8073CF14, &lit_4277);
#pragma pop

/* 8073CF18-8073CF1C 000070 0004+00 0/0 0/0 0/0 .rodata          @4278 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4278 = -16384.0f;
COMPILER_STRIP_GATE(0x8073CF18, &lit_4278);
#pragma pop

/* 8073CF1C-8073CF20 000074 0004+00 0/3 0/0 0/0 .rodata          @4279 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4279 = -5.0f;
COMPILER_STRIP_GATE(0x8073CF1C, &lit_4279);
#pragma pop

/* 8073CF20-8073CF28 000078 0004+04 0/0 0/0 0/0 .rodata          @4280 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4280[1 + 1 /* padding */] = {
    3.0f / 10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8073CF20, &lit_4280);
#pragma pop

/* 8073CF28-8073CF30 000080 0008+00 0/4 0/0 0/0 .rodata          @4283 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4283[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8073CF28, &lit_4283);
#pragma pop

/* 8073CF30-8073CF34 000088 0004+00 0/4 0/0 0/0 .rodata          @4314 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4314 = 3.0f;
COMPILER_STRIP_GATE(0x8073CF30, &lit_4314);
#pragma pop

/* 8073CF34-8073CF38 00008C 0004+00 0/2 0/0 0/0 .rodata          @4315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4315 = 32768.0f;
COMPILER_STRIP_GATE(0x8073CF34, &lit_4315);
#pragma pop

/* 8073AF70-8073B0D0 000D90 0160+00 1/1 0/0 0/0 .text            executeBorn__8daE_OT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_OT_c::executeBorn() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/executeBorn__8daE_OT_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8073CF38-8073CF3C 000090 0004+00 0/1 0/0 0/0 .rodata          @4382 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4382 = 180.0f;
COMPILER_STRIP_GATE(0x8073CF38, &lit_4382);
#pragma pop

/* 8073CF3C-8073CF40 000094 0004+00 0/1 0/0 0/0 .rodata          @4383 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4383 = 2.0f;
COMPILER_STRIP_GATE(0x8073CF3C, &lit_4383);
#pragma pop

/* 8073B0D0-8073B428 000EF0 0358+00 1/1 0/0 0/0 .text            executeAttack__8daE_OT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_OT_c::executeAttack() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/executeAttack__8daE_OT_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8073CF40-8073CF44 000098 0004+00 0/2 0/0 0/0 .rodata          @4449 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4449 = 8192.0f;
COMPILER_STRIP_GATE(0x8073CF40, &lit_4449);
#pragma pop

/* 8073CF44-8073CF48 00009C 0004+00 0/2 0/0 0/0 .rodata          @4450 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4450 = 25.0f;
COMPILER_STRIP_GATE(0x8073CF44, &lit_4450);
#pragma pop

/* 8073B428-8073B854 001248 042C+00 2/1 0/0 0/0 .text            executePanic__8daE_OT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_OT_c::executePanic() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/executePanic__8daE_OT_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8073CF48-8073CF4C 0000A0 0004+00 0/0 0/0 0/0 .rodata          @4451 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4451 = 11.0f;
COMPILER_STRIP_GATE(0x8073CF48, &lit_4451);
#pragma pop

/* 8073CF4C-8073CF50 0000A4 0004+00 0/0 0/0 0/0 .rodata          @4452 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4452 = 1.5f;
COMPILER_STRIP_GATE(0x8073CF4C, &lit_4452);
#pragma pop

/* 8073CF50-8073CF54 0000A8 0004+00 0/2 0/0 0/0 .rodata          @4509 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4509 = 40.0f;
COMPILER_STRIP_GATE(0x8073CF50, &lit_4509);
#pragma pop

/* 8073CF54-8073CF58 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4510 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4510 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x8073CF54, &lit_4510);
#pragma pop

/* 8073CF58-8073CF5C 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4511 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4511 = 160.0f;
COMPILER_STRIP_GATE(0x8073CF58, &lit_4511);
#pragma pop

/* 8073CF5C-8073CF60 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4512 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4512 = 470.0f;
COMPILER_STRIP_GATE(0x8073CF5C, &lit_4512);
#pragma pop

/* 8073B854-8073BB9C 001674 0348+00 1/1 0/0 0/0 .text            executeDamage__8daE_OT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_OT_c::executeDamage() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/executeDamage__8daE_OT_cFv.s"
}
#pragma pop

/* 8073BB9C-8073BD78 0019BC 01DC+00 1/1 0/0 0/0 .text            action__8daE_OT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_OT_c::action() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/action__8daE_OT_cFv.s"
}
#pragma pop

/* 8073BD78-8073BE10 001B98 0098+00 1/1 0/0 0/0 .text            mtx_set__8daE_OT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_OT_c::mtx_set() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/mtx_set__8daE_OT_cFv.s"
}
#pragma pop

/* 8073BE10-8073BF84 001C30 0174+00 1/1 0/0 0/0 .text            cc_set__8daE_OT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_OT_c::cc_set() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/cc_set__8daE_OT_cFv.s"
}
#pragma pop

/* 8073BF84-8073C030 001DA4 00AC+00 1/1 0/0 0/0 .text            execute__8daE_OT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_OT_c::execute() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/execute__8daE_OT_cFv.s"
}
#pragma pop

/* 8073C030-8073C050 001E50 0020+00 2/1 0/0 0/0 .text            daE_OT_Execute__FP8daE_OT_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_OT_Execute(daE_OT_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/daE_OT_Execute__FP8daE_OT_c.s"
}
#pragma pop

/* 8073C050-8073C058 001E70 0008+00 1/0 0/0 0/0 .text            daE_OT_IsDelete__FP8daE_OT_c */
static bool daE_OT_IsDelete(daE_OT_c* param_0) {
    return true;
}

/* 8073C058-8073C0CC 001E78 0074+00 1/1 0/0 0/0 .text            _delete__8daE_OT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_OT_c::_delete() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/_delete__8daE_OT_cFv.s"
}
#pragma pop

/* 8073C0CC-8073C0EC 001EEC 0020+00 1/0 0/0 0/0 .text            daE_OT_Delete__FP8daE_OT_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_OT_Delete(daE_OT_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/daE_OT_Delete__FP8daE_OT_c.s"
}
#pragma pop

/* 8073C0EC-8073C2B4 001F0C 01C8+00 1/1 0/0 0/0 .text            CreateHeap__8daE_OT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_OT_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/CreateHeap__8daE_OT_cFv.s"
}
#pragma pop

/* 8073C2B4-8073C2FC 0020D4 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 8073C2FC-8073C31C 00211C 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void useHeapInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/useHeapInit__FP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 8073CF60-8073CF64 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4832 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4832 = -200.0f;
COMPILER_STRIP_GATE(0x8073CF60, &lit_4832);
#pragma pop

/* 8073CF64-8073CF68 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4833 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4833 = 200.0f;
COMPILER_STRIP_GATE(0x8073CF64, &lit_4833);
#pragma pop

/* 8073CF68-8073CF6C 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4834 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4834 = 60.0f;
COMPILER_STRIP_GATE(0x8073CF68, &lit_4834);
#pragma pop

/* 8073C31C-8073C77C 00213C 0460+00 1/1 0/0 0/0 .text            create__8daE_OT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_OT_c::create() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/create__8daE_OT_cFv.s"
}
#pragma pop

/* 8073C77C-8073C7C4 00259C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 8073C7C4-8073C80C 0025E4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 8073C80C-8073C868 00262C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 8073C868-8073C8D8 002688 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 8073C8D8-8073C948 0026F8 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 8073C948-8073C968 002768 0020+00 1/0 0/0 0/0 .text            daE_OT_Create__FP8daE_OT_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_OT_Create(daE_OT_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/daE_OT_Create__FP8daE_OT_c.s"
}
#pragma pop

/* 8073C968-8073C9B0 002788 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 8073C9B0-8073C9F8 0027D0 0048+00 2/1 0/0 0/0 .text            __dt__12daE_OT_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daE_OT_HIO_c::~daE_OT_HIO_c() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/__dt__12daE_OT_HIO_cFv.s"
}
#pragma pop

/* 8073C9F8-8073CA34 002818 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_ot_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_e_ot_cpp() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/__sinit_d_a_e_ot_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8073C9F8, __sinit_d_a_e_ot_cpp);
#pragma pop

/* 8073CA34-8073CA3C 002854 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_8073CA34() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/func_8073CA34.s"
}
#pragma pop

/* 8073CA3C-8073CA44 00285C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_8073CA3C() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/func_8073CA3C.s"
}
#pragma pop

/* 8073CA44-8073CE58 002864 0414+00 1/1 0/0 0/0 .text
 * setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz* param_2,
                                   cXyz* param_3) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz.s"
}
#pragma pop

/* 8073CE58-8073CE94 002C78 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_ot/d_a_e_ot/__dt__4cXyzFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8073D2FC-8073D300 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8073D2FC[4];
#pragma pop

/* 8073D300-8073D304 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8073D300[4];
#pragma pop

/* 8073D304-8073D308 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8073D304[4];
#pragma pop

/* 8073D308-8073D30C 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8073D308[4];
#pragma pop

/* 8073D30C-8073D310 0000A4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8073D30C[4];
#pragma pop

/* 8073D310-8073D314 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8073D310[4];
#pragma pop

/* 8073D314-8073D318 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8073D314[4];
#pragma pop

/* 8073D318-8073D31C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8073D318[4];
#pragma pop

/* 8073D31C-8073D320 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8073D31C[4];
#pragma pop

/* 8073D320-8073D324 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8073D320[4];
#pragma pop

/* 8073D324-8073D328 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8073D324[4];
#pragma pop

/* 8073D328-8073D32C 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8073D328[4];
#pragma pop

/* 8073D32C-8073D330 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8073D32C[4];
#pragma pop

/* 8073D330-8073D334 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8073D330[4];
#pragma pop

/* 8073D334-8073D338 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8073D334[4];
#pragma pop

/* 8073D338-8073D33C 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8073D338[4];
#pragma pop

/* 8073D33C-8073D340 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8073D33C[4];
#pragma pop

/* 8073D340-8073D344 0000D8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8073D340[4];
#pragma pop

/* 8073D344-8073D348 0000DC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8073D344[4];
#pragma pop

/* 8073D348-8073D34C 0000E0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8073D348[4];
#pragma pop

/* 8073D34C-8073D350 0000E4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8073D34C[4];
#pragma pop

/* 8073D350-8073D354 0000E8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8073D350[4];
#pragma pop

/* 8073D354-8073D358 0000EC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8073D354[4];
#pragma pop

/* 8073D358-8073D35C 0000F0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8073D358[4];
#pragma pop

/* 8073D35C-8073D360 0000F4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8073D35C[4];
#pragma pop

/* 8073CF6C-8073CF6C 0000C4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
