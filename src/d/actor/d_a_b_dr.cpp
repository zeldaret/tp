/**
 * @file d_a_b_dr.cpp
 * 
*/

#include "d/actor/d_a_b_dr.h"
#include "dol2asm.h"
#include "d/d_camera.h"

//
// Forward References:
//

extern "C" void __ct__12daB_DR_HIO_cFv();
extern "C" void ctrlJoint__8daB_DR_cFP8J3DJointP8J3DModel();
extern "C" void __dt__4cXyzFv();
extern "C" void JointCallBack__8daB_DR_cFP8J3DJointi();
extern "C" void draw__8daB_DR_cFv();
extern "C" static void daB_DR_Draw__FP8daB_DR_c();
extern "C" void setBck__8daB_DR_cFiUcff();
extern "C" void setActionMode__8daB_DR_cFii();
extern "C" void mGlider_WindPosSet__8daB_DR_cFv();
extern "C" void mBoot_c_tranceSet__8daB_DR_cFb();
extern "C" void mStatusONOFF__8daB_DR_cFi();
extern "C" void setSe__8daB_DR_cFv();
extern "C" void setDeathLightEffect__8daB_DR_cFv();
extern "C" void chkPartCreate__8daB_DR_cFb();
extern "C" void mHabatakiAnmSet__8daB_DR_cFi();
extern "C" void mGlider_AniSet__8daB_DR_cFb();
extern "C" void mGliderAtAniSet__8daB_DR_cFv();
extern "C" void tail_hit_check__8daB_DR_cFv();
extern "C" void week_hit_check__8daB_DR_cFv();
extern "C" void mTimerClr__8daB_DR_cFv();
extern "C" void mCountClr__8daB_DR_cFv();
extern "C" void mAllClr__8daB_DR_cFv();
extern "C" void mHeadAngleSet__8daB_DR_cFv();
extern "C" void flapMove__8daB_DR_cFb();
extern "C" void revolutionMove__8daB_DR_cFv();
extern "C" void mPlayerHighCheck__8daB_DR_cFv();
extern "C" void mBgFallGroundCheck__8daB_DR_cFv();
extern "C" void normalHoverMove__8daB_DR_cFv();
extern "C" void executeWait__8daB_DR_cFv();
extern "C" void executeFlyWait__8daB_DR_cFv();
extern "C" void executeTailHit__8daB_DR_cFv();
extern "C" void executeWeekHit__8daB_DR_cFv();
extern "C" void mBreathSet__8daB_DR_cFv();
extern "C" void mBreathHighSet__8daB_DR_cFb();
extern "C" void mFeintBreath__8daB_DR_cFv();
extern "C" void executeBreathAttack__8daB_DR_cFv();
extern "C" void executeWindAttack__8daB_DR_cFv();
extern "C" void mGliderMoveSub__8daB_DR_cFf();
extern "C" void executeGliderAttack__8daB_DR_cFv();
extern "C" void executePillarSearch__8daB_DR_cFv();
extern "C" void executePillarWait__8daB_DR_cFv();
extern "C" void startDemoCheck__8daB_DR_cFv();
extern "C" void executeDamageDemo__8daB_DR_cFv();
extern "C" void executeMiddleDemo__8daB_DR_cFv();
extern "C" void executeDead__8daB_DR_cFv();
extern "C" void executeBullet__8daB_DR_cFv();
extern "C" void executeParts__8daB_DR_cFv();
extern "C" void action__8daB_DR_cFv();
extern "C" void action_fire__8daB_DR_cFv();
extern "C" void action_parts__8daB_DR_cFv();
extern "C" void mtx_set__8daB_DR_cFv();
extern "C" void parts_mtx_set__8daB_DR_cFv();
extern "C" void cc_set__8daB_DR_cFv();
extern "C" void down_cc_set__8daB_DR_cFv();
extern "C" void demo_skip__8daB_DR_cFi();
extern "C" void DemoSkipCallBack__8daB_DR_cFPvi();
extern "C" void execute__8daB_DR_cFv();
extern "C" static void daB_DR_Execute__FP8daB_DR_c();
extern "C" static bool daB_DR_IsDelete__FP8daB_DR_c();
extern "C" void _delete__8daB_DR_cFv();
extern "C" static void daB_DR_Delete__FP8daB_DR_c();
extern "C" void CreateHeap__8daB_DR_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daB_DR_cFv();
extern "C" void __ct__8daB_DR_cFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" static void daB_DR_Create__FP8daB_DR_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daB_DR_HIO_cFv();
extern "C" void func_805C6BDC(void* _this, int*);
extern "C" void func_805C6BF8(void* _this, u8*);
extern "C" void __sinit_d_a_b_dr_cpp();
extern "C" static void func_805C6C50();
extern "C" static void func_805C6C58();
extern "C" extern char const* const d_a_b_dr__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void mDoMtx_MtxToRot__FPA4_CfP5csXyz();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMove__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi();
extern "C" void fopAcM_createWarpHole__FPC4cXyzPC5csXyziUcUcUc();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_onStageBossEnemy__Fi();
extern "C" void dComIfGs_onZoneSwitch__Fii();
extern "C" void dComIfGs_isZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void onSwitch__12dSv_danBit_cFi();
extern "C" void offSwitch__12dSv_danBit_cFi();
extern "C" void setRoom__13dSv_restart_cFRC4cXyzsSc();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz();
extern "C" void dKyw_custom_windpower__Ff();
extern "C" void dKyw_evt_wind_set__Fss();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void GetLockonList__12dAttention_cFl();
extern "C" void LockonTruth__12dAttention_cFv();
extern "C" void getActor__10dAttList_cFv();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetGroundUpY__9dBgS_AcchFf();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void daNpcF_getPlayerInfoFromPlayerList__FiiR4cXyzR5csXyz();
extern "C" void checkMasterSwordEquip__9daPy_py_cFv();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void SetTrimTypeForce__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyz();
extern "C" void dCam_getBody__Fv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dMw_onPauseWindow__Fv();
extern "C" void dMw_offPauseWindow__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void atan2sX_Z__4cXyzCFv();
extern "C" void atan2sY_XZ__4cXyzCFv();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalc0__FPfff();
extern "C" void cLib_addCalcPos__FP4cXyzRC4cXyzfff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void func_80280808();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void bgmStart__8Z2SeqMgrFUlUll();
extern "C" void bgmStop__8Z2SeqMgrFUll();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void bgmStreamPrepare__8Z2SeqMgrFUl();
extern "C" void bgmStreamPlay__8Z2SeqMgrFv();
extern "C" void changeBgmStatus__8Z2SeqMgrFl();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecP3VecUcUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void _savegpr_21();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_21();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
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
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u8 struct_80450C98[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 805C6C74-805C6C78 000000 0004+00 33/33 0/0 0/0 .rodata          @3800 */
SECTION_RODATA static f32 const lit_3800 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x805C6C74, &lit_3800);

/* 805C6C78-805C6C7C 000004 0004+00 0/6 0/0 0/0 .rodata          @3801 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3801 = 2.0f;
COMPILER_STRIP_GATE(0x805C6C78, &lit_3801);
#pragma pop

/* 805C6C7C-805C6C80 000008 0004+00 0/7 0/0 0/0 .rodata          @3802 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3802 = 50.0f;
COMPILER_STRIP_GATE(0x805C6C7C, &lit_3802);
#pragma pop

/* 805C6C80-805C6C84 00000C 0004+00 0/4 0/0 0/0 .rodata          @3803 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3803 = 2000.0f;
COMPILER_STRIP_GATE(0x805C6C80, &lit_3803);
#pragma pop

/* 805C6C84-805C6C88 000010 0004+00 0/1 0/0 0/0 .rodata          @3804 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3804 = 15.0f;
COMPILER_STRIP_GATE(0x805C6C84, &lit_3804);
#pragma pop

/* 805C6C88-805C6C8C 000014 0004+00 0/2 0/0 0/0 .rodata          @3805 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3805 = 25.0f;
COMPILER_STRIP_GATE(0x805C6C88, &lit_3805);
#pragma pop

/* 805C6C8C-805C6C90 000018 0004+00 0/6 0/0 0/0 .rodata          @3806 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3806 = 1000.0f;
COMPILER_STRIP_GATE(0x805C6C8C, &lit_3806);
#pragma pop

/* 805C6C90-805C6C94 00001C 0004+00 0/13 0/0 0/0 .rodata          @3807 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3807 = 20.0f;
COMPILER_STRIP_GATE(0x805C6C90, &lit_3807);
#pragma pop

/* 805C6C94-805C6C98 000020 0004+00 0/10 0/0 0/0 .rodata          @3808 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3808 = 5.0f;
COMPILER_STRIP_GATE(0x805C6C94, &lit_3808);
#pragma pop

/* 805C6C98-805C6C9C 000024 0004+00 0/12 0/0 0/0 .rodata          @3809 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3809 = 10.0f;
COMPILER_STRIP_GATE(0x805C6C98, &lit_3809);
#pragma pop

/* 805C6C9C-805C6CA0 000028 0004+00 0/1 0/0 0/0 .rodata          @3810 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3810 = 1800.0f;
COMPILER_STRIP_GATE(0x805C6C9C, &lit_3810);
#pragma pop

/* 805C7248-805C7254 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 805C7254-805C7268 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 805C7268-805C72AC 000020 0044+00 0/1 0/0 0/0 .data cc_dr_week_src__22@unnamed@d_a_b_dr_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_805C7268[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x40, 0x02, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x03, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 805C72AC-805C72EC 000064 0040+00 0/1 0/0 0/0 .data cc_dr_tail_src__22@unnamed@d_a_b_dr_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_805C72AC[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x03, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 805C72EC-805C732C 0000A4 0040+00 0/1 0/0 0/0 .data
 * cc_dr_breath_at_src__22@unnamed@d_a_b_dr_cpp@                */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_805C72EC[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x0D, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 805C732C-805C736C 0000E4 0040+00 0/1 0/0 0/0 .data cc_dr_wind_at_src__22@unnamed@d_a_b_dr_cpp@
 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_805C732C[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 805C736C-805C73AC 000124 0040+00 0/1 0/0 0/0 .data cc_dr_foot_at_src__22@unnamed@d_a_b_dr_cpp@
 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_805C736C[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 805C73AC-805C73F0 000164 0044+00 0/1 0/0 0/0 .data cc_pillar_src__22@unnamed@d_a_b_dr_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_805C73AC[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x15,
    0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x14, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 805C73F0-805C7434 0001A8 0044+00 0/1 0/0 0/0 .data cc_down_src__22@unnamed@d_a_b_dr_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_805C73F0[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x15,
    0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x14, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00,
};
#pragma pop

/* 805C7434-805C7474 0001EC 0040+00 0/1 0/0 0/0 .data cc_downSph_src__22@unnamed@d_a_b_dr_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_805C7434[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x15, 0x0D, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x14, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 805C7474-805C7478 00022C 0004+00 1/1 0/0 0/0 .data            mBreakDt$3901 */
SECTION_DATA static u8 mBreakDt[4] = {
    0x00,
    0x03,
    0x04,
    0x02,
};

/* 805C7478-805C7554 -00001 00DC+00 1/1 0/0 0/0 .data            @4342 */
SECTION_DATA static void* lit_4342[55] = {
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x4E8), (void*)(((char*)setSe__8daB_DR_cFv) + 0x548),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x678), (void*)(((char*)setSe__8daB_DR_cFv) + 0x88C),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x528), (void*)(((char*)setSe__8daB_DR_cFv) + 0x88C),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x88C), (void*)(((char*)setSe__8daB_DR_cFv) + 0x29C),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x6F0), (void*)(((char*)setSe__8daB_DR_cFv) + 0x88C),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x3C0), (void*)(((char*)setSe__8daB_DR_cFv) + 0x404),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x3C0), (void*)(((char*)setSe__8daB_DR_cFv) + 0x88C),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x88C), (void*)(((char*)setSe__8daB_DR_cFv) + 0x88C),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x448), (void*)(((char*)setSe__8daB_DR_cFv) + 0x88C),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x88C), (void*)(((char*)setSe__8daB_DR_cFv) + 0x88C),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x88C), (void*)(((char*)setSe__8daB_DR_cFv) + 0x4C),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x6C),  (void*)(((char*)setSe__8daB_DR_cFv) + 0x8C),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x1F4), (void*)(((char*)setSe__8daB_DR_cFv) + 0x1BC),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x710), (void*)(((char*)setSe__8daB_DR_cFv) + 0x730),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x528), (void*)(((char*)setSe__8daB_DR_cFv) + 0x4A8),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x88C), (void*)(((char*)setSe__8daB_DR_cFv) + 0x768),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x768), (void*)(((char*)setSe__8daB_DR_cFv) + 0x478),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x478), (void*)(((char*)setSe__8daB_DR_cFv) + 0x528),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x88C), (void*)(((char*)setSe__8daB_DR_cFv) + 0x788),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0xCC),  (void*)(((char*)setSe__8daB_DR_cFv) + 0x88C),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x88C), (void*)(((char*)setSe__8daB_DR_cFv) + 0x88C),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x528), (void*)(((char*)setSe__8daB_DR_cFv) + 0x88C),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x7A8), (void*)(((char*)setSe__8daB_DR_cFv) + 0x144),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0xAC),  (void*)(((char*)setSe__8daB_DR_cFv) + 0x7C8),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x800), (void*)(((char*)setSe__8daB_DR_cFv) + 0x838),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x788), (void*)(((char*)setSe__8daB_DR_cFv) + 0x528),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x528), (void*)(((char*)setSe__8daB_DR_cFv) + 0x478),
    (void*)(((char*)setSe__8daB_DR_cFv) + 0x870),
};

/* 805C7554-805C755C 00030C 0008+00 1/1 0/0 0/0 .data            w_eff_id$4346 */
SECTION_DATA static u8 w_eff_id[8] = {
    0x85, 0x4C, 0x85, 0x4D, 0x85, 0x4E, 0x85, 0x4F,
};

/* 805C755C-805C75E4 -00001 0088+00 1/1 0/0 0/0 .data            @4528 */
SECTION_DATA static void* lit_4528[34] = {
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x244),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x168),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x1F8),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0xFC),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x4C),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0xE4),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x98),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x298),
    (void*)(((char*)mHabatakiAnmSet__8daB_DR_cFi) + 0x2B0),
};

/* 805C75E4-805C7648 -00001 0064+00 1/1 0/0 0/0 .data            @4618 */
SECTION_DATA static void* lit_4618[25] = {
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x2B8),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x174),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x1DC),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x248),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x320),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x2B8),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x320),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0xEC),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x320),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x320),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x320),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x320),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x320),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x320),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x320),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x320),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x320),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x320),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x320),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x320),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x320),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x320),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x320),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0x84),
    (void*)(((char*)mGlider_AniSet__8daB_DR_cFb) + 0xEC),
};

/* 805C7648-805C76A0 -00001 0058+00 1/1 0/0 0/0 .data            @4662 */
SECTION_DATA static void* lit_4662[22] = {
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x9C),
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x3C),
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x84),
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x14C),
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x3C),
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x14C),
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x14C),
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x14C),
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x14C),
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x14C),
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x14C),
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x14C),
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x14C),
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x14C),
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x14C),
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x14C),
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x14C),
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x14C),
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x14C),
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x14C),
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x14C),
    (void*)(((char*)mGliderAtAniSet__8daB_DR_cFv) + 0x100),
};

/* 805C76A0-805C76A8 000458 0008+00 1/1 0/0 0/0 .data            effId$5784 */
SECTION_DATA static u8 effId[8] = {
    0x89, 0x9B, 0x89, 0x9C, 0x89, 0x9D, 0x89, 0x9E,
};

/* 805C76A8-805C7704 -00001 005C+00 1/1 0/0 0/0 .data            @6776 */
SECTION_DATA static void* lit_6776[23] = {
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0x5C),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0x124),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0x18C),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0x18C),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0xD90),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0xD90),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0xD90),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0xD90),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0xD90),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0xD90),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0x8B4),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0x7EC),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0xD90),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0xD90),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0xD90),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0xD90),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0xD90),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0xD90),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0xD90),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0xD90),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0xADC),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0xB94),
    (void*)(((char*)executeGliderAttack__8daB_DR_cFv) + 0xBF4),
};

/* 805C7704-805C773C -00001 0038+00 1/1 0/0 0/0 .data            @7387 */
SECTION_DATA static void* lit_7387[14] = {
    (void*)(((char*)executeDamageDemo__8daB_DR_cFv) + 0x64),
    (void*)(((char*)executeDamageDemo__8daB_DR_cFv) + 0xB0),
    (void*)(((char*)executeDamageDemo__8daB_DR_cFv) + 0x1D4),
    (void*)(((char*)executeDamageDemo__8daB_DR_cFv) + 0x5F0),
    (void*)(((char*)executeDamageDemo__8daB_DR_cFv) + 0x5F0),
    (void*)(((char*)executeDamageDemo__8daB_DR_cFv) + 0x5F0),
    (void*)(((char*)executeDamageDemo__8daB_DR_cFv) + 0x5F0),
    (void*)(((char*)executeDamageDemo__8daB_DR_cFv) + 0x5F0),
    (void*)(((char*)executeDamageDemo__8daB_DR_cFv) + 0x5F0),
    (void*)(((char*)executeDamageDemo__8daB_DR_cFv) + 0x5F0),
    (void*)(((char*)executeDamageDemo__8daB_DR_cFv) + 0x354),
    (void*)(((char*)executeDamageDemo__8daB_DR_cFv) + 0x3C4),
    (void*)(((char*)executeDamageDemo__8daB_DR_cFv) + 0x4D8),
    (void*)(((char*)executeDamageDemo__8daB_DR_cFv) + 0x59C),
};

/* 805C773C-805C776C -00001 0030+00 1/1 0/0 0/0 .data            @7559 */
SECTION_DATA static void* lit_7559[12] = {
    (void*)(((char*)executeParts__8daB_DR_cFv) + 0x50),
    (void*)(((char*)executeParts__8daB_DR_cFv) + 0xD8),
    (void*)(((char*)executeParts__8daB_DR_cFv) + 0x128),
    (void*)(((char*)executeParts__8daB_DR_cFv) + 0x194),
    (void*)(((char*)executeParts__8daB_DR_cFv) + 0x2C0),
    (void*)(((char*)executeParts__8daB_DR_cFv) + 0x2C0),
    (void*)(((char*)executeParts__8daB_DR_cFv) + 0x2C0),
    (void*)(((char*)executeParts__8daB_DR_cFv) + 0x2C0),
    (void*)(((char*)executeParts__8daB_DR_cFv) + 0x2C0),
    (void*)(((char*)executeParts__8daB_DR_cFv) + 0x2C0),
    (void*)(((char*)executeParts__8daB_DR_cFv) + 0x1B8),
    (void*)(((char*)executeParts__8daB_DR_cFv) + 0x2A8),
};

/* 805C776C-805C77A4 -00001 0038+00 1/1 0/0 0/0 .data            @7648 */
SECTION_DATA static void* lit_7648[14] = {
    (void*)(((char*)action__8daB_DR_cFv) + 0x5C),  (void*)(((char*)action__8daB_DR_cFv) + 0x68),
    (void*)(((char*)action__8daB_DR_cFv) + 0x74),  (void*)(((char*)action__8daB_DR_cFv) + 0x88),
    (void*)(((char*)action__8daB_DR_cFv) + 0x9C),  (void*)(((char*)action__8daB_DR_cFv) + 0xB0),
    (void*)(((char*)action__8daB_DR_cFv) + 0xB0),  (void*)(((char*)action__8daB_DR_cFv) + 0xBC),
    (void*)(((char*)action__8daB_DR_cFv) + 0xD0),  (void*)(((char*)action__8daB_DR_cFv) + 0xE4),
    (void*)(((char*)action__8daB_DR_cFv) + 0x130), (void*)(((char*)action__8daB_DR_cFv) + 0xF8),
    (void*)(((char*)action__8daB_DR_cFv) + 0x10C), (void*)(((char*)action__8daB_DR_cFv) + 0x120),
};

/* 805C77A4-805C77AC 00055C 0008+00 1/1 0/0 0/0 .data            effLId$7688 */
SECTION_DATA static u8 effLId[8] = {
    0x89, 0xE4, 0x89, 0xE5, 0x89, 0xE6, 0x89, 0xE7,
};

/* 805C77AC-805C77B4 000564 0008+00 1/1 0/0 0/0 .data            effRId$7689 */
SECTION_DATA static u8 effRId[8] = {
    0x89, 0xE8, 0x89, 0xE9, 0x89, 0xEA, 0x89, 0xEB,
};

/* 805C77B4-805C77CC 00056C 0018+00 1/1 0/0 0/0 .data            mPartDt$8292 */
SECTION_DATA static u8 mPartDt[24] = {
    0x00, 0x00, 0x00, 0x4A, 0x00, 0x00, 0x00, 0x4A, 0x00, 0x00, 0x00, 0x4B,
    0x00, 0x00, 0x00, 0x4C, 0x00, 0x00, 0x00, 0x4D, 0x00, 0x00, 0x00, 0x4E,
};

/* 805C77CC-805C77E4 000584 0018+00 0/1 0/0 0/0 .data            mParts_EstimateSizeDt$8381 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mParts_EstimateSizeDt[24] = {
    0x00, 0x00, 0x19, 0x80, 0x00, 0x00, 0x19, 0x90, 0x00, 0x00, 0x0D, 0x50,
    0x00, 0x00, 0x0D, 0x40, 0x00, 0x00, 0x0D, 0x40, 0x00, 0x00, 0x0D, 0x40,
};
#pragma pop

/* 805C77E4-805C7804 -00001 0020+00 1/0 0/0 0/0 .data            l_daB_DR_Method */
static actor_method_class l_daB_DR_Method = {
    (process_method_func)daB_DR_Create__FP8daB_DR_c,
    (process_method_func)daB_DR_Delete__FP8daB_DR_c,
    (process_method_func)daB_DR_Execute__FP8daB_DR_c,
    (process_method_func)daB_DR_IsDelete__FP8daB_DR_c,
    (process_method_func)daB_DR_Draw__FP8daB_DR_c,
};

/* 805C7804-805C7834 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_B_DR */
extern actor_process_profile_definition g_profile_B_DR = {
  fpcLy_CURRENT_e,        // mLayerID
  4,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_B_DR,              // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daB_DR_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  221,                    // mPriority
  &l_daB_DR_Method,       // sub_method
  0x04040000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 805C7834-805C7840 0005EC 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 805C7840-805C784C 0005F8 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 805C784C-805C7858 000604 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 805C7858-805C7864 000610 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 805C7864-805C7870 00061C 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 805C7870-805C787C 000628 000C+00 6/6 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 805C787C-805C78A0 000634 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_805C6C58,
    (void*)NULL,
    (void*)NULL,
    (void*)func_805C6C50,
};

/* 805C78A0-805C78AC 000658 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 805C78AC-805C78B8 000664 000C+00 2/2 0/0 0/0 .data            __vt__12daB_DR_HIO_c */
SECTION_DATA extern void* __vt__12daB_DR_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daB_DR_HIO_cFv,
};

/* 805BAE6C-805BAF80 0000EC 0114+00 1/1 0/0 0/0 .text            __ct__12daB_DR_HIO_cFv */
daB_DR_HIO_c::daB_DR_HIO_c() {
    // NONMATCHING
}

/* 805BAF80-805BB0E4 000200 0164+00 1/1 0/0 0/0 .text ctrlJoint__8daB_DR_cFP8J3DJointP8J3DModel */
void daB_DR_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 805BB0E4-805BB120 000364 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 805BB120-805BB16C 0003A0 004C+00 1/1 0/0 0/0 .text JointCallBack__8daB_DR_cFP8J3DJointi */
void daB_DR_c::JointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C6CA0-805C6CA4 00002C 0004+00 0/5 0/0 0/0 .rodata          @4010 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4010 = 6000.0f;
COMPILER_STRIP_GATE(0x805C6CA0, &lit_4010);
#pragma pop

/* 805C6CA4-805C6CA8 000030 0004+00 7/34 0/0 0/0 .rodata          @4011 */
SECTION_RODATA static u8 const lit_4011[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x805C6CA4, &lit_4011);

/* 805C6CA8-805C6CAC 000034 0004+00 2/21 0/0 0/0 .rodata          @4012 */
SECTION_RODATA static f32 const lit_4012 = 1.0f;
COMPILER_STRIP_GATE(0x805C6CA8, &lit_4012);

/* 805BB16C-805BB3E8 0003EC 027C+00 1/1 0/0 0/0 .text            draw__8daB_DR_cFv */
void daB_DR_c::draw() {
    // NONMATCHING
}

/* 805BB3E8-805BB408 000668 0020+00 1/0 0/0 0/0 .text            daB_DR_Draw__FP8daB_DR_c */
static void daB_DR_Draw(daB_DR_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C6CAC-805C6CB0 000038 0004+00 2/4 0/0 0/0 .rodata          @4022 */
SECTION_RODATA static f32 const lit_4022 = -1.0f;
COMPILER_STRIP_GATE(0x805C6CAC, &lit_4022);

/* 805C7240-805C7240 0005CC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_805C7240 = "B_DR";
#pragma pop

/* 805BB408-805BB4B4 000688 00AC+00 11/11 0/0 0/0 .text            setBck__8daB_DR_cFiUcff */
void daB_DR_c::setBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    // NONMATCHING
}

/* 805BB4B4-805BB4CC 000734 0018+00 13/13 0/0 0/0 .text            setActionMode__8daB_DR_cFii */
void daB_DR_c::setActionMode(int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C6CB0-805C6CB4 00003C 0004+00 1/1 0/0 0/0 .rodata          @4040 */
SECTION_RODATA static f32 const lit_4040 = -1000.0f;
COMPILER_STRIP_GATE(0x805C6CB0, &lit_4040);

/* 805BB4CC-805BB540 00074C 0074+00 1/1 0/0 0/0 .text            mGlider_WindPosSet__8daB_DR_cFv */
void daB_DR_c::mGlider_WindPosSet() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C6CB4-805C6CB8 000040 0004+00 0/1 0/0 0/0 .rodata          @4066 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4066 = -500.0f;
COMPILER_STRIP_GATE(0x805C6CB4, &lit_4066);
#pragma pop

/* 805C6CB8-805C6CBC 000044 0004+00 0/2 0/0 0/0 .rodata          @4067 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4067 = 500.0f;
COMPILER_STRIP_GATE(0x805C6CB8, &lit_4067);
#pragma pop

/* 805C6CBC-805C6CC0 000048 0004+00 0/2 0/0 0/0 .rodata          @4068 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4068 = 45.0f;
COMPILER_STRIP_GATE(0x805C6CBC, &lit_4068);
#pragma pop

/* 805BB540-805BB64C 0007C0 010C+00 2/2 0/0 0/0 .text            mBoot_c_tranceSet__8daB_DR_cFb */
void daB_DR_c::mBoot_c_tranceSet(bool param_0) {
    // NONMATCHING
}

/* 805BB64C-805BB6E8 0008CC 009C+00 9/9 0/0 0/0 .text            mStatusONOFF__8daB_DR_cFi */
void daB_DR_c::mStatusONOFF(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C6CC0-805C6CC4 00004C 0004+00 0/1 0/0 0/0 .rodata          @4310 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4310 = 14.0f;
COMPILER_STRIP_GATE(0x805C6CC0, &lit_4310);
#pragma pop

/* 805BB6E8-805BBFC0 000968 08D8+00 2/1 0/0 0/0 .text            setSe__8daB_DR_cFv */
void daB_DR_c::setSe() {
    // NONMATCHING
}

/* 805BBFC0-805BC0B8 001240 00F8+00 1/1 0/0 0/0 .text            setDeathLightEffect__8daB_DR_cFv */
void daB_DR_c::setDeathLightEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C6CC4-805C6CC8 000050 0004+00 0/9 0/0 0/0 .rodata          @4311 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4311 = 3.0f;
COMPILER_STRIP_GATE(0x805C6CC4, &lit_4311);
#pragma pop

/* 805C6CC8-805C6CCC 000054 0004+00 0/0 0/0 0/0 .rodata          @4312 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4312 = 18.0f;
COMPILER_STRIP_GATE(0x805C6CC8, &lit_4312);
#pragma pop

/* 805C6CCC-805C6CD0 000058 0004+00 0/2 0/0 0/0 .rodata          @4313 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4313 = 30.0f;
COMPILER_STRIP_GATE(0x805C6CCC, &lit_4313);
#pragma pop

/* 805C6CD0-805C6CD4 00005C 0004+00 0/0 0/0 0/0 .rodata          @4314 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4314 = 9.0f;
COMPILER_STRIP_GATE(0x805C6CD0, &lit_4314);
#pragma pop

/* 805C6CD4-805C6CD8 000060 0004+00 0/0 0/0 0/0 .rodata          @4315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4315 = 76.0f;
COMPILER_STRIP_GATE(0x805C6CD4, &lit_4315);
#pragma pop

/* 805C6CD8-805C6CDC 000064 0004+00 0/0 0/0 0/0 .rodata          @4316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4316 = 42.0f;
COMPILER_STRIP_GATE(0x805C6CD8, &lit_4316);
#pragma pop

/* 805C6CDC-805C6CE0 000068 0004+00 0/0 0/0 0/0 .rodata          @4317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4317 = 12.0f;
COMPILER_STRIP_GATE(0x805C6CDC, &lit_4317);
#pragma pop

/* 805C6CE0-805C6CE4 00006C 0004+00 0/0 0/0 0/0 .rodata          @4318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4318 = 55.0f;
COMPILER_STRIP_GATE(0x805C6CE0, &lit_4318);
#pragma pop

/* 805C6CE4-805C6CE8 000070 0004+00 0/0 0/0 0/0 .rodata          @4319 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4319 = 103.0f;
COMPILER_STRIP_GATE(0x805C6CE4, &lit_4319);
#pragma pop

/* 805C6CE8-805C6CEC 000074 0004+00 0/0 0/0 0/0 .rodata          @4320 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4320 = 143.0f;
COMPILER_STRIP_GATE(0x805C6CE8, &lit_4320);
#pragma pop

/* 805C6CEC-805C6CF0 000078 0004+00 0/1 0/0 0/0 .rodata          @4321 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4321 = 7.0f;
COMPILER_STRIP_GATE(0x805C6CEC, &lit_4321);
#pragma pop

/* 805C6CF0-805C6CF4 00007C 0004+00 0/5 0/0 0/0 .rodata          @4322 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4322 = 40.0f;
COMPILER_STRIP_GATE(0x805C6CF0, &lit_4322);
#pragma pop

/* 805C6CF4-805C6CF8 000080 0004+00 0/1 0/0 0/0 .rodata          @4323 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4323 = 75.0f;
COMPILER_STRIP_GATE(0x805C6CF4, &lit_4323);
#pragma pop

/* 805C6CF8-805C6CFC 000084 0004+00 0/0 0/0 0/0 .rodata          @4324 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4324 = 177.0f;
COMPILER_STRIP_GATE(0x805C6CF8, &lit_4324);
#pragma pop

/* 805C6CFC-805C6D00 000088 0004+00 0/0 0/0 0/0 .rodata          @4325 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4325 = 210.0f;
COMPILER_STRIP_GATE(0x805C6CFC, &lit_4325);
#pragma pop

/* 805C6D00-805C6D04 00008C 0004+00 0/0 0/0 0/0 .rodata          @4326 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4326 = 243.0f;
COMPILER_STRIP_GATE(0x805C6D00, &lit_4326);
#pragma pop

/* 805C6D04-805C6D08 000090 0004+00 0/0 0/0 0/0 .rodata          @4327 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4327 = 270.0f;
COMPILER_STRIP_GATE(0x805C6D04, &lit_4327);
#pragma pop

/* 805C6D08-805C6D0C 000094 0004+00 0/0 0/0 0/0 .rodata          @4328 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4328 = 309.0f;
COMPILER_STRIP_GATE(0x805C6D08, &lit_4328);
#pragma pop

/* 805C6D0C-805C6D10 000098 0004+00 0/0 0/0 0/0 .rodata          @4329 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4329 = 53.0f;
COMPILER_STRIP_GATE(0x805C6D0C, &lit_4329);
#pragma pop

/* 805C6D10-805C6D14 00009C 0004+00 0/0 0/0 0/0 .rodata          @4330 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4330 = 95.0f;
COMPILER_STRIP_GATE(0x805C6D10, &lit_4330);
#pragma pop

/* 805C6D14-805C6D18 0000A0 0004+00 0/0 0/0 0/0 .rodata          @4331 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4331 = 115.0f;
COMPILER_STRIP_GATE(0x805C6D14, &lit_4331);
#pragma pop

/* 805C6D18-805C6D1C 0000A4 0004+00 0/0 0/0 0/0 .rodata          @4332 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4332 = 72.0f;
COMPILER_STRIP_GATE(0x805C6D18, &lit_4332);
#pragma pop

/* 805C6D1C-805C6D20 0000A8 0004+00 0/0 0/0 0/0 .rodata          @4333 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4333 = 88.0f;
COMPILER_STRIP_GATE(0x805C6D1C, &lit_4333);
#pragma pop

/* 805C6D20-805C6D24 0000AC 0004+00 0/0 0/0 0/0 .rodata          @4334 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4334 = 107.0f;
COMPILER_STRIP_GATE(0x805C6D20, &lit_4334);
#pragma pop

/* 805C6D24-805C6D28 0000B0 0004+00 0/0 0/0 0/0 .rodata          @4335 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4335 = 17.0f;
COMPILER_STRIP_GATE(0x805C6D24, &lit_4335);
#pragma pop

/* 805C6D28-805C6D2C 0000B4 0004+00 0/0 0/0 0/0 .rodata          @4336 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4336 = 6.0f;
COMPILER_STRIP_GATE(0x805C6D28, &lit_4336);
#pragma pop

/* 805C6D2C-805C6D30 0000B8 0004+00 0/0 0/0 0/0 .rodata          @4337 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4337 = 36.0f;
COMPILER_STRIP_GATE(0x805C6D2C, &lit_4337);
#pragma pop

/* 805C6D30-805C6D34 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4338 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4338 = 8.0f;
COMPILER_STRIP_GATE(0x805C6D30, &lit_4338);
#pragma pop

/* 805C6D34-805C6D38 0000C0 0004+00 0/0 0/0 0/0 .rodata          @4339 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4339 = 21.0f;
COMPILER_STRIP_GATE(0x805C6D34, &lit_4339);
#pragma pop

/* 805C6D38-805C6D3C 0000C4 0004+00 0/0 0/0 0/0 .rodata          @4340 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4340 = 26.0f;
COMPILER_STRIP_GATE(0x805C6D38, &lit_4340);
#pragma pop

/* 805C6D3C-805C6D40 0000C8 0004+00 0/0 0/0 0/0 .rodata          @4341 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4341 = 31.0f;
COMPILER_STRIP_GATE(0x805C6D3C, &lit_4341);
#pragma pop

/* 805C6D40-805C6FCC 0000CC 0288+04 1/1 0/0 0/0 .rodata          BREAK_PARTS_DT$4370 */
SECTION_RODATA static u8 const BREAK_PARTS_DT[648 + 4 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x11,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x11,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x12,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x12,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x13,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x13,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x02,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x02,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x2B,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x2B,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x2C,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x2C,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x2D,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x2D,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x2E,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x2E,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x06,
    0x00,
    0x00,
    0x00,
    0x04,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x12,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x12,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x13,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x13,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x10,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x10,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x1A,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x1A,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x2B,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x2B,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x2E,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x2E,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x0C,
    0x00,
    0x00,
    0x00,
    0x05,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x13,
    0x00,
    0x00,
    0x00,
    0x02,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x12,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x12,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x11,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x11,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x10,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x10,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x10,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x10,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x1A,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x1A,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x1A,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x1A,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x1A,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x1A,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x2B,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x2B,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x80,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x2C,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x2C,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x2D,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x2D,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x2E,
    0x00,
    0x00,
    0x00,
    0x00,
    0x3F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x2E,
    0x00,
    0x00,
    0x00,
    0x01,
    0x3F,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x2F,
    0x00,
    0x00,
    0x00,
    0x03,
    0x3F,
    0x80,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x805C6D40, &BREAK_PARTS_DT);

/* 805BC0B8-805BC248 001338 0190+00 3/3 0/0 0/0 .text            chkPartCreate__8daB_DR_cFb */
void daB_DR_c::chkPartCreate(bool param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C6FCC-805C6FD4 000358 0008+00 0/5 0/0 0/0 .rodata          @4530 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4530[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805C6FCC, &lit_4530);
#pragma pop

/* 805C78C0-805C78C4 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 805C78C4-805C78C8 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 805C78C8-805C78CC 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 805C78CC-805C78D0 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 805C78D0-805C78D4 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 805C78D4-805C78D8 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 805C78D8-805C78DC 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 805C78DC-805C78E0 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 805C78E0-805C78E4 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 805C78E4-805C78E8 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 805C78E8-805C78EC 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 805C78EC-805C78F0 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 805C78F0-805C78F4 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 805C78F4-805C78F8 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 805C78F8-805C78FC 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 805C78FC-805C7900 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 805C78FC 0001+00 data_805C78FC @1009 */
/* 805C78FD 0003+00 data_805C78FD None */
static u8 struct_805C78FC[4];

/* 805C7900-805C790C 000048 000C+00 1/1 0/0 0/0 .bss             @3795 */
static u8 lit_3795[12];

/* 805C790C-805C7974 000054 0068+00 18/18 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[104];

/* 805BC248-805BC57C 0014C8 0334+00 7/6 0/0 0/0 .text            mHabatakiAnmSet__8daB_DR_cFi */
void daB_DR_c::mHabatakiAnmSet(int param_0) {
    // NONMATCHING
}

/* 805BC57C-805BC8B4 0017FC 0338+00 3/2 0/0 0/0 .text            mGlider_AniSet__8daB_DR_cFb */
void daB_DR_c::mGlider_AniSet(bool param_0) {
    // NONMATCHING
}

/* 805BC8B4-805BCA10 001B34 015C+00 2/1 0/0 0/0 .text            mGliderAtAniSet__8daB_DR_cFv */
void daB_DR_c::mGliderAtAniSet() {
    // NONMATCHING
}

/* 805BCA10-805BCAD4 001C90 00C4+00 1/1 0/0 0/0 .text            tail_hit_check__8daB_DR_cFv */
void daB_DR_c::tail_hit_check() {
    // NONMATCHING
}

/* 805BCAD4-805BCBD0 001D54 00FC+00 1/1 0/0 0/0 .text            week_hit_check__8daB_DR_cFv */
void daB_DR_c::week_hit_check() {
    // NONMATCHING
}

/* 805BCBD0-805BCBF4 001E50 0024+00 1/1 0/0 0/0 .text            mTimerClr__8daB_DR_cFv */
void daB_DR_c::mTimerClr() {
    // NONMATCHING
}

/* 805BCBF4-805BCC18 001E74 0024+00 1/1 0/0 0/0 .text            mCountClr__8daB_DR_cFv */
void daB_DR_c::mCountClr() {
    // NONMATCHING
}

/* 805BCC18-805BCC4C 001E98 0034+00 12/12 0/0 0/0 .text            mAllClr__8daB_DR_cFv */
void daB_DR_c::mAllClr() {
    // NONMATCHING
}

/* 805BCC4C-805BCD7C 001ECC 0130+00 1/1 0/0 0/0 .text            mHeadAngleSet__8daB_DR_cFv */
void daB_DR_c::mHeadAngleSet() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C6FD4-805C6FD8 000360 0004+00 0/0 0/0 0/0 .rodata          @4617 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4617 = 34.0f;
COMPILER_STRIP_GATE(0x805C6FD4, &lit_4617);
#pragma pop

/* 805C6FD8-805C6FDC 000364 0004+00 0/2 0/0 0/0 .rodata          @4794 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4794 = 4000.0f;
COMPILER_STRIP_GATE(0x805C6FD8, &lit_4794);
#pragma pop

/* 805C6FDC-805C6FE0 000368 0004+00 0/7 0/0 0/0 .rodata          @4795 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4795 = -1000000000.0f;
COMPILER_STRIP_GATE(0x805C6FDC, &lit_4795);
#pragma pop

/* 805C6FE0-805C6FE4 00036C 0004+00 0/6 0/0 0/0 .rodata          @4796 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4796 = 300.0f;
COMPILER_STRIP_GATE(0x805C6FE0, &lit_4796);
#pragma pop

/* 805C6FE4-805C6FE8 000370 0004+00 0/3 0/0 0/0 .rodata          @4797 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4797 = 4.0f;
COMPILER_STRIP_GATE(0x805C6FE4, &lit_4797);
#pragma pop

/* 805C6FE8-805C6FEC 000374 0004+00 1/12 0/0 0/0 .rodata          @4798 */
SECTION_RODATA static f32 const lit_4798 = 100.0f;
COMPILER_STRIP_GATE(0x805C6FE8, &lit_4798);

/* 805BCD7C-805BCEA4 001FFC 0128+00 2/2 0/0 0/0 .text            flapMove__8daB_DR_cFb */
void daB_DR_c::flapMove(bool param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C6FEC-805C6FF0 000378 0004+00 0/3 0/0 0/0 .rodata          @4847 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4847 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x805C6FEC, &lit_4847);
#pragma pop

/* 805C6FF0-805C6FF4 00037C 0004+00 0/3 0/0 0/0 .rodata          @4848 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4848 = 1500.0f;
COMPILER_STRIP_GATE(0x805C6FF0, &lit_4848);
#pragma pop

/* 805BCEA4-805BD05C 002124 01B8+00 3/3 0/0 0/0 .text            revolutionMove__8daB_DR_cFv */
void daB_DR_c::revolutionMove() {
    // NONMATCHING
}

/* 805BD05C-805BD15C 0022DC 0100+00 11/11 0/0 0/0 .text            mPlayerHighCheck__8daB_DR_cFv */
void daB_DR_c::mPlayerHighCheck() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C6FF4-805C6FF8 000380 0004+00 0/1 0/0 0/0 .rodata          @4946 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4946 = 80.0f;
COMPILER_STRIP_GATE(0x805C6FF4, &lit_4946);
#pragma pop

/* 805BD15C-805BD3E4 0023DC 0288+00 3/3 0/0 0/0 .text            mBgFallGroundCheck__8daB_DR_cFv */
void daB_DR_c::mBgFallGroundCheck() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C6FF8-805C6FFC 000384 0004+00 0/3 0/0 0/0 .rodata          @5001 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5001 = 400.0f;
COMPILER_STRIP_GATE(0x805C6FF8, &lit_5001);
#pragma pop

/* 805C6FFC-805C7000 000388 0004+00 0/1 0/0 0/0 .rodata          @5002 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5002 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x805C6FFC, &lit_5002);
#pragma pop

/* 805C7000-805C7004 00038C 0004+00 0/1 0/0 0/0 .rodata          @5003 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5003 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x805C7000, &lit_5003);
#pragma pop

/* 805C7004-805C700C 000390 0004+04 0/1 0/0 0/0 .rodata          @5004 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5004[1 + 1 /* padding */] = {
    1.0f / 10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x805C7004, &lit_5004);
#pragma pop

/* 805C700C-805C7014 000398 0008+00 0/9 0/0 0/0 .rodata          @5005 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5005[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805C700C, &lit_5005);
#pragma pop

/* 805C7014-805C701C 0003A0 0008+00 0/9 0/0 0/0 .rodata          @5006 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5006[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805C7014, &lit_5006);
#pragma pop

/* 805C701C-805C7024 0003A8 0008+00 0/9 0/0 0/0 .rodata          @5007 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5007[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805C701C, &lit_5007);
#pragma pop

/* 805C7024-805C7028 0003B0 0004+00 0/2 0/0 0/0 .rodata          @5008 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5008 = 4096.0f;
COMPILER_STRIP_GATE(0x805C7024, &lit_5008);
#pragma pop

/* 805C7028-805C702C 0003B4 0004+00 0/3 0/0 0/0 .rodata          @5009 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5009 = 2048.0f;
COMPILER_STRIP_GATE(0x805C7028, &lit_5009);
#pragma pop

/* 805BD3E4-805BD5FC 002664 0218+00 3/3 0/0 0/0 .text            normalHoverMove__8daB_DR_cFv */
void daB_DR_c::normalHoverMove() {
    // NONMATCHING
}

/* 805BD5FC-805BD98C 00287C 0390+00 1/1 0/0 0/0 .text            executeWait__8daB_DR_cFv */
void daB_DR_c::executeWait() {
    // NONMATCHING
}

/* 805BD98C-805BDBC4 002C0C 0238+00 1/1 0/0 0/0 .text            executeFlyWait__8daB_DR_cFv */
void daB_DR_c::executeFlyWait() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C702C-805C7030 0003B8 0004+00 0/1 0/0 0/0 .rodata          @5482 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5482 = 28.0f;
COMPILER_STRIP_GATE(0x805C702C, &lit_5482);
#pragma pop

/* 805C7030-805C7034 0003BC 0004+00 0/2 0/0 0/0 .rodata          @5483 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5483 = 150.0f;
COMPILER_STRIP_GATE(0x805C7030, &lit_5483);
#pragma pop

/* 805C7034-805C7038 0003C0 0004+00 0/2 0/0 0/0 .rodata          @5484 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5484 = 27.0f;
COMPILER_STRIP_GATE(0x805C7034, &lit_5484);
#pragma pop

/* 805C7038-805C703C 0003C4 0004+00 0/2 0/0 0/0 .rodata          @5485 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5485 = 1200.0f;
COMPILER_STRIP_GATE(0x805C7038, &lit_5485);
#pragma pop

/* 805C703C-805C7040 0003C8 0004+00 0/2 0/0 0/0 .rodata          @5486 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5486 = -1500.0f;
COMPILER_STRIP_GATE(0x805C703C, &lit_5486);
#pragma pop

/* 805C7040-805C7044 0003CC 0004+00 0/3 0/0 0/0 .rodata          @5487 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5487 = 200.0f;
COMPILER_STRIP_GATE(0x805C7040, &lit_5487);
#pragma pop

/* 805BDBC4-805BE9B4 002E44 0DF0+00 1/1 0/0 0/0 .text            executeTailHit__8daB_DR_cFv */
void daB_DR_c::executeTailHit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C7044-805C7048 0003D0 0004+00 0/1 0/0 0/0 .rodata          @5775 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5775 = 870.0f;
COMPILER_STRIP_GATE(0x805C7044, &lit_5775);
#pragma pop

/* 805C7048-805C704C 0003D4 0004+00 0/1 0/0 0/0 .rodata          @5776 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5776 = -13.0f;
COMPILER_STRIP_GATE(0x805C7048, &lit_5776);
#pragma pop

/* 805BE9B4-805BF4C8 003C34 0B14+00 1/1 0/0 0/0 .text            executeWeekHit__8daB_DR_cFv */
void daB_DR_c::executeWeekHit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C704C-805C7050 0003D8 0004+00 0/1 0/0 0/0 .rodata          @5866 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5866 = 2200.0f;
COMPILER_STRIP_GATE(0x805C704C, &lit_5866);
#pragma pop

/* 805C7974-805C7978 0000BC 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_805C7974[4];

/* 805BF4C8-805BF768 004748 02A0+00 2/2 0/0 0/0 .text            mBreathSet__8daB_DR_cFv */
void daB_DR_c::mBreathSet() {
    // NONMATCHING
}

/* 805BF768-805BFA6C 0049E8 0304+00 1/1 0/0 0/0 .text            mBreathHighSet__8daB_DR_cFb */
void daB_DR_c::mBreathHighSet(bool param_0) {
    // NONMATCHING
}

/* 805BFA6C-805BFD88 004CEC 031C+00 1/1 0/0 0/0 .text            mFeintBreath__8daB_DR_cFv */
void daB_DR_c::mFeintBreath() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C7050-805C7054 0003DC 0004+00 0/4 0/0 0/0 .rodata          @6185 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6185 = 0.5f;
COMPILER_STRIP_GATE(0x805C7050, &lit_6185);
#pragma pop

/* 805BFD88-805C062C 005008 08A4+00 1/1 0/0 0/0 .text            executeBreathAttack__8daB_DR_cFv */
void daB_DR_c::executeBreathAttack() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C7054-805C7058 0003E0 0004+00 0/3 0/0 0/0 .rodata          @6349 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6349 = 3000.0f;
COMPILER_STRIP_GATE(0x805C7054, &lit_6349);
#pragma pop

/* 805C7058-805C705C 0003E4 0004+00 0/1 0/0 0/0 .rodata          @6350 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6350 = -3000.0f;
COMPILER_STRIP_GATE(0x805C7058, &lit_6350);
#pragma pop

/* 805C705C-805C7060 0003E8 0004+00 0/1 0/0 0/0 .rodata          @6351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6351 = 1.25f;
COMPILER_STRIP_GATE(0x805C705C, &lit_6351);
#pragma pop

/* 805C062C-805C0CAC 0058AC 0680+00 1/1 0/0 0/0 .text            executeWindAttack__8daB_DR_cFv */
void daB_DR_c::executeWindAttack() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C7060-805C7064 0003EC 0004+00 0/1 0/0 0/0 .rodata          @6412 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6412 = 1300.0f;
COMPILER_STRIP_GATE(0x805C7060, &lit_6412);
#pragma pop

/* 805C0CAC-805C0EF8 005F2C 024C+00 1/1 0/0 0/0 .text            mGliderMoveSub__8daB_DR_cFf */
void daB_DR_c::mGliderMoveSub(f32 param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C7064-805C7068 0003F0 0004+00 0/2 0/0 0/0 .rodata          @6767 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6767 = 14000.0f;
COMPILER_STRIP_GATE(0x805C7064, &lit_6767);
#pragma pop

/* 805C7068-805C706C 0003F4 0004+00 0/1 0/0 0/0 .rodata          @6768 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6768 = 9000.0f;
COMPILER_STRIP_GATE(0x805C7068, &lit_6768);
#pragma pop

/* 805C706C-805C7070 0003F8 0004+00 0/2 0/0 0/0 .rodata          @6769 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6769 = 350.0f;
COMPILER_STRIP_GATE(0x805C706C, &lit_6769);
#pragma pop

/* 805C0EF8-805C1E0C 006178 0F14+00 2/1 0/0 0/0 .text            executeGliderAttack__8daB_DR_cFv */
void daB_DR_c::executeGliderAttack() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C7070-805C7074 0003FC 0004+00 0/0 0/0 0/0 .rodata          @6770 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6770 = 8000.0f;
COMPILER_STRIP_GATE(0x805C7070, &lit_6770);
#pragma pop

/* 805C7074-805C7078 000400 0004+00 0/1 0/0 0/0 .rodata          @6771 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6771 = 5000.0f;
COMPILER_STRIP_GATE(0x805C7074, &lit_6771);
#pragma pop

/* 805C7078-805C707C 000404 0004+00 0/0 0/0 0/0 .rodata          @6772 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6772 = -4000.0f;
COMPILER_STRIP_GATE(0x805C7078, &lit_6772);
#pragma pop

/* 805C707C-805C7080 000408 0004+00 0/0 0/0 0/0 .rodata          @6773 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6773 = 1.0f / 40.0f;
COMPILER_STRIP_GATE(0x805C707C, &lit_6773);
#pragma pop

/* 805C7080-805C7084 00040C 0004+00 0/0 0/0 0/0 .rodata          @6774 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6774 = 90.0f;
COMPILER_STRIP_GATE(0x805C7080, &lit_6774);
#pragma pop

/* 805C7084-805C7088 000410 0004+00 0/0 0/0 0/0 .rodata          @6775 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6775 = 120.0f;
COMPILER_STRIP_GATE(0x805C7084, &lit_6775);
#pragma pop

/* 805C7088-805C708C 000414 0004+00 0/2 0/0 0/0 .rodata          @6927 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6927 = 3100.0f;
COMPILER_STRIP_GATE(0x805C7088, &lit_6927);
#pragma pop

/* 805C708C-805C7090 000418 0004+00 0/1 0/0 0/0 .rodata          @6928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6928 = 5500.0f;
COMPILER_STRIP_GATE(0x805C708C, &lit_6928);
#pragma pop

/* 805C7090-805C7094 00041C 0004+00 0/1 0/0 0/0 .rodata          @6929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6929 = -3100.0f;
COMPILER_STRIP_GATE(0x805C7090, &lit_6929);
#pragma pop

/* 805C7094-805C7098 000420 0004+00 0/1 0/0 0/0 .rodata          @6930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6930 = 22.0f;
COMPILER_STRIP_GATE(0x805C7094, &lit_6930);
#pragma pop

/* 805C7978-805C7988 0000C0 000C+04 0/1 0/0 0/0 .bss             @6782 */
#pragma push
#pragma force_active on
static u8 lit_6782[12 + 4 /* padding */];
#pragma pop

/* 805C7988-805C7994 0000D0 000C+00 0/1 0/0 0/0 .bss             @6785 */
#pragma push
#pragma force_active on
static u8 lit_6785[12];
#pragma pop

/* 805C7994-805C79A0 0000DC 000C+00 0/1 0/0 0/0 .bss             @6786 */
#pragma push
#pragma force_active on
static u8 lit_6786[12];
#pragma pop

/* 805C79A0-805C79AC 0000E8 000C+00 0/1 0/0 0/0 .bss             @6787 */
#pragma push
#pragma force_active on
static u8 lit_6787[12];
#pragma pop

/* 805C79AC-805C79DC 0000F4 0030+00 0/1 0/0 0/0 .bss             mPillarTop_dt$6781 */
#pragma push
#pragma force_active on
static u8 mPillarTop_dt[48];
#pragma pop

/* 805C1E0C-805C24BC 00708C 06B0+00 1/1 0/0 0/0 .text            executePillarSearch__8daB_DR_cFv */
void daB_DR_c::executePillarSearch() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C7098-805C709C 000424 0004+00 0/2 0/0 0/0 .rodata          @7083 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7083 = 4500.0f;
COMPILER_STRIP_GATE(0x805C7098, &lit_7083);
#pragma pop

/* 805C709C-805C70A0 000428 0004+00 0/1 0/0 0/0 .rodata          @7084 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7084 = 6150.0f;
COMPILER_STRIP_GATE(0x805C709C, &lit_7084);
#pragma pop

/* 805C70A0-805C70A4 00042C 0004+00 0/2 0/0 0/0 .rodata          @7085 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7085 = -200.0f;
COMPILER_STRIP_GATE(0x805C70A0, &lit_7085);
#pragma pop

/* 805C24BC-805C2BE8 00773C 072C+00 1/1 0/0 0/0 .text            executePillarWait__8daB_DR_cFv */
void daB_DR_c::executePillarWait() {
    // NONMATCHING
}

/* 805C2BE8-805C2CD0 007E68 00E8+00 4/4 0/0 0/0 .text            startDemoCheck__8daB_DR_cFv */
void daB_DR_c::startDemoCheck() {
    // NONMATCHING
}

/* 805C2CD0-805C3558 007F50 0888+00 2/1 0/0 0/0 .text            executeDamageDemo__8daB_DR_cFv */
void daB_DR_c::executeDamageDemo() {
    // NONMATCHING
}

/* 805C3558-805C36A4 0087D8 014C+00 1/1 0/0 0/0 .text            executeMiddleDemo__8daB_DR_cFv */
void daB_DR_c::executeMiddleDemo() {
    // NONMATCHING
}

/* 805C36A4-805C382C 008924 0188+00 1/1 0/0 0/0 .text            executeDead__8daB_DR_cFv */
void daB_DR_c::executeDead() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C70A4-805C70A8 000430 0004+00 0/0 0/0 0/0 .rodata          @7382 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7382 = -1400.0f;
COMPILER_STRIP_GATE(0x805C70A4, &lit_7382);
#pragma pop

/* 805C70A8-805C70AC 000434 0004+00 0/0 0/0 0/0 .rodata          @7383 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7383 = 1100.0f;
COMPILER_STRIP_GATE(0x805C70A8, &lit_7383);
#pragma pop

/* 805C70AC-805C70B0 000438 0004+00 0/0 0/0 0/0 .rodata          @7384 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7384 = -850.0f;
COMPILER_STRIP_GATE(0x805C70AC, &lit_7384);
#pragma pop

/* 805C70B0-805C70B4 00043C 0004+00 0/0 0/0 0/0 .rodata          @7385 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7385 = 700.0f;
COMPILER_STRIP_GATE(0x805C70B0, &lit_7385);
#pragma pop

/* 805C70B4-805C70B8 000440 0004+00 0/0 0/0 0/0 .rodata          @7386 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7386 = -1200.0f;
COMPILER_STRIP_GATE(0x805C70B4, &lit_7386);
#pragma pop

/* 805C70B8-805C70BC 000444 0004+00 0/1 0/0 0/0 .rodata          @7511 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7511 = 0x3B03126F;
COMPILER_STRIP_GATE(0x805C70B8, &lit_7511);
#pragma pop

/* 805C382C-805C39D8 008AAC 01AC+00 1/1 0/0 0/0 .text            executeBullet__8daB_DR_cFv */
void daB_DR_c::executeBullet() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C70BC-805C70C0 000448 0004+00 0/1 0/0 0/0 .rodata          @7555 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7555 = 65536.0f;
COMPILER_STRIP_GATE(0x805C70BC, &lit_7555);
#pragma pop

/* 805C70C0-805C70C4 00044C 0004+00 0/2 0/0 0/0 .rodata          @7556 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7556 = -3.0f;
COMPILER_STRIP_GATE(0x805C70C0, &lit_7556);
#pragma pop

/* 805C39D8-805C3CB0 008C58 02D8+00 2/1 0/0 0/0 .text            executeParts__8daB_DR_cFv */
void daB_DR_c::executeParts() {
    // NONMATCHING
}

/* 805C3CB0-805C40E0 008F30 0430+00 2/1 0/0 0/0 .text            action__8daB_DR_cFv */
void daB_DR_c::action() {
    // NONMATCHING
}

/* 805C40E0-805C4130 009360 0050+00 1/1 0/0 0/0 .text            action_fire__8daB_DR_cFv */
void daB_DR_c::action_fire() {
    // NONMATCHING
}

/* 805C4130-805C41A4 0093B0 0074+00 1/1 0/0 0/0 .text            action_parts__8daB_DR_cFv */
void daB_DR_c::action_parts() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C70C4-805C70C8 000450 0004+00 0/1 0/0 0/0 .rodata          @7557 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7557 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x805C70C4, &lit_7557);
#pragma pop

/* 805C70C8-805C70CC 000454 0004+00 0/0 0/0 0/0 .rodata          @7558 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7558 = 16384.0f;
COMPILER_STRIP_GATE(0x805C70C8, &lit_7558);
#pragma pop

/* 805C70CC-805C70D0 000458 0004+00 0/1 0/0 0/0 .rodata          @7824 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7824 = 5250.0f;
COMPILER_STRIP_GATE(0x805C70CC, &lit_7824);
#pragma pop

/* 805C70D0-805C70D4 00045C 0004+00 0/1 0/0 0/0 .rodata          @7825 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7825 = 35.0f;
COMPILER_STRIP_GATE(0x805C70D0, &lit_7825);
#pragma pop

/* 805C70D4-805C70D8 000460 0004+00 0/1 0/0 0/0 .rodata          @7826 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7826 = 370.0f;
COMPILER_STRIP_GATE(0x805C70D4, &lit_7826);
#pragma pop

/* 805C41A4-805C4684 009424 04E0+00 2/2 0/0 0/0 .text            mtx_set__8daB_DR_cFv */
void daB_DR_c::mtx_set() {
    // NONMATCHING
}

/* 805C4684-805C46E0 009904 005C+00 1/1 0/0 0/0 .text            parts_mtx_set__8daB_DR_cFv */
void daB_DR_c::parts_mtx_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C70D8-805C70DC 000464 0004+00 0/1 0/0 0/0 .rodata          @8050 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8050 = 250.0f;
COMPILER_STRIP_GATE(0x805C70D8, &lit_8050);
#pragma pop

/* 805C70DC-805C70E0 000468 0004+00 0/1 0/0 0/0 .rodata          @8051 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8051 = 600.0f;
COMPILER_STRIP_GATE(0x805C70DC, &lit_8051);
#pragma pop

/* 805C70E0-805C70E4 00046C 0004+00 0/1 0/0 0/0 .rodata          @8052 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8052 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x805C70E0, &lit_8052);
#pragma pop

/* 805C70E4-805C70E8 000470 0004+00 0/1 0/0 0/0 .rodata          @8053 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8053 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x805C70E4, &lit_8053);
#pragma pop

/* 805C70E8-805C70EC 000474 0004+00 0/1 0/0 0/0 .rodata          @8054 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_8054 = 0x3B449BA6;
COMPILER_STRIP_GATE(0x805C70E8, &lit_8054);
#pragma pop

/* 805C70EC-805C70F0 000478 0004+00 0/1 0/0 0/0 .rodata          @8055 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_8055 = 0x3727C5AC;
COMPILER_STRIP_GATE(0x805C70EC, &lit_8055);
#pragma pop

/* 805C70F0-805C70F4 00047C 0004+00 0/1 0/0 0/0 .rodata          @8056 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8056 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x805C70F0, &lit_8056);
#pragma pop

/* 805C70F4-805C70F8 000480 0004+00 0/1 0/0 0/0 .rodata          @8057 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_8057 = 0x3A83126F;
COMPILER_STRIP_GATE(0x805C70F4, &lit_8057);
#pragma pop

/* 805C46E0-805C4E14 009960 0734+00 1/1 0/0 0/0 .text            cc_set__8daB_DR_cFv */
void daB_DR_c::cc_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C70F8-805C7170 000484 0078+00 1/1 0/0 0/0 .rodata          DOWN_CYL_DT$8061 */
SECTION_RODATA static u8 const DOWN_CYL_DT[120] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC2, 0xC8, 0x00, 0x00, 0x43, 0x0C, 0x00,
    0x00, 0x43, 0x48, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0xC2, 0x48,
    0x00, 0x00, 0x42, 0xC8, 0x00, 0x00, 0x43, 0x7A, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x43,
    0x96, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0xC2, 0x48, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00,
    0x43, 0x2A, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x43, 0xB9, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC3, 0x16, 0x00, 0x00, 0x43, 0x48,
    0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0xC3, 0x48, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x43, 0xAF, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805C70F8, &DOWN_CYL_DT);

/* 805C7170-805C7224 0004FC 00B4+00 1/1 0/0 0/0 .rodata          DOWN_SPH_DT$8062 */
SECTION_RODATA static u8 const DOWN_SPH_DT[180] = {
    0x00, 0x00, 0x00, 0x13, 0x42, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x43, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x43, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2F, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x43, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D, 0x43, 0x16, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0xC2, 0x48, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x25, 0x43,
    0x34, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC2, 0x48, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805C7170, &DOWN_SPH_DT);

/* 805C4E14-805C4FB4 00A094 01A0+00 1/1 0/0 0/0 .text            down_cc_set__8daB_DR_cFv */
void daB_DR_c::down_cc_set() {
    // NONMATCHING
}

/* 805C4FB4-805C50BC 00A234 0108+00 1/1 0/0 0/0 .text            demo_skip__8daB_DR_cFi */
void daB_DR_c::demo_skip(int param_0) {
    // NONMATCHING
}

/* 805C50BC-805C50F0 00A33C 0034+00 1/1 0/0 0/0 .text            DemoSkipCallBack__8daB_DR_cFPvi */
void daB_DR_c::DemoSkipCallBack(void* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C7224-805C7228 0005B0 0004+00 0/1 0/0 0/0 .rodata          @8254 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8254 = 111.0f;
COMPILER_STRIP_GATE(0x805C7224, &lit_8254);
#pragma pop

/* 805C50F0-805C5588 00A370 0498+00 1/1 0/0 0/0 .text            execute__8daB_DR_cFv */
void daB_DR_c::execute() {
    // NONMATCHING
}

/* 805C5588-805C55A8 00A808 0020+00 2/1 0/0 0/0 .text            daB_DR_Execute__FP8daB_DR_c */
static void daB_DR_Execute(daB_DR_c* param_0) {
    // NONMATCHING
}

/* 805C55A8-805C55B0 00A828 0008+00 1/0 0/0 0/0 .text            daB_DR_IsDelete__FP8daB_DR_c */
static bool daB_DR_IsDelete(daB_DR_c* param_0) {
    return true;
}

/* 805C55B0-805C5684 00A830 00D4+00 1/1 0/0 0/0 .text            _delete__8daB_DR_cFv */
void daB_DR_c::_delete() {
    // NONMATCHING
}

/* 805C5684-805C56A4 00A904 0020+00 1/0 0/0 0/0 .text            daB_DR_Delete__FP8daB_DR_c */
static void daB_DR_Delete(daB_DR_c* param_0) {
    // NONMATCHING
}

/* 805C56A4-805C590C 00A924 0268+00 1/1 0/0 0/0 .text            CreateHeap__8daB_DR_cFv */
void daB_DR_c::CreateHeap() {
    // NONMATCHING
}

/* 805C590C-805C5954 00AB8C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 805C5954-805C5974 00ABD4 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C7228-805C722C 0005B4 0004+00 0/1 0/0 0/0 .rodata          @8659 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8659 = -325.0f;
COMPILER_STRIP_GATE(0x805C7228, &lit_8659);
#pragma pop

/* 805C722C-805C7230 0005B8 0004+00 0/1 0/0 0/0 .rodata          @8660 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8660 = 215.0f;
COMPILER_STRIP_GATE(0x805C722C, &lit_8660);
#pragma pop

/* 805C7230-805C7234 0005BC 0004+00 0/1 0/0 0/0 .rodata          @8661 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8661 = 224.0f;
COMPILER_STRIP_GATE(0x805C7230, &lit_8661);
#pragma pop

/* 805C7234-805C7238 0005C0 0004+00 0/1 0/0 0/0 .rodata          @8662 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8662 = 762.0f;
COMPILER_STRIP_GATE(0x805C7234, &lit_8662);
#pragma pop

/* 805C7238-805C723C 0005C4 0004+00 0/1 0/0 0/0 .rodata          @8663 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8663 = -20000.0f;
COMPILER_STRIP_GATE(0x805C7238, &lit_8663);
#pragma pop

/* 805C723C-805C7240 0005C8 0004+00 0/1 0/0 0/0 .rodata          @8664 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8664 = 20000.0f;
COMPILER_STRIP_GATE(0x805C723C, &lit_8664);
#pragma pop

/* 805C5974-805C62B0 00ABF4 093C+00 1/1 0/0 0/0 .text            create__8daB_DR_cFv */
void daB_DR_c::create() {
    // NONMATCHING
}

/* 805C62B0-805C6678 00B530 03C8+00 1/1 0/0 0/0 .text            __ct__8daB_DR_cFv */
daB_DR_c::daB_DR_c() {
    // NONMATCHING
}

/* 805C6678-805C66FC 00B8F8 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
// dCcD_Cyl::dCcD_Cyl() {
extern "C" void __ct__8dCcD_CylFv() {
    // NONMATCHING
}

/* 805C66FC-805C6744 00B97C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 805C6744-805C6810 00B9C4 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 805C6810-805C6894 00BA90 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 805C6894-805C6960 00BB14 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_CylFv */
// dCcD_Cyl::~dCcD_Cyl() {
extern "C" void __dt__8dCcD_CylFv() {
    // NONMATCHING
}

/* 805C6960-805C69A8 00BBE0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 805C69A8-805C69F0 00BC28 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 805C69F0-805C6A4C 00BC70 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 805C6A4C-805C6ABC 00BCCC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 805C6ABC-805C6B2C 00BD3C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 805C6B2C-805C6B4C 00BDAC 0020+00 1/0 0/0 0/0 .text            daB_DR_Create__FP8daB_DR_c */
static void daB_DR_Create(daB_DR_c* param_0) {
    // NONMATCHING
}

/* 805C6B4C-805C6B94 00BDCC 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 805C6B94-805C6BDC 00BE14 0048+00 2/1 0/0 0/0 .text            __dt__12daB_DR_HIO_cFv */
daB_DR_HIO_c::~daB_DR_HIO_c() {
    // NONMATCHING
}

/* 805C6BDC-805C6BF8 00BE5C 001C+00 15/15 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_805C6BDC(void* _this, int* param_0) {
    // NONMATCHING
}

/* 805C6BF8-805C6C14 00BE78 001C+00 3/3 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" void func_805C6BF8(void* _this, u8* param_0) {
    // NONMATCHING
}

/* 805C6C14-805C6C50 00BE94 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_b_dr_cpp */
void __sinit_d_a_b_dr_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x805C6C14, __sinit_d_a_b_dr_cpp);
#pragma pop

/* 805C6C50-805C6C58 00BED0 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_805C6C50() {
    // NONMATCHING
}

/* 805C6C58-805C6C60 00BED8 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_805C6C58() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 805C79DC-805C79E0 000124 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_805C79DC[4];
#pragma pop

/* 805C79E0-805C79E4 000128 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_805C79E0[4];
#pragma pop

/* 805C79E4-805C79E8 00012C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_805C79E4[4];
#pragma pop

/* 805C79E8-805C79EC 000130 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_805C79E8[4];
#pragma pop

/* 805C79EC-805C79F0 000134 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_805C79EC[4];
#pragma pop

/* 805C79F0-805C79F4 000138 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_805C79F0[4];
#pragma pop

/* 805C79F4-805C79F8 00013C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_805C79F4[4];
#pragma pop

/* 805C79F8-805C79FC 000140 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_805C79F8[4];
#pragma pop

/* 805C79FC-805C7A00 000144 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_805C79FC[4];
#pragma pop

/* 805C7A00-805C7A04 000148 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_805C7A00[4];
#pragma pop

/* 805C7A04-805C7A08 00014C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_805C7A04[4];
#pragma pop

/* 805C7A08-805C7A0C 000150 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_805C7A08[4];
#pragma pop

/* 805C7A0C-805C7A10 000154 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_805C7A0C[4];
#pragma pop

/* 805C7A10-805C7A14 000158 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_805C7A10[4];
#pragma pop

/* 805C7A14-805C7A18 00015C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_805C7A14[4];
#pragma pop

/* 805C7A18-805C7A1C 000160 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_805C7A18[4];
#pragma pop

/* 805C7A1C-805C7A20 000164 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_805C7A1C[4];
#pragma pop

/* 805C7A20-805C7A24 000168 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_805C7A20[4];
#pragma pop

/* 805C7A24-805C7A28 00016C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_805C7A24[4];
#pragma pop

/* 805C7A28-805C7A2C 000170 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_805C7A28[4];
#pragma pop

/* 805C7A2C-805C7A30 000174 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_805C7A2C[4];
#pragma pop

/* 805C7A30-805C7A34 000178 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_805C7A30[4];
#pragma pop

/* 805C7A34-805C7A38 00017C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_805C7A34[4];
#pragma pop

/* 805C7A38-805C7A3C 000180 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_805C7A38[4];
#pragma pop

/* 805C7A3C-805C7A40 000184 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_805C7A3C[4];
#pragma pop

/* 805C7240-805C7240 0005CC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */