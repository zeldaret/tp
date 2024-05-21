/**
 * @file d_a_e_vt.cpp
 * 
*/

#include "rel/d/a/e/d_a_e_vt/d_a_e_vt.h"
#include "dol2asm.h"
#include "d/d_camera.h"




//
// Forward References:
//

extern "C" void __ct__12daE_VA_HIO_cFv();
extern "C" void ctrlJoint__8daE_VA_cFP8J3DJointP8J3DModel();
extern "C" void JointCallBack__8daE_VA_cFP8J3DJointi();
extern "C" void calcJointNeck__8daE_VA_cFv();
extern "C" void calcJointSleeve__8daE_VA_cFv();
extern "C" void draw__8daE_VA_cFv();
extern "C" static void daE_VA_Draw__FP8daE_VA_c();
extern "C" void setBck__8daE_VA_cFiUcff();
extern "C" void checkBck__8daE_VA_cFi();
extern "C" void setActionMode__8daE_VA_cFii();
extern "C" void getWolfCutType__8daE_VA_cFv();
extern "C" void onSwordAtBit__8daE_VA_cFv();
extern "C" void offSwordShield__8daE_VA_cFv();
extern "C" void setTransDamage__8daE_VA_cFP4cXyz();
extern "C" void damage_check__8daE_VA_cFv();
extern "C" void __as__8dCcD_CylFRC8dCcD_Cyl();
extern "C" void __as__12dCcD_GObjInfFRC12dCcD_GObjInf();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void setFireEffect__8daE_VA_cFi();
extern "C" void setFootEffect__8daE_VA_cFv();
extern "C" void setWeponEffect__8daE_VA_cFv();
extern "C" void setBugsEffect__8daE_VA_cFv();
extern "C" void setWeponLandEffect__8daE_VA_cFv();
extern "C" void setWeponGlow__8daE_VA_cFv();
extern "C" void setWeponFlashScreen__8daE_VA_cFv();
extern "C" void setMagicEffect__8daE_VA_cFi();
extern "C" void setMagicHitEffect__8daE_VA_cFi();
extern "C" void demo_skip__8daE_VA_cFi();
extern "C" void DemoSkipCallBack__8daE_VA_cFPvi();
extern "C" void getRopeLength__8daE_VA_cFi();
extern "C" void calcOpRopePos__8daE_VA_cFv();
extern "C" void onRopeCutStatus__8daE_VA_cFiii();
extern "C" void setVibRope__8daE_VA_cFff();
extern "C" void setVibTag__8daE_VA_cFii();
extern "C" void calcTagAngle__8daE_VA_cFv();
extern "C" void calcRopeFirePos__8daE_VA_cFv();
extern "C" void executeDemoOpWait__8daE_VA_cFv();
extern "C" void executeDemoOp__8daE_VA_cFv();
extern "C" void executeClearWait__8daE_VA_cFv();
extern "C" void executeClearChase__8daE_VA_cFv();
extern "C" void executeClearAttack__8daE_VA_cFv();
extern "C" void executeTransWait__8daE_VA_cFv();
extern "C" void executeTransChase__8daE_VA_cFv();
extern "C" void executeTransAttack__8daE_VA_cFv();
extern "C" void executeTransBiteDamage__8daE_VA_cFv();
extern "C" void executeTransDamage__8daE_VA_cFv();
extern "C" void executeTransThrough__8daE_VA_cFv();
extern "C" void executeOpaciWait__8daE_VA_cFv();
extern "C" void executeOpaciFly__8daE_VA_cFv();
extern "C" void executeOpaciDamage__8daE_VA_cFv();
extern "C" void executeOpaciChase__8daE_VA_cFv();
extern "C" void executeOpaciAttack__8daE_VA_cFv();
extern "C" void executeOpaciDown__8daE_VA_cFv();
extern "C" void executeOpaciDownDamage__8daE_VA_cFv();
extern "C" void executeOpaciFlip__8daE_VA_cFv();
extern "C" void executeOpaciFadeAway__8daE_VA_cFv();
extern "C" void executeOpaciDeath__8daE_VA_cFv();
extern "C" void calcMagicMove__8daE_VA_cFv();
extern "C" void setAlphaType__8daE_VA_cFv();
extern "C" void action__8daE_VA_cFv();
extern "C" void mtx_set__8daE_VA_cFv();
extern "C" void cc_set__8daE_VA_cFv();
extern "C" void execute__8daE_VA_cFv();
extern "C" static void daE_VA_Execute__FP8daE_VA_c();
extern "C" static bool daE_VA_IsDelete__FP8daE_VA_c();
extern "C" void _delete__8daE_VA_cFv();
extern "C" static void daE_VA_Delete__FP8daE_VA_c();
extern "C" void CreateHeap__8daE_VA_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daE_VA_cFv();
extern "C" void __ct__8daE_VA_cFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __ct__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __ct__5csXyzFv();
extern "C" static void daE_VA_Create__FP8daE_VA_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_VA_HIO_cFv();
extern "C" void __sinit_d_a_e_vt_cpp();
extern "C" static void func_807CE7E0();
extern "C" static void func_807CE7E8();
extern "C" static void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" void checkNowWolf__9daPy_py_cFv();
extern "C" extern char const* const d_a_e_vt__stringBase0;

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
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void create__21mDoExt_invisibleModelFP8J3DModelUc();
extern "C" void entryDL__21mDoExt_invisibleModelFP4cXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void init__19mDoExt_3DlineMat0_cFUsUsi();
extern "C" void init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi();
extern "C" void update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_onOneZoneSwitch__Fii();
extern "C" void dComIfGs_offOneZoneSwitch__Fii();
extern "C" void dComIfGs_isOneZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onDungeonItem__12dSv_memBit_cFi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
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
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void checkMasterSwordEquip__9daPy_py_cFv();
extern "C" void checkNowWolfEyeUp__9daPy_py_cFv();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void dCam_getBody__Fv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_custom_colset__FUcUcf();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void __dv__4cXyzCFf();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseUC__FPUcUcUc();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void cLib_chasePosXZ__FP4cXyzRC4cXyzf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void deleteAllParticle__14JPABaseEmitterFv();
extern "C" void func_80280808();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void bgmStreamPrepare__8Z2SeqMgrFUl();
extern "C" void bgmStreamPlay__8Z2SeqMgrFv();
extern "C" void bgmStreamStop__8Z2SeqMgrFUl();
extern "C" void changeSubBgmStatus__8Z2SeqMgrFl();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __copy();
extern "C" void __construct_array();
extern "C" void _savegpr_14();
extern "C" void _savegpr_17();
extern "C" void _savegpr_19();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_14();
extern "C" void _restgpr_17();
extern "C" void _restgpr_19();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__19mDoExt_3DlineMat1_c[5];
extern "C" extern void* __vt__19mDoExt_3DlineMat0_c[5];
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
extern "C" extern u8 j3dZModeTable[96];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u8 struct_80450C98[4];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 807CECA8-807CECAC 000000 0004+00 36/36 0/0 0/0 .rodata          @3907 */
SECTION_RODATA static f32 const lit_3907 = 100.0f;
COMPILER_STRIP_GATE(0x807CECA8, &lit_3907);

/* 807CECAC-807CECB0 000004 0004+00 4/36 0/0 0/0 .rodata          @3908 */
SECTION_RODATA static u8 const lit_3908[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x807CECAC, &lit_3908);

/* 807CECB0-807CECB8 000008 0004+04 11/34 0/0 0/0 .rodata          @3909 */
SECTION_RODATA static f32 const lit_3909[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x807CECB0, &lit_3909);

/* 807CECB8-807CECC0 000010 0008+00 0/3 0/0 0/0 .rodata          @3910 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3910[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807CECB8, &lit_3910);
#pragma pop

/* 807CECC0-807CECC8 000018 0008+00 0/3 0/0 0/0 .rodata          @3911 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3911[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807CECC0, &lit_3911);
#pragma pop

/* 807CECC8-807CECD0 000020 0008+00 0/3 0/0 0/0 .rodata          @3912 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3912[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807CECC8, &lit_3912);
#pragma pop

/* 807CECD0-807CECD4 000028 0004+00 0/2 0/0 0/0 .rodata          @3913 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3913 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x807CECD0, &lit_3913);
#pragma pop

/* 807CECD4-807CECD8 00002C 0004+00 0/1 0/0 0/0 .rodata          @3928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3928 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x807CECD4, &lit_3928);
#pragma pop

/* 807CECD8-807CECDC 000030 0004+00 0/3 0/0 0/0 .rodata          @3929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3929 = 500.0f;
COMPILER_STRIP_GATE(0x807CECD8, &lit_3929);
#pragma pop

/* 807CECDC-807CECE0 000034 0004+00 0/1 0/0 0/0 .rodata          @3930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3930 = 7.0f;
COMPILER_STRIP_GATE(0x807CECDC, &lit_3930);
#pragma pop

/* 807CECE0-807CECE4 000038 0004+00 0/1 0/0 0/0 .rodata          @3931 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3931 = 2500.0f;
COMPILER_STRIP_GATE(0x807CECE0, &lit_3931);
#pragma pop

/* 807CECE4-807CECE8 00003C 0004+00 0/3 0/0 0/0 .rodata          @3932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3932 = 1000.0f;
COMPILER_STRIP_GATE(0x807CECE4, &lit_3932);
#pragma pop

/* 807CECE8-807CECEC 000040 0004+00 0/1 0/0 0/0 .rodata          @3933 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3933 = 800.0f;
COMPILER_STRIP_GATE(0x807CECE8, &lit_3933);
#pragma pop

/* 807CECEC-807CECF0 000044 0004+00 1/3 0/0 0/0 .rodata          @3934 */
SECTION_RODATA static f32 const lit_3934 = 0.5f;
COMPILER_STRIP_GATE(0x807CECEC, &lit_3934);

/* 807CECF0-807CECF4 000048 0004+00 0/16 0/0 0/0 .rodata          @3935 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3935 = 3.0f;
COMPILER_STRIP_GATE(0x807CECF0, &lit_3935);
#pragma pop

/* 807CECF4-807CECF8 00004C 0004+00 0/2 0/0 0/0 .rodata          @3936 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3936 = -50.0f;
COMPILER_STRIP_GATE(0x807CECF4, &lit_3936);
#pragma pop

/* 807CECF8-807CECFC 000050 0004+00 0/6 0/0 0/0 .rodata          @3937 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3937 = 40.0f;
COMPILER_STRIP_GATE(0x807CECF8, &lit_3937);
#pragma pop

/* 807CECFC-807CED00 000054 0004+00 0/1 0/0 0/0 .rodata          @3938 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3938 = 35.0f;
COMPILER_STRIP_GATE(0x807CECFC, &lit_3938);
#pragma pop

/* 807CED00-807CED04 000058 0004+00 0/1 0/0 0/0 .rodata          @3939 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3939 = 82.0f;
COMPILER_STRIP_GATE(0x807CED00, &lit_3939);
#pragma pop

/* 807CED04-807CED08 00005C 0004+00 0/2 0/0 0/0 .rodata          @3940 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3940 = 210.0f;
COMPILER_STRIP_GATE(0x807CED04, &lit_3940);
#pragma pop

/* 807CEF08-807CEF14 000000 000C+00 3/3 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 807CEF14-807CEF28 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 807CEF28-807CEF30 000020 0008+00 0/1 0/0 0/0 .data            e_prim$3786 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim[8] = {
    0xFF, 0x78, 0x00, 0x00, 0xFF, 0x64, 0x78, 0x00,
};
#pragma pop

/* 807CEF30-807CEF38 000028 0008+00 0/1 0/0 0/0 .data            e_env$3787 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env[8] = {
    0x5A, 0x2D, 0x2D, 0x00, 0x3C, 0x1E, 0x1E, 0x00,
};
#pragma pop

/* 807CEF38-807CEF40 000030 0006+02 0/1 0/0 0/0 .data            eff_id$3795 */
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

/* 807CEF40-807CEF80 000038 0040+00 0/1 0/0 0/0 .data cc_vt_neck_src__22@unnamed@d_a_e_vt_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_807CEF40[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 807CEF80-807CEFC4 000078 0044+00 0/1 0/0 0/0 .data cc_vt_body_src__22@unnamed@d_a_e_vt_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_807CEF80[68] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x75,
    0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00, 0x43, 0x1E, 0x00, 0x00,
};
#pragma pop

/* 807CEFC4-807CF004 0000BC 0040+00 0/1 0/0 0/0 .data cc_vt_attack_src__22@unnamed@d_a_e_vt_cpp@
 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_807CEFC4[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x75, 0x09, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 807CF004-807CF044 0000FC 0040+00 0/1 0/0 0/0 .data cc_vt_line_src__22@unnamed@d_a_e_vt_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_807CF004[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x75, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 807CF044-807CF084 00013C 0040+00 0/1 0/0 0/0 .data cc_vt_magic_src__22@unnamed@d_a_e_vt_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_807CF044[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 807CF084-807CF0AC 00017C 0027+01 1/1 0/0 0/0 .data va_tag_set_size__22@unnamed@d_a_e_vt_cpp@ */
SECTION_DATA static u8 data_807CF084[39 + 1 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x01,
    0x01,
    0x01,
    0x01,
    0x01,
    0x01,
    0x01,
    0x01,
    0x02,
    0x02,
    0x02,
    0x02,
    0x02,
    0x02,
    0x02,
    0x02,
    0x02,
    0x02,
    0x02,
    0x02,
    0x00,
    0x00,
    0x00,
    0x01,
    0x01,
    0x01,
    0x01,
    0x02,
    0x02,
    0x02,
    0x02,
    0x02,
    /* padding */
    0x00,
};

/* 807CF0AC-807CF0D4 0001A4 0027+01 3/4 0/0 0/0 .data va_tag_set_num__22@unnamed@d_a_e_vt_cpp@ */
SECTION_DATA static u8 data_807CF0AC[39 + 1 /* padding */] = {
    0x01,
    0x0C,
    0x16,
    0x1F,
    0x21,
    0x2A,
    0x2B,
    0x02,
    0x04,
    0x0D,
    0x0F,
    0x15,
    0x18,
    0x20,
    0x2C,
    0x03,
    0x05,
    0x06,
    0x0B,
    0x10,
    0x17,
    0x19,
    0x1A,
    0x22,
    0x24,
    0x29,
    0x2D,
    0x34,
    0x49,
    0x52,
    0x36,
    0x3E,
    0x54,
    0x5C,
    0x39,
    0x41,
    0x4C,
    0x56,
    0x5E,
    /* padding */
    0x00,
};

/* 807CF0D4-807CF170 0001CC 009C+00 1/1 0/0 0/0 .data va_tag_offset__22@unnamed@d_a_e_vt_cpp@ */
SECTION_DATA static u8 data_807CF0D4[156] = {
    0x41, 0xA0, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
    0x41, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x41, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
    0x42, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00,
    0x41, 0xA0, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00,
    0x41, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00,
    0x41, 0xA0, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 807CF170-807CF174 000268 0004+00 1/1 0/0 0/0 .data            l_color$4364 */
SECTION_DATA static u8 l_color[4] = {
    0x64,
    0x46,
    0x00,
    0xFF,
};

/* 807CF174-807CF17C 00026C 0008+00 1/1 0/0 0/0 .data            va_foot_smoke_id$5094 */
SECTION_DATA static u8 va_foot_smoke_id[8] = {
    0x88, 0x91, 0x88, 0x92, 0x85, 0xC4, 0x85, 0xC5,
};

/* 807CF17C-807CF184 000274 0006+02 1/1 0/0 0/0 .data            va_wepon_eff_id1 */
SECTION_DATA static u8 va_wepon_eff_id1[6 + 2 /* padding */] = {
    0x85,
    0xD8,
    0x85,
    0xD9,
    0x85,
    0xDA,
    /* padding */
    0x00,
    0x00,
};

/* 807CF184-807CF18C 00027C 0006+02 1/1 0/0 0/0 .data            va_wepon_eff_id2 */
SECTION_DATA static u8 va_wepon_eff_id2[6 + 2 /* padding */] = {
    0x85,
    0xC6,
    0x85,
    0xC7,
    0x85,
    0xC8,
    /* padding */
    0x00,
    0x00,
};

/* 807CF18C-807CF1A4 000284 0018+00 1/1 0/0 0/0 .data            va_bugs_eff_jnt */
SECTION_DATA static u8 va_bugs_eff_jnt[24] = {
    0x00, 0x01, 0x00, 0x02, 0x00, 0x22, 0x00, 0x04, 0x00, 0x05, 0x00, 0x07,
    0x00, 0x10, 0x00, 0x11, 0x00, 0x13, 0x00, 0x2C, 0x00, 0x2F, 0x00, 0x32,
};

/* 807CF1A4-807CF1BC 00029C 0018+00 1/1 0/0 0/0 .data            va_bugs_eff_id */
SECTION_DATA static u8 va_bugs_eff_id[24] = {
    0x85, 0xE1, 0x85, 0xE2, 0x85, 0xE3, 0x85, 0xDB, 0x85, 0xDC, 0x85, 0xDD,
    0x85, 0xDE, 0x85, 0xDF, 0x85, 0xE0, 0x85, 0xE4, 0x85, 0xE5, 0x85, 0xE6,
};

/* 807CF1BC-807CF1C4 0002B4 0006+02 1/1 0/0 0/0 .data            va_weapon_land_eff_id */
SECTION_DATA static u8 va_weapon_land_eff_id[6 + 2 /* padding */] = {
    0x85,
    0xC9,
    0x85,
    0xCA,
    0x85,
    0xCB,
    /* padding */
    0x00,
    0x00,
};

/* 807CF1C4-807CF1CC 0002BC 0006+02 1/1 0/0 0/0 .data            va_magic_eff_id */
SECTION_DATA static u8 va_magic_eff_id[6 + 2 /* padding */] = {
    0x88,
    0x48,
    0x88,
    0x49,
    0x88,
    0x4A,
    /* padding */
    0x00,
    0x00,
};

/* 807CF1CC-807CF1F8 0002C4 002C+00 1/1 0/0 0/0 .data            line_pull_power */
SECTION_DATA static u8 line_pull_power[44] = {
    0x00, 0x00, 0x00, 0x00, 0x3D, 0xCC, 0xCC, 0xCD, 0x3E, 0x4C, 0xCC, 0xCD, 0x3E, 0x99, 0x99,
    0x9A, 0x3E, 0xCC, 0xCC, 0xCD, 0x3F, 0x00, 0x00, 0x00, 0x3F, 0x19, 0x99, 0x9A, 0x3F, 0x33,
    0x33, 0x33, 0x3F, 0x4C, 0xCC, 0xCD, 0x3F, 0x66, 0x66, 0x66, 0x3F, 0x80, 0x00, 0x00,
};

/* 807CF1F8-807CF200 0002F0 0008+00 1/2 0/0 0/0 .data            TAG_VIB_ANGLE */
SECTION_DATA static u8 TAG_VIB_ANGLE[8] = {
    0xF8, 0x00, 0x08, 0x00, 0xF0, 0x00, 0x10, 0x00,
};

/* 807CF200-807CF210 0002F8 0010+00 0/1 0/0 0/0 .data            TAG_VIB_WIDTH */
#pragma push
#pragma force_active on
SECTION_DATA static u8 TAG_VIB_WIDTH[16] = {
    0x01, 0xC0, 0x02, 0x80, 0x01, 0x80, 0x02, 0x40, 0x03, 0x80, 0x05, 0x00, 0x03, 0x00, 0x04, 0x80,
};
#pragma pop

/* 807CF210-807CF23C -00001 002C+00 1/1 0/0 0/0 .data            @6371 */
SECTION_DATA static void* lit_6371[11] = {
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0x70),
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0x1FC),
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0x2B4),
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0xCF4),
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0x3B4),
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0x4F8),
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0x6F0),
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0x700),
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0x874),
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0xA60),
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0xB0C),
};

/* 807CF23C-807CF27C -00001 0040+00 1/1 0/0 0/0 .data            @7005 */
SECTION_DATA static void* lit_7005[16] = {
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x4C),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5CC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5CC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5CC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5CC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5CC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5CC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5CC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5CC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5CC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x124),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5CC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x2BC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x2F8),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x41C),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5B0),
};

/* 807CF27C-807CF2D8 -00001 005C+00 1/1 0/0 0/0 .data            @7243 */
SECTION_DATA static void* lit_7243[23] = {
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x90),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x1D4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x420),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x478),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x4E4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x6FC),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x70C),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x73C),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x90),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x90),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x90),
};

/* 807CF2D8-807CF304 -00001 002C+00 1/1 0/0 0/0 .data            @7741 */
SECTION_DATA static void* lit_7741[11] = {
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x16C),
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x188),
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x250),
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x278),
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x330),
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x394),
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x3CC),
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x3CC),
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x3CC),
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x3CC),
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x5C),
};

/* 807CF304-807CF330 -00001 002C+00 1/1 0/0 0/0 .data            @7924 */
SECTION_DATA static void* lit_7924[11] = {
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x7C),
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x268),
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x37C),
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x4B8),
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x548),
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x6A8),
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x6A8),
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x6A8),
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x6A8),
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x6A8),
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x22C),
};

/* 807CF330-807CF384 -00001 0054+00 1/1 0/0 0/0 .data            @8207 */
SECTION_DATA static void* lit_8207[21] = {
    (void*)(((char*)action__8daE_VA_cFv) + 0x11C), (void*)(((char*)action__8daE_VA_cFv) + 0x12C),
    (void*)(((char*)action__8daE_VA_cFv) + 0x13C), (void*)(((char*)action__8daE_VA_cFv) + 0x148),
    (void*)(((char*)action__8daE_VA_cFv) + 0x154), (void*)(((char*)action__8daE_VA_cFv) + 0x160),
    (void*)(((char*)action__8daE_VA_cFv) + 0x178), (void*)(((char*)action__8daE_VA_cFv) + 0x16C),
    (void*)(((char*)action__8daE_VA_cFv) + 0x190), (void*)(((char*)action__8daE_VA_cFv) + 0x184),
    (void*)(((char*)action__8daE_VA_cFv) + 0x19C), (void*)(((char*)action__8daE_VA_cFv) + 0x1A8),
    (void*)(((char*)action__8daE_VA_cFv) + 0x1B4), (void*)(((char*)action__8daE_VA_cFv) + 0x1C0),
    (void*)(((char*)action__8daE_VA_cFv) + 0x1CC), (void*)(((char*)action__8daE_VA_cFv) + 0x1D8),
    (void*)(((char*)action__8daE_VA_cFv) + 0x1E4), (void*)(((char*)action__8daE_VA_cFv) + 0x1F0),
    (void*)(((char*)action__8daE_VA_cFv) + 0x1FC), (void*)(((char*)action__8daE_VA_cFv) + 0x208),
    (void*)(((char*)action__8daE_VA_cFv) + 0x214),
};

/* 807CF384-807CF3A4 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_VA_Method */
static actor_method_class l_daE_VA_Method = {
    (process_method_func)daE_VA_Create__FP8daE_VA_c,
    (process_method_func)daE_VA_Delete__FP8daE_VA_c,
    (process_method_func)daE_VA_Execute__FP8daE_VA_c,
    (process_method_func)daE_VA_IsDelete__FP8daE_VA_c,
    (process_method_func)daE_VA_Draw__FP8daE_VA_c,
};

/* 807CF3A4-807CF3D4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_VT */
extern actor_process_profile_definition g_profile_E_VT = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_VT,              // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daE_VA_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  756,                    // mPriority
  &l_daE_VA_Method,       // sub_method
  0x00040000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 807CF3D4-807CF3E0 0004CC 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 807CF3E0-807CF3EC 0004D8 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 807CF3EC-807CF3F8 0004E4 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 807CF3F8-807CF404 0004F0 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 807CF404-807CF428 0004FC 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807CE7E8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807CE7E0,
};

/* 807CF428-807CF43C 000520 0014+00 1/1 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 807CF43C-807CF448 000534 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 807CF448-807CF454 000540 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 807CF454-807CF460 00054C 000C+00 7/7 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 807CF460-807CF46C 000558 000C+00 2/2 0/0 0/0 .data            __vt__12daE_VA_HIO_c */
SECTION_DATA extern void* __vt__12daE_VA_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_VA_HIO_cFv,
};

/* 807C25EC-807C267C 0000EC 0090+00 1/1 0/0 0/0 .text            __ct__12daE_VA_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daE_VA_HIO_c::daE_VA_HIO_c() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__ct__12daE_VA_HIO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CF478-807CF47C 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 807CF47C-807CF480 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 807CF480-807CF484 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 807CF484-807CF488 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 807CF488-807CF48C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 807CF48C-807CF490 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 807CF490-807CF494 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 807CF494-807CF498 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 807CF498-807CF49C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 807CF49C-807CF4A0 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 807CF4A0-807CF4A4 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 807CF4A4-807CF4A8 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 807CF4A8-807CF4AC 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 807CF4AC-807CF4B0 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 807CF4B0-807CF4B4 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 807CF4B4-807CF4B8 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 807CF4B4 0001+00 data_807CF4B4 @1009 */
/* 807CF4B5 0003+00 data_807CF4B5 None */
static u8 struct_807CF4B4[4];

/* 807CF4B8-807CF4C4 000048 000C+00 0/1 0/0 0/0 .bss             @3923 */
#pragma push
#pragma force_active on
static u8 lit_3923[12];
#pragma pop

/* 807CF4C4-807CF504 000054 0040+00 17/18 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[64];

/* 807C267C-807C284C 00017C 01D0+00 1/1 0/0 0/0 .text ctrlJoint__8daE_VA_cFP8J3DJointP8J3DModel */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/ctrlJoint__8daE_VA_cFP8J3DJointP8J3DModel.s"
}
#pragma pop

/* 807C284C-807C2898 00034C 004C+00 1/1 0/0 0/0 .text JointCallBack__8daE_VA_cFP8J3DJointi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::JointCallBack(J3DJoint* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/JointCallBack__8daE_VA_cFP8J3DJointi.s"
}
#pragma pop

/* 807C2898-807C2A4C 000398 01B4+00 1/1 0/0 0/0 .text            calcJointNeck__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::calcJointNeck() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/calcJointNeck__8daE_VA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CED08-807CED0C 000060 0004+00 0/1 0/0 0/0 .rodata          @4314 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4314 = 74.0f;
COMPILER_STRIP_GATE(0x807CED08, &lit_4314);
#pragma pop

/* 807CED0C-807CED10 000064 0004+00 0/2 0/0 0/0 .rodata          @4315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4315 = 11.0f;
COMPILER_STRIP_GATE(0x807CED0C, &lit_4315);
#pragma pop

/* 807CED10-807CED14 000068 0004+00 1/4 0/0 0/0 .rodata          @4316 */
SECTION_RODATA static f32 const lit_4316 = 60.0f;
COMPILER_STRIP_GATE(0x807CED10, &lit_4316);

/* 807CED14-807CED18 00006C 0004+00 0/3 0/0 0/0 .rodata          @4317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4317 = 80.0f;
COMPILER_STRIP_GATE(0x807CED14, &lit_4317);
#pragma pop

/* 807CED18-807CED1C 000070 0004+00 1/7 0/0 0/0 .rodata          @4318 */
SECTION_RODATA static f32 const lit_4318 = 50.0f;
COMPILER_STRIP_GATE(0x807CED18, &lit_4318);

/* 807CED1C-807CED20 000074 0004+00 0/7 0/0 0/0 .rodata          @4319 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4319 = 30.0f;
COMPILER_STRIP_GATE(0x807CED1C, &lit_4319);
#pragma pop

/* 807CED20-807CED24 000078 0004+00 0/1 0/0 0/0 .rodata          @4320 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4320 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x807CED20, &lit_4320);
#pragma pop

/* 807CED24-807CED28 00007C 0004+00 0/5 0/0 0/0 .rodata          @4321 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4321 = -10.0f;
COMPILER_STRIP_GATE(0x807CED24, &lit_4321);
#pragma pop

/* 807CED28-807CED2C 000080 0004+00 0/5 0/0 0/0 .rodata          @4322 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4322 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x807CED28, &lit_4322);
#pragma pop

/* 807C2A4C-807C3264 00054C 0818+00 1/1 0/0 0/0 .text            calcJointSleeve__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::calcJointSleeve() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/calcJointSleeve__8daE_VA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CED2C-807CED30 000084 0004+00 0/1 0/0 0/0 .rodata          @4452 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4452 = 255.0f;
COMPILER_STRIP_GATE(0x807CED2C, &lit_4452);
#pragma pop

/* 807CED30-807CED34 000088 0004+00 0/1 0/0 0/0 .rodata          @4453 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4453 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x807CED30, &lit_4453);
#pragma pop

/* 807CED34-807CED38 00008C 0004+00 0/2 0/0 0/0 .rodata          @4454 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4454 = 2000.0f;
COMPILER_STRIP_GATE(0x807CED34, &lit_4454);
#pragma pop

/* 807CED38-807CED40 000090 0008+00 0/1 0/0 0/0 .rodata          @4458 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4458[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807CED38, &lit_4458);
#pragma pop

/* 807C3264-807C37F8 000D64 0594+00 1/1 0/0 0/0 .text            draw__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::draw() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/draw__8daE_VA_cFv.s"
}
#pragma pop

/* 807C37F8-807C3818 0012F8 0020+00 1/0 0/0 0/0 .text            daE_VA_Draw__FP8daE_VA_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_VA_Draw(daE_VA_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/daE_VA_Draw__FP8daE_VA_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CED40-807CED44 000098 0004+00 1/3 0/0 0/0 .rodata          @4473 */
SECTION_RODATA static f32 const lit_4473 = -1.0f;
COMPILER_STRIP_GATE(0x807CED40, &lit_4473);

/* 807CEEFC-807CEEFC 000254 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807CEEFC = "E_VA";
#pragma pop

/* 807C3818-807C38BC 001318 00A4+00 19/19 0/0 0/0 .text            setBck__8daE_VA_cFiUcff */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setBck__8daE_VA_cFiUcff.s"
}
#pragma pop

/* 807C38BC-807C3918 0013BC 005C+00 8/8 0/0 0/0 .text            checkBck__8daE_VA_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::checkBck(int param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/checkBck__8daE_VA_cFi.s"
}
#pragma pop

/* 807C3918-807C39C4 001418 00AC+00 21/21 0/0 0/0 .text            setActionMode__8daE_VA_cFii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setActionMode(int param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setActionMode__8daE_VA_cFii.s"
}
#pragma pop

/* 807C39C4-807C3A1C 0014C4 0058+00 1/1 0/0 0/0 .text            getWolfCutType__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::getWolfCutType() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/getWolfCutType__8daE_VA_cFv.s"
}
#pragma pop

/* 807C3A1C-807C3A50 00151C 0034+00 3/3 0/0 0/0 .text            onSwordAtBit__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::onSwordAtBit() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/onSwordAtBit__8daE_VA_cFv.s"
}
#pragma pop

/* 807C3A50-807C3AB0 001550 0060+00 3/3 0/0 0/0 .text            offSwordShield__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::offSwordShield() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/offSwordShield__8daE_VA_cFv.s"
}
#pragma pop

/* 807C3AB0-807C3B58 0015B0 00A8+00 1/1 0/0 0/0 .text            setTransDamage__8daE_VA_cFP4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setTransDamage(cXyz* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setTransDamage__8daE_VA_cFP4cXyz.s"
}
#pragma pop

/* 807C3B58-807C440C 001658 08B4+00 1/1 0/0 0/0 .text            damage_check__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::damage_check() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/damage_check__8daE_VA_cFv.s"
}
#pragma pop

/* 807C440C-807C44A0 001F0C 0094+00 1/1 0/0 0/0 .text            __as__8dCcD_CylFRC8dCcD_Cyl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void dCcD_Cyl::operator=(dCcD_Cyl const& param_0) {
extern "C" asm void __as__8dCcD_CylFRC8dCcD_Cyl() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__as__8dCcD_CylFRC8dCcD_Cyl.s"
}
#pragma pop

/* 807C44A0-807C46E8 001FA0 0248+00 1/1 0/0 0/0 .text __as__12dCcD_GObjInfFRC12dCcD_GObjInf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void dCcD_GObjInf::operator=(dCcD_GObjInf const& param_0) {
extern "C" asm void __as__12dCcD_GObjInfFRC12dCcD_GObjInf() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__as__12dCcD_GObjInfFRC12dCcD_GObjInf.s"
}
#pragma pop

/* 807C46E8-807C47B4 0021E8 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_CylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Cyl::~dCcD_Cyl() {
extern "C" asm void __dt__8dCcD_CylFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__8dCcD_CylFv.s"
}
#pragma pop

/* 807C47B4-807C47FC 0022B4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 807C47FC-807C4844 0022FC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 807C4844-807C49B4 002344 0170+00 1/1 0/0 0/0 .text            setFireEffect__8daE_VA_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setFireEffect(int param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setFireEffect__8daE_VA_cFi.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CED44-807CED48 00009C 0004+00 0/0 0/0 0/0 .rodata          @5085 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5085 = 16.0f / 5.0f;
COMPILER_STRIP_GATE(0x807CED44, &lit_5085);
#pragma pop

/* 807CED48-807CED4C 0000A0 0004+00 1/12 0/0 0/0 .rodata          @5146 */
SECTION_RODATA static f32 const lit_5146 = 10.0f;
COMPILER_STRIP_GATE(0x807CED48, &lit_5146);

/* 807C49B4-807C4B54 0024B4 01A0+00 1/1 0/0 0/0 .text            setFootEffect__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setFootEffect() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setFootEffect__8daE_VA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CED4C-807CED50 0000A4 0004+00 0/1 0/0 0/0 .rodata          @5224 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5224 = -7.0f;
COMPILER_STRIP_GATE(0x807CED4C, &lit_5224);
#pragma pop

/* 807C4B54-807C4DFC 002654 02A8+00 1/1 0/0 0/0 .text            setWeponEffect__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setWeponEffect() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setWeponEffect__8daE_VA_cFv.s"
}
#pragma pop

/* 807C4DFC-807C4F10 0028FC 0114+00 1/1 0/0 0/0 .text            setBugsEffect__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setBugsEffect() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setBugsEffect__8daE_VA_cFv.s"
}
#pragma pop

/* 807C4F10-807C4FCC 002A10 00BC+00 4/4 0/0 0/0 .text            setWeponLandEffect__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setWeponLandEffect() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setWeponLandEffect__8daE_VA_cFv.s"
}
#pragma pop

/* 807C4FCC-807C50A4 002ACC 00D8+00 1/1 0/0 0/0 .text            setWeponGlow__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setWeponGlow() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setWeponGlow__8daE_VA_cFv.s"
}
#pragma pop

/* 807C50A4-807C5188 002BA4 00E4+00 1/1 0/0 0/0 .text            setWeponFlashScreen__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setWeponFlashScreen() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setWeponFlashScreen__8daE_VA_cFv.s"
}
#pragma pop

/* 807C5188-807C5258 002C88 00D0+00 1/1 0/0 0/0 .text            setMagicEffect__8daE_VA_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setMagicEffect(int param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setMagicEffect__8daE_VA_cFi.s"
}
#pragma pop

/* 807C5258-807C5338 002D58 00E0+00 1/1 0/0 0/0 .text            setMagicHitEffect__8daE_VA_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setMagicHitEffect(int param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setMagicHitEffect__8daE_VA_cFi.s"
}
#pragma pop

/* 807C5338-807C53A8 002E38 0070+00 1/1 0/0 0/0 .text            demo_skip__8daE_VA_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::demo_skip(int param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/demo_skip__8daE_VA_cFi.s"
}
#pragma pop

/* 807C53A8-807C53DC 002EA8 0034+00 1/1 0/0 0/0 .text            DemoSkipCallBack__8daE_VA_cFPvi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::DemoSkipCallBack(void* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/DemoSkipCallBack__8daE_VA_cFPvi.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CED50-807CED54 0000A8 0004+00 1/1 0/0 0/0 .rodata          @5407 */
SECTION_RODATA static f32 const lit_5407 = 115.0f;
COMPILER_STRIP_GATE(0x807CED50, &lit_5407);

/* 807CED54-807CED58 0000AC 0004+00 1/2 0/0 0/0 .rodata          @5408 */
SECTION_RODATA static f32 const lit_5408 = 65.0f;
COMPILER_STRIP_GATE(0x807CED54, &lit_5408);

/* 807C53DC-807C53FC 002EDC 0020+00 2/2 0/0 0/0 .text            getRopeLength__8daE_VA_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::getRopeLength(int param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/getRopeLength__8daE_VA_cFi.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CED58-807CED5C 0000B0 0004+00 0/2 0/0 0/0 .rodata          @5833 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5833 = 150.0f;
COMPILER_STRIP_GATE(0x807CED58, &lit_5833);
#pragma pop

/* 807CED5C-807CED60 0000B4 0004+00 0/2 0/0 0/0 .rodata          @5834 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5834 = -150.0f;
COMPILER_STRIP_GATE(0x807CED5C, &lit_5834);
#pragma pop

/* 807CED60-807CED64 0000B8 0004+00 0/2 0/0 0/0 .rodata          @5835 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5835 = 400.0f;
COMPILER_STRIP_GATE(0x807CED60, &lit_5835);
#pragma pop

/* 807CED64-807CED68 0000BC 0004+00 0/2 0/0 0/0 .rodata          @5836 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5836 = -400.0f;
COMPILER_STRIP_GATE(0x807CED64, &lit_5836);
#pragma pop

/* 807CED68-807CED6C 0000C0 0004+00 0/4 0/0 0/0 .rodata          @5837 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5837 = -5.0f;
COMPILER_STRIP_GATE(0x807CED68, &lit_5837);
#pragma pop

/* 807CED6C-807CED70 0000C4 0004+00 0/4 0/0 0/0 .rodata          @5838 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5838 = 5.0f;
COMPILER_STRIP_GATE(0x807CED6C, &lit_5838);
#pragma pop

/* 807CED70-807CED74 0000C8 0004+00 0/2 0/0 0/0 .rodata          @5839 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5839 = -3.0f;
COMPILER_STRIP_GATE(0x807CED70, &lit_5839);
#pragma pop

/* 807CED74-807CED78 0000CC 0004+00 0/4 0/0 0/0 .rodata          @5840 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5840 = 300.0f;
COMPILER_STRIP_GATE(0x807CED74, &lit_5840);
#pragma pop

/* 807CED78-807CED80 0000D0 0004+04 0/1 0/0 0/0 .rodata          @5841 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5841[1 + 1 /* padding */] = {
    1.0f / 5.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x807CED78, &lit_5841);
#pragma pop

/* 807CED80-807CED88 0000D8 0008+00 3/10 0/0 0/0 .rodata          @5843 */
SECTION_RODATA static u8 const lit_5843[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807CED80, &lit_5843);

/* 807CF504-807CF510 000094 000C+00 0/1 0/0 0/0 .bss             @5409 */
#pragma push
#pragma force_active on
static u8 lit_5409[12];
#pragma pop

/* 807CF510-807CF51C 0000A0 000C+00 0/1 0/0 0/0 .bss             @5410 */
#pragma push
#pragma force_active on
static u8 lit_5410[12];
#pragma pop

/* 807CF51C-807CF528 0000AC 000C+00 0/1 0/0 0/0 .bss             @5411 */
#pragma push
#pragma force_active on
static u8 lit_5411[12];
#pragma pop

/* 807CF528-807CF534 0000B8 000C+00 0/1 0/0 0/0 .bss             @5412 */
#pragma push
#pragma force_active on
static u8 lit_5412[12];
#pragma pop

/* 807CF534-807CF540 0000C4 000C+00 0/1 0/0 0/0 .bss             @5413 */
#pragma push
#pragma force_active on
static u8 lit_5413[12];
#pragma pop

/* 807CF540-807CF54C 0000D0 000C+00 0/1 0/0 0/0 .bss             @5414 */
#pragma push
#pragma force_active on
static u8 lit_5414[12];
#pragma pop

/* 807CF54C-807CF558 0000DC 000C+00 0/1 0/0 0/0 .bss             @5415 */
#pragma push
#pragma force_active on
static u8 lit_5415[12];
#pragma pop

/* 807CF558-807CF564 0000E8 000C+00 0/1 0/0 0/0 .bss             @5416 */
#pragma push
#pragma force_active on
static u8 lit_5416[12];
#pragma pop

/* 807CF564-807CF570 0000F4 000C+00 0/1 0/0 0/0 .bss             @5417 */
#pragma push
#pragma force_active on
static u8 lit_5417[12];
#pragma pop

/* 807CF570-807CF57C 000100 000C+00 0/1 0/0 0/0 .bss             @5418 */
#pragma push
#pragma force_active on
static u8 lit_5418[12];
#pragma pop

/* 807CF57C-807CF5F4 00010C 0078+00 1/2 0/0 0/0 .bss             line_end_pos */
static u8 line_end_pos[120];

/* 807CF5F4-807CF600 000184 000C+00 0/1 0/0 0/0 .bss             @5419 */
#pragma push
#pragma force_active on
static u8 lit_5419[12];
#pragma pop

/* 807CF600-807CF60C 000190 000C+00 0/1 0/0 0/0 .bss             @5420 */
#pragma push
#pragma force_active on
static u8 lit_5420[12];
#pragma pop

/* 807CF60C-807CF618 00019C 000C+00 0/1 0/0 0/0 .bss             @5421 */
#pragma push
#pragma force_active on
static u8 lit_5421[12];
#pragma pop

/* 807CF618-807CF624 0001A8 000C+00 0/1 0/0 0/0 .bss             @5422 */
#pragma push
#pragma force_active on
static u8 lit_5422[12];
#pragma pop

/* 807CF624-807CF630 0001B4 000C+00 0/1 0/0 0/0 .bss             @5423 */
#pragma push
#pragma force_active on
static u8 lit_5423[12];
#pragma pop

/* 807CF630-807CF63C 0001C0 000C+00 0/1 0/0 0/0 .bss             @5424 */
#pragma push
#pragma force_active on
static u8 lit_5424[12];
#pragma pop

/* 807CF63C-807CF648 0001CC 000C+00 0/1 0/0 0/0 .bss             @5425 */
#pragma push
#pragma force_active on
static u8 lit_5425[12];
#pragma pop

/* 807CF648-807CF654 0001D8 000C+00 0/1 0/0 0/0 .bss             @5426 */
#pragma push
#pragma force_active on
static u8 lit_5426[12];
#pragma pop

/* 807CF654-807CF660 0001E4 000C+00 0/1 0/0 0/0 .bss             @5427 */
#pragma push
#pragma force_active on
static u8 lit_5427[12];
#pragma pop

/* 807CF660-807CF66C 0001F0 000C+00 0/1 0/0 0/0 .bss             @5428 */
#pragma push
#pragma force_active on
static u8 lit_5428[12];
#pragma pop

/* 807CF66C-807CF6E4 0001FC 0078+00 1/2 0/0 0/0 .bss             line_start_pos */
static u8 line_start_pos[120];

/* 807C53FC-807C5CF0 002EFC 08F4+00 2/2 0/0 0/0 .text            calcOpRopePos__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::calcOpRopePos() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/calcOpRopePos__8daE_VA_cFv.s"
}
#pragma pop

/* 807C5CF0-807C5DF4 0037F0 0104+00 1/1 0/0 0/0 .text            onRopeCutStatus__8daE_VA_cFiii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::onRopeCutStatus(int param_0, int param_1, int param_2) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/onRopeCutStatus__8daE_VA_cFiii.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CED88-807CED8C 0000E0 0004+00 1/1 0/0 0/0 .rodata          @5877 */
SECTION_RODATA static f32 const lit_5877 = 7168.0f;
COMPILER_STRIP_GATE(0x807CED88, &lit_5877);

/* 807C5DF4-807C5EAC 0038F4 00B8+00 1/1 0/0 0/0 .text            setVibRope__8daE_VA_cFff */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setVibRope(f32 param_0, f32 param_1) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setVibRope__8daE_VA_cFff.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CED8C-807CED90 0000E4 0004+00 1/1 0/0 0/0 .rodata          @5913 */
SECTION_RODATA static f32 const lit_5913 = 39.0f / 10.0f;
COMPILER_STRIP_GATE(0x807CED8C, &lit_5913);

/* 807CED90-807CED94 0000E8 0004+00 1/1 0/0 0/0 .rodata          @5914 */
SECTION_RODATA static f32 const lit_5914 = 4.0f;
COMPILER_STRIP_GATE(0x807CED90, &lit_5914);

/* 807C5EAC-807C6164 0039AC 02B8+00 2/2 0/0 0/0 .text            setVibTag__8daE_VA_cFii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setVibTag(int param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setVibTag__8daE_VA_cFii.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CED94-807CED98 0000EC 0004+00 0/1 0/0 0/0 .rodata          @5960 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5960 = 160.0f;
COMPILER_STRIP_GATE(0x807CED94, &lit_5960);
#pragma pop

/* 807C6164-807C638C 003C64 0228+00 2/2 0/0 0/0 .text            calcTagAngle__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::calcTagAngle() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/calcTagAngle__8daE_VA_cFv.s"
}
#pragma pop

/* 807C638C-807C6564 003E8C 01D8+00 1/1 0/0 0/0 .text            calcRopeFirePos__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::calcRopeFirePos() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/calcRopeFirePos__8daE_VA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CED98-807CED9C 0000F0 0004+00 0/1 0/0 0/0 .rodata          @6069 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6069 = 110.0f;
COMPILER_STRIP_GATE(0x807CED98, &lit_6069);
#pragma pop

/* 807CED9C-807CEDA0 0000F4 0004+00 0/1 0/0 0/0 .rodata          @6070 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6070 = 275.0f;
COMPILER_STRIP_GATE(0x807CED9C, &lit_6070);
#pragma pop

/* 807CEDA0-807CEDA4 0000F8 0004+00 0/1 0/0 0/0 .rodata          @6071 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6071 = 51.0f;
COMPILER_STRIP_GATE(0x807CEDA0, &lit_6071);
#pragma pop

/* 807C6564-807C67A4 004064 0240+00 1/1 0/0 0/0 .text            executeDemoOpWait__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeDemoOpWait() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeDemoOpWait__8daE_VA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CEDA4-807CEDA8 0000FC 0004+00 0/1 0/0 0/0 .rodata          @6345 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6345 = 270.0f;
COMPILER_STRIP_GATE(0x807CEDA4, &lit_6345);
#pragma pop

/* 807CEDA8-807CEDAC 000100 0004+00 0/2 0/0 0/0 .rodata          @6346 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6346 = 600.0f;
COMPILER_STRIP_GATE(0x807CEDA8, &lit_6346);
#pragma pop

/* 807CEDAC-807CEDB0 000104 0004+00 0/1 0/0 0/0 .rodata          @6347 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6347 = 180.0f;
COMPILER_STRIP_GATE(0x807CEDAC, &lit_6347);
#pragma pop

/* 807CEDB0-807CEDB4 000108 0004+00 0/4 0/0 0/0 .rodata          @6348 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6348 = 200.0f;
COMPILER_STRIP_GATE(0x807CEDB0, &lit_6348);
#pragma pop

/* 807CEDB4-807CEDB8 00010C 0004+00 0/1 0/0 0/0 .rodata          @6349 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6349 = 2.5f;
COMPILER_STRIP_GATE(0x807CEDB4, &lit_6349);
#pragma pop

/* 807C67A4-807C7534 0042A4 0D90+00 2/1 0/0 0/0 .text            executeDemoOp__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeDemoOp() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeDemoOp__8daE_VA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CEDB8-807CEDBC 000110 0004+00 0/0 0/0 0/0 .rodata          @6350 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6350 = 90.0f;
COMPILER_STRIP_GATE(0x807CEDB8, &lit_6350);
#pragma pop

/* 807CEDBC-807CEDC0 000114 0004+00 0/0 0/0 0/0 .rodata          @6351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6351 = -100.0f;
COMPILER_STRIP_GATE(0x807CEDBC, &lit_6351);
#pragma pop

/* 807CEDC0-807CEDC4 000118 0004+00 0/0 0/0 0/0 .rodata          @6352 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6352 = 48.0f;
COMPILER_STRIP_GATE(0x807CEDC0, &lit_6352);
#pragma pop

/* 807CEDC4-807CEDC8 00011C 0004+00 0/0 0/0 0/0 .rodata          @6353 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6353 = 13.0f / 10.0f;
COMPILER_STRIP_GATE(0x807CEDC4, &lit_6353);
#pragma pop

/* 807CEDC8-807CEDCC 000120 0004+00 0/0 0/0 0/0 .rodata          @6354 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6354 = 459.0f;
COMPILER_STRIP_GATE(0x807CEDC8, &lit_6354);
#pragma pop

/* 807CEDCC-807CEDD0 000124 0004+00 0/0 0/0 0/0 .rodata          @6355 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6355 = 394.0f;
COMPILER_STRIP_GATE(0x807CEDCC, &lit_6355);
#pragma pop

/* 807CEDD0-807CEDD4 000128 0004+00 0/0 0/0 0/0 .rodata          @6356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6356 = 920.0f;
COMPILER_STRIP_GATE(0x807CEDD0, &lit_6356);
#pragma pop

/* 807CEDD4-807CEDD8 00012C 0004+00 0/0 0/0 0/0 .rodata          @6357 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6357 = 259.0f;
COMPILER_STRIP_GATE(0x807CEDD4, &lit_6357);
#pragma pop

/* 807CEDD8-807CEDDC 000130 0004+00 0/0 0/0 0/0 .rodata          @6358 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6358 = 519.0f;
COMPILER_STRIP_GATE(0x807CEDD8, &lit_6358);
#pragma pop

/* 807CEDDC-807CEDE0 000134 0004+00 0/0 0/0 0/0 .rodata          @6359 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6359 = 380.0f;
COMPILER_STRIP_GATE(0x807CEDDC, &lit_6359);
#pragma pop

/* 807CEDE0-807CEDE4 000138 0004+00 0/2 0/0 0/0 .rodata          @6360 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6360 = 2.0f;
COMPILER_STRIP_GATE(0x807CEDE0, &lit_6360);
#pragma pop

/* 807CEDE4-807CEDE8 00013C 0004+00 0/0 0/0 0/0 .rodata          @6361 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6361 = 28.0f;
COMPILER_STRIP_GATE(0x807CEDE4, &lit_6361);
#pragma pop

/* 807CEDE8-807CEDEC 000140 0004+00 0/1 0/0 0/0 .rodata          @6362 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6362 = 950.0f;
COMPILER_STRIP_GATE(0x807CEDE8, &lit_6362);
#pragma pop

/* 807CEDEC-807CEDF0 000144 0004+00 0/0 0/0 0/0 .rodata          @6363 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6363 = 550.0f;
COMPILER_STRIP_GATE(0x807CEDEC, &lit_6363);
#pragma pop

/* 807CEDF0-807CEDF4 000148 0004+00 0/2 0/0 0/0 .rodata          @6364 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6364 = 15.0f;
COMPILER_STRIP_GATE(0x807CEDF0, &lit_6364);
#pragma pop

/* 807CEDF4-807CEDF8 00014C 0004+00 0/1 0/0 0/0 .rodata          @6365 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6365 = 26.0f;
COMPILER_STRIP_GATE(0x807CEDF4, &lit_6365);
#pragma pop

/* 807CEDF8-807CEDFC 000150 0004+00 0/0 0/0 0/0 .rodata          @6366 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6366 = 187.0f;
COMPILER_STRIP_GATE(0x807CEDF8, &lit_6366);
#pragma pop

/* 807CEDFC-807CEE00 000154 0004+00 0/0 0/0 0/0 .rodata          @6367 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6367 = 236.0f;
COMPILER_STRIP_GATE(0x807CEDFC, &lit_6367);
#pragma pop

/* 807CEE00-807CEE04 000158 0004+00 0/0 0/0 0/0 .rodata          @6368 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6368 = 21.0f / 5.0f;
COMPILER_STRIP_GATE(0x807CEE00, &lit_6368);
#pragma pop

/* 807CEE04-807CEE08 00015C 0004+00 0/0 0/0 0/0 .rodata          @6369 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6369 = 192.0f;
COMPILER_STRIP_GATE(0x807CEE04, &lit_6369);
#pragma pop

/* 807CEE08-807CEE0C 000160 0004+00 0/0 0/0 0/0 .rodata          @6370 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6370 = 67.0f;
COMPILER_STRIP_GATE(0x807CEE08, &lit_6370);
#pragma pop

/* 807CEE0C-807CEE10 000164 0004+00 0/8 0/0 0/0 .rodata          @6394 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6394 = 20.0f;
COMPILER_STRIP_GATE(0x807CEE0C, &lit_6394);
#pragma pop

/* 807C7534-807C7640 005034 010C+00 1/1 0/0 0/0 .text            executeClearWait__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeClearWait() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeClearWait__8daE_VA_cFv.s"
}
#pragma pop

/* 807C7640-807C783C 005140 01FC+00 1/1 0/0 0/0 .text            executeClearChase__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeClearChase() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeClearChase__8daE_VA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CEE10-807CEE14 000168 0004+00 0/1 0/0 0/0 .rodata          @6485 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6485 = 32.0f;
COMPILER_STRIP_GATE(0x807CEE10, &lit_6485);
#pragma pop

/* 807CEE14-807CEE18 00016C 0004+00 0/1 0/0 0/0 .rodata          @6486 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6486 = 36.0f;
COMPILER_STRIP_GATE(0x807CEE14, &lit_6486);
#pragma pop

/* 807CEE18-807CEE1C 000170 0004+00 0/1 0/0 0/0 .rodata          @6487 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6487 = 43.0f;
COMPILER_STRIP_GATE(0x807CEE18, &lit_6487);
#pragma pop

/* 807CEE1C-807CEE20 000174 0004+00 0/1 0/0 0/0 .rodata          @6488 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6488 = 85.0f;
COMPILER_STRIP_GATE(0x807CEE1C, &lit_6488);
#pragma pop

/* 807C783C-807C7A8C 00533C 0250+00 1/1 0/0 0/0 .text            executeClearAttack__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeClearAttack() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeClearAttack__8daE_VA_cFv.s"
}
#pragma pop

/* 807C7A8C-807C7C74 00558C 01E8+00 1/1 0/0 0/0 .text            executeTransWait__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeTransWait() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeTransWait__8daE_VA_cFv.s"
}
#pragma pop

/* 807C7C74-807C7ED4 005774 0260+00 1/1 0/0 0/0 .text            executeTransChase__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeTransChase() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeTransChase__8daE_VA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CEE20-807CEE24 000178 0004+00 0/3 0/0 0/0 .rodata          @6686 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6686 = 22.0f;
COMPILER_STRIP_GATE(0x807CEE20, &lit_6686);
#pragma pop

/* 807CEE24-807CEE28 00017C 0004+00 0/2 0/0 0/0 .rodata          @6687 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6687 = 33.0f;
COMPILER_STRIP_GATE(0x807CEE24, &lit_6687);
#pragma pop

/* 807CEE28-807CEE2C 000180 0004+00 0/2 0/0 0/0 .rodata          @6688 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6688 = 53.0f;
COMPILER_STRIP_GATE(0x807CEE28, &lit_6688);
#pragma pop

/* 807C7ED4-807C839C 0059D4 04C8+00 1/1 0/0 0/0 .text            executeTransAttack__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeTransAttack() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeTransAttack__8daE_VA_cFv.s"
}
#pragma pop

/* 807C839C-807C8860 005E9C 04C4+00 1/1 0/0 0/0 .text            executeTransBiteDamage__8daE_VA_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeTransBiteDamage() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeTransBiteDamage__8daE_VA_cFv.s"
}
#pragma pop

/* 807C8860-807C8A84 006360 0224+00 1/1 0/0 0/0 .text            executeTransDamage__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeTransDamage() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeTransDamage__8daE_VA_cFv.s"
}
#pragma pop

/* 807C8A84-807C8B78 006584 00F4+00 1/1 0/0 0/0 .text            executeTransThrough__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeTransThrough() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeTransThrough__8daE_VA_cFv.s"
}
#pragma pop

/* 807C8B78-807C915C 006678 05E4+00 2/1 0/0 0/0 .text            executeOpaciWait__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeOpaciWait() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeOpaciWait__8daE_VA_cFv.s"
}
#pragma pop

/* 807C915C-807C9A40 006C5C 08E4+00 2/1 0/0 0/0 .text            executeOpaciFly__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeOpaciFly() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeOpaciFly__8daE_VA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CEE2C-807CEE30 000184 0004+00 0/0 0/0 0/0 .rodata          @6999 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6999 = 291.0f;
COMPILER_STRIP_GATE(0x807CEE2C, &lit_6999);
#pragma pop

/* 807CEE30-807CEE34 000188 0004+00 0/0 0/0 0/0 .rodata          @7000 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7000 = 201.0f;
COMPILER_STRIP_GATE(0x807CEE30, &lit_7000);
#pragma pop

/* 807CEE34-807CEE38 00018C 0004+00 0/0 0/0 0/0 .rodata          @7001 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7001 = 700.0f;
COMPILER_STRIP_GATE(0x807CEE34, &lit_7001);
#pragma pop

/* 807CEE38-807CEE3C 000190 0004+00 0/2 0/0 0/0 .rodata          @7002 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7002 = 70.0f;
COMPILER_STRIP_GATE(0x807CEE38, &lit_7002);
#pragma pop

/* 807CEE3C-807CEE40 000194 0004+00 0/0 0/0 0/0 .rodata          @7003 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7003 = 6.0f;
COMPILER_STRIP_GATE(0x807CEE3C, &lit_7003);
#pragma pop

/* 807CEE40-807CEE44 000198 0004+00 0/1 0/0 0/0 .rodata          @7004 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7004 = 120.0f;
COMPILER_STRIP_GATE(0x807CEE40, &lit_7004);
#pragma pop

/* 807CEE44-807CEE48 00019C 0004+00 0/0 0/0 0/0 .rodata          @7240 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7240 = 42.0f;
COMPILER_STRIP_GATE(0x807CEE44, &lit_7240);
#pragma pop

/* 807CEE48-807CEE4C 0001A0 0004+00 0/0 0/0 0/0 .rodata          @7241 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7241 = 62.0f;
COMPILER_STRIP_GATE(0x807CEE48, &lit_7241);
#pragma pop

/* 807CEE4C-807CEE50 0001A4 0004+00 0/0 0/0 0/0 .rodata          @7242 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7242 = 47.0f;
COMPILER_STRIP_GATE(0x807CEE4C, &lit_7242);
#pragma pop

/* 807CEE50-807CEE54 0001A8 0004+00 0/3 0/0 0/0 .rodata          @7291 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7291 = -30.0f;
COMPILER_STRIP_GATE(0x807CEE50, &lit_7291);
#pragma pop

/* 807C9A40-807C9C8C 007540 024C+00 1/1 0/0 0/0 .text            executeOpaciDamage__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeOpaciDamage() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeOpaciDamage__8daE_VA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CEE54-807CEE58 0001AC 0004+00 0/1 0/0 0/0 .rodata          @7421 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7421 = 16384.0f;
COMPILER_STRIP_GATE(0x807CEE54, &lit_7421);
#pragma pop

/* 807CEE58-807CEE5C 0001B0 0004+00 0/3 0/0 0/0 .rodata          @7422 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7422 = 25.0f;
COMPILER_STRIP_GATE(0x807CEE58, &lit_7422);
#pragma pop

/* 807CEE5C-807CEE60 0001B4 0004+00 0/1 0/0 0/0 .rodata          @7423 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7423 = -40.0f;
COMPILER_STRIP_GATE(0x807CEE5C, &lit_7423);
#pragma pop

/* 807C9C8C-807CA364 00778C 06D8+00 1/1 0/0 0/0 .text            executeOpaciChase__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeOpaciChase() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeOpaciChase__8daE_VA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CEE60-807CEE64 0001B8 0004+00 0/0 0/0 0/0 .rodata          @7424 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7424 = 1200.0f;
COMPILER_STRIP_GATE(0x807CEE60, &lit_7424);
#pragma pop

/* 807CEE64-807CEE68 0001BC 0004+00 0/1 0/0 0/0 .rodata          @7509 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7509 = 27.0f;
COMPILER_STRIP_GATE(0x807CEE64, &lit_7509);
#pragma pop

/* 807CEE68-807CEE6C 0001C0 0004+00 0/1 0/0 0/0 .rodata          @7510 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7510 = 16.0f;
COMPILER_STRIP_GATE(0x807CEE68, &lit_7510);
#pragma pop

/* 807CEE6C-807CEE70 0001C4 0004+00 0/1 0/0 0/0 .rodata          @7511 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7511 = 12.0f;
COMPILER_STRIP_GATE(0x807CEE6C, &lit_7511);
#pragma pop

/* 807CA364-807CA73C 007E64 03D8+00 1/1 0/0 0/0 .text            executeOpaciAttack__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeOpaciAttack() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeOpaciAttack__8daE_VA_cFv.s"
}
#pragma pop

/* 807CA73C-807CAA80 00823C 0344+00 1/1 0/0 0/0 .text            executeOpaciDown__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeOpaciDown() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeOpaciDown__8daE_VA_cFv.s"
}
#pragma pop

/* 807CAA80-807CACE0 008580 0260+00 1/1 0/0 0/0 .text            executeOpaciDownDamage__8daE_VA_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeOpaciDownDamage() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeOpaciDownDamage__8daE_VA_cFv.s"
}
#pragma pop

/* 807CACE0-807CADB8 0087E0 00D8+00 1/1 0/0 0/0 .text            executeOpaciFlip__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeOpaciFlip() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeOpaciFlip__8daE_VA_cFv.s"
}
#pragma pop

/* 807CADB8-807CB1C4 0088B8 040C+00 2/1 0/0 0/0 .text            executeOpaciFadeAway__8daE_VA_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeOpaciFadeAway() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeOpaciFadeAway__8daE_VA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CEE70-807CEE74 0001C8 0004+00 0/2 0/0 0/0 .rodata          @7919 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7919 = 350.0f;
COMPILER_STRIP_GATE(0x807CEE70, &lit_7919);
#pragma pop

/* 807CEE74-807CEE78 0001CC 0004+00 0/1 0/0 0/0 .rodata          @7920 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7920 = -54.0f;
COMPILER_STRIP_GATE(0x807CEE74, &lit_7920);
#pragma pop

/* 807CEE78-807CEE7C 0001D0 0004+00 0/1 0/0 0/0 .rodata          @7921 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7921 = 168.0f;
COMPILER_STRIP_GATE(0x807CEE78, &lit_7921);
#pragma pop

/* 807CEE7C-807CEE80 0001D4 0004+00 0/1 0/0 0/0 .rodata          @7922 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7922 = 207.0f;
COMPILER_STRIP_GATE(0x807CEE7C, &lit_7922);
#pragma pop

/* 807CB1C4-807CB8CC 008CC4 0708+00 2/1 0/0 0/0 .text            executeOpaciDeath__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeOpaciDeath() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeOpaciDeath__8daE_VA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CEE80-807CEE84 0001D8 0004+00 0/0 0/0 0/0 .rodata          @7923 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7923 = 155.0f;
COMPILER_STRIP_GATE(0x807CEE80, &lit_7923);
#pragma pop

/* 807CEE84-807CEE88 0001DC 0004+00 0/1 0/0 0/0 .rodata          @8008 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8008 = 320.0f;
COMPILER_STRIP_GATE(0x807CEE84, &lit_8008);
#pragma pop

/* 807CB8CC-807CBC00 0093CC 0334+00 1/1 0/0 0/0 .text            calcMagicMove__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::calcMagicMove() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/calcMagicMove__8daE_VA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CEE88-807CEE8C 0001E0 0004+00 0/1 0/0 0/0 .rodata          @8089 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8089 = 128.0f;
COMPILER_STRIP_GATE(0x807CEE88, &lit_8089);
#pragma pop

/* 807CBC00-807CC004 009700 0404+00 1/1 0/0 0/0 .text            setAlphaType__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setAlphaType() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setAlphaType__8daE_VA_cFv.s"
}
#pragma pop

/* 807CC004-807CC4D0 009B04 04CC+00 2/1 0/0 0/0 .text            action__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::action() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/action__8daE_VA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CEE8C-807CEE90 0001E4 0004+00 0/1 0/0 0/0 .rodata          @8318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8318 = -300.0f;
COMPILER_STRIP_GATE(0x807CEE8C, &lit_8318);
#pragma pop

/* 807CC4D0-807CC864 009FD0 0394+00 1/1 0/0 0/0 .text            mtx_set__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::mtx_set() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/mtx_set__8daE_VA_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CEE90-807CEE94 0001E8 0004+00 0/1 0/0 0/0 .rodata          @8471 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8471 = -20.0f;
COMPILER_STRIP_GATE(0x807CEE90, &lit_8471);
#pragma pop

/* 807CEE94-807CEE98 0001EC 0004+00 0/1 0/0 0/0 .rodata          @8472 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8472 = 75.0f;
COMPILER_STRIP_GATE(0x807CEE94, &lit_8472);
#pragma pop

/* 807CEE98-807CEE9C 0001F0 0004+00 0/1 0/0 0/0 .rodata          @8473 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8473 = -25.0f;
COMPILER_STRIP_GATE(0x807CEE98, &lit_8473);
#pragma pop

/* 807CC864-807CCD24 00A364 04C0+00 1/1 0/0 0/0 .text            cc_set__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::cc_set() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/cc_set__8daE_VA_cFv.s"
}
#pragma pop

/* 807CCD24-807CCF3C 00A824 0218+00 1/1 0/0 0/0 .text            execute__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::execute() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/execute__8daE_VA_cFv.s"
}
#pragma pop

/* 807CCF3C-807CCF5C 00AA3C 0020+00 2/1 0/0 0/0 .text            daE_VA_Execute__FP8daE_VA_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_VA_Execute(daE_VA_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/daE_VA_Execute__FP8daE_VA_c.s"
}
#pragma pop

/* 807CCF5C-807CCF64 00AA5C 0008+00 1/0 0/0 0/0 .text            daE_VA_IsDelete__FP8daE_VA_c */
static bool daE_VA_IsDelete(daE_VA_c* param_0) {
    return true;
}

/* 807CCF64-807CD028 00AA64 00C4+00 1/1 0/0 0/0 .text            _delete__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::_delete() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/_delete__8daE_VA_cFv.s"
}
#pragma pop

/* 807CD028-807CD048 00AB28 0020+00 1/0 0/0 0/0 .text            daE_VA_Delete__FP8daE_VA_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_VA_Delete(daE_VA_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/daE_VA_Delete__FP8daE_VA_c.s"
}
#pragma pop

/* 807CD048-807CD600 00AB48 05B8+00 1/1 0/0 0/0 .text            CreateHeap__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/CreateHeap__8daE_VA_cFv.s"
}
#pragma pop

/* 807CD600-807CD648 00B100 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 807CD648-807CD668 00B148 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void useHeapInit(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/useHeapInit__FP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CEE9C-807CEEA0 0001F4 0004+00 0/1 0/0 0/0 .rodata          @8890 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8890 = -500.0f;
COMPILER_STRIP_GATE(0x807CEE9C, &lit_8890);
#pragma pop

/* 807CEEA0-807CEEA4 0001F8 0004+00 0/1 0/0 0/0 .rodata          @8891 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8891 = 1850.0f;
COMPILER_STRIP_GATE(0x807CEEA0, &lit_8891);
#pragma pop

/* 807CEEFC-807CEEFC 000254 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807CEF01 = "E_va";
#pragma pop

/* 807CD668-807CDAD8 00B168 0470+00 1/1 0/0 0/0 .text            create__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::create() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/create__8daE_VA_cFv.s"
}
#pragma pop

/* 807CDAD8-807CDE90 00B5D8 03B8+00 1/1 0/0 0/0 .text            __ct__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daE_VA_c::daE_VA_c() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__ct__8daE_VA_cFv.s"
}
#pragma pop

/* 807CDE90-807CDF14 00B990 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Sph::dCcD_Sph() {
extern "C" asm void __ct__8dCcD_SphFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__ct__8dCcD_SphFv.s"
}
#pragma pop

/* 807CDF14-807CDF98 00BA14 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Cyl::dCcD_Cyl() {
extern "C" asm void __ct__8dCcD_CylFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__ct__8dCcD_CylFv.s"
}
#pragma pop

/* 807CDF98-807CE064 00BA98 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Sph::~dCcD_Sph() {
extern "C" asm void __dt__8dCcD_SphFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__8dCcD_SphFv.s"
}
#pragma pop

/* 807CE064-807CE0AC 00BB64 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 807CE0AC-807CE108 00BBAC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 807CE108-807CE15C 00BC08 0054+00 1/1 0/0 0/0 .text            __ct__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::dBgS_ObjAcch() {
extern "C" asm void __ct__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__ct__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 807CE15C-807CE1CC 00BC5C 0070+00 4/3 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 807CE1CC-807CE23C 00BCCC 0070+00 2/1 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 807CE23C-807CE240 00BD3C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" asm void __ct__4cXyzFv() {
    /* empty function */
}

/* 807CE240-807CE244 00BD40 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" asm void __ct__5csXyzFv() {
    /* empty function */
}

/* 807CE244-807CE264 00BD44 0020+00 1/0 0/0 0/0 .text            daE_VA_Create__FP8daE_VA_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_VA_Create(daE_VA_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/daE_VA_Create__FP8daE_VA_c.s"
}
#pragma pop

/* 807CE264-807CE2AC 00BD64 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 807CE2AC-807CE2F4 00BDAC 0048+00 2/1 0/0 0/0 .text            __dt__12daE_VA_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daE_VA_HIO_c::~daE_VA_HIO_c() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__12daE_VA_HIO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CEEA4-807CEEA8 0001FC 0004+00 0/1 0/0 0/0 .rodata          @9204 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9204 = 990.0f;
COMPILER_STRIP_GATE(0x807CEEA4, &lit_9204);
#pragma pop

/* 807CEEA8-807CEEAC 000200 0004+00 0/1 0/0 0/0 .rodata          @9205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9205 = 971.0f;
COMPILER_STRIP_GATE(0x807CEEA8, &lit_9205);
#pragma pop

/* 807CEEAC-807CEEB0 000204 0004+00 0/1 0/0 0/0 .rodata          @9206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9206 = 326.0f;
COMPILER_STRIP_GATE(0x807CEEAC, &lit_9206);
#pragma pop

/* 807CEEB0-807CEEB4 000208 0004+00 0/1 0/0 0/0 .rodata          @9207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9207 = 582.0f;
COMPILER_STRIP_GATE(0x807CEEB0, &lit_9207);
#pragma pop

/* 807CEEB4-807CEEB8 00020C 0004+00 0/1 0/0 0/0 .rodata          @9208 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9208 = -801.0f;
COMPILER_STRIP_GATE(0x807CEEB4, &lit_9208);
#pragma pop

/* 807CEEB8-807CEEBC 000210 0004+00 0/1 0/0 0/0 .rodata          @9209 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9209 = -582.0f;
COMPILER_STRIP_GATE(0x807CEEB8, &lit_9209);
#pragma pop

/* 807CEEBC-807CEEC0 000214 0004+00 0/1 0/0 0/0 .rodata          @9210 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9210 = -942.0f;
COMPILER_STRIP_GATE(0x807CEEBC, &lit_9210);
#pragma pop

/* 807CEEC0-807CEEC4 000218 0004+00 0/1 0/0 0/0 .rodata          @9211 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9211 = 306.0f;
COMPILER_STRIP_GATE(0x807CEEC0, &lit_9211);
#pragma pop

/* 807CEEC4-807CEEC8 00021C 0004+00 0/1 0/0 0/0 .rodata          @9212 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9212 = 202.0f;
COMPILER_STRIP_GATE(0x807CEEC4, &lit_9212);
#pragma pop

/* 807CEEC8-807CEECC 000220 0004+00 0/1 0/0 0/0 .rodata          @9213 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9213 = 501.0f;
COMPILER_STRIP_GATE(0x807CEEC8, &lit_9213);
#pragma pop

/* 807CEECC-807CEED0 000224 0004+00 0/1 0/0 0/0 .rodata          @9214 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9214 = 559.0f;
COMPILER_STRIP_GATE(0x807CEECC, &lit_9214);
#pragma pop

/* 807CEED0-807CEED4 000228 0004+00 0/1 0/0 0/0 .rodata          @9215 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9215 = -17.0f;
COMPILER_STRIP_GATE(0x807CEED0, &lit_9215);
#pragma pop

/* 807CEED4-807CEED8 00022C 0004+00 0/1 0/0 0/0 .rodata          @9216 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9216 = 458.0f;
COMPILER_STRIP_GATE(0x807CEED4, &lit_9216);
#pragma pop

/* 807CEED8-807CEEDC 000230 0004+00 0/1 0/0 0/0 .rodata          @9217 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9217 = -306.0f;
COMPILER_STRIP_GATE(0x807CEED8, &lit_9217);
#pragma pop

/* 807CEEDC-807CEEE0 000234 0004+00 0/1 0/0 0/0 .rodata          @9218 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9218 = -131.0f;
COMPILER_STRIP_GATE(0x807CEEDC, &lit_9218);
#pragma pop

/* 807CEEE0-807CEEE4 000238 0004+00 0/1 0/0 0/0 .rodata          @9219 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9219 = -524.0f;
COMPILER_STRIP_GATE(0x807CEEE0, &lit_9219);
#pragma pop

/* 807CEEE4-807CEEE8 00023C 0004+00 0/1 0/0 0/0 .rodata          @9220 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9220 = -414.0f;
COMPILER_STRIP_GATE(0x807CEEE4, &lit_9220);
#pragma pop

/* 807CEEE8-807CEEEC 000240 0004+00 0/1 0/0 0/0 .rodata          @9221 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9221 = 347.0f;
COMPILER_STRIP_GATE(0x807CEEE8, &lit_9221);
#pragma pop

/* 807CEEEC-807CEEF0 000244 0004+00 0/1 0/0 0/0 .rodata          @9222 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9222 = -15.0f;
COMPILER_STRIP_GATE(0x807CEEEC, &lit_9222);
#pragma pop

/* 807CEEF0-807CEEF4 000248 0004+00 0/1 0/0 0/0 .rodata          @9223 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9223 = 8.0f;
COMPILER_STRIP_GATE(0x807CEEF0, &lit_9223);
#pragma pop

/* 807CEEF4-807CEEF8 00024C 0004+00 0/1 0/0 0/0 .rodata          @9224 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9224 = -8.0f;
COMPILER_STRIP_GATE(0x807CEEF4, &lit_9224);
#pragma pop

/* 807CEEF8-807CEEFC 000250 0004+00 0/1 0/0 0/0 .rodata          @9225 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9225 = 23.0f;
COMPILER_STRIP_GATE(0x807CEEF8, &lit_9225);
#pragma pop

/* 807CE2F4-807CE7E0 00BDF4 04EC+00 0/0 1/0 0/0 .text            __sinit_d_a_e_vt_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_e_vt_cpp() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__sinit_d_a_e_vt_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x807CE2F4, __sinit_d_a_e_vt_cpp);
#pragma pop

/* 807CE7E0-807CE7E8 00C2E0 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_807CE7E0() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/func_807CE7E0.s"
}
#pragma pop

/* 807CE7E8-807CE7F0 00C2E8 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_807CE7E8() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/func_807CE7E8.s"
}
#pragma pop

/* 807CE7F0-807CEC04 00C2F0 0414+00 1/1 0/0 0/0 .text
 * setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz* param_2,
                                   cXyz* param_3) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz.s"
}
#pragma pop

/* 807CEC04-807CEC40 00C704 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm csXyz::~csXyz() {
extern "C" asm void __dt__5csXyzFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__5csXyzFv.s"
}
#pragma pop

/* 807CEC40-807CEC7C 00C740 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__4cXyzFv.s"
}
#pragma pop

/* 807CEC7C-807CEC94 00C77C 0018+00 1/1 0/0 0/0 .text            checkNowWolf__9daPy_py_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daPy_py_c::checkNowWolf() {
extern "C" asm void checkNowWolf__9daPy_py_cFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/checkNowWolf__9daPy_py_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CF6E4-807CF6E8 000274 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_807CF6E4[4];
#pragma pop

/* 807CF6E8-807CF6EC 000278 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_807CF6E8[4];
#pragma pop

/* 807CF6EC-807CF6F0 00027C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_807CF6EC[4];
#pragma pop

/* 807CF6F0-807CF6F4 000280 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_807CF6F0[4];
#pragma pop

/* 807CF6F4-807CF6F8 000284 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807CF6F4[4];
#pragma pop

/* 807CF6F8-807CF6FC 000288 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807CF6F8[4];
#pragma pop

/* 807CF6FC-807CF700 00028C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_807CF6FC[4];
#pragma pop

/* 807CF700-807CF704 000290 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_807CF700[4];
#pragma pop

/* 807CF704-807CF708 000294 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_807CF704[4];
#pragma pop

/* 807CF708-807CF70C 000298 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_807CF708[4];
#pragma pop

/* 807CF70C-807CF710 00029C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_807CF70C[4];
#pragma pop

/* 807CF710-807CF714 0002A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_807CF710[4];
#pragma pop

/* 807CF714-807CF718 0002A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_807CF714[4];
#pragma pop

/* 807CF718-807CF71C 0002A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807CF718[4];
#pragma pop

/* 807CF71C-807CF720 0002AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_807CF71C[4];
#pragma pop

/* 807CF720-807CF724 0002B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_807CF720[4];
#pragma pop

/* 807CF724-807CF728 0002B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_807CF724[4];
#pragma pop

/* 807CF728-807CF72C 0002B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_807CF728[4];
#pragma pop

/* 807CF72C-807CF730 0002BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_807CF72C[4];
#pragma pop

/* 807CF730-807CF734 0002C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_807CF730[4];
#pragma pop

/* 807CF734-807CF738 0002C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_807CF734[4];
#pragma pop

/* 807CF738-807CF73C 0002C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807CF738[4];
#pragma pop

/* 807CF73C-807CF740 0002CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807CF73C[4];
#pragma pop

/* 807CF740-807CF744 0002D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807CF740[4];
#pragma pop

/* 807CF744-807CF748 0002D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_807CF744[4];
#pragma pop

/* 807CEEFC-807CEEFC 000254 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
