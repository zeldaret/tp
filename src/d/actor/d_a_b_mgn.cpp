/**
 * @file d_a_b_mgn.cpp
 * 
*/

#include "d/actor/d_a_b_mgn.h"
#include "dol2asm.h"
#include "d/d_camera.h"





//
// Forward References:
//

extern "C" void __ct__13daB_MGN_HIO_cFv();
extern "C" void ctrlJoint__9daB_MGN_cFP8J3DJointP8J3DModel();
extern "C" void JointCallBack__9daB_MGN_cFP8J3DJointi();
extern "C" void draw__9daB_MGN_cFv();
extern "C" static void daB_MGN_Draw__FP9daB_MGN_c();
extern "C" static void s_obj_sub__FPvPv();
extern "C" void setDashSmokeEffect__9daB_MGN_cFv();
extern "C" void setBackJumpEffect__9daB_MGN_cFv();
extern "C" void setSlideSmokeEffect__9daB_MGN_cFv();
extern "C" void setBodySlideEffect__9daB_MGN_cFv();
extern "C" void setOpeningEffect__9daB_MGN_cFv();
extern "C" void setStepEffect__9daB_MGN_cFv();
extern "C" void setFallAttackEffect__9daB_MGN_cFv();
extern "C" void setHeadLightEffect__9daB_MGN_cFv();
extern "C" void setHeadHitEffect__9daB_MGN_cFv();
extern "C" void setHideSmokeEffect__9daB_MGN_cFP4cXyzUc();
extern "C" void calcHideSmokeEffect__9daB_MGN_cFv();
extern "C" void drawHideSmokeEffect__9daB_MGN_cFv();
extern "C" void setBloodEffect__9daB_MGN_cFv();
extern "C" void calcBloodMove__9daB_MGN_cFv();
extern "C" void checkDownBeforeBG__9daB_MGN_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void setBck__9daB_MGN_cFiUcff();
extern "C" void checkBck__9daB_MGN_cFi();
extern "C" void setActionMode__9daB_MGN_cFii();
extern "C" void setExitMode__9daB_MGN_cFi();
extern "C" void onBodyShield__9daB_MGN_cFv();
extern "C" void offBodyShield__9daB_MGN_cFv();
extern "C" void onBodySlideAt__9daB_MGN_cFv();
extern "C" void offBodySlideAt__9daB_MGN_cFv();
extern "C" void checkHitSlideAt__9daB_MGN_cFv();
extern "C" void onBodyFallAt__9daB_MGN_cFv();
extern "C" void offBodyFallAt__9daB_MGN_cFv();
extern "C" void onBodyCo__9daB_MGN_cFv();
extern "C" void offBodyCo__9daB_MGN_cFv();
extern "C" void getNearHitPos__9daB_MGN_cFP4cXyz();
extern "C" void damage_check__9daB_MGN_cFv();
extern "C" void calcJointAngle__9daB_MGN_cFs();
extern "C" void executeCircle__9daB_MGN_cFv();
extern "C" void executeDash__9daB_MGN_cFv();
extern "C" void executeThrown__9daB_MGN_cFv();
extern "C" void setDownEnd__9daB_MGN_cFv();
extern "C" void executeDown__9daB_MGN_cFv();
extern "C" void executeDownDamage__9daB_MGN_cFv();
extern "C" void executeDownBiteDamage__9daB_MGN_cFv();
extern "C" void executeWarp__9daB_MGN_cFv();
extern "C" void executeFall__9daB_MGN_cFv();
extern "C" void demo_skip__9daB_MGN_cFi();
extern "C" void DemoSkipCallBack__9daB_MGN_cFPvi();
extern "C" void executeOpening__9daB_MGN_cFv();
extern "C" void executeDeath__9daB_MGN_cFv();
extern "C" void executeJump__9daB_MGN_cFv();
extern "C" void checkStartJump__9daB_MGN_cFv();
extern "C" void action__9daB_MGN_cFv();
extern "C" void mtx_set__9daB_MGN_cFv();
extern "C" void cc_set__9daB_MGN_cFv();
extern "C" void execute__9daB_MGN_cFv();
extern "C" static void daB_MGN_Execute__FP9daB_MGN_c();
extern "C" static bool daB_MGN_IsDelete__FP9daB_MGN_c();
extern "C" void _delete__9daB_MGN_cFv();
extern "C" static void daB_MGN_Delete__FP9daB_MGN_c();
extern "C" void CreateHeap__9daB_MGN_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__9daB_MGN_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__4cXyzFv();
extern "C" static void daB_MGN_Create__FP9daB_MGN_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__13daB_MGN_HIO_cFv();
extern "C" void __sinit_d_a_b_mgn_cpp();
extern "C" static void func_8060F954();
extern "C" static void func_8060F95C();
extern "C" static void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz();
extern "C" void __dt__4cXyzFv();
extern "C" void checkNowWolf__9daPy_py_cFv();
extern "C" extern char const* const d_a_b_mgn__stringBase0;

//
// External References:
//

extern "C" void onBlure__13mDoGph_gInf_cFv();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
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
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci();
extern "C" void fopMsgM_messageSetDemo__FUl();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcM_IsCreating__FUi();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_onOneZoneSwitch__Fii();
extern "C" void dComIfGs_offOneZoneSwitch__Fii();
extern "C" void dComIfGs_isOneZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void onSkipFade__14dEvt_control_cFv();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetActorPointer__4cBgSCFi();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
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
extern "C" void dKy_darkworld_check__Fv();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcPos2__FP4cXyzRC4cXyzff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void deleteAllParticle__14JPABaseEmitterFv();
extern "C" void func_80280808();
extern "C" void bgmStart__8Z2SeqMgrFUlUll();
extern "C" void bgmStop__8Z2SeqMgrFUll();
extern "C" void bgmStreamPrepare__8Z2SeqMgrFUl();
extern "C" void bgmStreamPlay__8Z2SeqMgrFv();
extern "C" void bgmStreamStop__8Z2SeqMgrFUl();
extern "C" void changeBgmStatus__8Z2SeqMgrFl();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey();
extern "C" void removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_20();
extern "C" void _savegpr_21();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_20();
extern "C" void _restgpr_21();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
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
extern "C" extern u8 g_dComIfG_gameInfo[122384];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u8 mBlureFlag__13mDoGph_gInf_c[4];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void Obj_Damage__13daObjBHASHI_cF4cXyz();
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 8060FDE0-8060FDE4 000000 0004+00 30/30 0/0 0/0 .rodata          @3928 */
SECTION_RODATA static f32 const lit_3928 = 100.0f;
COMPILER_STRIP_GATE(0x8060FDE0, &lit_3928);

/* 8060FDE4-8060FDE8 000004 0004+00 3/26 0/0 0/0 .rodata          @3929 */
SECTION_RODATA static u8 const lit_3929[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8060FDE4, &lit_3929);

/* 8060FDE8-8060FDF0 000008 0004+04 5/24 0/0 0/0 .rodata          @3930 */
SECTION_RODATA static f32 const lit_3930[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8060FDE8, &lit_3930);

/* 8060FDF0-8060FDF8 000010 0008+00 0/7 0/0 0/0 .rodata          @3931 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3931[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8060FDF0, &lit_3931);
#pragma pop

/* 8060FDF8-8060FE00 000018 0008+00 0/7 0/0 0/0 .rodata          @3932 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3932[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8060FDF8, &lit_3932);
#pragma pop

/* 8060FE00-8060FE08 000020 0008+00 0/7 0/0 0/0 .rodata          @3933 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3933[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8060FE00, &lit_3933);
#pragma pop

/* 8060FE08-8060FE0C 000028 0004+00 0/1 0/0 0/0 .rodata          @3934 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3934 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x8060FE08, &lit_3934);
#pragma pop

/* 8060FE0C-8060FE10 00002C 0004+00 0/1 0/0 0/0 .rodata          @3949 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3949 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x8060FE0C, &lit_3949);
#pragma pop

/* 8060FE10-8060FE14 000030 0004+00 0/3 0/0 0/0 .rodata          @3950 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3950 = 50.0f;
COMPILER_STRIP_GATE(0x8060FE10, &lit_3950);
#pragma pop

/* 8060FE14-8060FE18 000034 0004+00 0/3 0/0 0/0 .rodata          @3951 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3951 = 70.0f;
COMPILER_STRIP_GATE(0x8060FE14, &lit_3951);
#pragma pop

/* 80610094-806100A0 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 806100A0-806100B4 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 806100B4-806100BC 000020 0008+00 0/1 0/0 0/0 .data            e_prim$3807 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim[8] = {
    0xFF, 0x78, 0x00, 0x00, 0xFF, 0x64, 0x78, 0x00,
};
#pragma pop

/* 806100BC-806100C4 000028 0008+00 0/1 0/0 0/0 .data            e_env$3808 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env[8] = {
    0x5A, 0x2D, 0x2D, 0x00, 0x3C, 0x1E, 0x1E, 0x00,
};
#pragma pop

/* 806100C4-806100CC 000030 0006+02 0/1 0/0 0/0 .data            eff_id$3816 */
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

/* 806100CC-8061010C 000038 0040+00 0/1 0/0 0/0 .data cc_sph_src__23@unnamed@d_a_b_mgn_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_806100CC[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0xDC, 0xFB, 0xFD, 0xFD, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x75, 0x0B, 0x00, 0x06, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 8061010C-8061014C 000078 0040+00 0/1 0/0 0/0 .data at_sph_src__23@unnamed@d_a_b_mgn_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_8061010C[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0xDC, 0xFB, 0xFD, 0xFD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x0D, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00,
};
#pragma pop

/* 8061014C-8061018C 0000B8 0040+00 0/1 0/0 0/0 .data tg_sph_src__23@unnamed@d_a_b_mgn_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_8061014C[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x04, 0x40, 0x20, 0x20, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00,
};
#pragma pop

/* 8061018C-8061019C 0000F8 000F+01 1/1 0/0 0/0 .data body_front_sph__23@unnamed@d_a_b_mgn_cpp@ */
SECTION_DATA static u8 data_8061018C[15 + 1 /* padding */] = {
    0x01,
    0x00,
    0x01,
    0x01,
    0x01,
    0x01,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x01,
    /* padding */
    0x00,
};

/* 8061019C-806101BC 000108 0020+00 1/1 0/0 0/0 .data            foot_rand_frame$4145 */
SECTION_DATA static u8 foot_rand_frame[32] = {
    0x41, 0x20, 0x00, 0x00, 0x41, 0x80, 0x00, 0x00, 0x41, 0x90, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00,
    0x42, 0x80, 0x00, 0x00, 0x42, 0x88, 0x00, 0x00, 0x42, 0x7C, 0x00, 0x00, 0x42, 0x8A, 0x00, 0x00,
};

/* 806101BC-806101CC 000128 0010+00 1/1 0/0 0/0 .data            foot_jnt$4276 */
SECTION_DATA static u8 foot_jnt_4276[16] = {
    0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x47, 0x00, 0x00, 0x00, 0x43,
};

/* 806101CC-806101D4 000138 0008+00 1/1 0/0 0/0 .data            foot_jnt$4418 */
SECTION_DATA static u8 foot_jnt_4418[8] = {
    0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x25,
};

/* 806101D4-806101F4 -00001 0020+00 1/1 0/0 0/0 .data            @4763 */
SECTION_DATA static void* lit_4763[8] = {
    (void*)(((char*)calcHideSmokeEffect__9daB_MGN_cFv) + 0x390),
    (void*)(((char*)calcHideSmokeEffect__9daB_MGN_cFv) + 0xD0),
    (void*)(((char*)calcHideSmokeEffect__9daB_MGN_cFv) + 0x208),
    (void*)(((char*)calcHideSmokeEffect__9daB_MGN_cFv) + 0x2DC),
    (void*)(((char*)calcHideSmokeEffect__9daB_MGN_cFv) + 0x338),
    (void*)(((char*)calcHideSmokeEffect__9daB_MGN_cFv) + 0x378),
    (void*)(((char*)calcHideSmokeEffect__9daB_MGN_cFv) + 0x390),
    (void*)(((char*)calcHideSmokeEffect__9daB_MGN_cFv) + 0x290),
};

/* 806101F4-80610220 -00001 002C+00 1/1 0/0 0/0 .data            @5702 */
SECTION_DATA static void* lit_5702[11] = {
    (void*)(((char*)executeCircle__9daB_MGN_cFv) + 0xB0),
    (void*)(((char*)executeCircle__9daB_MGN_cFv) + 0x8C),
    (void*)(((char*)executeCircle__9daB_MGN_cFv) + 0x1C4),
    (void*)(((char*)executeCircle__9daB_MGN_cFv) + 0x1C4),
    (void*)(((char*)executeCircle__9daB_MGN_cFv) + 0x1D4),
    (void*)(((char*)executeCircle__9daB_MGN_cFv) + 0x5C0),
    (void*)(((char*)executeCircle__9daB_MGN_cFv) + 0x6DC),
    (void*)(((char*)executeCircle__9daB_MGN_cFv) + 0x738),
    (void*)(((char*)executeCircle__9daB_MGN_cFv) + 0x738),
    (void*)(((char*)executeCircle__9daB_MGN_cFv) + 0x738),
    (void*)(((char*)executeCircle__9daB_MGN_cFv) + 0x8C),
};

/* 80610220-80610274 -00001 0054+00 1/1 0/0 0/0 .data            @6083 */
SECTION_DATA static void* lit_6083[21] = {
    (void*)(((char*)executeDash__9daB_MGN_cFv) + 0x624),
    (void*)(((char*)executeDash__9daB_MGN_cFv) + 0x674),
    (void*)(((char*)executeDash__9daB_MGN_cFv) + 0x6E4),
    (void*)(((char*)executeDash__9daB_MGN_cFv) + 0x814),
    (void*)(((char*)executeDash__9daB_MGN_cFv) + 0xB7C),
    (void*)(((char*)executeDash__9daB_MGN_cFv) + 0xCEC),
    (void*)(((char*)executeDash__9daB_MGN_cFv) + 0xD48),
    (void*)(((char*)executeDash__9daB_MGN_cFv) + 0xE60),
    (void*)(((char*)executeDash__9daB_MGN_cFv) + 0xE60),
    (void*)(((char*)executeDash__9daB_MGN_cFv) + 0xE60),
    (void*)(((char*)executeDash__9daB_MGN_cFv) + 0x50),
    (void*)(((char*)executeDash__9daB_MGN_cFv) + 0x50),
    (void*)(((char*)executeDash__9daB_MGN_cFv) + 0x440),
    (void*)(((char*)executeDash__9daB_MGN_cFv) + 0x490),
    (void*)(((char*)executeDash__9daB_MGN_cFv) + 0xE60),
    (void*)(((char*)executeDash__9daB_MGN_cFv) + 0xE60),
    (void*)(((char*)executeDash__9daB_MGN_cFv) + 0xE60),
    (void*)(((char*)executeDash__9daB_MGN_cFv) + 0xE60),
    (void*)(((char*)executeDash__9daB_MGN_cFv) + 0xE60),
    (void*)(((char*)executeDash__9daB_MGN_cFv) + 0xE60),
    (void*)(((char*)executeDash__9daB_MGN_cFv) + 0x5D4),
};

/* 80610274-806102A4 -00001 0030+00 1/1 0/0 0/0 .data            @6262 */
SECTION_DATA static void* lit_6262[12] = {
    (void*)(((char*)executeThrown__9daB_MGN_cFv) + 0x98),
    (void*)(((char*)executeThrown__9daB_MGN_cFv) + 0x8E8),
    (void*)(((char*)executeThrown__9daB_MGN_cFv) + 0x170),
    (void*)(((char*)executeThrown__9daB_MGN_cFv) + 0x230),
    (void*)(((char*)executeThrown__9daB_MGN_cFv) + 0x8E8),
    (void*)(((char*)executeThrown__9daB_MGN_cFv) + 0x3FC),
    (void*)(((char*)executeThrown__9daB_MGN_cFv) + 0x8E8),
    (void*)(((char*)executeThrown__9daB_MGN_cFv) + 0x8E8),
    (void*)(((char*)executeThrown__9daB_MGN_cFv) + 0x530),
    (void*)(((char*)executeThrown__9daB_MGN_cFv) + 0x744),
    (void*)(((char*)executeThrown__9daB_MGN_cFv) + 0x814),
    (void*)(((char*)executeThrown__9daB_MGN_cFv) + 0x884),
};

/* 806102A4-806102C8 -00001 0024+00 1/1 0/0 0/0 .data            @6423 */
SECTION_DATA static void* lit_6423[9] = {
    (void*)(((char*)executeDown__9daB_MGN_cFv) + 0x44),
    (void*)(((char*)executeDown__9daB_MGN_cFv) + 0x44),
    (void*)(((char*)executeDown__9daB_MGN_cFv) + 0xD4),
    (void*)(((char*)executeDown__9daB_MGN_cFv) + 0x25C),
    (void*)(((char*)executeDown__9daB_MGN_cFv) + 0x574),
    (void*)(((char*)executeDown__9daB_MGN_cFv) + 0x37C),
    (void*)(((char*)executeDown__9daB_MGN_cFv) + 0x3BC),
    (void*)(((char*)executeDown__9daB_MGN_cFv) + 0x3EC),
    (void*)(((char*)executeDown__9daB_MGN_cFv) + 0x4C8),
};

/* 806102C8-80610308 -00001 0040+00 1/1 0/0 0/0 .data            @6839 */
SECTION_DATA static void* lit_6839[16] = {
    (void*)(((char*)executeFall__9daB_MGN_cFv) + 0x78),
    (void*)(((char*)executeFall__9daB_MGN_cFv) + 0x214),
    (void*)(((char*)executeFall__9daB_MGN_cFv) + 0x910),
    (void*)(((char*)executeFall__9daB_MGN_cFv) + 0x910),
    (void*)(((char*)executeFall__9daB_MGN_cFv) + 0x2B0),
    (void*)(((char*)executeFall__9daB_MGN_cFv) + 0x2E0),
    (void*)(((char*)executeFall__9daB_MGN_cFv) + 0x3C8),
    (void*)(((char*)executeFall__9daB_MGN_cFv) + 0x484),
    (void*)(((char*)executeFall__9daB_MGN_cFv) + 0x514),
    (void*)(((char*)executeFall__9daB_MGN_cFv) + 0x910),
    (void*)(((char*)executeFall__9daB_MGN_cFv) + 0x6B0),
    (void*)(((char*)executeFall__9daB_MGN_cFv) + 0x720),
    (void*)(((char*)executeFall__9daB_MGN_cFv) + 0x79C),
    (void*)(((char*)executeFall__9daB_MGN_cFv) + 0x82C),
    (void*)(((char*)executeFall__9daB_MGN_cFv) + 0x910),
    (void*)(((char*)executeFall__9daB_MGN_cFv) + 0x8B4),
};

/* 80610308-80610338 -00001 0030+00 1/1 0/0 0/0 .data            @7376 */
SECTION_DATA static void* lit_7376[12] = {
    (void*)(((char*)executeOpening__9daB_MGN_cFv) + 0xB0),
    (void*)(((char*)executeOpening__9daB_MGN_cFv) + 0x3C0),
    (void*)(((char*)executeOpening__9daB_MGN_cFv) + 0x534),
    (void*)(((char*)executeOpening__9daB_MGN_cFv) + 0x6A4),
    (void*)(((char*)executeOpening__9daB_MGN_cFv) + 0xF5C),
    (void*)(((char*)executeOpening__9daB_MGN_cFv) + 0xA4C),
    (void*)(((char*)executeOpening__9daB_MGN_cFv) + 0xAF0),
    (void*)(((char*)executeOpening__9daB_MGN_cFv) + 0xBE8),
    (void*)(((char*)executeOpening__9daB_MGN_cFv) + 0xC9C),
    (void*)(((char*)executeOpening__9daB_MGN_cFv) + 0xF5C),
    (void*)(((char*)executeOpening__9daB_MGN_cFv) + 0xD20),
    (void*)(((char*)executeOpening__9daB_MGN_cFv) + 0xE04),
};

/* 80610338-80610364 -00001 002C+00 1/1 0/0 0/0 .data            @7854 */
SECTION_DATA static void* lit_7854[11] = {
    (void*)(((char*)action__9daB_MGN_cFv) + 0x50), (void*)(((char*)action__9daB_MGN_cFv) + 0x5C),
    (void*)(((char*)action__9daB_MGN_cFv) + 0x68), (void*)(((char*)action__9daB_MGN_cFv) + 0x74),
    (void*)(((char*)action__9daB_MGN_cFv) + 0x80), (void*)(((char*)action__9daB_MGN_cFv) + 0x8C),
    (void*)(((char*)action__9daB_MGN_cFv) + 0x98), (void*)(((char*)action__9daB_MGN_cFv) + 0xA4),
    (void*)(((char*)action__9daB_MGN_cFv) + 0xB0), (void*)(((char*)action__9daB_MGN_cFv) + 0xBC),
    (void*)(((char*)action__9daB_MGN_cFv) + 0xC8),
};

/* 80610364-80610384 -00001 0020+00 1/0 0/0 0/0 .data            l_daB_MGN_Method */
static actor_method_class l_daB_MGN_Method = {
    (process_method_func)daB_MGN_Create__FP9daB_MGN_c,
    (process_method_func)daB_MGN_Delete__FP9daB_MGN_c,
    (process_method_func)daB_MGN_Execute__FP9daB_MGN_c,
    (process_method_func)daB_MGN_IsDelete__FP9daB_MGN_c,
    (process_method_func)daB_MGN_Draw__FP9daB_MGN_c,
};

/* 80610384-806103B4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_B_MGN */
extern actor_process_profile_definition g_profile_B_MGN = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_B_MGN,             // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daB_MGN_c),      // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  232,                    // mPriority
  &l_daB_MGN_Method,      // sub_method
  0x00044000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 806103B4-806103C0 000320 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 806103C0-806103CC 00032C 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 806103CC-806103D8 000338 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 806103D8-806103E4 000344 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 806103E4-806103F0 000350 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 806103F0-80610414 00035C 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8060F95C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8060F954,
};

/* 80610414-80610420 000380 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80610420-8061042C 00038C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 8061042C-80610438 000398 000C+00 2/2 0/0 0/0 .data            __vt__13daB_MGN_HIO_c */
SECTION_DATA extern void* __vt__13daB_MGN_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daB_MGN_HIO_cFv,
};

/* 8060572C-8060577C 0000EC 0050+00 1/1 0/0 0/0 .text            __ct__13daB_MGN_HIO_cFv */
daB_MGN_HIO_c::daB_MGN_HIO_c() {
    // NONMATCHING
}

/* 8060577C-8060584C 00013C 00D0+00 1/1 0/0 0/0 .text ctrlJoint__9daB_MGN_cFP8J3DJointP8J3DModel
 */
void daB_MGN_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 8060584C-80605898 00020C 004C+00 1/1 0/0 0/0 .text JointCallBack__9daB_MGN_cFP8J3DJointi */
void daB_MGN_c::JointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FE18-8060FE1C 000038 0004+00 0/1 0/0 0/0 .rodata          @4108 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4108 = 4000.0f;
COMPILER_STRIP_GATE(0x8060FE18, &lit_4108);
#pragma pop

/* 8060FE1C-8060FE20 00003C 0004+00 0/8 0/0 0/0 .rodata          @4109 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4109 = -1000000000.0f;
COMPILER_STRIP_GATE(0x8060FE1C, &lit_4109);
#pragma pop

/* 8060FE20-8060FE24 000040 0004+00 0/2 0/0 0/0 .rodata          @4110 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4110 = 3000.0f;
COMPILER_STRIP_GATE(0x8060FE20, &lit_4110);
#pragma pop

/* 80610440-80610444 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80610440[4];

/* 80610444-80610450 00000C 000C+00 1/1 0/0 0/0 .bss             @3944 */
static u8 lit_3944[12];

/* 80610450-80610474 000018 0024+00 6/6 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[36];

/* 80605898-80605C8C 000258 03F4+00 1/1 0/0 0/0 .text            draw__9daB_MGN_cFv */
void daB_MGN_c::draw() {
    // NONMATCHING
}

/* 80605C8C-80605CAC 00064C 0020+00 1/0 0/0 0/0 .text            daB_MGN_Draw__FP9daB_MGN_c */
static void daB_MGN_Draw(daB_MGN_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FE24-8060FE28 000044 0004+00 1/3 0/0 0/0 .rodata          @4141 */
SECTION_RODATA static f32 const lit_4141 = 1500.0f;
COMPILER_STRIP_GATE(0x8060FE24, &lit_4141);

/* 80605CAC-80605D78 00066C 00CC+00 1/1 0/0 0/0 .text            s_obj_sub__FPvPv */
static void s_obj_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FE28-8060FE2C 000048 0004+00 1/16 0/0 0/0 .rodata          @4206 */
SECTION_RODATA static f32 const lit_4206 = 3.0f;
COMPILER_STRIP_GATE(0x8060FE28, &lit_4206);

/* 80605D78-8060601C 000738 02A4+00 2/2 0/0 0/0 .text            setDashSmokeEffect__9daB_MGN_cFv */
void daB_MGN_c::setDashSmokeEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FE2C-8060FE30 00004C 0004+00 0/4 0/0 0/0 .rodata          @4269 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4269 = 40.0f;
COMPILER_STRIP_GATE(0x8060FE2C, &lit_4269);
#pragma pop

/* 8060FE30-8060FE34 000050 0004+00 0/1 0/0 0/0 .rodata          @4270 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4270 = 37.0f;
COMPILER_STRIP_GATE(0x8060FE30, &lit_4270);
#pragma pop

/* 8060FE34-8060FE38 000054 0004+00 0/1 0/0 0/0 .rodata          @4271 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4271 = 35.0f;
COMPILER_STRIP_GATE(0x8060FE34, &lit_4271);
#pragma pop

/* 8060FE38-8060FE3C 000058 0004+00 0/1 0/0 0/0 .rodata          @4272 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4272 = 36.0f;
COMPILER_STRIP_GATE(0x8060FE38, &lit_4272);
#pragma pop

/* 8060601C-806062C0 0009DC 02A4+00 2/2 0/0 0/0 .text            setBackJumpEffect__9daB_MGN_cFv */
void daB_MGN_c::setBackJumpEffect() {
    // NONMATCHING
}

/* 806062C0-80606424 000C80 0164+00 1/1 0/0 0/0 .text            setSlideSmokeEffect__9daB_MGN_cFv
 */
void daB_MGN_c::setSlideSmokeEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FE3C-8060FE40 00005C 0004+00 0/5 0/0 0/0 .rodata          @4368 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4368 = 150.0f;
COMPILER_STRIP_GATE(0x8060FE3C, &lit_4368);
#pragma pop

/* 8060FE40-8060FE44 000060 0004+00 0/8 0/0 0/0 .rodata          @4369 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4369 = 10.0f;
COMPILER_STRIP_GATE(0x8060FE40, &lit_4369);
#pragma pop

/* 80606424-806065D4 000DE4 01B0+00 3/3 0/0 0/0 .text            setBodySlideEffect__9daB_MGN_cFv */
void daB_MGN_c::setBodySlideEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FE44-8060FE48 000064 0004+00 0/5 0/0 0/0 .rodata          @4414 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4414 = 15.0f;
COMPILER_STRIP_GATE(0x8060FE44, &lit_4414);
#pragma pop

/* 806065D4-80606754 000F94 0180+00 1/1 0/0 0/0 .text            setOpeningEffect__9daB_MGN_cFv */
void daB_MGN_c::setOpeningEffect() {
    // NONMATCHING
}

/* 80606754-8060688C 001114 0138+00 1/1 0/0 0/0 .text            setStepEffect__9daB_MGN_cFv */
void daB_MGN_c::setStepEffect() {
    // NONMATCHING
}

/* 8060688C-80606A10 00124C 0184+00 2/2 0/0 0/0 .text            setFallAttackEffect__9daB_MGN_cFv
 */
void daB_MGN_c::setFallAttackEffect() {
    // NONMATCHING
}

/* 80606A10-80606AEC 0013D0 00DC+00 1/1 0/0 0/0 .text            setHeadLightEffect__9daB_MGN_cFv */
void daB_MGN_c::setHeadLightEffect() {
    // NONMATCHING
}

/* 80606AEC-80606C6C 0014AC 0180+00 1/1 0/0 0/0 .text            setHeadHitEffect__9daB_MGN_cFv */
void daB_MGN_c::setHeadHitEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FE48-8060FE4C 000068 0004+00 1/5 0/0 0/0 .rodata          @4626 */
SECTION_RODATA static f32 const lit_4626 = 200.0f;
COMPILER_STRIP_GATE(0x8060FE48, &lit_4626);

/* 80606C6C-80606D60 00162C 00F4+00 2/2 0/0 0/0 .text setHideSmokeEffect__9daB_MGN_cFP4cXyzUc */
void daB_MGN_c::setHideSmokeEffect(cXyz* param_0, u8 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FE4C-8060FE50 00006C 0004+00 0/2 0/0 0/0 .rodata          @4760 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4760 = 7.0f;
COMPILER_STRIP_GATE(0x8060FE4C, &lit_4760);
#pragma pop

/* 8060FE50-8060FE54 000070 0004+00 0/6 0/0 0/0 .rodata          @4761 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4761 = 2.0f;
COMPILER_STRIP_GATE(0x8060FE50, &lit_4761);
#pragma pop

/* 80610084-80610084 0002A4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80610084 = "B_mgne";
#pragma pop

/* 80606D60-806071C4 001720 0464+00 2/1 0/0 0/0 .text            calcHideSmokeEffect__9daB_MGN_cFv
 */
void daB_MGN_c::calcHideSmokeEffect() {
    // NONMATCHING
}

/* 806071C4-8060729C 001B84 00D8+00 1/1 0/0 0/0 .text            drawHideSmokeEffect__9daB_MGN_cFv
 */
void daB_MGN_c::drawHideSmokeEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FE54-8060FE58 000074 0004+00 1/1 0/0 0/0 .rodata          @4762 */
SECTION_RODATA static f32 const lit_4762 = -1.0f;
COMPILER_STRIP_GATE(0x8060FE54, &lit_4762);

/* 8060FE58-8060FE5C 000078 0004+00 0/2 0/0 0/0 .rodata          @4853 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4853 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x8060FE58, &lit_4853);
#pragma pop

/* 8060729C-80607498 001C5C 01FC+00 5/5 0/0 0/0 .text            setBloodEffect__9daB_MGN_cFv */
void daB_MGN_c::setBloodEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FE5C-8060FE60 00007C 0004+00 0/3 0/0 0/0 .rodata          @4926 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4926 = -150.0f;
COMPILER_STRIP_GATE(0x8060FE5C, &lit_4926);
#pragma pop

/* 8060FE60-8060FE64 000080 0004+00 2/3 0/0 0/0 .rodata          @4927 */
SECTION_RODATA static f32 const lit_4927 = 0.5f;
COMPILER_STRIP_GATE(0x8060FE60, &lit_4927);

/* 8060FE64-8060FE68 000084 0004+00 0/1 0/0 0/0 .rodata          @4928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4928 = 255.0f;
COMPILER_STRIP_GATE(0x8060FE64, &lit_4928);
#pragma pop

/* 8060FE68-8060FE6C 000088 0004+00 0/1 0/0 0/0 .rodata          @4929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4929 = -60.0f;
COMPILER_STRIP_GATE(0x8060FE68, &lit_4929);
#pragma pop

/* 8060FE6C-8060FE70 00008C 0004+00 0/1 0/0 0/0 .rodata          @4930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4930 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x8060FE6C, &lit_4930);
#pragma pop

/* 8060FE70-8060FE74 000090 0004+00 0/1 0/0 0/0 .rodata          @4931 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4931 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x8060FE70, &lit_4931);
#pragma pop

/* 8060FE74-8060FE78 000094 0004+00 0/2 0/0 0/0 .rodata          @4932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4932 = 11.0f / 10.0f;
COMPILER_STRIP_GATE(0x8060FE74, &lit_4932);
#pragma pop

/* 8060FE78-8060FE7C 000098 0004+00 0/2 0/0 0/0 .rodata          @4933 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4933 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x8060FE78, &lit_4933);
#pragma pop

/* 8060FE7C-8060FE80 00009C 0004+00 0/1 0/0 0/0 .rodata          @4934 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4934 = 101.0f / 100.0f;
COMPILER_STRIP_GATE(0x8060FE7C, &lit_4934);
#pragma pop

/* 8060FE80-8060FE84 0000A0 0004+00 0/3 0/0 0/0 .rodata          @4935 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4935 = 20.0f;
COMPILER_STRIP_GATE(0x8060FE80, &lit_4935);
#pragma pop

/* 8060FE84-8060FE88 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4936 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4936 = 17.0f;
COMPILER_STRIP_GATE(0x8060FE84, &lit_4936);
#pragma pop

/* 80607498-8060778C 001E58 02F4+00 1/1 0/0 0/0 .text            calcBloodMove__9daB_MGN_cFv */
void daB_MGN_c::calcBloodMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FE88-8060FE8C 0000A8 0004+00 1/1 0/0 0/0 .rodata          @4977 */
SECTION_RODATA static f32 const lit_4977 = 1200.0f;
COMPILER_STRIP_GATE(0x8060FE88, &lit_4977);

/* 8060778C-806078DC 00214C 0150+00 2/2 0/0 0/0 .text            checkDownBeforeBG__9daB_MGN_cFv */
void daB_MGN_c::checkDownBeforeBG() {
    // NONMATCHING
}

/* 806078DC-80607924 00229C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80610084-80610084 0002A4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8061008B = "B_mgn";
#pragma pop

/* 80607924-806079CC 0022E4 00A8+00 11/11 0/0 0/0 .text            setBck__9daB_MGN_cFiUcff */
void daB_MGN_c::setBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    // NONMATCHING
}

/* 806079CC-80607A2C 00238C 0060+00 3/3 0/0 0/0 .text            checkBck__9daB_MGN_cFi */
void daB_MGN_c::checkBck(int param_0) {
    // NONMATCHING
}

/* 80607A2C-80607A80 0023EC 0054+00 16/16 0/0 0/0 .text            setActionMode__9daB_MGN_cFii */
void daB_MGN_c::setActionMode(int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FE8C-8060FE90 0000AC 0004+00 1/2 0/0 0/0 .rodata          @5032 */
SECTION_RODATA static f32 const lit_5032 = 7.0f / 5.0f;
COMPILER_STRIP_GATE(0x8060FE8C, &lit_5032);

/* 80607A80-80607B50 002440 00D0+00 2/2 0/0 0/0 .text            setExitMode__9daB_MGN_cFi */
void daB_MGN_c::setExitMode(int param_0) {
    // NONMATCHING
}

/* 80607B50-80607B80 002510 0030+00 1/1 0/0 0/0 .text            onBodyShield__9daB_MGN_cFv */
void daB_MGN_c::onBodyShield() {
    // NONMATCHING
}

/* 80607B80-80607BB0 002540 0030+00 1/1 0/0 0/0 .text            offBodyShield__9daB_MGN_cFv */
void daB_MGN_c::offBodyShield() {
    // NONMATCHING
}

/* 80607BB0-80607BFC 002570 004C+00 3/3 0/0 0/0 .text            onBodySlideAt__9daB_MGN_cFv */
void daB_MGN_c::onBodySlideAt() {
    // NONMATCHING
}

/* 80607BFC-80607C20 0025BC 0024+00 3/3 0/0 0/0 .text            offBodySlideAt__9daB_MGN_cFv */
void daB_MGN_c::offBodySlideAt() {
    // NONMATCHING
}

/* 80607C20-80607CB0 0025E0 0090+00 1/1 0/0 0/0 .text            checkHitSlideAt__9daB_MGN_cFv */
void daB_MGN_c::checkHitSlideAt() {
    // NONMATCHING
}

/* 80607CB0-80607CE4 002670 0034+00 1/1 0/0 0/0 .text            onBodyFallAt__9daB_MGN_cFv */
void daB_MGN_c::onBodyFallAt() {
    // NONMATCHING
}

/* 80607CE4-80607D08 0026A4 0024+00 1/1 0/0 0/0 .text            offBodyFallAt__9daB_MGN_cFv */
void daB_MGN_c::offBodyFallAt() {
    // NONMATCHING
}

/* 80607D08-80607D44 0026C8 003C+00 4/4 0/0 0/0 .text            onBodyCo__9daB_MGN_cFv */
void daB_MGN_c::onBodyCo() {
    // NONMATCHING
}

/* 80607D44-80607D7C 002704 0038+00 4/4 0/0 0/0 .text            offBodyCo__9daB_MGN_cFv */
void daB_MGN_c::offBodyCo() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FE90-8060FEA8 0000B0 0018+00 0/0 0/0 0/0 .rodata          @5170 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5170[24] = {
    0xC2, 0xA0, 0x00, 0x00, 0xC2, 0x48, 0x00, 0x00, 0xC2, 0x48, 0x00, 0x00,
    0xC2, 0x48, 0x00, 0x00, 0xC2, 0x48, 0x00, 0x00, 0xC2, 0x48, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8060FE90, &lit_5170);
#pragma pop

/* 8060FEA8-8060FEAC 0000C8 0004+00 0/1 0/0 0/0 .rodata          @5331 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5331 = 280.0f;
COMPILER_STRIP_GATE(0x8060FEA8, &lit_5331);
#pragma pop

/* 8060FEAC-8060FEB0 0000CC 0004+00 0/4 0/0 0/0 .rodata          @5332 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5332 = -200.0f;
COMPILER_STRIP_GATE(0x8060FEAC, &lit_5332);
#pragma pop

/* 8060FEB0-8060FEB4 0000D0 0004+00 0/1 0/0 0/0 .rodata          @5333 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5333 = -130.0f;
COMPILER_STRIP_GATE(0x8060FEB0, &lit_5333);
#pragma pop

/* 8060FEB4-8060FEB8 0000D4 0004+00 0/1 0/0 0/0 .rodata          @5334 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5334 = -10.0f;
COMPILER_STRIP_GATE(0x8060FEB4, &lit_5334);
#pragma pop

/* 8060FEB8-8060FEBC 0000D8 0004+00 0/2 0/0 0/0 .rodata          @5335 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5335 = 180.0f;
COMPILER_STRIP_GATE(0x8060FEB8, &lit_5335);
#pragma pop

/* 8060FEBC-8060FEC0 0000DC 0004+00 0/1 0/0 0/0 .rodata          @5336 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5336 = -170.0f;
COMPILER_STRIP_GATE(0x8060FEBC, &lit_5336);
#pragma pop

/* 8060FEC0-8060FEC4 0000E0 0004+00 0/1 0/0 0/0 .rodata          @5337 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5337 = -120.0f;
COMPILER_STRIP_GATE(0x8060FEC0, &lit_5337);
#pragma pop

/* 8060FEC4-8060FEC8 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5338 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5338 = -160.0f;
COMPILER_STRIP_GATE(0x8060FEC4, &lit_5338);
#pragma pop

/* 8060FEC8-8060FECC 0000E8 0004+00 0/5 0/0 0/0 .rodata          @5339 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5339 = 1000.0f;
COMPILER_STRIP_GATE(0x8060FEC8, &lit_5339);
#pragma pop

/* 80607D7C-8060819C 00273C 0420+00 1/1 0/0 0/0 .text            getNearHitPos__9daB_MGN_cFP4cXyz */
void daB_MGN_c::getNearHitPos(cXyz* param_0) {
    // NONMATCHING
}

/* 8060819C-80608738 002B5C 059C+00 1/1 0/0 0/0 .text            damage_check__9daB_MGN_cFv */
void daB_MGN_c::damage_check() {
    // NONMATCHING
}

/* 80608738-806087A8 0030F8 0070+00 1/1 0/0 0/0 .text            calcJointAngle__9daB_MGN_cFs */
void daB_MGN_c::calcJointAngle(s16 param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FECC-8060FED0 0000EC 0004+00 0/1 0/0 0/0 .rodata          @5697 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5697 = -600.0f;
COMPILER_STRIP_GATE(0x8060FECC, &lit_5697);
#pragma pop

/* 8060FED0-8060FED4 0000F0 0004+00 0/2 0/0 0/0 .rodata          @5698 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5698 = 2000.0f;
COMPILER_STRIP_GATE(0x8060FED0, &lit_5698);
#pragma pop

/* 8060FED4-8060FED8 0000F4 0004+00 0/2 0/0 0/0 .rodata          @5699 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5699 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x8060FED4, &lit_5699);
#pragma pop

/* 806087A8-80608EF8 003168 0750+00 2/1 0/0 0/0 .text            executeCircle__9daB_MGN_cFv */
void daB_MGN_c::executeCircle() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FED8-8060FEDC 0000F8 0004+00 0/0 0/0 0/0 .rodata          @5700 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5700 = 1.5f;
COMPILER_STRIP_GATE(0x8060FED8, &lit_5700);
#pragma pop

/* 8060FEDC-8060FEE0 0000FC 0004+00 0/3 0/0 0/0 .rodata          @5701 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5701 = 30.0f;
COMPILER_STRIP_GATE(0x8060FEDC, &lit_5701);
#pragma pop

/* 8060FEE0-8060FEE4 000100 0004+00 0/1 0/0 0/0 .rodata          @6075 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6075 = -800.0f;
COMPILER_STRIP_GATE(0x8060FEE0, &lit_6075);
#pragma pop

/* 8060FEE4-8060FEE8 000104 0004+00 0/1 0/0 0/0 .rodata          @6076 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6076 = 4096.0f;
COMPILER_STRIP_GATE(0x8060FEE4, &lit_6076);
#pragma pop

/* 8060FEE8-8060FEEC 000108 0004+00 0/1 0/0 0/0 .rodata          @6077 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6077 = 6.0f;
COMPILER_STRIP_GATE(0x8060FEE8, &lit_6077);
#pragma pop

/* 8060FEEC-8060FEF0 00010C 0004+00 0/1 0/0 0/0 .rodata          @6078 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6078 = 4.0f;
COMPILER_STRIP_GATE(0x8060FEEC, &lit_6078);
#pragma pop

/* 8060FEF0-8060FEF4 000110 0004+00 0/1 0/0 0/0 .rodata          @6079 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6079 = 2500.0f;
COMPILER_STRIP_GATE(0x8060FEF0, &lit_6079);
#pragma pop

/* 8060FEF4-8060FEF8 000114 0004+00 0/0 0/0 0/0 .rodata          @6080 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6080 = -5.0f;
COMPILER_STRIP_GATE(0x8060FEF4, &lit_6080);
#pragma pop

/* 8060FEF8-8060FEFC 000118 0004+00 0/0 0/0 0/0 .rodata          @6081 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6081 = 1600.0f;
COMPILER_STRIP_GATE(0x8060FEF8, &lit_6081);
#pragma pop

/* 8060FEFC-8060FF00 00011C 0004+00 0/2 0/0 0/0 .rodata          @6082 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6082 = 300.0f;
COMPILER_STRIP_GATE(0x8060FEFC, &lit_6082);
#pragma pop

/* 8060FF00-8060FF08 000120 0008+00 0/1 0/0 0/0 .rodata          @6085 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6085[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8060FF00, &lit_6085);
#pragma pop

/* 80608EF8-80609D70 0038B8 0E78+00 2/1 0/0 0/0 .text            executeDash__9daB_MGN_cFv */
void daB_MGN_c::executeDash() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FF08-8060FF0C 000128 0004+00 0/1 0/0 0/0 .rodata          @6258 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6258 = 787.0f;
COMPILER_STRIP_GATE(0x8060FF08, &lit_6258);
#pragma pop

/* 80609D70-8060A670 004730 0900+00 2/1 0/0 0/0 .text            executeThrown__9daB_MGN_cFv */
void daB_MGN_c::executeThrown() {
    // NONMATCHING
}

/* 8060A670-8060A72C 005030 00BC+00 3/3 0/0 0/0 .text            setDownEnd__9daB_MGN_cFv */
void daB_MGN_c::setDownEnd() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FF0C-8060FF10 00012C 0004+00 0/2 0/0 0/0 .rodata          @6259 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6259 = 5.0f;
COMPILER_STRIP_GATE(0x8060FF0C, &lit_6259);
#pragma pop

/* 8060FF10-8060FF14 000130 0004+00 0/0 0/0 0/0 .rodata          @6260 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6260 = 16.0f;
COMPILER_STRIP_GATE(0x8060FF10, &lit_6260);
#pragma pop

/* 8060FF14-8060FF18 000134 0004+00 0/1 0/0 0/0 .rodata          @6261 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6261 = 26.0f;
COMPILER_STRIP_GATE(0x8060FF14, &lit_6261);
#pragma pop

/* 8060FF18-8060FF1C 000138 0004+00 0/1 0/0 0/0 .rodata          @6420 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6420 = 13.0f;
COMPILER_STRIP_GATE(0x8060FF18, &lit_6420);
#pragma pop

/* 8060FF1C-8060FF20 00013C 0004+00 0/1 0/0 0/0 .rodata          @6421 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6421 = 19.0f;
COMPILER_STRIP_GATE(0x8060FF1C, &lit_6421);
#pragma pop

/* 8060A72C-8060ACB8 0050EC 058C+00 2/1 0/0 0/0 .text            executeDown__9daB_MGN_cFv */
void daB_MGN_c::executeDown() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FF20-8060FF24 000140 0004+00 0/0 0/0 0/0 .rodata          @6422 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6422 = 42.0f;
COMPILER_STRIP_GATE(0x8060FF20, &lit_6422);
#pragma pop

/* 8060FF24-8060FF28 000144 0004+00 0/1 0/0 0/0 .rodata          @6502 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6502 = 46.0f;
COMPILER_STRIP_GATE(0x8060FF24, &lit_6502);
#pragma pop

/* 8060ACB8-8060B028 005678 0370+00 1/1 0/0 0/0 .text            executeDownDamage__9daB_MGN_cFv */
void daB_MGN_c::executeDownDamage() {
    // NONMATCHING
}

/* 8060B028-8060B430 0059E8 0408+00 1/1 0/0 0/0 .text            executeDownBiteDamage__9daB_MGN_cFv
 */
void daB_MGN_c::executeDownBiteDamage() {
    // NONMATCHING
}

/* 8060B430-8060B544 005DF0 0114+00 1/1 0/0 0/0 .text            executeWarp__9daB_MGN_cFv */
void daB_MGN_c::executeWarp() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FF28-8060FF2C 000148 0004+00 0/1 0/0 0/0 .rodata          @6830 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6830 = 60.0f;
COMPILER_STRIP_GATE(0x8060FF28, &lit_6830);
#pragma pop

/* 8060FF2C-8060FF30 00014C 0004+00 0/1 0/0 0/0 .rodata          @6831 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6831 = -3000.0f;
COMPILER_STRIP_GATE(0x8060FF2C, &lit_6831);
#pragma pop

/* 8060FF30-8060FF34 000150 0004+00 0/1 0/0 0/0 .rodata          @6832 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6832 = 2100.0f;
COMPILER_STRIP_GATE(0x8060FF30, &lit_6832);
#pragma pop

/* 8060FF34-8060FF38 000154 0004+00 0/1 0/0 0/0 .rodata          @6833 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6833 = -3300.0f;
COMPILER_STRIP_GATE(0x8060FF34, &lit_6833);
#pragma pop

/* 8060FF38-8060FF3C 000158 0004+00 0/1 0/0 0/0 .rodata          @6834 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6834 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x8060FF38, &lit_6834);
#pragma pop

/* 8060FF3C-8060FF40 00015C 0004+00 0/1 0/0 0/0 .rodata          @6835 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6835 = -3.0f;
COMPILER_STRIP_GATE(0x8060FF3C, &lit_6835);
#pragma pop

/* 8060B544-8060BE6C 005F04 0928+00 2/1 0/0 0/0 .text            executeFall__9daB_MGN_cFv */
void daB_MGN_c::executeFall() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FF40-8060FF44 000160 0004+00 0/0 0/0 0/0 .rodata          @6836 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6836 = 12.0f;
COMPILER_STRIP_GATE(0x8060FF40, &lit_6836);
#pragma pop

/* 8060FF44-8060FF48 000164 0004+00 0/0 0/0 0/0 .rodata          @6837 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6837 = 43.0f;
COMPILER_STRIP_GATE(0x8060FF44, &lit_6837);
#pragma pop

/* 8060FF48-8060FF4C 000168 0004+00 0/0 0/0 0/0 .rodata          @6838 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6838 = 34.0f;
COMPILER_STRIP_GATE(0x8060FF48, &lit_6838);
#pragma pop

/* 8060FF4C-8060FF50 00016C 0004+00 0/1 0/0 0/0 .rodata          @6881 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6881 = 90.0f;
COMPILER_STRIP_GATE(0x8060FF4C, &lit_6881);
#pragma pop

/* 8060FF50-8060FF54 000170 0004+00 0/1 0/0 0/0 .rodata          @6882 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6882 = -180.0f;
COMPILER_STRIP_GATE(0x8060FF50, &lit_6882);
#pragma pop

/* 8060FF54-8060FF58 000174 0004+00 0/1 0/0 0/0 .rodata          @6883 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6883 = -2090.0f;
COMPILER_STRIP_GATE(0x8060FF54, &lit_6883);
#pragma pop

/* 8060FF58-8060FF5C 000178 0004+00 0/2 0/0 0/0 .rodata          @6884 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6884 = -300.0f;
COMPILER_STRIP_GATE(0x8060FF58, &lit_6884);
#pragma pop

/* 8060FF5C-8060FF60 00017C 0004+00 0/1 0/0 0/0 .rodata          @6885 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6885 = -3090.0f;
COMPILER_STRIP_GATE(0x8060FF5C, &lit_6885);
#pragma pop

/* 8060BE6C-8060C034 00682C 01C8+00 1/1 0/0 0/0 .text            demo_skip__9daB_MGN_cFi */
void daB_MGN_c::demo_skip(int param_0) {
    // NONMATCHING
}

/* 8060C034-8060C068 0069F4 0034+00 1/1 0/0 0/0 .text            DemoSkipCallBack__9daB_MGN_cFPvi */
void daB_MGN_c::DemoSkipCallBack(void* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FF60-8060FF64 000180 0004+00 0/1 0/0 0/0 .rodata          @7349 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7349 = -7.0f;
COMPILER_STRIP_GATE(0x8060FF60, &lit_7349);
#pragma pop

/* 8060FF64-8060FF68 000184 0004+00 0/1 0/0 0/0 .rodata          @7350 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7350 = -1045.0f;
COMPILER_STRIP_GATE(0x8060FF64, &lit_7350);
#pragma pop

/* 8060FF68-8060FF6C 000188 0004+00 0/1 0/0 0/0 .rodata          @7351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7351 = -2190.0f;
COMPILER_STRIP_GATE(0x8060FF68, &lit_7351);
#pragma pop

/* 8060FF6C-8060FF70 00018C 0004+00 0/1 0/0 0/0 .rodata          @7352 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7352 = 220.0f;
COMPILER_STRIP_GATE(0x8060FF6C, &lit_7352);
#pragma pop

/* 8060FF70-8060FF74 000190 0004+00 0/1 0/0 0/0 .rodata          @7353 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7353 = -1390.0f;
COMPILER_STRIP_GATE(0x8060FF70, &lit_7353);
#pragma pop

/* 8060FF74-8060FF78 000194 0004+00 0/1 0/0 0/0 .rodata          @7354 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7354 = -1312.0f;
COMPILER_STRIP_GATE(0x8060FF74, &lit_7354);
#pragma pop

/* 8060FF78-8060FF7C 000198 0004+00 0/1 0/0 0/0 .rodata          @7355 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7355 = 227.0f;
COMPILER_STRIP_GATE(0x8060FF78, &lit_7355);
#pragma pop

/* 8060FF7C-8060FF80 00019C 0004+00 0/1 0/0 0/0 .rodata          @7356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7356 = -114.0f;
COMPILER_STRIP_GATE(0x8060FF7C, &lit_7356);
#pragma pop

/* 8060FF80-8060FF84 0001A0 0004+00 0/1 0/0 0/0 .rodata          @7357 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7357 = 2690.0f;
COMPILER_STRIP_GATE(0x8060FF80, &lit_7357);
#pragma pop

/* 8060FF84-8060FF88 0001A4 0004+00 0/1 0/0 0/0 .rodata          @7358 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7358 = 170.0f;
COMPILER_STRIP_GATE(0x8060FF84, &lit_7358);
#pragma pop

/* 8060C068-8060D078 006A28 1010+00 2/1 0/0 0/0 .text            executeOpening__9daB_MGN_cFv */
void daB_MGN_c::executeOpening() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FF88-8060FF8C 0001A8 0004+00 0/1 0/0 0/0 .rodata          @7359 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7359 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x8060FF88, &lit_7359);
#pragma pop

/* 8060FF8C-8060FF90 0001AC 0004+00 0/0 0/0 0/0 .rodata          @7360 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7360 = 1100.0f;
COMPILER_STRIP_GATE(0x8060FF8C, &lit_7360);
#pragma pop

/* 8060FF90-8060FF94 0001B0 0004+00 0/0 0/0 0/0 .rodata          @7361 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7361 = 175.0f;
COMPILER_STRIP_GATE(0x8060FF90, &lit_7361);
#pragma pop

/* 8060FF94-8060FF98 0001B4 0004+00 0/0 0/0 0/0 .rodata          @7362 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7362 = 275.0f;
COMPILER_STRIP_GATE(0x8060FF94, &lit_7362);
#pragma pop

/* 8060FF98-8060FF9C 0001B8 0004+00 0/0 0/0 0/0 .rodata          @7363 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7363 = 8.0f;
COMPILER_STRIP_GATE(0x8060FF98, &lit_7363);
#pragma pop

/* 8060FF9C-8060FFA0 0001BC 0004+00 0/0 0/0 0/0 .rodata          @7364 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7364 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x8060FF9C, &lit_7364);
#pragma pop

/* 8060FFA0-8060FFA4 0001C0 0004+00 0/0 0/0 0/0 .rodata          @7365 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7365 = 305.0f;
COMPILER_STRIP_GATE(0x8060FFA0, &lit_7365);
#pragma pop

/* 8060FFA4-8060FFA8 0001C4 0004+00 0/0 0/0 0/0 .rodata          @7366 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7366 = 290.0f;
COMPILER_STRIP_GATE(0x8060FFA4, &lit_7366);
#pragma pop

/* 8060FFA8-8060FFAC 0001C8 0004+00 0/0 0/0 0/0 .rodata          @7367 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7367 = 365.0f;
COMPILER_STRIP_GATE(0x8060FFA8, &lit_7367);
#pragma pop

/* 8060FFAC-8060FFB0 0001CC 0004+00 0/0 0/0 0/0 .rodata          @7368 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7368 = 360.0f;
COMPILER_STRIP_GATE(0x8060FFAC, &lit_7368);
#pragma pop

/* 8060FFB0-8060FFB4 0001D0 0004+00 0/0 0/0 0/0 .rodata          @7369 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7369 = 420.0f;
COMPILER_STRIP_GATE(0x8060FFB0, &lit_7369);
#pragma pop

/* 8060FFB4-8060FFB8 0001D4 0004+00 0/0 0/0 0/0 .rodata          @7370 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7370 = 450.0f;
COMPILER_STRIP_GATE(0x8060FFB4, &lit_7370);
#pragma pop

/* 8060FFB8-8060FFBC 0001D8 0004+00 0/0 0/0 0/0 .rodata          @7371 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7371 = -250.0f;
COMPILER_STRIP_GATE(0x8060FFB8, &lit_7371);
#pragma pop

/* 8060FFBC-8060FFC0 0001DC 0004+00 0/0 0/0 0/0 .rodata          @7372 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7372 = -2540.0f;
COMPILER_STRIP_GATE(0x8060FFBC, &lit_7372);
#pragma pop

/* 8060FFC0-8060FFC4 0001E0 0004+00 0/0 0/0 0/0 .rodata          @7373 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7373 = 25.0f;
COMPILER_STRIP_GATE(0x8060FFC0, &lit_7373);
#pragma pop

/* 8060FFC4-8060FFC8 0001E4 0004+00 0/0 0/0 0/0 .rodata          @7374 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7374 = -2590.0f;
COMPILER_STRIP_GATE(0x8060FFC4, &lit_7374);
#pragma pop

/* 8060FFC8-8060FFCC 0001E8 0004+00 0/0 0/0 0/0 .rodata          @7375 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7375 = -2690.0f;
COMPILER_STRIP_GATE(0x8060FFC8, &lit_7375);
#pragma pop

/* 8060FFCC-8060FFD0 0001EC 0004+00 0/1 0/0 0/0 .rodata          @7614 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7614 = -2500.0f;
COMPILER_STRIP_GATE(0x8060FFCC, &lit_7614);
#pragma pop

/* 8060FFD0-8060FFD4 0001F0 0004+00 0/1 0/0 0/0 .rodata          @7615 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7615 = -500.0f;
COMPILER_STRIP_GATE(0x8060FFD0, &lit_7615);
#pragma pop

/* 8060FFD4-8060FFD8 0001F4 0004+00 0/1 0/0 0/0 .rodata          @7616 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7616 = 68.0f;
COMPILER_STRIP_GATE(0x8060FFD4, &lit_7616);
#pragma pop

/* 8060FFD8-8060FFDC 0001F8 0004+00 0/1 0/0 0/0 .rodata          @7617 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7617 = 230.0f;
COMPILER_STRIP_GATE(0x8060FFD8, &lit_7617);
#pragma pop

/* 8060FFDC-8060FFE0 0001FC 0004+00 0/1 0/0 0/0 .rodata          @7618 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7618 = 500.0f;
COMPILER_STRIP_GATE(0x8060FFDC, &lit_7618);
#pragma pop

/* 8060FFE0-8060FFE4 000200 0004+00 0/1 0/0 0/0 .rodata          @7619 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7619 = 303.0f;
COMPILER_STRIP_GATE(0x8060FFE0, &lit_7619);
#pragma pop

/* 8060FFE4-8060FFE8 000204 0004+00 0/1 0/0 0/0 .rodata          @7620 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7620 = 333.0f;
COMPILER_STRIP_GATE(0x8060FFE4, &lit_7620);
#pragma pop

/* 8060FFE8-8060FFEC 000208 0004+00 0/1 0/0 0/0 .rodata          @7621 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7621 = 350.0f;
COMPILER_STRIP_GATE(0x8060FFE8, &lit_7621);
#pragma pop

/* 8060FFEC-8060FFF0 00020C 0004+00 0/1 0/0 0/0 .rodata          @7622 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7622 = 320.0f;
COMPILER_STRIP_GATE(0x8060FFEC, &lit_7622);
#pragma pop

/* 8060FFF0-8060FFF4 000210 0004+00 0/1 0/0 0/0 .rodata          @7623 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7623 = 1280.0f;
COMPILER_STRIP_GATE(0x8060FFF0, &lit_7623);
#pragma pop

/* 8060D078-8060D880 007A38 0808+00 1/1 0/0 0/0 .text            executeDeath__9daB_MGN_cFv */
void daB_MGN_c::executeDeath() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FFF4-8060FFF8 000214 0004+00 0/2 0/0 0/0 .rodata          @7686 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7686 = 80.0f;
COMPILER_STRIP_GATE(0x8060FFF4, &lit_7686);
#pragma pop

/* 8060D880-8060DAC0 008240 0240+00 1/1 0/0 0/0 .text            executeJump__9daB_MGN_cFv */
void daB_MGN_c::executeJump() {
    // NONMATCHING
}

/* 8060DAC0-8060DDA0 008480 02E0+00 1/1 0/0 0/0 .text            checkStartJump__9daB_MGN_cFv */
void daB_MGN_c::checkStartJump() {
    // NONMATCHING
}

/* 8060DDA0-8060E158 008760 03B8+00 2/1 0/0 0/0 .text            action__9daB_MGN_cFv */
void daB_MGN_c::action() {
    // NONMATCHING
}

/* 8060E158-8060E1D0 008B18 0078+00 1/1 0/0 0/0 .text            mtx_set__9daB_MGN_cFv */
void daB_MGN_c::mtx_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8060FFF8-8060FFFC 000218 0004+00 0/0 0/0 0/0 .rodata          @7853 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7853 = 0x3BA3D70A;
COMPILER_STRIP_GATE(0x8060FFF8, &lit_7853);
#pragma pop

/* 8060FFFC-80610038 00021C 003C+00 0/1 0/0 0/0 .rodata          cc_set_radius$7874 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const cc_set_radius[60] = {
    0x43, 0x48, 0x00, 0x00, 0x43, 0x8C, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00, 0x42, 0xC8, 0x00,
    0x00, 0x42, 0xC8, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00, 0x42, 0x8C, 0x00, 0x00, 0x42, 0x8C,
    0x00, 0x00, 0x42, 0x8C, 0x00, 0x00, 0x42, 0x8C, 0x00, 0x00, 0x42, 0x8C, 0x00, 0x00, 0x42,
    0x8C, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8060FFFC, &cc_set_radius);
#pragma pop

/* 80610038-80610074 000258 003C+00 0/1 0/0 0/0 .rodata          cc_set_jnt$7875 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const cc_set_jnt[60] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00,
    0x34, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x41, 0x00, 0x00,
    0x00, 0x43, 0x00, 0x00, 0x00, 0x45, 0x00, 0x00, 0x00, 0x47, 0x00, 0x00, 0x00, 0x49, 0x00,
    0x00, 0x00, 0x4A, 0x00, 0x00, 0x00, 0x4B, 0x00, 0x00, 0x00, 0x4B, 0x00, 0x00, 0x00, 0x1B,
};
COMPILER_STRIP_GATE(0x80610038, &cc_set_jnt);
#pragma pop

/* 80610074-80610078 000294 0004+00 0/1 0/0 0/0 .rodata          @8057 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8057 = 400.0f;
COMPILER_STRIP_GATE(0x80610074, &lit_8057);
#pragma pop

/* 80610078-8061007C 000298 0004+00 0/1 0/0 0/0 .rodata          @8058 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8058 = -100.0f;
COMPILER_STRIP_GATE(0x80610078, &lit_8058);
#pragma pop

/* 8060E1D0-8060E820 008B90 0650+00 1/1 0/0 0/0 .text            cc_set__9daB_MGN_cFv */
void daB_MGN_c::cc_set() {
    // NONMATCHING
}

/* 8060E820-8060EA10 0091E0 01F0+00 1/1 0/0 0/0 .text            execute__9daB_MGN_cFv */
void daB_MGN_c::execute() {
    // NONMATCHING
}

/* 8060EA10-8060EA30 0093D0 0020+00 2/1 0/0 0/0 .text            daB_MGN_Execute__FP9daB_MGN_c */
static void daB_MGN_Execute(daB_MGN_c* param_0) {
    // NONMATCHING
}

/* 8060EA30-8060EA38 0093F0 0008+00 1/0 0/0 0/0 .text            daB_MGN_IsDelete__FP9daB_MGN_c */
static bool daB_MGN_IsDelete(daB_MGN_c* param_0) {
    return true;
}

/* 8060EA38-8060EAC0 0093F8 0088+00 1/1 0/0 0/0 .text            _delete__9daB_MGN_cFv */
void daB_MGN_c::_delete() {
    // NONMATCHING
}

/* 8060EAC0-8060EAE0 009480 0020+00 1/0 0/0 0/0 .text            daB_MGN_Delete__FP9daB_MGN_c */
static void daB_MGN_Delete(daB_MGN_c* param_0) {
    // NONMATCHING
}

/* 8060EAE0-8060F068 0094A0 0588+00 1/1 0/0 0/0 .text            CreateHeap__9daB_MGN_cFv */
void daB_MGN_c::CreateHeap() {
    // NONMATCHING
}

/* 8060F068-8060F0B0 009A28 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 8060F0B0-8060F0D0 009A70 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static void useHeapInit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8061007C-80610080 00029C 0004+00 0/1 0/0 0/0 .rodata          @8446 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8446 = -1000.0f;
COMPILER_STRIP_GATE(0x8061007C, &lit_8446);
#pragma pop

/* 80610080-80610084 0002A0 0004+00 0/1 0/0 0/0 .rodata          @8447 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8447 = 600.0f;
COMPILER_STRIP_GATE(0x80610080, &lit_8447);
#pragma pop

/* 8060F0D0-8060F548 009A90 0478+00 1/1 0/0 0/0 .text            create__9daB_MGN_cFv */
void daB_MGN_c::create() {
    // NONMATCHING
}

/* 8060F548-8060F590 009F08 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 8060F590-8060F5D8 009F50 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8060F5D8-8060F6A4 009F98 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 8060F6A4-8060F728 00A064 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 8060F728-8060F784 00A0E8 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 8060F784-8060F7F4 00A144 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8060F7F4-8060F864 00A1B4 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 8060F864-8060F868 00A224 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 8060F868-8060F888 00A228 0020+00 1/0 0/0 0/0 .text            daB_MGN_Create__FP9daB_MGN_c */
static void daB_MGN_Create(daB_MGN_c* param_0) {
    // NONMATCHING
}

/* 8060F888-8060F8D0 00A248 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 8060F8D0-8060F918 00A290 0048+00 2/1 0/0 0/0 .text            __dt__13daB_MGN_HIO_cFv */
daB_MGN_HIO_c::~daB_MGN_HIO_c() {
    // NONMATCHING
}

/* 8060F918-8060F954 00A2D8 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_b_mgn_cpp */
void __sinit_d_a_b_mgn_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8060F918, __sinit_d_a_b_mgn_cpp);
#pragma pop

/* 8060F954-8060F95C 00A314 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8060F954() {
    // NONMATCHING
}

/* 8060F95C-8060F964 00A31C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8060F95C() {
    // NONMATCHING
}

/* 8060F964-8060FD78 00A324 0414+00 1/1 0/0 0/0 .text
 * setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz */
static void setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz* param_2,
                                   cXyz* param_3) {
    // NONMATCHING
}

/* 8060FD78-8060FDB4 00A738 003C+00 1/1 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 8060FDB4-8060FDCC 00A774 0018+00 3/3 0/0 0/0 .text            checkNowWolf__9daPy_py_cFv */
// void daPy_py_c::checkNowWolf() {
extern "C" void checkNowWolf__9daPy_py_cFv() {
    // NONMATCHING
}

/* 80610084-80610084 0002A4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */