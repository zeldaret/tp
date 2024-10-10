/**
 * @file d_a_e_ymb.cpp
 * 
*/

#include "d/actor/d_a_e_ymb.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__13daE_YMB_HIO_cFv();
extern "C" void ctrlJoint__9daE_YMB_cFP8J3DJointP8J3DModel();
extern "C" void __dt__4cXyzFv();
extern "C" void JointCallBack__9daE_YMB_cFP8J3DJointi();
extern "C" static void rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c();
extern "C" void draw__9daE_YMB_cFv();
extern "C" static void daE_YMB_Draw__FP9daE_YMB_c();
extern "C" void setBck__9daE_YMB_cFiUcff();
extern "C" void checkBck__9daE_YMB_cFi();
extern "C" void setActionMode__9daE_YMB_cFii();
extern "C" void setLastDamage__9daE_YMB_cFv();
extern "C" void damage_check__9daE_YMB_cFv();
extern "C" void setCameraSwitch__9daE_YMB_cFv();
extern "C" void checkWaterPos__9daE_YMB_cFv();
extern "C" void checkGroundPos__9daE_YMB_cFv();
extern "C" void setFlyWaitVoice__9daE_YMB_cFv();
extern "C" void setDownWaitVoice__9daE_YMB_cFv();
extern "C" void setHitBoardSe__9daE_YMB_cFv();
extern "C" void setElecEffect1__9daE_YMB_cFv();
extern "C" void setElecEffect2__9daE_YMB_cFv();
extern "C" void setWaterEffect1__9daE_YMB_cFv();
extern "C" void setWaterEffect2__9daE_YMB_cFv();
extern "C" void setBoilEffect__9daE_YMB_cFi();
extern "C" void setDamageEffect__9daE_YMB_cFi();
extern "C" void setDownHamonEffect__9daE_YMB_cFv();
extern "C" void setFlyBlurEffect__9daE_YMB_cFv();
extern "C" void setRockDamageEffect__9daE_YMB_cFv();
extern "C" void setDeathEffect__9daE_YMB_cFv();
extern "C" static void search_drop__FPvPv();
extern "C" void executeWait__9daE_YMB_cFv();
extern "C" void setBitePos__9daE_YMB_cFi();
extern "C" void setInclination__9daE_YMB_cFv();
extern "C" void setBodyAngle__9daE_YMB_cFv();
extern "C" void checkWolfLockIn__9daE_YMB_cFv();
extern "C" void executeFly__9daE_YMB_cFv();
extern "C" void executeFlyAttack__9daE_YMB_cFv();
extern "C" void executeRunAway__9daE_YMB_cFv();
extern "C" void executeGuard__9daE_YMB_cFv();
extern "C" void executeSwim__9daE_YMB_cFv();
extern "C" void executeWaterJump__9daE_YMB_cFv();
extern "C" void getNearDownPos__9daE_YMB_cFv();
extern "C" void executeDamage__9daE_YMB_cFv();
extern "C" void setMidnaBindInit__9daE_YMB_cFP4cXyz();
extern "C" void setMidnaBindLevel__9daE_YMB_cFi();
extern "C" void setWolfLockEffect__9daE_YMB_cFv();
extern "C" void initDownToWater__9daE_YMB_cFv();
extern "C" void calcDownToWater__9daE_YMB_cFv();
extern "C" void executeDown__9daE_YMB_cFv();
extern "C" void setCreateDrop__9daE_YMB_cFv();
extern "C" void executeDeath__9daE_YMB_cFv();
extern "C" void demo_skip__9daE_YMB_cFi();
extern "C" void DemoSkipCallBack__9daE_YMB_cFPvi();
extern "C" void calcLakeDemoPlayerPos__9daE_YMB_cFv();
extern "C" void executeLakeDemo__9daE_YMB_cFv();
extern "C" void executeStartDemo__9daE_YMB_cFv();
extern "C" void checkStartBattleDemo__9daE_YMB_cFv();
extern "C" void executeBattleDemo__9daE_YMB_cFv();
extern "C" void action__9daE_YMB_cFv();
extern "C" void mtx_set__9daE_YMB_cFv();
extern "C" void getBellyBitePos__9daE_YMB_cFP4cXyz();
extern "C" void getDownLockPoint__9daE_YMB_cFv();
extern "C" void setAttentionPos__9daE_YMB_cFv();
extern "C" void cc_set__9daE_YMB_cFv();
extern "C" void execute__9daE_YMB_cFv();
extern "C" static void daE_YMB_Execute__FP9daE_YMB_c();
extern "C" static bool daE_YMB_IsDelete__FP9daE_YMB_c();
extern "C" void _delete__9daE_YMB_cFv();
extern "C" static void daE_YMB_Delete__FP9daE_YMB_c();
extern "C" void CreateHeap__9daE_YMB_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__9daE_YMB_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" static void daE_YMB_Create__FP9daE_YMB_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__13daE_YMB_HIO_cFv();
extern "C" void __sinit_d_a_e_ymb_cpp();
extern "C" void setPos__11daObjDrop_cF4cXyz();
extern "C" extern char const* const d_a_e_ymb__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_MtxToRot__FPA4_CfP5csXyz();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void create__21mDoExt_invisibleModelFP8J3DModelUc();
extern "C" void entryDL__21mDoExt_invisibleModelFP4cXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcM_IsCreating__FUi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_onOneZoneSwitch__Fii();
extern "C" void dComIfGs_offOneZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__12dSv_memBit_cFi();
extern "C" void isSwitch__12dSv_memBit_cCFi();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void setPtT__14dEvt_control_cFPv();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFPCUcii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void LockonTarget__12dAttention_cFl();
extern "C" void LockonTruth__12dAttention_cFv();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __ct__18dBgS_ObjGndChk_SplFv();
extern "C" void __dt__18dBgS_ObjGndChk_SplFv();
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void GetAtHitObj__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void ResetTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void checkNowWolfEyeUp__9daPy_py_cFv();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void Eye__9dCamera_cFv();
extern "C" void Center__9dCamera_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC3Vec();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void cLib_chasePosXZ__FP4cXyzRC4cXyzf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void func_80280808();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void changeSubBgmStatus__8Z2SeqMgrFl();
extern "C" void setBattleBgmOff__8Z2SeqMgrFb();
extern "C" void setForceBattleArea__13Z2SoundObjMgrFbUsUsUs();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
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
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" extern u8 j3dZModeTable[96];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 808218AC-808218B0 000000 0004+00 49/49 0/0 0/0 .rodata          @3791 */
SECTION_RODATA static f32 const lit_3791 = 1.0f;
COMPILER_STRIP_GATE(0x808218AC, &lit_3791);

/* 808218B0-808218B4 000004 0004+00 0/4 0/0 0/0 .rodata          @3792 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3792 = 10.0f;
COMPILER_STRIP_GATE(0x808218B0, &lit_3792);
#pragma pop

/* 808218B4-808218B8 000008 0004+00 0/2 0/0 0/0 .rodata          @3793 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3793 = 70.0f;
COMPILER_STRIP_GATE(0x808218B4, &lit_3793);
#pragma pop

/* 808218B8-808218BC 00000C 0004+00 0/4 0/0 0/0 .rodata          @3794 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3794 = 40.0f;
COMPILER_STRIP_GATE(0x808218B8, &lit_3794);
#pragma pop

/* 808218BC-808218C0 000010 0004+00 0/1 0/0 0/0 .rodata          @3795 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3795 = 750.0f;
COMPILER_STRIP_GATE(0x808218BC, &lit_3795);
#pragma pop

/* 808218C0-808218C4 000014 0004+00 0/2 0/0 0/0 .rodata          @3796 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3796 = 400.0f;
COMPILER_STRIP_GATE(0x808218C0, &lit_3796);
#pragma pop

/* 80821B10-80821B1C 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80821B1C-80821B30 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80821B30-80821B70 000020 0040+00 0/1 0/0 0/0 .data cc_ymb_src__23@unnamed@d_a_e_ymb_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_80821B30[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x75, 0x09, 0x00, 0x01, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 80821B70-80821BB0 000060 0040+00 0/1 0/0 0/0 .data cc_ymb_at_src__23@unnamed@d_a_e_ymb_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_80821B70[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x01, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 80821BB0-80821BF0 0000A0 0040+00 0/1 0/0 0/0 .data cc_ymb_eye_src__23@unnamed@d_a_e_ymb_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_80821BB0[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 80821BF0-80821C30 0000E0 0040+00 0/1 0/0 0/0 .data cc_ymb_tube_src__23@unnamed@d_a_e_ymb_cpp@
 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_80821BF0[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x75, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 80821C30-80821C48 000120 0018+00 3/4 0/0 0/0 .data YMB_DOWN_ATT_JNT__23@unnamed@d_a_e_ymb_cpp@
 */
SECTION_DATA static u8 data_80821C30[24] = {
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x1A,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x1E,
};

/* 80821C48-80821C54 000138 000C+00 0/0 0/0 0/0 .data YMB_DROP_JNT__23@unnamed@d_a_e_ymb_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_80821C48[12] = {
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 80821C54-80821C5C 000144 0008+00 1/1 0/0 0/0 .data            w_eff_id$4417 */
SECTION_DATA static u8 w_eff_id_4417[8] = {
    0x86, 0x30, 0x86, 0x31, 0x86, 0x32, 0x86, 0x33,
};

/* 80821C5C-80821C68 00014C 000C+00 1/1 0/0 0/0 .data            w_eff_id$4497 */
SECTION_DATA static u8 w_eff_id_4497[12] = {
    0x86, 0x36, 0x86, 0x37, 0x86, 0x38, 0x86, 0x39, 0x86, 0x3A, 0x86, 0x3B,
};

/* 80821C68-80821C78 000158 000E+02 1/1 0/0 0/0 .data            w_eff_id$4533 */
SECTION_DATA static u8 w_eff_id_4533[14 + 2 /* padding */] = {
    0x86,
    0x3C,
    0x86,
    0x3D,
    0x86,
    0x3E,
    0x86,
    0x3F,
    0x86,
    0x40,
    0x86,
    0x41,
    0x86,
    0x42,
    /* padding */
    0x00,
    0x00,
};

/* 80821C78-80821C88 000168 000E+02 1/1 0/0 0/0 .data            w_eff_id$4569 */
SECTION_DATA static u8 w_eff_id_4569[14 + 2 /* padding */] = {
    0x86,
    0x52,
    0x86,
    0x53,
    0x86,
    0x54,
    0x86,
    0x55,
    0x86,
    0x56,
    0x86,
    0x50,
    0x86,
    0x51,
    /* padding */
    0x00,
    0x00,
};

/* 80821C88-80821C8C 000178 0004+00 1/1 0/0 0/0 .data            w_eff_id$4611 */
SECTION_DATA static u8 w_eff_id_4611[4] = {
    0x86,
    0x43,
    0x86,
    0x46,
};

/* 80821C8C-80821C90 00017C 0004+00 1/1 0/0 0/0 .data            w_eff_id$4637 */
SECTION_DATA static u8 w_eff_id_4637[4] = {
    0x86,
    0x34,
    0x86,
    0x35,
};

/* 80821C90-80821C94 000180 0004+00 1/1 0/0 0/0 .data            w_eff_id$4677 */
SECTION_DATA static u8 w_eff_id_4677[4] = {
    0x86,
    0x5F,
    0x86,
    0x60,
};

/* 80821C94-80821C98 000184 0004+00 1/1 0/0 0/0 .data            w_eff_id$4777 */
SECTION_DATA static u8 w_eff_id_4777[4] = {
    0x86,
    0x5D,
    0x86,
    0x5E,
};

/* 80821C98-80821CA0 000188 0006+02 1/1 0/0 0/0 .data            ymb_chance_time$5424 */
SECTION_DATA static u8 ymb_chance_time[6 + 2 /* padding */] = {
    0x00,
    0x6E,
    0x00,
    0x50,
    0x00,
    0x32,
    /* padding */
    0x00,
    0x00,
};

/* 80821CA0-80821CD0 -00001 0030+00 1/1 0/0 0/0 .data            @5575 */
SECTION_DATA static void* lit_5575[12] = {
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x84),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x148),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x1D8),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x9A8),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x5CC),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x684),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x9A8),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x9A8),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x9A8),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x7C8),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x7C8),
    (void*)(((char*)executeFlyAttack__9daE_YMB_cFv) + 0x980),
};

/* 80821CD0-80821CF8 -00001 0028+00 1/1 0/0 0/0 .data            @6089 */
SECTION_DATA static void* lit_6089[10] = {
    (void*)(((char*)executeSwim__9daE_YMB_cFv) + 0x90),
    (void*)(((char*)executeSwim__9daE_YMB_cFv) + 0xB8),
    (void*)(((char*)executeSwim__9daE_YMB_cFv) + 0x14C),
    (void*)(((char*)executeSwim__9daE_YMB_cFv) + 0x398),
    (void*)(((char*)executeSwim__9daE_YMB_cFv) + 0x398),
    (void*)(((char*)executeSwim__9daE_YMB_cFv) + 0x894),
    (void*)(((char*)executeSwim__9daE_YMB_cFv) + 0x894),
    (void*)(((char*)executeSwim__9daE_YMB_cFv) + 0xA5C),
    (void*)(((char*)executeSwim__9daE_YMB_cFv) + 0xCAC),
    (void*)(((char*)executeSwim__9daE_YMB_cFv) + 0xDB4),
};

/* 80821CF8-80821CFC 0001E8 0004+00 1/1 0/0 0/0 .data            e_prim$6362 */
SECTION_DATA static u8 e_prim_6362[4] = {
    0xFF,
    0x64,
    0x78,
    0x00,
};

/* 80821CFC-80821D00 0001EC 0004+00 1/1 0/0 0/0 .data            e_env$6363 */
SECTION_DATA static u8 e_env_6363[4] = {
    0x3C,
    0x1E,
    0x1E,
    0x00,
};

/* 80821D00-80821D04 0001F0 0004+00 0/1 0/0 0/0 .data            e_prim$6449 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim_6449[4] = {
    0xFF,
    0x64,
    0x78,
    0x00,
};
#pragma pop

/* 80821D04-80821D08 0001F4 0004+00 0/1 0/0 0/0 .data            e_env$6450 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env_6450[4] = {
    0x3C,
    0x1E,
    0x1E,
    0x00,
};
#pragma pop

/* 80821D08-80821D10 0001F8 0006+02 0/1 0/0 0/0 .data            eff_id$6451 */
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

/* 80821D10-80821D40 -00001 0030+00 1/1 0/0 0/0 .data            @7505 */
SECTION_DATA static void* lit_7505[12] = {
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0x64),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0x1C0),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0x434),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0x514),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0x5D0),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0xB2C),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0xB2C),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0xB2C),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0x6E0),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0x86C),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0x928),
    (void*)(((char*)executeStartDemo__9daE_YMB_cFv) + 0xA24),
};

/* 80821D40-80821D74 -00001 0034+00 1/1 0/0 0/0 .data            @7867 */
SECTION_DATA static void* lit_7867[13] = {
    (void*)(((char*)action__9daE_YMB_cFv) + 0x1AC), (void*)(((char*)action__9daE_YMB_cFv) + 0x1B8),
    (void*)(((char*)action__9daE_YMB_cFv) + 0x1C4), (void*)(((char*)action__9daE_YMB_cFv) + 0x1D0),
    (void*)(((char*)action__9daE_YMB_cFv) + 0x1DC), (void*)(((char*)action__9daE_YMB_cFv) + 0x1E8),
    (void*)(((char*)action__9daE_YMB_cFv) + 0x1F4), (void*)(((char*)action__9daE_YMB_cFv) + 0x200),
    (void*)(((char*)action__9daE_YMB_cFv) + 0x20C), (void*)(((char*)action__9daE_YMB_cFv) + 0x218),
    (void*)(((char*)action__9daE_YMB_cFv) + 0x224), (void*)(((char*)action__9daE_YMB_cFv) + 0x230),
    (void*)(((char*)action__9daE_YMB_cFv) + 0x23C),
};

/* 80821D74-80821D94 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_YMB_Method */
static actor_method_class l_daE_YMB_Method = {
    (process_method_func)daE_YMB_Create__FP9daE_YMB_c,
    (process_method_func)daE_YMB_Delete__FP9daE_YMB_c,
    (process_method_func)daE_YMB_Execute__FP9daE_YMB_c,
    (process_method_func)daE_YMB_IsDelete__FP9daE_YMB_c,
    (process_method_func)daE_YMB_Draw__FP9daE_YMB_c,
};

/* 80821D94-80821DC4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_YMB */
extern actor_process_profile_definition g_profile_E_YMB = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_YMB,             // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daE_YMB_c),      // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  196,                    // mPriority
  &l_daE_YMB_Method,      // sub_method
  0x00044000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80821DC4-80821DD0 0002B4 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80821DD0-80821DDC 0002C0 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80821DDC-80821DE8 0002CC 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80821DE8-80821DF4 0002D8 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80821DF4-80821E00 0002E4 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80821E00-80821E0C 0002F0 000C+00 2/2 0/0 0/0 .data            __vt__13daE_YMB_HIO_c */
SECTION_DATA extern void* __vt__13daE_YMB_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daE_YMB_HIO_cFv,
};

/* 8081610C-8081615C 0000EC 0050+00 1/1 0/0 0/0 .text            __ct__13daE_YMB_HIO_cFv */
daE_YMB_HIO_c::daE_YMB_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808218C4-808218C8 000018 0004+00 6/37 0/0 0/0 .rodata          @3910 */
SECTION_RODATA static u8 const lit_3910[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x808218C4, &lit_3910);

/* 808218C8-808218CC 00001C 0004+00 0/2 0/0 0/0 .rodata          @3911 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3911 = -100.0f;
COMPILER_STRIP_GATE(0x808218C8, &lit_3911);
#pragma pop

/* 808218CC-808218D4 000020 0008+00 0/4 0/0 0/0 .rodata          @3913 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3913[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x808218CC, &lit_3913);
#pragma pop

/* 8081615C-808164B4 00013C 0358+00 1/1 0/0 0/0 .text ctrlJoint__9daE_YMB_cFP8J3DJointP8J3DModel
 */
void daE_YMB_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 808164B4-808164F0 000494 003C+00 8/8 0/0 0/1 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv(void) {
    // NONMATCHING
}

/* 808164F0-8081653C 0004D0 004C+00 1/1 0/0 0/0 .text JointCallBack__9daE_YMB_cFP8J3DJointi */
void daE_YMB_c::JointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 8081653C-80816554 00051C 0018+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallBack(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808218D4-808218D8 000028 0004+00 0/2 0/0 0/0 .rodata          @4064 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4064 = 255.0f;
COMPILER_STRIP_GATE(0x808218D4, &lit_4064);
#pragma pop

/* 808218D8-808218DC 00002C 0004+00 0/8 0/0 0/0 .rodata          @4065 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4065 = 100.0f;
COMPILER_STRIP_GATE(0x808218D8, &lit_4065);
#pragma pop

/* 808218DC-808218E0 000030 0004+00 0/3 0/0 0/0 .rodata          @4066 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4066 = 2500.0f;
COMPILER_STRIP_GATE(0x808218DC, &lit_4066);
#pragma pop

/* 80816554-8081695C 000534 0408+00 1/1 0/0 0/0 .text            draw__9daE_YMB_cFv */
void daE_YMB_c::draw() {
    // NONMATCHING
}

/* 8081695C-8081697C 00093C 0020+00 1/0 0/0 0/0 .text            daE_YMB_Draw__FP9daE_YMB_c */
static void daE_YMB_Draw(daE_YMB_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808218E0-808218E4 000034 0004+00 3/3 0/0 0/0 .rodata          @4083 */
SECTION_RODATA static f32 const lit_4083 = -1.0f;
COMPILER_STRIP_GATE(0x808218E0, &lit_4083);

/* 80821B04-80821B04 000258 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80821B04 = "E_YB";
#pragma pop

/* 8081697C-80816A20 00095C 00A4+00 14/14 0/0 0/0 .text            setBck__9daE_YMB_cFiUcff */
void daE_YMB_c::setBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    // NONMATCHING
}

/* 80816A20-80816A7C 000A00 005C+00 5/5 0/0 0/0 .text            checkBck__9daE_YMB_cFi */
void daE_YMB_c::checkBck(int param_0) {
    // NONMATCHING
}

/* 80816A7C-80816A88 000A5C 000C+00 15/15 0/0 0/0 .text            setActionMode__9daE_YMB_cFii */
void daE_YMB_c::setActionMode(int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808218E4-808218EC 000038 0004+04 0/10 0/0 0/0 .rodata          @4111 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4111[1 + 1 /* padding */] = {
    3.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x808218E4, &lit_4111);
#pragma pop

/* 80816A88-80816B7C 000A68 00F4+00 1/1 0/0 0/0 .text            setLastDamage__9daE_YMB_cFv */
void daE_YMB_c::setLastDamage() {
    // NONMATCHING
}

/* 80816B7C-80816E78 000B5C 02FC+00 1/1 0/0 0/0 .text            damage_check__9daE_YMB_cFv */
void daE_YMB_c::damage_check() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808218EC-808218F4 000040 0008+00 0/14 0/0 0/0 .rodata          @4268 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4268[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x808218EC, &lit_4268);
#pragma pop

/* 808218F4-808218FC 000048 0008+00 0/14 0/0 0/0 .rodata          @4269 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4269[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x808218F4, &lit_4269);
#pragma pop

/* 808218FC-80821904 000050 0008+00 0/15 0/0 0/0 .rodata          @4270 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4270[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x808218FC, &lit_4270);
#pragma pop

/* 80821904-80821908 000058 0004+00 0/5 0/0 0/0 .rodata          @4271 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4271 = 3000.0f;
COMPILER_STRIP_GATE(0x80821904, &lit_4271);
#pragma pop

/* 80816E78-80817064 000E58 01EC+00 1/1 0/0 0/0 .text            setCameraSwitch__9daE_YMB_cFv */
void daE_YMB_c::setCameraSwitch() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80821908-8082190C 00005C 0004+00 0/7 0/0 0/0 .rodata          @4289 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4289 = 1000.0f;
COMPILER_STRIP_GATE(0x80821908, &lit_4289);
#pragma pop

/* 8082190C-80821910 000060 0004+00 1/2 0/0 0/0 .rodata          @4290 */
SECTION_RODATA static f32 const lit_4290 = -1000000000.0f;
COMPILER_STRIP_GATE(0x8082190C, &lit_4290);

/* 80821910-80821914 000064 0004+00 1/6 0/0 0/0 .rodata          @4291 */
SECTION_RODATA static f32 const lit_4291 = 200.0f;
COMPILER_STRIP_GATE(0x80821910, &lit_4291);

/* 80821E18-80821E1C 000008 0001+03 8/8 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80821E1C-80821E20 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80821E20-80821E24 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80821E24-80821E28 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80821E28-80821E2C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80821E2C-80821E30 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80821E30-80821E34 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80821E34-80821E38 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80821E38-80821E3C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80821E3C-80821E40 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80821E40-80821E44 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80821E44-80821E48 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80821E48-80821E4C 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80821E4C-80821E50 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80821E50-80821E54 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80821E54-80821E58 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 80821E54 0001+00 data_80821E54 @1009 */
/* 80821E55 0003+00 data_80821E55 None */
static u8 struct_80821E54[4];

/* 80821E58-80821E64 000048 000C+00 0/1 0/0 0/0 .bss             @3786 */
#pragma push
#pragma force_active on
static u8 lit_3786[12];
#pragma pop

/* 80821E64-80821E84 000054 0020+00 12/20 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[32];

/* 80817064-80817164 001044 0100+00 1/1 0/0 0/0 .text            checkWaterPos__9daE_YMB_cFv */
void daE_YMB_c::checkWaterPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80821914-80821918 000068 0004+00 1/4 0/0 0/0 .rodata          @4304 */
SECTION_RODATA static f32 const lit_4304 = 500.0f;
COMPILER_STRIP_GATE(0x80821914, &lit_4304);

/* 80817164-80817200 001144 009C+00 1/1 0/0 0/0 .text            checkGroundPos__9daE_YMB_cFv */
void daE_YMB_c::checkGroundPos() {
    // NONMATCHING
}

/* 80817200-8081727C 0011E0 007C+00 6/6 0/0 0/0 .text            setFlyWaitVoice__9daE_YMB_cFv */
void daE_YMB_c::setFlyWaitVoice() {
    // NONMATCHING
}

/* 8081727C-808172F8 00125C 007C+00 1/1 0/0 0/0 .text            setDownWaitVoice__9daE_YMB_cFv */
void daE_YMB_c::setDownWaitVoice() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80821918-8082191C 00006C 0004+00 1/6 0/0 0/0 .rodata          @4343 */
SECTION_RODATA static f32 const lit_4343 = 150.0f;
COMPILER_STRIP_GATE(0x80821918, &lit_4343);

/* 808172F8-808173B0 0012D8 00B8+00 0/0 0/0 1/1 .text            setHitBoardSe__9daE_YMB_cFv */
void daE_YMB_c::setHitBoardSe() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8082191C-80821920 000070 0004+00 0/1 0/0 0/0 .rodata          @4411 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4411 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x8082191C, &lit_4411);
#pragma pop

/* 80821920-80821924 000074 0004+00 0/4 0/0 0/0 .rodata          @4412 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4412 = 20.0f;
COMPILER_STRIP_GATE(0x80821920, &lit_4412);
#pragma pop

/* 808173B0-8081756C 001390 01BC+00 4/4 0/0 0/0 .text            setElecEffect1__9daE_YMB_cFv */
void daE_YMB_c::setElecEffect1() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80821924-80821928 000078 0004+00 0/3 0/0 0/0 .rodata          @4487 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4487 = 2.0f;
COMPILER_STRIP_GATE(0x80821924, &lit_4487);
#pragma pop

/* 80821928-8082192C 00007C 0004+00 0/2 0/0 0/0 .rodata          @4488 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4488 = 60.0f;
COMPILER_STRIP_GATE(0x80821928, &lit_4488);
#pragma pop

/* 8081756C-80817744 00154C 01D8+00 6/6 0/0 0/0 .text            setElecEffect2__9daE_YMB_cFv */
void daE_YMB_c::setElecEffect2() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80821E84-80821E90 000074 000C+00 0/1 0/0 0/0 .bss             @3797 */
#pragma push
#pragma force_active on
static u8 lit_3797[12];
#pragma pop

/* 80821E90-80821E9C 000080 000C+00 0/1 0/0 0/0 .bss             @3798 */
#pragma push
#pragma force_active on
static u8 lit_3798[12];
#pragma pop

/* 80821E9C-80821EA8 00008C 000C+00 0/1 0/0 0/0 .bss             @3799 */
#pragma push
#pragma force_active on
static u8 lit_3799[12];
#pragma pop

/* 80821EA8-80821EB4 000098 000C+00 0/1 0/0 0/0 .bss             @3800 */
#pragma push
#pragma force_active on
static u8 lit_3800[12];
#pragma pop

/* 80821EB4-80821EC0 0000A4 000C+00 0/1 0/0 0/0 .bss             @3801 */
#pragma push
#pragma force_active on
static u8 lit_3801[12];
#pragma pop

/* 80821EC0-80821ECC 0000B0 000C+00 0/1 0/0 0/0 .bss             @3802 */
#pragma push
#pragma force_active on
static u8 lit_3802[12];
#pragma pop

/* 80821ECC-80821ED8 0000BC 000C+00 0/1 0/0 0/0 .bss             @3803 */
#pragma push
#pragma force_active on
static u8 lit_3803[12];
#pragma pop

/* 80821ED8-80821EE4 0000C8 000C+00 0/1 0/0 0/0 .bss             @3804 */
#pragma push
#pragma force_active on
static u8 lit_3804[12];
#pragma pop

/* 80821EE4-80821EF0 0000D4 000C+00 0/1 0/0 0/0 .bss             @3805 */
#pragma push
#pragma force_active on
static u8 lit_3805[12];
#pragma pop

/* 80821EF0-80821EFC 0000E0 000C+00 0/1 0/0 0/0 .bss             @3806 */
#pragma push
#pragma force_active on
static u8 lit_3806[12];
#pragma pop

/* 80821EFC-80821F08 0000EC 000C+00 0/1 0/0 0/0 .bss             @3807 */
#pragma push
#pragma force_active on
static u8 lit_3807[12];
#pragma pop

/* 80821F08-80821F14 0000F8 000C+00 0/1 0/0 0/0 .bss             @3808 */
#pragma push
#pragma force_active on
static u8 lit_3808[12];
#pragma pop

/* 80821F14-80821F20 000104 000C+00 0/1 0/0 0/0 .bss             @3809 */
#pragma push
#pragma force_active on
static u8 lit_3809[12];
#pragma pop

/* 80821F20-80821F2C 000110 000C+00 0/1 0/0 0/0 .bss             @3810 */
#pragma push
#pragma force_active on
static u8 lit_3810[12];
#pragma pop

/* 80821F2C-80821F38 00011C 000C+00 0/1 0/0 0/0 .bss             @3811 */
#pragma push
#pragma force_active on
static u8 lit_3811[12];
#pragma pop

/* 80821F38-80821FEC 000128 00B4+00 4/5 0/0 0/0 .bss YMB_DOWN_POS__23@unnamed@d_a_e_ymb_cpp@ */
static u8 data_80821F38[180];

/* 80821FEC-80821FFC 0001DC 000C+04 0/1 0/0 0/0 .bss             @4494 */
#pragma push
#pragma force_active on
static u8 lit_4494[12 + 4 /* padding */];
#pragma pop

/* 80821FFC-80822008 0001EC 000C+00 0/1 0/0 0/0 .bss             sc$4493 */
#pragma push
#pragma force_active on
static u8 sc_4493[12];
#pragma pop

/* 80817744-8081785C 001724 0118+00 4/4 0/0 0/0 .text            setWaterEffect1__9daE_YMB_cFv */
void daE_YMB_c::setWaterEffect1() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80822008-80822018 0001F8 000C+04 0/1 0/0 0/0 .bss             @4530 */
#pragma push
#pragma force_active on
static u8 lit_4530[12 + 4 /* padding */];
#pragma pop

/* 80822018-80822024 000208 000C+00 0/1 0/0 0/0 .bss             sc$4529 */
#pragma push
#pragma force_active on
static u8 sc_4529[12];
#pragma pop

/* 8081785C-80817974 00183C 0118+00 2/2 0/0 0/0 .text            setWaterEffect2__9daE_YMB_cFv */
void daE_YMB_c::setWaterEffect2() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80822024-80822034 000214 000C+04 0/1 0/0 0/0 .bss             @4566 */
#pragma push
#pragma force_active on
static u8 lit_4566[12 + 4 /* padding */];
#pragma pop

/* 80822034-80822040 000224 000C+00 0/1 0/0 0/0 .bss             sc$4565 */
#pragma push
#pragma force_active on
static u8 sc_4565[12];
#pragma pop

/* 80817974-80817AEC 001954 0178+00 1/1 0/0 0/0 .text            setBoilEffect__9daE_YMB_cFi */
void daE_YMB_c::setBoilEffect(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80822040-80822050 000230 000C+04 0/1 0/0 0/0 .bss             @4608 */
#pragma push
#pragma force_active on
static u8 lit_4608[12 + 4 /* padding */];
#pragma pop

/* 80822050-8082205C 000240 000C+00 0/1 0/0 0/0 .bss             sc$4607 */
#pragma push
#pragma force_active on
static u8 sc_4607[12];
#pragma pop

/* 80817AEC-80817BD8 001ACC 00EC+00 1/1 0/0 0/0 .text            setDamageEffect__9daE_YMB_cFi */
void daE_YMB_c::setDamageEffect(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8082205C-8082206C 00024C 000C+04 0/1 0/0 0/0 .bss             @4634 */
#pragma push
#pragma force_active on
static u8 lit_4634[12 + 4 /* padding */];
#pragma pop

/* 8082206C-80822078 00025C 000C+00 0/1 0/0 0/0 .bss             sc$4633 */
#pragma push
#pragma force_active on
static u8 sc_4633[12];
#pragma pop

/* 80817BD8-80817CF0 001BB8 0118+00 2/2 0/0 0/0 .text            setDownHamonEffect__9daE_YMB_cFv */
void daE_YMB_c::setDownHamonEffect() {
    // NONMATCHING
}

/* 80817CF0-80817E7C 001CD0 018C+00 1/1 0/0 0/0 .text            setFlyBlurEffect__9daE_YMB_cFv */
void daE_YMB_c::setFlyBlurEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80822078-80822088 000268 000C+04 0/1 0/0 0/0 .bss             @4736 */
#pragma push
#pragma force_active on
static u8 lit_4736[12 + 4 /* padding */];
#pragma pop

/* 80822088-80822094 000278 000C+00 0/1 0/0 0/0 .bss             sc$4735 */
#pragma push
#pragma force_active on
static u8 sc_4735[12];
#pragma pop

/* 80817E7C-80817FDC 001E5C 0160+00 1/1 0/0 0/0 .text            setRockDamageEffect__9daE_YMB_cFv
 */
void daE_YMB_c::setRockDamageEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80822094-808220A4 000284 000C+04 0/1 0/0 0/0 .bss             @4774 */
#pragma push
#pragma force_active on
static u8 lit_4774[12 + 4 /* padding */];
#pragma pop

/* 808220A4-808220B0 000294 000C+00 0/1 0/0 0/0 .bss             sc$4773 */
#pragma push
#pragma force_active on
static u8 sc_4773[12];
#pragma pop

/* 80817FDC-80818158 001FBC 017C+00 1/1 0/0 0/0 .text            setDeathEffect__9daE_YMB_cFv */
void daE_YMB_c::setDeathEffect() {
    // NONMATCHING
}

/* 80818158-808181F4 002138 009C+00 1/1 0/0 0/0 .text            search_drop__FPvPv */
static void search_drop(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8082192C-80821930 000080 0004+00 0/4 0/0 0/0 .rodata          @4858 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4858 = 300.0f;
COMPILER_STRIP_GATE(0x8082192C, &lit_4858);
#pragma pop

/* 808181F4-80818328 0021D4 0134+00 1/1 0/0 0/0 .text            executeWait__9daE_YMB_cFv */
void daE_YMB_c::executeWait() {
    // NONMATCHING
}

/* 80818328-80818370 002308 0048+00 1/1 0/0 0/0 .text            setBitePos__9daE_YMB_cFi */
void daE_YMB_c::setBitePos(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80821930-80821934 000084 0004+00 0/7 0/0 0/0 .rodata          @4904 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4904 = 50.0f;
COMPILER_STRIP_GATE(0x80821930, &lit_4904);
#pragma pop

/* 80818370-80818518 002350 01A8+00 1/1 0/0 0/0 .text            setInclination__9daE_YMB_cFv */
void daE_YMB_c::setInclination() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80821934-80821938 000088 0004+00 0/1 0/0 0/0 .rodata          @5021 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5021 = -32.0f;
COMPILER_STRIP_GATE(0x80821934, &lit_5021);
#pragma pop

/* 80821938-8082193C 00008C 0004+00 0/1 0/0 0/0 .rodata          @5022 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5022 = 48.0f;
COMPILER_STRIP_GATE(0x80821938, &lit_5022);
#pragma pop

/* 80818518-80818930 0024F8 0418+00 3/3 0/0 0/0 .text            setBodyAngle__9daE_YMB_cFv */
void daE_YMB_c::setBodyAngle() {
    // NONMATCHING
}

/* 80818930-80818AE8 002910 01B8+00 3/3 0/0 0/0 .text            checkWolfLockIn__9daE_YMB_cFv */
void daE_YMB_c::checkWolfLockIn() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8082193C-80821940 000090 0004+00 0/10 0/0 0/0 .rodata          @5372 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5372 = 5.0f;
COMPILER_STRIP_GATE(0x8082193C, &lit_5372);
#pragma pop

/* 80821940-80821944 000094 0004+00 0/2 0/0 0/0 .rodata          @5373 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5373 = 2200.0f;
COMPILER_STRIP_GATE(0x80821940, &lit_5373);
#pragma pop

/* 80821944-80821948 000098 0004+00 0/3 0/0 0/0 .rodata          @5374 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5374 = 1800.0f;
COMPILER_STRIP_GATE(0x80821944, &lit_5374);
#pragma pop

/* 80821948-8082194C 00009C 0004+00 0/2 0/0 0/0 .rodata          @5375 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5375 = 2048.0f;
COMPILER_STRIP_GATE(0x80821948, &lit_5375);
#pragma pop

/* 8082194C-80821950 0000A0 0004+00 0/3 0/0 0/0 .rodata          @5376 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5376 = 0.5f;
COMPILER_STRIP_GATE(0x8082194C, &lit_5376);
#pragma pop

/* 80821950-80821954 0000A4 0004+00 0/3 0/0 0/0 .rodata          @5377 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5377 = 650.0f;
COMPILER_STRIP_GATE(0x80821950, &lit_5377);
#pragma pop

/* 80821954-80821958 0000A8 0004+00 1/3 0/0 0/0 .rodata          @5378 */
SECTION_RODATA static f32 const lit_5378 = 2000.0f;
COMPILER_STRIP_GATE(0x80821954, &lit_5378);

/* 80821958-8082195C 0000AC 0004+00 0/1 0/0 0/0 .rodata          @5379 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5379 = 700.0f;
COMPILER_STRIP_GATE(0x80821958, &lit_5379);
#pragma pop

/* 80818AE8-80819610 002AC8 0B28+00 1/1 0/0 0/0 .text            executeFly__9daE_YMB_cFv */
void daE_YMB_c::executeFly() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8082195C-80821960 0000B0 0004+00 0/2 0/0 0/0 .rodata          @5571 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5571 = 15.0f;
COMPILER_STRIP_GATE(0x8082195C, &lit_5571);
#pragma pop

/* 80821960-80821964 0000B4 0004+00 0/1 0/0 0/0 .rodata          @5572 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5572 = -15.0f;
COMPILER_STRIP_GATE(0x80821960, &lit_5572);
#pragma pop

/* 80819610-80819FD0 0035F0 09C0+00 2/1 0/0 0/0 .text            executeFlyAttack__9daE_YMB_cFv */
void daE_YMB_c::executeFlyAttack() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80821964-80821968 0000B8 0004+00 0/0 0/0 0/0 .rodata          @5573 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5573 = 7.0f;
COMPILER_STRIP_GATE(0x80821964, &lit_5573);
#pragma pop

/* 80821968-8082196C 0000BC 0004+00 0/2 0/0 0/0 .rodata          @5574 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5574 = 30.0f;
COMPILER_STRIP_GATE(0x80821968, &lit_5574);
#pragma pop

/* 8082196C-80821970 0000C0 0004+00 0/2 0/0 0/0 .rodata          @5744 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5744 = 1300.0f;
COMPILER_STRIP_GATE(0x8082196C, &lit_5744);
#pragma pop

/* 80819FD0-8081A718 003FB0 0748+00 1/1 0/0 0/0 .text            executeRunAway__9daE_YMB_cFv */
void daE_YMB_c::executeRunAway() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80821970-80821974 0000C4 0004+00 0/2 0/0 0/0 .rodata          @5772 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5772 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80821970, &lit_5772);
#pragma pop

/* 8081A718-8081A88C 0046F8 0174+00 1/1 0/0 0/0 .text            executeGuard__9daE_YMB_cFv */
void daE_YMB_c::executeGuard() {
    // NONMATCHING
}

/* 8081A88C-8081B78C 00486C 0F00+00 2/1 0/0 0/0 .text            executeSwim__9daE_YMB_cFv */
void daE_YMB_c::executeSwim() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80821974-80821978 0000C8 0004+00 0/0 0/0 0/0 .rodata          @6083 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6083 = 16384.0f;
COMPILER_STRIP_GATE(0x80821974, &lit_6083);
#pragma pop

/* 80821978-8082197C 0000CC 0004+00 0/0 0/0 0/0 .rodata          @6084 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6084 = 8192.0f;
COMPILER_STRIP_GATE(0x80821978, &lit_6084);
#pragma pop

/* 8082197C-80821980 0000D0 0004+00 0/0 0/0 0/0 .rodata          @6085 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6085 = 512.0f;
COMPILER_STRIP_GATE(0x8082197C, &lit_6085);
#pragma pop

/* 80821980-80821984 0000D4 0004+00 0/0 0/0 0/0 .rodata          @6086 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6086 = 1536.0f;
COMPILER_STRIP_GATE(0x80821980, &lit_6086);
#pragma pop

/* 80821984-80821988 0000D8 0004+00 0/1 0/0 0/0 .rodata          @6087 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6087 = -10.0f;
COMPILER_STRIP_GATE(0x80821984, &lit_6087);
#pragma pop

/* 80821988-8082198C 0000DC 0004+00 0/0 0/0 0/0 .rodata          @6088 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6088 = 4000.0f;
COMPILER_STRIP_GATE(0x80821988, &lit_6088);
#pragma pop

/* 8082198C-80821990 0000E0 0004+00 0/1 0/0 0/0 .rodata          @6162 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6162 = -50.0f;
COMPILER_STRIP_GATE(0x8082198C, &lit_6162);
#pragma pop

/* 80821990-80821994 0000E4 0004+00 0/2 0/0 0/0 .rodata          @6163 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6163 = 80.0f;
COMPILER_STRIP_GATE(0x80821990, &lit_6163);
#pragma pop

/* 80821994-80821998 0000E8 0004+00 0/1 0/0 0/0 .rodata          @6164 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6164 = -30.0f;
COMPILER_STRIP_GATE(0x80821994, &lit_6164);
#pragma pop

/* 80821998-8082199C 0000EC 0004+00 0/1 0/0 0/0 .rodata          @6165 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6165 = 24.0f;
COMPILER_STRIP_GATE(0x80821998, &lit_6165);
#pragma pop

/* 8081B78C-8081BC10 00576C 0484+00 1/1 0/0 0/0 .text            executeWaterJump__9daE_YMB_cFv */
void daE_YMB_c::executeWaterJump() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8082199C-808219A0 0000F0 0004+00 0/1 0/0 0/0 .rodata          @6254 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6254 = 1500.0f;
COMPILER_STRIP_GATE(0x8082199C, &lit_6254);
#pragma pop

/* 8081BC10-8081BEE8 005BF0 02D8+00 1/1 0/0 0/0 .text            getNearDownPos__9daE_YMB_cFv */
void daE_YMB_c::getNearDownPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808219A0-808219A4 0000F4 0004+00 0/1 0/0 0/0 .rodata          @6356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6356 = -20.0f;
COMPILER_STRIP_GATE(0x808219A0, &lit_6356);
#pragma pop

/* 8081BEE8-8081C4EC 005EC8 0604+00 1/2 0/0 0/0 .text            executeDamage__9daE_YMB_cFv */
void daE_YMB_c::executeDamage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808219A4-808219A8 0000F8 0004+00 0/2 0/0 0/0 .rodata          @6445 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6445 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x808219A4, &lit_6445);
#pragma pop

/* 8081C4EC-8081C7D0 0064CC 02E4+00 1/1 0/0 0/0 .text            setMidnaBindInit__9daE_YMB_cFP4cXyz
 */
void daE_YMB_c::setMidnaBindInit(cXyz* param_0) {
    // NONMATCHING
}

/* 8081C7D0-8081C908 0067B0 0138+00 1/1 0/0 0/0 .text            setMidnaBindLevel__9daE_YMB_cFi */
void daE_YMB_c::setMidnaBindLevel(int param_0) {
    // NONMATCHING
}

/* 8081C908-8081CC14 0068E8 030C+00 1/1 0/0 0/0 .text            setWolfLockEffect__9daE_YMB_cFv */
void daE_YMB_c::setWolfLockEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808219A8-808219AC 0000FC 0004+00 0/1 0/0 0/0 .rodata          @6596 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6596 = 16.0f;
COMPILER_STRIP_GATE(0x808219A8, &lit_6596);
#pragma pop

/* 8081CC14-8081CD00 006BF4 00EC+00 2/2 0/0 0/0 .text            initDownToWater__9daE_YMB_cFv */
void daE_YMB_c::initDownToWater() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808219AC-808219B0 000100 0004+00 0/1 0/0 0/0 .rodata          @6654 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6654 = -60.0f;
COMPILER_STRIP_GATE(0x808219AC, &lit_6654);
#pragma pop

/* 8081CD00-8081CE6C 006CE0 016C+00 2/2 0/0 0/0 .text            calcDownToWater__9daE_YMB_cFv */
void daE_YMB_c::calcDownToWater() {
    // NONMATCHING
}

/* 8081CE6C-8081D4D8 006E4C 066C+00 1/1 0/0 0/0 .text            executeDown__9daE_YMB_cFv */
void daE_YMB_c::executeDown() {
    // NONMATCHING
}

/* 8081D4D8-8081D594 0074B8 00BC+00 1/1 0/0 0/0 .text            setCreateDrop__9daE_YMB_cFv */
void daE_YMB_c::setCreateDrop() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808219B0-808219B4 000104 0004+00 0/1 0/0 0/0 .rodata          @7019 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7019 = -88400.0f;
COMPILER_STRIP_GATE(0x808219B0, &lit_7019);
#pragma pop

/* 808219B4-808219B8 000108 0004+00 0/1 0/0 0/0 .rodata          @7020 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7020 = 39000.0f;
COMPILER_STRIP_GATE(0x808219B4, &lit_7020);
#pragma pop

/* 808219B8-808219BC 00010C 0004+00 0/1 0/0 0/0 .rodata          @7021 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7021 = -87900.0f;
COMPILER_STRIP_GATE(0x808219B8, &lit_7021);
#pragma pop

/* 808219BC-808219C0 000110 0004+00 0/1 0/0 0/0 .rodata          @7022 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7022 = -18800.0f;
COMPILER_STRIP_GATE(0x808219BC, &lit_7022);
#pragma pop

/* 808219C0-808219C4 000114 0004+00 0/1 0/0 0/0 .rodata          @7023 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7023 = 38050.0f;
COMPILER_STRIP_GATE(0x808219C0, &lit_7023);
#pragma pop

/* 808219C4-808219C8 000118 0004+00 0/1 0/0 0/0 .rodata          @7024 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7024 = 263.0f;
COMPILER_STRIP_GATE(0x808219C4, &lit_7024);
#pragma pop

/* 808219C8-808219CC 00011C 0004+00 0/1 0/0 0/0 .rodata          @7025 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7025 = 280.0f;
COMPILER_STRIP_GATE(0x808219C8, &lit_7025);
#pragma pop

/* 808219CC-808219D0 000120 0004+00 0/1 0/0 0/0 .rodata          @7026 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7026 = -87893.0f;
COMPILER_STRIP_GATE(0x808219CC, &lit_7026);
#pragma pop

/* 808219D0-808219D4 000124 0004+00 0/1 0/0 0/0 .rodata          @7027 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7027 = -18731.0f;
COMPILER_STRIP_GATE(0x808219D0, &lit_7027);
#pragma pop

/* 808219D4-808219D8 000128 0004+00 0/1 0/0 0/0 .rodata          @7028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7028 = 37578.0f;
COMPILER_STRIP_GATE(0x808219D4, &lit_7028);
#pragma pop

/* 808219D8-808219DC 00012C 0004+00 0/1 0/0 0/0 .rodata          @7029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7029 = -5.0f;
COMPILER_STRIP_GATE(0x808219D8, &lit_7029);
#pragma pop

/* 8081D594-8081DBD0 007574 063C+00 1/1 0/0 0/0 .text            executeDeath__9daE_YMB_cFv */
void daE_YMB_c::executeDeath() {
    // NONMATCHING
}

/* 8081DBD0-8081DDE0 007BB0 0210+00 1/1 0/0 0/0 .text            demo_skip__9daE_YMB_cFi */
void daE_YMB_c::demo_skip(int param_0) {
    // NONMATCHING
}

/* 8081DDE0-8081DE14 007DC0 0034+00 3/3 0/0 0/0 .text            DemoSkipCallBack__9daE_YMB_cFPvi */
void daE_YMB_c::DemoSkipCallBack(void* param_0, int param_1) {
    // NONMATCHING
}

/* 8081DE14-8081DE84 007DF4 0070+00 1/1 0/0 0/0 .text            calcLakeDemoPlayerPos__9daE_YMB_cFv
 */
void daE_YMB_c::calcLakeDemoPlayerPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808219DC-808219E0 000130 0004+00 0/1 0/0 0/0 .rodata          @7205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7205 = -300.0f;
COMPILER_STRIP_GATE(0x808219DC, &lit_7205);
#pragma pop

/* 808219E0-808219E4 000134 0004+00 0/1 0/0 0/0 .rodata          @7206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7206 = -81000.0f;
COMPILER_STRIP_GATE(0x808219E0, &lit_7206);
#pragma pop

/* 808219E4-808219E8 000138 0004+00 0/1 0/0 0/0 .rodata          @7207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7207 = -17000.0f;
COMPILER_STRIP_GATE(0x808219E4, &lit_7207);
#pragma pop

/* 808219E8-808219EC 00013C 0004+00 0/1 0/0 0/0 .rodata          @7208 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7208 = 33000.0f;
COMPILER_STRIP_GATE(0x808219E8, &lit_7208);
#pragma pop

/* 808219EC-808219F0 000140 0004+00 0/1 0/0 0/0 .rodata          @7209 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7209 = -700.0f;
COMPILER_STRIP_GATE(0x808219EC, &lit_7209);
#pragma pop

/* 808219F0-808219F4 000144 0004+00 0/1 0/0 0/0 .rodata          @7210 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7210 = 3500.0f;
COMPILER_STRIP_GATE(0x808219F0, &lit_7210);
#pragma pop

/* 8081DE84-8081E5B4 007E64 0730+00 1/1 0/0 0/0 .text            executeLakeDemo__9daE_YMB_cFv */
void daE_YMB_c::executeLakeDemo() {
    // NONMATCHING
}

/* 8081E5B4-8081F140 008594 0B8C+00 2/1 0/0 0/0 .text            executeStartDemo__9daE_YMB_cFv */
void daE_YMB_c::executeStartDemo() {
    // NONMATCHING
}

/* 8081F140-8081F2E0 009120 01A0+00 1/1 0/0 0/0 .text            checkStartBattleDemo__9daE_YMB_cFv
 */
void daE_YMB_c::checkStartBattleDemo() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808219F4-808219FC 000148 0006+02 0/0 0/0 0/0 .rodata          @7228 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7228[6 + 2 /* padding */] = {
    0x00,
    0x20,
    0x01,
    0x00,
    0x20,
    0x04,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x808219F4, &lit_7228);
#pragma pop

/* 808219FC-80821A00 000150 0004+00 0/0 0/0 0/0 .rodata          @7482 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7482 = -89100.0f;
COMPILER_STRIP_GATE(0x808219FC, &lit_7482);
#pragma pop

/* 80821A00-80821A04 000154 0004+00 0/0 0/0 0/0 .rodata          @7483 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7483 = 39410.0f;
COMPILER_STRIP_GATE(0x80821A00, &lit_7483);
#pragma pop

/* 80821A04-80821A08 000158 0004+00 0/0 0/0 0/0 .rodata          @7484 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7484 = -88463.0f;
COMPILER_STRIP_GATE(0x80821A04, &lit_7484);
#pragma pop

/* 80821A08-80821A0C 00015C 0004+00 0/0 0/0 0/0 .rodata          @7485 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7485 = 38868.0f;
COMPILER_STRIP_GATE(0x80821A08, &lit_7485);
#pragma pop

/* 80821A0C-80821A10 000160 0004+00 0/0 0/0 0/0 .rodata          @7486 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7486 = -88660.0f;
COMPILER_STRIP_GATE(0x80821A0C, &lit_7486);
#pragma pop

/* 80821A10-80821A14 000164 0004+00 0/0 0/0 0/0 .rodata          @7487 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7487 = -18918.0f;
COMPILER_STRIP_GATE(0x80821A10, &lit_7487);
#pragma pop

/* 80821A14-80821A18 000168 0004+00 0/0 0/0 0/0 .rodata          @7488 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7488 = 38981.0f;
COMPILER_STRIP_GATE(0x80821A14, &lit_7488);
#pragma pop

/* 80821A18-80821A1C 00016C 0004+00 0/0 0/0 0/0 .rodata          @7489 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7489 = -89144.0f;
COMPILER_STRIP_GATE(0x80821A18, &lit_7489);
#pragma pop

/* 80821A1C-80821A20 000170 0004+00 0/0 0/0 0/0 .rodata          @7490 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7490 = -18551.0f;
COMPILER_STRIP_GATE(0x80821A1C, &lit_7490);
#pragma pop

/* 80821A20-80821A24 000174 0004+00 0/0 0/0 0/0 .rodata          @7491 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7491 = 39753.0f;
COMPILER_STRIP_GATE(0x80821A20, &lit_7491);
#pragma pop

/* 80821A24-80821A28 000178 0004+00 0/0 0/0 0/0 .rodata          @7492 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7492 = 120.0f;
COMPILER_STRIP_GATE(0x80821A24, &lit_7492);
#pragma pop

/* 80821A28-80821A2C 00017C 0004+00 0/0 0/0 0/0 .rodata          @7493 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7493 = 1.5f;
COMPILER_STRIP_GATE(0x80821A28, &lit_7493);
#pragma pop

/* 80821A2C-80821A30 000180 0004+00 0/0 0/0 0/0 .rodata          @7494 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7494 = -88800.0f;
COMPILER_STRIP_GATE(0x80821A2C, &lit_7494);
#pragma pop

/* 80821A30-80821A34 000184 0004+00 0/0 0/0 0/0 .rodata          @7495 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7495 = -18266.0f;
COMPILER_STRIP_GATE(0x80821A30, &lit_7495);
#pragma pop

/* 80821A34-80821A38 000188 0004+00 0/0 0/0 0/0 .rodata          @7496 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7496 = 39412.0f;
COMPILER_STRIP_GATE(0x80821A34, &lit_7496);
#pragma pop

/* 80821A38-80821A3C 00018C 0004+00 0/0 0/0 0/0 .rodata          @7497 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7497 = 17.0f / 10.0f;
COMPILER_STRIP_GATE(0x80821A38, &lit_7497);
#pragma pop

/* 80821A3C-80821A40 000190 0004+00 0/0 0/0 0/0 .rodata          @7498 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7498 = 11.0f / 5.0f;
COMPILER_STRIP_GATE(0x80821A3C, &lit_7498);
#pragma pop

/* 80821A40-80821A44 000194 0004+00 0/0 0/0 0/0 .rodata          @7499 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7499 = -89000.0f;
COMPILER_STRIP_GATE(0x80821A40, &lit_7499);
#pragma pop

/* 80821A44-80821A48 000198 0004+00 0/0 0/0 0/0 .rodata          @7500 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7500 = -18583.0f;
COMPILER_STRIP_GATE(0x80821A44, &lit_7500);
#pragma pop

/* 80821A48-80821A4C 00019C 0004+00 0/0 0/0 0/0 .rodata          @7501 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7501 = 39350.0f;
COMPILER_STRIP_GATE(0x80821A48, &lit_7501);
#pragma pop

/* 80821A4C-80821A50 0001A0 0004+00 0/0 0/0 0/0 .rodata          @7502 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7502 = -89260.0f;
COMPILER_STRIP_GATE(0x80821A4C, &lit_7502);
#pragma pop

/* 80821A50-80821A54 0001A4 0004+00 0/0 0/0 0/0 .rodata          @7503 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7503 = -18650.0f;
COMPILER_STRIP_GATE(0x80821A50, &lit_7503);
#pragma pop

/* 80821A54-80821A58 0001A8 0004+00 0/0 0/0 0/0 .rodata          @7504 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7504 = 39500.0f;
COMPILER_STRIP_GATE(0x80821A54, &lit_7504);
#pragma pop

/* 80821A58-80821A5C 0001AC 0004+00 0/1 0/0 0/0 .rodata          @7738 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7738 = -200.0f;
COMPILER_STRIP_GATE(0x80821A58, &lit_7738);
#pragma pop

/* 80821A5C-80821A60 0001B0 0004+00 0/1 0/0 0/0 .rodata          @7739 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7739 = 600.0f;
COMPILER_STRIP_GATE(0x80821A5C, &lit_7739);
#pragma pop

/* 8081F2E0-8081FAC8 0092C0 07E8+00 1/1 0/0 0/0 .text            executeBattleDemo__9daE_YMB_cFv */
void daE_YMB_c::executeBattleDemo() {
    // NONMATCHING
}

/* 8081FAC8-8081FF88 009AA8 04C0+00 2/1 0/0 0/0 .text            action__9daE_YMB_cFv */
void daE_YMB_c::action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80821A60-80821A64 0001B4 0004+00 0/1 0/0 0/0 .rodata          @7903 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7903 = -250.0f;
COMPILER_STRIP_GATE(0x80821A60, &lit_7903);
#pragma pop

/* 80821A64-80821A68 0001B8 0004+00 0/1 0/0 0/0 .rodata          @7904 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7904 = 250.0f;
COMPILER_STRIP_GATE(0x80821A64, &lit_7904);
#pragma pop

/* 8081FF88-808200A0 009F68 0118+00 1/1 0/0 0/0 .text            mtx_set__9daE_YMB_cFv */
void daE_YMB_c::mtx_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80821A68-80821A6C 0001BC 0004+00 0/1 0/0 0/0 .rodata          @7922 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7922 = -120.0f;
COMPILER_STRIP_GATE(0x80821A68, &lit_7922);
#pragma pop

/* 808200A0-80820128 00A080 0088+00 3/3 0/0 0/0 .text            getBellyBitePos__9daE_YMB_cFP4cXyz
 */
void daE_YMB_c::getBellyBitePos(cXyz* param_0) {
    // NONMATCHING
}

/* 80820128-808203D8 00A108 02B0+00 2/2 0/0 0/0 .text            getDownLockPoint__9daE_YMB_cFv */
void daE_YMB_c::getDownLockPoint() {
    // NONMATCHING
}

/* 808203D8-80820668 00A3B8 0290+00 1/1 0/0 0/0 .text            setAttentionPos__9daE_YMB_cFv */
void daE_YMB_c::setAttentionPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80821A6C-80821A70 0001C0 0004+00 0/1 0/0 0/0 .rodata          @8122 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8122 = 180.0f;
COMPILER_STRIP_GATE(0x80821A6C, &lit_8122);
#pragma pop

/* 80821A70-80821A74 0001C4 0004+00 0/1 0/0 0/0 .rodata          @8123 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8123 = 240.0f;
COMPILER_STRIP_GATE(0x80821A70, &lit_8123);
#pragma pop

/* 80821A74-80821A78 0001C8 0004+00 0/1 0/0 0/0 .rodata          @8124 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8124 = 360.0f;
COMPILER_STRIP_GATE(0x80821A74, &lit_8124);
#pragma pop

/* 80820668-808207AC 00A648 0144+00 1/1 0/0 0/0 .text            cc_set__9daE_YMB_cFv */
void daE_YMB_c::cc_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80821A78-80821A7C 0001CC 0004+00 0/1 0/0 0/0 .rodata          @8180 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8180 = 8.0f;
COMPILER_STRIP_GATE(0x80821A78, &lit_8180);
#pragma pop

/* 80821A7C-80821A80 0001D0 0004+00 0/1 0/0 0/0 .rodata          @8181 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8181 = 6.0f;
COMPILER_STRIP_GATE(0x80821A7C, &lit_8181);
#pragma pop

/* 808207AC-80820A18 00A78C 026C+00 1/1 0/0 0/0 .text            execute__9daE_YMB_cFv */
void daE_YMB_c::execute() {
    // NONMATCHING
}

/* 80820A18-80820A38 00A9F8 0020+00 2/1 0/0 0/0 .text            daE_YMB_Execute__FP9daE_YMB_c */
static void daE_YMB_Execute(daE_YMB_c* param_0) {
    // NONMATCHING
}

/* 80820A38-80820A40 00AA18 0008+00 1/0 0/0 0/0 .text            daE_YMB_IsDelete__FP9daE_YMB_c */
static bool daE_YMB_IsDelete(daE_YMB_c* param_0) {
    return true;
}

/* 80820A40-80820AD0 00AA20 0090+00 1/1 0/0 0/0 .text            _delete__9daE_YMB_cFv */
void daE_YMB_c::_delete() {
    // NONMATCHING
}

/* 80820AD0-80820AF0 00AAB0 0020+00 1/0 0/0 0/0 .text            daE_YMB_Delete__FP9daE_YMB_c */
static void daE_YMB_Delete(daE_YMB_c* param_0) {
    // NONMATCHING
}

/* 80820AF0-80820D68 00AAD0 0278+00 1/1 0/0 0/0 .text            CreateHeap__9daE_YMB_cFv */
void daE_YMB_c::CreateHeap() {
    // NONMATCHING
}

/* 80820D68-80820DB0 00AD48 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80820DB0-80820DD0 00AD90 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80821A80-80821A84 0001D4 0004+00 0/1 0/0 0/0 .rodata          @8436 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8436 = -400.0f;
COMPILER_STRIP_GATE(0x80821A80, &lit_8436);
#pragma pop

/* 80821B04-80821B04 000258 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80821B09 = "E_ymb";
#pragma pop

/* 80820DD0-808211BC 00ADB0 03EC+00 1/1 0/0 0/0 .text            create__9daE_YMB_cFv */
void daE_YMB_c::create() {
    // NONMATCHING
}

/* 808211BC-80821204 00B19C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80821204-8082124C 00B1E4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8082124C-80821318 00B22C 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80821318-8082139C 00B2F8 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 8082139C-808213F8 00B37C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 808213F8-80821418 00B3D8 0020+00 1/0 0/0 0/0 .text            daE_YMB_Create__FP9daE_YMB_c */
static void daE_YMB_Create(daE_YMB_c* param_0) {
    // NONMATCHING
}

/* 80821418-80821460 00B3F8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80821460-808214A8 00B440 0048+00 2/1 0/0 0/0 .text            __dt__13daE_YMB_HIO_cFv */
daE_YMB_HIO_c::~daE_YMB_HIO_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80821A84-80821A88 0001D8 0004+00 0/1 0/0 0/0 .rodata          @8657 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8657 = -88457.0f;
COMPILER_STRIP_GATE(0x80821A84, &lit_8657);
#pragma pop

/* 80821A88-80821A8C 0001DC 0004+00 0/1 0/0 0/0 .rodata          @8658 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8658 = -18786.0f;
COMPILER_STRIP_GATE(0x80821A88, &lit_8658);
#pragma pop

/* 80821A8C-80821A90 0001E0 0004+00 0/1 0/0 0/0 .rodata          @8659 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8659 = 42166.0f;
COMPILER_STRIP_GATE(0x80821A8C, &lit_8659);
#pragma pop

/* 80821A90-80821A94 0001E4 0004+00 0/1 0/0 0/0 .rodata          @8660 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8660 = -89307.0f;
COMPILER_STRIP_GATE(0x80821A90, &lit_8660);
#pragma pop

/* 80821A94-80821A98 0001E8 0004+00 0/1 0/0 0/0 .rodata          @8661 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8661 = 41366.0f;
COMPILER_STRIP_GATE(0x80821A94, &lit_8661);
#pragma pop

/* 80821A98-80821A9C 0001EC 0004+00 0/1 0/0 0/0 .rodata          @8662 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8662 = -89389.0f;
COMPILER_STRIP_GATE(0x80821A98, &lit_8662);
#pragma pop

/* 80821A9C-80821AA0 0001F0 0004+00 0/1 0/0 0/0 .rodata          @8663 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8663 = -18785.0f;
COMPILER_STRIP_GATE(0x80821A9C, &lit_8663);
#pragma pop

/* 80821AA0-80821AA4 0001F4 0004+00 0/1 0/0 0/0 .rodata          @8664 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8664 = 37267.0f;
COMPILER_STRIP_GATE(0x80821AA0, &lit_8664);
#pragma pop

/* 80821AA4-80821AA8 0001F8 0004+00 0/1 0/0 0/0 .rodata          @8665 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8665 = -88442.0f;
COMPILER_STRIP_GATE(0x80821AA4, &lit_8665);
#pragma pop

/* 80821AA8-80821AAC 0001FC 0004+00 0/1 0/0 0/0 .rodata          @8666 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8666 = -18753.0f;
COMPILER_STRIP_GATE(0x80821AA8, &lit_8666);
#pragma pop

/* 80821AAC-80821AB0 000200 0004+00 0/1 0/0 0/0 .rodata          @8667 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8667 = 38460.0f;
COMPILER_STRIP_GATE(0x80821AAC, &lit_8667);
#pragma pop

/* 80821AB0-80821AB4 000204 0004+00 0/1 0/0 0/0 .rodata          @8668 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8668 = -87864.0f;
COMPILER_STRIP_GATE(0x80821AB0, &lit_8668);
#pragma pop

/* 80821AB4-80821AB8 000208 0004+00 0/1 0/0 0/0 .rodata          @8669 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8669 = 37112.0f;
COMPILER_STRIP_GATE(0x80821AB4, &lit_8669);
#pragma pop

/* 80821AB8-80821ABC 00020C 0004+00 0/1 0/0 0/0 .rodata          @8670 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8670 = -87639.0f;
COMPILER_STRIP_GATE(0x80821AB8, &lit_8670);
#pragma pop

/* 80821ABC-80821AC0 000210 0004+00 0/1 0/0 0/0 .rodata          @8671 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8671 = -18764.0f;
COMPILER_STRIP_GATE(0x80821ABC, &lit_8671);
#pragma pop

/* 80821AC0-80821AC4 000214 0004+00 0/1 0/0 0/0 .rodata          @8672 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8672 = 41016.0f;
COMPILER_STRIP_GATE(0x80821AC0, &lit_8672);
#pragma pop

/* 80821AC4-80821AC8 000218 0004+00 0/1 0/0 0/0 .rodata          @8673 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8673 = -88977.0f;
COMPILER_STRIP_GATE(0x80821AC4, &lit_8673);
#pragma pop

/* 80821AC8-80821ACC 00021C 0004+00 0/1 0/0 0/0 .rodata          @8674 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8674 = 40658.0f;
COMPILER_STRIP_GATE(0x80821AC8, &lit_8674);
#pragma pop

/* 80821ACC-80821AD0 000220 0004+00 0/1 0/0 0/0 .rodata          @8675 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8675 = -86467.0f;
COMPILER_STRIP_GATE(0x80821ACC, &lit_8675);
#pragma pop

/* 80821AD0-80821AD4 000224 0004+00 0/1 0/0 0/0 .rodata          @8676 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8676 = -18758.0f;
COMPILER_STRIP_GATE(0x80821AD0, &lit_8676);
#pragma pop

/* 80821AD4-80821AD8 000228 0004+00 0/1 0/0 0/0 .rodata          @8677 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8677 = 39379.0f;
COMPILER_STRIP_GATE(0x80821AD4, &lit_8677);
#pragma pop

/* 80821AD8-80821ADC 00022C 0004+00 0/1 0/0 0/0 .rodata          @8678 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8678 = -87372.0f;
COMPILER_STRIP_GATE(0x80821AD8, &lit_8678);
#pragma pop

/* 80821ADC-80821AE0 000230 0004+00 0/1 0/0 0/0 .rodata          @8679 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8679 = 40362.0f;
COMPILER_STRIP_GATE(0x80821ADC, &lit_8679);
#pragma pop

/* 80821AE0-80821AE4 000234 0004+00 0/1 0/0 0/0 .rodata          @8680 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8680 = -86980.0f;
COMPILER_STRIP_GATE(0x80821AE0, &lit_8680);
#pragma pop

/* 80821AE4-80821AE8 000238 0004+00 0/1 0/0 0/0 .rodata          @8681 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8681 = 37583.0f;
COMPILER_STRIP_GATE(0x80821AE4, &lit_8681);
#pragma pop

/* 80821AE8-80821AEC 00023C 0004+00 0/1 0/0 0/0 .rodata          @8682 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8682 = -90195.0f;
COMPILER_STRIP_GATE(0x80821AE8, &lit_8682);
#pragma pop

/* 80821AEC-80821AF0 000240 0004+00 0/1 0/0 0/0 .rodata          @8683 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8683 = -18754.0f;
COMPILER_STRIP_GATE(0x80821AEC, &lit_8683);
#pragma pop

/* 80821AF0-80821AF4 000244 0004+00 0/1 0/0 0/0 .rodata          @8684 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8684 = 39893.0f;
COMPILER_STRIP_GATE(0x80821AF0, &lit_8684);
#pragma pop

/* 80821AF4-80821AF8 000248 0004+00 0/1 0/0 0/0 .rodata          @8685 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8685 = -88342.0f;
COMPILER_STRIP_GATE(0x80821AF4, &lit_8685);
#pragma pop

/* 80821AF8-80821AFC 00024C 0004+00 0/1 0/0 0/0 .rodata          @8686 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8686 = 39785.0f;
COMPILER_STRIP_GATE(0x80821AF8, &lit_8686);
#pragma pop

/* 80821AFC-80821B00 000250 0004+00 0/1 0/0 0/0 .rodata          @8687 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8687 = -90200.0f;
COMPILER_STRIP_GATE(0x80821AFC, &lit_8687);
#pragma pop

/* 80821B00-80821B04 000254 0004+00 0/1 0/0 0/0 .rodata          @8688 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8688 = 38100.0f;
COMPILER_STRIP_GATE(0x80821B00, &lit_8688);
#pragma pop

/* 808214A8-8082187C 00B488 03D4+00 0/0 1/0 0/0 .text            __sinit_d_a_e_ymb_cpp */
void __sinit_d_a_e_ymb_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x808214A8, __sinit_d_a_e_ymb_cpp);
#pragma pop

/* 8082187C-80821898 00B85C 001C+00 1/1 0/0 0/0 .text            setPos__11daObjDrop_cF4cXyz */
// void daObjDrop_c::setPos(cXyz param_0) {
extern "C" void setPos__11daObjDrop_cF4cXyz() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808220B0-808220B4 0002A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_808220B0[4];
#pragma pop

/* 808220B4-808220B8 0002A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_808220B4[4];
#pragma pop

/* 808220B8-808220BC 0002A8 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_808220B8[4];
#pragma pop

/* 808220BC-808220C0 0002AC 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_808220BC[4];
#pragma pop

/* 808220C0-808220C4 0002B0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_808220C0[4];
#pragma pop

/* 808220C4-808220C8 0002B4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_808220C4[4];
#pragma pop

/* 808220C8-808220CC 0002B8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_808220C8[4];
#pragma pop

/* 808220CC-808220D0 0002BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_808220CC[4];
#pragma pop

/* 808220D0-808220D4 0002C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_808220D0[4];
#pragma pop

/* 808220D4-808220D8 0002C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_808220D4[4];
#pragma pop

/* 808220D8-808220DC 0002C8 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_808220D8[4];
#pragma pop

/* 808220DC-808220E0 0002CC 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_808220DC[4];
#pragma pop

/* 808220E0-808220E4 0002D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_808220E0[4];
#pragma pop

/* 808220E4-808220E8 0002D4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_808220E4[4];
#pragma pop

/* 808220E8-808220EC 0002D8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_808220E8[4];
#pragma pop

/* 808220EC-808220F0 0002DC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_808220EC[4];
#pragma pop

/* 808220F0-808220F4 0002E0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_808220F0[4];
#pragma pop

/* 808220F4-808220F8 0002E4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_808220F4[4];
#pragma pop

/* 808220F8-808220FC 0002E8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_808220F8[4];
#pragma pop

/* 808220FC-80822100 0002EC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_808220FC[4];
#pragma pop

/* 80822100-80822104 0002F0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80822100[4];
#pragma pop

/* 80822104-80822108 0002F4 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80822104[4];
#pragma pop

/* 80822108-8082210C 0002F8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80822108[4];
#pragma pop

/* 8082210C-80822110 0002FC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8082210C[4];
#pragma pop

/* 80822110-80822114 000300 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80822110[4];
#pragma pop

/* 80821B04-80821B04 000258 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */