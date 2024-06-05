/**
 * @file d_a_b_yo.cpp
 * @brief Actor - Blizzeta (Boss)
 * 
 */

#include "rel/d/a/b/d_a_b_yo/d_a_b_yo.h"
#include "rel/d/a/obj/d_a_obj_ystone/d_a_obj_ystone.h"
#include "d/com/d_com_inf_game.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__12daB_YO_HIO_cFv();
extern "C" void draw__8daB_YO_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" static void daB_YO_Draw__FP8daB_YO_c();
extern "C" void onIceBreak__8daB_YO_cFUs();
extern "C" void setBck__8daB_YO_cFiUcff();
extern "C" void setActionMode__8daB_YO_cFii();
extern "C" void damage_check__8daB_YO_cFv();
extern "C" void setBreakFrizad__8daB_YO_cFv();
extern "C" void setIcicleOperate__8daB_YO_cFi();
extern "C" void setIcicleSubNumber__8daB_YO_cFv();
extern "C" void setWindowBreakEffect__8daB_YO_cFi();
extern "C" void setHensinEffect__8daB_YO_cFv();
extern "C" void setLandingEffect__8daB_YO_cFf();
extern "C" void setBreakIceEffect__8daB_YO_cFv();
extern "C" void setWallHitEffect__8daB_YO_cFv();
extern "C" void setChillEffect__8daB_YO_cFv();
extern "C" void setApperEffect__8daB_YO_cFv();
extern "C" void setApperEffect2__8daB_YO_cFv();
extern "C" static void s_frizad_delete__FPvPv();
extern "C" void demo_skip__8daB_YO_cFi();
extern "C" void DemoSkipCallBack__8daB_YO_cFPvi();
extern "C" void setYoMessage__8daB_YO_cFi();
extern "C" void doYoMessage__8daB_YO_cFv();
extern "C" void executeOpening__8daB_YO_cFv();
extern "C" void reflectFreeMove__8daB_YO_cFv();
extern "C" void calcFreeMove__8daB_YO_cFf();
extern "C" void setReflectAngle__8daB_YO_cFv();
extern "C" void executeChase__8daB_YO_cFv();
extern "C" void executeSeriousDemo__8daB_YO_cFv();
extern "C" void checkIcecleRevival__8daB_YO_cFv();
extern "C" void createIcecleRevival__8daB_YO_cFUc();
extern "C" void executeJump__8daB_YO_cFv();
extern "C" void executeAttackIce__8daB_YO_cFv();
extern "C" void executeAttackYose__8daB_YO_cFv();
extern "C" void checkDamageWithIceBreak__8daB_YO_cFv();
extern "C" void executeAttackBody__8daB_YO_cFv();
extern "C" void executeDemoRevival__8daB_YO_cFv();
extern "C" void executeDamage__8daB_YO_cFv();
extern "C" void executeDeath__8daB_YO_cFv();
extern "C" void reviseIceCenterPos__8daB_YO_cFP4cXyz();
extern "C" void calcPlayerBufPos__8daB_YO_cFv();
extern "C" void action__8daB_YO_cFv();
extern "C" void mtx_set__8daB_YO_cFv();
extern "C" void cc_set__8daB_YO_cFv();
extern "C" void execute__8daB_YO_cFv();
extern "C" static void daB_YO_Execute__FP8daB_YO_c();
extern "C" static bool daB_YO_IsDelete__FP8daB_YO_c();
extern "C" void _delete__8daB_YO_cFv();
extern "C" static void daB_YO_Delete__FP8daB_YO_c();
extern "C" void CreateHeap__8daB_YO_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void CreateHeap2__8daB_YO_cFv();
extern "C" static void useHeapInit2__FP10fopAc_ac_c();
extern "C" void create__8daB_YO_cFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__4cXyzFv();
extern "C" static void daB_YO_Create__FP8daB_YO_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daB_YO_HIO_cFv();
extern "C" void __sinit_d_a_b_yo_cpp();
extern "C" static void func_80639684();
extern "C" static void func_8063968C();
extern "C" void setShapeAngle__16obj_ystone_classF5csXyz();
extern "C" void setCurrentPos__16obj_ystone_classF4cXyz();
extern "C" void abs__4cXyzCFRC3Vec();
extern "C" extern char const* const d_a_b_yo__stringBase0;

//
// External References:
//

extern "C" void onBlure__13mDoGph_gInf_cFv();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss();
extern "C" void entry__13mDoExt_btpAnmFP16J3DMaterialTables();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
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
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_createWarpHole__FPC4cXyzPC5csXyziUcUcUc();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void fopMsgM_SearchByID__FUi();
extern "C" void fopMsgM_messageSet__FUlUl();
extern "C" void fopMsgM_messageSetDemo__FUl();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcM_IsCreating__FUi();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_onOneZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void entry__10daMirror_cFP8J3DModel();
extern "C" void remove__10daMirror_cFv();
extern "C" void onDungeonItem__12dSv_memBit_cFi();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void onSwitch__12dSv_danBit_cFi();
extern "C" void offSwitch__12dSv_danBit_cFi();
extern "C" void isSwitch__12dSv_danBit_cCFi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void onSkipFade__14dEvt_control_cFv();
extern "C" void setPtT__14dEvt_control_cFPv();
extern "C" void getRunEventName__16dEvent_manager_cFv();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void GetAtHitObj__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void GetForceLockOnActor__9dCamera_cFv();
extern "C" void ForceLockOn__9dCamera_cFP10fopAc_ac_c();
extern "C" void ForceLockOff__9dCamera_cFP10fopAc_ac_c();
extern "C" void dCam_getBody__Fv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_custom_colset__FUcUcf();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __ml__4cXyzCFf();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcPos2__FP4cXyzRC4cXyzff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void cLib_chasePosXZ__FP4cXyzRC4cXyzf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
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
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern();
extern "C" void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
// extern "C" void PSMTXCopy();
// extern "C" void PSMTXTrans();
// extern "C" void PSVECSquareMag();
// extern "C" void PSVECSquareDistance();
extern "C" void __construct_array();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
// extern "C" void abs();
// extern "C" void strcmp();
// extern "C" extern void* g_fopAc_Method[8];
// extern "C" extern void* g_fpcLf_Method[5 + 1 /* padding */];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
// extern "C" extern u8 g_env_light[4880];
// extern "C" extern u8 j3dSys[284];
extern "C" extern u8 j3dZModeTable[96];
extern "C" u8 sincosTable___5JMath[65536];
// extern "C" extern u32 __float_nan;
extern "C" extern u8 mBlureFlag__13mDoGph_gInf_c[4];
extern "C" extern u8 struct_80450C98[4];
extern "C" extern u8 pauseTimer__9dScnPly_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();
extern "C" void setOperate__9daB_YOI_cFi();
extern "C" void demoDelete__8daE_FZ_cFv();

//
// Declarations:
//

/* ############################################################################################## */
/* 806397F4-806397F8 000000 0004+00 25/25 0/0 0/0 .rodata          @3788 */
SECTION_RODATA static f32 const lit_3788 = 7.0f;
COMPILER_STRIP_GATE(0x806397F4, &lit_3788);

/* 806397F8-806397FC 000004 0004+00 0/1 0/0 0/0 .rodata          @3789 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3789 = 6.0f;
COMPILER_STRIP_GATE(0x806397F8, &lit_3789);
#pragma pop

/* 806397FC-80639800 000008 0004+00 0/6 0/0 0/0 .rodata          @3790 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3790 = 5.0f;
COMPILER_STRIP_GATE(0x806397FC, &lit_3790);
#pragma pop

/* 80639800-80639804 00000C 0004+00 0/2 0/0 0/0 .rodata          @3791 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3791 = 4.0f;
COMPILER_STRIP_GATE(0x80639800, &lit_3791);
#pragma pop

/* 80639804-80639808 000010 0004+00 0/7 0/0 0/0 .rodata          @3792 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3792 = 3.0f;
COMPILER_STRIP_GATE(0x80639804, &lit_3792);
#pragma pop

/* 80639808-8063980C 000014 0004+00 0/5 0/0 0/0 .rodata          @3793 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3793 = 2.0f;
COMPILER_STRIP_GATE(0x80639808, &lit_3793);
#pragma pop

/* 8063980C-80639810 000018 0004+00 0/3 0/0 0/0 .rodata          @3794 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3794 = 1.5f;
COMPILER_STRIP_GATE(0x8063980C, &lit_3794);
#pragma pop

/* 80639810-80639814 00001C 0004+00 7/25 0/0 0/0 .rodata          @3795 */
SECTION_RODATA static f32 const lit_3795 = 1.0f;
COMPILER_STRIP_GATE(0x80639810, &lit_3795);

/* 80639814-80639818 000020 0004+00 0/9 0/0 0/0 .rodata          @3796 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3796 = 20.0f;
COMPILER_STRIP_GATE(0x80639814, &lit_3796);
#pragma pop

/* 80639818-8063981C 000024 0004+00 0/1 0/0 0/0 .rodata          @3797 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3797 = 2.5f;
COMPILER_STRIP_GATE(0x80639818, &lit_3797);
#pragma pop

/* 8063981C-80639820 000028 0004+00 0/2 0/0 0/0 .rodata          @3798 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3798 = -100.0f;
COMPILER_STRIP_GATE(0x8063981C, &lit_3798);
#pragma pop

/* 80639820-80639824 00002C 0004+00 0/4 0/0 0/0 .rodata          @3799 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3799 = 60.0f;
COMPILER_STRIP_GATE(0x80639820, &lit_3799);
#pragma pop

/* 80639824-80639828 000030 0004+00 3/24 0/0 0/0 .rodata          @3800 */
SECTION_RODATA static u8 const lit_3800[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80639824, &lit_3800);

/* 80639828-8063982C 000034 0004+00 0/3 0/0 0/0 .rodata          @3801 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3801 = 3000.0f;
COMPILER_STRIP_GATE(0x80639828, &lit_3801);
#pragma pop

/* 80639A60-80639A6C 000000 000C+00 4/4 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80639A6C-80639A80 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80639A80-80639AC4 000020 0044+00 0/1 0/0 0/0 .data            cc_yo_src__22@unnamed@d_a_b_yo_cpp@
 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_80639A80[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x75,
    0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 80639AC4-80639B04 000064 0040+00 0/1 0/0 0/0 .data cc_yo_tg_src__22@unnamed@d_a_b_yo_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_80639AC4[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11,
    0xD8, 0xBB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x45, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x02, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 80639B04-80639B44 0000A4 0040+00 0/1 0/0 0/0 .data cc_yo_iron_src__22@unnamed@d_a_b_yo_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_80639B04[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 80639B44-80639B60 0000E4 001B+01 1/1 0/0 0/0 .data            yo_material_draw */
SECTION_DATA static u8 yo_material_draw[27 + 1 /* padding */] = {
    0x01,
    0x01,
    0x01,
    0x01,
    0x00,
    0x00,
    0x01,
    0x01,
    0x01,
    0x00,
    0x01,
    0x01,
    0x01,
    0x01,
    0x00,
    0x00,
    0x01,
    0x01,
    0x00,
    0x00,
    0x01,
    0x01,
    0x00,
    0x01,
    0x00,
    0x00,
    0x01,
    /* padding */
    0x00,
};

/* 80639B60-80639BAC 000100 004C+00 0/1 0/0 0/0 .data            yo_demo_bck_idx */
#pragma push
#pragma force_active on
static u32 yo_demo_bck_idx[19] = {
    0x00000007, 
    0x00000008, 
    0x0000000D, 
    0x00000011,
    0x00000012, 
    0x00000013, 
    0x00000014, 
    0x00000015,
    0x00000019, 
    0x0000000F, 
    0x00000010, 
    0x00000017,
    0x00000016, 
    0x0000000E, 
    0x00000018, 
    0x0000000A,
    0x0000000B, 
    0x0000000C, 
    0x00000009,
};
#pragma pop

/* 80639BAC-80639BF8 00014C 004C+00 0/1 0/0 0/0 .data            yo_demo_btk_idx */
#pragma push
#pragma force_active on
SECTION_DATA static u8 yo_demo_btk_idx[76] = {
    0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x2F,
    0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x33,
    0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x34,
    0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x2B,
    0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x32,
};
#pragma pop

/* 80639BF8-80639C44 000198 004C+00 0/1 0/0 0/0 .data            yo_demo_btp_idx */
#pragma push
#pragma force_active on
SECTION_DATA static u8 yo_demo_btp_idx[76] = {
    0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x3C,
    0x00, 0x00, 0x00, 0x3D, 0x00, 0x00, 0x00, 0x3E, 0x00, 0x00, 0x00, 0x3A, 0x00, 0x00, 0x00, 0x39,
    0x00, 0x00, 0x00, 0x3A, 0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x39,
    0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x39,
    0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x3A,
};
#pragma pop

/* 80639C44-80639C50 0001E4 000C+00 1/1 0/0 0/0 .data            yo_window_angle$4294 */
SECTION_DATA static u8 yo_window_angle[12] = {
    0xC0, 0x00, 0xE0, 0x00, 0x60, 0x00, 0x20, 0x00, 0x40, 0x00, 0x00, 0x00,
};

/* 80639C50-80639C58 0001F0 0008+00 1/1 0/0 0/0 .data            madoware_effect_id$4295 */
SECTION_DATA static u8 madoware_effect_id[8] = {
    0x87, 0xC1, 0x87, 0xC2, 0x87, 0xC3, 0x87, 0xC4,
};

/* 80639C58-80639C60 0001F8 0008+00 1/1 0/0 0/0 .data            hensin_effect_id$4317 */
SECTION_DATA static u8 hensin_effect_id[8] = {
    0x87, 0xB1, 0x87, 0xB2, 0x87, 0xB3, 0x87, 0xB4,
};

/* 80639C60-80639C6C 000200 000C+00 1/1 0/0 0/0 .data            l_landing_effect_id$4401 */
SECTION_DATA static u8 l_landing_effect_id[12] = {
    0x86, 0xDC, 0x86, 0xDD, 0x86, 0xDE, 0x86, 0xDF, 0x86, 0xE0, 0x86, 0xE1,
};

/* 80639C6C-80639C84 00020C 0018+00 1/1 0/0 0/0 .data            break_ice_effect_id$4436 */
SECTION_DATA static u8 break_ice_effect_id[24] = {
    0x86, 0xB4, 0x86, 0xB5, 0x87, 0x9C, 0x87, 0x9F, 0x87, 0xA0, 0x87, 0xA1,
    0x87, 0xA3, 0x87, 0xA4, 0x87, 0xA5, 0x87, 0xA7, 0x87, 0xA8, 0x87, 0xA9,
};

/* 80639C84-80639C90 000224 000C+00 1/1 0/0 0/0 .data            wall_hit_effect_id$4479 */
SECTION_DATA static u8 wall_hit_effect_id[12] = {
    0x87, 0x9D, 0x87, 0x9E, 0x87, 0x9D, 0x87, 0x9E, 0x87, 0xAA, 0x87, 0xAB,
};

/* 80639C90-80639C98 000230 0008+00 1/1 0/0 0/0 .data            chill_effect_id$4527 */
SECTION_DATA static u8 chill_effect_id[8] = {
    0x86, 0xDA, 0x87, 0xA2, 0x87, 0xA6, 0x87, 0xAC,
};

/* 80639C98-80639C9C 000238 0004+00 1/1 0/0 0/0 .data            apper_effect_id$4594 */
SECTION_DATA static u8 apper_effect_id[4] = {
    0x87,
    0xAE,
    0x87,
    0xAF,
};

/* 80639C9C-80639D0C -00001 0070+00 1/1 0/0 0/0 .data            @5357 */
SECTION_DATA static void* lit_5357[28] = {
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x64),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x204),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x27C),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x39C),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x4C0),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x50C),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x55C),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x5F8),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x6A0),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x744),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x79C),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x7EC),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x870),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x8F0),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x15E4),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x988),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0xAB0),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0xAD4),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x15E4),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x15E4),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0xB9C),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0xC28),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0xDAC),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0xF88),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x1254),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x13CC),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x15E4),
    (void*)(((char*)executeOpening__8daB_YO_cFv) + 0x14D0),
};

/* 80639D0C-80639D2C 0002AC 0020+00 1/1 0/0 0/0 .data            yo_max_bound_speed */
SECTION_DATA static u8 yo_max_bound_speed[32] = {
    0x41, 0x20, 0x00, 0x00, 0x41, 0x40, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00, 0x41, 0x90, 0x00, 0x00,
    0x41, 0xA8, 0x00, 0x00, 0x41, 0xC0, 0x00, 0x00, 0x41, 0xD8, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
};

/* 80639D2C-80639D48 0002CC 001C+00 0/1 0/0 0/0 .data            yo_damage_speed */
#pragma push
#pragma force_active on
SECTION_DATA static u8 yo_damage_speed[28] = {
    0x41, 0x40, 0x00, 0x00, 0x41, 0x60, 0x00, 0x00, 0x41, 0x80, 0x00, 0x00, 0x41, 0x90,
    0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x41, 0xB0, 0x00, 0x00, 0x41, 0xC0, 0x00, 0x00,
};
#pragma pop

/* 80639D48-80639D68 0002E8 0020+00 0/1 0/0 0/0 .data            yo_chase_speed */
#pragma push
#pragma force_active on
SECTION_DATA static u8 yo_chase_speed[32] = {
    0x40, 0x40, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x40, 0xA0, 0x00, 0x00, 0x40, 0xC0, 0x00, 0x00,
    0x40, 0xE0, 0x00, 0x00, 0x41, 0x00, 0x00, 0x00, 0x41, 0x10, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00,
};
#pragma pop

/* 80639D68-80639D84 000308 001C+00 0/1 0/0 0/0 .data            yo_damage_timer */
#pragma push
#pragma force_active on
SECTION_DATA static u8 yo_damage_timer[28] = {
    0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0x6E, 0x00, 0x00,
    0x00, 0x78, 0x00, 0x00, 0x00, 0x82, 0x00, 0x00, 0x00, 0x8C, 0x00, 0x00, 0x00, 0x96,
};
#pragma pop

/* 80639D84-80639DB0 -00001 002C+00 1/1 0/0 0/0 .data            @6340 */
SECTION_DATA static void* lit_6340[11] = {
    (void*)(((char*)executeAttackBody__8daB_YO_cFv) + 0x4C),
    (void*)(((char*)executeAttackBody__8daB_YO_cFv) + 0x15C),
    (void*)(((char*)executeAttackBody__8daB_YO_cFv) + 0x2BC),
    (void*)(((char*)executeAttackBody__8daB_YO_cFv) + 0x2C8),
    (void*)(((char*)executeAttackBody__8daB_YO_cFv) + 0x35C),
    (void*)(((char*)executeAttackBody__8daB_YO_cFv) + 0x4AC),
    (void*)(((char*)executeAttackBody__8daB_YO_cFv) + 0x4AC),
    (void*)(((char*)executeAttackBody__8daB_YO_cFv) + 0x4AC),
    (void*)(((char*)executeAttackBody__8daB_YO_cFv) + 0x4AC),
    (void*)(((char*)executeAttackBody__8daB_YO_cFv) + 0x4AC),
    (void*)(((char*)executeAttackBody__8daB_YO_cFv) + 0xB8),
};

/* 80639DB0-80639DD0 -00001 0020+00 1/1 0/0 0/0 .data            @7267 */
SECTION_DATA static void* lit_7267[8] = {
    (void*)(((char*)action__8daB_YO_cFv) + 0x2D8), (void*)(((char*)action__8daB_YO_cFv) + 0x2F4),
    (void*)(((char*)action__8daB_YO_cFv) + 0x318), (void*)(((char*)action__8daB_YO_cFv) + 0x33C),
    (void*)(((char*)action__8daB_YO_cFv) + 0x360), (void*)(((char*)action__8daB_YO_cFv) + 0x384),
    (void*)(((char*)action__8daB_YO_cFv) + 0x3A8), (void*)(((char*)action__8daB_YO_cFv) + 0x3CC),
};

/* 80639DD0-80639DF8 -00001 0028+00 1/1 0/0 0/0 .data            @7266 */
SECTION_DATA static void* lit_7266[10] = {
    (void*)(((char*)action__8daB_YO_cFv) + 0x130), (void*)(((char*)action__8daB_YO_cFv) + 0x140),
    (void*)(((char*)action__8daB_YO_cFv) + 0x14C), (void*)(((char*)action__8daB_YO_cFv) + 0x158),
    (void*)(((char*)action__8daB_YO_cFv) + 0x164), (void*)(((char*)action__8daB_YO_cFv) + 0x170),
    (void*)(((char*)action__8daB_YO_cFv) + 0x17C), (void*)(((char*)action__8daB_YO_cFv) + 0x188),
    (void*)(((char*)action__8daB_YO_cFv) + 0x194), (void*)(((char*)action__8daB_YO_cFv) + 0x1A0),
};

/* 80639DF8-80639E14 000398 001C+00 0/1 0/0 0/0 .data            yo_att_pos_y */
#pragma push
#pragma force_active on
SECTION_DATA static u8 yo_att_pos_y[28] = {
    0x44, 0xA2, 0x80, 0x00, 0x44, 0x6D, 0x80, 0x00, 0x44, 0x2F, 0x00, 0x00, 0x43, 0xE1,
    0x00, 0x00, 0x44, 0x54, 0x80, 0x00, 0x43, 0xEB, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00,
};
#pragma pop

/* 80639E14-80639E34 0003B4 0020+00 0/1 0/0 0/0 .data            yo_at_sph_radius$7331 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 yo_at_sph_radius[32] = {
    0x44, 0x24, 0x80, 0x00, 0x44, 0x16, 0x00, 0x00, 0x44, 0x09, 0x80, 0x00, 0x43, 0xDC, 0x00, 0x00,
    0x43, 0x96, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00, 0x43, 0x8C, 0x00, 0x00,
};
#pragma pop

/* 80639E34-80639E40 0003D4 000C+00 0/1 0/0 0/0 .data            yo_sph_pos_addy$7338 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 yo_sph_pos_addy[12] = {
    0x43, 0xA0, 0x00, 0x00, 0x43, 0x3E, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00,
};
#pragma pop

/* 80639E40-80639E4C 0003E0 000C+00 0/1 0/0 0/0 .data            yo_sph_pos_radius$7339 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 yo_sph_pos_radius[12] = {
    0x42, 0x5C, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00, 0x42, 0xFA, 0x00, 0x00,
};
#pragma pop

/* 80639E4C-80639E58 0003EC 000C+00 0/1 0/0 0/0 .data            yo_sph_pos_addy2$7340 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 yo_sph_pos_addy2[12] = {
    0x43, 0x7A, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00, 0x44, 0x09, 0x80, 0x00,
};
#pragma pop

/* 80639E58-80639E78 -00001 0020+00 1/0 0/0 0/0 .data            l_daB_YO_Method */
SECTION_DATA static void* l_daB_YO_Method[8] = {
    (void*)daB_YO_Create__FP8daB_YO_c,
    (void*)daB_YO_Delete__FP8daB_YO_c,
    (void*)daB_YO_Execute__FP8daB_YO_c,
    (void*)daB_YO_IsDelete__FP8daB_YO_c,
    (void*)daB_YO_Draw__FP8daB_YO_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80639E78-80639EA8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_B_YO */
SECTION_DATA extern void* g_profile_B_YO[12] = {
    (void*)0xFFFFFFFD, (void*)0x0007FFFD,
    (void*)0x02110000, (void*)&g_fpcLf_Method,
    (void*)0x00001B88, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x00DF0000, (void*)&l_daB_YO_Method,
    (void*)0x00044000, (void*)0x020E0000,
};

/* 80639EA8-80639EB4 000448 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80639EB4-80639EC0 000454 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80639EC0-80639ECC 000460 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80639ECC-80639ED8 00046C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80639ED8-80639EE4 000478 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80639EE4-80639EF0 000484 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80639EF0-80639F14 000490 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8063968C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80639684,
};

/* 80639F14-80639F20 0004B4 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80639F20-80639F2C 0004C0 000C+00 2/2 0/0 0/0 .data            __vt__12daB_YO_HIO_c */
SECTION_DATA extern void* __vt__12daB_YO_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daB_YO_HIO_cFv,
};

/* 8062F46C-8062F51C 0000EC 00B0+00 1/1 0/0 0/0 .text            __ct__12daB_YO_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daB_YO_HIO_c::daB_YO_HIO_c() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/__ct__12daB_YO_HIO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8063982C-80639830 000038 0004+00 0/3 0/0 0/0 .rodata          @4078 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4078 = 255.0f;
COMPILER_STRIP_GATE(0x8063982C, &lit_4078);
#pragma pop

/* 80639830-80639834 00003C 0004+00 0/10 0/0 0/0 .rodata          @4079 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4079 = 100.0f;
COMPILER_STRIP_GATE(0x80639830, &lit_4079);
#pragma pop

/* 80639834-80639838 000040 0004+00 0/1 0/0 0/0 .rodata          @4080 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4080 = 3500.0f;
COMPILER_STRIP_GATE(0x80639834, &lit_4080);
#pragma pop

/* 8062F51C-8062FB90 00019C 0674+00 1/1 0/0 0/0 .text            draw__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 daB_YO_c::draw() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/draw__8daB_YO_cFv.s"
}
#pragma pop

/* 8062FB90-8062FBCC 000810 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/__dt__4cXyzFv.s"
}
#pragma pop

/* 8062FBCC-8062FBEC 00084C 0020+00 1/0 0/0 0/0 .text            daB_YO_Draw__FP8daB_YO_c */
static s32 daB_YO_Draw(daB_YO_c* i_this) {
    return i_this->draw();
}

/* 8062FBEC-8062FC08 00086C 001C+00 0/0 0/0 4/4 .text            onIceBreak__8daB_YO_cFUs */
void daB_YO_c::onIceBreak(u16 param_0) {
    mIceBreak |= (1 << param_0);
}

/* ############################################################################################## */
/* 80639838-8063983C 000044 0004+00 0/4 0/0 0/0 .rodata          @4149 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4149 = -1.0f;
COMPILER_STRIP_GATE(0x80639838, &lit_4149);
#pragma pop

/* 80639A34-80639A34 000240 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80639A34 = "B_YO";
#pragma pop

/* 8062FC08-8062FE0C 000888 0204+00 4/4 0/0 0/0 .text            setBck__8daB_YO_cFiUcff */
#ifdef NONMATCHING
void daB_YO_c::setBck(int i_bckIdx, u8 param_1, f32 param_2, f32 param_3) {
    J3DModel* l_model = (J3DModel*)dComIfG_getObjectRes("B_YO",yo_demo_bck_idx[i_bckIdx]);
    setAnm();
            (*(mDoExt_McaMorfSO **)(this + 0x5fc),pJVar3,(uint)param_2,param_3,(float)dVar8,0.0,-1.0
            );
  this_00 = (J3DModel *)mDoExt_McaMorfSO::getModel(*(mDoExt_McaMorfSO **)(this + 0x5fc));
  ctx = (J3DModelData *)J3DModel::getModelData(this_00);
  mDoExt_btkAnm::remove(*(mDoExt_btkAnm **)(this + 0x5e0),(char *)ctx);
  iVar5 = *(int *)(&d_a_b_yo::yo_demo_btk_idx + param_1 * 4);
  if (iVar5 == 0xff) {
    this[0x1005] = (daB_YO_c)0x0;
  }
  else {
    this[0x1005] = (daB_YO_c)0x1;
    pJVar4 = (J3DAnmTextureSRTKey *)f_op_actor::dComIfG_getObjectRes(&d_a_b_yo::@118744,iVar5);
    mDoExt_btkAnm::init(*(mDoExt_btkAnm **)(this + 0x5e0),ctx,pJVar4,1,(float)dVar8,(ushort)param_2,
                        0);
  }
  mDoExt_btpAnm::remove(*(mDoExt_btpAnm **)(this + 0x5e4),(char *)ctx);
  f_op_actor::dComIfG_getObjectRes
            (&d_a_b_yo::@118744,*(undefined4 *)(&d_a_b_yo::yo_demo_btp_idx + param_1 * 4));
  mDoExt_btpAnm::init(*(mDoExt_btpAnm **)(this + 0x5e4),(EVP_PKEY_CTX *)ctx);
  if (param_1 == 0) {
    this[0x1004] = (daB_YO_c)0x1;
    uVar6 = 0x25;
  }
  else if (param_1 == 1) {
    uVar6 = 0x26;
  }
  else if (this[0x1004] == (daB_YO_c)0x0) {
    uVar6 = 0x25;
  }
  else {
    uVar6 = 0x24;
  }
  f_op_actor::dComIfG_getObjectRes(&d_a_b_yo::@118744,uVar6);
  ::mDoExt_brkAnm::init(*(mDoExt_brkAnm **)(this + 0x5e8),(EVP_PKEY_CTX *)ctx);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::setBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/setBck__8daB_YO_cFiUcff.s"
}
#pragma pop
#endif

/* 8062FE0C-8062FE18 000A8C 000C+00 11/11 0/0 0/0 .text            setActionMode__8daB_YO_cFii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::setActionMode(int param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/setActionMode__8daB_YO_cFii.s"
}
#pragma pop

/* 8062FE18-806300F4 000A98 02DC+00 1/1 0/0 0/0 .text            damage_check__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::damage_check() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/damage_check__8daB_YO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 8063983C-80639840 000048 0004+00 1/2 0/0 0/0 .rodata          @4250 */
SECTION_RODATA static f32 const lit_4250 = 4000.0f;
COMPILER_STRIP_GATE(0x8063983C, &lit_4250);

/* 80639840-80639844 00004C 0004+00 0/3 0/0 0/0 .rodata          @4251 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4251 = 50.0f;
COMPILER_STRIP_GATE(0x80639840, &lit_4251);
#pragma pop

/* 80639844-8063984C 000050 0008+00 0/6 0/0 0/0 .rodata          @4253 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4253[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80639844, &lit_4253);
#pragma pop

/* 806300F4-8063022C 000D74 0138+00 1/1 0/0 0/0 .text            setBreakFrizad__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::setBreakFrizad() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/setBreakFrizad__8daB_YO_cFv.s"
}
#pragma pop

/* 8063022C-806302B4 000EAC 0088+00 6/6 0/0 0/0 .text            setIcicleOperate__8daB_YO_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::setIcicleOperate(int param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/setIcicleOperate__8daB_YO_cFi.s"
}
#pragma pop

/* 806302B4-80630330 000F34 007C+00 2/2 0/0 0/0 .text            setIcicleSubNumber__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::setIcicleSubNumber() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/setIcicleSubNumber__8daB_YO_cFv.s"
}
#pragma pop

/* 80630330-8063040C 000FB0 00DC+00 1/1 0/0 0/0 .text            setWindowBreakEffect__8daB_YO_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::setWindowBreakEffect(int param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/setWindowBreakEffect__8daB_YO_cFi.s"
}
#pragma pop

/* ############################################################################################## */
/* 8063984C-80639850 000058 0004+00 0/7 0/0 0/0 .rodata          @4397 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4397 = 10.0f;
COMPILER_STRIP_GATE(0x8063984C, &lit_4397);
#pragma pop

/* 8063040C-806305B8 00108C 01AC+00 1/1 0/0 0/0 .text            setHensinEffect__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::setHensinEffect() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/setHensinEffect__8daB_YO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80639850-80639854 00005C 0004+00 5/6 0/0 0/0 .rodata          @4432 */
SECTION_RODATA static f32 const lit_4432 = 230.0f;
COMPILER_STRIP_GATE(0x80639850, &lit_4432);

/* 806305B8-806306F0 001238 0138+00 2/2 0/0 0/0 .text            setLandingEffect__8daB_YO_cFf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::setLandingEffect(f32 param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/setLandingEffect__8daB_YO_cFf.s"
}
#pragma pop

/* ############################################################################################## */
/* 80639F38-80639F3C 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80639F3C-80639F40 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80639F40-80639F44 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80639F44-80639F48 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80639F48-80639F4C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80639F4C-80639F50 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80639F50-80639F54 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80639F54-80639F58 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80639F58-80639F5C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80639F5C-80639F60 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80639F60-80639F64 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80639F64-80639F68 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80639F68-80639F6C 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80639F6C-80639F70 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80639F70-80639F74 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80639F74-80639F78 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 80639F74 0001+00 data_80639F74 @1009 */
/* 80639F75 0003+00 data_80639F75 None */
static u8 struct_80639F74[4];

/* 80639F78-80639F84 000048 000C+00 0/1 0/0 0/0 .bss             @3783 */
#pragma push
#pragma force_active on
static u8 lit_3783[12];
#pragma pop

/* 80639F84-80639FE0 000054 005C+00 12/13 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[92];

/* 806306F0-8063089C 001370 01AC+00 4/4 0/0 0/0 .text            setBreakIceEffect__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::setBreakIceEffect() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/setBreakIceEffect__8daB_YO_cFv.s"
}
#pragma pop

/* 8063089C-80630A9C 00151C 0200+00 3/3 0/0 0/0 .text            setWallHitEffect__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::setWallHitEffect() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/setWallHitEffect__8daB_YO_cFv.s"
}
#pragma pop

/* 80630A9C-80630BF0 00171C 0154+00 3/3 0/0 0/0 .text            setChillEffect__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::setChillEffect() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/setChillEffect__8daB_YO_cFv.s"
}
#pragma pop

/* 80630BF0-80630CA0 001870 00B0+00 1/1 0/0 0/0 .text            setApperEffect__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::setApperEffect() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/setApperEffect__8daB_YO_cFv.s"
}
#pragma pop

/* 80630CA0-80630D6C 001920 00CC+00 1/1 0/0 0/0 .text            setApperEffect2__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::setApperEffect2() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/setApperEffect2__8daB_YO_cFv.s"
}
#pragma pop

/* 80630D6C-80630DD8 0019EC 006C+00 1/1 0/0 0/0 .text            s_frizad_delete__FPvPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void s_frizad_delete(void* param_0, void* param_1) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/s_frizad_delete__FPvPv.s"
}
#pragma pop

/* 80630DD8-80630E3C 001A58 0064+00 1/1 0/0 0/0 .text            demo_skip__8daB_YO_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::demo_skip(int param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/demo_skip__8daB_YO_cFi.s"
}
#pragma pop

/* 80630E3C-80630E70 001ABC 0034+00 1/1 0/0 0/0 .text            DemoSkipCallBack__8daB_YO_cFPvi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::DemoSkipCallBack(void* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/DemoSkipCallBack__8daB_YO_cFPvi.s"
}
#pragma pop

/* 80630E70-80630EAC 001AF0 003C+00 1/1 0/0 0/0 .text            setYoMessage__8daB_YO_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::setYoMessage(int param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/setYoMessage__8daB_YO_cFi.s"
}
#pragma pop

/* 80630EAC-80630F28 001B2C 007C+00 1/1 0/0 0/0 .text            doYoMessage__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::doYoMessage() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/doYoMessage__8daB_YO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80639854-80639858 000060 0004+00 0/4 0/0 0/0 .rodata          @5302 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5302 = 1000.0f;
COMPILER_STRIP_GATE(0x80639854, &lit_5302);
#pragma pop

/* 80639858-8063985C 000064 0004+00 0/2 0/0 0/0 .rodata          @5303 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5303 = 180.0f;
COMPILER_STRIP_GATE(0x80639858, &lit_5303);
#pragma pop

/* 8063985C-80639860 000068 0004+00 0/4 0/0 0/0 .rodata          @5304 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5304 = 250.0f;
COMPILER_STRIP_GATE(0x8063985C, &lit_5304);
#pragma pop

/* 80639860-80639864 00006C 0004+00 0/1 0/0 0/0 .rodata          @5305 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5305 = 1450.0f;
COMPILER_STRIP_GATE(0x80639860, &lit_5305);
#pragma pop

/* 80639864-80639868 000070 0004+00 0/3 0/0 0/0 .rodata          @5306 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5306 = 68.0f;
COMPILER_STRIP_GATE(0x80639864, &lit_5306);
#pragma pop

/* 80630F28-80632598 001BA8 1670+00 2/1 0/0 0/0 .text            executeOpening__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::executeOpening() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/executeOpening__8daB_YO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80639868-8063986C 000074 0004+00 0/1 0/0 0/0 .rodata          @5307 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5307 = -30.0f;
COMPILER_STRIP_GATE(0x80639868, &lit_5307);
#pragma pop

/* 8063986C-80639870 000078 0004+00 0/0 0/0 0/0 .rodata          @5308 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5308 = -1550.0f;
COMPILER_STRIP_GATE(0x8063986C, &lit_5308);
#pragma pop

/* 80639870-80639874 00007C 0004+00 0/0 0/0 0/0 .rodata          @5309 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5309 = -700.0f;
COMPILER_STRIP_GATE(0x80639870, &lit_5309);
#pragma pop

/* 80639874-80639878 000080 0004+00 0/0 0/0 0/0 .rodata          @5310 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5310 = -1250.0f;
COMPILER_STRIP_GATE(0x80639874, &lit_5310);
#pragma pop

/* 80639878-8063987C 000084 0004+00 0/0 0/0 0/0 .rodata          @5311 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5311 = 260.0f;
COMPILER_STRIP_GATE(0x80639878, &lit_5311);
#pragma pop

/* 8063987C-80639880 000088 0004+00 0/0 0/0 0/0 .rodata          @5312 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5312 = -1574.0f;
COMPILER_STRIP_GATE(0x8063987C, &lit_5312);
#pragma pop

/* 80639880-80639884 00008C 0004+00 0/0 0/0 0/0 .rodata          @5313 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5313 = -1650.0f;
COMPILER_STRIP_GATE(0x80639880, &lit_5313);
#pragma pop

/* 80639884-80639888 000090 0004+00 0/1 0/0 0/0 .rodata          @5314 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5314 = 120.0f;
COMPILER_STRIP_GATE(0x80639884, &lit_5314);
#pragma pop

/* 80639888-8063988C 000094 0004+00 0/0 0/0 0/0 .rodata          @5315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5315 = -2032.0f;
COMPILER_STRIP_GATE(0x80639888, &lit_5315);
#pragma pop

/* 8063988C-80639890 000098 0004+00 0/11 0/0 0/0 .rodata          @5316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5316 = 0.5f;
COMPILER_STRIP_GATE(0x8063988C, &lit_5316);
#pragma pop

/* 80639890-80639894 00009C 0004+00 0/0 0/0 0/0 .rodata          @5317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5317 = 45.0f;
COMPILER_STRIP_GATE(0x80639890, &lit_5317);
#pragma pop

/* 80639894-80639898 0000A0 0004+00 0/3 0/0 0/0 .rodata          @5318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5318 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80639894, &lit_5318);
#pragma pop

/* 80639898-8063989C 0000A4 0004+00 0/3 0/0 0/0 .rodata          @5319 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5319 = 15.0f;
COMPILER_STRIP_GATE(0x80639898, &lit_5319);
#pragma pop

/* 8063989C-806398A0 0000A8 0004+00 0/0 0/0 0/0 .rodata          @5320 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5320 = 51.0f;
COMPILER_STRIP_GATE(0x8063989C, &lit_5320);
#pragma pop

/* 806398A0-806398A4 0000AC 0004+00 0/0 0/0 0/0 .rodata          @5321 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5321 = 207.0f;
COMPILER_STRIP_GATE(0x806398A0, &lit_5321);
#pragma pop

/* 806398A4-806398A8 0000B0 0004+00 0/0 0/0 0/0 .rodata          @5322 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5322 = -2082.0f;
COMPILER_STRIP_GATE(0x806398A4, &lit_5322);
#pragma pop

/* 806398A8-806398AC 0000B4 0004+00 0/0 0/0 0/0 .rodata          @5323 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5323 = -1562.0f;
COMPILER_STRIP_GATE(0x806398A8, &lit_5323);
#pragma pop

/* 806398AC-806398B0 0000B8 0004+00 0/0 0/0 0/0 .rodata          @5324 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5324 = 29.0f;
COMPILER_STRIP_GATE(0x806398AC, &lit_5324);
#pragma pop

/* 806398B0-806398B4 0000BC 0004+00 0/0 0/0 0/0 .rodata          @5325 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5325 = 16.0f;
COMPILER_STRIP_GATE(0x806398B0, &lit_5325);
#pragma pop

/* 806398B4-806398B8 0000C0 0004+00 0/0 0/0 0/0 .rodata          @5326 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5326 = 1339.0f;
COMPILER_STRIP_GATE(0x806398B4, &lit_5326);
#pragma pop

/* 806398B8-806398BC 0000C4 0004+00 0/0 0/0 0/0 .rodata          @5327 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5327 = 2992.0f;
COMPILER_STRIP_GATE(0x806398B8, &lit_5327);
#pragma pop

/* 806398BC-806398C0 0000C8 0004+00 0/0 0/0 0/0 .rodata          @5328 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5328 = 196.0f;
COMPILER_STRIP_GATE(0x806398BC, &lit_5328);
#pragma pop

/* 806398C0-806398C4 0000CC 0004+00 0/0 0/0 0/0 .rodata          @5329 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5329 = 1172.0f;
COMPILER_STRIP_GATE(0x806398C0, &lit_5329);
#pragma pop

/* 806398C4-806398C8 0000D0 0004+00 0/0 0/0 0/0 .rodata          @5330 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5330 = 3086.0f;
COMPILER_STRIP_GATE(0x806398C4, &lit_5330);
#pragma pop

/* 806398C8-806398CC 0000D4 0004+00 0/0 0/0 0/0 .rodata          @5331 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5331 = 582.0f;
COMPILER_STRIP_GATE(0x806398C8, &lit_5331);
#pragma pop

/* 806398CC-806398D0 0000D8 0004+00 0/0 0/0 0/0 .rodata          @5332 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5332 = 1046.0f;
COMPILER_STRIP_GATE(0x806398CC, &lit_5332);
#pragma pop

/* 806398D0-806398D4 0000DC 0004+00 0/0 0/0 0/0 .rodata          @5333 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5333 = -333.0f;
COMPILER_STRIP_GATE(0x806398D0, &lit_5333);
#pragma pop

/* 806398D4-806398D8 0000E0 0004+00 0/0 0/0 0/0 .rodata          @5334 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5334 = 1251.0f;
COMPILER_STRIP_GATE(0x806398D4, &lit_5334);
#pragma pop

/* 806398D8-806398DC 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5335 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5335 = -500.0f;
COMPILER_STRIP_GATE(0x806398D8, &lit_5335);
#pragma pop

/* 806398DC-806398E0 0000E8 0004+00 0/7 0/0 0/0 .rodata          @5336 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5336 = 500.0f;
COMPILER_STRIP_GATE(0x806398DC, &lit_5336);
#pragma pop

/* 806398E0-806398E4 0000EC 0004+00 0/1 0/0 0/0 .rodata          @5337 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5337 = 400.0f;
COMPILER_STRIP_GATE(0x806398E0, &lit_5337);
#pragma pop

/* 806398E4-806398E8 0000F0 0004+00 0/1 0/0 0/0 .rodata          @5338 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5338 = -200.0f;
COMPILER_STRIP_GATE(0x806398E4, &lit_5338);
#pragma pop

/* 806398E8-806398EC 0000F4 0004+00 0/4 0/0 0/0 .rodata          @5339 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5339 = 200.0f;
COMPILER_STRIP_GATE(0x806398E8, &lit_5339);
#pragma pop

/* 806398EC-806398F0 0000F8 0004+00 0/0 0/0 0/0 .rodata          @5340 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5340 = -1700.0f;
COMPILER_STRIP_GATE(0x806398EC, &lit_5340);
#pragma pop

/* 806398F0-806398F4 0000FC 0004+00 0/4 0/0 0/0 .rodata          @5341 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5341 = 300.0f;
COMPILER_STRIP_GATE(0x806398F0, &lit_5341);
#pragma pop

/* 806398F4-806398F8 000100 0004+00 0/2 0/0 0/0 .rodata          @5342 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5342 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x806398F4, &lit_5342);
#pragma pop

/* 806398F8-806398FC 000104 0004+00 1/6 0/0 0/0 .rodata          @5343 */
SECTION_RODATA static f32 const lit_5343 = 30.0f;
COMPILER_STRIP_GATE(0x806398F8, &lit_5343);

/* 806398FC-80639900 000108 0004+00 0/0 0/0 0/0 .rodata          @5344 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5344 = 9.0f;
COMPILER_STRIP_GATE(0x806398FC, &lit_5344);
#pragma pop

/* 80639900-80639904 00010C 0004+00 0/0 0/0 0/0 .rodata          @5345 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5345 = 0x3D0B4396;
COMPILER_STRIP_GATE(0x80639900, &lit_5345);
#pragma pop

/* 80639904-80639908 000110 0004+00 0/6 0/0 0/0 .rodata          @5346 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5346 = 1500.0f;
COMPILER_STRIP_GATE(0x80639904, &lit_5346);
#pragma pop

/* 80639908-8063990C 000114 0004+00 0/1 0/0 0/0 .rodata          @5347 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5347 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80639908, &lit_5347);
#pragma pop

/* 8063990C-80639910 000118 0004+00 0/0 0/0 0/0 .rodata          @5348 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5348 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x8063990C, &lit_5348);
#pragma pop

/* 80639910-80639914 00011C 0004+00 0/0 0/0 0/0 .rodata          @5349 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5349 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x80639910, &lit_5349);
#pragma pop

/* 80639914-80639918 000120 0004+00 0/0 0/0 0/0 .rodata          @5350 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5350 = 0x3BA3D70A;
COMPILER_STRIP_GATE(0x80639914, &lit_5350);
#pragma pop

/* 80639918-8063991C 000124 0004+00 0/1 0/0 0/0 .rodata          @5351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5351 = 580.0f;
COMPILER_STRIP_GATE(0x80639918, &lit_5351);
#pragma pop

/* 8063991C-80639920 000128 0004+00 0/0 0/0 0/0 .rodata          @5352 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5352 = 170.0f;
COMPILER_STRIP_GATE(0x8063991C, &lit_5352);
#pragma pop

/* 80639920-80639924 00012C 0004+00 0/1 0/0 0/0 .rodata          @5353 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5353 = 600.0f;
COMPILER_STRIP_GATE(0x80639920, &lit_5353);
#pragma pop

/* 80639924-80639928 000130 0004+00 0/0 0/0 0/0 .rodata          @5354 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5354 = 1300.0f;
COMPILER_STRIP_GATE(0x80639924, &lit_5354);
#pragma pop

/* 80639928-8063992C 000134 0004+00 0/0 0/0 0/0 .rodata          @5355 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5355 = 1050.0f;
COMPILER_STRIP_GATE(0x80639928, &lit_5355);
#pragma pop

/* 8063992C-80639934 000138 0004+04 0/0 0/0 0/0 .rodata          @5356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5356[1 + 1 /* padding */] = {
    1350.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8063992C, &lit_5356);
#pragma pop

/* 80639934-8063993C 000140 0008+00 0/7 0/0 0/0 .rodata          @5389 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5389[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80639934, &lit_5389);
#pragma pop

/* 8063993C-80639944 000148 0008+00 0/7 0/0 0/0 .rodata          @5390 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5390[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8063993C, &lit_5390);
#pragma pop

/* 80639944-8063994C 000150 0008+00 0/7 0/0 0/0 .rodata          @5391 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5391[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80639944, &lit_5391);
#pragma pop

/* 8063994C-80639950 000158 0004+00 0/3 0/0 0/0 .rodata          @5405 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5405 = 32768.0f;
COMPILER_STRIP_GATE(0x8063994C, &lit_5405);
#pragma pop

/* 80639950-80639954 00015C 0004+00 0/3 0/0 0/0 .rodata          @5406 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5406 = 8000.0f;
COMPILER_STRIP_GATE(0x80639950, &lit_5406);
#pragma pop

/* 80639954-80639958 000160 0004+00 0/2 0/0 0/0 .rodata          @5407 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5407 = 8.0f;
COMPILER_STRIP_GATE(0x80639954, &lit_5407);
#pragma pop

/* 80632598-80632660 003218 00C8+00 1/1 0/0 0/0 .text            reflectFreeMove__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::reflectFreeMove() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/reflectFreeMove__8daB_YO_cFv.s"
}
#pragma pop

/* 80632660-8063290C 0032E0 02AC+00 4/4 0/0 0/0 .text            calcFreeMove__8daB_YO_cFf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::calcFreeMove(f32 param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/calcFreeMove__8daB_YO_cFf.s"
}
#pragma pop

/* 8063290C-806329CC 00358C 00C0+00 2/2 0/0 0/0 .text            setReflectAngle__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::setReflectAngle() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/setReflectAngle__8daB_YO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80639958-8063995C 000164 0004+00 0/3 0/0 0/0 .rodata          @5637 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5637 = 140.0f;
COMPILER_STRIP_GATE(0x80639958, &lit_5637);
#pragma pop

/* 8063995C-80639960 000168 0004+00 0/2 0/0 0/0 .rodata          @5638 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5638 = 130.0f;
COMPILER_STRIP_GATE(0x8063995C, &lit_5638);
#pragma pop

/* 80639960-80639964 00016C 0004+00 0/4 0/0 0/0 .rodata          @5639 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5639 = 1200.0f;
COMPILER_STRIP_GATE(0x80639960, &lit_5639);
#pragma pop

/* 80639964-8063996C 000170 0004+04 0/1 0/0 0/0 .rodata          @5640 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5640[1 + 1 /* padding */] = {
    4096.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80639964, &lit_5640);
#pragma pop

/* 8063996C-80639974 000178 0008+00 0/1 0/0 0/0 .rodata          @5643 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5643[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8063996C, &lit_5643);
#pragma pop

/* 806329CC-806331CC 00364C 0800+00 1/1 0/0 0/0 .text            executeChase__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::executeChase() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/executeChase__8daB_YO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80639974-80639978 000180 0004+00 0/3 0/0 0/0 .rodata          @5883 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5883 = 700.0f;
COMPILER_STRIP_GATE(0x80639974, &lit_5883);
#pragma pop

/* 80639978-8063997C 000184 0004+00 0/4 0/0 0/0 .rodata          @5884 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5884 = 150.0f;
COMPILER_STRIP_GATE(0x80639978, &lit_5884);
#pragma pop

/* 8063997C-80639980 000188 0004+00 0/2 0/0 0/0 .rodata          @5885 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5885 = -1400.0f;
COMPILER_STRIP_GATE(0x8063997C, &lit_5885);
#pragma pop

/* 80639980-80639984 00018C 0004+00 0/1 0/0 0/0 .rodata          @5886 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5886 = -1270.0f;
COMPILER_STRIP_GATE(0x80639980, &lit_5886);
#pragma pop

/* 80639984-80639988 000190 0004+00 0/1 0/0 0/0 .rodata          @5887 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5887 = -1200.0f;
COMPILER_STRIP_GATE(0x80639984, &lit_5887);
#pragma pop

/* 80639988-8063998C 000194 0004+00 0/2 0/0 0/0 .rodata          @5888 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5888 = 450.0f;
COMPILER_STRIP_GATE(0x80639988, &lit_5888);
#pragma pop

/* 8063998C-80639990 000198 0004+00 0/1 0/0 0/0 .rodata          @5889 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5889 = -730.0f;
COMPILER_STRIP_GATE(0x8063998C, &lit_5889);
#pragma pop

/* 80639990-80639994 00019C 0004+00 0/1 0/0 0/0 .rodata          @5890 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5890 = 44.0f;
COMPILER_STRIP_GATE(0x80639990, &lit_5890);
#pragma pop

/* 80639994-80639998 0001A0 0004+00 0/1 0/0 0/0 .rodata          @5891 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5891 = 220.0f;
COMPILER_STRIP_GATE(0x80639994, &lit_5891);
#pragma pop

/* 80639998-8063999C 0001A4 0004+00 0/1 0/0 0/0 .rodata          @5892 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5892 = 420.0f;
COMPILER_STRIP_GATE(0x80639998, &lit_5892);
#pragma pop

/* 8063999C-806399A0 0001A8 0004+00 0/1 0/0 0/0 .rodata          @5893 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5893 = -270.0f;
COMPILER_STRIP_GATE(0x8063999C, &lit_5893);
#pragma pop

/* 806399A0-806399A4 0001AC 0004+00 0/3 0/0 0/0 .rodata          @5894 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5894 = 350.0f;
COMPILER_STRIP_GATE(0x806399A0, &lit_5894);
#pragma pop

/* 806399A4-806399A8 0001B0 0004+00 0/4 0/0 0/0 .rodata          @5895 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5895 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x806399A4, &lit_5895);
#pragma pop

/* 806399A8-806399AC 0001B4 0004+00 0/4 0/0 0/0 .rodata          @5896 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5896 = -10.0f;
COMPILER_STRIP_GATE(0x806399A8, &lit_5896);
#pragma pop

/* 806331CC-80633EDC 003E4C 0D10+00 1/1 0/0 0/0 .text            executeSeriousDemo__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::executeSeriousDemo() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/executeSeriousDemo__8daB_YO_cFv.s"
}
#pragma pop

/* 80633EDC-80633F50 004B5C 0074+00 1/1 0/0 0/0 .text            checkIcecleRevival__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::checkIcecleRevival() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/checkIcecleRevival__8daB_YO_cFv.s"
}
#pragma pop

/* 80633F50-80634040 004BD0 00F0+00 1/1 0/0 0/0 .text            createIcecleRevival__8daB_YO_cFUc
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::createIcecleRevival(u8 param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/createIcecleRevival__8daB_YO_cFUc.s"
}
#pragma pop

/* 80634040-80634548 004CC0 0508+00 1/1 0/0 0/0 .text            executeJump__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::executeJump() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/executeJump__8daB_YO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 806399AC-806399B0 0001B8 0004+00 0/5 0/0 0/0 .rodata          @6087 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6087 = -5.0f;
COMPILER_STRIP_GATE(0x806399AC, &lit_6087);
#pragma pop

/* 80634548-8063476C 0051C8 0224+00 1/1 0/0 0/0 .text            executeAttackIce__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::executeAttackIce() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/executeAttackIce__8daB_YO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 806399B0-806399B4 0001BC 0004+00 0/2 0/0 0/0 .rodata          @6224 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6224 = 750.0f;
COMPILER_STRIP_GATE(0x806399B0, &lit_6224);
#pragma pop

/* 806399B4-806399B8 0001C0 0004+00 0/1 0/0 0/0 .rodata          @6225 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6225 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x806399B4, &lit_6225);
#pragma pop

/* 8063476C-80634CEC 0053EC 0580+00 1/1 0/0 0/0 .text            executeAttackYose__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::executeAttackYose() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/executeAttackYose__8daB_YO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 806399B8-806399BC 0001C4 0004+00 1/1 0/0 0/0 .rodata          @6259 */
SECTION_RODATA static f32 const lit_6259 = 35.0f;
COMPILER_STRIP_GATE(0x806399B8, &lit_6259);

/* 80634CEC-80634E04 00596C 0118+00 1/1 0/0 0/0 .text checkDamageWithIceBreak__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::checkDamageWithIceBreak() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/checkDamageWithIceBreak__8daB_YO_cFv.s"
}
#pragma pop

/* 80634E04-806352C8 005A84 04C4+00 2/1 0/0 0/0 .text            executeAttackBody__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::executeAttackBody() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/executeAttackBody__8daB_YO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 806399BC-806399C0 0001C8 0004+00 0/1 0/0 0/0 .rodata          @6439 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6439 = 1150.0f;
COMPILER_STRIP_GATE(0x806399BC, &lit_6439);
#pragma pop

/* 806399C0-806399C4 0001CC 0004+00 0/1 0/0 0/0 .rodata          @6440 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6440 = 160.0f;
COMPILER_STRIP_GATE(0x806399C0, &lit_6440);
#pragma pop

/* 806352C8-80635798 005F48 04D0+00 1/1 0/0 0/0 .text            executeDemoRevival__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::executeDemoRevival() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/executeDemoRevival__8daB_YO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 806399C4-806399C8 0001D0 0004+00 0/2 0/0 0/0 .rodata          @6491 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6491 = 80.0f;
COMPILER_STRIP_GATE(0x806399C4, &lit_6491);
#pragma pop

/* 806399C8-806399CC 0001D4 0004+00 0/1 0/0 0/0 .rodata          @6492 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6492 = 900.0f;
COMPILER_STRIP_GATE(0x806399C8, &lit_6492);
#pragma pop

/* 80635798-80635ABC 006418 0324+00 1/1 0/0 0/0 .text            executeDamage__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::executeDamage() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/executeDamage__8daB_YO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 806399CC-806399D0 0001D8 0004+00 0/1 0/0 0/0 .rodata          @6978 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6978 = -300.0f;
COMPILER_STRIP_GATE(0x806399CC, &lit_6978);
#pragma pop

/* 806399D0-806399D4 0001DC 0004+00 0/1 0/0 0/0 .rodata          @6979 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6979 = -1000.0f;
COMPILER_STRIP_GATE(0x806399D0, &lit_6979);
#pragma pop

/* 806399D4-806399D8 0001E0 0004+00 0/1 0/0 0/0 .rodata          @6980 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6980 = 800.0f;
COMPILER_STRIP_GATE(0x806399D4, &lit_6980);
#pragma pop

/* 806399D8-806399DC 0001E4 0004+00 0/1 0/0 0/0 .rodata          @6981 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6981 = -650.0f;
COMPILER_STRIP_GATE(0x806399D8, &lit_6981);
#pragma pop

/* 806399DC-806399E0 0001E8 0004+00 0/1 0/0 0/0 .rodata          @6982 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6982 = 1230.0f;
COMPILER_STRIP_GATE(0x806399DC, &lit_6982);
#pragma pop

/* 806399E0-806399E4 0001EC 0004+00 0/1 0/0 0/0 .rodata          @6983 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6983 = 830.0f;
COMPILER_STRIP_GATE(0x806399E0, &lit_6983);
#pragma pop

/* 806399E4-806399E8 0001F0 0004+00 0/1 0/0 0/0 .rodata          @6984 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6984 = -1100.0f;
COMPILER_STRIP_GATE(0x806399E4, &lit_6984);
#pragma pop

/* 806399E8-806399EC 0001F4 0004+00 0/1 0/0 0/0 .rodata          @6985 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6985 = 18.0f;
COMPILER_STRIP_GATE(0x806399E8, &lit_6985);
#pragma pop

/* 806399EC-806399F0 0001F8 0004+00 0/1 0/0 0/0 .rodata          @6986 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6986 = 158.0f;
COMPILER_STRIP_GATE(0x806399EC, &lit_6986);
#pragma pop

/* 806399F0-806399F4 0001FC 0004+00 0/1 0/0 0/0 .rodata          @6987 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6987 = 17.0f / 10.0f;
COMPILER_STRIP_GATE(0x806399F0, &lit_6987);
#pragma pop

/* 806399F4-806399F8 000200 0004+00 0/1 0/0 0/0 .rodata          @6988 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6988 = -900.0f;
COMPILER_STRIP_GATE(0x806399F4, &lit_6988);
#pragma pop

/* 806399F8-806399FC 000204 0004+00 0/1 0/0 0/0 .rodata          @6989 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6989 = 1540.0f;
COMPILER_STRIP_GATE(0x806399F8, &lit_6989);
#pragma pop

/* 806399FC-80639A00 000208 0004+00 0/1 0/0 0/0 .rodata          @6990 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6990 = -400.0f;
COMPILER_STRIP_GATE(0x806399FC, &lit_6990);
#pragma pop

/* 80639A00-80639A04 00020C 0004+00 0/1 0/0 0/0 .rodata          @6991 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6991 = 540.0f;
COMPILER_STRIP_GATE(0x80639A00, &lit_6991);
#pragma pop

/* 80639A04-80639A08 000210 0004+00 0/2 0/0 0/0 .rodata          @6992 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6992 = -550.0f;
COMPILER_STRIP_GATE(0x80639A04, &lit_6992);
#pragma pop

/* 80639A08-80639A0C 000214 0004+00 0/2 0/0 0/0 .rodata          @6993 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6993 = -250.0f;
COMPILER_STRIP_GATE(0x80639A08, &lit_6993);
#pragma pop

/* 80639A34-80639A34 000240 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80639A39 = "BOSSCLEAR05";
#pragma pop

/* 80635ABC-80636E9C 00673C 13E0+00 1/1 0/0 0/0 .text            executeDeath__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::executeDeath() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/executeDeath__8daB_YO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80639A0C-80639A10 000218 0004+00 0/1 0/0 0/0 .rodata          @7036 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7036 = 1800.0f;
COMPILER_STRIP_GATE(0x80639A0C, &lit_7036);
#pragma pop

/* 80636E9C-80637048 007B1C 01AC+00 2/2 0/0 0/0 .text reviseIceCenterPos__8daB_YO_cFP4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::reviseIceCenterPos(cXyz* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/reviseIceCenterPos__8daB_YO_cFP4cXyz.s"
}
#pragma pop

/* ############################################################################################## */
/* 80639A10-80639A14 00021C 0004+00 0/1 0/0 0/0 .rodata          @7169 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7169 = 25.0f;
COMPILER_STRIP_GATE(0x80639A10, &lit_7169);
#pragma pop

/* 80637048-806374BC 007CC8 0474+00 1/1 0/0 0/0 .text            calcPlayerBufPos__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::calcPlayerBufPos() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/calcPlayerBufPos__8daB_YO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80639A14-80639A18 000220 0004+00 0/1 0/0 0/0 .rodata          @7260 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7260 = -55.0f;
COMPILER_STRIP_GATE(0x80639A14, &lit_7260);
#pragma pop

/* 806374BC-80637990 00813C 04D4+00 3/1 0/0 0/0 .text            action__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::action() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/action__8daB_YO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80639A18-80639A1C 000224 0004+00 0/0 0/0 0/0 .rodata          @7261 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7261 = 27.0f / 10.0f;
COMPILER_STRIP_GATE(0x80639A18, &lit_7261);
#pragma pop

/* 80639A1C-80639A20 000228 0004+00 0/0 0/0 0/0 .rodata          @7262 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7262 = 128.0f;
COMPILER_STRIP_GATE(0x80639A1C, &lit_7262);
#pragma pop

/* 80639A20-80639A24 00022C 0004+00 0/0 0/0 0/0 .rodata          @7263 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7263 = 27.0f / 5.0f;
COMPILER_STRIP_GATE(0x80639A20, &lit_7263);
#pragma pop

/* 80639A24-80639A28 000230 0004+00 0/0 0/0 0/0 .rodata          @7264 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7264 = 1.0f / 125.0f;
COMPILER_STRIP_GATE(0x80639A24, &lit_7264);
#pragma pop

/* 80639A28-80639A2C 000234 0004+00 0/0 0/0 0/0 .rodata          @7265 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7265 = 0x3C75C28F;
COMPILER_STRIP_GATE(0x80639A28, &lit_7265);
#pragma pop

/* 80639A2C-80639A30 000238 0004+00 0/1 0/0 0/0 .rodata          @7320 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7320 = -230.0f;
COMPILER_STRIP_GATE(0x80639A2C, &lit_7320);
#pragma pop

/* 80637990-80637B30 008610 01A0+00 1/1 0/0 0/0 .text            mtx_set__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::mtx_set() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/mtx_set__8daB_YO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80639A30-80639A34 00023C 0004+00 0/1 0/0 0/0 .rodata          @7373 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7373 = 270.0f;
COMPILER_STRIP_GATE(0x80639A30, &lit_7373);
#pragma pop

/* 80637B30-80637E10 0087B0 02E0+00 1/1 0/0 0/0 .text            cc_set__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::cc_set() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/cc_set__8daB_YO_cFv.s"
}
#pragma pop

/* 80637E10-80637FA0 008A90 0190+00 1/1 0/0 0/0 .text            execute__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::execute() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/execute__8daB_YO_cFv.s"
}
#pragma pop

/* 80637FA0-80637FC0 008C20 0020+00 2/1 0/0 0/0 .text            daB_YO_Execute__FP8daB_YO_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daB_YO_Execute(daB_YO_c* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/daB_YO_Execute__FP8daB_YO_c.s"
}
#pragma pop

/* 80637FC0-80637FC8 008C40 0008+00 1/0 0/0 0/0 .text            daB_YO_IsDelete__FP8daB_YO_c */
static bool daB_YO_IsDelete(daB_YO_c* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80639A34-80639A34 000240 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80639A45 = "L5_R50";
SECTION_DEAD static char const* const stringBase_80639A4C = "ykW";
SECTION_DEAD static char const* const stringBase_80639A50 = "ykW1";
SECTION_DEAD static char const* const stringBase_80639A55 = "E_FZ";
#pragma pop

/* 80637FC8-806380D8 008C48 0110+00 1/1 0/0 0/0 .text            _delete__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::_delete() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/_delete__8daB_YO_cFv.s"
}
#pragma pop

/* 806380D8-806380F8 008D58 0020+00 1/0 0/0 0/0 .text            daB_YO_Delete__FP8daB_YO_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daB_YO_Delete(daB_YO_c* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/daB_YO_Delete__FP8daB_YO_c.s"
}
#pragma pop

/* 806380F8-80638838 008D78 0740+00 1/1 0/0 0/0 .text            CreateHeap__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/CreateHeap__8daB_YO_cFv.s"
}
#pragma pop

/* 80638838-80638880 0094B8 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 80638880-806388A0 009500 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void useHeapInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/useHeapInit__FP10fopAc_ac_c.s"
}
#pragma pop

/* 806388A0-806389A0 009520 0100+00 1/1 0/0 0/0 .text            CreateHeap2__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::CreateHeap2() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/CreateHeap2__8daB_YO_cFv.s"
}
#pragma pop

/* 806389A0-806389C0 009620 0020+00 1/1 0/0 0/0 .text            useHeapInit2__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void useHeapInit2(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/useHeapInit2__FP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 80639A34-80639A34 000240 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80639A5A = "B_yo";
#pragma pop

/* 806389C0-80639214 009640 0854+00 1/1 0/0 0/0 .text            create__8daB_YO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_YO_c::create() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/create__8daB_YO_cFv.s"
}
#pragma pop

/* 80639214-806392E0 009E94 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Sph::~dCcD_Sph() {
asm void __dt__8dCcD_SphFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/__dt__8dCcD_SphFv.s"
}
#pragma pop

/* 806392E0-80639364 009F60 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Sph::dCcD_Sph() {
asm void __ct__8dCcD_SphFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/__ct__8dCcD_SphFv.s"
}
#pragma pop

/* 80639364-806393AC 009FE4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 806393AC-806393F4 00A02C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 806393F4-8063943C 00A074 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 8063943C-80639498 00A0BC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80639498-80639508 00A118 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80639508-80639578 00A188 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80639578-8063957C 00A1F8 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
asm void __ct__4cXyzFv() {
    /* empty function */
}

/* 8063957C-8063959C 00A1FC 0020+00 1/0 0/0 0/0 .text            daB_YO_Create__FP8daB_YO_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daB_YO_Create(daB_YO_c* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/daB_YO_Create__FP8daB_YO_c.s"
}
#pragma pop

/* 8063959C-806395E4 00A21C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 806395E4-8063962C 00A264 0048+00 2/1 0/0 0/0 .text            __dt__12daB_YO_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daB_YO_HIO_c::~daB_YO_HIO_c() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/__dt__12daB_YO_HIO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80639FE0-80639FEC 0000B0 000C+00 0/1 0/0 0/0 .bss             @3802 */
#pragma push
#pragma force_active on
static u8 lit_3802[12];
#pragma pop

/* 80639FEC-80639FF8 0000BC 000C+00 0/1 0/0 0/0 .bss m_common_pos__22@unnamed@d_a_b_yo_cpp@ */
#pragma push
#pragma force_active on
static u8 data_80639FEC[12];
#pragma pop

/* 8063962C-80639684 00A2AC 0058+00 0/0 1/0 0/0 .text            __sinit_d_a_b_yo_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_b_yo_cpp() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/__sinit_d_a_b_yo_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8063962C, __sinit_d_a_b_yo_cpp);
#pragma pop

/* 80639684-8063968C 00A304 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80639684() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/func_80639684.s"
}
#pragma pop

/* 8063968C-80639694 00A30C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_8063968C() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/func_8063968C.s"
}
#pragma pop

/* 80639694-806396B0 00A314 001C+00 2/2 0/0 0/0 .text setShapeAngle__16obj_ystone_classF5csXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void obj_ystone_class::setShapeAngle(csXyz param_0) {
asm void setShapeAngle__16obj_ystone_classF5csXyz() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/setShapeAngle__16obj_ystone_classF5csXyz.s"
}
#pragma pop

/* 806396B0-806396CC 00A330 001C+00 2/2 0/0 0/0 .text setCurrentPos__16obj_ystone_classF4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void obj_ystone_class::setCurrentPos(cXyz param_0) {
asm void setCurrentPos__16obj_ystone_classF4cXyz() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/setCurrentPos__16obj_ystone_classF4cXyz.s"
}
#pragma pop

/* 806396CC-806397E0 00A34C 0114+00 1/1 0/0 0/0 .text            abs__4cXyzCFRC3Vec */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void cXyz::abs(Vec const& param_0) const {
asm void abs__4cXyzCFRC3Vec() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_yo/d_a_b_yo/abs__4cXyzCFRC3Vec.s"
}
#pragma pop

/* ############################################################################################## */
/* 80639FF8-80639FFC 0000C8 0004+00 0/0 0/0 0/0 .bss m_common_count__22@unnamed@d_a_b_yo_cpp@ */
#pragma push
#pragma force_active on
static u8 data_80639FF8[4];
#pragma pop

/* 80639FFC-8063A000 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80639FFC[4];
#pragma pop

/* 8063A000-8063A004 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8063A000[4];
#pragma pop

/* 8063A004-8063A008 0000D4 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8063A004[4];
#pragma pop

/* 8063A008-8063A00C 0000D8 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8063A008[4];
#pragma pop

/* 8063A00C-8063A010 0000DC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8063A00C[4];
#pragma pop

/* 8063A010-8063A014 0000E0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8063A010[4];
#pragma pop

/* 8063A014-8063A018 0000E4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8063A014[4];
#pragma pop

/* 8063A018-8063A01C 0000E8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8063A018[4];
#pragma pop

/* 8063A01C-8063A020 0000EC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8063A01C[4];
#pragma pop

/* 8063A020-8063A024 0000F0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8063A020[4];
#pragma pop

/* 8063A024-8063A028 0000F4 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8063A024[4];
#pragma pop

/* 8063A028-8063A02C 0000F8 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8063A028[4];
#pragma pop

/* 8063A02C-8063A030 0000FC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8063A02C[4];
#pragma pop

/* 8063A030-8063A034 000100 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8063A030[4];
#pragma pop

/* 8063A034-8063A038 000104 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8063A034[4];
#pragma pop

/* 8063A038-8063A03C 000108 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8063A038[4];
#pragma pop

/* 8063A03C-8063A040 00010C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8063A03C[4];
#pragma pop

/* 8063A040-8063A044 000110 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8063A040[4];
#pragma pop

/* 8063A044-8063A048 000114 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8063A044[4];
#pragma pop

/* 8063A048-8063A04C 000118 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8063A048[4];
#pragma pop

/* 8063A04C-8063A050 00011C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8063A04C[4];
#pragma pop

/* 8063A050-8063A054 000120 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8063A050[4];
#pragma pop

/* 8063A054-8063A058 000124 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8063A054[4];
#pragma pop

/* 8063A058-8063A05C 000128 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8063A058[4];
#pragma pop

/* 8063A05C-8063A060 00012C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8063A05C[4];
#pragma pop

/* 80639A34-80639A34 000240 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
