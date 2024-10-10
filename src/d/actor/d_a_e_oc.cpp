/**
 * @file d_a_e_oc.cpp
 * 
*/

#include "d/actor/d_a_e_oc.h"
#include "dol2asm.h"
#include "d/d_camera.h"




//
// Forward References:
//

extern "C" void __ct__12daE_OC_HIO_cFv();
extern "C" void ctrlJoint__8daE_OC_cFP8J3DJointP8J3DModel();
extern "C" void JointCallBack__8daE_OC_cFP8J3DJointi();
extern "C" void draw__8daE_OC_cFv();
extern "C" static void daE_OC_Draw__FP8daE_OC_c();
extern "C" static void s_other_oc__FPvPv();
extern "C" void getVisionAngle__8daE_OC_cFP10fopAc_ac_c();
extern "C" void searchOtherOc__8daE_OC_cFv();
extern "C" void setWatchMode__8daE_OC_cFv();
extern "C" void searchPlayer__8daE_OC_cFv();
extern "C" static void s_obj_sub__FPvPv();
extern "C" void searchPlayer2__8daE_OC_cFv();
extern "C" void searchPlayerShakeHead__8daE_OC_cFv();
extern "C" void searchSound__8daE_OC_cFv();
extern "C" static void s_demo_oc__FPvPv();
extern "C" void checkBeforeBg__8daE_OC_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void checkBeforeBgFind__8daE_OC_cFv();
extern "C" void checkBeforeFloorBg__8daE_OC_cFf();
extern "C" void checkDamageBg__8daE_OC_cFv();
extern "C" void setGroundAngle__8daE_OC_cFv();
extern "C" void setActionMode__8daE_OC_cFii();
extern "C" void getCutType__8daE_OC_cFv();
extern "C" void offTgSph__8daE_OC_cFv();
extern "C" void damage_check__8daE_OC_cFv();
extern "C" void setBck__8daE_OC_cFiUcff();
extern "C" void checkBck__8daE_OC_cFi();
extern "C" void setSpitEffect__8daE_OC_cFv();
extern "C" void getHeadAngle__8daE_OC_cFv();
extern "C" void setStabPos__8daE_OC_cFv();
extern "C" void setWaitSound__8daE_OC_cFv();
extern "C" void setWalkSound__8daE_OC_cFv();
extern "C" void setWalkStSound__8daE_OC_cFv();
extern "C" void setDashSound__8daE_OC_cFv();
extern "C" void setWaitStSound__8daE_OC_cFv();
extern "C" void setFootNoteSound__8daE_OC_cFv();
extern "C" void executeWait__8daE_OC_cFv();
extern "C" void executeWalk__8daE_OC_cFv();
extern "C" void executeTalk__8daE_OC_cFv();
extern "C" void executeFind__8daE_OC_cFv();
extern "C" void setWeaponGroundAngle__8daE_OC_cFv();
extern "C" void executeAttack__8daE_OC_cFv();
extern "C" void executeDamage__8daE_OC_cFv();
extern "C" void executeBigDamage__8daE_OC_cFv();
extern "C" void executeWatch__8daE_OC_cFv();
extern "C" void executeSoundWatch__8daE_OC_cFv();
extern "C" void checkBeforeDeath__8daE_OC_cFv();
extern "C" void executeDeath__8daE_OC_cFv();
extern "C" void setWaterEffect__8daE_OC_cFv();
extern "C" void executeWaterDeath__8daE_OC_cFv();
extern "C" void executeDemoMaster__8daE_OC_cFv();
extern "C" void executeDemoChild__8daE_OC_cFv();
extern "C" void checkFall__8daE_OC_cFv();
extern "C" void executeFallDead__8daE_OC_cFv();
extern "C" void executeFall__8daE_OC_cFv();
extern "C" void executeFindStay__8daE_OC_cFv();
extern "C" void executeMoveOut__8daE_OC_cFv();
extern "C" void checkWaterSurface__8daE_OC_cFv();
extern "C" void action__8daE_OC_cFv();
extern "C" void mtx_set__8daE_OC_cFv();
extern "C" void cc_set__8daE_OC_cFv();
extern "C" void execute__8daE_OC_cFv();
extern "C" static void daE_OC_Execute__FP8daE_OC_c();
extern "C" static bool daE_OC_IsDelete__FP8daE_OC_c();
extern "C" void _delete__8daE_OC_cFv();
extern "C" static void daE_OC_Delete__FP8daE_OC_c();
extern "C" void CreateHeap__8daE_OC_cFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daE_OC_cFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" static void daE_OC_Create__FP8daE_OC_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_OC_HIO_cFv();
extern "C" void __sinit_d_a_e_oc_cpp();
extern "C" static void func_807356B4();
extern "C" static void func_807356BC();
extern "C" static void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz();
extern "C" void __dt__4cXyzFv();
extern "C" u8 const oc_attackb_trans__6E_OC_n[40];
extern "C" u8 const oc_attackc_trans__6E_OC_n[40];
extern "C" extern char const* const d_a_e_oc__stringBase0;
extern "C" u8 cc_sph_src__6E_OC_n[64];
extern "C" u8 at_sph_src__6E_OC_n[64];
extern "C" u8 m_battle_oc__6E_OC_n[4];
extern "C" u8 m_damage_oc__6E_OC_n[4];
extern "C" u8 m_death_oc__6E_OC_n[4];
extern "C" u8 m_talk_oc__6E_OC_n[4];

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_SearchByName__FsPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_otoCheck__FPC10fopAc_ac_cf();
extern "C" void fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fopAcM_effHamonSet__FPUlPC4cXyzff();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcM_IsCreating__FUi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
extern "C" void GetGroundCode__4dBgSFRC13cBgS_PolyInfo();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
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
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void GetAtHitObj__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void Start__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyzfs();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_Sound_get__Fv();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void ClrCcMove__9cCcD_SttsFv();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void cLib_distanceAngleS__Fss();
extern "C" void setBattleSeqState__8Z2SeqMgrFUc();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_23();
extern "C" void _savegpr_26();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_23();
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
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80735B28-80735B2C 000000 0004+00 36/36 0/0 0/0 .rodata          @3911 */
SECTION_RODATA static f32 const lit_3911 = 100.0f;
COMPILER_STRIP_GATE(0x80735B28, &lit_3911);

/* 80735B2C-80735B30 000004 0004+00 3/31 0/0 0/0 .rodata          @3912 */
SECTION_RODATA static u8 const lit_3912[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80735B2C, &lit_3912);

/* 80735B30-80735B38 000008 0004+04 3/24 0/0 0/0 .rodata          @3913 */
SECTION_RODATA static f32 const lit_3913[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80735B30, &lit_3913);

/* 80735B38-80735B40 000010 0008+00 0/9 0/0 0/0 .rodata          @3914 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3914[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80735B38, &lit_3914);
#pragma pop

/* 80735B40-80735B48 000018 0008+00 0/9 0/0 0/0 .rodata          @3915 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3915[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80735B40, &lit_3915);
#pragma pop

/* 80735B48-80735B50 000020 0008+00 0/9 0/0 0/0 .rodata          @3916 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3916[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80735B48, &lit_3916);
#pragma pop

/* 80735B50-80735B54 000028 0004+00 0/1 0/0 0/0 .rodata          @3917 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3917 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x80735B50, &lit_3917);
#pragma pop

/* 80735B54-80735B7C 00002C 0028+00 0/1 0/0 0/0 .rodata          oc_attackb_trans__6E_OC_n */
#pragma push
#pragma force_active on
SECTION_RODATA u8 const E_OC_n::oc_attackb_trans[40] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x41, 0x74, 0xCC, 0xCD, 0x42, 0x19, 0x99, 0x9A, 0x42, 0x7D, 0x33, 0x33,
    0x42, 0xAC, 0x66, 0x66, 0x42, 0xCE, 0x99, 0x9A, 0x42, 0xE0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80735B54, &E_OC_n::oc_attackb_trans);
#pragma pop

/* 80735B7C-80735BA4 000054 0028+00 0/1 0/0 0/0 .rodata          oc_attackc_trans__6E_OC_n */
#pragma push
#pragma force_active on
SECTION_RODATA u8 const E_OC_n::oc_attackc_trans[40] = {
    0x00, 0x00, 0x00, 0x00, 0x41, 0xFA, 0x66, 0x66, 0x42, 0x91, 0x66, 0x66, 0x42, 0xB7,
    0x00, 0x00, 0x42, 0xB7, 0x00, 0x00, 0x42, 0xB7, 0x00, 0x00, 0x42, 0xB7, 0x00, 0x00,
    0x42, 0xB7, 0x00, 0x00, 0x42, 0xB7, 0x00, 0x00, 0x42, 0xB7, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80735B7C, &E_OC_n::oc_attackc_trans);
#pragma pop

/* 80735BA4-80735BA8 00007C 0004+00 0/1 0/0 0/0 .rodata          @3932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3932 = 1.5f;
COMPILER_STRIP_GATE(0x80735BA4, &lit_3932);
#pragma pop

/* 80735BA8-80735BAC 000080 0004+00 0/1 0/0 0/0 .rodata          @3933 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3933 = 1200.0f;
COMPILER_STRIP_GATE(0x80735BA8, &lit_3933);
#pragma pop

/* 80735BAC-80735BB0 000084 0004+00 0/1 0/0 0/0 .rodata          @3934 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3934 = 5000.0f;
COMPILER_STRIP_GATE(0x80735BAC, &lit_3934);
#pragma pop

/* 80735BB0-80735BB4 000088 0004+00 0/5 0/0 0/0 .rodata          @3935 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3935 = 400.0f;
COMPILER_STRIP_GATE(0x80735BB0, &lit_3935);
#pragma pop

/* 80735BB4-80735BB8 00008C 0004+00 0/1 0/0 0/0 .rodata          @3936 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3936 = 2000.0f;
COMPILER_STRIP_GATE(0x80735BB4, &lit_3936);
#pragma pop

/* 80735BB8-80735BBC 000090 0004+00 0/1 0/0 0/0 .rodata          @3937 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3937 = 1400.0f;
COMPILER_STRIP_GATE(0x80735BB8, &lit_3937);
#pragma pop

/* 80735BBC-80735BC0 000094 0004+00 0/3 0/0 0/0 .rodata          @3938 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3938 = 70.0f;
COMPILER_STRIP_GATE(0x80735BBC, &lit_3938);
#pragma pop

/* 80735D2C-80735D38 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80735D38-80735D4C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80735D4C-80735D54 000020 0008+00 0/1 0/0 0/0 .data            e_prim$3790 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim[8] = {
    0xFF, 0x78, 0x00, 0x00, 0xFF, 0x64, 0x78, 0x00,
};
#pragma pop

/* 80735D54-80735D5C 000028 0008+00 0/1 0/0 0/0 .data            e_env$3791 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env[8] = {
    0x5A, 0x2D, 0x2D, 0x00, 0x3C, 0x1E, 0x1E, 0x00,
};
#pragma pop

/* 80735D5C-80735D64 000030 0006+02 0/1 0/0 0/0 .data            eff_id$3799 */
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

/* 80735D64-80735DA4 000038 0040+00 1/1 0/0 0/0 .data            cc_sph_src__6E_OC_n */
SECTION_DATA u8 E_OC_n::cc_sph_src[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x75, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 80735DA4-80735DE4 000078 0040+00 1/1 0/0 0/0 .data            at_sph_src__6E_OC_n */
SECTION_DATA u8 E_OC_n::at_sph_src[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};

/* 80735DE4-80735E80 -00001 009C+00 1/1 0/0 0/0 .data            @4695 */
SECTION_DATA static void* lit_4695[39] = {
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x6C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x5C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x5C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x5C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x64),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x44),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x6C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x6C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x44),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x6C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x54),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x6C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x6C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x6C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x6C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x6C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x6C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x6C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x6C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x6C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x6C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x6C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x4C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x4C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x44),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x6C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x54),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x6C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x6C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x6C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x54),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x54),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x5C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x64),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x64),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x64),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x6C),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x64),
    (void*)(((char*)getCutType__8daE_OC_cFv) + 0x5C),
};

/* 80735E80-80735E9C -00001 001C+00 1/1 0/0 0/0 .data            @5924 */
SECTION_DATA static void* lit_5924[7] = {
    (void*)(((char*)executeDamage__8daE_OC_cFv) + 0x54),
    (void*)(((char*)executeDamage__8daE_OC_cFv) + 0xA0),
    (void*)(((char*)executeDamage__8daE_OC_cFv) + 0xEC),
    (void*)(((char*)executeDamage__8daE_OC_cFv) + 0x138),
    (void*)(((char*)executeDamage__8daE_OC_cFv) + 0x1CC),
    (void*)(((char*)executeDamage__8daE_OC_cFv) + 0x21C),
    (void*)(((char*)executeDamage__8daE_OC_cFv) + 0x2E8),
};

/* 80735E9C-80735EA4 000170 0008+00 1/1 0/0 0/0 .data            w_eff_id$6206 */
SECTION_DATA static u8 w_eff_id[8] = {
    0x01, 0xB8, 0x01, 0xB9, 0x01, 0xBA, 0x01, 0xBB,
};

/* 80735EA4-80735EC8 -00001 0024+00 1/1 0/0 0/0 .data            @6513 */
SECTION_DATA static void* lit_6513[9] = {
    (void*)(((char*)executeDemoMaster__8daE_OC_cFv) + 0xA8),
    (void*)(((char*)executeDemoMaster__8daE_OC_cFv) + 0x164),
    (void*)(((char*)executeDemoMaster__8daE_OC_cFv) + 0x1B8),
    (void*)(((char*)executeDemoMaster__8daE_OC_cFv) + 0x6CC),
    (void*)(((char*)executeDemoMaster__8daE_OC_cFv) + 0x1FC),
    (void*)(((char*)executeDemoMaster__8daE_OC_cFv) + 0x1FC),
    (void*)(((char*)executeDemoMaster__8daE_OC_cFv) + 0x3CC),
    (void*)(((char*)executeDemoMaster__8daE_OC_cFv) + 0x500),
    (void*)(((char*)executeDemoMaster__8daE_OC_cFv) + 0x5A4),
};

/* 80735EC8-80735EEC -00001 0024+00 1/1 0/0 0/0 .data            @6593 */
SECTION_DATA static void* lit_6593[9] = {
    (void*)(((char*)executeDemoChild__8daE_OC_cFv) + 0x7C),
    (void*)(((char*)executeDemoChild__8daE_OC_cFv) + 0xB4),
    (void*)(((char*)executeDemoChild__8daE_OC_cFv) + 0x348),
    (void*)(((char*)executeDemoChild__8daE_OC_cFv) + 0x348),
    (void*)(((char*)executeDemoChild__8daE_OC_cFv) + 0x348),
    (void*)(((char*)executeDemoChild__8daE_OC_cFv) + 0x10C),
    (void*)(((char*)executeDemoChild__8daE_OC_cFv) + 0x198),
    (void*)(((char*)executeDemoChild__8daE_OC_cFv) + 0x24C),
    (void*)(((char*)executeDemoChild__8daE_OC_cFv) + 0x2C8),
};

/* 80735EEC-80735F30 -00001 0044+00 1/1 0/0 0/0 .data            @7106 */
SECTION_DATA static void* lit_7106[17] = {
    (void*)(((char*)action__8daE_OC_cFv) + 0x4A0), (void*)(((char*)action__8daE_OC_cFv) + 0x4AC),
    (void*)(((char*)action__8daE_OC_cFv) + 0x4B8), (void*)(((char*)action__8daE_OC_cFv) + 0x4C4),
    (void*)(((char*)action__8daE_OC_cFv) + 0x4D8), (void*)(((char*)action__8daE_OC_cFv) + 0x4EC),
    (void*)(((char*)action__8daE_OC_cFv) + 0x4F8), (void*)(((char*)action__8daE_OC_cFv) + 0x504),
    (void*)(((char*)action__8daE_OC_cFv) + 0x510), (void*)(((char*)action__8daE_OC_cFv) + 0x51C),
    (void*)(((char*)action__8daE_OC_cFv) + 0x528), (void*)(((char*)action__8daE_OC_cFv) + 0x534),
    (void*)(((char*)action__8daE_OC_cFv) + 0x548), (void*)(((char*)action__8daE_OC_cFv) + 0x55C),
    (void*)(((char*)action__8daE_OC_cFv) + 0x568), (void*)(((char*)action__8daE_OC_cFv) + 0x574),
    (void*)(((char*)action__8daE_OC_cFv) + 0x588),
};

/* 80735F30-80735F50 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_OC_Method */
static actor_method_class l_daE_OC_Method = {
    (process_method_func)daE_OC_Create__FP8daE_OC_c,
    (process_method_func)daE_OC_Delete__FP8daE_OC_c,
    (process_method_func)daE_OC_Execute__FP8daE_OC_c,
    (process_method_func)daE_OC_IsDelete__FP8daE_OC_c,
    (process_method_func)daE_OC_Draw__FP8daE_OC_c,
};

/* 80735F50-80735F80 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_OC */
extern actor_process_profile_definition g_profile_E_OC = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_OC,              // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daE_OC_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  201,                    // mPriority
  &l_daE_OC_Method,       // sub_method
  0x00044100,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80735F80-80735F8C 000254 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80735F8C-80735F98 000260 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80735F98-80735FA4 00026C 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80735FA4-80735FB0 000278 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80735FB0-80735FBC 000284 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80735FBC-80735FE0 000290 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807356BC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807356B4,
};

/* 80735FE0-80735FEC 0002B4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80735FEC-80735FF8 0002C0 000C+00 2/2 0/0 0/0 .data            __vt__12daE_OC_HIO_c */
SECTION_DATA extern void* __vt__12daE_OC_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_OC_HIO_cFv,
};

/* 8072C5CC-8072C630 0000EC 0064+00 1/1 0/0 0/0 .text            __ct__12daE_OC_HIO_cFv */
daE_OC_HIO_c::daE_OC_HIO_c() {
    // NONMATCHING
}

/* 8072C630-8072C6E8 000150 00B8+00 1/1 0/0 0/0 .text ctrlJoint__8daE_OC_cFP8J3DJointP8J3DModel */
void daE_OC_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 8072C6E8-8072C734 000208 004C+00 1/1 0/0 0/0 .text JointCallBack__8daE_OC_cFP8J3DJointi */
void daE_OC_c::JointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735BC0-80735BC4 000098 0004+00 1/2 0/0 0/0 .rodata          @4030 */
SECTION_RODATA static f32 const lit_4030 = 1000.0f;
COMPILER_STRIP_GATE(0x80735BC0, &lit_4030);

/* 8072C734-8072C918 000254 01E4+00 1/1 0/0 0/0 .text            draw__8daE_OC_cFv */
void daE_OC_c::draw() {
    // NONMATCHING
}

/* 8072C918-8072C938 000438 0020+00 1/0 0/0 0/0 .text            daE_OC_Draw__FP8daE_OC_c */
static void daE_OC_Draw(daE_OC_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735BC4-80735BC8 00009C 0004+00 0/5 0/0 0/0 .rodata          @4119 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4119 = 200.0f;
COMPILER_STRIP_GATE(0x80735BC4, &lit_4119);
#pragma pop

/* 80736000-80736004 000008 0001+03 3/3 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80736004-80736008 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80736008-8073600C 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 8073600C-80736010 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80736010-80736014 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80736014-80736018 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80736018-8073601C 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 8073601C-80736020 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80736020-80736024 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80736024-80736028 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80736028-8073602C 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 8073602C-80736030 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80736030-80736034 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80736034-80736038 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80736038-8073603C 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 8073603C-80736040 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 80736040-80736044 000048 0004+00 0/2 0/0 0/0 .bss             m_battle_oc__6E_OC_n */
#pragma push
#pragma force_active on
u8 E_OC_n::m_battle_oc[4];
#pragma pop

/* 80736044-80736048 00004C 0004+00 0/2 0/0 0/0 .bss             m_damage_oc__6E_OC_n */
#pragma push
#pragma force_active on
u8 E_OC_n::m_damage_oc[4];
#pragma pop

/* 80736048-8073604C 000050 0004+00 0/2 0/0 0/0 .bss             m_death_oc__6E_OC_n */
#pragma push
#pragma force_active on
u8 E_OC_n::m_death_oc[4];
#pragma pop

/* 8073604C-80736050 000054 0004+00 0/2 0/0 0/0 .bss             m_talk_oc__6E_OC_n */
#pragma push
#pragma force_active on
u8 E_OC_n::m_talk_oc[4];
#pragma pop

/* 80736050-80736054 000058 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80736050[4];

/* 80736054-80736060 00005C 000C+00 1/1 0/0 0/0 .bss             @3927 */
static u8 lit_3927[12];

/* 80736060-80736088 000068 0028+00 6/7 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[40];

/* 8072C938-8072CBD4 000458 029C+00 1/1 0/0 0/0 .text            s_other_oc__FPvPv */
static void s_other_oc(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8072CBD4-8072CC10 0006F4 003C+00 1/1 0/0 0/0 .text getVisionAngle__8daE_OC_cFP10fopAc_ac_c */
void daE_OC_c::getVisionAngle(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8072CC10-8072CDA8 000730 0198+00 1/1 0/0 0/0 .text            searchOtherOc__8daE_OC_cFv */
void daE_OC_c::searchOtherOc() {
    // NONMATCHING
}

/* 8072CDA8-8072CE00 0008C8 0058+00 5/5 0/0 0/0 .text            setWatchMode__8daE_OC_cFv */
void daE_OC_c::setWatchMode() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735BC8-80735BCC 0000A0 0004+00 1/1 0/0 0/0 .rodata          @4206 */
SECTION_RODATA static f32 const lit_4206 = 12.0f;
COMPILER_STRIP_GATE(0x80735BC8, &lit_4206);

/* 8072CE00-8072CF00 000920 0100+00 1/1 0/0 0/0 .text            searchPlayer__8daE_OC_cFv */
void daE_OC_c::searchPlayer() {
    // NONMATCHING
}

/* 8072CF00-8072CF90 000A20 0090+00 1/1 0/0 0/0 .text            s_obj_sub__FPvPv */
static void s_obj_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8072CF90-8072D100 000AB0 0170+00 6/6 0/0 0/0 .text            searchPlayer2__8daE_OC_cFv */
void daE_OC_c::searchPlayer2() {
    // NONMATCHING
}

/* 8072D100-8072D1DC 000C20 00DC+00 2/2 0/0 0/0 .text            searchPlayerShakeHead__8daE_OC_cFv
 */
void daE_OC_c::searchPlayerShakeHead() {
    // NONMATCHING
}

/* 8072D1DC-8072D2E8 000CFC 010C+00 3/3 0/0 0/0 .text            searchSound__8daE_OC_cFv */
void daE_OC_c::searchSound() {
    // NONMATCHING
}

/* 8072D2E8-8072D364 000E08 007C+00 1/1 0/0 0/0 .text            s_demo_oc__FPvPv */
static void s_demo_oc(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735BCC-80735BD0 0000A4 0004+00 1/7 0/0 0/0 .rodata          @4463 */
SECTION_RODATA static f32 const lit_4463 = 300.0f;
COMPILER_STRIP_GATE(0x80735BCC, &lit_4463);

/* 8072D364-8072D5F8 000E84 0294+00 1/1 0/0 0/0 .text            checkBeforeBg__8daE_OC_cFv */
void daE_OC_c::checkBeforeBg() {
    // NONMATCHING
}

/* 8072D5F8-8072D640 001118 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 8072D640-8072D87C 001160 023C+00 1/2 0/0 0/0 .text            checkBeforeBgFind__8daE_OC_cFv */
void daE_OC_c::checkBeforeBgFind() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735BD0-80735BD4 0000A8 0004+00 0/5 0/0 0/0 .rodata          @4555 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4555 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80735BD0, &lit_4555);
#pragma pop

/* 8072D87C-8072D994 00139C 0118+00 2/2 0/0 0/0 .text            checkBeforeFloorBg__8daE_OC_cFf */
void daE_OC_c::checkBeforeFloorBg(f32 param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735BD4-80735BD8 0000AC 0004+00 0/6 0/0 0/0 .rodata          @4587 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4587 = 50.0f;
COMPILER_STRIP_GATE(0x80735BD4, &lit_4587);
#pragma pop

/* 80735BD8-80735BDC 0000B0 0004+00 0/2 0/0 0/0 .rodata          @4588 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4588 = -200.0f;
COMPILER_STRIP_GATE(0x80735BD8, &lit_4588);
#pragma pop

/* 8072D994-8072DB10 0014B4 017C+00 1/1 0/0 0/0 .text            checkDamageBg__8daE_OC_cFv */
void daE_OC_c::checkDamageBg() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735BDC-80735BE0 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4644 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4644 = 80.0f;
COMPILER_STRIP_GATE(0x80735BDC, &lit_4644);
#pragma pop

/* 8072DB10-8072DCBC 001630 01AC+00 1/1 0/0 0/0 .text            setGroundAngle__8daE_OC_cFv */
void daE_OC_c::setGroundAngle() {
    // NONMATCHING
}

/* 8072DCBC-8072DD18 0017DC 005C+00 21/21 0/0 0/0 .text            setActionMode__8daE_OC_cFii */
void daE_OC_c::setActionMode(int param_0, int param_1) {
    // NONMATCHING
}

/* 8072DD18-8072DD8C 001838 0074+00 2/1 0/0 0/0 .text            getCutType__8daE_OC_cFv */
void daE_OC_c::getCutType() {
    // NONMATCHING
}

/* 8072DD8C-8072DDF4 0018AC 0068+00 4/4 0/0 0/0 .text            offTgSph__8daE_OC_cFv */
void daE_OC_c::offTgSph() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735BE0-80735BE4 0000B8 0004+00 1/2 0/0 0/0 .rodata          @4855 */
SECTION_RODATA static f32 const lit_4855 = 0.5f;
COMPILER_STRIP_GATE(0x80735BE0, &lit_4855);

/* 80735D0C-80735D0C 0001E4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80735D0C = "E_OC";
#pragma pop

/* 8072DDF4-8072E274 001914 0480+00 1/1 0/0 0/0 .text            damage_check__8daE_OC_cFv */
void daE_OC_c::damage_check() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735BE4-80735BE8 0000BC 0004+00 1/3 0/0 0/0 .rodata          @4862 */
SECTION_RODATA static f32 const lit_4862 = -1.0f;
COMPILER_STRIP_GATE(0x80735BE4, &lit_4862);

/* 80735D0C-80735D0C 0001E4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80735D11 = "E_ocb";
#pragma pop

/* 8072E274-8072E31C 001D94 00A8+00 17/17 0/0 0/0 .text            setBck__8daE_OC_cFiUcff */
void daE_OC_c::setBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    // NONMATCHING
}

/* 8072E31C-8072E37C 001E3C 0060+00 11/11 0/0 0/0 .text            checkBck__8daE_OC_cFi */
void daE_OC_c::checkBck(int param_0) {
    // NONMATCHING
}

/* 8072E37C-8072E42C 001E9C 00B0+00 3/3 0/0 0/0 .text            setSpitEffect__8daE_OC_cFv */
void daE_OC_c::setSpitEffect() {
    // NONMATCHING
}

/* 8072E42C-8072E498 001F4C 006C+00 1/1 0/0 0/0 .text            getHeadAngle__8daE_OC_cFv */
void daE_OC_c::getHeadAngle() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735BE8-80735BEC 0000C0 0004+00 1/1 0/0 0/0 .rodata          @4962 */
SECTION_RODATA static f32 const lit_4962 = -10.0f;
COMPILER_STRIP_GATE(0x80735BE8, &lit_4962);

/* 8072E498-8072E528 001FB8 0090+00 1/1 0/0 0/0 .text            setStabPos__8daE_OC_cFv */
void daE_OC_c::setStabPos() {
    // NONMATCHING
}

/* 8072E528-8072E5A4 002048 007C+00 1/1 0/0 0/0 .text            setWaitSound__8daE_OC_cFv */
void daE_OC_c::setWaitSound() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735BEC-80735BF0 0000C4 0004+00 1/2 0/0 0/0 .rodata          @4991 */
SECTION_RODATA static f32 const lit_4991 = 14.0f;
COMPILER_STRIP_GATE(0x80735BEC, &lit_4991);

/* 80735BF0-80735BF4 0000C8 0004+00 1/6 0/0 0/0 .rodata          @4992 */
SECTION_RODATA static f32 const lit_4992 = 30.0f;
COMPILER_STRIP_GATE(0x80735BF0, &lit_4992);

/* 8072E5A4-8072E670 0020C4 00CC+00 1/1 0/0 0/0 .text            setWalkSound__8daE_OC_cFv */
void daE_OC_c::setWalkSound() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735BF4-80735BF8 0000CC 0004+00 0/2 0/0 0/0 .rodata          @5016 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5016 = 9.0f;
COMPILER_STRIP_GATE(0x80735BF4, &lit_5016);
#pragma pop

/* 8072E670-8072E788 002190 0118+00 1/1 0/0 0/0 .text            setWalkStSound__8daE_OC_cFv */
void daE_OC_c::setWalkStSound() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735BF8-80735BFC 0000D0 0004+00 0/1 0/0 0/0 .rodata          @5047 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5047 = 8.5f;
COMPILER_STRIP_GATE(0x80735BF8, &lit_5047);
#pragma pop

/* 8072E788-8072E910 0022A8 0188+00 1/1 0/0 0/0 .text            setDashSound__8daE_OC_cFv */
void daE_OC_c::setDashSound() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735BFC-80735C00 0000D4 0004+00 0/1 0/0 0/0 .rodata          @5075 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5075 = 6.5f;
COMPILER_STRIP_GATE(0x80735BFC, &lit_5075);
#pragma pop

/* 80735C00-80735C04 0000D8 0004+00 0/6 0/0 0/0 .rodata          @5076 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5076 = 20.0f;
COMPILER_STRIP_GATE(0x80735C00, &lit_5076);
#pragma pop

/* 80735C04-80735C08 0000DC 0004+00 0/1 0/0 0/0 .rodata          @5077 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5077 = 13.0f;
COMPILER_STRIP_GATE(0x80735C04, &lit_5077);
#pragma pop

/* 80735C08-80735C0C 0000E0 0004+00 0/2 0/0 0/0 .rodata          @5078 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5078 = 28.5f;
COMPILER_STRIP_GATE(0x80735C08, &lit_5078);
#pragma pop

/* 8072E910-8072EA58 002430 0148+00 1/1 0/0 0/0 .text            setWaitStSound__8daE_OC_cFv */
void daE_OC_c::setWaitStSound() {
    // NONMATCHING
}

/* 8072EA58-8072EAA4 002578 004C+00 1/1 0/0 0/0 .text            setFootNoteSound__8daE_OC_cFv */
void daE_OC_c::setFootNoteSound() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C0C-80735C10 0000E4 0004+00 0/13 0/0 0/0 .rodata          @5214 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5214 = 5.0f;
COMPILER_STRIP_GATE(0x80735C0C, &lit_5214);
#pragma pop

/* 80735C10-80735C14 0000E8 0004+00 0/2 0/0 0/0 .rodata          @5215 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5215 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80735C10, &lit_5215);
#pragma pop

/* 80735C14-80735C18 0000EC 0004+00 0/6 0/0 0/0 .rodata          @5216 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5216 = 10.0f;
COMPILER_STRIP_GATE(0x80735C14, &lit_5216);
#pragma pop

/* 8072EAA4-8072F1A8 0025C4 0704+00 1/1 0/0 0/0 .text            executeWait__8daE_OC_cFv */
void daE_OC_c::executeWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C18-80735C1C 0000F0 0004+00 0/1 0/0 0/0 .rodata          @5299 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5299 = 150.0f;
COMPILER_STRIP_GATE(0x80735C18, &lit_5299);
#pragma pop

/* 80735C1C-80735C20 0000F4 0004+00 0/6 0/0 0/0 .rodata          @5300 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5300 = 500.0f;
COMPILER_STRIP_GATE(0x80735C1C, &lit_5300);
#pragma pop

/* 80735C20-80735C24 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5301 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5301 = 32768.0f;
COMPILER_STRIP_GATE(0x80735C20, &lit_5301);
#pragma pop

/* 80735C24-80735C28 0000FC 0004+00 0/1 0/0 0/0 .rodata          @5302 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5302 = 4.0f;
COMPILER_STRIP_GATE(0x80735C24, &lit_5302);
#pragma pop

/* 8072F1A8-8072F5E0 002CC8 0438+00 1/1 0/0 0/0 .text            executeWalk__8daE_OC_cFv */
void daE_OC_c::executeWalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C28-80735C2C 000100 0004+00 0/2 0/0 0/0 .rodata          @5352 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5352 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80735C28, &lit_5352);
#pragma pop

/* 80735C2C-80735C30 000104 0004+00 0/1 0/0 0/0 .rodata          @5353 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5353 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80735C2C, &lit_5353);
#pragma pop

/* 8072F5E0-8072F914 003100 0334+00 1/1 0/0 0/0 .text            executeTalk__8daE_OC_cFv */
void daE_OC_c::executeTalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C30-80735C34 000108 0004+00 0/1 0/0 0/0 .rodata          @5553 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5553 = 13.0f / 10.0f;
COMPILER_STRIP_GATE(0x80735C30, &lit_5553);
#pragma pop

/* 80735C34-80735C38 00010C 0004+00 0/2 0/0 0/0 .rodata          @5554 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5554 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80735C34, &lit_5554);
#pragma pop

/* 80735C38-80735C3C 000110 0004+00 0/1 0/0 0/0 .rodata          @5555 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5555 = -3.0f;
COMPILER_STRIP_GATE(0x80735C38, &lit_5555);
#pragma pop

/* 80735C3C-80735C40 000114 0004+00 0/3 0/0 0/0 .rodata          @5556 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5556 = -15.0f;
COMPILER_STRIP_GATE(0x80735C3C, &lit_5556);
#pragma pop

/* 80735D0C-80735D0C 0001E4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80735D17 = "D_MN05";
#pragma pop

/* 8072F914-807302E8 003434 09D4+00 1/1 0/0 0/0 .text            executeFind__8daE_OC_cFv */
void daE_OC_c::executeFind() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C40-80735C44 000118 0004+00 0/3 0/0 0/0 .rodata          @5645 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5645 = 45.0f;
COMPILER_STRIP_GATE(0x80735C40, &lit_5645);
#pragma pop

/* 807302E8-807305C0 003E08 02D8+00 1/1 0/0 0/0 .text            setWeaponGroundAngle__8daE_OC_cFv
 */
void daE_OC_c::setWeaponGroundAngle() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C44-80735C48 00011C 0004+00 0/1 0/0 0/0 .rodata          @5849 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5849 = 12.5f;
COMPILER_STRIP_GATE(0x80735C44, &lit_5849);
#pragma pop

/* 80735C48-80735C4C 000120 0004+00 0/1 0/0 0/0 .rodata          @5850 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5850 = 19.0f;
COMPILER_STRIP_GATE(0x80735C48, &lit_5850);
#pragma pop

/* 80735C4C-80735C50 000124 0004+00 0/1 0/0 0/0 .rodata          @5851 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5851 = 7.0f;
COMPILER_STRIP_GATE(0x80735C4C, &lit_5851);
#pragma pop

/* 80735C50-80735C54 000128 0004+00 0/1 0/0 0/0 .rodata          @5852 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5852 = 11.5f;
COMPILER_STRIP_GATE(0x80735C50, &lit_5852);
#pragma pop

/* 80735C54-80735C58 00012C 0004+00 0/1 0/0 0/0 .rodata          @5853 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5853 = 22.0f;
COMPILER_STRIP_GATE(0x80735C54, &lit_5853);
#pragma pop

/* 807305C0-80730DC0 0040E0 0800+00 1/1 0/0 0/0 .text            executeAttack__8daE_OC_cFv */
void daE_OC_c::executeAttack() {
    // NONMATCHING
}

/* 80730DC0-80731124 0048E0 0364+00 2/1 0/0 0/0 .text            executeDamage__8daE_OC_cFv */
void daE_OC_c::executeDamage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C58-80735C5C 000130 0004+00 0/1 0/0 0/0 .rodata          @5921 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5921 = -20.0f;
COMPILER_STRIP_GATE(0x80735C58, &lit_5921);
#pragma pop

/* 80735C5C-80735C60 000134 0004+00 0/1 0/0 0/0 .rodata          @5922 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5922 = 3.0f;
COMPILER_STRIP_GATE(0x80735C5C, &lit_5922);
#pragma pop

/* 80735C60-80735C64 000138 0004+00 0/4 0/0 0/0 .rodata          @5923 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5923 = 2.0f;
COMPILER_STRIP_GATE(0x80735C60, &lit_5923);
#pragma pop

/* 80735C64-80735C68 00013C 0004+00 0/1 0/0 0/0 .rodata          @6039 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6039 = 40.0f;
COMPILER_STRIP_GATE(0x80735C64, &lit_6039);
#pragma pop

/* 80735C68-80735C6C 000140 0004+00 0/2 0/0 0/0 .rodata          @6040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6040 = 15.0f;
COMPILER_STRIP_GATE(0x80735C68, &lit_6040);
#pragma pop

/* 80731124-807316F8 004C44 05D4+00 1/1 0/0 0/0 .text            executeBigDamage__8daE_OC_cFv */
void daE_OC_c::executeBigDamage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C6C-80735C70 000144 0004+00 0/1 0/0 0/0 .rodata          @6089 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6089 = 35.0f;
COMPILER_STRIP_GATE(0x80735C6C, &lit_6089);
#pragma pop

/* 807316F8-807319E4 005218 02EC+00 1/1 0/0 0/0 .text            executeWatch__8daE_OC_cFv */
void daE_OC_c::executeWatch() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C70-80735C74 000148 0004+00 0/2 0/0 0/0 .rodata          @6147 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6147 = 60.0f;
COMPILER_STRIP_GATE(0x80735C70, &lit_6147);
#pragma pop

/* 807319E4-80731D18 005504 0334+00 1/1 0/0 0/0 .text            executeSoundWatch__8daE_OC_cFv */
void daE_OC_c::executeSoundWatch() {
    // NONMATCHING
}

/* 80731D18-80731D4C 005838 0034+00 1/1 0/0 0/0 .text            checkBeforeDeath__8daE_OC_cFv */
void daE_OC_c::checkBeforeDeath() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C74-80735C78 00014C 0004+00 0/1 0/0 0/0 .rodata          @6198 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6198 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80735C74, &lit_6198);
#pragma pop

/* 80731D4C-80731F5C 00586C 0210+00 1/1 0/0 0/0 .text            executeDeath__8daE_OC_cFv */
void daE_OC_c::executeDeath() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80736088-80736098 000090 000C+04 0/1 0/0 0/0 .bss             @6203 */
#pragma push
#pragma force_active on
static u8 lit_6203[12 + 4 /* padding */];
#pragma pop

/* 80736098-807360A4 0000A0 000C+00 0/1 0/0 0/0 .bss             sc$6202 */
#pragma push
#pragma force_active on
static u8 sc[12];
#pragma pop

/* 80731F5C-80732074 005A7C 0118+00 1/1 0/0 0/0 .text            setWaterEffect__8daE_OC_cFv */
void daE_OC_c::setWaterEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C78-80735C7C 000150 0004+00 0/3 0/0 0/0 .rodata          @6299 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6299 = 140.0f;
COMPILER_STRIP_GATE(0x80735C78, &lit_6299);
#pragma pop

/* 80735C7C-80735C80 000154 0004+00 0/1 0/0 0/0 .rodata          @6300 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6300 = 24.0f;
COMPILER_STRIP_GATE(0x80735C7C, &lit_6300);
#pragma pop

/* 80735C80-80735C84 000158 0004+00 0/1 0/0 0/0 .rodata          @6301 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6301 = 37.0f;
COMPILER_STRIP_GATE(0x80735C80, &lit_6301);
#pragma pop

/* 80735C84-80735C88 00015C 0004+00 0/1 0/0 0/0 .rodata          @6302 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6302 = 49.0f;
COMPILER_STRIP_GATE(0x80735C84, &lit_6302);
#pragma pop

/* 80732074-807323A4 005B94 0330+00 1/1 0/0 0/0 .text            executeWaterDeath__8daE_OC_cFv */
void daE_OC_c::executeWaterDeath() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735C88-80735C8C 000160 0004+00 0/2 0/0 0/0 .rodata          @6488 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6488 = -4264.0f;
COMPILER_STRIP_GATE(0x80735C88, &lit_6488);
#pragma pop

/* 80735C8C-80735C90 000164 0004+00 0/2 0/0 0/0 .rodata          @6489 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6489 = 302.0f;
COMPILER_STRIP_GATE(0x80735C8C, &lit_6489);
#pragma pop

/* 80735C90-80735C94 000168 0004+00 0/2 0/0 0/0 .rodata          @6490 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6490 = -2330.0f;
COMPILER_STRIP_GATE(0x80735C90, &lit_6490);
#pragma pop

/* 80735C94-80735C98 00016C 0004+00 0/1 0/0 0/0 .rodata          @6491 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6491 = 16200.0f;
COMPILER_STRIP_GATE(0x80735C94, &lit_6491);
#pragma pop

/* 80735C98-80735C9C 000170 0004+00 0/1 0/0 0/0 .rodata          @6492 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6492 = 2850.0f;
COMPILER_STRIP_GATE(0x80735C98, &lit_6492);
#pragma pop

/* 80735C9C-80735CA0 000174 0004+00 0/1 0/0 0/0 .rodata          @6493 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6493 = 7000.0f;
COMPILER_STRIP_GATE(0x80735C9C, &lit_6493);
#pragma pop

/* 80735CA0-80735CA4 000178 0004+00 0/1 0/0 0/0 .rodata          @6494 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6494 = 16300.0f;
COMPILER_STRIP_GATE(0x80735CA0, &lit_6494);
#pragma pop

/* 80735CA4-80735CA8 00017C 0004+00 0/1 0/0 0/0 .rodata          @6495 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6495 = 3700.0f;
COMPILER_STRIP_GATE(0x80735CA4, &lit_6495);
#pragma pop

/* 80735CA8-80735CAC 000180 0004+00 0/1 0/0 0/0 .rodata          @6496 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6496 = 8400.0f;
COMPILER_STRIP_GATE(0x80735CA8, &lit_6496);
#pragma pop

/* 80735CAC-80735CB0 000184 0004+00 0/1 0/0 0/0 .rodata          @6497 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6497 = 16325.0f;
COMPILER_STRIP_GATE(0x80735CAC, &lit_6497);
#pragma pop

/* 80735CB0-80735CB4 000188 0004+00 0/1 0/0 0/0 .rodata          @6498 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6498 = 2858.0f;
COMPILER_STRIP_GATE(0x80735CB0, &lit_6498);
#pragma pop

/* 80735CB4-80735CB8 00018C 0004+00 0/1 0/0 0/0 .rodata          @6499 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6499 = 6597.0f;
COMPILER_STRIP_GATE(0x80735CB4, &lit_6499);
#pragma pop

/* 80735CB8-80735CBC 000190 0004+00 0/2 0/0 0/0 .rodata          @6500 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6500 = 55.0f;
COMPILER_STRIP_GATE(0x80735CB8, &lit_6500);
#pragma pop

/* 807323A4-80732B04 005EC4 0760+00 2/1 0/0 0/0 .text            executeDemoMaster__8daE_OC_cFv */
void daE_OC_c::executeDemoMaster() {
    // NONMATCHING
}

/* 80732B04-80732E64 006624 0360+00 2/1 0/0 0/0 .text            executeDemoChild__8daE_OC_cFv */
void daE_OC_c::executeDemoChild() {
    // NONMATCHING
}

/* 80732E64-8073301C 006984 01B8+00 1/1 0/0 0/0 .text            checkFall__8daE_OC_cFv */
void daE_OC_c::checkFall() {
    // NONMATCHING
}

/* 8073301C-807331CC 006B3C 01B0+00 1/1 0/0 0/0 .text            executeFallDead__8daE_OC_cFv */
void daE_OC_c::executeFallDead() {
    // NONMATCHING
}

/* 807331CC-8073332C 006CEC 0160+00 1/1 0/0 0/0 .text            executeFall__8daE_OC_cFv */
void daE_OC_c::executeFall() {
    // NONMATCHING
}

/* 8073332C-807335B4 006E4C 0288+00 1/1 0/0 0/0 .text            executeFindStay__8daE_OC_cFv */
void daE_OC_c::executeFindStay() {
    // NONMATCHING
}

/* 807335B4-80733E48 0070D4 0894+00 1/1 0/0 0/0 .text            executeMoveOut__8daE_OC_cFv */
void daE_OC_c::executeMoveOut() {
    // NONMATCHING
}

/* 80733E48-80733F20 007968 00D8+00 1/1 0/0 0/0 .text            checkWaterSurface__8daE_OC_cFv */
void daE_OC_c::checkWaterSurface() {
    // NONMATCHING
}

/* 80733F20-807345D8 007A40 06B8+00 2/1 0/0 0/0 .text            action__8daE_OC_cFv */
void daE_OC_c::action() {
    // NONMATCHING
}

/* 807345D8-80734698 0080F8 00C0+00 1/1 0/0 0/0 .text            mtx_set__8daE_OC_cFv */
void daE_OC_c::mtx_set() {
    // NONMATCHING
}

/* 80734698-807348DC 0081B8 0244+00 1/1 0/0 0/0 .text            cc_set__8daE_OC_cFv */
void daE_OC_c::cc_set() {
    // NONMATCHING
}

/* 807348DC-80734B44 0083FC 0268+00 1/1 0/0 0/0 .text            execute__8daE_OC_cFv */
void daE_OC_c::execute() {
    // NONMATCHING
}

/* 80734B44-80734B64 008664 0020+00 2/1 0/0 0/0 .text            daE_OC_Execute__FP8daE_OC_c */
static void daE_OC_Execute(daE_OC_c* param_0) {
    // NONMATCHING
}

/* 80734B64-80734B6C 008684 0008+00 1/0 0/0 0/0 .text            daE_OC_IsDelete__FP8daE_OC_c */
static bool daE_OC_IsDelete(daE_OC_c* param_0) {
    return true;
}

/* 80734B6C-80734BF0 00868C 0084+00 1/1 0/0 0/0 .text            _delete__8daE_OC_cFv */
void daE_OC_c::_delete() {
    // NONMATCHING
}

/* 80734BF0-80734C10 008710 0020+00 1/0 0/0 0/0 .text            daE_OC_Delete__FP8daE_OC_c */
static void daE_OC_Delete(daE_OC_c* param_0) {
    // NONMATCHING
}

/* 80734C10-80734D88 008730 0178+00 1/1 0/0 0/0 .text            CreateHeap__8daE_OC_cFv */
void daE_OC_c::CreateHeap() {
    // NONMATCHING
}

/* 80734D88-80734DA8 0088A8 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80735CBC-80735CC0 000194 0004+00 0/0 0/0 0/0 .rodata          @6501 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6501 = 16450.0f;
COMPILER_STRIP_GATE(0x80735CBC, &lit_6501);
#pragma pop

/* 80735CC0-80735CC4 000198 0004+00 0/0 0/0 0/0 .rodata          @6502 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6502 = 3050.0f;
COMPILER_STRIP_GATE(0x80735CC0, &lit_6502);
#pragma pop

/* 80735CC4-80735CC8 00019C 0004+00 0/0 0/0 0/0 .rodata          @6503 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6503 = 8250.0f;
COMPILER_STRIP_GATE(0x80735CC4, &lit_6503);
#pragma pop

/* 80735CC8-80735CCC 0001A0 0004+00 0/0 0/0 0/0 .rodata          @6504 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6504 = 16310.0f;
COMPILER_STRIP_GATE(0x80735CC8, &lit_6504);
#pragma pop

/* 80735CCC-80735CD0 0001A4 0004+00 0/0 0/0 0/0 .rodata          @6505 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6505 = 2970.0f;
COMPILER_STRIP_GATE(0x80735CCC, &lit_6505);
#pragma pop

/* 80735CD0-80735CD4 0001A8 0004+00 0/0 0/0 0/0 .rodata          @6506 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6506 = 7500.0f;
COMPILER_STRIP_GATE(0x80735CD0, &lit_6506);
#pragma pop

/* 80735CD4-80735CD8 0001AC 0004+00 0/0 0/0 0/0 .rodata          @6507 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6507 = 16449.0f;
COMPILER_STRIP_GATE(0x80735CD4, &lit_6507);
#pragma pop

/* 80735CD8-80735CDC 0001B0 0004+00 0/0 0/0 0/0 .rodata          @6508 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6508 = 3300.0f;
COMPILER_STRIP_GATE(0x80735CD8, &lit_6508);
#pragma pop

/* 80735CDC-80735CE0 0001B4 0004+00 0/0 0/0 0/0 .rodata          @6509 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6509 = 7879.0f;
COMPILER_STRIP_GATE(0x80735CDC, &lit_6509);
#pragma pop

/* 80735CE0-80735CE4 0001B8 0004+00 0/0 0/0 0/0 .rodata          @6510 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6510 = 2950.0f;
COMPILER_STRIP_GATE(0x80735CE0, &lit_6510);
#pragma pop

/* 80735CE4-80735CE8 0001BC 0004+00 0/0 0/0 0/0 .rodata          @6511 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6511 = 47.0f;
COMPILER_STRIP_GATE(0x80735CE4, &lit_6511);
#pragma pop

/* 80735CE8-80735CF0 0001C0 0004+04 0/0 0/0 0/0 .rodata          @6512 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6512[1 + 1 /* padding */] = {
    34.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80735CE8, &lit_6512);
#pragma pop

/* 80735CF0-80735CF8 0001C8 0008+00 0/1 0/0 0/0 .rodata          @6515 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6515[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80735CF0, &lit_6515);
#pragma pop

/* 80735CF8-80735CFC 0001D0 0004+00 0/0 0/0 0/0 .rodata          @6590 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6590 = 16249.0f;
COMPILER_STRIP_GATE(0x80735CF8, &lit_6590);
#pragma pop

/* 80735CFC-80735D00 0001D4 0004+00 0/0 0/0 0/0 .rodata          @6591 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6591 = 4000.0f;
COMPILER_STRIP_GATE(0x80735CFC, &lit_6591);
#pragma pop

/* 80735D00-80735D04 0001D8 0004+00 0/0 0/0 0/0 .rodata          @6592 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6592 = 8036.0f;
COMPILER_STRIP_GATE(0x80735D00, &lit_6592);
#pragma pop

/* 80735D04-80735D08 0001DC 0004+00 0/1 0/0 0/0 .rodata          @7495 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7495 = 95.0f;
COMPILER_STRIP_GATE(0x80735D04, &lit_7495);
#pragma pop

/* 80735D08-80735D0C 0001E0 0004+00 0/1 0/0 0/0 .rodata          @7496 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7496 = -5.0f;
COMPILER_STRIP_GATE(0x80735D08, &lit_7496);
#pragma pop

/* 80735D0C-80735D0C 0001E4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80735D1E = "E_OC2";
SECTION_DEAD static char const* const stringBase_80735D24 = "E_oc";
#pragma pop

/* 80734DA8-807352AC 0088C8 0504+00 1/1 0/0 0/0 .text            create__8daE_OC_cFv */
void daE_OC_c::create() {
    // NONMATCHING
}

/* 807352AC-80735378 008DCC 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80735378-807353FC 008E98 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 807353FC-80735444 008F1C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80735444-8073548C 008F64 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8073548C-807354E8 008FAC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 807354E8-80735558 009008 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80735558-807355C8 009078 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 807355C8-807355E8 0090E8 0020+00 1/0 0/0 0/0 .text            daE_OC_Create__FP8daE_OC_c */
static void daE_OC_Create(daE_OC_c* param_0) {
    // NONMATCHING
}

/* 807355E8-80735630 009108 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80735630-80735678 009150 0048+00 2/1 0/0 0/0 .text            __dt__12daE_OC_HIO_cFv */
daE_OC_HIO_c::~daE_OC_HIO_c() {
    // NONMATCHING
}

/* 80735678-807356B4 009198 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_e_oc_cpp */
void __sinit_d_a_e_oc_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80735678, __sinit_d_a_e_oc_cpp);
#pragma pop

/* 807356B4-807356BC 0091D4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_807356B4() {
    // NONMATCHING
}

/* 807356BC-807356C4 0091DC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_807356BC() {
    // NONMATCHING
}

/* 807356C4-80735AD8 0091E4 0414+00 1/1 0/0 0/0 .text
 * setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz */
static void setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz* param_2,
                                   cXyz* param_3) {
    // NONMATCHING
}

/* 80735AD8-80735B14 0095F8 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 807360A4-807360A8 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_807360A4[4];
#pragma pop

/* 807360A8-807360AC 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_807360A8[4];
#pragma pop

/* 807360AC-807360B0 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_807360AC[4];
#pragma pop

/* 807360B0-807360B4 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_807360B0[4];
#pragma pop

/* 807360B4-807360B8 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807360B4[4];
#pragma pop

/* 807360B8-807360BC 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807360B8[4];
#pragma pop

/* 807360BC-807360C0 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_807360BC[4];
#pragma pop

/* 807360C0-807360C4 0000C8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_807360C0[4];
#pragma pop

/* 807360C4-807360C8 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_807360C4[4];
#pragma pop

/* 807360C8-807360CC 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_807360C8[4];
#pragma pop

/* 807360CC-807360D0 0000D4 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_807360CC[4];
#pragma pop

/* 807360D0-807360D4 0000D8 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_807360D0[4];
#pragma pop

/* 807360D4-807360D8 0000DC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_807360D4[4];
#pragma pop

/* 807360D8-807360DC 0000E0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807360D8[4];
#pragma pop

/* 807360DC-807360E0 0000E4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_807360DC[4];
#pragma pop

/* 807360E0-807360E4 0000E8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_807360E0[4];
#pragma pop

/* 807360E4-807360E8 0000EC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_807360E4[4];
#pragma pop

/* 807360E8-807360EC 0000F0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_807360E8[4];
#pragma pop

/* 807360EC-807360F0 0000F4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_807360EC[4];
#pragma pop

/* 807360F0-807360F4 0000F8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_807360F0[4];
#pragma pop

/* 807360F4-807360F8 0000FC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_807360F4[4];
#pragma pop

/* 807360F8-807360FC 000100 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807360F8[4];
#pragma pop

/* 807360FC-80736100 000104 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807360FC[4];
#pragma pop

/* 80736100-80736104 000108 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80736100[4];
#pragma pop

/* 80736104-80736108 00010C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80736104[4];
#pragma pop

/* 80735D0C-80735D0C 0001E4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */