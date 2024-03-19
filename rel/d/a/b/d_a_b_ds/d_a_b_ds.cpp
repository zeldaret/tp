/**
 * d_a_b_ds.cpp
 * Boss - Stallord
 */

#include "rel/d/a/b/d_a_b_ds/d_a_b_ds.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "SSystem/SComponent/c_math.h"
#include "c/c_damagereaction.h"
#include "f_op/f_op_actor_mng.h"
#include "f_op/f_op_msg.h"
#include "f_op/f_op_msg_mng.h"
#include "d/cc/d_cc_uty.h"
#include "d/com/d_com_inf_game.h"
#include "d/a/d_a_player.h"
#include "d/s/d_s_play.h"
#include "rel/d/a/d_a_spinner/d_a_spinner.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__12daB_DS_HIO_cFv();
extern "C" void ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel();
extern "C" void JointCallBack__8daB_DS_cFP8J3DJointi();
extern "C" void draw__8daB_DS_cFv();
extern "C" static void daB_DS_Draw__FP8daB_DS_c();
extern "C" void setBck__8daB_DS_cFiUcff();
extern "C" void setActionMode__8daB_DS_cFii();
extern "C" void mSmokeSet__8daB_DS_cFv();
extern "C" void mHeadAngle_Clear__8daB_DS_cFv();
extern "C" void HandHitSoundSet__8daB_DS_cFb();
extern "C" void handSPosSet__8daB_DS_cFi();
extern "C" void hand_smokeSet__8daB_DS_cFUc();
extern "C" void mZsMoveChk__8daB_DS_cFv();
extern "C" void mZsMoveChk_Guard__8daB_DS_cFv();
extern "C" void mTrapScale__8daB_DS_cFv();
extern "C" void mClearTrap__8daB_DS_cFb();
extern "C" void mCreateTrap__8daB_DS_cFb();
extern "C" void mChangeVer2__8daB_DS_cFv();
extern "C" void damage_check__8daB_DS_cFv();
extern "C" void neck_set__8daB_DS_cFv();
extern "C" void mCutTypeCheck__8daB_DS_cFv();
extern "C" void startDemoCheck__8daB_DS_cFv();
extern "C" void setYoMessage__8daB_DS_cFi();
extern "C" void doYoMessage__8daB_DS_cFv();
extern "C" void executeOpeningDemo__8daB_DS_cFv();
extern "C" void setGlobalSRTMatrix__14JPABaseEmitterFPA4_Cf();
extern "C" static void dComIfGp_particle_set__FUlUsPC4cXyzPC5csXyzPC4cXyz();
extern "C" void abs__4cXyzCFv();
extern "C" void isStop__13mDoExt_morf_cFv();
extern "C" static void dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz();
extern "C" void mHandBreathChk__8daB_DS_cFv();
extern "C" void executeWait__8daB_DS_cFv();
extern "C" void executeCircle__8daB_DS_cFv();
extern "C" void mBreakBoneSUB__8daB_DS_cFv();
extern "C" void damageSet__8daB_DS_cFv();
extern "C" void damageHitCamera__8daB_DS_cFv();
extern "C" void damageDownCheck__8daB_DS_cFv();
extern "C" void executeDamage__8daB_DS_cFv();
extern "C" void executeEtcDamage__8daB_DS_cFv();
extern "C" void breath_smokeSet__8daB_DS_cFv();
extern "C" void executeBreathAttack__8daB_DS_cFv();
extern "C" void executeHandAttack__8daB_DS_cFv();
extern "C" void executeBreathSearch__8daB_DS_cFv();
extern "C" void executeBattle2OpeningDemo__8daB_DS_cFv();
extern "C" void mFlyBMove__8daB_DS_cFf();
extern "C" void mFuwafuwaSet__8daB_DS_cFb();
extern "C" void mBattle2BreathFireSet__8daB_DS_cFUl();
extern "C" void mNeckAngleSet__8daB_DS_cFv();
extern "C" void mSetFirstPos__8daB_DS_cFv();
extern "C" void mChkScreenIn__8daB_DS_cFv();
extern "C" void mRailInOutCheck__8daB_DS_cFv();
extern "C" void executeBattle2Wait__8daB_DS_cFv();
extern "C" void mBattle2MoveFSet__8daB_DS_cFv();
extern "C" void executeBattle2FMove__8daB_DS_cFv();
extern "C" void executeBattle2Tired__8daB_DS_cFv();
extern "C" void executeBattle2Damage__8daB_DS_cFv();
extern "C" void mDeadMove__8daB_DS_cFv();
extern "C" void executeBattle2Dead__8daB_DS_cFv();
extern "C" void executeBullet__8daB_DS_cFv();
extern "C" void mBulletAction__8daB_DS_cFv();
extern "C" void mSoundSE_Set__8daB_DS_cFv();
extern "C" void action__8daB_DS_cFv();
extern "C" void mtx_set__8daB_DS_cFv();
extern "C" void cc_set__8daB_DS_cFv();
extern "C" void cc_etc_set__8daB_DS_cFv();
extern "C" void mBattle2Action__8daB_DS_cFv();
extern "C" void mBattle2_spinner_damage_check__8daB_DS_cFv();
extern "C" void mBattle2_damage_check__8daB_DS_cFv();
extern "C" void mBattle2_mtx_set__8daB_DS_cFv();
extern "C" void mBattle2_cc_etc_set__8daB_DS_cFv();
extern "C" void mBattle2_cc_set__8daB_DS_cFv();
extern "C" void execute__8daB_DS_cFv();
extern "C" static void daB_DS_Execute__FP8daB_DS_c();
extern "C" static bool daB_DS_IsDelete__FP8daB_DS_c();
extern "C" void _delete__8daB_DS_cFv();
extern "C" static void daB_DS_Delete__FP8daB_DS_c();
extern "C" void CreateHeap__8daB_DS_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daB_DS_cFv();
extern "C" void __ct__8daB_DS_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__4cXyzFv();
extern "C" static void daB_DS_Create__FP8daB_DS_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daB_DS_HIO_cFv();
extern "C" void func_805DC8E4(void* _this, int*);
extern "C" void func_805DC900(void* _this, u8*);
extern "C" void __sinit_d_a_b_ds_cpp();
extern "C" static void func_805DC958();
extern "C" static void func_805DC960();
extern "C" void __dt__4cXyzFv();
extern "C" void changeDemoPos0__9daPy_py_cFPC4cXyz();
extern "C" void __as__4cXyzFRC4cXyz();
extern "C" void changeDemoMode__9daPy_py_cFUliis();
extern "C" void set__4cXyzFRC3Vec();
extern "C" void __ct__4cXyzFRC4cXyz();
extern "C" void zero__4cXyzFv();
extern "C" extern char const* const d_a_b_ds__stringBase0;
extern void* __vt__12dBgS_AcchCir[3];
extern void* __vt__10cCcD_GStts[3];
extern void* __vt__10dCcD_GStts[3];
extern void* __vt__8cM3dGCyl[3];
extern void* __vt__8cM3dGSph[3];
extern void* __vt__8cM3dGAab[3];
extern void* __vt__12dBgS_ObjAcch[9];
extern void* __vt__12J3DFrameCtrl[3];
extern void* __vt__12daB_DS_HIO_c[3];

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
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
extern "C" void updateDL__16mDoExt_McaMorfSOFv();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
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
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopMsgM_SearchByID__FUi();
extern "C" void fopMsgM_messageSet__FUlUl();
extern "C" void fopMsgM_messageSetDemo__FUl();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_onStageBossEnemy__Fi();
extern "C" void dComIfGs_onZoneSwitch__Fii();
extern "C" void dComIfGs_offZoneSwitch__Fii();
extern "C" void dComIfGs_isZoneSwitch__Fii();
extern "C" void dComIfGs_onOneZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void setRoom__13dSv_restart_cFRC4cXyzsSc();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void dEv_noFinishSkipProc__FPvi();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
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
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void getHitSeID__12dCcD_GObjInfFUci();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyz();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void StartBlure__9dCamera_cFiP10fopAc_ac_cff();
extern "C" void dCam_getBody__Fv();
extern "C" void Eye__9dCamera_cFv();
extern "C" void Center__9dCamera_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_change_colpat__FUc();
extern "C" void dKy_custom_colset__FUcUcf();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void atan2sX_Z__4cXyzCFv();
extern "C" void atan2sY_XZ__4cXyzCFv();
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
extern "C" void MtxPosition__FP4cXyzP4cXyz();
extern "C" void func_80280808();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void bgmStart__8Z2SeqMgrFUlUll();
extern "C" void bgmStop__8Z2SeqMgrFUll();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void bgmStreamPrepare__8Z2SeqMgrFUl();
extern "C" void bgmStreamPlay__8Z2SeqMgrFv();
extern "C" void bgmStreamStop__8Z2SeqMgrFUl();
extern "C" void changeBgmStatus__8Z2SeqMgrFl();
extern "C" void setDemoName__11Z2StatusMgrFPc();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __construct_array();
extern "C" void _savegpr_19();
extern "C" void _savegpr_20();
extern "C" void _savegpr_21();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
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
extern "C" void _restgpr_23();
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
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u8 struct_80450C98[4];
extern "C" u8 mParticleTracePCB__13dPa_control_c[4 + 4 /* padding */];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 805DCA54-805DCA58 000000 0004+00 45/45 0/0 0/0 .rodata          @3932 */
SECTION_RODATA static f32 const lit_3932 = 100.0f;
COMPILER_STRIP_GATE(0x805DCA54, &lit_3932);

/* 805DCA58-805DCA5C 000004 0004+00 6/38 0/0 0/0 .rodata          @3933 */
SECTION_RODATA static u8 const lit_3933[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x805DCA58, &lit_3933);

/* 805DCA5C-805DCA64 000008 0004+04 5/35 0/0 0/0 .rodata          @3934 */
SECTION_RODATA static f32 const lit_3934[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x805DCA5C, &lit_3934);

/* 805DCA64-805DCA6C 000010 0008+00 0/7 0/0 0/0 .rodata          @3935 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3935[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805DCA64, &lit_3935);
#pragma pop

/* 805DCA6C-805DCA74 000018 0008+00 0/7 0/0 0/0 .rodata          @3936 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3936[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805DCA6C, &lit_3936);
#pragma pop

/* 805DCA74-805DCA7C 000020 0008+00 0/7 0/0 0/0 .rodata          @3937 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3937[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805DCA74, &lit_3937);
#pragma pop

/* 805DCA7C-805DCA80 000028 0004+00 0/2 0/0 0/0 .rodata          @3938 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3938 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x805DCA7C, &lit_3938);
#pragma pop

/* 805DCA80-805DCA84 00002C 0004+00 0/6 0/0 0/0 .rodata          @3953 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3953 = 2000.0f;
COMPILER_STRIP_GATE(0x805DCA80, &lit_3953);
#pragma pop

/* 805DCA84-805DCA88 000030 0004+00 0/1 0/0 0/0 .rodata          @3954 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3954 = 3900.0f;
COMPILER_STRIP_GATE(0x805DCA84, &lit_3954);
#pragma pop

/* 805DCA88-805DCA8C 000034 0004+00 0/2 0/0 0/0 .rodata          @3955 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3955 = 2500.0f;
COMPILER_STRIP_GATE(0x805DCA88, &lit_3955);
#pragma pop

/* 805DCA8C-805DCA90 000038 0004+00 0/2 0/0 0/0 .rodata          @3956 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3956 = 2800.0f;
COMPILER_STRIP_GATE(0x805DCA8C, &lit_3956);
#pragma pop

/* 805DCA90-805DCA94 00003C 0004+00 0/4 0/0 0/0 .rodata          @3957 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3957 = 700.0f;
COMPILER_STRIP_GATE(0x805DCA90, &lit_3957);
#pragma pop

/* 805DCA94-805DCA98 000040 0004+00 0/4 0/0 0/0 .rodata          @3958 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3958 = 5.0f;
COMPILER_STRIP_GATE(0x805DCA94, &lit_3958);
#pragma pop

/* 805DD248-805DD254 000000 000C+00 4/4 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 805DD254-805DD268 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 805DD268-805DD270 000020 0008+00 0/0 0/0 0/0 .data            e_prim$3811 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim[8] = {
    0xFF, 0x78, 0x00, 0x00, 0xFF, 0x64, 0x78, 0x00,
};
#pragma pop

/* 805DD270-805DD278 000028 0008+00 0/0 0/0 0/0 .data            e_env$3812 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env[8] = {
    0x5A, 0x2D, 0x2D, 0x00, 0x3C, 0x1E, 0x1E, 0x00,
};
#pragma pop

/* 805DD278-805DD280 000030 0006+02 0/0 0/0 0/0 .data            eff_id$3820 */
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

namespace {
#pragma push
#pragma force_active on

/* 805DD280-805DD2C0 000038 0040+00 0/1 0/0 0/0 .data cc_ds_week_src__22@unnamed@d_a_b_ds_cpp@ */
static dCcD_SrcSph cc_ds_week_src = {
    {
        0, {{0, 0, 0}, {0x00fbfdff, 0x43}, {0x75}}, // mObj
        {0, 0, 0, 0, 0}, // mGObjAt
        {0, 2, 0, 0, 0x303}, // mGObjTg
        {0}, // mGObjCo
    }, // mObjInf
    {{
        {0.0f, 0.0f, 0.0f}, // mCenter
        40.0f, // mRadius
    }} // mSph
};

/* 805DD2C0-805DD300 000078 0040+00 0/1 0/0 0/0 .data cc_ds_head_src__22@unnamed@d_a_b_ds_cpp@ */
static dCcD_SrcSph cc_ds_head_src = {
    {
        0, {{0, 0, 0}, {0xd8fbfdff, 3}, {0x55}}, // mObj
        {0xa, 0, 0, 0, 0}, // mGObjAt
        {0, 2, 0, 0, 0x303}, // mGObjTg
        {0}, // mGObjCo
    }, // mObjInf
    {{
        {0.0f, 0.0f, 0.0f}, // mCenter
        40.0f, // mRadius
    }} // mSph
};

/* 805DD300-805DD340 0000B8 0040+00 0/0 0/0 0/0 .data cc_ds_body_src__22@unnamed@d_a_b_ds_cpp@ */
static dCcD_SrcSph cc_ds_body_src = {
    {
        0, {{0, 0, 0}, {0xd8fbfdff, 0x43}, {0x75}}, // mObj
        {0, 0, 0, 0, 0}, // mGObjAt
        {0xa, 2, 0, 0, 0x303}, // mGObjTg
        {0}, // mGObjCo
    }, // mObjInf
    {{
        {0.0f, 0.0f, 0.0f}, // mCenter
        40.0f, // mRadius
    }} // mSph
};

/* 805DD340-805DD384 0000F8 0044+00 0/1 0/0 0/0 .data cc_ds_backbone_src__22@unnamed@d_a_b_ds_cpp@
 */
static dCcD_SrcCyl cc_ds_backbone_src = {
    {
        0, {{0, 0, 0}, {0xd8fbfdff, 0x43}, {0x55}}, // mObj
        {0, 0, 0, 0, 0}, // mGObjAt
        {0xa, 2, 0, 0, 0x307}, // mGObjTg
        {0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        30.0f, // mRadius
        130.0f, // mHeight
    } // mCyl
};

/* 805DD384-805DD3C8 00013C 0044+00 0/1 0/0 0/0 .data
 * cc_ds_hand_at_cyl_src__22@unnamed@d_a_b_ds_cpp@              */
static dCcD_SrcCyl cc_ds_hand_at_cyl_src = {
    {
        0, {{0x100000, 4, 0x1f}, {0xd8fbfdff, 3}, {0x75}}, // mObj
        {0xa, 0, 0xe, 0, 0}, // mGObjAt
        {0, 2, 0, 0, 0x307}, // mGObjTg
        {0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        30.0f, // mRadius
        130.0f, // mHeight
    } // mCyl
};

/* 805DD3C8-805DD408 000180 0040+00 0/1 0/0 0/0 .data
 * cc_ds_breath_at_src__22@unnamed@d_a_b_ds_cpp@                */
static dCcD_SrcSph cc_ds_breath_at_src = {
    {
        0, {{0x100000, 3, 0xd}, {0, 0}, {0}}, // mObj
        {0xd, 0, 0xd, 0, 0}, // mGObjAt
        {0, 0, 0, 0, 0}, // mGObjTg
        {0}, // mGObjCo
    }, // mObjInf
    {{
        {0.0f, 0.0f, 0.0f}, // mCenter
        40.0f, // mRadius
    }} // mSph
};

#pragma pop
};  // namespace

#ifndef NONMATCHING
/* 805DD408-805DD470 -00001 0068+00 1/1 0/0 0/0 .data            @4017 */
SECTION_DATA static void* lit_4017[26] = {
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x74),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x148),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x9C),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x148),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x148),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0xC4),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0xE8),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x148),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x148),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x148),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x148),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x148),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x148),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x148),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x148),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x148),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x148),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x148),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x148),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x148),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x148),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x148),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x148),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x148),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x104),
    (void*)(((char*)ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel) + 0x138),
};

/* 805DD470-805DD474 000228 0004+00 5/6 0/0 0/0 .data            eff_smoke_id */
SECTION_DATA static u16 eff_smoke_id[2] = {0x8BC4, 0x8BC5};

/* 805DD474-805DD480 00022C 000A+02 1/1 0/0 0/0 .data            mGuardDt$4559 */
SECTION_DATA static u8 mGuardDt[10 + 2 /* padding */] = {
    0xE8,
    0x00,
    0x0C,
    0x00,
    0xF4,
    0x00,
    0x00,
    0x00,
    0x18,
    0x00,
    /* padding */
    0x00,
    0x00,
};

/* 805DD480-805DD488 000238 0008+00 0/1 0/0 0/0 .data            mBirthAngle01_dt$4726 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mBirthAngle01_dt[8] = {
    0x00, 0x00, 0x40, 0x00, 0x80, 0x00, 0xC0, 0x00,
};
#pragma pop

/* 805DD488-805DD490 000240 0006+02 0/1 0/0 0/0 .data            mBirthAngle02_dt$4727 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mBirthAngle02_dt[6 + 2 /* padding */] = {
    0x00,
    0x00,
    0x55,
    0x55,
    0xAA,
    0xAA,
    /* padding */
    0x00,
    0x00,
};
#pragma pop

/* 805DD490-805DD49C 000248 000C+00 0/1 0/0 0/0 .data            mBirthYpos02_dt$4728 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 mBirthYpos02_dt[12] = {
    0x44, 0x8F, 0xC0, 0x00, 0x43, 0xAF, 0x00, 0x00, 0xC3, 0xE1, 0x00, 0x00,
};
#pragma pop

/* 805DD49C-805DD4A8 000254 000C+00 1/1 0/0 0/0 .data            HeadAngleDt$5109 */
SECTION_DATA static u8 HeadAngleDt[12] = {
    0xC4, 0x54, 0x80, 0x00, 0xC3, 0xAF, 0x00, 0x00, 0xC2, 0x48, 0x00, 0x00,
};

/* 805DD4A8-805DD4AC 000260 0004+00 0/0 0/0 0/0 .data            eff_znt_Disapp_id$5300 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 eff_znt_Disapp_id[4] = {
    0x8B,
    0xBA,
    0x8B,
    0xBB,
};
#pragma pop

/* 805DD4AC-805DD4B4 000264 0008+00 0/0 0/0 0/0 .data            eff_znt_App_id$5301 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 eff_znt_App_id[8] = {
    0x8B, 0xBC, 0x8B, 0xBD, 0x8B, 0xBE, 0x8B, 0xBF,
};
#pragma pop

/* 805DD4B4-805DD4BC 00026C 0006+02 0/0 0/0 0/0 .data            eff_znt_SASI_id$5302 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 eff_znt_SASI_id[6 + 2 /* padding */] = {
    0x8B,
    0xC0,
    0x8B,
    0xC1,
    0x8B,
    0xC2,
    /* padding */
    0x00,
    0x00,
};
#pragma pop

/* 805DD4BC-805DD570 -00001 00B4+00 1/1 0/0 0/0 .data            @5994 */
SECTION_DATA static void* lit_5994[45] = {
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x8F8),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x93C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0xADC),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1D1C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1D1C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1D1C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1D1C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1D1C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1D1C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x93C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0xC84),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0xCF0),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0xD68),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0xEAC),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0xF34),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0xFBC),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0xFD8),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x101C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1D1C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1064),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x120C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x128C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x12FC),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1350),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x13CC),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1470),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1D1C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1D1C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1D1C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x16E0),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1728),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x17C8),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1878),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1D1C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1D1C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1D1C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1D1C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1D1C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1D1C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x18E0),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x194C),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1968),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x19DC),
    (void*)(((char*)executeOpeningDemo__8daB_DS_cFv) + 0x1A98),
};

/* 805DD570-805DD57C 000328 000C+00 1/1 0/0 0/0 .data            Ds_wait_id$6174 */
SECTION_DATA static u8 Ds_wait_id[12] = {
    0x00, 0x00, 0x00, 0x3C, 0x00, 0x00, 0x00, 0x3D, 0x00, 0x00, 0x00, 0x3E,
};

/* 805DD57C-805DD594 000334 0018+00 1/1 0/0 0/0 .data            Ds_circle_id$6206 */
SECTION_DATA static u8 Ds_circle_id[24] = {
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x1A,
    0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x1D,
};

/* 805DD594-805DD5A0 00034C 000C+00 0/1 0/0 0/0 .data            Ds_damage_wait_id$6351 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 Ds_damage_wait_id[12] = {
    0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x30,
};
#pragma pop

/* 805DD5A0-805DD5AC 000358 000C+00 0/1 0/0 0/0 .data            Ds_damage_id$6352 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 Ds_damage_id[12] = {
    0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x2F,
};
#pragma pop

/* 805DD5AC-805DD5B0 000364 0004+00 0/1 0/0 0/0 .data            eff_spHit_id$6369 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 eff_spHit_id[4] = {
    0x8B,
    0xD9,
    0x8B,
    0xDA,
};
#pragma pop

/* 805DD5B0-805DD5B8 000368 0008+00 0/1 0/0 0/0 .data            eff_LastSmoke_id$6370 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 eff_LastSmoke_id[8] = {
    0x8C, 0x25, 0x8C, 0x26, 0x8C, 0x27, 0x8C, 0x28,
};
#pragma pop

/* 805DD5B8-805DD5DC 000370 0024+00 1/1 0/0 0/0 .data            Ds_Etc_damage_id$7162 */
SECTION_DATA static u8 Ds_Etc_damage_id[36] = {
    0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x33,
    0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x35, 0x00, 0x00, 0x00, 0x36,
    0x00, 0x00, 0x00, 0x37, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x39,
};

/* 805DD5DC-805DD5E8 000394 000C+00 1/1 0/0 0/0 .data            smokeSet_dt$7163 */
SECTION_DATA static u8 smokeSet_dt[12] = {
    0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x1D,
};

/* 805DD5E8-805DD5F0 0003A0 0006+02 1/1 0/0 0/0 .data            effId$7205 */
SECTION_DATA static u8 effId_7205[6 + 2 /* padding */] = {
    0x85,
    0xF6,
    0x89,
    0xB0,
    0x89,
    0xB1,
    /* padding */
    0x00,
    0x00,
};

/* 805DD5F0-805DD614 0003A8 0024+00 1/1 0/0 0/0 .data            Ds_breath_id$7273 */
SECTION_DATA static u8 Ds_breath_id[36] = {
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x11,
};

/* 805DD614-805DD62C 0003CC 0018+00 1/1 0/0 0/0 .data            Ds_HandAt_id$7327 */
SECTION_DATA static u8 Ds_HandAt_id[24] = {
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x17,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x14,
};

/* 805DD62C-805DD638 0003E4 000C+00 1/1 0/0 0/0 .data            Ds_BS_id$7392 */
SECTION_DATA static u8 Ds_BS_id[12] = {
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08,
};

/* 805DD638-805DD63C 0003F0 0004+00 1/1 0/0 0/0 .data            eff_Sand_id$7472 */
SECTION_DATA static u8 eff_Sand_id[4] = {
    0x8B,
    0xF6,
    0x8B,
    0xF7,
};

/* 805DD63C-805DD680 -00001 0044+00 1/1 0/0 0/0 .data            @7939 */
SECTION_DATA static void* lit_7939[17] = {
    (void*)(((char*)executeBattle2OpeningDemo__8daB_DS_cFv) + 0x4C4),
    (void*)(((char*)executeBattle2OpeningDemo__8daB_DS_cFv) + 0x4EC),
    (void*)(((char*)executeBattle2OpeningDemo__8daB_DS_cFv) + 0x55C),
    (void*)(((char*)executeBattle2OpeningDemo__8daB_DS_cFv) + 0x5B0),
    (void*)(((char*)executeBattle2OpeningDemo__8daB_DS_cFv) + 0x5D0),
    (void*)(((char*)executeBattle2OpeningDemo__8daB_DS_cFv) + 0x5EC),
    (void*)(((char*)executeBattle2OpeningDemo__8daB_DS_cFv) + 0x6E0),
    (void*)(((char*)executeBattle2OpeningDemo__8daB_DS_cFv) + 0x720),
    (void*)(((char*)executeBattle2OpeningDemo__8daB_DS_cFv) + 0x870),
    (void*)(((char*)executeBattle2OpeningDemo__8daB_DS_cFv) + 0xF78),
    (void*)(((char*)executeBattle2OpeningDemo__8daB_DS_cFv) + 0xA78),
    (void*)(((char*)executeBattle2OpeningDemo__8daB_DS_cFv) + 0xB20),
    (void*)(((char*)executeBattle2OpeningDemo__8daB_DS_cFv) + 0xC0C),
    (void*)(((char*)executeBattle2OpeningDemo__8daB_DS_cFv) + 0xC54),
    (void*)(((char*)executeBattle2OpeningDemo__8daB_DS_cFv) + 0xCD4),
    (void*)(((char*)executeBattle2OpeningDemo__8daB_DS_cFv) + 0xD20),
    (void*)(((char*)executeBattle2OpeningDemo__8daB_DS_cFv) + 0xE34),
};

/* 805DD680-805DD684 000438 0004+00 1/1 0/0 0/0 .data            eff_Demo_sasi_id$9100 */
SECTION_DATA static u16 eff_Demo_sasi_id[2] = {
    0x8BF8,
    0x8BF9,
};

/* 805DD684-805DD818 -00001 0194+00 1/1 0/0 0/0 .data            @9591 */
SECTION_DATA static void* lit_9591[101] = {
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x198),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x370),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x408),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x684),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x6EC),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x93C),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x9E4),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0xA48),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0xB10),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0xB70),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0xB10),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0xB70),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0xB10),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0xB70),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0xBAC),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0xD00),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0xF6C),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1000),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x10E4),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x11D0),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1254),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1300),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1410),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x144C),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x14C0),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x1550),
    (void*)(((char*)executeBattle2Dead__8daB_DS_cFv) + 0x228),
};

/* 805DD818-805DD820 0005D0 0008+00 1/1 0/0 0/0 .data            effId$9621 */
SECTION_DATA static u8 effId_9621[8] = {
    0x89, 0xAC, 0x89, 0xAD, 0x89, 0xAE, 0x89, 0xAF,
};

/* 805DD820-805DD904 -00001 00E4+00 1/1 0/0 0/0 .data            @9985 */
SECTION_DATA static void* lit_9985[57] = {
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x59C),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x654),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x654),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x3CC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x3CC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x3CC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x2BC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x2BC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x2BC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x2BC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x2BC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x2BC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x428),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x428),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x428),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x428),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x428),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x428),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x754),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x70C),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x8C4),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x70C),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xA34),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x70C),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xF0),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xF0),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xF0),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x1A8),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x1A8),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x1A8),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x260),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x260),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x260),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0xBFC),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x84),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x84),
    (void*)(((char*)mSoundSE_Set__8daB_DS_cFv) + 0x84),
};

/* 805DD904-805DD924 -00001 0020+00 1/1 0/0 0/0 .data            @10109 */
SECTION_DATA static void* lit_10109[8] = {
    (void*)(((char*)action__8daB_DS_cFv) + 0x294), (void*)(((char*)action__8daB_DS_cFv) + 0x288),
    (void*)(((char*)action__8daB_DS_cFv) + 0x2A0), (void*)(((char*)action__8daB_DS_cFv) + 0x2AC),
    (void*)(((char*)action__8daB_DS_cFv) + 0x2B8), (void*)(((char*)action__8daB_DS_cFv) + 0x2D0),
    (void*)(((char*)action__8daB_DS_cFv) + 0x2C4), (void*)(((char*)action__8daB_DS_cFv) + 0x2DC),
};

/* 805DD924-805DD938 0006DC 0014+00 1/1 0/0 0/0 .data            head_setRdt$10217 */
SECTION_DATA static u8 head_setRdt[20] = {
    0x43, 0x96, 0x00, 0x00, 0x43, 0xAF, 0x00, 0x00, 0x43, 0x87,
    0x00, 0x00, 0x43, 0x3E, 0x00, 0x00, 0x43, 0x3E, 0x00, 0x00,
};

/* 805DD938-805DD980 0006F0 0048+00 0/0 0/0 0/0 .data            etc_setRdt$10369 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 etc_setRdt[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 805DD980-805DD994 000738 0014+00 1/1 0/0 0/0 .data            head2_setRdt$10836 */
SECTION_DATA static u8 head2_setRdt[20] = {
    0x43, 0x96, 0x00, 0x00, 0x43, 0xAF, 0x00, 0x00, 0x43, 0x87,
    0x00, 0x00, 0x43, 0x3E, 0x00, 0x00, 0x43, 0x3E, 0x00, 0x00,
};
#endif

/* 805CB22C-805CB314 0000EC 00E8+00 1/1 0/0 0/0 .text            __ct__12daB_DS_HIO_cFv */
#ifdef NONMATCHING
// matches with literals
daB_DS_HIO_c::daB_DS_HIO_c() {
    field_0x04 = -1;
    mModelSize = 1.0f;
    mHandRange = 2000.0f;
    mBreathRange = 3900.0f;
    mGuardSpawnRange = 2000.0f;
    mNoSearchRange = 2500.0f;
    mP2MoveAxis = 2800.0f;
    mP2AttackHeight = 700.0f;
    mP2ModelSize = 5.0f;
    mP2FallTime = 250;
    mPedestalFallTime = 200;
    mSandFallWaitTime = 50;
    mP2BulletFireTime = 5;
    mP2OuterWallAttackTime = 850;
    mP2TrapCreateWaitTime1 = 0;
    mP2TrapCreateWaitTime2 = 300;
    mP2TrapCreateID1 = 70;
    mP2TrapCreateID2 = 10;
    mHintTime1 = 600;
    mHintTime2 = 600;
    mP2OuterWallTrapSpeed = 12;
    mTowerTrapSpeed = 14;
    mP2ApproachAccel = 5;
    mP2ApproachSpeedMax = 100;
    mP2ApproachAfterBullet = 0x400;
    mP2ApproachDist = 0x1800;
    mP2Health = 1080;
    mP2HealthDebugOn = false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daB_DS_HIO_c::daB_DS_HIO_c() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/__ct__12daB_DS_HIO_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DDA70-805DDA74 000008 0001+03 8/8 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 805DDA74-805DDA78 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 805DDA78-805DDA7C 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 805DDA7C-805DDA80 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 805DDA80-805DDA84 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 805DDA84-805DDA88 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 805DDA88-805DDA8C 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 805DDA8C-805DDA90 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 805DDA90-805DDA94 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 805DDA94-805DDA98 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 805DDA98-805DDA9C 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 805DDA9C-805DDAA0 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 805DDAA0-805DDAA4 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 805DDAA4-805DDAA8 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 805DDAA8-805DDAAC 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 805DDAAC-805DDAB0 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 805DDAAC 0001+00 data_805DDAAC @1009 */
/* 805DDAAD 0003+00 data_805DDAAD None */
static u8 struct_805DDAAC;

static bool hioInit;

#ifndef NONMATCHING
/* 805DDAB0-805DDABC 000048 000C+00 1/1 0/0 0/0 .bss             @3948 */
static u8 lit_3948[12];
#endif

/* 805DDABC-805DDB0C 000054 0050+00 21/23 0/0 0/0 .bss             l_HIO */
#ifdef NONMATCHING
static daB_DS_HIO_c l_HIO;
#else
static u8 l_HIO[80];
#endif

/* 805DDB0C-805DDB10 -00001 0004+00 0/1 0/0 0/0 .bss             None */
#pragma push
#pragma force_active on
/* 805DDB0C 0002+00 data_805DDB0C handL_ang */
/* 805DDB0E 0002+00 data_805DDB0E handR_ang */
#ifdef NONMATCHING
static s16 handL_ang;
static s16 handR_ang;
#else
u8 struct_805DDB0C[4];
#endif
#pragma pop

/* 805DDB10-805DDB14 -00001 0004+00 3/4 0/0 0/0 .bss             None */
/* 805DDB10 0002+00 data_805DDB10 handX_ang */
/* 805DDB12 0002+00 breathTimerBase None */
#ifdef NONMATCHING
static s16 handX_ang;
static u8 breathTimerBase;
#else
u8 struct_805DDB10[4];
#endif

/* 805CB314-805CB4A4 0001D4 0190+00 2/1 0/0 0/0 .text ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel */
#ifdef NONMATCHING
// matches once the above bss data is correct
int daB_DS_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    u16 joint_no = i_joint->getJntNo();
    mDoMtx_stack_c::copy(i_model->i_getAnmMtx(joint_no));
    
    if (mBossPhase == 0) {
        csXyz angle;
        switch (joint_no) {
        case 4:
            angle.x = 0;
            angle.y = mHeadAngle.y >> 1;
            angle.z = mHeadAngle.x;
            mDoMtx_stack_c::ZXYrotM(angle);
            break;

        case 6:
            angle.x = 0;
            angle.y = mHeadAngle.y >> 1;
            angle.z = mHeadAngle.x;
            mDoMtx_stack_c::ZXYrotM(angle);
            break;

        case 9:
            mDoMtx_stack_c::YrotM(handL_ang);
            mDoMtx_stack_c::XrotM(handX_ang);
            break;

        case 10:
            mDoMtx_stack_c::YrotM(-handL_ang);
            break;

        case 28:
            mDoMtx_stack_c::YrotM(-handR_ang);
            mDoMtx_stack_c::XrotM(-handX_ang);
            break;

        case 29:
            mDoMtx_stack_c::YrotM(handR_ang);
            break;
        }
    }

    i_model->i_setAnmMtx(joint_no, mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daB_DS_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/ctrlJoint__8daB_DS_cFP8J3DJointP8J3DModel.s"
}
#pragma pop
#endif

/* 805CB4A4-805CB4F0 000364 004C+00 1/1 0/0 0/0 .text JointCallBack__8daB_DS_cFP8J3DJointi */
int daB_DS_c::JointCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        daB_DS_c* _this = (daB_DS_c*)j3dSys.getModel()->getUserArea();
        if (_this != NULL) {
            _this->ctrlJoint(i_joint, j3dSys.getModel());
        }
    }
    return 1;
}

/* ############################################################################################## */
/* 805DCA98-805DCA9C 000044 0004+00 0/3 0/0 0/0 .rodata          @4267 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4267 = 120.0f;
COMPILER_STRIP_GATE(0x805DCA98, &lit_4267);
#pragma pop

/* 805DCA9C-805DCAA0 000048 0004+00 0/1 0/0 0/0 .rodata          @4268 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4268 = 6000.0f;
COMPILER_STRIP_GATE(0x805DCA9C, &lit_4268);
#pragma pop

/* 805DCAA0-805DCAA4 00004C 0004+00 0/6 0/0 0/0 .rodata          @4269 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4269 = 255.0f;
COMPILER_STRIP_GATE(0x805DCAA0, &lit_4269);
#pragma pop

/* 805DCAA4-805DCAA8 000050 0004+00 0/5 0/0 0/0 .rodata          @4270 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4270 = 1000.0f;
COMPILER_STRIP_GATE(0x805DCAA4, &lit_4270);
#pragma pop

/* 805DCAA8-805DCAAC 000054 0004+00 0/1 0/0 0/0 .rodata          @4271 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4271 = 7000.0f;
COMPILER_STRIP_GATE(0x805DCAA8, &lit_4271);
#pragma pop

/* 805CB4F0-805CBAA8 0003B0 05B8+00 1/1 0/0 0/0 .text            draw__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
int daB_DS_c::draw() {
    if (mType == BULLET_A || mType == BULLET_B || mType == BULLET_C || mBossPhase == 100) {
        return 1;
    }

    J3DModel* model = mpMorf->getModel();
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model->mModelData, &tevStr);
    J3DModelData* model_data = model->getModelData();

    if (mType == PHASE_2) {
        if (!mDead) {
            if (model_data->getMaterialNodePointer(2) != NULL) {
                model_data->getMaterialNodePointer(2)->getTevColor(2)->a = (u8)field_0x7e8;
                model_data->getMaterialNodePointer(1)->getTevKColor(1)->a = field_0x7ec;
            }

            mpMorf->entryDL();

            cXyz shadow_pos;
            shadow_pos.set(current.pos.x, current.pos.y + 120.0f, current.pos.z);
            tevStr.field_0x344 = field_0x7f8;
            mShadowKey = dComIfGd_setShadow(mShadowKey, 0, model, &shadow_pos, 6000.0f, 0.0f,
                                            current.pos.y, mAcch.GetGroundH(), mAcch.m_gnd, &tevStr,
                                            0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
        }

        if (!mNoDrawSword) {
            J3DModel* sword_model = mpSwordMorf->getModel();
            g_env_light.settingTevStruct(0, &mSwordPos, &tevStr);
            g_env_light.setLightTevColorType_MAJI(sword_model->mModelData, &tevStr);
            mpSwordBrkAnm->entry(sword_model->getModelData());
            mpSwordMorf->entryDL();
        }

        if (mPlayPatternAnm) {
            mpPatternBrkAnm->entry(mpPatternModel->getModelData());
            mpPatternBtkAnm->entry(mpPatternModel->getModelData());
            mDoExt_modelUpdateDL(mpPatternModel);
        }

        return 1;
    } else {
        if (model_data->getMaterialNodePointer(2) != NULL) {
            model_data->getMaterialNodePointer(2)->getTevColor(2)->a = (u8)field_0x7e8;
            model_data->getMaterialNodePointer(1)->getTevKColor(1)->a = field_0x7ec;
        }

        u8 ivar12 = 0;
        if (mBossPhase != 0) {
            ivar12 = 6;
        } else if (mBackboneJoint == 1) {
            ivar12 = 4;
        } else if (mBackboneJoint == 2) {
            ivar12 = 5;
        }

        if (field_0x7dc[mBackboneJoint] != 255.0f) {
            J3DMaterial* material =
                model->getModelData()->getMaterialNodePointer((u8)(mBackboneJoint + 4));
            if (material != NULL) {
                material->getTevKColor(1)->a = field_0x7dc[mBackboneJoint];
            }
        }

        if (mBackboneJoint != 0 && mBackboneJoint < 3) {
            for (int i = 4; i < ivar12 + 1; i++) {
                J3DShape* shape =
                    mpMorf->getModel()->getModelData()->getMaterialNodePointer((u8)i)->getShape();
                if (shape != NULL) {
                    shape->hide();
                }
            }
        } else {
            for (int i = 4; i < 7; i++) {
                J3DShape* shape =
                    mpMorf->getModel()->getModelData()->getMaterialNodePointer((u8)i)->getShape();
                if (shape != NULL) {
                    shape->show();
                }
            }
        }

        mpMorf->entryDL();

        if (!mNoDrawSword) {
            J3DModel* sword_model = mpSwordMorf->getModel();
            g_env_light.settingTevStruct(0, &mSwordPos, &tevStr);
            g_env_light.setLightTevColorType_MAJI(sword_model->mModelData, &tevStr);
            mpSwordBrkAnm->entry(sword_model->getModelData());
            mpSwordMorf->entryDL();
        }

        if (mPlayPatternAnm) {
            mpOpPatternBrkAnm->entry(mpOpPatternModel->getModelData());
            mpOpPatternBtkAnm->entry(mpOpPatternModel->getModelData());
            mDoExt_modelUpdateDL(mpOpPatternModel);
        }

        if (mDrawZant) {
            J3DModel* zant_model = mpZantMorf->getModel();
            g_env_light.settingTevStruct(3, &mSwordPos, &tevStr);
            g_env_light.setLightTevColorType_MAJI(zant_model->mModelData, &tevStr);
            J3DShape* shape =
                mpZantMorf->getModel()->getModelData()->getMaterialNodePointer(2)->getShape();
            if (shape != NULL) {
                if (!mDrawZantSword) {
                    shape->hide();
                } else {
                    shape->show();
                }
            }
            mpZantMorf->entryDL();
        }

        cXyz shadow_pos;
        shadow_pos.set(current.pos.x, current.pos.y + 1000.0f, current.pos.z);
        model = mpMorf->getModel();
        tevStr.field_0x344 = field_0x7f8;
        mShadowKey = dComIfGd_setShadow(mShadowKey, 0, model, &shadow_pos, 7000.0f,
                                        0.0f, current.pos.y, mAcch.GetGroundH(), mAcch.m_gnd,
                                        &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
        
        return 1;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daB_DS_c::draw() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/draw__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805CBAA8-805CBAC8 000968 0020+00 1/0 0/0 0/0 .text            daB_DS_Draw__FP8daB_DS_c */
static int daB_DS_Draw(daB_DS_c* i_this) {
    return i_this->draw();
}

/* ############################################################################################## */
/* 805DCAAC-805DCAB0 000058 0004+00 1/6 0/0 0/0 .rodata          @4285 */
SECTION_RODATA static f32 const lit_4285 = -1.0f;
COMPILER_STRIP_GATE(0x805DCAAC, &lit_4285);

/* 805DD22C-805DD22C 0007D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_805DD22C = "B_DS";
#pragma pop

/* 805CBAC8-805CBB74 000988 00AC+00 18/18 0/0 0/0 .text            setBck__8daB_DS_cFiUcff */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::setBck(int i_anmID, u8 i_attr, f32 i_morf, f32 i_rate) {
    J3DAnmTransform* anm = static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("B_DS", i_anmID));
    mpMorf->setAnm(anm, i_attr, i_morf, i_rate, 0.0f, -1.0f);
    mAnmID = i_anmID;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::setBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/setBck__8daB_DS_cFiUcff.s"
}
#pragma pop
#endif

/* 805CBB74-805CBB80 000A34 000C+00 18/18 0/0 0/0 .text            setActionMode__8daB_DS_cFii */
void daB_DS_c::setActionMode(int i_action, int i_mode) {
    mAction = i_action;
    mMode = i_mode;
}

/* ############################################################################################## */
/* 805DCAB0-805DCAB4 00005C 0004+00 1/9 0/0 0/0 .rodata          @4339 */
SECTION_RODATA static f32 const lit_4339 = -1000000000.0f;
COMPILER_STRIP_GATE(0x805DCAB0, &lit_4339);

#ifdef NONMATCHING
/* 805DD470-805DD474 000228 0004+00 5/6 0/0 0/0 .data            eff_smoke_id */
SECTION_DATA static u16 eff_smoke_id[2] = {0x8BC4, 0x8BC5};
#endif

/* 805CBB80-805CBD00 000A40 0180+00 1/1 0/0 0/0 .text            mSmokeSet__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::mSmokeSet() {
    if (mSmokeCount >= 20) {
        return;
    }

    if (mAcch.i_ChkGroundHit()) {
        if (field_0x84d == 0 && mAcch.GetGroundH() != -1e9f) {
            cXyz particle_scale(1.0f, 1.0f, 1.0f);
            cXyz particle_pos = current.pos;
            csXyz particle_angle = shape_angle;
            particle_pos.y = mAcch.GetGroundH();
            particle_angle.z = 0;
            particle_angle.x = 0;
            mSmokeParticleKey[mSmokeCount] =
                dComIfGp_particle_set(mSmokeParticleKey[mSmokeCount], eff_smoke_id[1],
                                    &particle_pos, &particle_angle, &particle_scale);
            
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_H_COL, 0, -1);
            
            field_0x84d = 1;
            mSmokeCount++;
        }
    } else {
        field_0x84d = 0;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::mSmokeSet() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mSmokeSet__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805CBD00-805CBD64 000BC0 0064+00 3/3 0/0 0/0 .text            mHeadAngle_Clear__8daB_DS_cFv */
void daB_DS_c::mHeadAngle_Clear() {
    cLib_addCalcAngleS2(&mHeadAngle.x, 0, 20, 0x100);
    cLib_addCalcAngleS2(&mHeadAngle.y, 0, 20, 0x100);
    cLib_addCalcAngleS2(&mHeadAngle.z, 0, 20, 0x100);
}

/* 805CBD64-805CBED0 000C24 016C+00 1/1 0/0 0/0 .text            HandHitSoundSet__8daB_DS_cFb */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::HandHitSoundSet(bool i_isLeft) {
    cXyz vec, hit_pos;
    if (!i_isLeft) {
        vec = mHandPos[1] - *mHandAtRCyl.GetTgHitPosP();
        hit_pos = *mHandAtRCyl.GetTgHitPosP();
        hit_pos.y += 100.0f;
        mSoundPos = mHandPos[1];
    } else {
        vec = mHandPos[0] - *mHandAtLCyl.GetTgHitPosP();
        hit_pos = *mHandAtLCyl.GetTgHitPosP();
        hit_pos.y += 100.0f;
        mSoundPos = mHandPos[0];
    }
    csXyz hit_angle;
    hit_angle.x = 0;
    hit_angle.y = vec.atan2sX_Z();
    hit_angle.z = 0;
    def_se_set(&mSound, mAtInfo.mpCollider, 2, NULL);
    i_dComIfGp_setHitMark(2, this, &hit_pos, &hit_angle, NULL, 0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::HandHitSoundSet(bool param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/HandHitSoundSet__8daB_DS_cFb.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DCAB4-805DCAB8 000060 0004+00 0/5 0/0 0/0 .rodata          @4465 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4465 = 800.0f;
COMPILER_STRIP_GATE(0x805DCAB4, &lit_4465);
#pragma pop

/* 805DCAB8-805DCABC 000064 0004+00 1/5 0/0 0/0 .rodata          @4466 */
SECTION_RODATA static f32 const lit_4466 = 200.0f;
COMPILER_STRIP_GATE(0x805DCAB8, &lit_4466);

/* 805DCABC-805DCAC0 000068 0004+00 0/2 0/0 0/0 .rodata          @4467 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4467 = 400.0f;
COMPILER_STRIP_GATE(0x805DCABC, &lit_4467);
#pragma pop

/* 805CBED0-805CC158 000D90 0288+00 1/1 0/0 0/0 .text            handSPosSet__8daB_DS_cFi */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::handSPosSet(int i_hand) {
    dBgS_GndChk gnd_chk;
    cXyz vec1, vec2;
    vec1 = mFingerPos[i_hand];
    vec1.y += 800.0f;
    gnd_chk.SetPos(&vec1);
    vec1.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
    if (vec1.y == -1e9f) {
        vec1.y = mFingerPos[i_hand].y;
    }
    vec2 = vec1 - mHandPos[i_hand];
    mDoMtx_YrotS(*calc_mtx, (s16)vec2.atan2sX_Z());
    vec1.x = 0.0f;
    vec1.y = 200.0f;
    vec1.z = 400.0f;
    MtxPosition(&vec1, &vec2);
    vec2 += mHandPos[i_hand];
    vec2.y += 800.0f;
    gnd_chk.SetPos(&vec1);
    vec2.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
    if (vec2.y == -1e9f) {
        vec2.y = mHandPos[i_hand].y;
    }
    vec1 = vec2 - mHandPos[i_hand];
    csXyz particle_angle;
    particle_angle.x = vec1.atan2sY_XZ();
    particle_angle.y = vec2.atan2sX_Z();
    particle_angle.z = 0;
    cXyz particle_scale(1.0f, 1.0f, 1.0f);
    for (int i = 0; i < 2; i++) {
        mHandSmokeParticleKey[(i_hand << 1) + i] =
            dComIfGp_particle_set(mHandSmokeParticleKey[(i_hand << 1) + i], eff_smoke_id[i],
                                  &vec2, &particle_angle, &particle_scale);
    }
    dComIfGp_getVibration().StartShock(2, 0x4f, cXyz(0.0f, 1.0f, 0.0f));
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::handSPosSet(int param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/handSPosSet__8daB_DS_cFi.s"
}
#pragma pop
#endif

/* 805CC158-805CC1C4 001018 006C+00 8/8 0/0 0/0 .text            hand_smokeSet__8daB_DS_cFUc */
void daB_DS_c::hand_smokeSet(u8 i_hand) {
    if (i_hand == 0 || i_hand == 1) {
        handSPosSet(0);
    }
    if (i_hand == 0 || i_hand == 2) {
        handSPosSet(1);
    }
}

/* ############################################################################################## */
/* 805DCAC0-805DCAC4 00006C 0004+00 0/3 0/0 0/0 .rodata          @4551 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4551 = 1500.0f;
COMPILER_STRIP_GATE(0x805DCAC0, &lit_4551);
#pragma pop

/* 805DCAC4-805DCAC8 000070 0004+00 0/10 0/0 0/0 .rodata          @4552 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4552 = 500.0f;
COMPILER_STRIP_GATE(0x805DCAC4, &lit_4552);
#pragma pop

/* 805DCAC8-805DCACC 000074 0004+00 0/1 0/0 0/0 .rodata          @4553 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4553 = 8192.0f;
COMPILER_STRIP_GATE(0x805DCAC8, &lit_4553);
#pragma pop

/* 805CC1C4-805CC454 001084 0290+00 1/1 0/0 0/0 .text            mZsMoveChk__8daB_DS_cFv */
#ifdef NONMATCHING
// regalloc
void daB_DS_c::mZsMoveChk() {
    fopAc_ac_c* staltroop;
    int indices[15];
    int count = 0;

    for (int i = 0; i < 15; i++) {
        indices[count] = 0;
        if (mStaltroopID[i] != 0) {
            if (fopAcM_SearchByID(mStaltroopID[i], &staltroop) == 0) {
                mStaltroopID[i] = 0;
            } else {
                indices[count] = i;
                count++;
            }
        }
    }

    if (count == 0) {
        return;
    }

    dBgS_GndChk gnd_chk;
    s16 angle_y = fopAcM_searchPlayerAngleY(this);
    cXyz vec1, vec2;

    for (int i = 0; i < count; i++) {
        if (indices[i] == 0) {
            continue;
        }

        mDoMtx_YrotS(*calc_mtx, angle_y);
        vec1.x = 0.0f;
        vec1.y = 0.0f;
        vec1.z = 1500.0f;
        vec1.z += cM_rndF(500.0f);
        MtxPosition(&vec1, &vec2);
        vec2 += current.pos;
        vec2.y += 2000.0f;
        gnd_chk.SetPos(&vec2);
        if (vec2.y != -1e9f) {
            vec2.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
        } else {
            vec2.y = current.pos.y += 800.0f;
        }

        if (mStaltroopID[indices[i]] != 0
            && fopAcM_SearchByID(mStaltroopID[indices[i]], &staltroop) != 0 && staltroop != NULL)
        {
            staltroop->home.pos.x = vec2.x;
            staltroop->home.pos.y = vec2.y;
            staltroop->home.pos.z = vec2.z;
        }
        
        angle_y = fopAcM_searchPlayerAngleY(this);
        angle_y += (s16)cM_rndFX(0x2000);
    }

    if (!daPy_getPlayerActorClass()->checkSpinnerRide() || mAction == ACT_DAMAGE
        || fopAcM_searchPlayerDistance(this) > l_HIO.mBreathRange)
    {
        mIsAppear = false;
        return;
    }
    mIsAppear = true;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::mZsMoveChk() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mZsMoveChk__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805CC454-805CC6F4 001314 02A0+00 1/1 0/0 0/0 .text            mZsMoveChk_Guard__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::mZsMoveChk_Guard() {
    static s16 mGuardDt[5] = {-0x1800, 0xc00, -0xc00, 0, 0x1800};
    s16 angle_to_player = fopAcM_searchPlayerAngleY(this);
    fopAc_ac_c* staltroop;
    dBgS_GndChk gnd_chk;
    cXyz vec1, vec2;
    s16 angle_y[5];

    int i = 0;
    int index = cM_rndF(5.0f);
    for (; i < 5; i++, index++) {
        if (index > 4) {
            index = 0;
        }
        angle_y[i] = angle_to_player;
        if (mGuardDt[index] != 0) {
            angle_y[i] += mGuardDt[index];
        }
    }

    for (int i = 0; i < 5; i++) {
        mDoMtx_YrotS(*calc_mtx, angle_y[i]);
        vec1.x = 0.0f;
        vec1.y = 0.0f;
        vec1.z = 500.0f;
        MtxPosition(&vec1, &vec2);
        vec2 += current.pos;
        vec2.y += 2000.0f;
        gnd_chk.SetPos(&vec2);
        if (vec2.y != -1e9f) {
            vec2.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
        } else {
            vec2.y = current.pos.y += 800.0f;
        }

        if (mStaltroop2ID[i] != 0 && fopAcM_SearchByID(mStaltroop2ID[i], &staltroop) != 0
                                  && staltroop != NULL) {
            staltroop->home.pos.x = vec2.x;
            staltroop->home.pos.y = vec2.y;
            staltroop->home.pos.z = vec2.z;
        }
    }

    if (!daPy_getPlayerActorClass()->checkSpinnerRide() || mAction == ACT_DAMAGE
        || fopAcM_searchPlayerDistance(this) > l_HIO.mBreathRange)
    {
        mIsAppearG = false;
        return;
    }
    
    if (fopAcM_searchPlayerDistance(this) < l_HIO.mGuardSpawnRange) {
        mIsAppearG = true;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::mZsMoveChk_Guard() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mZsMoveChk_Guard__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DCACC-805DCAD0 000078 0004+00 1/7 0/0 0/0 .rodata          @4649 */
SECTION_RODATA static f32 const lit_4649 = 2.0f;
COMPILER_STRIP_GATE(0x805DCACC, &lit_4649);

/* 805DCAD0-805DCAD4 00007C 0004+00 0/6 0/0 0/0 .rodata          @4650 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4650 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x805DCAD0, &lit_4650);
#pragma pop

/* 805DCAD4-805DCAD8 000080 0004+00 0/5 0/0 0/0 .rodata          @4651 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4651 = 0.5f;
COMPILER_STRIP_GATE(0x805DCAD4, &lit_4651);
#pragma pop

/* 805DCAD8-805DCADC 000084 0004+00 0/8 0/0 0/0 .rodata          @4652 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4652 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x805DCAD8, &lit_4652);
#pragma pop

/* 805DCADC-805DCAE0 000088 0004+00 0/3 0/0 0/0 .rodata          @4653 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4653 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x805DCADC, &lit_4653);
#pragma pop

/* 805CC6F4-805CC80C 0015B4 0118+00 1/1 0/0 0/0 .text            mTrapScale__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::mTrapScale() {
    f32 target_scale = 1.0f;
    if (mBossPhase != 0) {
        target_scale = 2.0f;
    } else if (mTrapID[0] == 0) {
        return;
    }

    for (int i = 0; i < 20; i++) {
        fopAc_ac_c* trap_actor;
        if (fopAcM_SearchByID(mTrapID[i], &trap_actor) != 0 && trap_actor != NULL) {
            cLib_addCalc2(&trap_actor->scale.x, target_scale, 0.7f, 0.5f);
            cLib_addCalc2(&trap_actor->scale.y, target_scale, 0.8f, 2.0f);
            cLib_addCalc2(&trap_actor->scale.z, target_scale, 0.7f, 0.5f);
            if (fabsf(trap_actor->scale.y - target_scale) < 0.1f) {
                trap_actor->scale.set(target_scale, target_scale, target_scale);
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::mTrapScale() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mTrapScale__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805CC80C-805CC8A4 0016CC 0098+00 2/2 0/0 0/0 .text            mClearTrap__8daB_DS_cFb */
void daB_DS_c::mClearTrap(bool i_delete) {
    for (int i = 0; i < 20; i++) {
        if (mTrapID[i] == 0) {
            continue;
        }
        fopAc_ac_c* trap_actor;
        if (fopAcM_SearchByID(mTrapID[i], &trap_actor) != 0 && trap_actor != NULL) {
            if (i_delete) {
                fopAcM_delete(trap_actor);
            } else {
                trap_actor->health = 0;
            }
            mTrapID[i] = 0;
        }
    }
}

/* ############################################################################################## */
/* 805DCAE0-805DCAE4 00008C 0004+00 0/1 0/0 0/0 .rodata          @4895 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4895 = -1300.0f;
COMPILER_STRIP_GATE(0x805DCAE0, &lit_4895);
#pragma pop

/* 805DCAE4-805DCAE8 000090 0004+00 0/3 0/0 0/0 .rodata          @4896 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4896 = 7.0f;
COMPILER_STRIP_GATE(0x805DCAE4, &lit_4896);
#pragma pop

/* 805DCAE8-805DCAEC 000094 0004+00 0/1 0/0 0/0 .rodata          @4897 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4897 = 1708.0f;
COMPILER_STRIP_GATE(0x805DCAE8, &lit_4897);
#pragma pop

/* 805CC8A4-805CCEB4 001764 0610+00 3/3 0/0 0/0 .text            mCreateTrap__8daB_DS_cFb */
#ifdef NONMATCHING
// matches with literals / generics
void daB_DS_c::mCreateTrap(bool param_0) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    if (mBossPhase == 0) {
        if (cLib_calcTimer(&mBirthTrapTimerF) != 0 || mPedestalFallTimer != 0 || mSandFallTimer != 0
            || mAction == ACT_DAMAGE || mAction == ACT_OPENING_DEMO)
        {
            mClearTrap(true);
            return;
        }
    } else if (player->current.pos.y < -1300.0f || player->current.pos.y > l_HIO.mP2AttackHeight
        || (mAction == ACT_CIRCLE && mMode >= 3 && mMode <= 4) || mOutTimer == 0
        || daPy_getPlayerActorClass()->getDamageWaitTimer() != 0 || mAction == ACT_WAIT
        || mAction == ACT_DAMAGE || mAction == ACT_ETC_DAMAGE || mAction == ACT_HAND_ATTACK)
    {
        mTrapCreate = false;
        mClearTrap(false);
        return;
    }
    mTrapScale();
    
    if (mBossPhase == 0 && !param_0 && (fopAcM_searchPlayerAngleY(this) & 0xfff) == 0) {
        return;
    }
    cXyz pos, vec;
    cXyz trap_scale(1.0f, 1.0f, 1.0f);
    u32 prm;
    
    if (mBossPhase != 0 && health <= (int)l_HIO.mP2Health / 3 * 2 && mTrapCreate) {
        int i = 6;
        int trap_count = 0;
        for (; i < 20 && trap_count < 2; i++) {
            if (mTrapID[i] != 0) {
                fopAc_ac_c* actor;
                if (fopAcM_SearchByID(mTrapID[i], &actor) != 0 && actor != NULL) {
                    continue;
                }
                mTrapID[i] = 0;
            }

            prm = 0x1f5003;
            prm |= (int)l_HIO.mTowerTrapSpeed << 8;
            int trap_create_id;
            if (trap_count == 0) {
                trap_create_id = l_HIO.mP2TrapCreateID1;
                prm |= l_HIO.mP2TrapCreateID1 << 0x18;
            } else {
                trap_create_id = l_HIO.mP2TrapCreateID2;
                prm |= l_HIO.mP2TrapCreateID2 << 0x18;
            }

            dPath* path = dPath_GetRoomPath(3, fopAcM_GetRoomNo(this));
            if (path != NULL) {
                dStage_dPnt_c& point = path->m_points[trap_create_id];
                pos = point.m_position;
                vec = pos - current.pos;
                if (vec.abs() <= 200.0f) {
                    continue;
                }
                csXyz angle;
                angle.x = 0;
                angle.y = 0;
                angle.z = 0;
                mTrapID[i] = fopAcM_createChild(PROC_Obj_Lv6TogeTrap, fopAcM_GetID(this), prm,
                                                &current.pos, fopAcM_GetRoomNo(this),
                                                &angle, &trap_scale, -1, NULL);
                trap_count++;
            }
        }
        mTrapCreate = false;
    }

    trap_scale.set(0.0f, 7.0f, 0.0f);
    pos.zero();
    csXyz angle;
    angle.y = 0;
    angle.z = 0;
    angle.x = 0;
    pos.y = 1708.0f;
    static s16 mBirthAngle01_dt[4] = {0x0000, 0x4000, 0x8000, 0xc000};
    static s16 mBirthAngle02_dt[3] = {0x0000, 0x5555, 0xaaaa};
    static f32 mBirthYpos02_dt[3] = {1150.0f, 350.0f, -450.0f};

    if (mBossPhase == 0) {
        int max = 6;
        if (mBackboneJoint < 2) {
            max = 4;
        }
        for (int i = 0; i < max; i++) {
            if (mBackboneJoint < 2) {
                angle.y = mBirthAngle01_dt[i];
            }
            if (mTrapID[i] != 0) {
                continue;
            }
            mTrapID[i] = fopAcM_createChild(PROC_Obj_Lv6TogeTrap, fopAcM_GetID(this), 0x27104dff,
                                            &pos, fopAcM_GetRoomNo(this), &angle, &trap_scale,
                                            -1, NULL);
            if (mBackboneJoint == 2) {
                angle.y += 0x2aaa;
            }
        }
    } else {
        pos.zero();
        if (health <= (int)l_HIO.mP2Health / 3) {
            prm = 0x271040ff;
            prm |= (int)l_HIO.mP2OuterWallTrapSpeed << 8;
            for (int i = 0; i < 3; i++) {
                for (int j = 0; j < 2; j++) {
                    int idx = (i << 1) + j;
                    if (mTrapID[idx] != 0) {
                        continue;
                    }
                    angle.y = mBirthAngle02_dt[i] + mBirthAngle01_dt[j * 2];
                    pos.y = mBirthYpos02_dt[i];
                    mTrapID[idx] = fopAcM_createChild(PROC_Obj_Lv6TogeTrap, fopAcM_GetID(this),
                                                      prm, &pos, fopAcM_GetRoomNo(this), &angle,
                                                      &trap_scale, -1, NULL);
                }
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::mCreateTrap(bool param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mCreateTrap__8daB_DS_cFb.s"
}
#pragma pop
#endif

/* 805CCEB4-805CD074 001D74 01C0+00 1/1 0/0 0/0 .text            mChangeVer2__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::mChangeVer2() {
    if (mBitSw != 0xff) {
        fopAcM_offSwitch(this, mBitSw);
    }
    field_0x7ec = 0.0f;
    shape_angle.x = 0;
    mBossPhase = 1;
    gravity = 0.0f;
    mDead = false;
    mHandAtLCyl.OffTgSetBit();
    mHandAtRCyl.OffTgSetBit();
    mHandAtLCyl.OffCoSetBit();
    mHandAtRCyl.OffCoSetBit();
    mHandAtLCyl.OffAtSetBit();
    mHandAtRCyl.OffAtSetBit();
    mWeakSph.OffTgSetBit();
    mWeakSph.OffCoSetBit();
    mWeakSph.OffAtSetBit();
    mWeakSph.OnTgNoHitMark();
    mWeakSph.OffTgShield();
    mWeakSph.OffTgNoConHit();
    mWeakSph.OnTgStopNoConHit();
    mWeakSph.SetTgHitMark(CcG_Tg_UNK_MARK_0);
    mBackboneCyl.OffTgSetBit();
    mBackboneCyl.OffCoSetBit();
    for (int i = 0; i < 5; i++) {
        mHeadSph[i].SetTgType(0xd8fbfdff);
        mHeadSph[i].SetTgHitMark(CcG_Tg_UNK_MARK_2);
        mHeadSph[i].OnTgShield();
        mHeadSph[i].OffTgIronBallRebound();
        mHeadSph[i].OffTgSpinnerReflect();
        mHeadSph[i].OnTgNoHitMark();
    }
    dComIfGs_onZoneSwitch(6, fopAcM_GetRoomNo(this));
    dComIfGs_onZoneSwitch(8, fopAcM_GetRoomNo(this));
    mIsOpeningDemo = true;
    mBackboneJoint = 0;
    field_0x560 = health = l_HIO.mP2Health;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::mChangeVer2() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mChangeVer2__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805CD074-805CD628 001F34 05B4+00 1/1 0/0 0/0 .text            damage_check__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with generics
void daB_DS_c::damage_check() {
    if (health <= 1 || mBossPhase == 100) {
        return;
    }

    if (cLib_calcTimer(&mDamageTimer) != 0) {
        return;
    }

    if (mHandAtRCyl.ChkTgHit()) {
        mDamageTimer = 8;
        mAtInfo.mpCollider = mHandAtRCyl.GetTgHitObj();
        HandHitSoundSet(false);
        if (mAction != ACT_OPENING_DEMO && mHandAtRCyl.GetTgHitObj()->ChkAtType(AT_TYPE_SPINNER)
            && (mAction != ACT_ETC_DAMAGE || mHitLocation != 0))
        {
            mAction = ACT_ETC_DAMAGE;
            mHitLocation = 0;
            mMode = 0;
        }
        mHandAtRCyl.ClrTgHit();
        return;
    }
    
    if (mHandAtLCyl.ChkTgHit()) {
        mDamageTimer = 8;
        mAtInfo.mpCollider = mHandAtLCyl.GetTgHitObj();
        HandHitSoundSet(true);
        if (mAction != ACT_OPENING_DEMO && mHandAtLCyl.GetTgHitObj()->ChkAtType(AT_TYPE_SPINNER)
            && (mAction != ACT_ETC_DAMAGE || mHitLocation != 1))
        {
            mAction = ACT_ETC_DAMAGE;
            mHitLocation = 1;
            mMode = 1;
        }
        mHandAtLCyl.ClrTgHit();
        return;
    }

    for (int i = 0; i < 18; i++) {
        if (mEtcSph[i].ChkTgHit()) {
            mDamageTimer = 8;
            mAtInfo.mpCollider = mEtcSph[i].GetTgHitObj();
            mSoundPos = *mEtcSph[i].GetTgHitPosP();
            def_se_set(&mSound, mAtInfo.mpCollider, 2, NULL);
            mEtcSph[i].ClrTgHit();
            return;
        }
    }

    for (int i = 0; i < 5; i++) {
        if (mHeadSph[i].ChkTgHit()) {
            mDamageTimer = 8;
            mAtInfo.mpCollider = mHeadSph[i].GetTgHitObj();
            mSoundPos = mHeadPos;
            def_se_set(&mSound, mAtInfo.mpCollider, 2, NULL);
            if (mAction != ACT_OPENING_DEMO && (mAction != ACT_ETC_DAMAGE || mHitLocation != 2)) {
                mAction = ACT_ETC_DAMAGE;
                mHitLocation = 2;
                mMode = 2;
            }
            mHeadSph[i].ClrTgHit();
            return;
        }
    }

    if (mWeakSph.ChkTgHit()) {
        mDamageTimer = 8;
        mAtInfo.mpCollider = mWeakSph.GetTgHitObj();
        mSoundPos = mHeadPos;
        def_se_set(&mSound, mAtInfo.mpCollider, 2, NULL);
        if (mAction != ACT_OPENING_DEMO && (mAction != ACT_ETC_DAMAGE || mHitLocation != 2)) {
            mAction = ACT_ETC_DAMAGE;
            mHitLocation = 2;
            mMode = 2;
        }
        mWeakSph.ClrTgHit();
        return;
    }

    if (mAction == ACT_OPENING_DEMO) {
        return;
    }

    daPy_getPlayerActorClass()->onBossRoomWait();
    mCcStts.Move();

    if (mBackboneCyl.ChkTgHit()) {
        mAtInfo.mpCollider = mBackboneCyl.GetTgHitObj();
        cXyz vec = current.pos - *mBackboneCyl.GetTgHitPosP();
        cXyz hit_pos = *mBackboneCyl.GetTgHitPosP();
        csXyz hit_angle;
        hit_angle.x = 0;
        hit_angle.y = vec.atan2sX_Z();
        hit_angle.z = 0;
        mSoundPos = current.pos;

        if (mBackboneCyl.GetTgHitObj()->ChkAtType(AT_TYPE_SPINNER)
            && daPy_getPlayerActorClass()->checkSpinnerTriggerAttack())
        {
            u8 se = static_cast<dCcD_GObjInf*>(mBackboneCyl.GetTgHitObj())->GetAtSe();
            mSound.startCollisionSE(dCcD_GObjInf::getHitSeID(se, 0), mAtInfo.field_0x18);
            dComIfGp_getVibration().StopQuake(0x4f);
            mBackboneCyl.SetTgHitMark(CcG_Tg_UNK_MARK_3);
            mHandAtLCyl.OffAtSetBit();
            mHandAtRCyl.OffAtSetBit();
            mHandAtLCyl.OffTgShield();
            mHandAtRCyl.OffTgShield();
            mActionTimer = 0;
            if (mBitSw3 != 0xff) {
                i_fopAcM_onSwitch(this, mBitSw3);
            }
            def_se_set(&mSound, mAtInfo.mpCollider, 0x1f, NULL);
            i_dComIfGp_setHitMark(3, this, &hit_pos, &hit_angle, NULL, 0);
            mDamageTimer = 50;
            setActionMode(ACT_DAMAGE, 0);
            if (mBackboneJoint >= 2) {
                Z2GetAudioMgr()->bgmStop(0x1e, 0);
            }
        } else {
            def_se_set(&mSound, mAtInfo.mpCollider, 2, NULL);
            i_dComIfGp_setHitMark(2, this, &hit_pos, &hit_angle, NULL, 0);
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::damage_check() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/damage_check__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DCAEC-805DCAF4 000098 0008+00 1/6 0/0 0/0 .rodata          @5154 */
SECTION_RODATA static u8 const lit_5154[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805DCAEC, &lit_5154);

/* 805CD628-805CD844 0024E8 021C+00 1/1 0/0 0/0 .text            neck_set__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::neck_set() {
    static f32 HeadAngleDt[3] = {-850.0f, -350.0f, -50.0f};
    cXyz vec;
    csXyz angle;
    angle.z = 0;
    angle.y = 0;
    angle.x = 0;

    if (mAction != ACT_OPENING_DEMO && mAction != ACT_DAMAGE) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        vec.x = player->current.pos.x - mHeadPos.x;
        vec.z = player->current.pos.z - mHeadPos.z;
        vec.y = player->current.pos.y - (mHeadPos.y + HeadAngleDt[mBackboneJoint]);

        angle.x = -vec.atan2sY_XZ() * 2.0f;
        if (mAction == ACT_BREATH_ATTACK) {
            angle.x = mBh2AttackAngleF;
            angle.x += (s16)(mBackboneJoint * 200);
        }
        if (angle.x > 0x2000) {
            angle.x = 0x2000;
        } else if (angle.x < -0x400) {
            angle.x = -0x400;
        }
        cLib_addCalcAngleS2(&mHeadAngle.x, -angle.x, 20, 0x100);

        angle.y = shape_angle.y - vec.atan2sX_Z();
        if (angle.y > 0x3000) {
            angle.y = 0x3000;
        } else if (angle.y < -0x3000) {
            angle.y = -0x3000;
        }
        if (abs((s16)(mHeadAngle.y - angle.y)) > 0x100) {
            if (abs((s16)(fopAcM_searchPlayerAngleY(this) - shape_angle.y)) < 0x4000
                && fopAcM_searchPlayerDistance(this) > l_HIO.mNoSearchRange)
            {
                cLib_addCalcAngleS2(&mHeadAngle.y, angle.y, 20, 0x200);
            } else {
                mHeadAngle_Clear();
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::neck_set() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/neck_set__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805CD844-805CD8D8 002704 0094+00 1/1 0/0 0/0 .text            mCutTypeCheck__8daB_DS_cFv */
#ifdef NONMATCHING
bool daB_DS_c::mCutTypeCheck() {
    u8 cut_type = daPy_getPlayerActorClass()->getCutType();
    if (cut_type == daPy_py_c::CUT_TYPE_TURN_RIGHT || cut_type == daPy_py_c::CUT_TYPE_JUMP
        || cut_type == daPy_py_c::CUT_TYPE_TWIRL || cut_type == daPy_py_c::CUT_TYPE_TURN_LEFT)
    {
        return true;
    }
    if (cut_type == daPy_py_c::CUT_TYPE_LARGE_JUMP
        || cut_type == daPy_py_c::CUT_TYPE_LARGE_JUMP_FINISH
        || cut_type == daPy_py_c::CUT_TYPE_LARGE_TURN_LEFT
        || cut_type == daPy_py_c::CUT_TYPE_LARGE_TURN_RIGHT
        || cut_type == daPy_py_c::CUT_TYPE_MORTAL_DRAW_A
        || cut_type == daPy_py_c::CUT_TYPE_MORTAL_DRAW_B)
    {
        return true;
    }
    if (cut_type == daPy_py_c::CUT_TYPE_HEAD_JUMP || cut_type == daPy_py_c::CUT_TYPE_TWIRL) {
        return true;
    }
    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daB_DS_c::mCutTypeCheck() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mCutTypeCheck__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805CD8D8-805CDA08 002798 0130+00 5/5 0/0 0/0 .text            startDemoCheck__8daB_DS_cFv */
#ifdef NONMATCHING
// matches but puts ~cXyz in the wrong place
bool daB_DS_c::startDemoCheck() {
    camera_class* camera = dComIfGp_getCamera(i_dComIfGp_getPlayerCameraID(0));
    if (daPy_py_c::i_checkNowWolf()) {
        return false;
    }
    if (!eventInfo.checkCommandDemoAccrpt()) {
        fopAcM_orderPotentialEvent(this, 2, 0xffff, 0);
        eventInfo.i_onCondition(2);
        mCameraEye = dCam_getBody()->Center();
        mCameraCenter = dCam_getBody()->Eye();
        mCameraFovy = dCam_getBody()->Fovy();
        return false;
    } else {
        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);
        daPy_getPlayerActorClass()->i_changeOriginalDemo();
        return true;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daB_DS_c::startDemoCheck() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/startDemoCheck__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805CDA08-805CDA44 0028C8 003C+00 1/1 0/0 0/0 .text            setYoMessage__8daB_DS_cFi */
void daB_DS_c::setYoMessage(int i_msgIdx) {
    mMsgIdx = i_msgIdx;
    mMsgPcID = fopMsgM_messageSet(i_msgIdx, 1000);
}

/* 805CDA44-805CDAC0 002904 007C+00 1/1 0/0 0/0 .text            doYoMessage__8daB_DS_cFv */
bool daB_DS_c::doYoMessage() {
    if (mpMsg != NULL) {
        if (mpMsg->mMode == 0xe) {
            mpMsg->mMode = 0x10;
        } else if (mpMsg->mMode == 0x12) {
            mpMsg->mMode = 0x13;
            mMsgPcID = 0xffffffff;
            return true;
        }
    } else {
        mpMsg = fopMsgM_SearchByID(mMsgPcID);
    }
    return false;
}

/* ############################################################################################## */
/* 805DCAF4-805DCB74 0000A0 0080+00 0/0 0/0 0/0 .rodata          KIDOU_EFF_DT$5303 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const KIDOU_EFF_DT[128] = {
    0x8B, 0xC6, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x8B, 0xC7, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08,
    0x8B, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x8B, 0xC9, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x8B, 0xCA, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B, 0x8B, 0xCB, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B,
    0x8B, 0xCC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x8B, 0xCD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C,
    0x8B, 0xCE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x8B, 0xCF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x8B, 0xD0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x8B, 0xD1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B,
    0x8B, 0xD2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x8B, 0xD3, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E,
    0x8B, 0xD4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x8B, 0xD5, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
};
COMPILER_STRIP_GATE(0x805DCAF4, &KIDOU_EFF_DT);
#pragma pop

/* 805DCB74-805DCB78 000120 0004+00 0/2 0/0 0/0 .rodata          @5880 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5880 = 1800.0f;
COMPILER_STRIP_GATE(0x805DCB74, &lit_5880);
#pragma pop

/* 805DCB78-805DCB7C 000124 0004+00 0/1 0/0 0/0 .rodata          @5881 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5881 = 4900.0f;
COMPILER_STRIP_GATE(0x805DCB78, &lit_5881);
#pragma pop

/* 805DCB7C-805DCB80 000128 0004+00 0/1 0/0 0/0 .rodata          @5882 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5882 = 342.0f;
COMPILER_STRIP_GATE(0x805DCB7C, &lit_5882);
#pragma pop

/* 805DCB80-805DCB84 00012C 0004+00 0/1 0/0 0/0 .rodata          @5883 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5883 = 690.0f;
COMPILER_STRIP_GATE(0x805DCB80, &lit_5883);
#pragma pop

/* 805DCB84-805DCB88 000130 0004+00 0/1 0/0 0/0 .rodata          @5884 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5884 = 1753.0f;
COMPILER_STRIP_GATE(0x805DCB84, &lit_5884);
#pragma pop

/* 805DCB88-805DCB8C 000134 0004+00 0/3 0/0 0/0 .rodata          @5885 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5885 = -20.0f;
COMPILER_STRIP_GATE(0x805DCB88, &lit_5885);
#pragma pop

/* 805DCB8C-805DCB90 000138 0004+00 0/1 0/0 0/0 .rodata          @5886 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5886 = 1270.0f;
COMPILER_STRIP_GATE(0x805DCB8C, &lit_5886);
#pragma pop

/* 805DCB90-805DCB94 00013C 0004+00 0/1 0/0 0/0 .rodata          @5887 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5887 = 3083.0f;
COMPILER_STRIP_GATE(0x805DCB90, &lit_5887);
#pragma pop

/* 805DCB94-805DCB98 000140 0004+00 0/1 0/0 0/0 .rodata          @5888 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5888 = 1910.0f;
COMPILER_STRIP_GATE(0x805DCB94, &lit_5888);
#pragma pop

/* 805DCB98-805DCB9C 000144 0004+00 0/1 0/0 0/0 .rodata          @5889 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5889 = 4935.0f;
COMPILER_STRIP_GATE(0x805DCB98, &lit_5889);
#pragma pop

/* 805DCB9C-805DCBA0 000148 0004+00 0/1 0/0 0/0 .rodata          @5890 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5890 = -5.0f;
COMPILER_STRIP_GATE(0x805DCB9C, &lit_5890);
#pragma pop

/* 805DCBA0-805DCBA4 00014C 0004+00 0/1 0/0 0/0 .rodata          @5891 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5891 = 2011.0f;
COMPILER_STRIP_GATE(0x805DCBA0, &lit_5891);
#pragma pop

/* 805DCBA4-805DCBA8 000150 0004+00 0/1 0/0 0/0 .rodata          @5892 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5892 = 4664.0f;
COMPILER_STRIP_GATE(0x805DCBA4, &lit_5892);
#pragma pop

/* 805DCBA8-805DCBAC 000154 0004+00 0/1 0/0 0/0 .rodata          @5893 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5893 = 615.0f;
COMPILER_STRIP_GATE(0x805DCBA8, &lit_5893);
#pragma pop

/* 805DCBAC-805DCBB0 000158 0004+00 0/2 0/0 0/0 .rodata          @5894 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5894 = 2410.0f;
COMPILER_STRIP_GATE(0x805DCBAC, &lit_5894);
#pragma pop

/* 805DCBB0-805DCBB4 00015C 0004+00 0/1 0/0 0/0 .rodata          @5895 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5895 = 2140.0f;
COMPILER_STRIP_GATE(0x805DCBB0, &lit_5895);
#pragma pop

/* 805DCBB4-805DCBB8 000160 0004+00 0/1 0/0 0/0 .rodata          @5896 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5896 = 131.0f;
COMPILER_STRIP_GATE(0x805DCBB4, &lit_5896);
#pragma pop

/* 805DCBB8-805DCBBC 000164 0004+00 0/1 0/0 0/0 .rodata          @5897 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5897 = 1105.0f;
COMPILER_STRIP_GATE(0x805DCBB8, &lit_5897);
#pragma pop

/* 805DCBBC-805DCBC0 000168 0004+00 0/1 0/0 0/0 .rodata          @5898 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5898 = 1092.0f;
COMPILER_STRIP_GATE(0x805DCBBC, &lit_5898);
#pragma pop

/* 805DCBC0-805DCBC4 00016C 0004+00 0/1 0/0 0/0 .rodata          @5899 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5899 = -110.0f;
COMPILER_STRIP_GATE(0x805DCBC0, &lit_5899);
#pragma pop

/* 805DCBC4-805DCBC8 000170 0004+00 0/2 0/0 0/0 .rodata          @5900 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5900 = 1160.0f;
COMPILER_STRIP_GATE(0x805DCBC4, &lit_5900);
#pragma pop

/* 805DCBC8-805DCBCC 000174 0004+00 0/1 0/0 0/0 .rodata          @5901 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5901 = 1200.0f;
COMPILER_STRIP_GATE(0x805DCBC8, &lit_5901);
#pragma pop

/* 805DCBCC-805DCBD0 000178 0004+00 0/4 0/0 0/0 .rodata          @5902 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5902 = -50.0f;
COMPILER_STRIP_GATE(0x805DCBCC, &lit_5902);
#pragma pop

/* 805DCBD0-805DCBD4 00017C 0004+00 0/1 0/0 0/0 .rodata          @5903 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5903 = 1095.0f;
COMPILER_STRIP_GATE(0x805DCBD0, &lit_5903);
#pragma pop

/* 805DCBD4-805DCBD8 000180 0004+00 0/1 0/0 0/0 .rodata          @5904 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5904 = 1300.0f;
COMPILER_STRIP_GATE(0x805DCBD4, &lit_5904);
#pragma pop

/* 805DCBD8-805DCBDC 000184 0004+00 0/1 0/0 0/0 .rodata          @5905 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5905 = -85.0f;
COMPILER_STRIP_GATE(0x805DCBD8, &lit_5905);
#pragma pop

/* 805DCBDC-805DCBE0 000188 0004+00 0/1 0/0 0/0 .rodata          @5906 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5906 = 1150.0f;
COMPILER_STRIP_GATE(0x805DCBDC, &lit_5906);
#pragma pop

/* 805DCBE0-805DCBE4 00018C 0004+00 0/2 0/0 0/0 .rodata          @5907 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5907 = 1250.0f;
COMPILER_STRIP_GATE(0x805DCBE0, &lit_5907);
#pragma pop

/* 805DCBE4-805DCBE8 000190 0004+00 0/15 0/0 0/0 .rodata          @5908 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5908 = 10.0f;
COMPILER_STRIP_GATE(0x805DCBE4, &lit_5908);
#pragma pop

/* 805DCBE8-805DCBEC 000194 0004+00 0/1 0/0 0/0 .rodata          @5909 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5909 = 1145.0f;
COMPILER_STRIP_GATE(0x805DCBE8, &lit_5909);
#pragma pop

/* 805DCBEC-805DCBF0 000198 0004+00 0/1 0/0 0/0 .rodata          @5910 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5910 = 1420.0f;
COMPILER_STRIP_GATE(0x805DCBEC, &lit_5910);
#pragma pop

/* 805DCBF0-805DCBF4 00019C 0004+00 0/1 0/0 0/0 .rodata          @5911 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5911 = 1060.0f;
COMPILER_STRIP_GATE(0x805DCBF0, &lit_5911);
#pragma pop

/* 805DCBF4-805DCBF8 0001A0 0004+00 0/3 0/0 0/0 .rodata          @5912 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5912 = 45.0f;
COMPILER_STRIP_GATE(0x805DCBF4, &lit_5912);
#pragma pop

/* 805DCBF8-805DCBFC 0001A4 0004+00 0/1 0/0 0/0 .rodata          @5913 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5913 = 1065.0f;
COMPILER_STRIP_GATE(0x805DCBF8, &lit_5913);
#pragma pop

/* 805DCBFC-805DCC00 0001A8 0004+00 0/1 0/0 0/0 .rodata          @5914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5914 = 1475.0f;
COMPILER_STRIP_GATE(0x805DCBFC, &lit_5914);
#pragma pop

/* 805DCC00-805DCC04 0001AC 0004+00 0/1 0/0 0/0 .rodata          @5915 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5915 = 235.0f;
COMPILER_STRIP_GATE(0x805DCC00, &lit_5915);
#pragma pop

/* 805DCC04-805DCC08 0001B0 0004+00 0/1 0/0 0/0 .rodata          @5916 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5916 = 1110.0f;
COMPILER_STRIP_GATE(0x805DCC04, &lit_5916);
#pragma pop

/* 805DCC08-805DCC0C 0001B4 0004+00 0/1 0/0 0/0 .rodata          @5917 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5917 = 1835.0f;
COMPILER_STRIP_GATE(0x805DCC08, &lit_5917);
#pragma pop

/* 805DCC0C-805DCC10 0001B8 0004+00 0/1 0/0 0/0 .rodata          @5918 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5918 = 205.0f;
COMPILER_STRIP_GATE(0x805DCC0C, &lit_5918);
#pragma pop

/* 805DCC10-805DCC14 0001BC 0004+00 0/1 0/0 0/0 .rodata          @5919 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5919 = 795.0f;
COMPILER_STRIP_GATE(0x805DCC10, &lit_5919);
#pragma pop

/* 805DCC14-805DCC18 0001C0 0004+00 0/2 0/0 0/0 .rodata          @5920 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5920 = 1770.0f;
COMPILER_STRIP_GATE(0x805DCC14, &lit_5920);
#pragma pop

/* 805DCC18-805DCC1C 0001C4 0004+00 0/1 0/0 0/0 .rodata          @5921 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5921 = 905.0f;
COMPILER_STRIP_GATE(0x805DCC18, &lit_5921);
#pragma pop

/* 805DCC1C-805DCC20 0001C8 0004+00 0/2 0/0 0/0 .rodata          @5922 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5922 = 1480.0f;
COMPILER_STRIP_GATE(0x805DCC1C, &lit_5922);
#pragma pop

/* 805DCC20-805DCC24 0001CC 0004+00 0/2 0/0 0/0 .rodata          @5923 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5923 = 650.0f;
COMPILER_STRIP_GATE(0x805DCC20, &lit_5923);
#pragma pop

/* 805DCC24-805DCC28 0001D0 0004+00 0/1 0/0 0/0 .rodata          @5924 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5924 = 2350.0f;
COMPILER_STRIP_GATE(0x805DCC24, &lit_5924);
#pragma pop

/* 805DCC28-805DCC2C 0001D4 0004+00 0/1 0/0 0/0 .rodata          @5925 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5925 = 320.0f;
COMPILER_STRIP_GATE(0x805DCC28, &lit_5925);
#pragma pop

/* 805DCC2C-805DCC30 0001D8 0004+00 0/1 0/0 0/0 .rodata          @5926 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5926 = 730.0f;
COMPILER_STRIP_GATE(0x805DCC2C, &lit_5926);
#pragma pop

/* 805DCC30-805DCC34 0001DC 0004+00 0/1 0/0 0/0 .rodata          @5927 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5927 = -235.0f;
COMPILER_STRIP_GATE(0x805DCC30, &lit_5927);
#pragma pop

/* 805DCC34-805DCC38 0001E0 0004+00 0/1 0/0 0/0 .rodata          @5928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5928 = 1345.0f;
COMPILER_STRIP_GATE(0x805DCC34, &lit_5928);
#pragma pop

/* 805DCC38-805DCC3C 0001E4 0004+00 0/1 0/0 0/0 .rodata          @5929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5929 = 2090.0f;
COMPILER_STRIP_GATE(0x805DCC38, &lit_5929);
#pragma pop

/* 805DCC3C-805DCC40 0001E8 0004+00 0/2 0/0 0/0 .rodata          @5930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5930 = 1980.0f;
COMPILER_STRIP_GATE(0x805DCC3C, &lit_5930);
#pragma pop

/* 805DCC40-805DCC44 0001EC 0004+00 0/1 0/0 0/0 .rodata          @5931 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5931 = 5300.0f;
COMPILER_STRIP_GATE(0x805DCC40, &lit_5931);
#pragma pop

/* 805DCC44-805DCC48 0001F0 0004+00 0/1 0/0 0/0 .rodata          @5932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5932 = 1934.0f;
COMPILER_STRIP_GATE(0x805DCC44, &lit_5932);
#pragma pop

/* 805DCC48-805DCC4C 0001F4 0004+00 0/1 0/0 0/0 .rodata          @5933 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5933 = 5036.0f;
COMPILER_STRIP_GATE(0x805DCC48, &lit_5933);
#pragma pop

/* 805DCC4C-805DCC50 0001F8 0004+00 0/1 0/0 0/0 .rodata          @5934 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5934 = 655.0f;
COMPILER_STRIP_GATE(0x805DCC4C, &lit_5934);
#pragma pop

/* 805DCC50-805DCC54 0001FC 0004+00 0/1 0/0 0/0 .rodata          @5935 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5935 = 2810.0f;
COMPILER_STRIP_GATE(0x805DCC50, &lit_5935);
#pragma pop

/* 805DCC54-805DCC58 000200 0004+00 0/1 0/0 0/0 .rodata          @5936 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5936 = 2360.0f;
COMPILER_STRIP_GATE(0x805DCC54, &lit_5936);
#pragma pop

/* 805DCC58-805DCC5C 000204 0004+00 0/1 0/0 0/0 .rodata          @5937 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5937 = 181.0f;
COMPILER_STRIP_GATE(0x805DCC58, &lit_5937);
#pragma pop

/* 805DCC5C-805DCC60 000208 0004+00 0/1 0/0 0/0 .rodata          @5938 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5938 = 1190.0f;
COMPILER_STRIP_GATE(0x805DCC5C, &lit_5938);
#pragma pop

/* 805DCC60-805DCC64 00020C 0004+00 0/1 0/0 0/0 .rodata          @5939 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5939 = 844.0f;
COMPILER_STRIP_GATE(0x805DCC60, &lit_5939);
#pragma pop

/* 805DCC64-805DCC68 000210 0004+00 0/1 0/0 0/0 .rodata          @5940 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5940 = 25.0f;
COMPILER_STRIP_GATE(0x805DCC64, &lit_5940);
#pragma pop

/* 805DCC68-805DCC6C 000214 0004+00 0/1 0/0 0/0 .rodata          @5941 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5941 = 1125.0f;
COMPILER_STRIP_GATE(0x805DCC68, &lit_5941);
#pragma pop

/* 805DCC6C-805DCC70 000218 0004+00 0/1 0/0 0/0 .rodata          @5942 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5942 = 1450.0f;
COMPILER_STRIP_GATE(0x805DCC6C, &lit_5942);
#pragma pop

/* 805DCC70-805DCC74 00021C 0004+00 0/1 0/0 0/0 .rodata          @5943 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5943 = 75.0f;
COMPILER_STRIP_GATE(0x805DCC70, &lit_5943);
#pragma pop

/* 805DCC74-805DCC78 000220 0004+00 0/1 0/0 0/0 .rodata          @5944 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5944 = 1010.0f;
COMPILER_STRIP_GATE(0x805DCC74, &lit_5944);
#pragma pop

/* 805DCC78-805DCC7C 000224 0004+00 0/1 0/0 0/0 .rodata          @5945 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5945 = 1540.0f;
COMPILER_STRIP_GATE(0x805DCC78, &lit_5945);
#pragma pop

/* 805DCC7C-805DCC80 000228 0004+00 0/3 0/0 0/0 .rodata          @5946 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5946 = 40.0f;
COMPILER_STRIP_GATE(0x805DCC7C, &lit_5946);
#pragma pop

/* 805DCC80-805DCC84 00022C 0004+00 0/1 0/0 0/0 .rodata          @5947 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5947 = 1030.0f;
COMPILER_STRIP_GATE(0x805DCC80, &lit_5947);
#pragma pop

/* 805DCC84-805DCC88 000230 0004+00 0/2 0/0 0/0 .rodata          @5948 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5948 = 150.0f;
COMPILER_STRIP_GATE(0x805DCC84, &lit_5948);
#pragma pop

/* 805DCC88-805DCC8C 000234 0004+00 0/1 0/0 0/0 .rodata          @5949 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5949 = 1115.0f;
COMPILER_STRIP_GATE(0x805DCC88, &lit_5949);
#pragma pop

/* 805DCC8C-805DCC90 000238 0004+00 0/1 0/0 0/0 .rodata          @5950 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5950 = 1670.0f;
COMPILER_STRIP_GATE(0x805DCC8C, &lit_5950);
#pragma pop

/* 805DCC90-805DCC94 00023C 0004+00 0/1 0/0 0/0 .rodata          @5951 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5951 = 160.0f;
COMPILER_STRIP_GATE(0x805DCC90, &lit_5951);
#pragma pop

/* 805DCC94-805DCC98 000240 0004+00 0/1 0/0 0/0 .rodata          @5952 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5952 = 1685.0f;
COMPILER_STRIP_GATE(0x805DCC94, &lit_5952);
#pragma pop

/* 805DCC98-805DCC9C 000244 0004+00 0/3 0/0 0/0 .rodata          @5953 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5953 = 180.0f;
COMPILER_STRIP_GATE(0x805DCC98, &lit_5953);
#pragma pop

/* 805DCC9C-805DCCA0 000248 0004+00 0/1 0/0 0/0 .rodata          @5954 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5954 = 1730.0f;
COMPILER_STRIP_GATE(0x805DCC9C, &lit_5954);
#pragma pop

/* 805DCCA0-805DCCA4 00024C 0004+00 0/2 0/0 0/0 .rodata          @5955 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5955 = 360.0f;
COMPILER_STRIP_GATE(0x805DCCA0, &lit_5955);
#pragma pop

/* 805DCCA4-805DCCA8 000250 0004+00 0/1 0/0 0/0 .rodata          @5956 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5956 = 1220.0f;
COMPILER_STRIP_GATE(0x805DCCA4, &lit_5956);
#pragma pop

/* 805DCCA8-805DCCAC 000254 0004+00 0/1 0/0 0/0 .rodata          @5957 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5957 = 2080.0f;
COMPILER_STRIP_GATE(0x805DCCA8, &lit_5957);
#pragma pop

/* 805DCCAC-805DCCB0 000258 0004+00 0/1 0/0 0/0 .rodata          @5958 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5958 = 340.0f;
COMPILER_STRIP_GATE(0x805DCCAC, &lit_5958);
#pragma pop

/* 805DCCB0-805DCCB4 00025C 0004+00 0/1 0/0 0/0 .rodata          @5959 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5959 = 755.0f;
COMPILER_STRIP_GATE(0x805DCCB0, &lit_5959);
#pragma pop

/* 805DCCB4-805DCCB8 000260 0004+00 0/1 0/0 0/0 .rodata          @5960 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5960 = 2020.0f;
COMPILER_STRIP_GATE(0x805DCCB4, &lit_5960);
#pragma pop

/* 805DCCB8-805DCCBC 000264 0004+00 0/1 0/0 0/0 .rodata          @5961 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5961 = 170.0f;
COMPILER_STRIP_GATE(0x805DCCB8, &lit_5961);
#pragma pop

/* 805DCCBC-805DCCC0 000268 0004+00 0/1 0/0 0/0 .rodata          @5962 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5962 = 1710.0f;
COMPILER_STRIP_GATE(0x805DCCBC, &lit_5962);
#pragma pop

/* 805DCCC0-805DCCC4 00026C 0004+00 0/1 0/0 0/0 .rodata          @5963 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5963 = 695.0f;
COMPILER_STRIP_GATE(0x805DCCC0, &lit_5963);
#pragma pop

/* 805DCCC4-805DCCC8 000270 0004+00 0/1 0/0 0/0 .rodata          @5964 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5964 = 3200.0f;
COMPILER_STRIP_GATE(0x805DCCC4, &lit_5964);
#pragma pop

/* 805DCCC8-805DCCCC 000274 0004+00 0/1 0/0 0/0 .rodata          @5965 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5965 = 2570.0f;
COMPILER_STRIP_GATE(0x805DCCC8, &lit_5965);
#pragma pop

/* 805DCCCC-805DCCD0 000278 0004+00 0/3 0/0 0/0 .rodata          @5966 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5966 = 600.0f;
COMPILER_STRIP_GATE(0x805DCCCC, &lit_5966);
#pragma pop

/* 805DCCD0-805DCCD4 00027C 0004+00 0/1 0/0 0/0 .rodata          @5967 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5967 = 710.0f;
COMPILER_STRIP_GATE(0x805DCCD0, &lit_5967);
#pragma pop

/* 805DCCD4-805DCCD8 000280 0004+00 0/1 0/0 0/0 .rodata          @5968 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5968 = 125.0f;
COMPILER_STRIP_GATE(0x805DCCD4, &lit_5968);
#pragma pop

/* 805DCCD8-805DCCDC 000284 0004+00 0/2 0/0 0/0 .rodata          @5969 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5969 = 3320.0f;
COMPILER_STRIP_GATE(0x805DCCD8, &lit_5969);
#pragma pop

/* 805DCCDC-805DCCE0 000288 0004+00 0/1 0/0 0/0 .rodata          @5970 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5970 = 4700.0f;
COMPILER_STRIP_GATE(0x805DCCDC, &lit_5970);
#pragma pop

/* 805DD22C-805DD22C 0007D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_805DD231 = "force_start";
SECTION_DEAD static char const* const stringBase_805DD23D = "force_end";
#pragma pop

#ifndef NONMATCHING
/* 805DDB14-805DDB24 0000AC 000C+04 0/1 0/0 0/0 .bss             @5249 */
#pragma push
#pragma force_active on
static u8 lit_5249[12 + 4 /* padding */];
#pragma pop

/* 805DDB24-805DDB30 0000BC 000C+00 0/1 0/0 0/0 .bss             @5252 */
#pragma push
#pragma force_active on
static u8 lit_5252[12];
#pragma pop

/* 805DDB30-805DDB3C 0000C8 000C+00 0/1 0/0 0/0 .bss             @5253 */
#pragma push
#pragma force_active on
static u8 lit_5253[12];
#pragma pop

/* 805DDB3C-805DDB60 0000D4 0024+00 0/1 0/0 0/0 .bss             mOpPlayerDt$5248 */
#pragma push
#pragma force_active on
static u8 mOpPlayerDt[36];
#pragma pop

/* 805DDB60-805DDB70 0000F8 000C+04 0/1 0/0 0/0 .bss             @5255 */
#pragma push
#pragma force_active on
static u8 lit_5255[12 + 4 /* padding */];
#pragma pop

/* 805DDB70-805DDB7C 000108 000C+00 0/1 0/0 0/0 .bss             @5258 */
#pragma push
#pragma force_active on
static u8 lit_5258[12];
#pragma pop

/* 805DDB7C-805DDB88 000114 000C+00 0/1 0/0 0/0 .bss             @5259 */
#pragma push
#pragma force_active on
static u8 lit_5259[12];
#pragma pop

/* 805DDB88-805DDB94 000120 000C+00 0/1 0/0 0/0 .bss             @5260 */
#pragma push
#pragma force_active on
static u8 lit_5260[12];
#pragma pop

/* 805DDB94-805DDBA0 00012C 000C+00 0/1 0/0 0/0 .bss             @5261 */
#pragma push
#pragma force_active on
static u8 lit_5261[12];
#pragma pop

/* 805DDBA0-805DDBAC 000138 000C+00 0/1 0/0 0/0 .bss             @5262 */
#pragma push
#pragma force_active on
static u8 lit_5262[12];
#pragma pop

/* 805DDBAC-805DDBB8 000144 000C+00 0/1 0/0 0/0 .bss             @5263 */
#pragma push
#pragma force_active on
static u8 lit_5263[12];
#pragma pop

/* 805DDBB8-805DDBC4 000150 000C+00 0/1 0/0 0/0 .bss             @5264 */
#pragma push
#pragma force_active on
static u8 lit_5264[12];
#pragma pop

/* 805DDBC4-805DDBD0 00015C 000C+00 0/1 0/0 0/0 .bss             @5265 */
#pragma push
#pragma force_active on
static u8 lit_5265[12];
#pragma pop

/* 805DDBD0-805DDBDC 000168 000C+00 0/1 0/0 0/0 .bss             @5266 */
#pragma push
#pragma force_active on
static u8 lit_5266[12];
#pragma pop

/* 805DDBDC-805DDBE8 000174 000C+00 0/1 0/0 0/0 .bss             @5267 */
#pragma push
#pragma force_active on
static u8 lit_5267[12];
#pragma pop

/* 805DDBE8-805DDBF4 000180 000C+00 0/1 0/0 0/0 .bss             @5268 */
#pragma push
#pragma force_active on
static u8 lit_5268[12];
#pragma pop

/* 805DDBF4-805DDC00 00018C 000C+00 0/1 0/0 0/0 .bss             @5269 */
#pragma push
#pragma force_active on
static u8 lit_5269[12];
#pragma pop

/* 805DDC00-805DDC0C 000198 000C+00 0/1 0/0 0/0 .bss             @5270 */
#pragma push
#pragma force_active on
static u8 lit_5270[12];
#pragma pop

/* 805DDC0C-805DDC18 0001A4 000C+00 0/1 0/0 0/0 .bss             @5271 */
#pragma push
#pragma force_active on
static u8 lit_5271[12];
#pragma pop

/* 805DDC18-805DDCCC 0001B0 00B4+00 0/1 0/0 0/0 .bss             mOpCenterDt$5254 */
#pragma push
#pragma force_active on
static u8 mOpCenterDt[180];
#pragma pop

/* 805DDCCC-805DDCDC 000264 000C+04 0/1 0/0 0/0 .bss             @5273 */
#pragma push
#pragma force_active on
static u8 lit_5273[12 + 4 /* padding */];
#pragma pop

/* 805DDCDC-805DDCE8 000274 000C+00 0/1 0/0 0/0 .bss             @5276 */
#pragma push
#pragma force_active on
static u8 lit_5276[12];
#pragma pop

/* 805DDCE8-805DDD00 000280 0018+00 0/1 0/0 0/0 .bss             mOpCenterBodyDt$5272 */
#pragma push
#pragma force_active on
static u8 mOpCenterBodyDt[24];
#pragma pop

/* 805DDD00-805DDD10 000298 000C+04 0/1 0/0 0/0 .bss             @5278 */
#pragma push
#pragma force_active on
static u8 lit_5278[12 + 4 /* padding */];
#pragma pop

/* 805DDD10-805DDD1C 0002A8 000C+00 0/1 0/0 0/0 .bss             @5281 */
#pragma push
#pragma force_active on
static u8 lit_5281[12];
#pragma pop

/* 805DDD1C-805DDD28 0002B4 000C+00 0/1 0/0 0/0 .bss             @5282 */
#pragma push
#pragma force_active on
static u8 lit_5282[12];
#pragma pop

/* 805DDD28-805DDD34 0002C0 000C+00 0/1 0/0 0/0 .bss             @5283 */
#pragma push
#pragma force_active on
static u8 lit_5283[12];
#pragma pop

/* 805DDD34-805DDD40 0002CC 000C+00 0/1 0/0 0/0 .bss             @5284 */
#pragma push
#pragma force_active on
static u8 lit_5284[12];
#pragma pop

/* 805DDD40-805DDD4C 0002D8 000C+00 0/1 0/0 0/0 .bss             @5285 */
#pragma push
#pragma force_active on
static u8 lit_5285[12];
#pragma pop

/* 805DDD4C-805DDD58 0002E4 000C+00 0/1 0/0 0/0 .bss             @5286 */
#pragma push
#pragma force_active on
static u8 lit_5286[12];
#pragma pop

/* 805DDD58-805DDD64 0002F0 000C+00 0/1 0/0 0/0 .bss             @5287 */
#pragma push
#pragma force_active on
static u8 lit_5287[12];
#pragma pop

/* 805DDD64-805DDD70 0002FC 000C+00 0/1 0/0 0/0 .bss             @5288 */
#pragma push
#pragma force_active on
static u8 lit_5288[12];
#pragma pop

/* 805DDD70-805DDD7C 000308 000C+00 0/1 0/0 0/0 .bss             @5289 */
#pragma push
#pragma force_active on
static u8 lit_5289[12];
#pragma pop

/* 805DDD7C-805DDD88 000314 000C+00 0/1 0/0 0/0 .bss             @5290 */
#pragma push
#pragma force_active on
static u8 lit_5290[12];
#pragma pop

/* 805DDD88-805DDD94 000320 000C+00 0/1 0/0 0/0 .bss             @5291 */
#pragma push
#pragma force_active on
static u8 lit_5291[12];
#pragma pop

/* 805DDD94-805DDDA0 00032C 000C+00 0/1 0/0 0/0 .bss             @5292 */
#pragma push
#pragma force_active on
static u8 lit_5292[12];
#pragma pop

/* 805DDDA0-805DDDAC 000338 000C+00 0/1 0/0 0/0 .bss             @5293 */
#pragma push
#pragma force_active on
static u8 lit_5293[12];
#pragma pop

/* 805DDDAC-805DDDB8 000344 000C+00 0/1 0/0 0/0 .bss             @5294 */
#pragma push
#pragma force_active on
static u8 lit_5294[12];
#pragma pop

/* 805DDDB8-805DDE6C 000350 00B4+00 0/1 0/0 0/0 .bss             mOpEyeDt$5277 */
#pragma push
#pragma force_active on
static u8 mOpEyeDt[180];
#pragma pop

/* 805DDE6C-805DDE7C 000404 000C+04 0/1 0/0 0/0 .bss             @5296 */
#pragma push
#pragma force_active on
static u8 lit_5296[12 + 4 /* padding */];
#pragma pop

/* 805DDE7C-805DDE88 000414 000C+00 0/1 0/0 0/0 .bss             @5299 */
#pragma push
#pragma force_active on
static u8 lit_5299[12];
#pragma pop

/* 805DDE88-805DDEA0 000420 0018+00 0/1 0/0 0/0 .bss             mOpEyeBodyDt$5295 */
#pragma push
#pragma force_active on
static u8 mOpEyeBodyDt[24];
#pragma pop
#endif

/* 805CDAC0-805CFA08 002980 1F48+00 2/1 0/0 0/0 .text            executeOpeningDemo__8daB_DS_cFv */
#ifdef NONMATCHING
// order of loading data/bss, and checkNowWolf not getting inlined
void daB_DS_c::executeOpeningDemo() {
    camera_class* camera = dComIfGp_getCamera(i_dComIfGp_getPlayerCameraID(0));
    daPy_py_c* player = daPy_getPlayerActorClass();
    dBgS_GndChk gnd_chk;
    cXyz vec1, vec2, vec3, vec4, vec5;
    csXyz particle_angle;
    vec3.zero();
    vec4.zero();

    static cXyz mOpPlayerDt[3] = {
        cXyz(0.0f, 1800.0f, 4900.0f),
        cXyz(342.0f, 690.0f, 1753.0f),
        cXyz(-20.0f, 1270.0f, 3083.0f),
    };

    static cXyz mOpCenterDt[15] = {
        cXyz(0.0f, 1910.0f, 4935.0f),
        cXyz(-5.0f, 2011.0f, 4664.0f),
        cXyz(615.0f, 2410.0f, 2140.0f),
        cXyz(131.0f, 1105.0f, 1092.0f),
        cXyz(-110.0f, 1160.0f, 1200.0f),
        cXyz(-50.0f, 1095.0f, 1300.0f),
        cXyz(-85.0f, 1150.0f, 1250.0f),
        cXyz(10.0f, 1145.0f, 1420.0f),
        cXyz(0.0f, 0.0f, 0.0f),
        cXyz(10.0f, 1060.0f, 1420.0f),
        cXyz(45.0f, 1065.0f, 1475.0f),
        cXyz(235.0f, 1110.0f, 1835.0f),
        cXyz(205.0f, 795.0f, 1770.0f),
        cXyz(45.0f, 905.0f, 1480.0f),
        cXyz(650.0f, 2800.0f, 2350.0f),
    };

    static cXyz mOpCenterBodyDt[2] = {
        cXyz(320.0f, 730.0f, 1270.0f),
        cXyz(-235.0f, 1345.0f, 2090.0f),
    };

    static cXyz mOpEyeDt[15] = {
        cXyz(0.0f, 1980.0f, 5300.0f),
        cXyz(0.0f, 1934.0f, 5036.0f),
        cXyz(655.0f, 2810.0f, 2360.0f),
        cXyz(181.0f, 1190.0f, 844.0f),
        cXyz(25.0f, 1125.0f, 1450.0f),
        cXyz(75.0f, 1010.0f, 1540.0f),
        cXyz(40.0f, 1030.0f, 1480.0f),
        cXyz(150.0f, 1115.0f, 1670.0f),
        cXyz(0.0f, 0.0f, 0.0f),
        cXyz(160.0f, 1000.0f, 1685.0f),
        cXyz(180.0f, 1110.0f, 1730.0f),
        cXyz(360.0f, 1220.0f, 2080.0f),
        cXyz(340.0f, 755.0f, 2020.0f),
        cXyz(170.0f, 800.0f, 1710.0f),
        cXyz(695.0f, 3200.0f, 2570.0f),
    };

    static cXyz mOpEyeBodyDt[2] = {
        cXyz(600.0f, 710.0f, 1300.0f),
        cXyz(125.0f, 1500.0f, 3320.0f),
    };

    static u16 eff_znt_Disapp_id[2] = {0x8BBA, 0x8BBB};
    static u16 eff_znt_App_id[4] = {0x8BBC, 0x8BBD, 0x8BBE, 0x8BBF};
    static u16 eff_znt_SASI_id[3] = {0x8BC0, 0x8BC1, 0x8BC2};

    static const struct {
        u16 eff_id;
        int joint_no;
    } KIDOU_EFF_DT[16] = {
        {0x8BC6, 8},
        {0x8BC7, 8},
        {0x8BC8, 9},
        {0x8BC9, 9},
        {0x8BCA, 27},
        {0x8BCB, 27},
        {0x8BCC, 28},
        {0x8BCD, 28},
        {0x8BCE, 3},
        {0x8BCF, 3},
        {0x8BD0, 11},
        {0x8BD1, 11},
        {0x8BD2, 30},
        {0x8BD3, 30},
        {0x8BD4, 6},
        {0x8BD5, 6},
    };

    mHintTimer1 = l_HIO.mHintTime1;

    switch (mMode) {
    case 0:
        for (int i = 0; i < 16; i++) {
            mStartingParticleKey[i] = 0;
        }
        setBck(ANM_OPDEMO, 0, 1.0f, 0.0f);
        mMode++;
        // no break

    case 1:
    case 10:
        if (!startDemoCheck()) {
            break;
        }
        Z2GetAudioMgr()->setDemoName("force_start");

        if (mMode == 10) {
            i_dComIfGp_getEvent().i_startCheckSkipEdge(this);
            vec1.set(mOpPlayerDt[1]);
            daPy_getPlayerActorClass()->i_changeDemoMode(4, 2, 0, 0);
            vec1.set(player->current.pos);
            vec2 = mZantPos - player->current.pos;
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&vec1, vec2.atan2sX_Z(), 0);
            mCameraCenter.set(mOpCenterDt[14]);
            mCameraEye.set(mOpEyeDt[14]);
            mMode++;
        } else {
            daPy_getPlayerActorClass()->i_changeDemoMode(20, 0, 0, 0);
            vec1.set(mOpPlayerDt[0]);
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&vec1, -0x8000, 0);
            vec3.set(vec1.x, vec1.y, 4700.0f);
            player->i_changeDemoPos0(&vec3);
            mCameraCenter.set(mOpCenterDt[0]);
            mCameraEye.set(mOpEyeDt[0]);
            mActionTimer = 10;
            mMode++;
        }
        break;

    case 2:
        f32 calc_center = cLib_addCalcPos(&mCameraCenter, mOpCenterDt[1], 3, 2.0f, 1.0f);
        f32 calc_eye = cLib_addCalcPos(&mCameraEye, mOpEyeDt[1], 3, 2.0f, 1.0f);
        if (calc_center > 2.0f || calc_eye > 2.0f || cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        
        mCameraCenter.set(mOpCenterDt[1]);
        mCameraEye.set(mOpEyeDt[1]);
        vec3.set(0.0f, 1900.0f, 4727.0f);
        vec4.set(0.0f, 1981.0f, 5018.0f);
        camera->mCamera.Reset(vec3, vec4);
        camera->mCamera.Start();
        camera->mCamera.SetTrimSize(0);
        i_dComIfGp_event_reset();
        dComIfGs_onZoneSwitch(0, fopAcM_GetRoomNo(this));
        fopAcM_OffStatus(this, 0x4000);
        mMode++;
        // no break

    case 3:
        mPedestalFallTimer = l_HIO.mPedestalFallTime;
        if (!daPy_py_c::i_checkNowWolf()
            && player->current.pos.z > 1800.0f && player->current.pos.z < 2200.0f
            && player->current.pos.y > 780.0f
            && player->current.pos.x > -420.0f && player->current.pos.x < 350.0f)
        {
            dComIfGs_onOneZoneSwitch(8, fopAcM_GetRoomNo(this));
            mMode = 10;
        }
        break;

    case 11:
        daPy_getPlayerActorClass()->i_changeDemoMode(20, 0, 0, 0);
        Z2GetAudioMgr()->seStart(Z2SE_EN_ZAN_L4_V, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        mActionTimer = 150;
        mMode++;
        // no break

    case 12:
        if (cLib_calcTimer(&mActionTimer) != 0) {
            cLib_addCalcPos(&mCameraCenter, mOpCenterDt[2], 0.3f, 4.0f, 2.0f);
            cLib_addCalcPos(&mCameraEye, mOpEyeDt[2], 0.3f, 4.0f, 2.0f);
            break;
        }
        daPy_getPlayerActorClass()->i_changeDemoMode(1, 0, 0, 0);
        mActionTimer = 60;
        mMode++;
        // no break

    case 13:
        mCameraCenter.set(mOpCenterDt[3]);
        mCameraEye.set(mOpEyeDt[3]);
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        mpZantMorf->setAnm(static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("B_DS", 66)),
                           2, 1.0f, 1.0f, 0.0f, -1.0f);
        mZantScale.set(0.0f, 5.0f, 0.0f);
        mZantEyePos.set(mZantPos);
        mZantEyePos.y += 200.0f;
        daPy_getPlayerActorClass()->i_changeDemoMode(47, 1, 0, 0);
        particle_angle.x = 0;
        particle_angle.y = field_0x7ca + 5000;
        particle_angle.z = 0;
        dComIfGp_particle_set(0x8bb9, &mZantPos, &particle_angle, NULL);
        mSoundPos.set(current.pos);
        mSound.startCreatureSound(Z2SE_EN_ZAN_L4_WARP_IN, 0, -1);
        mDrawZant = true;
        mActionTimer = 10;
        mMode++;
        break;

    case 14:
        cLib_addCalc2(&mZantScale.x, 1.0f, 0.7f, 0.1f);
        cLib_addCalc2(&mZantScale.y, 1.0f, 0.7f, 0.7f);
        cLib_addCalc2(&mZantScale.z, 1.0f, 0.7f, 0.1f);
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        mZantScale.set(1.0f, 1.0f, 1.0f);
        daPy_getPlayerActorClass()->i_changeDemoMode(23, 1, 2, 0);
        mActionTimer = 100;
        mMode++;
        // no break

    case 15:
        if (cLib_calcTimer(&mActionTimer) != 0) {
            if (mActionTimer == 86) {
                Z2GetAudioMgr()->bgmStreamPrepare(0x2000047);
                Z2GetAudioMgr()->bgmStreamPlay();
            }
            if (mActionTimer == 1) {
                setYoMessage(0x1f41);
            }
        } else {
            if (doYoMessage()) {
                mMode++;
            }
        }
        break;

    case 16:
        setYoMessage(0x1f42);
        mMode++;
        break;

    case 17:
        if (!doYoMessage()) {
            break;
        }
        mCameraCenter.set(mOpCenterDt[4]);
        mCameraEye.set(mOpEyeDt[4]);
        mActionTimer = 30;
        mMode++;
        // no break

    case 18:
        if (cLib_calcTimer(&mActionTimer) != 0) {
            if (mActionTimer == 1) {
                setYoMessage(0x1f43);
            }
        } else {
            if (doYoMessage()) {
                mMode = 20;
            }
        }
        break;

    case 20:
        mCameraCenter.set(mOpCenterDt[4]);
        mCameraEye.set(mOpEyeDt[4]);
        mpZantMorf->setAnm(static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("B_DS", 64)),
                           0, 1.0f, 1.0f, 0.0f, -1.0f);
        mpSwordMorf->setAnm(static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("B_DS", 63)),
                            0, 1.0f, 1.0f, 0.0f, -1.0f);
        mpSwordBrkAnm->init(mpSwordMorf->getModel()->getModelData(),
                            static_cast<J3DAnmTevRegKey*>(dComIfG_getObjectRes("B_DS", 81)),
                            1, 0, 1.0f, 0, -1);

        particle_angle.x = 0;
        particle_angle.y = field_0x7ca + 5000;
        particle_angle.z = 0;
        for (int i = 0; i < 4; i++) {
            dComIfGp_particle_set(eff_znt_App_id[i], &mZantPos, &particle_angle, NULL);
        }
        for (int i = 0; i < 3; i++) {
            dComIfGp_particle_set(eff_znt_SASI_id[i], &mZantPos, &particle_angle, NULL);
        }

        mSound.startCreatureSound(Z2SE_EN_ZAN_L4_1, 0, -1);
        mNoDrawSword = true;
        mDrawZantSword = false;
        mMode++;
        // no break

    case 21:
        cLib_addCalcPos(&mCameraCenter, mOpCenterDt[5], 1.0f, 20.0f, 10.0f);
        cLib_addCalcPos(&mCameraEye, mOpEyeDt[5], 1.0f, 20.0f, 10.0f);
        if (mpZantMorf->checkFrame(9.0f)) {
            mDrawZantSword = true;
        }
        if ((int)mpZantMorf->getFrame() < 50) {
            break;
        }
        mMode++;
        // no break

    case 22:
        cLib_addCalcPos(&mCameraCenter, mOpCenterDt[6], 0.3f, 1.0f, 0.5f);
        cLib_addCalcPos(&mCameraEye, mOpEyeDt[6], 0.3f, 1.0f, 0.5f);
        if ((int)mpZantMorf->getFrame() < 191) {
            break;
        }
        mActionTimer = 30;
        mNoDrawSword = false;
        mMode++;
        // no break

    case 23:
        cLib_addCalcPos(&mCameraCenter, mOpCenterDt[7], 0.7f, 30.0f, 20.0f);
        cLib_addCalcPos(&mCameraEye, mOpEyeDt[7], 0.7f, 30.0f, 20.0f);
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        mMode++;
        // no break

    case 24:
        if ((int)mpZantMorf->getFrame() >= 250) {
            cLib_addCalcPos(&mCameraCenter, mOpCenterDt[9], 0.7f, 4.0f, 1.0f);
            cLib_addCalcPos(&mCameraEye, mOpEyeDt[9], 0.7f, 4.0f, 1.0f);
        }
        if ((int)mpZantMorf->getFrame() < 340) {
            break;
        }
        mMode++;
        // no break

    case 25:
        cLib_addCalcPos(&mCameraCenter, mOpCenterDt[10], 0.7f, 30.0f, 20.0f);
        cLib_addCalcPos(&mCameraEye, mOpEyeDt[10], 0.7f, 30.0f, 20.0f);
        if ((int)mpZantMorf->getFrame() < 346) {
            break;
        }
        field_0x85e = false;
        mChkHigh = 0.0f;
        mActionTimer = 100;
        dComIfGp_getVibration().StartShock(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        mMode++;
        // no break

    case 26:
        if (!field_0x85e && mpZantMorf->isStop()) {
            mpZantMorf->setAnm(static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("B_DS", 67)),
                               2, 1.0f, 1.0f, 0.0f, -1.0f);
            field_0x85e = true;
        }

        cLib_addCalc0(&field_0x7ec, 0.7f, 20.0f);
        cLib_addCalc2(&mChkHigh, 1.0f, 0.1f, 0.01f);
        vec1 = mCameraCenter - mOpCenterDt[11];
        f32 step = mChkHigh * vec1.abs();
        cLib_addCalcPos(&mCameraCenter, mOpCenterDt[11], mChkHigh, step, step);
        vec1 = mCameraEye - mOpEyeDt[11];
        step = mChkHigh * vec1.abs();
        cLib_addCalcPos(&mCameraEye, mOpEyeDt[11], mChkHigh, step, step);
        
        if (mActionTimer == 100) {
            mpOpPatternBrkAnm->init(mpOpPatternModel->getModelData(),
                                    static_cast<J3DAnmTevRegKey*>(dComIfG_getObjectRes("B_DS", 79)),
                                    1, 0, 1.0f, 0, -1);
            mpOpPatternBtkAnm->init(mpOpPatternModel->getModelData(),
                                static_cast<J3DAnmTextureSRTKey*>(dComIfG_getObjectRes("B_DS", 85)),
                                1, 0, 1.0f, 0, -1);
            mPlayPatternAnm = true;
        }

        if (cLib_calcTimer(&mActionTimer) != 0) {
            if (mActionTimer == 30) {
                mPlayPatternAnm = false;
            }
            break;
        }

        mpZantMorf->setAnm(static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("B_DS", 65)),
                           0, 1.0f, 1.0f, 0.0f, -1.0f);
        mSound.startCreatureSound(Z2SE_EN_ZAN_L4_2, 0, -1);
        mMode = 30;
        field_0x85e = false;
        // no break

    case 30:
        mCameraCenter.set(mOpCenterDt[12]);
        mCameraEye.set(mOpEyeDt[12]);
        if ((int)mpZantMorf->getFrame() < 65) {
            break;
        }
        mMode++;
        // no break

    case 31:
        if (mpZantMorf->checkFrame(76.0f)) {
            mDrawZantSword = false;
        }
        cLib_addCalcPos(&mCameraCenter, mOpCenterDt[13], 0.7f, 10.0f, 5.0f);
        cLib_addCalcPos(&mCameraEye, mOpEyeDt[13], 0.7f, 10.0f, 5.0f);
        if (!mpZantMorf->isStop()) {
            break;
        }
        mSound.startCreatureSound(Z2SE_EN_ZAN_L4_WARP_OUT, 0, -1);
        mMode++;
        // no break

    case 32:
        cLib_addCalc2(&mZantScale.x, 0.0f, 0.7f, 0.1f);
        cLib_addCalc2(&mZantScale.y, 5.0f, 0.7f, 0.7f);
        cLib_addCalc2(&mZantScale.z, 0.0f, 0.7f, 0.1f);
        if (mZantScale.y < 4.9f) {
            break;
        }

        particle_angle.x = 0;
        particle_angle.y = field_0x7ca + 5000;
        particle_angle.z = 0;
        for (int i = 0; i < 2; i++) {
            dComIfGp_particle_set(eff_znt_Disapp_id[i], &mZantPos, &particle_angle, NULL);
        }
        
        mDrawZant = false;
        mActionTimer = 50;
        mMode++;
        // no break

    case 33:
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        Z2GetAudioMgr()->subBgmStart(Z2BGM_HARAGIGANT_D01);
        mSound.startCreatureSound(Z2SE_EN_DS_OPDEMO, 0, -1);
        mActionTimer = 50;
        mMode = 40;
        // no break

    case 40:
        mCameraCenter.set(mOpCenterBodyDt[0]);
        mCameraEye.set(mOpEyeBodyDt[0]);
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        mActionTimer = 100;
        dComIfGp_getVibration().StartQuake(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        mMode++;
        // no break

    case 41:
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        mMode++;
        // no break

    case 42:
        cLib_addCalc2(&field_0x7e8, 255.0f, 0.7f, 10.0f);
        if (field_0x7e8 < 254.0f) {
            break;
        }
        field_0x7d2 = 0;
        mActionTimer = 0;
        field_0x7e8 = 255.0f;
        setBck(ANM_OPDEMO, 0, 1.0f, 1.0f);
        dComIfGp_particle_set(0x8bd6, &current.pos, &shape_angle, NULL);
        mMode++;
        // no break

    case 43:
        vec3.set(mSwordPos);
        vec3.y += -100.0f;
        cLib_addCalcPos(&mCameraCenter, vec3, 1.0f, 20.0f, 10.0f);
        if ((int)mpMorf->getFrame() < 330) {
            break;
        }
        mIsOpeningDemo = false;
        vec2 = current.pos - player->current.pos;
        shape_angle.y = -700;
        daPy_getPlayerActorClass()->setPlayerPosAndAngle(&mOpPlayerDt[2],
                                                         vec2.atan2sX_Z() + 0x1000, 0);
        mMode++;
        // no break

    case 44:
        vec4.set(mOpEyeBodyDt[1]);
        vec3.set(mOpCenterBodyDt[1]);
        vec3.y = mSwordPos.y;
        f32 max_step = 10.0f;
        f32 min_step = 5.0f;
        if ((int)mpMorf->getFrame() > 460) {
            max_step = 40.0f;
            min_step = 20.0f;
            vec3.y -= 200.0f;
        }
        if (vec3.y > 1835.0f) {
            vec3.y = 1835.0f;
        } else if (vec3.y < 1250.0f) {
            vec3.y = 1250.0f;
        }
        cLib_addCalcPos(&mCameraCenter, vec3, 1.0f, max_step, min_step);
        cLib_addCalcPos(&mCameraEye, vec4, 1.0f, 40.0f, 20.0f);

        if (mpMorf->checkFrame(517.0f)) {
            dComIfGp_getVibration().StopQuake(0x1f);
        }
        if (mpMorf->checkFrame(518.0f)) {
            hand_smokeSet(0);
        }
        if (mpMorf->checkFrame(670.0f)) {
            dCam_getBody()->StartBlure(40, this, 0.8f, 1.2f);
            fopMsgM_messageSetDemo(0x482);
            dComIfGp_getVibration().StartQuake(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            player->i_changeDemoMode(34, 0, 0, 0);
        }
        if (mpMorf->checkFrame(770.0f)) {
            dComIfGp_getVibration().StopQuake(0x1f);
        }

        if (mpMorf->isStop()) {
            dKy_change_colpat(1);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            i_dComIfGp_event_reset();
            attention_info.field_0x0[2] = 0;
            attention_info.flags = 4;
            group = 2;
            Z2GetAudioMgr()->bgmStart(Z2BGM_HARAGIGANT_BTL01, 0, 0);
            Z2GetAudioMgr()->setDemoName("force_end");
            dComIfGs_onZoneSwitch(5, fopAcM_GetRoomNo(this));
            field_0x7f8 = 0.5f;
            mSwordTimer = 3;
            setActionMode(ACT_WAIT, 0);
            return;
        }
    }

    if (mMode > 41) {
        cLib_addCalc(&mColBlend, 1.0f, 0.01f, 0.01f, 0.001f);
        dKy_custom_colset(0, 1, mColBlend);
        cLib_addCalc2(&field_0x7f8, 0.5f, 0.1f, 0.01f);
    }

    mZantEyePos.set(mZantPos);
    mZantEyePos.y += 200.0f;

    if (mMode != 0 && mMode != 3 && mMode != 4) {
        camera->mCamera.Set(mCameraCenter, mCameraEye);
    }

    if (mMode < 11) {
        return;
    }

    if (mMode >= 43) {
        vec5.set(1.0f, 1.0f, 1.0f);
        for (int i = 0; i < 16; i++) {
            mStartingParticleKey[i] = dComIfGp_particle_set(mStartingParticleKey[i],
                                                            KIDOU_EFF_DT[i].eff_id,
                                                            &current.pos, &shape_angle, NULL);
            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mStartingParticleKey[i]);
            if (emitter != NULL) {
                emitter->setGlobalSRTMatrix(
                    mpMorf->getModel()->i_getAnmMtx(KIDOU_EFF_DT[i].joint_no));
            }
        }
    }

    if (i_dComIfGp_getEvent().i_checkSkipEdge()) {
        cDmr_SkipInfo = 1;
        dStage_changeScene(2, 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
        dComIfGs_onZoneSwitch(5, fopAcM_GetRoomNo(this));
        Z2GetAudioMgr()->setDemoName("force_end");
        Z2GetAudioMgr()->bgmStreamStop(0);
        Z2GetAudioMgr()->subBgmStop();
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::executeOpeningDemo() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/executeOpeningDemo__8daB_DS_cFv.s"
}
#pragma pop
#endif

#ifndef NONMATCHING
/* 805CFA08-805CFA54 0048C8 004C+00 1/1 0/0 0/0 .text setGlobalSRTMatrix__14JPABaseEmitterFPA4_Cf
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void JPABaseEmitter::setGlobalSRTMatrix(f32 const (*param_0)[4]) {
extern "C" asm void setGlobalSRTMatrix__14JPABaseEmitterFPA4_Cf() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/setGlobalSRTMatrix__14JPABaseEmitterFPA4_Cf.s"
}
#pragma pop

/* 805CFA54-805CFAD4 004914 0080+00 2/2 0/0 0/0 .text
 * dComIfGp_particle_set__FUlUsPC4cXyzPC5csXyzPC4cXyz           */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// static asm void dComIfGp_particle_set(u32 param_0, u16 param_1, cXyz const* param_2,
//                                       csXyz const* param_3, cXyz const* param_4) {
extern "C" asm void dComIfGp_particle_set__FUlUsPC4cXyzPC5csXyzPC4cXyz() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/dComIfGp_particle_set__FUlUsPC4cXyzPC5csXyzPC4cXyz.s"
}
#pragma pop

/* 805CFAD4-805CFBE8 004994 0114+00 2/2 0/0 0/0 .text            abs__4cXyzCFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void cXyz::abs() const {
extern "C" asm void abs__4cXyzCFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/abs__4cXyzCFv.s"
}
#pragma pop

/* 805CFBE8-805CFC18 004AA8 0030+00 1/1 0/0 0/0 .text            isStop__13mDoExt_morf_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void mDoExt_morf_c::isStop() {
extern "C" asm void isStop__13mDoExt_morf_cFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/isStop__13mDoExt_morf_cFv.s"
}
#pragma pop

/* 805CFC18-805CFC8C 004AD8 0074+00 2/2 0/0 0/0 .text
 * dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// static asm void dComIfGp_particle_set(u16 param_0, cXyz const* param_1, csXyz const* param_2,
//                                       cXyz const* param_3) {
extern "C" asm void dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz.s"
}
#pragma pop
#endif

/* 805CFC8C-805D002C 004B4C 03A0+00 3/3 0/0 0/0 .text            mHandBreathChk__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals / generics
bool daB_DS_c::mHandBreathChk() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    if (daPy_getPlayerActorClass()->getDamageWaitTimer() > 10) {
        return false;
    }

    if (daPy_getPlayerActorClass()->checkSpinnerRide()) {
        if (abs((s16)(fopAcM_searchPlayerAngleY(this) - shape_angle.y)) < 0x4000) {
            cXyz vec1 = mHandPos[0] - player->current.pos;
            cXyz vec2 = mHandPos[1] - player->current.pos;
            if (vec1.abs() < l_HIO.mHandRange) {
                mAttackingHand = 1;
                setActionMode(ACT_HAND_ATTACK, 0);
                return true;
            }
            if (vec2.abs() < l_HIO.mHandRange) {
                mAttackingHand = 0;
                setActionMode(ACT_HAND_ATTACK, 0);
                return true;
            }
        }
    }

    if (cLib_calcTimer(&mActionTimer) == 0
        && fopAcM_searchPlayerDistance(this) > l_HIO.mBreathRange)
    {
        if ((s16)(shape_angle.y - fopAcM_searchPlayerAngleY(this)) < 0x2000) {
            setActionMode(ACT_BREATH_ATTACK, 0);
        } else {
            setActionMode(ACT_BREATH_SEARCH, 0);
        }
        return true;
    }

    return false;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daB_DS_c::mHandBreathChk() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mHandBreathChk__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DCCE0-805DCCE4 00028C 0004+00 0/1 0/0 0/0 .rodata          @5971 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5971 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x805DCCE0, &lit_5971);
#pragma pop

/* 805DCCE4-805DCCE8 000290 0004+00 0/2 0/0 0/0 .rodata          @5972 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5972 = 1900.0f;
COMPILER_STRIP_GATE(0x805DCCE4, &lit_5972);
#pragma pop

/* 805DCCE8-805DCCEC 000294 0004+00 0/0 0/0 0/0 .rodata          @5973 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5973 = 4727.0f;
COMPILER_STRIP_GATE(0x805DCCE8, &lit_5973);
#pragma pop

/* 805DCCEC-805DCCF0 000298 0004+00 0/0 0/0 0/0 .rodata          @5974 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5974 = 1981.0f;
COMPILER_STRIP_GATE(0x805DCCEC, &lit_5974);
#pragma pop

/* 805DCCF0-805DCCF4 00029C 0004+00 0/0 0/0 0/0 .rodata          @5975 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5975 = 5018.0f;
COMPILER_STRIP_GATE(0x805DCCF0, &lit_5975);
#pragma pop

/* 805DCCF4-805DCCF8 0002A0 0004+00 0/0 0/0 0/0 .rodata          @5976 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5976 = 2200.0f;
COMPILER_STRIP_GATE(0x805DCCF4, &lit_5976);
#pragma pop

/* 805DCCF8-805DCCFC 0002A4 0004+00 0/0 0/0 0/0 .rodata          @5977 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5977 = 780.0f;
COMPILER_STRIP_GATE(0x805DCCF8, &lit_5977);
#pragma pop

/* 805DCCFC-805DCD00 0002A8 0004+00 0/0 0/0 0/0 .rodata          @5978 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5978 = -420.0f;
COMPILER_STRIP_GATE(0x805DCCFC, &lit_5978);
#pragma pop

/* 805DCD00-805DCD04 0002AC 0004+00 0/0 0/0 0/0 .rodata          @5979 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5979 = 350.0f;
COMPILER_STRIP_GATE(0x805DCD00, &lit_5979);
#pragma pop

/* 805DCD04-805DCD08 0002B0 0004+00 0/2 0/0 0/0 .rodata          @5980 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5980 = 4.0f;
COMPILER_STRIP_GATE(0x805DCD04, &lit_5980);
#pragma pop

/* 805DCD08-805DCD0C 0002B4 0004+00 0/5 0/0 0/0 .rodata          @5981 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5981 = 20.0f;
COMPILER_STRIP_GATE(0x805DCD08, &lit_5981);
#pragma pop

/* 805DCD0C-805DCD10 0002B8 0004+00 0/0 0/0 0/0 .rodata          @5982 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5982 = 9.0f;
COMPILER_STRIP_GATE(0x805DCD0C, &lit_5982);
#pragma pop

/* 805DCD10-805DCD14 0002BC 0004+00 0/6 0/0 0/0 .rodata          @5983 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5983 = 30.0f;
COMPILER_STRIP_GATE(0x805DCD10, &lit_5983);
#pragma pop

/* 805DCD14-805DCD18 0002C0 0004+00 0/0 0/0 0/0 .rodata          @5984 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5984 = 76.0f;
COMPILER_STRIP_GATE(0x805DCD14, &lit_5984);
#pragma pop

/* 805DCD18-805DCD1C 0002C4 0004+00 0/0 0/0 0/0 .rodata          @5985 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5985 = 49.0f / 10.0f;
COMPILER_STRIP_GATE(0x805DCD18, &lit_5985);
#pragma pop

/* 805DCD1C-805DCD20 0002C8 0004+00 0/1 0/0 0/0 .rodata          @5986 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5986 = 254.0f;
COMPILER_STRIP_GATE(0x805DCD1C, &lit_5986);
#pragma pop

/* 805DCD20-805DCD24 0002CC 0004+00 0/4 0/0 0/0 .rodata          @5987 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5987 = -100.0f;
COMPILER_STRIP_GATE(0x805DCD20, &lit_5987);
#pragma pop

/* 805DCD24-805DCD28 0002D0 0004+00 0/0 0/0 0/0 .rodata          @5988 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5988 = 517.0f;
COMPILER_STRIP_GATE(0x805DCD24, &lit_5988);
#pragma pop

/* 805DCD28-805DCD2C 0002D4 0004+00 0/0 0/0 0/0 .rodata          @5989 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5989 = 518.0f;
COMPILER_STRIP_GATE(0x805DCD28, &lit_5989);
#pragma pop

/* 805DCD2C-805DCD30 0002D8 0004+00 0/2 0/0 0/0 .rodata          @5990 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5990 = 670.0f;
COMPILER_STRIP_GATE(0x805DCD2C, &lit_5990);
#pragma pop

/* 805DCD30-805DCD34 0002DC 0004+00 0/0 0/0 0/0 .rodata          @5991 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5991 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x805DCD30, &lit_5991);
#pragma pop

/* 805DCD34-805DCD38 0002E0 0004+00 0/0 0/0 0/0 .rodata          @5992 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5992 = 770.0f;
COMPILER_STRIP_GATE(0x805DCD34, &lit_5992);
#pragma pop

/* 805DCD38-805DCD3C 0002E4 0004+00 0/1 0/0 0/0 .rodata          @5993 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5993 = 0x3A83126F;
COMPILER_STRIP_GATE(0x805DCD38, &lit_5993);
#pragma pop

/* 805DCD3C-805DCD40 0002E8 0004+00 0/2 0/0 0/0 .rodata          @6201 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6201 = 60.0f;
COMPILER_STRIP_GATE(0x805DCD3C, &lit_6201);
#pragma pop

/* 805D002C-805D0194 004EEC 0168+00 1/1 0/0 0/0 .text            executeWait__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::executeWait() {
    static int Ds_wait_id[3] = {
        ANM_WAIT01_A,
        ANM_WAIT01_B,
        ANM_WAIT01_C,
    };

    switch (mMode) {
    case 0:
        if (mActionTimer == 0) {
            mActionTimer = (int)cM_rndF(60.0f) + 120;
            if (mBackboneJoint == 1) {
                mActionTimer >>= 1;
            } else if (mBackboneJoint == 2) {
                mActionTimer >>= 2;
            }
        }
        if (mAnmID != Ds_wait_id[mBackboneJoint]) {
            setBck(Ds_wait_id[mBackboneJoint], 2, 10.0f, 1.0f);
        }
        mMode = 1;
        // no break

    case 1:
        if (fopAcM_searchPlayerDistance(this) > l_HIO.mNoSearchRange
            || daPy_getPlayerActorClass()->checkSpinnerRide())
        {
            s16 angle = shape_angle.y - fopAcM_searchPlayerAngleY(this);
            if (abs(angle) > 0x1800) {
                setActionMode(ACT_CIRCLE, 0);
            }
        }
    }
    
    mHandBreathChk();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::executeWait() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/executeWait__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805D0194-805D02F8 005054 0164+00 1/1 0/0 0/0 .text            executeCircle__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::executeCircle() {
    static int Ds_circle_id[6] = {
        ANM_CIRCLE_L_A,
        ANM_CIRCLE_L_B,
        ANM_CIRCLE_L_C,
        ANM_CIRCLE_R_A,
        ANM_CIRCLE_R_B,
        ANM_CIRCLE_R_C,
    };
    s16 angle = shape_angle.y - fopAcM_searchPlayerAngleY(this);

    switch (mMode) {
    case 0:
        if (mActionTimer == 0) {
            mActionTimer = (int)cM_rndF(60.0f) + 240;
        }
        if (angle < 0) {
            setBck(Ds_circle_id[mBackboneJoint], 2, 10.0f, 1.0f);
        } else {
            setBck(Ds_circle_id[mBackboneJoint + 3], 2, 10.0f, 1.0f);
        }
        mMode = 1;
        // no break

    case 1:
        angle = shape_angle.y - fopAcM_searchPlayerAngleY(this);
        if (abs(angle) < 0x200) {
            setActionMode(ACT_WAIT, 0);
        }
    }

    cLib_addCalcAngleS2(&current.angle.y, fopAcM_searchPlayerAngleY(this), 2, 100);
    shape_angle.y = current.angle.y;
    mHandBreathChk();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::executeCircle() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/executeCircle__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805D02F8-805D0374 0051B8 007C+00 1/1 0/0 0/0 .text            mBreakBoneSUB__8daB_DS_cFv */
void daB_DS_c::mBreakBoneSUB() {
    if (mBitSw3 != 0xff) {
        fopAcM_offSwitch(this, mBitSw3);
        mSoundPos = current.pos;
        mSound.startCollisionSE(Z2SE_HIT_SWORD, 0x1f);
    }
}

/* 805D0374-805D03EC 005234 0078+00 1/1 0/0 0/0 .text            damageSet__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::damageSet() {
    if (mBossPhase == 0) {
        dScnPly_c::setPauseTimer(5);
    }
    field_0x85e = true;
    mBreakBoneSUB();
    dComIfGp_getVibration().StartShock(3, 0x4f, cXyz(0.0f, 1.0f, 0.0f));
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::damageSet() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/damageSet__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DCD40-805DCD44 0002EC 0004+00 0/5 0/0 0/0 .rodata          @6296 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6296 = 300.0f;
COMPILER_STRIP_GATE(0x805DCD40, &lit_6296);
#pragma pop

/* 805D03EC-805D0584 0052AC 0198+00 1/1 0/0 0/0 .text            damageHitCamera__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::damageHitCamera() {
    camera_class* camera = dComIfGp_getCamera(i_dComIfGp_getPlayerCameraID(0));
    cXyz vec1, vec2;

    mDoMtx_YrotS(*calc_mtx, field_0x7d0);
    vec1.zero();
    vec1.y = 300.0f;
    MtxPosition(&vec1, &vec2);
    vec2.x += current.pos.x;
    if (mAcch.GetGroundH() != -1e9f) {
        vec2.y += mAcch.GetGroundH();
    }
    vec2.z += current.pos.z;
    mCameraCenter = vec2;

    vec1.zero();
    vec1.z = 700.0f;
    MtxPosition(&vec1, &vec2);
    vec2.x += current.pos.x;
    if (mAcch.GetGroundH() != -1e9f) {
        vec2.y += mAcch.GetGroundH();
    }
    vec2.z += current.pos.z;
    mCameraEye = vec2;

    camera->mCamera.Set(mCameraCenter, mCameraEye);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::damageHitCamera() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/damageHitCamera__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DCD44-805DCD48 0002F0 0004+00 0/8 0/0 0/0 .rodata          @6344 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6344 = 50.0f;
COMPILER_STRIP_GATE(0x805DCD44, &lit_6344);
#pragma pop

/* 805DCD48-805DCD4C 0002F4 0004+00 0/1 0/0 0/0 .rodata          @6345 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6345 = 13.0f;
COMPILER_STRIP_GATE(0x805DCD48, &lit_6345);
#pragma pop

/* 805DCD4C-805DCD50 0002F8 0004+00 0/2 0/0 0/0 .rodata          @6346 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6346 = 29.0f;
COMPILER_STRIP_GATE(0x805DCD4C, &lit_6346);
#pragma pop

/* 805D0584-805D074C 005444 01C8+00 1/1 0/0 0/0 .text            damageDownCheck__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::damageDownCheck() {
    cXyz particle_scale(1.0f, 1.0f, 1.0f);
    csXyz particle_angle = shape_angle;
    if (mAnmID == ANM_DAMAGE_A || mAnmID == ANM_DAMAGE_B) {
        int frame = 18;
        if (mBrokenBone == 0) {
            if (mpMorf->checkFrame(30.0f)) {
                hand_smokeSet(1);
            }
            if (mpMorf->checkFrame(50.0f)) {
                hand_smokeSet(2);
            }
            frame = 35;
        } else {
            if (mpMorf->checkFrame(13.0f)) {
                hand_smokeSet(1);
            }
            if (mpMorf->checkFrame(29.0f)) {
                hand_smokeSet(2);
            }
        }
        if (mpMorf->checkFrame(frame)) {
            for (int i = 0; i < 2; i++) {
                mHitParticleKey[i] = dComIfGp_particle_set(mHitParticleKey[i], eff_smoke_id[i],
                                                    &current.pos, &particle_angle, &particle_scale);
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::damageDownCheck() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/damageDownCheck__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DCD50-805DCDB0 0002FC 0060+00 0/1 0/0 0/0 .rodata          BROKENBORN_EFF_DT$6371 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const BROKENBORN_EFF_DT[96] = {
    0x8B, 0xDB, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8B, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x8B, 0xDD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8B, 0xDE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x8B, 0xDF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x8B, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x8B, 0xE1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x8B, 0xE2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x8B, 0xE3, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x8B, 0xE4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x8B, 0xE5, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x8B, 0xE6, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
};
COMPILER_STRIP_GATE(0x805DCD50, &BROKENBORN_EFF_DT);
#pragma pop

/* 805DCDB0-805DCDB4 00035C 0004+00 0/2 0/0 0/0 .rodata          @7114 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7114 = 345.0f;
COMPILER_STRIP_GATE(0x805DCDB0, &lit_7114);
#pragma pop

/* 805DCDB4-805DCDB8 000360 0004+00 0/1 0/0 0/0 .rodata          @7115 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7115 = 2100.0f;
COMPILER_STRIP_GATE(0x805DCDB4, &lit_7115);
#pragma pop

/* 805DCDB8-805DCDBC 000364 0004+00 0/1 0/0 0/0 .rodata          @7116 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7116 = -1575.0f;
COMPILER_STRIP_GATE(0x805DCDB8, &lit_7116);
#pragma pop

/* 805DCDBC-805DCDC0 000368 0004+00 0/2 0/0 0/0 .rodata          @7117 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7117 = 1490.0f;
COMPILER_STRIP_GATE(0x805DCDBC, &lit_7117);
#pragma pop

/* 805DCDC0-805DCDC4 00036C 0004+00 0/1 0/0 0/0 .rodata          @7118 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7118 = -2050.0f;
COMPILER_STRIP_GATE(0x805DCDC0, &lit_7118);
#pragma pop

/* 805DCDC4-805DCDC8 000370 0004+00 0/1 0/0 0/0 .rodata          @7119 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7119 = 1465.0f;
COMPILER_STRIP_GATE(0x805DCDC4, &lit_7119);
#pragma pop

/* 805DCDC8-805DCDCC 000374 0004+00 0/1 0/0 0/0 .rodata          @7120 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7120 = 1135.0f;
COMPILER_STRIP_GATE(0x805DCDC8, &lit_7120);
#pragma pop

/* 805DCDCC-805DCDD0 000378 0004+00 0/1 0/0 0/0 .rodata          @7121 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7121 = -2110.0f;
COMPILER_STRIP_GATE(0x805DCDCC, &lit_7121);
#pragma pop

/* 805DCDD0-805DCDD4 00037C 0004+00 0/1 0/0 0/0 .rodata          @7122 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7122 = -320.0f;
COMPILER_STRIP_GATE(0x805DCDD0, &lit_7122);
#pragma pop

/* 805DCDD4-805DCDD8 000380 0004+00 0/1 0/0 0/0 .rodata          @7123 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7123 = -2355.0f;
COMPILER_STRIP_GATE(0x805DCDD4, &lit_7123);
#pragma pop

/* 805DCDD8-805DCDDC 000384 0004+00 0/1 0/0 0/0 .rodata          @7124 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7124 = -1900.0f;
COMPILER_STRIP_GATE(0x805DCDD8, &lit_7124);
#pragma pop

/* 805DCDDC-805DCDE0 000388 0004+00 0/1 0/0 0/0 .rodata          @7125 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7125 = -180.0f;
COMPILER_STRIP_GATE(0x805DCDDC, &lit_7125);
#pragma pop

/* 805DCDE0-805DCDE4 00038C 0004+00 0/1 0/0 0/0 .rodata          @7126 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7126 = 1390.0f;
COMPILER_STRIP_GATE(0x805DCDE0, &lit_7126);
#pragma pop

/* 805DCDE4-805DCDE8 000390 0004+00 0/1 0/0 0/0 .rodata          @7127 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7127 = 3080.0f;
COMPILER_STRIP_GATE(0x805DCDE4, &lit_7127);
#pragma pop

/* 805DCDE8-805DCDEC 000394 0004+00 0/1 0/0 0/0 .rodata          @7128 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7128 = 1675.0f;
COMPILER_STRIP_GATE(0x805DCDE8, &lit_7128);
#pragma pop

/* 805DCDEC-805DCDF0 000398 0004+00 0/1 0/0 0/0 .rodata          @7129 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7129 = 1120.0f;
COMPILER_STRIP_GATE(0x805DCDEC, &lit_7129);
#pragma pop

/* 805DCDF0-805DCDF4 00039C 0004+00 0/1 0/0 0/0 .rodata          @7130 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7130 = -2310.0f;
COMPILER_STRIP_GATE(0x805DCDF0, &lit_7130);
#pragma pop

/* 805DCDF4-805DCDF8 0003A0 0004+00 0/1 0/0 0/0 .rodata          @7131 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7131 = 1690.0f;
COMPILER_STRIP_GATE(0x805DCDF4, &lit_7131);
#pragma pop

/* 805DCDF8-805DCDFC 0003A4 0004+00 0/1 0/0 0/0 .rodata          @7132 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7132 = 1210.0f;
COMPILER_STRIP_GATE(0x805DCDF8, &lit_7132);
#pragma pop

/* 805DCDFC-805DCE00 0003A8 0004+00 0/1 0/0 0/0 .rodata          @7133 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7133 = -2315.0f;
COMPILER_STRIP_GATE(0x805DCDFC, &lit_7133);
#pragma pop

/* 805DCE00-805DCE04 0003AC 0004+00 0/3 0/0 0/0 .rodata          @7134 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7134 = 1400.0f;
COMPILER_STRIP_GATE(0x805DCE00, &lit_7134);
#pragma pop

/* 805DCE04-805DCE08 0003B0 0004+00 0/1 0/0 0/0 .rodata          @7135 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7135 = 2215.0f;
COMPILER_STRIP_GATE(0x805DCE04, &lit_7135);
#pragma pop

/* 805DCE08-805DCE0C 0003B4 0004+00 0/1 0/0 0/0 .rodata          @7136 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7136 = 280.0f;
COMPILER_STRIP_GATE(0x805DCE08, &lit_7136);
#pragma pop

/* 805DCE0C-805DCE10 0003B8 0004+00 1/10 0/0 0/0 .rodata          @7137 */
SECTION_RODATA static f32 const lit_7137 = 3.0f;
COMPILER_STRIP_GATE(0x805DCE0C, &lit_7137);

/* 805DCE10-805DCE14 0003BC 0004+00 0/1 0/0 0/0 .rodata          @7138 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7138 = 24.0f;
COMPILER_STRIP_GATE(0x805DCE10, &lit_7138);
#pragma pop

/* 805DCE14-805DCE18 0003C0 0004+00 0/1 0/0 0/0 .rodata          @7139 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7139 = 12.75f;
COMPILER_STRIP_GATE(0x805DCE14, &lit_7139);
#pragma pop

/* 805DCE18-805DCE1C 0003C4 0004+00 0/1 0/0 0/0 .rodata          @7140 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7140 = 1100.0f;
COMPILER_STRIP_GATE(0x805DCE18, &lit_7140);
#pragma pop

/* 805DCE1C-805DCE20 0003C8 0004+00 0/1 0/0 0/0 .rodata          @7141 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7141 = -1500.0f;
COMPILER_STRIP_GATE(0x805DCE1C, &lit_7141);
#pragma pop

/* 805DCE20-805DCE24 0003CC 0004+00 0/1 0/0 0/0 .rodata          @7142 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7142 = 1600.0f;
COMPILER_STRIP_GATE(0x805DCE20, &lit_7142);
#pragma pop

/* 805DCE24-805DCE28 0003D0 0004+00 0/1 0/0 0/0 .rodata          @7143 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7143 = 4200.0f;
COMPILER_STRIP_GATE(0x805DCE24, &lit_7143);
#pragma pop

/* 805DCE28-805DCE2C 0003D4 0004+00 0/1 0/0 0/0 .rodata          @7144 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7144 = 32768.0f;
COMPILER_STRIP_GATE(0x805DCE28, &lit_7144);
#pragma pop

/* 805DCE2C-805DCE30 0003D8 0004+00 0/1 0/0 0/0 .rodata          @7145 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7145 = -1000.0f;
COMPILER_STRIP_GATE(0x805DCE2C, &lit_7145);
#pragma pop

/* 805DCE30-805DCE34 0003DC 0004+00 0/1 0/0 0/0 .rodata          @7146 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7146 = -1600.0f;
COMPILER_STRIP_GATE(0x805DCE30, &lit_7146);
#pragma pop

/* 805DCE34-805DCE38 0003E0 0004+00 0/1 0/0 0/0 .rodata          @7147 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7147 = 2315.0f;
COMPILER_STRIP_GATE(0x805DCE34, &lit_7147);
#pragma pop

/* 805DCE38-805DCE3C 0003E4 0004+00 0/1 0/0 0/0 .rodata          @7148 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7148 = 241.0f;
COMPILER_STRIP_GATE(0x805DCE38, &lit_7148);
#pragma pop

/* 805DCE3C-805DCE40 0003E8 0004+00 0/2 0/0 0/0 .rodata          @7149 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7149 = 145.0f;
COMPILER_STRIP_GATE(0x805DCE3C, &lit_7149);
#pragma pop

/* 805DCE40-805DCE44 0003EC 0004+00 0/1 0/0 0/0 .rodata          @7150 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7150 = 215.0f;
COMPILER_STRIP_GATE(0x805DCE40, &lit_7150);
#pragma pop

/* 805DCE44-805DCE48 0003F0 0004+00 0/1 0/0 0/0 .rodata          @7151 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7151 = -1.0f / 5.0f;
COMPILER_STRIP_GATE(0x805DCE44, &lit_7151);
#pragma pop

/* 805DCE48-805DCE4C 0003F4 0004+00 0/3 0/0 0/0 .rodata          @7152 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7152 = -300.0f;
COMPILER_STRIP_GATE(0x805DCE48, &lit_7152);
#pragma pop

/* 805DCE4C-805DCE50 0003F8 0004+00 0/1 0/0 0/0 .rodata          @7153 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7153 = -1510.0f;
COMPILER_STRIP_GATE(0x805DCE4C, &lit_7153);
#pragma pop

/* 805DCE50-805DCE54 0003FC 0004+00 0/1 0/0 0/0 .rodata          @7154 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7154 = -1435.0f;
COMPILER_STRIP_GATE(0x805DCE50, &lit_7154);
#pragma pop

/* 805DCE54-805DCE58 000400 0004+00 0/1 0/0 0/0 .rodata          @7155 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7155 = 2525.0f;
COMPILER_STRIP_GATE(0x805DCE54, &lit_7155);
#pragma pop

/* 805DCE58-805DCE5C 000404 0004+00 0/2 0/0 0/0 .rodata          @7156 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7156 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x805DCE58, &lit_7156);
#pragma pop

#ifndef NONMATCHING
/* 805DDEA0-805DDEB0 000438 000C+04 0/1 0/0 0/0 .bss             @6354 */
#pragma push
#pragma force_active on
static u8 lit_6354[12 + 4 /* padding */];
#pragma pop

/* 805DDEB0-805DDEBC 000448 000C+00 0/1 0/0 0/0 .bss             @6357 */
#pragma push
#pragma force_active on
static u8 lit_6357[12];
#pragma pop

/* 805DDEBC-805DDEC8 000454 000C+00 0/1 0/0 0/0 .bss             @6358 */
#pragma push
#pragma force_active on
static u8 lit_6358[12];
#pragma pop

/* 805DDEC8-805DDED4 000460 000C+00 0/1 0/0 0/0 .bss             @6359 */
#pragma push
#pragma force_active on
static u8 lit_6359[12];
#pragma pop

/* 805DDED4-805DDEE0 00046C 000C+00 0/1 0/0 0/0 .bss             @6360 */
#pragma push
#pragma force_active on
static u8 lit_6360[12];
#pragma pop

/* 805DDEE0-805DDF1C 000478 003C+00 0/1 0/0 0/0 .bss             down_center_dt$6353 */
#pragma push
#pragma force_active on
static u8 down_center_dt[60];
#pragma pop

/* 805DDF1C-805DDF2C 0004B4 000C+04 0/1 0/0 0/0 .bss             @6362 */
#pragma push
#pragma force_active on
static u8 lit_6362[12 + 4 /* padding */];
#pragma pop

/* 805DDF2C-805DDF38 0004C4 000C+00 0/1 0/0 0/0 .bss             @6365 */
#pragma push
#pragma force_active on
static u8 lit_6365[12];
#pragma pop

/* 805DDF38-805DDF44 0004D0 000C+00 0/1 0/0 0/0 .bss             @6366 */
#pragma push
#pragma force_active on
static u8 lit_6366[12];
#pragma pop

/* 805DDF44-805DDF50 0004DC 000C+00 0/1 0/0 0/0 .bss             @6367 */
#pragma push
#pragma force_active on
static u8 lit_6367[12];
#pragma pop

/* 805DDF50-805DDF5C 0004E8 000C+00 0/1 0/0 0/0 .bss             @6368 */
#pragma push
#pragma force_active on
static u8 lit_6368[12];
#pragma pop

/* 805DDF5C-805DDF98 0004F4 003C+00 0/1 0/0 0/0 .bss             down_eye_dt$6361 */
#pragma push
#pragma force_active on
static u8 down_eye_dt[60];
#pragma pop
#endif

/* 805D074C-805D1E30 00560C 16E4+00 1/1 0/0 0/0 .text            executeDamage__8daB_DS_cFv */
#ifdef NONMATCHING
// regalloc, bss/data ordering, and an instruction out of order
void daB_DS_c::executeDamage() {
    static cXyz down_center_dt[5] = {
        cXyz(345.0f, 2100.0f, -1575.0f),
        cXyz(1490.0f, 1160.0f, -2050.0f),
        cXyz(1465.0f, 1135.0f, -2110.0f),
        cXyz(-320.0f, 30.0f, -2355.0f),
        cXyz(-320.0f, -1900.0f, -2355.0f),
    };

    static cXyz down_eye_dt[5] = {
        cXyz(-180.0f, 1390.0f, 3080.0f),
        cXyz(1675.0f, 1120.0f, -2310.0f),
        cXyz(1690.0f, 1210.0f, -2315.0f),
        cXyz(1400.0f, 2215.0f, 1480.0f),
        cXyz(1400.0f, 280.0f, 1480.0f),
    };

    static struct {
        u16 eff_id;
        int joint_no;
    } const BROKENBORN_EFF_DT[12] = {
        {0x8BDB, 0},
        {0x8BDC, 0},
        {0x8BDD, 0},
        {0x8BDE, 0},
        {0x8BDF, 1},
        {0x8BE0, 1},
        {0x8BE1, 1},
        {0x8BE2, 1},
        {0x8BE3, 2},
        {0x8BE4, 2},
        {0x8BE5, 2},
        {0x8BE6, 2},
    };

    static int Ds_damage_wait_id[3] = {ANM_DAMAGE_A_WAIT, ANM_DAMAGE_B_WAIT, ANM_LASTDAMAGE_WAIT};
    static int Ds_damage_id[3] = {ANM_DAMAGE_A, ANM_DAMAGE_B, ANM_LASTDAMAGE};
    static u16 eff_spHit_id[2] = {0x8BD9, 0x8BDA};
    static u16 eff_LastSmoke_id[4] = {0x8C25, 0x8C26, 0x8C27, 0x8C28};

    camera_class* camera = dComIfGp_getCamera(i_dComIfGp_getPlayerCameraID(0));
    daPy_py_c* player = daPy_getPlayerActorClass();
    csXyz angle = shape_angle;
    cXyz vec1, vec2;
    cXyz particle_scale(1.0f, 1.0f, 1.0f);
    mHeadAngle_Clear();
    mDamageTimer = 50;
    s16 angle_to_player;
    int index;

    switch (mMode) {
    case 0:
        mHintTimer1 = 0;
        mHandAtLCyl.OffAtSetBit();
        mHandAtRCyl.OffAtSetBit();
        if (!startDemoCheck()) {
            break;
        }
        mColBlend = 0.0f;
        for (int i = 0; i < 2; i++) {
            dComIfGp_particle_set(eff_spHit_id[i], &current.pos, &shape_angle, NULL);
        }
        field_0x84d = 0;
        mClearTrap(true);
        daPy_getPlayerActorClass()->i_changeOriginalDemo();
        daPy_getPlayerActorClass()->i_changeDemoMode(14, 1, 0, 0);
        angle_to_player = fopAcM_searchPlayerAngleY(this);
        daPy_getPlayerActorClass()->setPlayerPosAndAngle(&player->current.pos, angle_to_player, 0);
        dComIfGp_getVibration().StartShock(5, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        field_0x7d0 = fopAcM_searchPlayerAngleY(this);
        setBck(Ds_damage_wait_id[mBackboneJoint], 2, 3.0f, 1.0f);
        mIsDemo = true;
        field_0x85e = false;
        if (mMode == 0) {
            mActionTimer = 5;
        } else {
            mActionTimer = 30;
        }
        mMode++;
        break;

    case 1:
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        daPy_getPlayerActorClass()->i_changeDemoMode(14, 2, 0, 0);
        mActionTimer = 41;
        mIsOpeningDemo = false;
        if (mBackboneJoint < 2) {
            mBrokenBone = mBackboneJoint;
            mMode++;
        } else {
            mDead = true;
            mIsOpeningDemo = true;
            mMode = 10;
        }
        break;

    case 2:
        if (cLib_calcTimer(&mActionTimer) == 1 &&
            (mAnmID == ANM_DAMAGE_A_WAIT || mAnmID == ANM_DAMAGE_B_WAIT))
        {
            setBck(Ds_damage_id[mBrokenBone], 0, 3.0f, 1.0f);
        }

        if (mActionTimer == 0 && mAnmID != ANM_DAMAGE_A && mAnmID != ANM_DAMAGE_B
            && ((mBrokenBone == 0 && mpMorf->checkFrame(24.0f))
                || (mBrokenBone != 0 && mpMorf->checkFrame(7.0f))))
        {
            int index = mBackboneJoint * 4;
            for (int i = 0; i < 4; i++) {
                JPABaseEmitter* emitter = dComIfGp_particle_set(BROKENBORN_EFF_DT[index + i].eff_id,
                                                                &current.pos, &shape_angle, NULL);
                if (emitter != NULL) {
                    emitter->setGlobalSRTMatrix(
                        mpMorf->getModel()->i_getAnmMtx(BROKENBORN_EFF_DT[index + i].joint_no));
                }
            }

            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_BONE_BRK, 0, -1);
            damageSet();
            mBackboneJoint++;

            angle_to_player = fopAcM_searchPlayerAngleY(this);
            for (int i = 0; i < 15; i++) {
                mDoMtx_YrotS(*calc_mtx, angle_to_player);
                vec1.x = 0.0f;
                vec1.y = 0.0f;
                vec1.z = 1000.0f;
                MtxPosition(&vec1, &vec2);
                vec2 += current.pos;
                if (mAcch.GetGroundH() != -1e9f) {
                    vec2.y = mAcch.GetGroundH();
                }
                angle = shape_angle;
                angle.y = fopAcM_searchPlayerAngleY(this);
                fopAc_ac_c* actor;
                if (mStaltroopID[i] != 0 && !fopAcM_SearchByID(mStaltroopID[i], &actor)) {
                    mStaltroopID[i] = 0;
                }
                if (mStaltroopID[i] == 0) {
                    mStaltroopID[i] = fopAcM_createChild(PROC_E_ZS, fopAcM_GetID(this), 1, &vec2,
                                                         fopAcM_GetRoomNo(this), &angle,
                                                         NULL, -1, NULL);
                }
            }

            if (mBackboneJoint == 2) {
                for (int i = 0; i < 5; i++) {
                    if (mStaltroop2ID[i] == 0) {
                        mStaltroop2ID[i] = fopAcM_createChild(PROC_E_ZS, fopAcM_GetID(this), 2,
                                                            &current.pos, fopAcM_GetRoomNo(this),
                                                            NULL, NULL, -1, NULL);
                    }
                }
            }
        }

        field_0x7dc[mBrokenBone] -= 12.75f;
        if (field_0x7dc[mBrokenBone] < 0.0f) {
            field_0x7dc[mBrokenBone] = 0.0f;
        }
        damageHitCamera();
        damageDownCheck();
        if (field_0x85e && field_0x7dc[mBrokenBone] < 2.0f) {
            mActionTimer = 30;
            field_0x7dc[mBrokenBone] = 0.0f;
            mMode = 3;
        }
        break;

    case 3:
        damageDownCheck();
        mIsDemo = false;
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }

        mDoMtx_YrotS(*calc_mtx, shape_angle.y);
        vec1.zero();
        vec1.y = 1100.0f;
        vec1.z = -1500.0f;
        MtxPosition(&vec1, &vec2);
        vec2 += current.pos;
        cLib_addCalcPos(&mCameraCenter, vec2, 1.0f, 2000.0f, 300.0f);
        vec1.zero();
        vec1.y = 1600.0f;
        vec1.z = 4200.0f;
        MtxPosition(&vec1, &vec2);
        vec2 += current.pos;
        cLib_addCalcPos(&mCameraEye, vec2, 1.0f, 2000.0f, 300.0f);
        camera->mCamera.Set(mCameraCenter, mCameraEye);

        if (mpMorf->isStop()) {
            mBrokenBone = 0;
            f32 dist = fopAcM_searchPlayerDistance(this);
            mDoMtx_YrotS(*calc_mtx, dist + 0x8000);
            vec1.x = 0.0f;
            vec1.y = 0.0f;
            vec1.z = -1000.0f;
            MtxPosition(&vec1, &vec2);
            vec2 += player->current.pos;
            vec1 = player->current.pos;
            camera->mCamera.Reset(player->current.pos, vec2);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            i_dComIfGp_event_reset();

            if (mBitSw3 != 0xff) {
                fopAcM_offSwitch(this, mBitSw3);
            }
            mBirthTrapTimerF = 0x1e;
            shape_angle.y = current.angle.y = fopAcM_searchPlayerAngleY(this) + 0xc000;
            setActionMode(ACT_BREATH_ATTACK, 0);
        }
        break;

    case 10:
        field_0x7dc[mBackboneJoint] -= 12.75f;
        if (field_0x7dc[mBackboneJoint] < 0.0f) {
            field_0x7dc[mBackboneJoint] = 0.0f;
        }
        damageHitCamera();

        if (cLib_calcTimer(&mActionTimer) == 0 && field_0x7dc[mBackboneJoint] == 0.0f) {
            if (mBitSw != 0xff) {
                fopAcM_offSwitch(this, mBitSw);
            }
            setBck(Ds_damage_id[mBackboneJoint], 0, 3.0f, 1.0f);
            for (int i = 0; i < 4; i++) {
                dComIfGp_particle_set(eff_LastSmoke_id[i], &current.pos, &home.angle, NULL);
            }
            vec1.x = 0.0f;
            vec1.y = -1600.0f;
            vec1.z = 2315.0f;
            daPy_getPlayerActorClass()->i_changeDemoMode(4, 2, 0, 0);
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&vec1, -0x8000, 0);
            mMode++;
        }
        break;

    case 11:
        cLib_addCalcAngleS2(&shape_angle.x, 2000, 8, 0x100);
        cLib_addCalc0(&field_0x7f8, 0.1f, 0.01f);

        if (mpMorf->checkFrame(120.0f)) {
            hand_smokeSet(1);
            dComIfGp_getVibration().StartShock(1, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            mSound.startCreatureSound(Z2SE_EN_DS_DMG_HAND, 0, -1);
            mBossPhase = 1;
            damageSet();
            int index = 8;
            for (int i = 0; i < 4; i++) {
                JPABaseEmitter* emitter = dComIfGp_particle_set(BROKENBORN_EFF_DT[index + i].eff_id,
                                                                &current.pos, &shape_angle, NULL);
                if (emitter != NULL) {
                    emitter->setGlobalSRTMatrix(
                        mpMorf->getModel()->i_getAnmMtx(BROKENBORN_EFF_DT[index + i].joint_no));
                }
            }
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_BONE_BRK, 0, -1);
        }

        if (mpMorf->checkFrame(241.0f)) {
            hand_smokeSet(2);
            dComIfGp_getVibration().StartShock(5, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_DMG_HAND, 0, -1);
        }

        if (mpMorf->checkFrame(145.0f)) {
            for (int i = 0; i < 2; i++) {
                mHitParticleKey[i] = dComIfGp_particle_set(mHitParticleKey[i], eff_smoke_id[i],
                                                           &current.pos, &angle, &particle_scale);
            }
            mSoundPos = current.pos;
            dComIfGp_getVibration().StartShock(2, 0x4f, cXyz(0.0f, 1.0f, 0.0f));
            mSound.startCreatureSound(Z2SE_EN_DS_DMG_HAND, 0, -1);
        }

        index = 0;
        if ((int)mpMorf->getFrame() > 130) {
            index = 1;
        }
        if ((int)mpMorf->getFrame() < 140) {
            shape_angle.y = home.angle.y;
            current.angle.y = shape_angle.y;
            mCameraCenter = down_center_dt[index];
            mCameraEye = down_eye_dt[index];
        } else {
            cLib_addCalcPos(&mCameraCenter, down_center_dt[2], 0.8f, 1.0f, 0.5f);
            cLib_addCalcPos(&mCameraEye, down_eye_dt[2], 0.8f, 1.0f, 0.5f);
        }
        camera->mCamera.Set(mCameraCenter, mCameraEye);

        if (mpMorf->checkFrame(215.0f)) {
            dComIfGp_getVibration().StartShock(4, 0x4f, cXyz(0.0f, 1.0f, 0.0f));
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_DMG_HAND, 0, -1);
        }

        if (!mpMorf->isStop()) {
            break;
        }
        mActionTimer = 30;
        mMode = 20;
        // no break

    case 20:
        if (cLib_calcTimer(&mActionTimer) != 0) {
            if (mActionTimer == 1) {
                mSoundPos = current.pos;
                mSound.startCreatureSound(Z2SE_EN_DS_EYE_OFF, 0, -1);
            }
            break;
        }

        cLib_addCalc0(&field_0x7e8, 0.7f, 3.0f);
        if (field_0x7e8 > 2.0f) {
            break;
        }
        mActionTimer = 30;
        field_0x7e8 = 0.0f;
        mMode++;
        // no break

    case 21:
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        mCameraCenter = down_center_dt[3];
        mCameraEye = down_eye_dt[3];
        camera->mCamera.Set(mCameraCenter, mCameraEye);
        dComIfGp_getVibration().StartShock(5, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        mActionTimer = 30;
        mMode++;
        // no break

    case 22:
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        mColBlend = 0.0f;
        mMode = 100;
        mSound.startCreatureSound(Z2SE_EN_DS_MDEMO_FALL, 0, -1);
        // no break

    case 100:
        gravity = -0.2f;
        if (current.pos.y > -1600.0f) {
            if (current.pos.y <= -300.0f) {
                dComIfGs_onZoneSwitch(6, fopAcM_GetRoomNo(this));
            }
            break;
        }
        mBossPhase = 100;
        u32 param = fopAcM_GetParam(this);
        csXyz p2_angle;
        p2_angle = shape_angle;
        p2_angle.z = 0;
        p2_angle.y = 0;
        p2_angle.x = 0;
        fopAcM_create(PROC_B_DS, param | PHASE_2, &current.pos,
                      fopAcM_GetRoomNo(this), &p2_angle, NULL, 0xff);
        mMode = 101;
        // no break

    case 101:
        cLib_addCalc2(&mCameraCenter.y, down_center_dt[4].y, 0.7f, 10.0f);
        cLib_addCalc2(&mCameraEye.y, down_eye_dt[4].y, 0.7f, 10.0f);
        camera->mCamera.Set(mCameraCenter, mCameraEye);
        if (fabsf(mCameraCenter.y - down_center_dt[4].y) > 2.0f
            || fabsf(mCameraEye.y - down_eye_dt[4].y) > 2.0f)
        {
            break;
        }
        dComIfGp_getVibration().StopQuake(0x1f);
        mActionTimer = 100;
        mMode = 102;
        // no break

    case 102:
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        dKy_change_colpat(3);
        vec1.set(0.0f, -1510.0f, 2315.0f);
        vec2.set(0.0f, -1435.0f, 2525.0f);
        camera->mCamera.Reset(vec1, vec2);
        camera->mCamera.Start();
        camera->mCamera.SetTrimSize(0);
        i_dComIfGp_event_reset();
        fopAcM_delete(this);
    }

    if (mMode >= 100) {
        cLib_addCalc(&mColBlend, 1.0f, 0.02f, 0.02f, 0.001f);
        dKy_custom_colset(1, 3, mColBlend);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::executeDamage() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/executeDamage__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805D1E30-805D203C 006CF0 020C+00 1/1 0/0 0/0 .text            executeEtcDamage__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::executeEtcDamage() {
    static int Ds_Etc_damage_id[9] = {
        ANM_NODAMAGE_01_A, ANM_NODAMAGE_01_B, ANM_NODAMAGE_01_C,
        ANM_NODAMAGE_02_A, ANM_NODAMAGE_02_B, ANM_NODAMAGE_02_C,
        ANM_NODAMAGE_03_A, ANM_NODAMAGE_03_B, ANM_NODAMAGE_03_C,
    };
    static int smokeSet_dt[3] = {32, 29, 29};
    switch (mMode) {
    case 0:
        dComIfGp_getVibration().StartShock(7, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        setBck(Ds_Etc_damage_id[mBackboneJoint], 0, 3.0f, 1.0f);
        mColBlend = 0.0f;
        mMode = 3;
        break;

    case 1:
        dComIfGp_getVibration().StartShock(7, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        setBck(Ds_Etc_damage_id[mBackboneJoint + 3], 0, 3.0f, 1.0f);
        mColBlend = 0.0f;
        mMode = 4;
        break;

    case 2:
        setBck(Ds_Etc_damage_id[mBackboneJoint + 6], 0, 3.0f, 1.0f);
        mColBlend = 0.0f;
        mMode = 5;
        break;

    case 3:
    case 4:
        if ((int)mpMorf->getFrame() == smokeSet_dt[mBackboneJoint]) {
            if (mMode == 4) {
                hand_smokeSet(1);
            } else {
                hand_smokeSet(2);
            }
        }
        // no break

    case 5:
        if (mpMorf->isStop()) {
            setActionMode(ACT_WAIT, 0);
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::executeEtcDamage() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/executeEtcDamage__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805D203C-805D226C 006EFC 0230+00 1/1 0/0 0/0 .text            breath_smokeSet__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals / generics
void daB_DS_c::breath_smokeSet() {
    static u16 effId[3] = {0x85F6, 0x89B0, 0x89B1};
    cXyz particle_scale(1.0f, 1.0f, 1.0f);
    cLib_addCalc2(&mBreathTimerBase, 50.0f, 0.7f, 4.0f);
    breathTimerBase = (int)mBreathTimerBase;
    for (int i = 0; i < 3; i++) {
        mBreathSmokeParticleKey[i] = dComIfGp_particle_set(mBreathSmokeParticleKey[i], effId[i],
                                                           &mHeadPos, &mHeadAngle, &particle_scale);
        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mBreathSmokeParticleKey[i]);
        if (emitter != NULL) {
            emitter->setGlobalSRTMatrix(mpMorf->getModel()->i_getAnmMtx(6));
        }
    }
    Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_DS_FIRE_CLMN, &mHeadPos,
                                  0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    mBreathTimeCount++;
    mBreathTimeCount &= 3;
    if (mBreathTimeCount == 0) {
        cXyz vec = mMouthPos - mBulletPos;
        csXyz bullet_angle;
        bullet_angle.x = -vec.atan2sY_XZ();
        bullet_angle.y = vec.atan2sX_Z();
        bullet_angle.z = 0;
        cXyz bullet_pos = mBulletPos;
        fopAcM_create(PROC_B_DS, BULLET_A, &bullet_pos, fopAcM_GetRoomNo(this),
                      &bullet_angle, NULL, 0xff);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::breath_smokeSet() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/breath_smokeSet__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DCE5C-805DCE60 000408 0004+00 0/1 0/0 0/0 .rodata          @7321 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7321 = 82.0f;
COMPILER_STRIP_GATE(0x805DCE5C, &lit_7321);
#pragma pop

/* 805DCE60-805DCE64 00040C 0004+00 0/1 0/0 0/0 .rodata          @7322 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7322 = 1.0f / 25.0f;
COMPILER_STRIP_GATE(0x805DCE60, &lit_7322);
#pragma pop

/* 805D226C-805D2520 00712C 02B4+00 1/1 0/0 0/0 .text            executeBreathAttack__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals / generics
void daB_DS_c::executeBreathAttack() {
    static int Ds_breath_id[9] = {
        ANM_ATTACK02_A_A, ANM_ATTACK02_B_A, ANM_ATTACK02_C_A,
        ANM_ATTACK02_A_B, ANM_ATTACK02_B_B, ANM_ATTACK02_C_B,
        ANM_ATTACK02_A_C, ANM_ATTACK02_B_C, ANM_ATTACK02_C_C,
    };
    switch (mMode) {
    case 0:
        mColBlend = 0.0f;
        field_0x840 = 1;
        mBh2AttackAngleF = 0;
        setBck(Ds_breath_id[mBackboneJoint * 3], 0, 10.0f, 1.0f);
        mMode = 1;
        break;

    case 1:
        if (mpMorf->checkFrame(82.0f)) {
            hand_smokeSet(0);
            mSound.startCreatureSound(Z2SE_EN_DS_HANDS, 0, -1);
        }
        if ((int)mpMorf->getFrame() > 82) {
            cLib_addCalcAngleS2(&mBh2AttackAngleF, 10000, 10, 0x100);
        }
        if (mpMorf->isStop()) {
            setBck(Ds_breath_id[mBackboneJoint * 3 + 1], 2, 3.0f, 1.0f);
            mActionTimer = 185;
            mBreathTimerBase = 0.0f;
            breathTimerBase = 0;
            mMode = 2;
        }
        break;

    case 2:
        if (mActionTimer == 0 || daPy_getPlayerActorClass()->getDamageWaitTimer() > 10) {
            setBck(Ds_breath_id[mBackboneJoint * 3 + 2], 0, 3.0f, 1.0f);
            mColBlend = 0.0f;
            mMode = 3;
        } else if (cLib_calcTimer(&mActionTimer) != 0) {
            cLib_addCalcAngleS2(&mBh2AttackAngleF, 5000, 10, 0x100);
            cLib_addCalc(&mColBlend, 1.0f, 0.02f, 0.02f, 0.04f);
            dKy_custom_colset(1, 5, mColBlend);
            field_0x840 = 5;
            breath_smokeSet();
        }
        break;

    case 3:
        if (mpMorf->isStop()) {
            setActionMode(ACT_WAIT, 0);
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::executeBreathAttack() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/executeBreathAttack__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DCE64-805DCE68 000410 0004+00 0/2 0/0 0/0 .rodata          @7385 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7385 = 90.0f;
COMPILER_STRIP_GATE(0x805DCE64, &lit_7385);
#pragma pop

/* 805DCE68-805DCE6C 000414 0004+00 0/1 0/0 0/0 .rodata          @7386 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7386 = 0.25f;
COMPILER_STRIP_GATE(0x805DCE68, &lit_7386);
#pragma pop

/* 805D2520-805D272C 0073E0 020C+00 1/1 0/0 0/0 .text            executeHandAttack__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::executeHandAttack() {
    static int Ds_HandAt_id[6] = {
        ANM_ATTACK_R_A, ANM_ATTACK_R_B, ANM_ATTACK_R_C,
        ANM_ATTACK_L_A, ANM_ATTACK_L_B, ANM_ATTACK_L_C,
    };
    
    switch (mMode) {
    case 0:
        mChkHigh = 0.0f;
        setBck(Ds_HandAt_id[mBackboneJoint + mAttackingHand * 3], 0, 10.0f, 1.0f);
        mMode++;
        break;

    case 1:
        if ((int)mpMorf->getFrame() > 90 && (int)mpMorf->getFrame() < 110) {
            bool bvar1 = false;
            int ivar3 = (int)((mpMorf->getFrame() - 90.0f) / 4.0f) + 7;
            if ((int)mChkHigh < ivar3) {
                mChkHigh = ivar3;
                bvar1 = true;
            }
            if (mAttackingHand == 0) {
                mHandAtRCyl.OnAtSetBit();
                if ((int)mpMorf->getFrame() > 100 && bvar1) {
                    hand_smokeSet(2);
                }
            } else {
                mHandAtLCyl.OnAtSetBit();
                if ((int)mpMorf->getFrame() > 100 && bvar1) {
                    hand_smokeSet(1);
                }
            }
        } else {
            mHandAtLCyl.OffAtSetBit();
            mHandAtRCyl.OffAtSetBit();
        }
        if (mpMorf->isStop()) {
            setActionMode(ACT_WAIT, 0);
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::executeHandAttack() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/executeHandAttack__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805D272C-805D28D0 0075EC 01A4+00 1/1 0/0 0/0 .text            executeBreathSearch__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::executeBreathSearch() {
    static int Ds_BS_id[3] = {ANM_ATTACK01_A, ANM_ATTACK01_B, ANM_ATTACK01_C};
    mHeadAngle_Clear();

    switch (mMode) {
    case 0:
        setBck(Ds_BS_id[mBackboneJoint], 0, 10.0f, 1.0f);
        mMode++;
        // no break

    case 1:
        if ((int)mpMorf->getFrame() >= 177 && (int)mpMorf->getFrame() <= 195) {
            mHandAtRCyl.OnAtSetBit();
            mHandAtLCyl.OnAtSetBit();
            hand_smokeSet(0);
        } else {
            mHandAtLCyl.OffAtSetBit();
            mHandAtRCyl.OffAtSetBit();
        }
        if (mpMorf->isStop() && !mHandBreathChk()) {
            setActionMode(ACT_WAIT, 0);
        }
        break;
    }

    if ((int)mpMorf->getFrame() > 70 && (int)mpMorf->getFrame() < 150) {
        s16 angle = fopAcM_searchPlayerAngleY(this);
        cLib_addCalcAngleS2(&current.angle.y, angle, 40, 0x200);
        shape_angle.y = current.angle.y;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::executeBreathSearch() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/executeBreathSearch__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DCE6C-805DCE70 000418 0004+00 0/1 0/0 0/0 .rodata          @7892 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7892 = 315.0f;
COMPILER_STRIP_GATE(0x805DCE6C, &lit_7892);
#pragma pop

/* 805DCE70-805DCE74 00041C 0004+00 0/1 0/0 0/0 .rodata          @7893 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7893 = 1460.0f;
COMPILER_STRIP_GATE(0x805DCE70, &lit_7893);
#pragma pop

/* 805DCE74-805DCE78 000420 0004+00 0/1 0/0 0/0 .rodata          @7894 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7894 = 415.0f;
COMPILER_STRIP_GATE(0x805DCE74, &lit_7894);
#pragma pop

/* 805DCE78-805DCE7C 000424 0004+00 0/2 0/0 0/0 .rodata          @7895 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7895 = 1880.0f;
COMPILER_STRIP_GATE(0x805DCE78, &lit_7895);
#pragma pop

/* 805DCE7C-805DCE80 000428 0004+00 0/1 0/0 0/0 .rodata          @7896 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7896 = 465.0f;
COMPILER_STRIP_GATE(0x805DCE7C, &lit_7896);
#pragma pop

/* 805DCE80-805DCE84 00042C 0004+00 0/1 0/0 0/0 .rodata          @7897 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7897 = -255.0f;
COMPILER_STRIP_GATE(0x805DCE80, &lit_7897);
#pragma pop

/* 805DCE84-805DCE88 000430 0004+00 0/1 0/0 0/0 .rodata          @7898 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7898 = -1460.0f;
COMPILER_STRIP_GATE(0x805DCE84, &lit_7898);
#pragma pop

/* 805DCE88-805DCE8C 000434 0004+00 0/1 0/0 0/0 .rodata          @7899 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7899 = 3070.0f;
COMPILER_STRIP_GATE(0x805DCE88, &lit_7899);
#pragma pop

/* 805DCE8C-805DCE90 000438 0004+00 0/1 0/0 0/0 .rodata          @7900 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7900 = 3340.0f;
COMPILER_STRIP_GATE(0x805DCE8C, &lit_7900);
#pragma pop

/* 805DCE90-805DCE94 00043C 0004+00 0/1 0/0 0/0 .rodata          @7901 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7901 = 1940.0f;
COMPILER_STRIP_GATE(0x805DCE90, &lit_7901);
#pragma pop

/* 805DCE94-805DCE98 000440 0004+00 0/1 0/0 0/0 .rodata          @7902 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7902 = 1520.0f;
COMPILER_STRIP_GATE(0x805DCE94, &lit_7902);
#pragma pop

/* 805DCE98-805DCE9C 000444 0004+00 0/1 0/0 0/0 .rodata          @7903 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7903 = 165.0f;
COMPILER_STRIP_GATE(0x805DCE98, &lit_7903);
#pragma pop

/* 805DCE9C-805DCEA0 000448 0004+00 0/1 0/0 0/0 .rodata          @7904 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7904 = 1930.0f;
COMPILER_STRIP_GATE(0x805DCE9C, &lit_7904);
#pragma pop

/* 805DCEA0-805DCEA4 00044C 0004+00 0/1 0/0 0/0 .rodata          @7905 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7905 = 1515.0f;
COMPILER_STRIP_GATE(0x805DCEA0, &lit_7905);
#pragma pop

/* 805DCEA4-805DCEA8 000450 0004+00 0/1 0/0 0/0 .rodata          @7906 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7906 = 2083.0f;
COMPILER_STRIP_GATE(0x805DCEA4, &lit_7906);
#pragma pop

/* 805DCEA8-805DCEAC 000454 0004+00 0/1 0/0 0/0 .rodata          @7907 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7907 = 450.0f;
COMPILER_STRIP_GATE(0x805DCEA8, &lit_7907);
#pragma pop

/* 805DCEAC-805DCEB0 000458 0004+00 0/1 0/0 0/0 .rodata          @7908 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7908 = 1955.0f;
COMPILER_STRIP_GATE(0x805DCEAC, &lit_7908);
#pragma pop

/* 805DCEB0-805DCEB4 00045C 0004+00 0/1 0/0 0/0 .rodata          @7909 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7909 = 1815.0f;
COMPILER_STRIP_GATE(0x805DCEB0, &lit_7909);
#pragma pop

/* 805DCEB4-805DCEB8 000460 0004+00 0/1 0/0 0/0 .rodata          @7910 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7910 = 2370.0f;
COMPILER_STRIP_GATE(0x805DCEB4, &lit_7910);
#pragma pop

/* 805DCEB8-805DCEBC 000464 0004+00 0/1 0/0 0/0 .rodata          @7911 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7911 = 1660.0f;
COMPILER_STRIP_GATE(0x805DCEB8, &lit_7911);
#pragma pop

/* 805DCEBC-805DCEC0 000468 0004+00 0/1 0/0 0/0 .rodata          @7912 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7912 = -290.0f;
COMPILER_STRIP_GATE(0x805DCEBC, &lit_7912);
#pragma pop

/* 805DCEC0-805DCEC4 00046C 0004+00 0/1 0/0 0/0 .rodata          @7913 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7913 = -1560.0f;
COMPILER_STRIP_GATE(0x805DCEC0, &lit_7913);
#pragma pop

/* 805DCEC4-805DCEC8 000470 0004+00 0/1 0/0 0/0 .rodata          @7914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7914 = 3690.0f;
COMPILER_STRIP_GATE(0x805DCEC4, &lit_7914);
#pragma pop

/* 805DCEC8-805DCECC 000474 0004+00 0/1 0/0 0/0 .rodata          @7915 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7915 = 3230.0f;
COMPILER_STRIP_GATE(0x805DCEC8, &lit_7915);
#pragma pop

/* 805DCECC-805DCED0 000478 0004+00 0/1 0/0 0/0 .rodata          @7916 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7916 = -15.0f;
COMPILER_STRIP_GATE(0x805DCECC, &lit_7916);
#pragma pop

/* 805DCED0-805DCED4 00047C 0004+00 0/1 0/0 0/0 .rodata          @7917 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7917 = 2005.0f;
COMPILER_STRIP_GATE(0x805DCED0, &lit_7917);
#pragma pop

/* 805DCED4-805DCED8 000480 0004+00 0/1 0/0 0/0 .rodata          @7918 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7918 = 1180.0f;
COMPILER_STRIP_GATE(0x805DCED4, &lit_7918);
#pragma pop

/* 805DCED8-805DCEDC 000484 0004+00 0/1 0/0 0/0 .rodata          @7919 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7919 = 1840.0f;
COMPILER_STRIP_GATE(0x805DCED8, &lit_7919);
#pragma pop

/* 805DCEDC-805DCEE0 000488 0004+00 0/1 0/0 0/0 .rodata          @7920 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7920 = 1885.0f;
COMPILER_STRIP_GATE(0x805DCEDC, &lit_7920);
#pragma pop

/* 805DCEE0-805DCEE4 00048C 0004+00 0/1 0/0 0/0 .rodata          @7921 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7921 = 2260.0f;
COMPILER_STRIP_GATE(0x805DCEE0, &lit_7921);
#pragma pop

/* 805DCEE4-805DCEE8 000490 0004+00 0/1 0/0 0/0 .rodata          @7922 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7922 = 2225.0f;
COMPILER_STRIP_GATE(0x805DCEE4, &lit_7922);
#pragma pop

/* 805DCEE8-805DCEEC 000494 0004+00 0/1 0/0 0/0 .rodata          @7923 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7923 = 2145.0f;
COMPILER_STRIP_GATE(0x805DCEE8, &lit_7923);
#pragma pop

/* 805DCEEC-805DCEF0 000498 0004+00 0/1 0/0 0/0 .rodata          @7924 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7924 = 1635.0f;
COMPILER_STRIP_GATE(0x805DCEEC, &lit_7924);
#pragma pop

/* 805DCEF0-805DCEF4 00049C 0004+00 0/1 0/0 0/0 .rodata          @7925 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7925 = -745.0f;
COMPILER_STRIP_GATE(0x805DCEF0, &lit_7925);
#pragma pop

/* 805DCEF4-805DCEF8 0004A0 0004+00 0/1 0/0 0/0 .rodata          @7926 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7926 = 2050.0f;
COMPILER_STRIP_GATE(0x805DCEF4, &lit_7926);
#pragma pop

/* 805DCEF8-805DCEFC 0004A4 0004+00 0/1 0/0 0/0 .rodata          @7927 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7927 = -140.0f;
COMPILER_STRIP_GATE(0x805DCEF8, &lit_7927);
#pragma pop

/* 805DCEFC-805DCF00 0004A8 0004+00 0/1 0/0 0/0 .rodata          @7928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7928 = 2400.0f;
COMPILER_STRIP_GATE(0x805DCEFC, &lit_7928);
#pragma pop

/* 805DCF00-805DCF04 0004AC 0004+00 0/1 0/0 0/0 .rodata          @7929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7929 = -500.0f;
COMPILER_STRIP_GATE(0x805DCF00, &lit_7929);
#pragma pop

/* 805DCF04-805DCF08 0004B0 0004+00 0/1 0/0 0/0 .rodata          @7930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7930 = 760.0f;
COMPILER_STRIP_GATE(0x805DCF04, &lit_7930);
#pragma pop

#ifndef NONMATCHING
/* 805DDF98-805DDFA8 000530 000C+04 0/1 0/0 0/0 .bss             @7447 */
#pragma push
#pragma force_active on
static u8 lit_7447[12 + 4 /* padding */];
#pragma pop

/* 805DDFA8-805DDFB4 000540 000C+00 0/1 0/0 0/0 .bss             @7450 */
#pragma push
#pragma force_active on
static u8 lit_7450[12];
#pragma pop

/* 805DDFB4-805DDFC0 00054C 000C+00 0/1 0/0 0/0 .bss             @7451 */
#pragma push
#pragma force_active on
static u8 lit_7451[12];
#pragma pop

/* 805DDFC0-805DDFE4 000558 0024+00 0/1 0/0 0/0 .bss             mOp2PlayerDt$7446 */
#pragma push
#pragma force_active on
static u8 mOp2PlayerDt[36];
#pragma pop

/* 805DDFE4-805DDFF4 00057C 000C+04 0/1 0/0 0/0 .bss             @7453 */
#pragma push
#pragma force_active on
static u8 lit_7453[12 + 4 /* padding */];
#pragma pop

/* 805DDFF4-805DE000 00058C 000C+00 0/1 0/0 0/0 .bss             @7456 */
#pragma push
#pragma force_active on
static u8 lit_7456[12];
#pragma pop

/* 805DE000-805DE00C 000598 000C+00 0/1 0/0 0/0 .bss             @7457 */
#pragma push
#pragma force_active on
static u8 lit_7457[12];
#pragma pop

/* 805DE00C-805DE018 0005A4 000C+00 0/1 0/0 0/0 .bss             @7458 */
#pragma push
#pragma force_active on
static u8 lit_7458[12];
#pragma pop

/* 805DE018-805DE024 0005B0 000C+00 0/1 0/0 0/0 .bss             @7459 */
#pragma push
#pragma force_active on
static u8 lit_7459[12];
#pragma pop

/* 805DE024-805DE030 0005BC 000C+00 0/1 0/0 0/0 .bss             @7460 */
#pragma push
#pragma force_active on
static u8 lit_7460[12];
#pragma pop

/* 805DE030-805DE03C 0005C8 000C+00 0/1 0/0 0/0 .bss             @7461 */
#pragma push
#pragma force_active on
static u8 lit_7461[12];
#pragma pop

/* 805DE03C-805DE090 0005D4 0054+00 0/1 0/0 0/0 .bss             mOp2CenterDt$7452 */
#pragma push
#pragma force_active on
static u8 mOp2CenterDt[84];
#pragma pop

/* 805DE090-805DE0A0 000628 000C+04 0/1 0/0 0/0 .bss             @7463 */
#pragma push
#pragma force_active on
static u8 lit_7463[12 + 4 /* padding */];
#pragma pop

/* 805DE0A0-805DE0AC 000638 000C+00 0/1 0/0 0/0 .bss             @7466 */
#pragma push
#pragma force_active on
static u8 lit_7466[12];
#pragma pop

/* 805DE0AC-805DE0B8 000644 000C+00 0/1 0/0 0/0 .bss             @7467 */
#pragma push
#pragma force_active on
static u8 lit_7467[12];
#pragma pop

/* 805DE0B8-805DE0C4 000650 000C+00 0/1 0/0 0/0 .bss             @7468 */
#pragma push
#pragma force_active on
static u8 lit_7468[12];
#pragma pop

/* 805DE0C4-805DE0D0 00065C 000C+00 0/1 0/0 0/0 .bss             @7469 */
#pragma push
#pragma force_active on
static u8 lit_7469[12];
#pragma pop

/* 805DE0D0-805DE0DC 000668 000C+00 0/1 0/0 0/0 .bss             @7470 */
#pragma push
#pragma force_active on
static u8 lit_7470[12];
#pragma pop

/* 805DE0DC-805DE0E8 000674 000C+00 0/1 0/0 0/0 .bss             @7471 */
#pragma push
#pragma force_active on
static u8 lit_7471[12];
#pragma pop

/* 805DE0E8-805DE13C 000680 0054+00 0/1 0/0 0/0 .bss             mOp2EyeDt$7462 */
#pragma push
#pragma force_active on
static u8 mOp2EyeDt[84];
#pragma pop
#endif

/* 805D28D0-805D3900 007790 1030+00 2/1 0/0 0/0 .text executeBattle2OpeningDemo__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals / generics
void daB_DS_c::executeBattle2OpeningDemo() {
    camera_class* camera = dComIfGp_getCamera(i_dComIfGp_getPlayerCameraID(0));
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz vec, center, eye, unused;
    center.zero();

    static cXyz mOp2PlayerDt[3] = {
        cXyz(315.0f, 1800.0f, 1460.0f),
        cXyz(415.0f, 1800.0f, 1880.0f),
        cXyz(465.0f, 1400.0f, 1980.0f),
    };

    static cXyz mOp2CenterDt[7] = {
        cXyz(-255.0f, -1460.0f, 3320.0f),
        cXyz(-255.0f, 3070.0f, 3340.0f),
        cXyz(145.0f, 1940.0f, 1520.0f),
        cXyz(165.0f, 1930.0f, 1515.0f),
        cXyz(180.0f, 2083.0f, 1490.0f),
        cXyz(450.0f, 1880.0f, 1955.0f),
        cXyz(1815.0f, 2370.0f, 1660.0f),
    };

    static cXyz mOp2EyeDt[7] = {
        cXyz(-290.0f, -1560.0f, 3690.0f),
        cXyz(-290.0f, 3230.0f, 3690.0f),
        cXyz(-15.0f, 2005.0f, 1180.0f),
        cXyz(180.0f, 1840.0f, 1885.0f),
        cXyz(45.0f, 2260.0f, 1250.0f),
        cXyz(600.0f, 1770.0f, 2225.0f),
        cXyz(2145.0f, 2410.0f, 1635.0f),
    };

    static u16 eff_Sand_id[2] = {0x8BF6, 0x8BF7};

    unused.set(1.0f, 1.0f, 1.0f);
    mHintTimer2 = l_HIO.mHintTime1;

    switch (mMode) {
    case 0:
        mGroundUpY = 150.0f;
        shape_angle.z = -0x2134;
        if (!mIsDemo) {
            break;
        }
        mMode++;
        // no break

    case 1:
        if (!startDemoCheck()) {
            break;
        }
        mCameraCenter = mOp2CenterDt[0];
        mCameraEye = mOp2EyeDt[0];
        Z2GetAudioMgr()->subBgmStart(Z2BGM_HARAGIGANT_D02);
        mMode++;
        // no break

    case 2:
        if (player->current.pos.y < -745.0f) {
            break;
        }
        mCameraCenter = mOp2CenterDt[1];
        mCameraEye = mOp2EyeDt[1];
        mMode++;
        // no break

    case 3:
        if (mIsDemo) {
            break;
        }
        mActionTimer = 30;
        mMode++;
        // no break

    case 4:
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        mMode++;
        // no break

    case 5:
        vec = mOp2PlayerDt[0];
        daPy_getPlayerActorClass()->i_changeDemoMode(4, 2, 0, 0);
        daPy_getPlayerActorClass()->setPlayerPosAndAngle(&vec, 0x570, 0);
        mCameraCenter = mOp2CenterDt[2];
        mCameraEye = mOp2EyeDt[2];
        mSoundPos = current.pos;
        mSound.startCreatureSound(Z2SE_EN_DS_MDEMO_REBOOT, 0, -1);
        mGroundUpY = 0.0f;
        mActionTimer = 50;
        mMode++;
        // no break

    case 6:
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        mActionTimer = 18;
        daPy_getPlayerActorClass()->i_changeDemoMode(25, 0, 0, 0);
        mMode++;
        // no break

    case 7:
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        gravity = 0.0f;
        speed.y = 0.0f;
        mSound.startCreatureSoundLevel(Z2SE_EN_DS_H_FLOAT, 0, -1);
        daPy_getPlayerActorClass()->i_changeDemoMode(23, 1, 0, 0);
        daPy_getPlayerActorClass()->setPlayerPosAndAngle(&mOp2PlayerDt[0], -0x8000, 0);
        vec = mOp2PlayerDt[0];
        mCameraCenter = mOp2CenterDt[3];
        mCameraEye = mOp2EyeDt[3];
        current.pos.y = 2050.0f;
        current.pos.x = -140.0f;
        current.pos.z = 360.0f;
        shape_angle.x = 0;
        shape_angle.y = 0x1000;
        current.angle.y = 0x1000;
        shape_angle.z = 0;
        cLib_addCalc2(&field_0x7e8, 255.0f, 0.7f, 5.0f);
        daPy_getPlayerActorClass()->i_changeDemoMode(23, 1, 2, 0);
        mMode++;
        // no break

    case 8:
        cLib_addCalc2(&field_0x7e8, 255.0f, 0.7f, 5.0f);
        for (int i = 0; i < 2; i++) {
            mSandParticleKey[i] = dComIfGp_particle_set(mSandParticleKey[i], eff_Sand_id[i],
                                                        &current.pos, &shape_angle, NULL);
            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mSandParticleKey[i]);
            if (emitter != NULL) {
                emitter->setGlobalSRTMatrix(mpMorf->getModel()->i_getAnmMtx(0));
            }
        }
        vec = player->current.pos - mMouthPos;
        current.angle.x = vec.atan2sY_XZ();
        cLib_addCalcAngleS2(&shape_angle.x, current.angle.x, 20, 0x200);
        cLib_addCalc2(&field_0x7f8, 0.5f, 0.1f, 0.01f);
        cLib_addCalc2(&current.pos.y, 2400.0f, 0.8f, 5.0f);
        mSound.startCreatureSoundLevel(Z2SE_EN_DS_H_FLOAT, 0, -1);
        center = mSwordPos;
        center.y += 500.0f;
        if (center.y < mOp2CenterDt[3].y) {
            center.y = mOp2CenterDt[3].y;
        }
        if (center.y > mCameraCenter.y) {
            cLib_addCalc2(&mCameraCenter.y, center.y, 0.8f, 5.0f);
        }
        if (fabsf(current.pos.y - 2400.0f) > 2.0f) {
            break;
        }
        mActionTimer = 50;
        current.pos.y = 2400.0f;
        mMode = 10;
        // no break

    case 10:
        vec = player->current.pos - mMouthPos;
        current.angle.x = vec.atan2sY_XZ();
        cLib_addCalcAngleS2(&shape_angle.x, current.angle.x, 20, 0x200);
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        vec = mOp2PlayerDt[1];
        daPy_getPlayerActorClass()->setPlayerPosAndAngle(&vec, -0x664a, 0);
        mActionTimer = 30;
        mMode++;
        // no break

    case 11:
        current.pos.x = -140.0f;
        current.pos.z = 760.0f;
        mCameraCenter = mOp2CenterDt[4];
        mCameraEye = mOp2EyeDt[4];
        vec = player->current.pos - mMouthPos;
        current.angle.x = vec.atan2sY_XZ();
        cLib_addCalcAngleS2(&shape_angle.x, current.angle.x, 20, 0x200);
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        field_0x6f4 = current.pos;
        daPy_getPlayerActorClass()->i_changeDemoMode(25, 0, 0, 0);
        mActionTimer = 30;
        mMode++;
        break;

    case 12:
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        mActionTimer = 30;
        daPy_getPlayerActorClass()->i_changeDemoMode(23, 1, 2, 0);
        mMode++;
        // no break

    case 13:
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        current.angle.y = shape_angle.y = 
            fopAcM_searchPlayerAngleY(this);
        field_0x790.zero();
        mCameraCenter = mOp2CenterDt[5];
        mCameraEye = mOp2EyeDt[5];
        mActionTimer = 30;
        mMode++;
        // no break

    case 14:
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        setBck(ANM_HEAD_FATTACK_A, 0, 3.0f, 1.0f);
        field_0x718 = player->current.pos;
        mMode++;
        // no break

    case 15:
        if ((int)mpMorf->getFrame() < 30) {
            break;
        }
        if (mpMorf->checkFrame(35.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_DS_H_V_ATK, -1);
        }
        daPy_getPlayerActorClass()->i_changeDemoMode(9, 1, 0, 0);
        speedF = 150.0f;
        dCam_getBody()->StartBlure(40, this, 0.8f, 1.2f);
        dComIfGp_getVibration().StartShock(6, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        mCameraCenter = mOp2CenterDt[6];
        mCameraEye = mOp2EyeDt[6];
        mActionTimer = 50;
        mMode++;
        // no break

    case 16:
        cLib_addCalc0(&speedF, 0.7f, 10.0f);
        if (cLib_calcTimer(&mActionTimer) != 0) {
            if (mActionTimer == 20) {
                center.set(644.0f, -1495.0f, 2194.0f);
                eye.set(968.0f, -1421.0f, 2169.0f);
                camera->mCamera.Reset(center, eye);
                camera->mCamera.Start();
                camera->mCamera.SetTrimSize(0);
                i_dComIfGp_event_reset();
                dComIfGs_onOneZoneSwitch(6, fopAcM_GetRoomNo(this));
            }
        } else {
            vec.set(644.0f, -1600.0f, 2195.0f);
            dComIfGs_setRestartRoom(vec, -0x664a, 50);
            attention_info.field_0x0[2] = 0;
            attention_info.flags = 4;
            group = 2;
            Z2GetAudioMgr()->bgmStart(Z2BGM_HARAGIGANT_BTL02, 0, 0);
            mSetFirstPos();
            setActionMode(ACT_B2_WAIT, 0);
        }
    }

    if (mMode > 6) {
        cLib_addCalc(&mColBlend, 1.0f, 0.01f, 0.01f, 0.001f);
        dKy_custom_colset(3, 2, mColBlend);
    }

    if (mMode >= 10) {
        mSandPos.y = current.pos.y;
        mFuwafuwaSet(false);
    }

    if (mMode >= 2) {
        camera->mCamera.Set(mCameraCenter, mCameraEye);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::executeBattle2OpeningDemo() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/executeBattle2OpeningDemo__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805D3900-805D39A4 0087C0 00A4+00 2/2 0/0 0/0 .text            mFlyBMove__8daB_DS_cFf */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::mFlyBMove(f32 param_0) {
    cLib_addCalc2(&mChkHigh, param_0, 0.8f, 30.0f);
    mSandPos.y += mChkHigh;
    f32 step = fabsf(mSandPos.y - current.pos.y);
    if (step < 1.0f) {
        step = 1.0f;
    } else if (step > 30.0f) {
        step = 30.0f;
    }
    cLib_addCalc2(&current.pos.y, mSandPos.y, 0.8f, step);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::mFlyBMove(f32 param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mFlyBMove__8daB_DS_cFf.s"
}
#pragma pop
#endif

/* 805D39A4-805D3D14 008864 0370+00 5/5 0/0 0/0 .text            mFuwafuwaSet__8daB_DS_cFb */
#ifdef NONMATCHING
// matches with literals / generics
void daB_DS_c::mFuwafuwaSet(bool param_0) {
    if (fabsf(current.pos.y - mSandPos.y) < 20.0f) {
        field_0x82c += 2.0f;
        cLib_addCalc2(&field_0x790.y, cM_ssin(field_0x82c * 1000.0f) * 50.0f, 0.8f, 10.0f);
        cLib_addCalc2(&field_0x790.x, cM_ssin(field_0x82c * 500.0f) * 50.0f, 0.5f, field_0x804);
        cLib_addCalc2(&field_0x790.z, cM_scos(field_0x82c * 500.0f) * 50.0f, 0.5f, field_0x804);
        cLib_addCalc2(&field_0x804, 4.0f, 0.8f, 0.3f);
    }
    mSoundPos = current.pos;
    mSound.startCreatureSoundLevel(Z2SE_EN_DS_H_FLOAT, 0, -1);

    if (param_0) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        dBgS_GndChk gnd_chk;
        f32 fvar2 = 1000.0f;
        mSandPos.y = player->current.pos.y;
        if (field_0x7ce > 0x2800) {
            field_0x7ce = 0x2800;
        }
        if (mAction != ACT_B2_TIRED) {
            if (daPy_getPlayerActorClass()->checkSpinnerPathMove()
                || (daPy_getPlayerActorClass()->getSpinnerActor() != NULL
                    && !daPy_getPlayerActorClass()->getSpinnerActor()->checkGroundHit()))
            {
                cLib_calcTimer(&mOutTimer);
                if (player->current.pos.y < l_HIO.mP2AttackHeight && mOutTimer != 0) {
                    mBh2AttackAngleF = 0x4800;
                    field_0x7ce = 0x4800;
                    mCreateFireBreath = false;
                    if (mParticleKey2 != 0) {
                        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mParticleKey2);
                        if (emitter != NULL) {
                            emitter->stopDrawParticle();
                            mParticleKey2 = 0;
                        }
                    }
                } else {
                    mOutTimer = 0;
                    mBirthTrapTimerF = 0;
                }
                fvar2 = 300.0f;
            }
        } else {
            fvar2 = 300.0f;
        }
        cLib_addCalcAngleS2(&mBh2AttackAngleF, field_0x7ce, 20, 0x200);
        mFlyBMove(fvar2);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::mFuwafuwaSet(bool param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mFuwafuwaSet__8daB_DS_cFb.s"
}
#pragma pop
#endif

/* 805D3D14-805D3D80 008BD4 006C+00 1/1 0/0 0/0 .text            mBattle2BreathFireSet__8daB_DS_cFUl
 */
void daB_DS_c::mBattle2BreathFireSet(u32 params) {
    fopAcM_createChild(PROC_B_DS, fopAcM_GetID(this), params, &mMouthPos,
                       fopAcM_GetRoomNo(this), &shape_angle, NULL, -1, NULL);
    mCreateFireBreath = false;
}

/* 805D3D80-805D3EA0 008C40 0120+00 3/3 0/0 0/0 .text            mNeckAngleSet__8daB_DS_cFv */
#ifdef NONMATCHING
// matches but puts ~cXyz in the wrong place
bool daB_DS_c::mNeckAngleSet() {
    s16 svar5 = 0;
    cXyz vec = daPy_getPlayerActorClass()->current.pos - mMouthPos;
    if (daPy_getPlayerActorClass()->checkSpinnerRide() && !mRailInOutCheck()) {
        svar5 = -0x52c;
    }
    cLib_addCalcAngleS2(&current.angle.y, svar5 + vec.atan2sX_Z(), 2, 0x1000);
    cLib_addCalcAngleS2(&current.angle.x, (s16)vec.atan2sY_XZ(), 8, 0x200);
    shape_angle = current.angle;
    return abs((s16)(shape_angle.y - (svar5 + vec.atan2sX_Z()))) <= 0x200;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daB_DS_c::mNeckAngleSet() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mNeckAngleSet__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805D3EA0-805D3F90 008D60 00F0+00 2/2 0/0 0/0 .text            mSetFirstPos__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::mSetFirstPos() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    home.pos.set(0.0f, 1900.0f, 0.0f);
    cXyz vec1, vec2;
    vec2 = player->current.pos - home.pos;
    vec2.y = 0.0f;
    mDoMtx_YrotS(*calc_mtx, vec2.atan2sX_Z() - 0x4800);
    vec1.x = 0.0f;
    vec1.y = 0.0f;
    vec1.z = l_HIO.mP2MoveAxis;
    MtxPosition(&vec1, &current.pos);
    current.pos += home.pos;
    field_0x7e8 = 255.0f;
    shape_angle.z = 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::mSetFirstPos() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mSetFirstPos__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805D3F90-805D4054 008E50 00C4+00 2/2 0/0 0/0 .text            mChkScreenIn__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
bool daB_DS_c::mChkScreenIn() {
    camera_class* camera = dComIfGp_getCamera(0);
    cXyz vec1, vec2;
    vec2 = camera->mCamera.mEye - camera->mCamera.mCenter;
    vec1 = camera->mCamera.mEye - current.pos;
    return abs((s16)(vec1.atan2sX_Z() - vec2.atan2sX_Z())) < 0x3000;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daB_DS_c::mChkScreenIn() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mChkScreenIn__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805D4054-805D41CC 008F14 0178+00 2/2 0/0 0/0 .text            mRailInOutCheck__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
bool daB_DS_c::mRailInOutCheck() {
    cXyz vec = daPy_getPlayerActorClass()->current.pos - home.pos;
    vec.y = 0.0f;
    return !(vec.abs() < l_HIO.mP2MoveAxis);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daB_DS_c::mRailInOutCheck() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mRailInOutCheck__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805D41CC-805D429C 00908C 00D0+00 1/1 0/0 0/0 .text            executeBattle2Wait__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::executeBattle2Wait() {
    switch (mMode) {
    case 0:
        mBh2AttackAngleF = 0x4800;
        field_0x7ce = 0x4800;
        mOutTimer = l_HIO.mP2OuterWallAttackTime;
        mPlayPatternAnm = false;
        field_0x82c = 0;
        field_0x808 = 0.0f;
        mCreateFireBreath = false;
        mActionTimer = 0;
        mWallR = 50.0f;
        setBck(ANM_HEAD_FWAIT, 2, 10.0f, 1.0f);
        mBirthTrapTimerF = l_HIO.mP2TrapCreateWaitTime1;
        mTrapCreate = false;
        setActionMode(ACT_B2_F_MOVE, 0);
        break;
    }
    mNeckAngleSet();
    mFuwafuwaSet(true);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::executeBattle2Wait() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/executeBattle2Wait__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805D429C-805D497C 00915C 06E0+00 2/2 0/0 0/0 .text            mBattle2MoveFSet__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals / generics
bool daB_DS_c::mBattle2MoveFSet() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 fvar9 = l_HIO.mP2MoveAxis;
    bool cvar6 = mRailInOutCheck();
    cXyz vec1, vec2;
    vec2 = field_0x718 - current.pos;
    vec2.y = 0.0f;
    if (mBh2AttackAngleF <= 0x2880 && vec2.abs() < 500.0f) {
        if (!cvar6) {
            fvar9 += 600.0f;
        } else if (mAction != ACT_B2_TIRED) {
            fvar9 += 700.0f;
        } else {
            fvar9 -= 700.0f;
        }
    }
    cLib_addCalc2(&field_0x80c, fvar9, 1.0f, 20.0f);
    bool ret = false;

    vec2 = player->current.pos - home.pos;
    vec2.y = 0.0f;
    mDoMtx_YrotS(*calc_mtx, vec2.atan2sX_Z() - mBh2AttackAngleF);
    vec1.x = 0.0f;
    vec1.y = 0.0f;
    vec1.z = field_0x80c;
    MtxPosition(&vec1, &field_0x718);

    vec2 = field_0x718 - current.pos;
    vec2.y = 0.0f;
    f32 fvar8 = vec2.abs() - field_0x80c;
    if (fvar8 < 10.0f || !mChkScreenIn()) {
        fvar8 = 10.0f;
    } else if (fvar8 > 30.0f) {
        fvar8 = 30.0f;
    }
    fvar8 += player->speedF * 2.0f;

    vec2 = player->current.pos - home.pos;
    vec2.y = 0.0f;
    if (vec2.abs() > 2000.0f) {
        cLib_addCalc2(&field_0x808, fvar8, 1.0f, 10.0f);
        cLib_addCalc2(&current.pos.x, field_0x718.x, 1.0f, field_0x808);
        cLib_addCalc2(&current.pos.z, field_0x718.z, 1.0f, field_0x808);
        vec2 = field_0x718 - current.pos;
        vec2.y = 0.0f;
        if (mOutTimer == 0 || vec2.abs() < 200.0f) {
            ret = true;
        }
        if (cLib_calcTimer(&mBirthTrapTimerF) == 0) {
            if (mTrapID[6] != 0) {
                mBirthTrapTimerF = l_HIO.mP2TrapCreateWaitTime2;
            } else {
                mBirthTrapTimerF = l_HIO.mP2TrapCreateWaitTime1;
            }
            mTrapCreate = true;
        }
    }

    if (daPy_getPlayerActorClass()->checkSpinnerPathMove()) {
        field_0x6f4 = player->current.pos;
    }
    return ret;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daB_DS_c::mBattle2MoveFSet() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mBattle2MoveFSet__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DCF08-805DCF0C 0004B4 0004+00 0/2 0/0 0/0 .rodata          @7931 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7931 = 35.0f;
COMPILER_STRIP_GATE(0x805DCF08, &lit_7931);
#pragma pop

/* 805D497C-805D5040 00983C 06C4+00 1/1 0/0 0/0 .text            executeBattle2FMove__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals / generics
void daB_DS_c::executeBattle2FMove() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    bool cvar6 = mBattle2MoveFSet();
    bool cvar7 = false;
    cXyz vec;
    if (!cvar6 && daPy_getPlayerActorClass()->checkSpinnerRide()) {
        vec = field_0x718 - current.pos;
        cLib_addCalcAngleS2(&current.angle.y, vec.atan2sX_Z(), 1, 0x400);
        shape_angle.y = current.angle.y;
    } else {
        cvar7 = mNeckAngleSet();
    }

    switch (mMode) {
    case 0:
        mActionTimer = l_HIO.mP2BulletFireTime;
        mCreateFireBreath = false;
        setBck(ANM_HEAD_FWAIT, 2, 10.0f, 1.0f);
        if (!daPy_getPlayerActorClass()->checkSpinnerRide()) {
            field_0x808 = 0.0f;
            mOutTimer = l_HIO.mP2OuterWallAttackTime;
        }
        mMode++;
        // no break

    case 1:
    case 2:
        vec = player->current.pos - home.pos;
        vec.y = 0.0f;
        if (cLib_calcTimer(&mActionTimer) != 0) {
            if (mActionTimer > 5) {
                if (vec.abs() < 2000.0f) {
                    mActionTimer = 5;
                }
            }
        } else {
            if (vec.abs() > 2000.0f && (!cvar6 || !cvar7 || mBh2AttackAngleF > 0x2880)) {
                break;
            }
            if (daPy_getPlayerActorClass()->getDamageWaitTimer() != 0) {
                mOutTimer = l_HIO.mP2OuterWallAttackTime;
                mTrapCreate = false;
            } else {
                if (mMode == 1) {
                    if (field_0x7ce > 0x2800) {
                        field_0x7ce = 0x2800;
                    }
                } else {
                    setBck(ANM_HEAD_FATTACK_A, 0, 3.0f, 1.0f);
                }
                mMode++;
            }
        }
        break;

    case 3:
        if (!mpMorf->isStop()) {
            if (mpMorf->checkFrame(35.0f)) {
                mSound.startCreatureVoice(Z2SE_EN_DS_H_V_ATK, -1);
            }
            break;
        }
        setBck(ANM_HEAD_FATTACK_B, 2, 3.0f, 1.0f);
        mCreateFireBreath = true;
        mMode++;
        // no break

    case 4:
        if (mCreateFireBreath) {
            field_0x6a8 = 3;
            break;
        }
        if (daPy_getPlayerActorClass()->checkSpinnerRide()
            && daPy_getPlayerActorClass()->getDamageWaitTimer() == 0)
        {
            field_0x7ce -= l_HIO.mP2ApproachAfterBullet;
            if (field_0x7ce <= l_HIO.mP2ApproachDist) {
                field_0x6a8 = 2;
                setActionMode(ACT_B2_TIRED, 0);
                break;
            }
        } else if (!daPy_getPlayerActorClass()->checkSpinnerRide()
            || (daPy_getPlayerActorClass()->getSpinnerActor() != NULL
                && daPy_getPlayerActorClass()->getSpinnerActor()->checkGroundHit()))
        {
            setBck(ANM_HEAD_FATTACK_C, 0, 3.0f, 1.0f);
            mMode = 100;
            break;
        }
        setBck(ANM_HEAD_FATTACK_C, 0, 3.0f, 1.0f);
        mMode = 10;
        break;

    case 10:
    case 100:
        if (mpMorf->isStop()) {
            if (mMode == 10) {
                mMode = 0;
            } else {
                setActionMode(ACT_B2_WAIT, 0);
            }
        }
        break;
    }

    if (cLib_calcTimer(&field_0x6a8) == 1 && mParticleKey2 != 0) {
        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mParticleKey2);
        if (emitter != NULL) {
            emitter->stopDrawParticle();
        }
    }
    mFuwafuwaSet(true);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::executeBattle2FMove() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/executeBattle2FMove__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805D5040-805D52D4 009F00 0294+00 1/1 0/0 0/0 .text            executeBattle2Tired__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::executeBattle2Tired() {
    switch (mMode) {
    case 0:
        setBck(ANM_HEAD_FATTACK_A, 0, 3.0f, 1.0f);
        mTimerCount = 0;
        mMode++;
        break;

    case 1:
        if (mAnmID == ANM_HEAD_FATTACK_A) {
            if (mpMorf->checkFrame(35.0f)) {
                mSound.startCreatureVoice(Z2SE_EN_DS_H_V_ATK, -1);
            }
            if (mpMorf->isStop()) {
                setBck(ANM_HEAD_FATTACK_B, 2, 3.0f, 1.0f);
            }
        }
        if (abs((s16)(mBh2AttackAngleF - 0x800)) > 0x100) {
            break;
        }
        mCreateFireBreath = true;
        mMode++;
        // no break

    case 2:
        if (!mCreateFireBreath) {
            setBck(ANM_HEAD_FATTACK_C, 0, 3.0f, 1.0f);
            mMode++;
        }
        break;

    case 3:
        if (mpMorf->isStop()) {
            mMode = 777;
        }
        break;
    }

    if (!daPy_getPlayerActorClass()->checkSpinnerRide()
        || daPy_getPlayerActorClass()->getDamageWaitTimer() != 0 || mMode == 777
        || (daPy_getPlayerActorClass()->getSpinnerActor() != NULL
            && daPy_getPlayerActorClass()->getSpinnerActor()->checkGroundHit()))
    {
        setActionMode(ACT_B2_WAIT, 0);
    }

    cLib_addCalcAngleS2(&mBh2AttackAngleF, 0x800, l_HIO.mP2ApproachAccel, l_HIO.mP2ApproachSpeedMax);
    mSandPos.y = daPy_getPlayerActorClass()->current.pos.y;
    mNeckAngleSet();
    mFlyBMove(100.0f);
    mBattle2MoveFSet();
    mFuwafuwaSet(false);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::executeBattle2Tired() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/executeBattle2Tired__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DCF0C-805DCF10 0004B8 0004+00 0/0 0/0 0/0 .rodata          @7932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7932 = 644.0f;
COMPILER_STRIP_GATE(0x805DCF0C, &lit_7932);
#pragma pop

/* 805DCF10-805DCF14 0004BC 0004+00 0/0 0/0 0/0 .rodata          @7933 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7933 = -1495.0f;
COMPILER_STRIP_GATE(0x805DCF10, &lit_7933);
#pragma pop

/* 805DCF14-805DCF18 0004C0 0004+00 0/0 0/0 0/0 .rodata          @7934 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7934 = 2194.0f;
COMPILER_STRIP_GATE(0x805DCF14, &lit_7934);
#pragma pop

/* 805DCF18-805DCF1C 0004C4 0004+00 0/0 0/0 0/0 .rodata          @7935 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7935 = 968.0f;
COMPILER_STRIP_GATE(0x805DCF18, &lit_7935);
#pragma pop

/* 805DCF1C-805DCF20 0004C8 0004+00 0/0 0/0 0/0 .rodata          @7936 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7936 = -1421.0f;
COMPILER_STRIP_GATE(0x805DCF1C, &lit_7936);
#pragma pop

/* 805DCF20-805DCF24 0004CC 0004+00 0/0 0/0 0/0 .rodata          @7937 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7937 = 2169.0f;
COMPILER_STRIP_GATE(0x805DCF20, &lit_7937);
#pragma pop

/* 805DCF24-805DCF28 0004D0 0004+00 0/0 0/0 0/0 .rodata          @7938 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7938 = 2195.0f;
COMPILER_STRIP_GATE(0x805DCF24, &lit_7938);
#pragma pop

/* 805DCF28-805DCF2C 0004D4 0004+00 0/2 0/0 0/0 .rodata          @8976 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8976 = 1.5f;
COMPILER_STRIP_GATE(0x805DCF28, &lit_8976);
#pragma pop

/* 805DCF2C-805DCF30 0004D8 0004+00 0/2 0/0 0/0 .rodata          @8977 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8977 = 4000.0f;
COMPILER_STRIP_GATE(0x805DCF2C, &lit_8977);
#pragma pop

/* 805DCF30-805DCF34 0004DC 0004+00 0/1 0/0 0/0 .rodata          @8978 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8978 = -3.0f;
COMPILER_STRIP_GATE(0x805DCF30, &lit_8978);
#pragma pop

/* 805DCF34-805DCF38 0004E0 0004+00 0/1 0/0 0/0 .rodata          @8979 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8979 = 140.0f;
COMPILER_STRIP_GATE(0x805DCF34, &lit_8979);
#pragma pop

/* 805D52D4-805D60BC 00A194 0DE8+00 1/1 0/0 0/0 .text            executeBattle2Damage__8daB_DS_cFv
 */
#ifdef NONMATCHING
// matches with literals / generics
void daB_DS_c::executeBattle2Damage() {
    camera_class* camera = dComIfGp_getCamera(i_dComIfGp_getPlayerCameraID(0));
    daPy_py_c* player = daPy_getPlayerActorClass();
    JPABaseEmitter* emitter;
    dBgS_LinChk lin_chk;
    dBgS_GndChk gnd_chk;
    cXyz vec1, vec2, pos;
    cXyz particle_scale(1.5f, 1.5f, 1.5f);
    csXyz particle_angle;
    pos = current.pos;
    pos.y += 300.0f;
    gnd_chk.SetPos(&pos);
    pos.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
    if (pos.y == -1e9f) {
        pos.y = current.pos.y - 200.0f;
    }

    switch (mMode) {
    case 0:
        if (!startDemoCheck()) {
            break;
        }

        vec2 = player->current.pos - home.pos;
        vec2.y = 0.0f;
        field_0x7d2 = vec2.atan2sX_Z();
        mDoMtx_YrotS(*calc_mtx, field_0x7d2);
        vec1.x = 0.0f;
        vec1.y = 0.0f;
        vec1.z = l_HIO.mP2MoveAxis;
        MtxPosition(&vec1, &vec2);
        vec2.y = player->current.pos.y;
        daPy_getPlayerActorClass()->setPlayerPosAndAngle(&vec2, -vec2.atan2sX_Z(), 0);

        mHintTimer2 = 0;
        emitter = dComIfGp_particle_getEmitter(mParticleKey1);
        if (emitter != NULL) {
            emitter->stopDrawParticle();
        }
        shape_angle.x = 0;
        current.angle.x = 0;
        setBck(ANM_HEAD_DAMAGE, 0, 3.0f, 1.0f);

        for (int i = 0; i < 5; i++) {
            mHeadSph[i].OnTgSpinnerReflect();
            mHeadSph[i].OnTgIronBallRebound();
            mHeadSph[i].OffTgShield();
            mHeadSph[i].SetTgType(0);
            mHeadSph[i].SetTgHitMark(CcG_Tg_UNK_MARK_0);
        }

        shape_angle.x = 0;
        mTimerCount = 0;
        daPy_getPlayerActorClass()->i_changeOriginalDemo();
        daPy_getPlayerActorClass()->i_changeDemoMode(14, 0, 0, 0);
        
        vec2 = field_0x6f4 - home.pos;
        vec2.y = 0.0f;
        vec1 = home.pos - field_0x6f4;
        vec1.y = 0.0f;
        current.angle.y = vec1.atan2sX_Z();
        if (vec2.abs() < l_HIO.mP2MoveAxis) {
            mAttackingHand = 0;
            current.angle.y += 0x8000;
            field_0x7d2 = vec2.atan2sX_Z() + 0x800;
        } else {
            mAttackingHand = 1;
            field_0x7d2 = vec2.atan2sX_Z() + 0x1800;
        }

        mDoMtx_YrotS(*calc_mtx, current.angle.y);
        vec1.x = 0.0f;
        vec1.y = 0.0f;
        vec1.z = 4000.0f;
        MtxPosition(&vec1, &field_0x79c);
        mWallR = 300.0f;
        field_0x79c += current.pos;
        if (field_0x79c.y > 1400.0f) {
            field_0x79c.y = 1400.0f;
            current.pos.y = 1400.0f;
        }
        
        mSmokeCount = 0;
        mMode++;
        break;
    
    case 1:
        mDoMtx_YrotS(*calc_mtx, field_0x7d2);
        vec1.x = 0.0f;
        vec1.y = 200.0f;
        vec1.z = l_HIO.mP2MoveAxis;
        MtxPosition(&vec1, &mCameraEye);
        mCameraEye.y += current.pos.y;
        mCameraCenter = current.pos;
        
        vec2 = mCameraEye - mCameraCenter;
        shape_angle.y = vec2.atan2sX_Z();
        cLib_addCalcPos(&current.pos, field_0x79c, 0.8f, 50.0f, 7.0f);

        if (!mAcch.ChkWallHit()) {
            break;
        }

        mSound.startCreatureSound(Z2SE_EN_DS_H_COL_WALL, 0, -1);
        particle_angle = shape_angle;
        particle_angle.x = 0x4000;
        particle_angle.z = 0;
        field_0x6d0 = mMouthPos;
        mHitParticleKey[0] = dComIfGp_particle_set(mHitParticleKey[0], eff_smoke_id[1],
                                                   &field_0x6d0, &particle_angle, &particle_scale);
        dScnPly_c::setPauseTimer(5);
        dComIfGp_getVibration().StartShock(7, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        current.angle.y = shape_angle.y;
        speedF = 0.0f;
        field_0x7d0 = 0;
        gravity = -3.0f;
        field_0x7e8 = 0.0f;
        mMode++;
        // no break

    case 2:
        mCameraCenter = current.pos;
        if (!mAcch.i_ChkGroundHit() && current.pos.y - 100.0f > pos.y) {
            break;
        }
        if (mAnmID != ANM_HEAD_DOWN) {
            setBck(ANM_HEAD_DOWN, 0, 3.0f, 1.0f);
        }
        gravity = 0.0f;
        speed.y = 0.0f;
        particle_angle = shape_angle;
        particle_angle.z = 0;
        particle_angle.x = 0;
        vec2 = current.pos;
        vec2.y = mAcch.GetGroundH();
        mHitParticleKey[1] = dComIfGp_particle_set(mHitParticleKey[1], eff_smoke_id[1],
                                                   &vec2, &particle_angle, &particle_scale);
        mSound.startCreatureSound(Z2SE_EN_DS_H_COL, 0, -1);
        dComIfGp_getVibration().StartShock(3, 0x4f, cXyz(0.0f, 1.0f, 0.0f));
        mActionTimer = 50;
        mMode++;
        // no break

    case 3:
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        camera->mCamera.Reset(mCameraCenter, mCameraEye);
        camera->mCamera.Start();
        camera->mCamera.SetTrimSize(0);
        i_dComIfGp_event_reset();
        attention_info.field_0x0[2] = 0x16;
        mWeakSph.OnTgSetBit();
        mP2FallTimer = l_HIO.mP2FallTime;
        mMode++;
        // no break

    case 4:
        if (mBattle2_damage_check()) {
            return;
        }

        mWeakSph.SetC(mSwordPos);
        mWeakSph.SetR(140.0f);
        dComIfG_Ccsp()->Set(&mWeakSph);

        if (cLib_calcTimer(&mP2FallTimer) != 0) {
            mParticleKey1 = dComIfGp_particle_set(mParticleKey1, 0x8bf5, &current.pos,
                                                  &shape_angle, NULL);
            emitter = dComIfGp_particle_getEmitter(mParticleKey1);
            if (emitter != NULL) {
                emitter->setGlobalSRTMatrix(mpMorf->getModel()->i_getAnmMtx(0));
            }
            Z2GetAudioMgr()->seStartLevel(Z2SE_EN_DS_SMOKE_2, &mSwordPos,
                                          0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            break;
        }

        emitter = dComIfGp_particle_getEmitter(mParticleKey1);
        if (emitter != NULL) {
            emitter->stopDrawParticle();
        }
        attention_info.field_0x0[2] = 0;
        setBck(ANM_HEAD_DOWN_UP, 0, 3.0f, 1.0f);
        Z2GetAudioMgr()->changeBgmStatus(1);
        mWeakSph.OffTgSetBit();
        mMode++;
        // no break

    case 5:
        mDamageTimer = 100;
        if (!mChkScreenIn()) {
            mSetFirstPos();
            for (int i = 0; i < 5; i++) {
                mHeadSph[i].OnTgShield();
                mHeadSph[i].SetTgType(0xd8fbfdff);
                mHeadSph[i].SetTgHitMark(CcG_Tg_UNK_MARK_2);
                mHeadSph[i].OffTgSpinnerReflect();
                mHeadSph[i].OffTgIronBallRebound();
            }
            mDamageTimer = 100;
            setActionMode(ACT_B2_WAIT, 0);
            return;
        }

        if ((int)mpMorf->getFrame() >= 20) {
            if (mpMorf->checkFrame(20.0f)) {
                mSound.startCreatureSound(Z2SE_EN_DS_H_DOWN_UP, 0, -1);
            }
            cLib_addCalc2(&mWallR, 500.0f, 0.7f, 30.0f);
            cLib_addCalcAngleS2(&shape_angle.z, 0, 4, 0x400);
            cLib_addCalc2(&field_0x7e8, 255.0f, 0.7f, 10.0f);
            mFuwafuwaSet(true);

            if (field_0x7e8 > 254.0f && shape_angle.z < 0x100) {
                field_0x7e8 = 255.0f;
                shape_angle.z = 0;
                for (int i = 0; i < 5; i++) {
                    mHeadSph[i].OnTgShield();
                    mHeadSph[i].SetTgType(0xd8fbfdff);
                    mHeadSph[i].SetTgHitMark(CcG_Tg_UNK_MARK_2);
                    mHeadSph[i].OffTgSpinnerReflect();
                    mHeadSph[i].OffTgIronBallRebound();
                }
                setActionMode(ACT_B2_WAIT, 0);
                return;
            }
        }
        break;
    }

    if (mMode >= 1 && mMode <= 3) {
        camera->mCamera.Set(mCameraCenter, mCameraEye);
        cLib_addCalc0(&field_0x7e8, 0.7f, 10.0f);
    }

    if (mMode >= 1 && mMode <= 3) {
        s16 target_z = 13000;
        if (mAttackingHand == 0) {
            target_z = -13000;
        }
        cLib_addCalcAngleS2(&shape_angle.z, target_z, 4, 0x400);
    }

    if (mP2FallTimer != 0) {
        if (mP2FallTimer > l_HIO.mP2FallTime / 3.0f) {
            return;
        }
        if ((mP2FallTimer & 0x20) == 0) {
            cLib_addCalc0(&field_0x7e8, 0.8f, 10.0f);
        } else {
            cLib_addCalc2(&field_0x7e8, 255.0f, 0.8f, 10.0f);
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::executeBattle2Damage() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/executeBattle2Damage__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DCF38-805DCF3C 0004E4 0004+00 0/1 0/0 0/0 .rodata          @9079 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9079 = -200.0f;
COMPILER_STRIP_GATE(0x805DCF38, &lit_9079);
#pragma pop

/* 805DCF3C-805DCF40 0004E8 0004+00 0/1 0/0 0/0 .rodata          @9080 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9080 = 8000.0f;
COMPILER_STRIP_GATE(0x805DCF3C, &lit_9080);
#pragma pop

/* 805DCF40-805DCF44 0004EC 0004+00 0/5 0/0 0/0 .rodata          @9081 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9081 = 80.0f;
COMPILER_STRIP_GATE(0x805DCF40, &lit_9081);
#pragma pop

/* 805DCF44-805DCF48 0004F0 0004+00 0/1 0/0 0/0 .rodata          @9082 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9082 = 17.0f;
COMPILER_STRIP_GATE(0x805DCF44, &lit_9082);
#pragma pop

/* 805D60BC-805D6534 00AF7C 0478+00 1/1 0/0 0/0 .text            mDeadMove__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals / generics
bool daB_DS_c::mDeadMove() {
    mTimerCount++;
    cXyz vec1;
    cXyz vec2 = home.pos - (current.pos + field_0x790);
    vec2.y = 0.0f;

    if (mTimerCount < 80) {
        if (mAttackingHand != 0) {
            shape_angle.z -= 0x80;
        } else {
            shape_angle.z += 0x80;
        }

        field_0x83c++;
        cLib_addCalc2(&field_0x790.x, cM_ssin(field_0x83c * -300.0f) * 1000.0f, 0.8f, 50.0f);
        cLib_addCalc2(&field_0x790.z, cM_scos(field_0x83c * -100.0f) * -200.0f, 0.8f, 50.0f);

        vec2 = home.pos - (current.pos + field_0x790);
        vec2.y = (home.pos.y + 8000.0f) - current.pos.y;
        if (mTimerCount == 1) {
            current.angle.y = vec2.atan2sX_Z();
            speedF = 40.0f;
        }
        current.angle.x = vec2.atan2sY_XZ();

        mDoMtx_YrotS(*calc_mtx, current.angle.y);
        mDoMtx_XrotM(*calc_mtx, current.angle.x);
        vec1.x = 0.0f;
        vec1.y = 0.0f;
        vec1.z = 80.0f;
        MtxPosition(&vec1, &vec2);
        speed.y = vec2.y;

        field_0x861 = false;
        mActionTimer = 30;
    } else {
        if (mAnmID != ANM_HEAD_DAMAGE) {
            setBck(ANM_HEAD_DAMAGE, 0, 3.0f, 1.0f);
        }

        if (cLib_calcTimer(&mActionTimer) == 0) {
            field_0x861 = true;
            if (mAttackingHand != 0) {
                shape_angle.z -= 0x80;
                cLib_addCalc2(&speedF, 20.0f, 0.8f, 3.0f);
            } else {
                shape_angle.z += 0x80;
                cLib_addCalc2(&speedF, 17.0f, 0.8f, 3.0f);
            }

            vec2 = field_0x718 - (current.pos + field_0x790);
            field_0x7ba.z = 0;
            current.angle.x = vec2.atan2sY_XZ();
            current.angle.y = vec2.atan2sX_Z();
            
            mDoMtx_YrotS(*calc_mtx, current.angle.y);
            mDoMtx_XrotM(*calc_mtx, current.angle.x);
            vec1.x = 0.0f;
            vec1.y = 0.0f;
            vec1.z = 40.0f;
            MtxPosition(&vec1, &vec2);
            speed.y = vec2.y;
        } else {
            speed.y = 0.0f;
            cLib_addCalc0(&speedF, 0.7f, 2.0f);
        }
        cLib_addCalc0(&field_0x7e8, 0.7f, 3.0f);
    }

    s16 angle_scale, angle_step;
    if (!field_0x861) {
        angle_scale = 8;
        angle_step = 0x200;
    } else {
        angle_scale = 40;
        angle_step = 0x100;
    }
    cLib_addCalcAngleS2(&shape_angle.x, current.angle.x, angle_scale, angle_step);
    cLib_addCalcAngleS2(&shape_angle.y, current.angle.y, angle_scale, angle_step);

    vec2 = current.pos + field_0x790;
    cLib_addCalcPos(&mCameraCenter, vec2, 1.0f, 100.0f, 20.0f);
    
    if (mTimerCount < 0x50 || home.pos.y + 700.0f < current.pos.y) {
        return false;
    } else {
        return true;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daB_DS_c::mDeadMove() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mDeadMove__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DCF48-805DCF4C 0004F4 0004+00 0/2 0/0 0/0 .rodata          @9560 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9560 = 70.0f;
COMPILER_STRIP_GATE(0x805DCF48, &lit_9560);
#pragma pop

/* 805DCF4C-805DCF50 0004F8 0004+00 0/1 0/0 0/0 .rodata          @9561 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9561 = 1890.0f;
COMPILER_STRIP_GATE(0x805DCF4C, &lit_9561);
#pragma pop

/* 805DCF50-805DCF54 0004FC 0004+00 0/1 0/0 0/0 .rodata          @9562 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9562 = -1190.0f;
COMPILER_STRIP_GATE(0x805DCF50, &lit_9562);
#pragma pop

/* 805DCF54-805DCF58 000500 0004+00 0/1 0/0 0/0 .rodata          @9563 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9563 = -90.0f;
COMPILER_STRIP_GATE(0x805DCF54, &lit_9563);
#pragma pop

/* 805DCF58-805DCF5C 000504 0004+00 0/1 0/0 0/0 .rodata          @9564 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9564 = -2200.0f;
COMPILER_STRIP_GATE(0x805DCF58, &lit_9564);
#pragma pop

/* 805DCF5C-805DCF60 000508 0004+00 0/1 0/0 0/0 .rodata          @9565 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9565 = 105.0f;
COMPILER_STRIP_GATE(0x805DCF5C, &lit_9565);
#pragma pop

/* 805DCF60-805DCF64 00050C 0004+00 0/1 0/0 0/0 .rodata          @9566 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9566 = -945.0f;
COMPILER_STRIP_GATE(0x805DCF60, &lit_9566);
#pragma pop

/* 805DCF64-805DCF68 000510 0004+00 0/1 0/0 0/0 .rodata          @9567 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9567 = 110.0f;
COMPILER_STRIP_GATE(0x805DCF64, &lit_9567);
#pragma pop

/* 805DCF68-805DCF6C 000514 0004+00 0/1 0/0 0/0 .rodata          @9568 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9568 = -885.0f;
COMPILER_STRIP_GATE(0x805DCF68, &lit_9568);
#pragma pop

/* 805DCF6C-805DCF70 000518 0004+00 0/1 0/0 0/0 .rodata          @9569 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9569 = 1700.0f;
COMPILER_STRIP_GATE(0x805DCF6C, &lit_9569);
#pragma pop

/* 805DCF70-805DCF74 00051C 0004+00 0/1 0/0 0/0 .rodata          @9570 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9570 = 3400.0f;
COMPILER_STRIP_GATE(0x805DCF70, &lit_9570);
#pragma pop

/* 805DCF74-805DCF78 000520 0004+00 0/1 0/0 0/0 .rodata          @9571 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9571 = 3600.0f;
COMPILER_STRIP_GATE(0x805DCF74, &lit_9571);
#pragma pop

/* 805DCF78-805DCF7C 000524 0004+00 0/2 0/0 0/0 .rodata          @9572 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9572 = 3000.0f;
COMPILER_STRIP_GATE(0x805DCF78, &lit_9572);
#pragma pop

#ifndef NONMATCHING
/* 805DE13C-805DE14C 0006D4 000C+04 0/1 0/0 0/0 .bss             @9091 */
#pragma push
#pragma force_active on
static u8 lit_9091[12 + 4 /* padding */];
#pragma pop

/* 805DE14C-805DE158 0006E4 000C+00 0/1 0/0 0/0 .bss             @9094 */
#pragma push
#pragma force_active on
static u8 lit_9094[12];
#pragma pop

/* 805DE158-805DE170 0006F0 0018+00 0/1 0/0 0/0 .bss             mEd2CenterDt$9090 */
#pragma push
#pragma force_active on
static u8 mEd2CenterDt[24];
#pragma pop

/* 805DE170-805DE180 000708 000C+04 0/1 0/0 0/0 .bss             @9096 */
#pragma push
#pragma force_active on
static u8 lit_9096[12 + 4 /* padding */];
#pragma pop

/* 805DE180-805DE18C 000718 000C+00 0/1 0/0 0/0 .bss             @9099 */
#pragma push
#pragma force_active on
static u8 lit_9099[12];
#pragma pop

/* 805DE18C-805DE1A4 000724 0018+00 0/1 0/0 0/0 .bss             mEd22EyeDt$9095 */
#pragma push
#pragma force_active on
static u8 mEd22EyeDt[24];
#pragma pop
#endif

/* 805D6534-805D7C10 00B3F4 16DC+00 2/1 0/0 0/0 .text            executeBattle2Dead__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals / generics
void daB_DS_c::executeBattle2Dead() {
    static cXyz mEd2CenterDt[2] = {
        cXyz(70.0f, 890.0f, -1190.0f),
        cXyz(-90.0f, 1890.0f, -2200.0f),
    };
    static cXyz mEd22EyeDt[2] = {
        cXyz(105.0f, 1880.0f, -945.0f),
        cXyz(110.0f, 1880.0f, -885.0f),
    };
    static u16 eff_Demo_sasi_id[2] = {0x8BF8, 0x8BF9};

    camera_class* camera = dComIfGp_getCamera(i_dComIfGp_getPlayerCameraID(0));
    csXyz particle_angle = shape_angle;
    cXyz vec1, vec2;
    cXyz particle_scale(1.5f, 1.5f, 1.5f);
    cXyz item_scale;

    switch (mMode) {
    case 0:
        if (!startDemoCheck()) {
            break;
        }
        mSmokeCount = 0;
        field_0x6f4 = current.pos;
        home.angle = shape_angle;
        field_0x7c0 = current.angle;
        dComIfGp_getVibration().StartShock(5, 0x4f, cXyz(0.0f, 1.0f, 0.0f));
        // no break

    case 100:
        field_0x790.zero();
        setBck(ANM_HEAD_DIEB, 2, 3.0f, 1.0f);
        field_0x7e8 = 255.0f;
        mTimerCount = 0;
        mCameraFovy = 50.0f;
        mWallR = 500.0f;
        mGroundUpY = 500.0f;
        vec2 = current.pos - home.pos;
        if (mAttackingHand != 0) {
            field_0x7d2 = vec2.atan2sX_Z() + 0x2000;
        } else {
            field_0x7d2 = vec2.atan2sX_Z() - 0x8000;
        }
        field_0x83c = 0;
        speedF = 0.0f;
        speed.y = 0.0f;
        gravity = 0.0f;
        current.angle.y = field_0x7d2;
        daPy_getPlayerActorClass()->i_changeDemoMode(4, 1, 0, 0);
        mDoMtx_YrotS(*calc_mtx, field_0x7d2);
        vec1.x = 0.0f;
        vec1.y = 0.0f;
        vec1.z = 1500.0f;
        MtxPosition(&vec1, &vec2);
        vec2 += field_0x6f4;
        mCameraEye = vec2;
        mMode = 1;
        // no break

    case 1:
        shape_angle.z += 0x100;
        if (current.pos.y < 1700.0f) {
            mCameraCenter = current.pos;
            vec2 = current.pos;
            vec2.y = 2500.0f;
            cLib_addCalcPos(&current.pos, vec2, 1.0f, 90.0f, 45.0f);
            cLib_addCalcAngleS2(&shape_angle.x, -0x4000, 4, 0x400);
            break;
        }
        speedF = 0.0f;
        mMode++;
        // no break

    case 2:
        mWallR = 650.0f;
        vec2 = current.pos - home.pos;
        field_0x80c = 3400.0f;
        mDoMtx_YrotS(*calc_mtx, vec2.atan2sX_Z());
        vec1.x = 0.0f;
        vec1.y = 0.0f;
        vec1.z = field_0x80c;
        MtxPosition(&vec1, &vec2);
        vec2 += home.pos;
        current.pos.x = vec2.x;
        current.pos.y = 2500.0f;
        current.pos.z = vec2.z;

        vec2 = home.pos - current.pos;
        vec2.y = 0.0f;
        field_0x80c = 3600.0f;
        mDoMtx_YrotS(*calc_mtx, vec2.atan2sX_Z() + 10000);
        vec1.x = 0.0f;
        vec1.y = 0.0f;
        vec1.z = field_0x80c;
        MtxPosition(&vec1, &vec2);
        vec2 += home.pos;
        vec2.y = 3400.0f;
        mCameraEye = vec2;

        field_0x80c = 3600.0f;
        vec2 = home.pos - current.pos;
        mDoMtx_YrotS(*calc_mtx, vec2.atan2sX_Z());
        mDoMtx_XrotM(*calc_mtx, vec2.atan2sY_XZ());
        vec1.x = 0.0f;
        vec1.y = 100.0f;
        vec1.z = field_0x80c;
        MtxPosition(&vec1, &vec2);
        field_0x718 = vec2 + home.pos;
        vec2 = field_0x718 - current.pos;
        field_0x7ba.x = vec2.atan2sY_XZ();
        field_0x7ba.y = vec2.atan2sX_Z();
        field_0x7ba.z = 0;
        current.angle = field_0x7ba;

        mCameraCenter = current.pos;
        mMode++;
        // no break

    case 3:
        if (!mDeadMove()) {
            break;
        }
        speedF = 0.0f;
        speed.y = 0.0f;
        gravity = 0.0f;
        field_0x7e8 = 0.0f;
        field_0x790.zero();
        field_0x7d2 -= 0x1000;
        setBck(ANM_HEAD_DIE, 2, 3.0f, 1.0f);
        speedF = 0.0f;
        mMode++;
        // no break

    case 4:
        current.pos = field_0x718;
        shape_angle.z = 0x5277;
        shape_angle.x = 0x4a4;
        current.angle.x = 0x4a4;

        vec2 = home.pos - current.pos;
        vec2.y = 0.0f;
        mDoMtx_YrotS(*calc_mtx, vec2.atan2sX_Z() - 40000);
        vec1.x = 0.0f;
        vec1.y = 0.0f;
        vec1.z = 3000.0f;
        MtxPosition(&vec1, &vec2);
        vec2 += home.pos;
        vec2.y -= 3000.0f;
        mCameraEye = vec2;

        vec2 = home.pos - current.pos;
        vec1 = field_0x718 - current.pos;

        mSound.startCreatureSound(Z2SE_EN_DS_END_COL, 0, -1);
        gravity = 0.0f;
        speedF = 0.0f;
        particle_angle = shape_angle;
        particle_angle.x = 0x4000;
        particle_angle.z = 0;
        mDeathParticleKey = dComIfGp_particle_set(mDeathParticleKey, eff_smoke_id[1],
                                                  &field_0x718, &particle_angle, &particle_scale);
        
        current.angle.y = shape_angle.y;
        vec2 = mCameraEye - current.pos;
        vec2.y = mCameraEye.y - current.pos.y;
        current.angle.y = vec2.atan2sX_Z() - 0x800;
        current.angle.x = vec2.atan2sY_XZ();

        mActionTimer = 10;
        dComIfGp_getVibration().StartShock(6, 0x4f, cXyz(0.0f, 1.0f, 0.0f));
        mMode++;
        break;

    case 5:
        speedF = 50.0f;
        mGroundUpY = 400.0f;
        mDoMtx_YrotS(*calc_mtx, current.angle.y);
        mDoMtx_XrotM(*calc_mtx, current.angle.x);
        vec1.x = 0.0f;
        vec1.y = 0.0f;
        vec1.z = speedF;
        MtxPosition(&vec1, &vec2);
        speed.y = vec2.y;
        cLib_addCalcAngleS2(&shape_angle.y, current.angle.y, 20, 0x100);
        cLib_addCalcAngleS2(&shape_angle.x, current.angle.x, 20, 0x100);
        if (cLib_calcTimer(&mActionTimer) == 0) {
            mMode++;
        }
        break;

    case 6:
        if (mAcch.ChkGroundHit()) {
            mGroundUpY = 500.0f;
            dComIfGp_getVibration().StartShock(5, 0x4f, cXyz(0.0f, 1.0f, 0.0f));
            speedF = 50.0f;
            speed.y = 70.0f;
            gravity = -5.0f;
            mMode++;
        }
        break;

    case 7:
        vec2.zero();
        vec2.y = mAcch.GetGroundH() - current.pos.y;
        current.angle.x = vec2.atan2sY_XZ();
        cLib_addCalcAngleS2(&shape_angle.x, 0, 8, 0x200);
        cLib_addCalcAngleS2(&shape_angle.z, -0x4000, 10, 0x200);
        if (mAcch.ChkGroundHit()) {
            dComIfGp_getVibration().StartShock(4, 0x4f, cXyz(0.0f, 1.0f, 0.0f));
            current.angle.y -= 0x1830;
            mGroundUpY = 400.0f;
            speedF = 120.0f;
            speed.y = 50.0f;
            gravity = -5.0f;
            mMode = 10;
        }
        break;

    case 10:
    case 12:
    case 14:
        cLib_addCalcAngleS2(&shape_angle.z, -0x4000, 10, 0x200);
        if (mAcch.ChkGroundHit()) {
            dComIfGp_getVibration().StartShock(3, 0x4f, cXyz(0.0f, 1.0f, 0.0f));
            mMode++;
        }
        break;

    case 11:
    case 13:
    case 15:
        if (mMode != 15) {
            speedF = 180.0f;
            speed.y = 20.0f;
            gravity = -5.0f;
        } else {
            mActionTimer = 40;
        }
        mMode++;
        break;

    case 16:
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }

        gravity = 0.0f;
        speed.y = 0.0f;
        speedF = 0.0f;
        
        vec2 = current.pos - home.pos;
        mDoMtx_YrotS(*calc_mtx, vec2.atan2sX_Z() + 0x2000);
        vec1.x = 0.0f;
        vec1.y = 0.0f;
        vec1.z = vec2.abs() - 2500.0f;
        MtxPosition(&vec1, &vec2);
        vec2 += home.pos;
        vec2.y = -1600.0f;
        fopAcM_createDisappear(this, &vec2, 1, 0, 0xff);

        dComIfGp_getVibration().StartShock(7, 0x4f, cXyz(0.0f, 1.0f, 0.0f));
        mSound.startCreatureSound(Z2SE_EN_DS_END_COL_LAST, 0, -1);
        daPy_getPlayerActorClass()->i_changeDemoMode(4, 1, 0, 0);
        mActionTimer = 80;
        mMode++;
        // no break

    case 17:
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }

        mDead = true;
        shape_angle.x = 0;
        shape_angle.z = 0;
        vec2.set(0.0f, 1800.0f, -900.0f);
        daPy_getPlayerActorClass()->i_changeDemoMode(2, 0, 0, 0);
        daPy_getPlayerActorClass()->setPlayerPosAndAngle(&vec2, 0x8000, 0);
        
        vec1.set(0.0f, 1800.0f, -1140.0f);
        vec2 = vec1 - home.pos;
        vec2.y = 0.0f;
        mDoMtx_YrotS(*calc_mtx, (s16)vec2.atan2sX_Z());
        vec1.x = 0.0f;
        vec1.y = -500.0f;
        vec1.z = l_HIO.mP2MoveAxis - 600.0f;
        MtxPosition(&vec1, &current.pos);
        current.pos += home.pos;

        shape_angle.y = 0x4000;
        mCameraCenter = current.pos;
        mCameraCenter.y = mEd2CenterDt[0].y;
        vec2 = mEd22EyeDt[0];
        mCameraEye = vec2;
        mCameraFovy = 68.0f;
        current.angle.x = -0x4000;
        
        vec1.set(0.0f, 1800.0f, -1140.0f);
        vec2 = vec1 - home.pos;
        vec2.y = 0.0f;
        mDoMtx_YrotS(*calc_mtx, (s16)vec2.atan2sX_Z());
        vec1.x = 0.0f;
        vec1.y = 0.0f;
        vec1.z = l_HIO.mP2MoveAxis - 1600.0f;
        MtxPosition(&vec1, &field_0x718);
        field_0x718 += home.pos;

        vec2 = field_0x718 - current.pos;
        current.angle.y = vec2.atan2sX_Z();
        mActionTimer = 80;
        mMode = 20;
        // no break

    case 20:
        vec2.set(0.0f, 1800.0f, -1140.0f);
        daPy_getPlayerActorClass()->i_changeDemoPos0(&vec2);
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        Z2GetAudioMgr()->seStart(Z2SE_OBJ_DS_END_ZAN_SWD, &current.pos,
                                 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        mMode++;
        // no break

    case 21:
        shape_angle.z += 0x2000;
        cLib_addCalcAngleS2(&current.angle.x, 0x4000, 100, 200);
        mDoMtx_YrotS(*calc_mtx, current.angle.y);
        mDoMtx_XrotM(*calc_mtx, current.angle.x);
        vec1.x = 0.0f;
        vec1.y = 0.0f;
        vec1.z = 30.0f;
        MtxPosition(&vec1, &vec2);
        speed.y = vec2.y;
        if (speed.y < 0.0f) {
            speed.y *= 4.0f;
        }
        if (abs(current.angle.x) > 0x2000) {
            cLib_addCalc2(&speedF, 9.0f, 0.1f, 0.3f);
        }
        if (speed.y < 0.0f && current.pos.y <= 1955.0f) {
            mMode++;
        }
        break;

    case 22:
        if ((s16)shape_angle.z != 0) {
            shape_angle.z += 0x2000;
        }
        cLib_addCalc2(&speedF, 9.0f, 0.1f, 0.3f);
        if (current.pos.y > 1850.0f) {
            break;
        }
        speedF = 0.0f;
        speed.y = 0.0f;
        gravity = 0.0f;
        current.pos.y = 1850.0f;
        vec2 = current.pos;
        vec2.x += 85.0f;
        vec2.y = 1800.0f;
        dComIfGp_getVibration().StartShock(2, 0x4f, cXyz(0.0f, 1.0f, 0.0f));
        for (int i = 0; i < 2; i++) {
            dComIfGp_particle_set(eff_Demo_sasi_id[i], &vec2, &shape_angle, NULL);
        }
        mActionTimer = 30;
        mMode++;
        // no break

    case 23:
        if (cLib_calcTimer(&mActionTimer) == 0) {
            mpSwordBrkAnm->init(mpSwordMorf->getModel()->getModelData(),
                                static_cast<J3DAnmTevRegKey*>(dComIfG_getObjectRes("B_DS", 80)),
                                1, 1, 1.0f, 0, -1);
            mColBlend = 0.0f;
            field_0x840 = 4;
            mMode++;
        }
        break;

    case 24:
        if (mpSwordMorf->isStop()) {
            vec2 = current.pos;
            vec2.x += 85.0f;
            vec2.y = 1800.0f;
            dComIfGp_particle_set(0x8c20, &vec2, &shape_angle, NULL);
            fopAcM_createDisappear(this, &vec2, 4, 1, 0xff);
            mNoDrawSword = true;
            mActionTimer = 80;
            mMode++;
        }
        break;

    case 25:
        if (cLib_calcTimer(&mActionTimer) != 0) {
            if (mActionTimer == 70) {
                item_scale.set(1.0f, 1.0f, 1.0f);
                vec2 = current.pos;
                vec2.x += 85.0f;
                vec2.y = 1800.0f;
                fopAcM_createItemForBoss(&vec2, 0x22, fopAcM_GetRoomNo(this), &shape_angle,
                                         &item_scale, 0.0f, 0.0f, -1);
                daPy_getPlayerActorClass()->i_changeDemoMode(30, 0, 0, 0);
            }
            cLib_addCalcPos(&mCameraCenter, mEd2CenterDt[1], 0.3f, 50.0f, 10.0f);
            cLib_addCalcPos(&mCameraEye, mEd22EyeDt[1], 0.3f, 50.0f, 10.0f);
            break;
        }
        daPy_getPlayerActorClass()->i_changeDemoMode(1, 0, 0, 0);
        mActionTimer = 80;
        mMode++;
        // no break

    case 26:
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        i_fopAcM_onSwitch(this, 0x70);
        mActionTimer = 140;
        mMode++;
        // no break

    case 27:
        mCameraCenter.set(-280.0f, 1950.0f, -4150.0f);
        mCameraEye.set(-340.0f, 2075.0f, -4505.0f);
        mCameraFovy = 56.0f;
        if (cLib_calcTimer(&mActionTimer) != 0) {
            break;
        }
        i_fopAcM_onSwitch(this, 0x7b);
        mActionTimer = 140;
        mMode++;
        // no break

    case 28:
        mCameraCenter.set(410.0f, 1890.0f, -3835.0f);
        mCameraEye.set(535.0f, 1725.0f, -3515.0f);
        mCameraFovy = 59.0f;
        if (cLib_calcTimer(&mActionTimer) == 0) {
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            i_dComIfGp_event_reset();
            dComIfGs_onStageBossEnemy(0x13);
            dComIfGs_onEventBit(0x2010);
            fopAcM_delete(this);
        }
    }

    if (mMode >= 20 && mMode <= 23) {
        vec2 = current.pos;
        if (mEd2CenterDt[0].y < current.pos.y) {
            cLib_addCalc2(&mCameraCenter.y, current.pos.y, 0.8f, 100.0f);
        }
        vec2.x += 70.0f;
        cLib_addCalc2(&mCameraCenter.x, vec2.x, 0.8f, 100.0f);
        cLib_addCalc2(&mCameraCenter.z, vec2.z, 0.8f, 100.0f);
        eyePos = current.pos;
    }

    if (mMode >= 5 && mMode <= 15) {
        cLib_addCalcPos(&mCameraCenter, current.pos, 0.8f, 100.0f, 40.0f);
    }

    if (mMode >= 5 && mMode <= 16) {
        mSmokeSet();
    }

    if (mMode >= 25 && mMode != 100) {
        cLib_addCalc(&mColBlend, 1.0f, 0.01f, 0.01f, 0.001f);
        dKy_custom_colset(2, 4, mColBlend);
    }

    if (mMode != 0) {
        camera->mCamera.Set(mCameraCenter, mCameraEye, mCameraFovy, 0);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::executeBattle2Dead() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/executeBattle2Dead__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DCF7C-805DCF80 000528 0004+00 0/0 0/0 0/0 .rodata          @9573 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9573 = -900.0f;
COMPILER_STRIP_GATE(0x805DCF7C, &lit_9573);
#pragma pop

/* 805DCF80-805DCF84 00052C 0004+00 0/0 0/0 0/0 .rodata          @9574 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9574 = -1140.0f;
COMPILER_STRIP_GATE(0x805DCF80, &lit_9574);
#pragma pop

/* 805DCF84-805DCF88 000530 0004+00 0/0 0/0 0/0 .rodata          @9575 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9575 = 68.0f;
COMPILER_STRIP_GATE(0x805DCF84, &lit_9575);
#pragma pop

/* 805DCF88-805DCF8C 000534 0004+00 0/0 0/0 0/0 .rodata          @9576 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9576 = 1850.0f;
COMPILER_STRIP_GATE(0x805DCF88, &lit_9576);
#pragma pop

/* 805DCF8C-805DCF90 000538 0004+00 0/0 0/0 0/0 .rodata          @9577 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9577 = 85.0f;
COMPILER_STRIP_GATE(0x805DCF8C, &lit_9577);
#pragma pop

/* 805DCF90-805DCF94 00053C 0004+00 0/0 0/0 0/0 .rodata          @9578 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9578 = -280.0f;
COMPILER_STRIP_GATE(0x805DCF90, &lit_9578);
#pragma pop

/* 805DCF94-805DCF98 000540 0004+00 0/0 0/0 0/0 .rodata          @9579 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9579 = 1950.0f;
COMPILER_STRIP_GATE(0x805DCF94, &lit_9579);
#pragma pop

/* 805DCF98-805DCF9C 000544 0004+00 0/0 0/0 0/0 .rodata          @9580 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9580 = -4150.0f;
COMPILER_STRIP_GATE(0x805DCF98, &lit_9580);
#pragma pop

/* 805DCF9C-805DCFA0 000548 0004+00 0/0 0/0 0/0 .rodata          @9581 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9581 = -340.0f;
COMPILER_STRIP_GATE(0x805DCF9C, &lit_9581);
#pragma pop

/* 805DCFA0-805DCFA4 00054C 0004+00 0/0 0/0 0/0 .rodata          @9582 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9582 = 2075.0f;
COMPILER_STRIP_GATE(0x805DCFA0, &lit_9582);
#pragma pop

/* 805DCFA4-805DCFA8 000550 0004+00 0/0 0/0 0/0 .rodata          @9583 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9583 = -4505.0f;
COMPILER_STRIP_GATE(0x805DCFA4, &lit_9583);
#pragma pop

/* 805DCFA8-805DCFAC 000554 0004+00 0/0 0/0 0/0 .rodata          @9584 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9584 = 56.0f;
COMPILER_STRIP_GATE(0x805DCFA8, &lit_9584);
#pragma pop

/* 805DCFAC-805DCFB0 000558 0004+00 0/0 0/0 0/0 .rodata          @9585 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9585 = 410.0f;
COMPILER_STRIP_GATE(0x805DCFAC, &lit_9585);
#pragma pop

/* 805DCFB0-805DCFB4 00055C 0004+00 0/0 0/0 0/0 .rodata          @9586 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9586 = -3835.0f;
COMPILER_STRIP_GATE(0x805DCFB0, &lit_9586);
#pragma pop

/* 805DCFB4-805DCFB8 000560 0004+00 0/0 0/0 0/0 .rodata          @9587 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9587 = 535.0f;
COMPILER_STRIP_GATE(0x805DCFB4, &lit_9587);
#pragma pop

/* 805DCFB8-805DCFBC 000564 0004+00 0/0 0/0 0/0 .rodata          @9588 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9588 = 1725.0f;
COMPILER_STRIP_GATE(0x805DCFB8, &lit_9588);
#pragma pop

/* 805DCFBC-805DCFC0 000568 0004+00 0/0 0/0 0/0 .rodata          @9589 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9589 = -3515.0f;
COMPILER_STRIP_GATE(0x805DCFBC, &lit_9589);
#pragma pop

/* 805DCFC0-805DCFC4 00056C 0004+00 0/0 0/0 0/0 .rodata          @9590 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9590 = 59.0f;
COMPILER_STRIP_GATE(0x805DCFC0, &lit_9590);
#pragma pop

/* 805DCFC4-805DCFC8 000570 0004+00 0/1 0/0 0/0 .rodata          @9720 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9720 = 240.0f;
COMPILER_STRIP_GATE(0x805DCFC4, &lit_9720);
#pragma pop

/* 805D7C10-805D8078 00CAD0 0468+00 1/1 0/0 0/0 .text            executeBullet__8daB_DS_cFv */
#ifdef NONMATCHING
// stack alloc
void daB_DS_c::executeBullet() {
    static u16 effId[4] = {0x89AC, 0x89AD, 0x89AE, 0x89AF};
    cXyz vec1, vec2;
    switch (mMode) {
    case 0:
        if (mType == BULLET_A) {
            speedF = -100.0f;
            mBulletRadius = 100.0f;
            mActionTimer = breathTimerBase;
            mMode = 2;
            break;
        } else {
            mBulletDistance = 500.0f;
            mBulletRadius = 80.0f;
            mActionTimer = 100;
            mMode++;
        }
        // no break

    case 1:
        if (!daPy_getPlayerActorClass()->checkSpinnerPathMove()
                                || (s16)(current.angle.y - home.angle.y) > 0x2000) {
            speedF = 100.0f;
            mActionTimer = 100;
            mMode = 2;
        } else {
            fopAc_ac_c* parent_actor;
            if (fopAcM_SearchByID(parentActorID, &parent_actor) && parent_actor != NULL) {
                daB_DS_c* parent = static_cast<daB_DS_c*>(parent_actor);
                vec1 = parent->field_0x6d0 - parent->mMouthPos;
                current.angle.x = vec1.atan2sY_XZ();
                current.angle.y = vec1.atan2sX_Z();
                mDoMtx_YrotS(*calc_mtx, current.angle.y);
                mDoMtx_XrotM(*calc_mtx, current.angle.x);
                vec1.x = 0.0f;
                vec1.y = 0.0f;
                vec1.z = mBulletDistance;
                MtxPosition(&vec1, &vec2);
                current.pos = vec2 + parent->mMouthPos;
                mBulletDistance += 100.0f;
            }
            mBulletRadius += 10.0f;
            if (mBulletRadius > 240.0f) {
                mBulletRadius = 240.0f;
            }
        }
        break;

    case 2:
        mDoMtx_YrotS(*calc_mtx, current.angle.y);
        if (mType == BULLET_A) {
            mDoMtx_XrotM(*calc_mtx, -current.angle.x);
        } else {
            mDoMtx_XrotM(*calc_mtx, current.angle.x);
        }
        vec1.x = 0.0f;
        vec1.y = 0.0f;
        vec1.z = speedF;
        MtxPosition(&vec1, &speed);
        if (cLib_calcTimer(&mActionTimer) == 0) {
            fopAcM_delete(this);
        }
        break;
    }

    if (mAcch.ChkWallHit() || mAcch.ChkGroundHit()) {
        fopAcM_delete(this);
        return;
    }

    mBreathAtSph.SetC(current.pos);
    mBreathAtSph.SetR(mBulletRadius);
    dComIfG_Ccsp()->Set(&mBreathAtSph);

    if (mType == BULLET_B || mType == BULLET_C) {
        cXyz scale(l_HIO.mP2ModelSize, l_HIO.mP2ModelSize, l_HIO.mP2ModelSize);
        field_0x724 = current.pos - old.pos;
        VECScale(&field_0x724, &field_0x724, 0.8f);
        Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_DS_H_FIRE, &current.pos,
                                      0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        for (int i = 0; i < 4; i++) {
            mBulletParticleKey[i] = dComIfGp_particle_set(mBulletParticleKey[i], effId[i],
                                                          &current.pos, &current.angle, &scale);
            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mBulletParticleKey[i]);
            if (emitter != NULL) {
                // JGeometry::TVec3<f32> pos(current.pos);
                JGeometry::TVec3<f32> pos;
                JGeometry::setTVec3f(&current.pos.x, &pos.x);
                emitter->setGlobalTranslation(pos);
                emitter->setParticleCallBackPtr(dPa_control_c::getParticleTracePCB());
                emitter->setUserWork((u32)&field_0x724);
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::executeBullet() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/executeBullet__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805D8078-805D80F0 00CF38 0078+00 1/1 0/0 0/0 .text            mBulletAction__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::mBulletAction() {
    executeBullet();
    fopAcM_posMove(this, mCcStts.GetCCMoveP());
    if (mType == BULLET_B || mType == BULLET_C) {
        mAcchCir.SetWall(0.0f, 100.0f);
        mAcch.CrrPos(dComIfG_Bgsp());
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::mBulletAction() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mBulletAction__8daB_DS_cFv.s"
}
#pragma pop
#endif

#ifndef NONMATCHING
/* ############################################################################################## */
/* 805DE1A4-805DE1A8 00073C 0004+00 1/1 0/0 0/0 .bss             None */
static u8 data_805DE1A4[4];

/* 805DE1A8-805DE1B4 000740 000C+00 1/1 0/0 0/0 .bss             mWaitDt$9733 */
static u8 mWaitDt[12];
#endif

/* 805D80F0-805D8D04 00CFB0 0C14+00 2/1 0/0 0/0 .text            mSoundSE_Set__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::mSoundSE_Set() {
    static JAISoundID mWaitDt[3] = {
        Z2SE_EN_DS_V_WAIT_A,
        Z2SE_EN_DS_V_WAIT_B,
        Z2SE_EN_DS_V_WAIT_C,
    };

    switch (mAnmID) {
    case ANM_WAIT01_A:
    case ANM_WAIT01_B:
    case ANM_WAIT01_C:
        if (mpMorf->checkFrame(29.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureVoice(mWaitDt[mAnmID - ANM_WAIT01_A], -1);
        }
        break;

    case ANM_NODAMAGE_01_A:
    case ANM_NODAMAGE_01_B:
    case ANM_NODAMAGE_01_C:
        if (mpMorf->checkFrame(25.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureVoice(Z2SE_EN_DS_V_NODMG, -1);
        }
        if (mpMorf->checkFrame(39.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_HAND_1, 0, -1);
        }
        break;

    case ANM_NODAMAGE_02_A:
    case ANM_NODAMAGE_02_B:
    case ANM_NODAMAGE_02_C:
        if (mpMorf->checkFrame(28.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureVoice(Z2SE_EN_DS_V_NODMG, -1);
        }
        if (mpMorf->checkFrame(51.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_HAND_2, 0, -1);
        }
        break;

    case ANM_NODAMAGE_03_A:
    case ANM_NODAMAGE_03_B:
    case ANM_NODAMAGE_03_C:
        if (mpMorf->checkFrame(42.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureVoice(Z2SE_EN_DS_V_NODMG, -1);
        }
        break;

    case ANM_ATTACK_L_A:
    case ANM_ATTACK_L_B:
    case ANM_ATTACK_L_C:
    case ANM_ATTACK_R_A:
    case ANM_ATTACK_R_B:
    case ANM_ATTACK_R_C:
        if (mpMorf->checkFrame(32.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureVoice(Z2SE_EN_DS_V_ATK_1, -1);
        }
        if (mpMorf->checkFrame(97.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureVoice(Z2SE_EN_DS_V_ATK_2, -1);
        }
        if (mpMorf->checkFrame(105.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_ATK, 0, -1);
        }
        break;

    case ANM_ATTACK02_A_A:
    case ANM_ATTACK02_A_B:
    case ANM_ATTACK02_A_C:
        if (mpMorf->checkFrame(83.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureVoice(Z2SE_EN_DS_V_ATK_FIRE, -1);
        }
        break;

    case ANM_CIRCLE_L_A:
    case ANM_CIRCLE_L_B:
    case ANM_CIRCLE_L_C:
    case ANM_CIRCLE_R_A:
    case ANM_CIRCLE_R_B:
    case ANM_CIRCLE_R_C:
        if (mpMorf->checkFrame(32.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_HAND_1, 0, -1);
        }
        if (mpMorf->checkFrame(54.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_HAND_2, 0, -1);
        }
        if (mpMorf->checkFrame(92.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_HAND_1, 0, -1);
        }
        if (mpMorf->checkFrame(114.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_HAND_2, 0, -1);
        }
        break;

    case ANM_ATTACK01_A:
        if (mpMorf->checkFrame(272.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_HAND_1, 0, -1);
        }
        if (mpMorf->checkFrame(314.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_HAND_2, 0, -1);
        }
        // no break

    case ANM_ATTACK01_B:
    case ANM_ATTACK01_C:
        if (mpMorf->checkFrame(10.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureVoice(Z2SE_EN_DS_V_RTT, -1);
        }
        if (mpMorf->checkFrame(184.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_HANDS, 0, -1);
        }
        break;

    case ANM_DAMAGE_A_WAIT:
    case ANM_DAMAGE_B_WAIT:
    case ANM_LASTDAMAGE_WAIT:
        mSoundPos = current.pos;
        mSound.startCreatureSound(Z2SE_EN_DS_DMG_WAIT, 0, -1);
        break;

    case ANM_DAMAGE_A:
        if (mpMorf->checkFrame(0.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureVoice(Z2SE_EN_DS_V_DMG_A, -1);
        }
        if (mpMorf->checkFrame(20.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_DMG_A_FALL, 0, -1);
        }
        if (mpMorf->checkFrame(28.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_DMG_HAND, 0, -1);
        }
        if (mpMorf->checkFrame(54.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_DMG_HAND, 0, -1);
        }
        break;

    case ANM_DAMAGE_B:
        if (mpMorf->checkFrame(0.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureVoice(Z2SE_EN_DS_V_DMG_B, -1);
        }
        if (mpMorf->checkFrame(6.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_DMG_B_FALL, 0, -1);
        }
        if (mpMorf->checkFrame(33.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_DMG_HAND, 0, -1);
        }
        if (mpMorf->checkFrame(45.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_DMG_HAND, 0, -1);
        }
        break;

    case ANM_LASTDAMAGE:
        if (mpMorf->checkFrame(0.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureVoice(Z2SE_EN_DS_V_DMG_L, -1);
        }
        if (mpMorf->checkFrame(124.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_DMG_L_FALL, 0, -1);
        }
        if (mpMorf->checkFrame(119.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_DMG_HAND, 0, -1);
        }
        if (mpMorf->checkFrame(236.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_DMG_BODY, 0, -1);
        }
        if (mpMorf->checkFrame(240.0f)) {
            mSoundPos = current.pos;
            mSound.startCreatureSound(Z2SE_EN_DS_DMG_HAND, 0, -1);
        }
        break;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::mSoundSE_Set() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mSoundSE_Set__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DCFC8-805DCFCC 000574 0004+00 0/0 0/0 0/0 .rodata          @9967 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9967 = 39.0f;
COMPILER_STRIP_GATE(0x805DCFC8, &lit_9967);
#pragma pop

/* 805DCFCC-805DCFD0 000578 0004+00 0/0 0/0 0/0 .rodata          @9968 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9968 = 28.0f;
COMPILER_STRIP_GATE(0x805DCFCC, &lit_9968);
#pragma pop

/* 805DCFD0-805DCFD4 00057C 0004+00 0/0 0/0 0/0 .rodata          @9969 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9969 = 51.0f;
COMPILER_STRIP_GATE(0x805DCFD0, &lit_9969);
#pragma pop

/* 805DCFD4-805DCFD8 000580 0004+00 0/0 0/0 0/0 .rodata          @9970 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9970 = 42.0f;
COMPILER_STRIP_GATE(0x805DCFD4, &lit_9970);
#pragma pop

/* 805DCFD8-805DCFDC 000584 0004+00 0/0 0/0 0/0 .rodata          @9971 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9971 = 32.0f;
COMPILER_STRIP_GATE(0x805DCFD8, &lit_9971);
#pragma pop

/* 805DCFDC-805DCFE0 000588 0004+00 0/0 0/0 0/0 .rodata          @9972 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9972 = 97.0f;
COMPILER_STRIP_GATE(0x805DCFDC, &lit_9972);
#pragma pop

/* 805DCFE0-805DCFE4 00058C 0004+00 0/0 0/0 0/0 .rodata          @9973 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9973 = 83.0f;
COMPILER_STRIP_GATE(0x805DCFE0, &lit_9973);
#pragma pop

/* 805DCFE4-805DCFE8 000590 0004+00 0/0 0/0 0/0 .rodata          @9974 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9974 = 54.0f;
COMPILER_STRIP_GATE(0x805DCFE4, &lit_9974);
#pragma pop

/* 805DCFE8-805DCFEC 000594 0004+00 0/0 0/0 0/0 .rodata          @9975 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9975 = 92.0f;
COMPILER_STRIP_GATE(0x805DCFE8, &lit_9975);
#pragma pop

/* 805DCFEC-805DCFF0 000598 0004+00 0/0 0/0 0/0 .rodata          @9976 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9976 = 114.0f;
COMPILER_STRIP_GATE(0x805DCFEC, &lit_9976);
#pragma pop

/* 805DCFF0-805DCFF4 00059C 0004+00 0/0 0/0 0/0 .rodata          @9977 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9977 = 272.0f;
COMPILER_STRIP_GATE(0x805DCFF0, &lit_9977);
#pragma pop

/* 805DCFF4-805DCFF8 0005A0 0004+00 0/0 0/0 0/0 .rodata          @9978 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9978 = 314.0f;
COMPILER_STRIP_GATE(0x805DCFF4, &lit_9978);
#pragma pop

/* 805DCFF8-805DCFFC 0005A4 0004+00 0/0 0/0 0/0 .rodata          @9979 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9979 = 184.0f;
COMPILER_STRIP_GATE(0x805DCFF8, &lit_9979);
#pragma pop

/* 805DCFFC-805DD000 0005A8 0004+00 0/0 0/0 0/0 .rodata          @9980 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9980 = 6.0f;
COMPILER_STRIP_GATE(0x805DCFFC, &lit_9980);
#pragma pop

/* 805DD000-805DD004 0005AC 0004+00 0/0 0/0 0/0 .rodata          @9981 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9981 = 33.0f;
COMPILER_STRIP_GATE(0x805DD000, &lit_9981);
#pragma pop

/* 805DD004-805DD008 0005B0 0004+00 0/0 0/0 0/0 .rodata          @9982 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9982 = 124.0f;
COMPILER_STRIP_GATE(0x805DD004, &lit_9982);
#pragma pop

/* 805DD008-805DD00C 0005B4 0004+00 0/0 0/0 0/0 .rodata          @9983 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9983 = 119.0f;
COMPILER_STRIP_GATE(0x805DD008, &lit_9983);
#pragma pop

/* 805DD00C-805DD010 0005B8 0004+00 0/0 0/0 0/0 .rodata          @9984 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9984 = 236.0f;
COMPILER_STRIP_GATE(0x805DD00C, &lit_9984);
#pragma pop

#ifndef NONMATCHING
/* 805DD010-805DD040 0005BC 0030+00 0/1 0/0 0/0 .rodata          SEBONE_EFF_DT$9989 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const SEBONE_EFF_DT[48] = {
    0x8B, 0xEF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8B, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x8B, 0xF1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x8B, 0xF2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x8B, 0xF3, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x8B, 0xF4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
};
COMPILER_STRIP_GATE(0x805DD010, &SEBONE_EFF_DT);
#pragma pop
#endif

/* 805D8D04-805D91A4 00DBC4 04A0+00 2/1 0/0 0/0 .text            action__8daB_DS_cFv */
#ifdef NONMATCHING
// regalloc and one instruction out of order
void daB_DS_c::action() {
    static const struct {
        u16 particle;
        int joint;
    } SEBONE_EFF_DT[6] = {
        {0x8BEF, 0},
        {0x8BF0, 0},
        {0x8BF1, 1},
        {0x8BF2, 1},
        {0x8BF3, 2},
        {0x8BF4, 2},
    };

    int joint = mBackboneJoint;
    if (mAction != ACT_OPENING_DEMO && joint < 3 && mBossPhase == 0) {
        for (int i = 0; i < 2; i++) {
            mDoMtx_stack_c::copy(model->i_getAnmMtx(SEBONE_EFF_DT[joint * 2 + i].joint));
            cXyz pos;
            mDoMtx_stack_c::multVecZero(&pos);
            mBackboneParticleKey[i] = dComIfGp_particle_set(mBackboneParticleKey[i],
                                                            SEBONE_EFF_DT[joint * 2 + i].particle,
                                                            &pos, &shape_angle, NULL);
        }
        Z2GetAudioMgr()->seStartLevel(Z2SE_EN_DS_SMOKE_1, &current.pos,
                                      0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    }

    if (cLib_calcTimer(&mHintTimer1) != 0 && mHintTimer1 == 1) {
        dComIfGs_onOneZoneSwitch(5, fopAcM_GetRoomNo(this));
    }
    if (mBackboneJoint != 0) {
        mZsMoveChk();
        mZsMoveChk_Guard();
    }
    damage_check();
    mCreateTrap(false);

    if (mAction != ACT_OPENING_DEMO && !dComIfGs_isZoneSwitch(8, fopAcM_GetRoomNo(this))
                                    && cLib_calcTimer(&mPedestalFallTimer) == 0) {
        dComIfGs_onZoneSwitch(8, fopAcM_GetRoomNo(this));
        mSandFallTimer = l_HIO.mSandFallWaitTime;
    }

    if (mType == PHASE_1 && dComIfGs_isZoneSwitch(8, fopAcM_GetRoomNo(this))) {
        cLib_calcTimer(&mSandFallTimer);
        if (mSandFallTimer >= 1 && mSandFallTimer <= 3 && mBitSw != 0xff) {
            i_fopAcM_onSwitch(this, mBitSw);
            mSandFallTimer = 0;
        }
    }

    switch (mAction) {
    case ACT_OPENING_DEMO:
        executeOpeningDemo();
        break;
    case ACT_WAIT:
        executeWait();
        break;
    case ACT_CIRCLE:
        executeCircle();
        break;
    case ACT_DAMAGE:
        executeDamage();
        break;
    case ACT_ETC_DAMAGE:
        executeEtcDamage();
        break;
    case ACT_BREATH_ATTACK:
        executeBreathAttack();
        break;
    case ACT_HAND_ATTACK:
        executeHandAttack();
        break;
    case ACT_BREATH_SEARCH:
        executeBreathSearch();
        break;
    }

    if ((mAction != ACT_BREATH_ATTACK || mMode >= 3) && field_0x840 == 5) {
        cLib_addCalc(&mColBlend, 1.0f, 0.02f, 0.02f, 0.04f);
        if (mColBlend > 0.998f) {
            field_0x840 = 1;
            mColBlend = 1.0f;
        }
        dKy_custom_colset(5, 1, mColBlend);
    }

    mSoundSE_Set();
    fopAcM_posMoveF(this, mCcStts.GetCCMoveP());
    mAcchCir.SetWall(300.0f, 600.0f);
    f32 ground_up_y = -60.0f;
    if (mAction == ACT_OPENING_DEMO) {
        ground_up_y = 0.0f;
    }
    if (mAction != ACT_DAMAGE || mMode < 100) {
        mAcch.SetGroundUpY(ground_up_y);
        mAcch.CrrPos(dComIfG_Bgsp());
    }

    if (mBossPhase != 100) {
        if (daPy_getPlayerActorClass()->checkWolfLock(this)) {
            daPy_getPlayerActorClass()->cancelWolfLock(this);
        }
        mpMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        mpSwordBrkAnm->play();
        mpSwordMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        if (mDrawZant) {
            mpZantMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        }
        if (mPlayPatternAnm) {
            mpOpPatternBrkAnm->play();
            mpOpPatternBtkAnm->play();
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::action() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/action__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DD040-805DD044 0005EC 0004+00 0/0 0/0 0/0 .rodata          @10107 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_10107 = 0x3F7F7CEE;
COMPILER_STRIP_GATE(0x805DD040, &lit_10107);
#pragma pop

/* 805DD044-805DD048 0005F0 0004+00 0/0 0/0 0/0 .rodata          @10108 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10108 = -60.0f;
COMPILER_STRIP_GATE(0x805DD044, &lit_10108);
#pragma pop

/* 805DD048-805DD04C 0005F4 0004+00 0/1 0/0 0/0 .rodata          @10202 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10202 = 594.0f;
COMPILER_STRIP_GATE(0x805DD048, &lit_10202);
#pragma pop

/* 805DD04C-805DD050 0005F8 0004+00 0/1 0/0 0/0 .rodata          @10203 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10203 = -196.0f;
COMPILER_STRIP_GATE(0x805DD04C, &lit_10203);
#pragma pop

/* 805DD050-805DD054 0005FC 0004+00 0/1 0/0 0/0 .rodata          @10204 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10204 = 584.0f;
COMPILER_STRIP_GATE(0x805DD050, &lit_10204);
#pragma pop

/* 805DD054-805DD058 000600 0004+00 0/1 0/0 0/0 .rodata          @10205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10205 = -136.0f;
COMPILER_STRIP_GATE(0x805DD054, &lit_10205);
#pragma pop

/* 805D91A4-805D951C 00E064 0378+00 1/1 0/0 0/0 .text            mtx_set__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::mtx_set() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(l_HIO.mModelSize, l_HIO.mModelSize, l_HIO.mModelSize);
    if (mPlayPatternAnm) {
        mpOpPatternModel->i_setBaseTRMtx(mDoMtx_stack_c::get());
    }
    J3DModel* model = mpMorf->getModel();
    model->i_setBaseTRMtx(mDoMtx_stack_c::get());
    mpMorf->modelCalc();

    mDoMtx_stack_c::copy(model->i_getAnmMtx(6));
    mDoMtx_stack_c::multVecZero(&mHeadPos);

    mDoMtx_stack_c::copy(model->i_getAnmMtx(7));
    cXyz vec(0.0f, 100.0f, 0.0f);
    mDoMtx_stack_c::multVec(&vec, &mMouthPos);

    mDoMtx_stack_c::copy(model->i_getAnmMtx(7));
    vec.set(100.0f, 20.0f, 0.0f);
    mDoMtx_stack_c::multVec(&vec, &mBulletPos);

    mDoMtx_stack_c::copy(model->i_getAnmMtx(6));
    if (mAction == ACT_OPENING_DEMO || cLib_calcTimer(&mSwordTimer) != 0) {
        vec.set(594.0f, -196.0f, 0.0f);
    } else {
        vec.set(584.0f, -136.0f, 0.0f);
    }
    mDoMtx_stack_c::transM(vec.x, vec.y, vec.z);
    if (mAction == ACT_OPENING_DEMO || mSwordTimer != 0) {
        mDoMtx_stack_c::YrotM(-0x4000);
        mDoMtx_stack_c::XrotM(-0x7770);
    } else {
        mDoMtx_stack_c::YrotM(-0x3d44);
        mDoMtx_stack_c::XrotM(-0x7c4c);
    }
    mDoMtx_stack_c::scaleM(mSwordScale.x, mSwordScale.y, mSwordScale.z);
    mDoMtx_stack_c::multVecZero(&mSwordPos);
    mpSwordMorf->getModel()->i_setBaseTRMtx(mDoMtx_stack_c::get());
    mpSwordMorf->modelCalc();

    vec.set(0.0f, -20.0f, 40.0f);
    mDoMtx_stack_c::multVec(&vec, &eyePos);
    if (mDrawZant == true) {
        eyePos = mZantEyePos;
    }
    attention_info.position = eyePos;
    attention_info.position.y += 100.0f;

    mDoMtx_stack_c::transS(mSwordPos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    vec.set(5.0f, 0.0f, 10.0f);
    mDoMtx_stack_c::transM(vec.x, vec.y, vec.z);
    mDoMtx_stack_c::YrotM(field_0x7ca + 5000);
    mDoMtx_stack_c::scaleM(mZantScale.x, mZantScale.y, mZantScale.z);
    mDoMtx_stack_c::multVecZero(&mZantPos);
    mpZantMorf->getModel()->i_setBaseTRMtx(mDoMtx_stack_c::get());
    mpZantMorf->modelCalc();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::mtx_set() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mtx_set__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DD058-805DD05C 000604 0004+00 0/2 0/0 0/0 .rodata          @10356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10356 = 380.0f;
COMPILER_STRIP_GATE(0x805DD058, &lit_10356);
#pragma pop

/* 805DD05C-805DD060 000608 0004+00 0/1 0/0 0/0 .rodata          @10357 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10357 = -70.0f;
COMPILER_STRIP_GATE(0x805DD05C, &lit_10357);
#pragma pop

/* 805DD060-805DD064 00060C 0004+00 0/2 0/0 0/0 .rodata          @10358 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10358 = 640.0f;
COMPILER_STRIP_GATE(0x805DD060, &lit_10358);
#pragma pop

/* 805DD064-805DD068 000610 0004+00 0/1 0/0 0/0 .rodata          @10359 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10359 = 660.0f;
COMPILER_STRIP_GATE(0x805DD064, &lit_10359);
#pragma pop

/* 805DD068-805DD06C 000614 0004+00 0/1 0/0 0/0 .rodata          @10360 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10360 = -230.0f;
COMPILER_STRIP_GATE(0x805DD068, &lit_10360);
#pragma pop

/* 805DD06C-805DD070 000618 0004+00 0/1 0/0 0/0 .rodata          @10361 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10361 = 440.0f;
COMPILER_STRIP_GATE(0x805DD06C, &lit_10361);
#pragma pop

#ifndef NONMATCHING
/* 805DE1B4-805DE1C4 00074C 000C+04 0/1 0/0 0/0 .bss             @10210 */
#pragma push
#pragma force_active on
static u8 lit_10210[12 + 4 /* padding */];
#pragma pop

/* 805DE1C4-805DE1D0 00075C 000C+00 0/1 0/0 0/0 .bss             @10213 */
#pragma push
#pragma force_active on
static u8 lit_10213[12];
#pragma pop

/* 805DE1D0-805DE1DC 000768 000C+00 0/1 0/0 0/0 .bss             @10214 */
#pragma push
#pragma force_active on
static u8 lit_10214[12];
#pragma pop

/* 805DE1DC-805DE1E8 000774 000C+00 0/1 0/0 0/0 .bss             @10215 */
#pragma push
#pragma force_active on
static u8 lit_10215[12];
#pragma pop

/* 805DE1E8-805DE1F4 000780 000C+00 0/1 0/0 0/0 .bss             @10216 */
#pragma push
#pragma force_active on
static u8 lit_10216[12];
#pragma pop

/* 805DE1F4-805DE230 00078C 003C+00 0/1 0/0 0/0 .bss             head_cc_dt$10209 */
#pragma push
#pragma force_active on
static u8 head_cc_dt[60];
#pragma pop
#endif

/* 805D951C-805D9A40 00E3DC 0524+00 1/1 0/0 0/0 .text            cc_set__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::cc_set() {
    static cXyz head_cc_dt[5] = {
        cXyz(380.0f, 0.0f, 0.0f),
        cXyz(50.0f, -50.0f, 0.0f),
        cXyz(-300.0f, -70.0f, 0.0f),
        cXyz(640.0f, 80.0f, 0.0f),
        cXyz(670.0f, -100.0f, 0.0f),
    };

    static f32 head_setRdt[5] = {
        300.0f,
        350.0f,
        270.0f,
        190.0f,
        190.0f,
    };

    J3DModel* model = mpMorf->getModel();
    cXyz center_base, center;

    mDoMtx_stack_c::copy(model->i_getAnmMtx(6));
    center_base.set(660.0f, -230.0f, 0.0f);
    mDoMtx_stack_c::multVec(&center_base, &center);
    mWeakSph.SetC(center);
    mWeakSph.SetR(70.0f);
    dComIfG_Ccsp()->Set(&mWeakSph);

    for (int i = 0; i < 5; i++) {
        center_base = head_cc_dt[i];
        mDoMtx_stack_c::multVec(&center_base, &center);
        f32 radius = head_setRdt[i];
        mHeadSph[i].SetC(center);
        mHeadSph[i].SetR(radius);
        dComIfG_Ccsp()->Set(&mHeadSph[i]);
    }

    if (mBackboneJoint < 3) {
        mDoMtx_stack_c::copy(model->i_getAnmMtx(mBackboneJoint));
        center_base.set(-20.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::multVec(&center_base, &center);
        mBackboneCyl.SetC(center);
        mBackboneCyl.SetH(400.0f);
        mBackboneCyl.SetR(120.0f);
        dComIfG_Ccsp()->Set(&mBackboneCyl);
    }

    mDoMtx_stack_c::copy(model->i_getAnmMtx(3));
    mDoMtx_stack_c::multVecZero(&mBackbonePos);

    mDoMtx_stack_c::copy(model->i_getAnmMtx(11));
    mDoMtx_stack_c::multVecZero(&mHandPos[0]);
    if (mAction == ACT_OPENING_DEMO) {
        center_base.set(500.0f, -100.0f, 180.0f);
        mDoMtx_stack_c::multVec(&center_base, &center);
        mHandAtLCyl.SetC(center);
        mHandAtLCyl.SetH(300.0f);
        mHandAtLCyl.SetR(440.0f);
    } else {
        center_base.set(400.0f, -100.0f, 100.0f);
        mDoMtx_stack_c::multVec(&center_base, &center);
        mHandAtLCyl.SetC(center);
        mHandAtLCyl.SetH(300.0f);
        mHandAtLCyl.SetR(500.0f);
    }
    dComIfG_Ccsp()->Set(&mHandAtLCyl);

    mDoMtx_stack_c::copy(model->i_getAnmMtx(20));
    mDoMtx_stack_c::multVecZero(&mFingerPos[0]);

    mDoMtx_stack_c::copy(model->i_getAnmMtx(30));
    mDoMtx_stack_c::multVecZero(&mHandPos[1]);
    center_base.set(400.0f, -100.0f, -100.0f);
    mDoMtx_stack_c::multVec(&center_base, &center);
    mHandAtRCyl.SetC(center);
    mHandAtRCyl.SetH(300.0f);
    mHandAtRCyl.SetR(500.0f);
    dComIfG_Ccsp()->Set(&mHandAtRCyl);

    mDoMtx_stack_c::copy(model->i_getAnmMtx(39));
    mDoMtx_stack_c::multVecZero(&mFingerPos[1]);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::cc_set() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/cc_set__8daB_DS_cFv.s"
}
#pragma pop
#endif

#ifndef NONMATCHING
/* ############################################################################################## */
/* 805DD070-805DD1D8 00061C 0168+00 1/1 0/0 0/0 .rodata          ETC_CC_DT$10368 */
SECTION_RODATA static u8 const ETC_CC_DT[360] = {
    0x00, 0x00, 0x00, 0x00, 0x44, 0xFA, 0x00, 0x00, 0x44, 0x48, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00,
    0x43, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x44, 0xBB, 0x80, 0x00, 0x43, 0xFA, 0x00, 0x00,
    0x43, 0x7A, 0x00, 0x00, 0x44, 0x09, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x44, 0x7A, 0x00, 0x00,
    0x43, 0x48, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00, 0x43, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0xC3, 0x5C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC3, 0x7A, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x44, 0x3B, 0x80, 0x00,
    0x43, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0xC2, 0x48, 0x00, 0x00,
    0x43, 0x16, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x42, 0x8C, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x43, 0x2A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B,
    0xC3, 0x0C, 0x00, 0x00, 0xC2, 0x48, 0x00, 0x00, 0xC2, 0xC8, 0x00, 0x00, 0x42, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0B, 0xC3, 0x9B, 0x00, 0x00, 0xC2, 0x8C, 0x00, 0x00, 0xC3, 0x34, 0x00, 0x00,
    0x42, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x43, 0x70, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x42, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0xC2, 0xC8, 0x00, 0x00,
    0x42, 0xC8, 0x00, 0x00, 0x43, 0x7A, 0x00, 0x00, 0x42, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x43, 0x34, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0xC2, 0x48, 0x00, 0x00, 0x42, 0xDC, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0B, 0xC2, 0xC8, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0xC2, 0xC8, 0x00, 0x00,
    0x43, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x43, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0xC3, 0x16, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E,
    0xC2, 0xC8, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0xC2, 0xC8, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1D, 0x43, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x43, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D, 0xC3, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805DD070, &ETC_CC_DT);
#endif

/* 805D9A40-805D9B74 00E900 0134+00 1/1 0/0 0/0 .text            cc_etc_set__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::cc_etc_set() {
    static const struct {
        int joint_no;
        Vec center;
        f32 radius;
    } ETC_CC_DT[18] = {
        {0, {2000.0f, 800.0f, 150.0f}, 200.0f},
        {0, {1500.0f, 500.0f, 250.0f}, 550.0f},
        {0, {1000.0f, 200.0f, 150.0f}, 440.0f},
        {4, {-220.0f, 0.0f, -250.0f}, 150.0f},
        {4, {0.0f, 0.0f, 750.0f}, 150.0f},
        {29, {0.0f, -50.0f, 150.0f}, 150.0f},
        {11, {70.0f, 0.0f, 0.0f}, 170.0f},
        {11, {-140.0f, -50.0f, -100.0f}, 120.0f},
        {11, {-310.0f, -70.0f, -180.0f}, 100.0f},
        {10, {240.0f, 50.0f, 0.0f}, 80.0f},
        {10, {-100.0f, 100.0f, 250.0f}, 120.0f},
        {9, {180.0f, 50.0f, -50.0f}, 110.0f},
        {11, {-100.0f, 200.0f, -100.0f}, 200.0f},
        {10, {150.0f, 0.0f, 0.0f}, 200.0f},
        {10, {-150.0f, 0.0f, 0.0f}, 200.0f},
        {30, {-100.0f, 200.0f, -100.0f}, 200.0f},
        {29, {150.0f, 0.0f, 0.0f}, 200.0f},
        {29, {-150.0f, 0.0f, 0.0f}, 200.0f},
    };

    static f32 etc_setRdt[18] = {
        0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f,
        0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f,
    };

    if (health <= 1 || mBossPhase == 100) {
        return;
    }

    int last = 18;
    int i = 0;
    if (mAction == ACT_OPENING_DEMO) {
        if (mMode == 3) {
            last = 12;
        } else {
            return;
        }
    } else {
        i = 12;
    }
    J3DModel* model = mpMorf->getModel();

    for (; i < last; i++) {
        mDoMtx_stack_c::copy(model->i_getAnmMtx(ETC_CC_DT[i].joint_no));
        cXyz center_base = ETC_CC_DT[i].center;
        cXyz center;
        mDoMtx_stack_c::multVec(&center_base, &center);
        mEtcSph[i].SetC(center);
        mEtcSph[i].SetR(ETC_CC_DT[i].radius);
        dComIfG_Ccsp()->Set(&mEtcSph[i]);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::cc_etc_set() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/cc_etc_set__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805D9B74-805D9CFC 00EA34 0188+00 1/1 0/0 0/0 .text            mBattle2Action__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals / generics
void daB_DS_c::mBattle2Action() {
    mBattle2_spinner_damage_check();

    switch (mAction) {
    case ACT_B2_OPENING_DEMO:
        executeBattle2OpeningDemo();
        break;
    case ACT_B2_WAIT:
        executeBattle2Wait();
        break;
    case ACT_B2_F_MOVE:
        executeBattle2FMove();
        break;
    case ACT_B2_TIRED:
        executeBattle2Tired();
        break;
    case ACT_B2_DAMAGE:
        executeBattle2Damage();
        break;
    case ACT_B2_DEAD:
        executeBattle2Dead();
        break;
    }

    if (cLib_calcTimer(&mHintTimer2) != 0 && mHintTimer2 == 1) {
        dComIfGs_onOneZoneSwitch(7, fopAcM_GetRoomNo(this));
    }
    mCreateTrap(false);
    fopAcM_posMoveF(this, mCcStts.GetCCMoveP());
    if (!mDead) {
        mAcchCir.SetWall(200.0f, mWallR);
        mAcch.SetGroundUpY(mGroundUpY);
        mAcch.CrrPos(dComIfG_Bgsp());
        mpMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }
    mpSwordBrkAnm->play();
    mpSwordMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    if (mPlayPatternAnm) {
        mpPatternBrkAnm->play();
        mpPatternBtkAnm->play();
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::mBattle2Action() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mBattle2Action__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805D9CFC-805D9FF4 00EBBC 02F8+00 1/1 0/0 0/0 .text mBattle2_spinner_damage_check__8daB_DS_cFv
 */
#ifdef NONMATCHING
// matches with literals / generics
void daB_DS_c::mBattle2_spinner_damage_check() {
    if (cLib_calcTimer(&mDamageTimer) != 0 || mAnmID == ANM_HEAD_RETURN
        || mAction == ACT_B2_DAMAGE || mAction == ACT_B2_DEAD || health < 1)
    {
        return;
    }

    for (int i = 0; i < 18; i++) {
        if (mEtcSph[i].ChkTgHit()) {
            mDamageTimer = 8;
            mAtInfo.mpCollider = mEtcSph[i].GetTgHitObj();
            mSoundPos = *mEtcSph[i].GetTgHitPosP();
            def_se_set(&mSound, mAtInfo.mpCollider, 2, NULL);
            mEtcSph[i].ClrTgHit();
            return;
        }
    }

    if (mAction == ACT_B2_OPENING_DEMO || mAction == ACT_B2_DAMAGE || mAction == ACT_B2_DEAD) {
        return;
    }

    daPy_getPlayerActorClass()->onBossRoomWait();

    for (int i = 0; i < 5; i++) {
        if (mHeadSph[i].ChkTgHit()) {
            mAtInfo.mpCollider = mHeadSph[i].GetTgHitObj();
            cXyz vec1 = mSwordPos - *mHeadSph[i].GetTgHitPosP();
            cXyz hit_pos = *mHeadSph[i].GetTgHitPosP();
            mDamageTimer = 8;
            csXyz hit_angle;
            hit_angle.x = 0;
            hit_angle.y = vec1.atan2sX_Z();
            hit_angle.z = 0;
            if (mHeadSph[i].GetTgHitObj()->ChkAtType(AT_TYPE_SPINNER)) {
                mSound.startCreatureVoice(Z2SE_EN_DS_H_V_DMG_SPNR, -1);
                mCreateFireBreath = false;
                def_se_set(&mSound, mAtInfo.mpCollider, 0x1f, NULL);
                i_dComIfGp_setHitMark(3, this, &hit_pos, &hit_angle, NULL, 0);
                Z2GetAudioMgr()->changeBgmStatus(2);
                field_0x790.set(0.0f, 0.0f, 0.0f);
                setBck(ANM_HEAD_FATTACK_A, 0, 3.0f, 1.0f);
                setActionMode(ACT_B2_DAMAGE, 0);
            } else {
                def_se_set(&mSound, mAtInfo.mpCollider, 2, NULL);
                i_dComIfGp_setHitMark(2, this, &hit_pos, &hit_angle, NULL, 0);
            }
            mHeadSph[i].ClrTgHit();
        }
    }

    mCcStts.Move();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::mBattle2_spinner_damage_check() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mBattle2_spinner_damage_check__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805D9FF4-805DA584 00EEB4 0590+00 1/1 0/0 0/0 .text            mBattle2_damage_check__8daB_DS_cFv
 */
#ifdef NONMATCHING
// matches with literals / generics
bool daB_DS_c::mBattle2_damage_check() {
    if (health < 1) {
        return false;
    }

    if (cLib_calcTimer(&mDamageTimer) != 0) {
        return false;
    }

    if (mWeakSph.ChkTgHit()) {
        mAtInfo.mpCollider = mWeakSph.GetTgHitObj();
        cXyz vec1 = mSwordPos - *mWeakSph.GetTgHitPosP();
        cXyz hit_pos = *mWeakSph.GetTgHitPosP();
        mDamageTimer = 8;
        cc_at_check(this, &mAtInfo);
        csXyz hit_angle;
        hit_angle.x = 0;
        hit_angle.y = vec1.atan2sX_Z();
        hit_angle.z = 0;

        if (health <= 1) {
            i_dComIfGp_setHitMark(3, this, &eyePos, &hit_angle, NULL, 0);
            mPlayPatternAnm = false;
            mSoundPos = current.pos;
            mSound.startCollisionSE(Z2SE_HIT_SWORD, 0x20);
            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mParticleKey1);
            if (emitter != NULL) {
                emitter->stopDrawParticle();
            }
            Z2GetAudioMgr()->bgmStop(0x1e, 0);
            Z2GetAudioMgr()->bgmStreamPrepare(0x2000048);
            Z2GetAudioMgr()->bgmStreamPlay();
            mSound.startCreatureVoice(Z2SE_EN_DS_END_V, -1);
            setBck(ANM_HEAD_DOWN_DAMAGE, 0, 3.0f, 1.0f);
            setActionMode(ACT_B2_DEAD, 0);
            return true;
        }

        if (mWeakSph.GetTgHitObj()->ChkAtType(AT_TYPE_NORMAL_SWORD)
            || mWeakSph.GetTgHitObj()->ChkAtType(AT_TYPE_8000))
        {
            setBck(ANM_HEAD_DOWN_DAMAGE, 0, 3.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_DS_H_V_DMG_SWD, -1);
            mpPatternBrkAnm->init(mpPatternModel->getModelData(),
                static_cast<J3DAnmTevRegKey*>(dComIfG_getObjectRes("B_DS", 78)),
                1, 0, 1.0f, 0, -1);
            mpPatternBtkAnm->init(mpPatternModel->getModelData(),
                static_cast<J3DAnmTextureSRTKey*>(dComIfG_getObjectRes("B_DS", 84)),
                1, 0, 1.0f, 0, -1);
            mPlayPatternAnm = true;
            mSoundPos = current.pos;
            if (mAtInfo.mHitStatus == 0) {
                i_dComIfGp_setHitMark(1, this, &eyePos, &hit_angle, NULL, 0);
                field_0x7d0 = 0x200;
                mSound.startCollisionSE(Z2SE_HIT_SWORD, 0x1e);
            } else {
                i_dComIfGp_setHitMark(3, this, &eyePos, &hit_angle, NULL, 0);
                field_0x7d0 = 0x400;
                mSound.startCollisionSE(Z2SE_HIT_SWORD, 0x1f);
            }
        } else {
            i_dComIfGp_setHitMark(2, this, &eyePos, &hit_angle, NULL, 0);
            def_se_set(&mSound, mAtInfo.mpCollider, 2, NULL);
        }

        mpSwordBrkAnm->init(mpSwordMorf->getModel()->getModelData(),
            static_cast<J3DAnmTevRegKey*>(dComIfG_getObjectRes("B_DS", 80)), 1, 1, 1.0f, 0, -1);
        
        if (mCutTypeCheck()) {
            mpPatternBrkAnm->init(mpPatternModel->getModelData(),
                static_cast<J3DAnmTevRegKey*>(dComIfG_getObjectRes("B_DS", 78)),
                1, 0, 1.0f, 0, -1);
            mpPatternBtkAnm->init(mpPatternModel->getModelData(),
                static_cast<J3DAnmTextureSRTKey*>(dComIfG_getObjectRes("B_DS", 84)),
                1, 0, 1.0f, 0, -1);
            mPlayPatternAnm = true;
            mDamageTimer = 12;
            mWeakSph.ClrTgHit();
            mWeakSph.OnTgStopNoConHit();
            return 0;
        }
    }

    mWeakSph.OffTgStopNoConHit();
    mCcStts.Move();
    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm bool daB_DS_c::mBattle2_damage_check() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mBattle2_damage_check__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DD1D8-805DD1DC 000784 0004+00 0/1 0/0 0/0 .rodata          @10787 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10787 = 590.0f;
COMPILER_STRIP_GATE(0x805DD1D8, &lit_10787);
#pragma pop

/* 805DD1DC-805DD1E0 000788 0004+00 0/1 0/0 0/0 .rodata          @10788 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10788 = 175.0f;
COMPILER_STRIP_GATE(0x805DD1DC, &lit_10788);
#pragma pop

/* 805DA584-805DA9A4 00F444 0420+00 1/1 0/0 0/0 .text            mBattle2_mtx_set__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals / generics
void daB_DS_c::mBattle2_mtx_set() {
    cXyz vec1, vec2, vec3;
    J3DModel* model = mpMorf->getModel();
    if (!mDead) {
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::transM(field_0x790.x, field_0x790.y, field_0x790.z);
        mDoMtx_stack_c::ZXYrotM(shape_angle);
        mDoMtx_stack_c::ZXYrotM(field_0x7ae);
        mDoMtx_stack_c::scaleM(l_HIO.mModelSize, l_HIO.mModelSize, l_HIO.mModelSize);
        model->i_setBaseTRMtx(mDoMtx_stack_c::get());
        mpMorf->modelCalc();
        mDoMtx_stack_c::copy(model->i_getAnmMtx(0));
        mDoMtx_stack_c::multVecZero(&mHeadPos);
        if (mPlayPatternAnm) {
            mDoMtx_stack_c::copy(model->i_getAnmMtx(0));
            mpPatternModel->i_setBaseTRMtx(mDoMtx_stack_c::get());
        }
        mDoMtx_stack_c::copy(model->i_getAnmMtx(0));
        vec1.set(0.0f, 100.0f, 0.0f);
        mDoMtx_stack_c::multVec(&vec1, &mMouthPos);
    }

    if (!mDead) {
        mDoMtx_stack_c::copy(model->i_getAnmMtx(0));
        vec1.set(590.0f, 175.0f, 0.0f);
        mDoMtx_stack_c::transM(vec1.x, vec1.y, vec1.z);
        mDoMtx_stack_c::YrotM(0x4000);
        mDoMtx_stack_c::XrotM(7000);
        mDoMtx_stack_c::scaleM(mSwordScale.x, mSwordScale.y, mSwordScale.z);
        mDoMtx_stack_c::multVecZero(&mSwordPos);
    } else {
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::ZXYrotM(shape_angle);
        mDoMtx_stack_c::transM(0.0f, -50.0f, 0.0f);
    }
    mpSwordMorf->getModel()->i_setBaseTRMtx(mDoMtx_stack_c::get());
    mpSwordMorf->modelCalc();

    vec1.set(0.0f, 30.0f, 80.0f);
    mDoMtx_stack_c::multVec(&vec1, &eyePos);
    attention_info.position = eyePos;
    attention_info.position.y += 100.0f;

    {
        dBgS_LinChk lin_chk;
        csXyz angle;
        angle = shape_angle;
        mDoMtx_YrotS(*calc_mtx, angle.y);
        mDoMtx_XrotM(*calc_mtx, angle.x);
        vec2.set(0.0f, 0.0f, 4000.0f);
        MtxPosition(&vec2, &vec3);
        field_0x6d0 = mMouthPos + vec3;
        lin_chk.Set(&mMouthPos, &field_0x6d0, this);
        if (dComIfG_Bgsp().LineCross(&lin_chk)) {
            field_0x6d0 = lin_chk.i_GetCross();
        }
    }

    if (mCreateFireBreath) {
        mBattle2BreathFireSet(BULLET_C);
    }

    if (mAction == ACT_B2_F_MOVE && mMode >= 3 && mMode <= 4) {
        mParticleKey2 = dComIfGp_particle_set(mParticleKey2, 0x8bfa, &current.pos,
                                              &shape_angle, NULL);
        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mParticleKey2);
        if (emitter != NULL) {
            emitter->setGlobalSRTMatrix(mpMorf->getModel()->i_getAnmMtx(0));
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::mBattle2_mtx_set() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mBattle2_mtx_set__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DD1E0-805DD208 00078C 0028+00 1/1 0/0 0/0 .rodata          B2_ETC_CC_DT$10792 */
SECTION_RODATA static u8 const B2_ETC_CC_DT[40] = {
    0x00, 0x00, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC2, 0xF0,
    0x00, 0x00, 0x43, 0xCD, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC3, 0x91, 0x00, 0x00,
    0x43, 0xC8, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00, 0x42, 0xC8, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805DD1E0, &B2_ETC_CC_DT);

/* 805DA9A4-805DAA98 00F864 00F4+00 1/1 0/0 0/0 .text            mBattle2_cc_etc_set__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
void daB_DS_c::mBattle2_cc_etc_set() {
    static const struct {
        int joint_no;
        Vec center;
        f32 radius;
    } B2_ETC_CC_DT[2] = {
        {0, {60.0f, 300.0f, -120.0f}, 410.0f},
        {0, {-290.0f, 400.0f, -300.0f}, 100.0f},
    };

    if (mAction == ACT_B2_OPENING_DEMO) {
        J3DModel* model = mpMorf->getModel();
        for (int i = 0; i < 2; i++) {
            mDoMtx_stack_c::copy(model->i_getAnmMtx(B2_ETC_CC_DT[i].joint_no));
            cXyz center_base = B2_ETC_CC_DT[i].center;
            cXyz center;
            mDoMtx_stack_c::multVec(&center_base, &center);
            mEtcSph[i].SetC(center);
            mEtcSph[i].SetR(B2_ETC_CC_DT[i].radius);
            dComIfG_Ccsp()->Set(&mEtcSph[i]);
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::mBattle2_cc_etc_set() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mBattle2_cc_etc_set__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805DD208-805DD20C 0007B4 0004+00 0/2 0/0 0/0 .rodata          @10940 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10940 = -400.0f;
COMPILER_STRIP_GATE(0x805DD208, &lit_10940);
#pragma pop

/* 805DD20C-805DD210 0007B8 0004+00 0/1 0/0 0/0 .rodata          @10941 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10941 = 130.0f;
COMPILER_STRIP_GATE(0x805DD20C, &lit_10941);
#pragma pop

#ifndef NONMATCHING
/* 805DE230-805DE240 0007C8 000C+04 0/1 0/0 0/0 .bss             @10829 */
#pragma push
#pragma force_active on
static u8 lit_10829[12 + 4 /* padding */];
#pragma pop

/* 805DE240-805DE24C 0007D8 000C+00 0/1 0/0 0/0 .bss             @10832 */
#pragma push
#pragma force_active on
static u8 lit_10832[12];
#pragma pop

/* 805DE24C-805DE258 0007E4 000C+00 0/1 0/0 0/0 .bss             @10833 */
#pragma push
#pragma force_active on
static u8 lit_10833[12];
#pragma pop

/* 805DE258-805DE264 0007F0 000C+00 0/1 0/0 0/0 .bss             @10834 */
#pragma push
#pragma force_active on
static u8 lit_10834[12];
#pragma pop

/* 805DE264-805DE270 0007FC 000C+00 0/1 0/0 0/0 .bss             @10835 */
#pragma push
#pragma force_active on
static u8 lit_10835[12];
#pragma pop

/* 805DE270-805DE2AC 000808 003C+00 0/1 0/0 0/0 .bss             head2_cc_dt$10828 */
#pragma push
#pragma force_active on
static u8 head2_cc_dt[60];
#pragma pop
#endif

/* 805DAA98-805DADC4 00F958 032C+00 1/1 0/0 0/0 .text            mBattle2_cc_set__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals / generics
void daB_DS_c::mBattle2_cc_set() {
    static cXyz head2_cc_dt[5] = {
        cXyz(380.0f, 0.0f, 0.0f),
        cXyz(-50.0f, 50.0f, 0.0f),
        cXyz(-400.0f, 130.0f, 0.0f),
        cXyz(640.0f, 80.0f, 0.0f),
        cXyz(670.0f, -100.0f, 0.0f),
    };

    static f32 head2_setRdt[5] = {
        300.0f,
        350.0f,
        270.0f,
        190.0f,
        190.0f,
    };

    mDoMtx_stack_c::copy(mpMorf->getModel()->i_getAnmMtx(0));
    cLib_calcTimer(&mHitTimer);
    
    for (int i = 0; i < 5; i++) {
        cXyz center_base = head2_cc_dt[i];
        cXyz center;
        mDoMtx_stack_c::multVec(&center_base, &center);
        f32 radius = head2_setRdt[i];
        mHeadSph[i].SetC(center);
        mHeadSph[i].SetR(radius);
        dComIfG_Ccsp()->Set(&mHeadSph[i]);

        if (mHeadSph[i].ChkTgHit()) {
            mAtInfo.mpCollider = mHeadSph[i].GetTgHitObj();
            mHeadSph[i].ClrTgHit();
            if (mHitTimer == 0) {
                cXyz delta_pos = current.pos - *mHeadSph[i].GetTgHitPosP();
                cXyz hit_pos = *mHeadSph[i].GetTgHitPosP();
                csXyz hit_angle;
                hit_angle.x = 0;
                hit_angle.y = delta_pos.atan2sX_Z();
                hit_angle.z = 0;
                i_dComIfGp_setHitMark(2, this, &hit_pos, &hit_angle, NULL, 0);
                def_se_set(&mSound, mAtInfo.mpCollider, 2, NULL);
                mHitTimer = 8;
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daB_DS_c::mBattle2_cc_set() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/mBattle2_cc_set__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805DADC4-805DB184 00FC84 03C0+00 1/1 0/0 0/0 .text            execute__8daB_DS_cFv */
#ifdef NONMATCHING
// an extra `extsh`
int daB_DS_c::execute() {
    if (mType == BULLET_A || mType == BULLET_B || mType == BULLET_C) {
        mBulletAction();
        return 1;
    } else if (mType == PHASE_2) {
        mBattle2Action();
        mBattle2_mtx_set();
        mBattle2_cc_set();
        mBattle2_cc_etc_set();
        return 1;
    }

    action();
    
    if (mBossPhase == 100) {
        return 1;
    }

    handR_ang = -4000;
    handL_ang = -4000;
    mtx_set();
    dBgS_GndChk gnd_chk;
    cXyz vec1, vec2;
    J3DModel* model = mpMorf->getModel();
    s8 bvar3;
    int i = 0;
    
    if (!mIsOpeningDemo) {
        s16 hand_x_ang_target = (s16)(mBackboneJoint * 1000) - 6000;
        if (handX_ang > -4000) {
            handX_ang = -4000;
        }
        cLib_addCalcAngleS2(&handX_ang, hand_x_ang_target, 20, 0x100);
        while (true) {
            bvar3 = false;
            mDoMtx_stack_c::copy(model->i_getAnmMtx(11));
            mDoMtx_stack_c::multVecZero(&vec2);
            vec1 = vec2;
            vec2.y += 3000.0f;
            gnd_chk.SetPos(&vec2);
            vec2.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
            if (vec2.y == -1e9f) {
                vec2.y = vec1.y;
            }
            if (vec1.y < vec2.y) {
                handL_ang += (s16)(fabsf(vec1.y - vec2.y) * 10.0f);
                bvar3 = true;
                if (field_0x84d & 1) {
                    if ((int)mpMorf->getFrame() >= 0x48 && (int)mpMorf->getFrame() < 0x4f) {
                        hand_smokeSet(1);
                        field_0x84d ^= 1;
                    }
                }
            }
            mDoMtx_stack_c::copy(model->i_getAnmMtx(30));
            mDoMtx_stack_c::multVecZero(&vec2);
            vec1 = vec2;
            vec2.y += 3000.0f;
            gnd_chk.SetPos(&vec2);
            vec2.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
            if (vec2.y == -1e9f) {
                vec2.y = vec1.y;
            }
            if (vec1.y < vec2.y) {
                handR_ang += (s16)(fabsf(vec1.y - vec2.y) * 10.0f);
                bvar3 = true;
                if (field_0x84d & 2) {
                    if ((int)mpMorf->getFrame() >= 0x22 && (int)mpMorf->getFrame() < 0x29) {
                        hand_smokeSet(2);
                        field_0x84d ^= 2;
                    }
                }
            }
            if (!bvar3) {
                break;
            }
            mpMorf->updateDL();
            i++;
            if (i > 10) {
                break;
            }
        }
    } else {
        handL_ang = 0;
        handR_ang = 0;
        handX_ang = 0;
    }

    if (mBossPhase == 0) {
        neck_set();
    }
    cc_set();
    cc_etc_set();
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daB_DS_c::execute() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/execute__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805DB184-805DB1A4 010044 0020+00 2/1 0/0 0/0 .text            daB_DS_Execute__FP8daB_DS_c */
static int daB_DS_Execute(daB_DS_c* i_this) {
    return i_this->execute();
}

/* 805DB1A4-805DB1AC 010064 0008+00 1/0 0/0 0/0 .text            daB_DS_IsDelete__FP8daB_DS_c */
static int daB_DS_IsDelete(daB_DS_c* i_this) {
    return 1;
}

/* 805DB1AC-805DB244 01006C 0098+00 1/1 0/0 0/0 .text            _delete__8daB_DS_cFv */
int daB_DS_c::_delete() {
    dComIfG_resDelete(&mPhase, "B_DS");
    if (mType == BULLET_A || mType == BULLET_B || mType == BULLET_C) {
        return 1;
    }
    if (mHIOInit) {
        hioInit = false;
    }
    if (heap != NULL) {
        mSound.deleteObject();
    }
    return 1;
}

/* 805DB244-805DB264 010104 0020+00 1/0 0/0 0/0 .text            daB_DS_Delete__FP8daB_DS_c */
static int daB_DS_Delete(daB_DS_c* i_this) {
    return i_this->_delete();
}

/* 805DB264-805DB90C 010124 06A8+00 1/1 0/0 0/0 .text            CreateHeap__8daB_DS_cFv */
#ifdef NONMATCHING
// regalloc
int daB_DS_c::CreateHeap() {
    if (mType == PHASE_1 && dComIfGs_isZoneSwitch(6, fopAcM_GetRoomNo(this))
                         && dComIfGs_isZoneSwitch(7, fopAcM_GetRoomNo(this))) {
        mType = PHASE_2;
        home.pos.set(0.0f, 1900.0f, 0.0f);
        current.pos.set(0.0f, 1900.0f, 0.0f);
    }

    J3DModelData* model_data = static_cast<J3DModelData*>(dComIfG_getObjectRes("B_DS", 70));
    int anm_index = 60;
    if (mType == PHASE_2) {
        model_data = static_cast<J3DModelData*>(dComIfG_getObjectRes("B_DS", 71));
        anm_index = 44;
    }
    mpMorf =
        new mDoExt_McaMorfSO(model_data, NULL, NULL,
                             static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("B_DS", anm_index)),
                             0, 1.0f, 0, -1, &mSound, 0, 0x11000084);
    if (mpMorf == NULL || mpMorf->getModel() == NULL) {
        return 0;
    }
    model = mpMorf->getModel();
    model->setUserArea((u32)this);
    for (u16 i = 0; i < model->getModelData()->getJointNum(); i++) {
        if (i != 0) {
            model->getModelData()->getJointNodePointer(i)->setCallBack(JointCallBack);
        }
    }

    J3DModelData* sword_model_data = static_cast<J3DModelData*>(dComIfG_getObjectRes("B_DS", 74));
    mpSwordMorf =
        new mDoExt_McaMorfSO(sword_model_data, NULL, NULL,
                             static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("B_DS", 63)),
                             0, 1.0f, 0, -1, NULL, 0, 0x11000084);
    if (mpSwordMorf == NULL || mpSwordMorf->getModel() == NULL) {
        return 0;
    }

    mpSwordBrkAnm = new mDoExt_brkAnm();
    if (mpSwordBrkAnm == NULL) {
        return 0;
    }
    if (!mpSwordBrkAnm->init(mpSwordMorf->getModel()->getModelData(),
                          static_cast<J3DAnmTevRegKey*>(dComIfG_getObjectRes("B_DS", 81)),
                          1, 0, 1.0f, 0, -1)) {
        return 0;
    }

    J3DModelData* zant_model_data = static_cast<J3DModelData*>(dComIfG_getObjectRes("B_DS", 75));
    mpZantMorf =
        new mDoExt_McaMorfSO(zant_model_data, NULL, NULL,
                             static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("B_DS", 66)),
                             2, 1.0f, 0, -1, NULL, 0, 0x11000084);
    if (mpZantMorf == NULL || mpZantMorf->getModel() == NULL) {
        return 0;
    }

    J3DModelData* op_pattern_model_data =
        static_cast<J3DModelData*>(dComIfG_getObjectRes("B_DS", 73));
    mpOpPatternModel = mDoExt_J3DModel__create(op_pattern_model_data, 0, 0x11000284);
    if (mpOpPatternModel == NULL) {
        return 0;
    }

    mpOpPatternBrkAnm = new mDoExt_brkAnm();
    if (mpOpPatternBrkAnm == NULL) {
        return 0;
    }
    if (!mpOpPatternBrkAnm->init(mpOpPatternModel->getModelData(),
                           static_cast<J3DAnmTevRegKey*>(dComIfG_getObjectRes("B_DS", 79)),
                           1, 0, 1.0f, 0, -1)) {
        return 0;
    }

    mpOpPatternBtkAnm = new mDoExt_btkAnm();
    if (mpOpPatternBtkAnm == NULL) {
        return 0;
    }
    if (!mpOpPatternBtkAnm->init(mpOpPatternModel->getModelData(),
                           static_cast<J3DAnmTextureSRTKey*>(dComIfG_getObjectRes("B_DS", 85)),
                           1, 2, 1.0f, 0, -1)) {
        return 0;
    }

    J3DModelData* pattern_model_data = static_cast<J3DModelData*>(dComIfG_getObjectRes("B_DS", 72));
    mpPatternModel = mDoExt_J3DModel__create(pattern_model_data, 0, 0x11000284);
    if (mpPatternModel == NULL) {
        return 0;
    }

    mpPatternBrkAnm = new mDoExt_brkAnm();
    if (mpPatternBrkAnm == NULL) {
        return 0;
    }
    if (!mpPatternBrkAnm->init(mpPatternModel->getModelData(),
                           static_cast<J3DAnmTevRegKey*>(dComIfG_getObjectRes("B_DS", 78)),
                           1, 0, 1.0f, 0, -1)) {
        return 0;
    }

    mpPatternBtkAnm = new mDoExt_btkAnm();
    if (mpPatternBtkAnm == NULL) {
        return 0;
    }
    if (!mpPatternBtkAnm->init(mpPatternModel->getModelData(),
                           static_cast<J3DAnmTextureSRTKey*>(dComIfG_getObjectRes("B_DS", 84)),
                           1, 2, 1.0f, 0, -1)) {
        return 0;
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daB_DS_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/CreateHeap__8daB_DS_cFv.s"
}
#pragma pop
#endif

#ifndef NONMATCHING
/* 805DB90C-805DB954 0107CC 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop
#endif

/* 805DB954-805DB974 010814 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    return static_cast<daB_DS_c*>(i_this)->CreateHeap();
}

/* ############################################################################################## */
/* 805DD210-805DD214 0007BC 0004+00 0/1 0/0 0/0 .rodata          @11601 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11601 = 1775.0f;
COMPILER_STRIP_GATE(0x805DD210, &lit_11601);
#pragma pop

/* 805DD214-805DD218 0007C0 0004+00 0/1 0/0 0/0 .rodata          @11602 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11602 = -4132.0f;
COMPILER_STRIP_GATE(0x805DD214, &lit_11602);
#pragma pop

/* 805DD218-805DD21C 0007C4 0004+00 0/1 0/0 0/0 .rodata          @11603 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11603 = -40000.0f;
COMPILER_STRIP_GATE(0x805DD218, &lit_11603);
#pragma pop

/* 805DD21C-805DD220 0007C8 0004+00 0/1 0/0 0/0 .rodata          @11604 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11604 = 40000.0f;
COMPILER_STRIP_GATE(0x805DD21C, &lit_11604);
#pragma pop

/* 805DD220-805DD224 0007CC 0004+00 0/1 0/0 0/0 .rodata          @11605 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11605 = 379.0f;
COMPILER_STRIP_GATE(0x805DD220, &lit_11605);
#pragma pop

/* 805DD224-805DD228 0007D0 0004+00 0/1 0/0 0/0 .rodata          @11606 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11606 = -1375.0f;
COMPILER_STRIP_GATE(0x805DD224, &lit_11606);
#pragma pop

/* 805DD228-805DD22C 0007D4 0004+00 0/1 0/0 0/0 .rodata          @11607 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_11607 = -1040.0f;
COMPILER_STRIP_GATE(0x805DD228, &lit_11607);
#pragma pop

/* 805DB974-805DC1E8 010834 0874+00 1/1 0/0 0/0 .text            create__8daB_DS_cFv */
#ifdef NONMATCHING
// matches with literals
cPhs__Step daB_DS_c::create() {
    fopAcM_SetupActor(this, daB_DS_c);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhase, "B_DS");
    if (step == cPhs_COMPLEATE_e) {
        if (mType == PHASE_1 && dComIfGs_isStageBossEnemy()) {
            dComIfGs_onZoneSwitch(8, fopAcM_GetRoomNo(this));
            g_env_light.mColpatPrevGather = 4;
            g_env_light.mColpatCurrGather = 4;
            g_env_light.mColPatBlendGather = 1.0f;
            if (!dComIfGs_isStageLife()) {
                cXyz scale(1.0f, 1.0f, 1.0f);
                cXyz pos;
                csXyz angle;
                angle.x = angle.y = angle.z = 0;
                pos.set(-400.0f, 1775.0f, -4132.0f);
                fopAcM_createItemForBoss(&pos, 0x22, fopAcM_GetRoomNo(this),
                                         &angle, &scale, 0.0f, 0.0f, -1);
            }
            return cPhs_ERROR_e;
        }
        mType = fopAcM_GetParamBit(this, 0, 8);
        mBitSw = fopAcM_GetParamBit(this, 8, 8);
        mBitSw2 = fopAcM_GetParamBit(this, 16, 8);
        mBitSw3 = fopAcM_GetParamBit(this, 24, 8);
        if (mType == 0xff) {
            mType = PHASE_1;
        }
        if (mType == BULLET_A || mType == BULLET_B || mType == BULLET_C) {
            attention_info.field_0x0[2] = 0;
            attention_info.flags &= ~4;
            fopAcM_SetGroup(this, 0);
            fopAcM_OffStatus(this, 0);
            mCcStts.Init(0xff, 0, this);
            gravity = 0.0f;
            mBreathAtSph.Set(cc_ds_breath_at_src);
            mBreathAtSph.SetStts(&mCcStts);
            fopAcM_OffStatus(this, 0);
            attention_info.flags &= ~4;
            if (mType == BULLET_B || mType == BULLET_C) {
                mAcch.Set(&current.pos, &old.pos, this, 1, &mAcchCir, &speed, NULL, NULL);
                mAcch.CrrPos(dComIfG_Bgsp());
                fopAcM_OnStatus(this, 0x4000);
            }
            setActionMode(8, 0);
        } else {
            if (mType != BULLET_A && mType != BULLET_B && mType != BULLET_C
                        && !fopAcM_entrySolidHeap(this, useHeapInit, 0xfac0)) {
                return cPhs_ERROR_e;
            }
            field_0x560 = health = l_HIO.mP2Health;
            if (!hioInit) {
                hioInit = 1;
                mHIOInit = true;
                l_HIO.field_0x04 = -1;
            }
            shape_angle.z = 0;
            shape_angle.x = 0;
            shape_angle.y = current.angle.y;
            attention_info.field_0x0[2] = 0;
            attention_info.flags = 4;
            fopAcM_SetMtx(this, mpMorf->mpModel->getBaseTRMtx());
            fopAcM_SetMin(this, -40000.0f, -40000.0f, -40000.0f);
            fopAcM_SetMax(this, 40000.0f, 40000.0f, 40000.0f);
            mAcch.Set(&current.pos, &old.pos, this, 1, &mAcchCir, &speed, NULL, NULL);
            mCcStts.Init(0xff, 0, this);
            mWeakSph.Set(cc_ds_week_src);
            mWeakSph.SetStts(&mCcStts);
            {
                dBgS_GndChk gnd_chk;
                cXyz pos = current.pos;
                pos.y += 800.0f;
                gnd_chk.SetPos(&pos);
                pos.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
                if (pos.y != -1e9f) {
                    current.pos.y = pos.y;
                }
            }
            for (int i = 0; i < 5; i++) {
                mHeadSph[i].Set(cc_ds_head_src);
                mHeadSph[i].SetStts(&mCcStts);
            }
            for (int i = 0; i < 18; i++) {
                mEtcSph[i].Set(cc_ds_head_src);
                mEtcSph[i].SetStts(&mCcStts);
            }
            mWallR = 500.0f;
            mBackboneCyl.Set(cc_ds_backbone_src);
            mBackboneCyl.SetStts(&mCcStts);
            mHandAtLCyl.Set(cc_ds_hand_at_cyl_src);
            mHandAtLCyl.SetStts(&mCcStts);
            mHandAtRCyl.Set(cc_ds_hand_at_cyl_src);
            mHandAtRCyl.SetStts(&mCcStts);
            mHandAtLCyl.OffAtSetBit();
            mHandAtRCyl.OffAtSetBit();
            mHandAtLCyl.OnTgShield();
            mHandAtRCyl.OnTgShield();
            mSoundPos = current.pos;
            mSound.init(&mSoundPos, &eyePos, 3, 1);
            mAtInfo.mpSound = &mSound;
            mAtInfo.mPowerType = 0xb;
            mSwordPos = current.pos;
            for (int i = 0; i < 2; i++) {
                mHandPos[i] = current.pos;
            }
            for (int i = 0; i < 3; i++) {
                field_0x7dc[i] = 255.0f;
            }
            field_0x7e8 = 255.0f;
            field_0x7ec = 0.0f;
            mpSwordMorf->setStartFrame(379.0f);
            mZantScale.set(0.0f, 0.0f, 0.0f);
            mSwordScale.set(1.0f, 1.0f, 1.0f);
            dComIfGs_onZoneSwitch(8, fopAcM_GetRoomNo(this));
            onWolfNoLock();
            mHintTimer1 = l_HIO.mHintTime1;
            mHintTimer2 = l_HIO.mHintTime1;
            if (mType == PHASE_1) {
                gravity = -1.0f;
                if (mBitSw != 0xff) {
                    i_fopAcM_onSwitch(this, mBitSw);
                }
                fopAcM_OnStatus(this, 0x4000);
                if (!cDmr_SkipInfo && !dComIfGs_isZoneSwitch(5, fopAcM_GetRoomNo(this))) {
                    mDrawZant = false;
                    mNoDrawSword = true;
                    dComIfGs_offZoneSwitch(8, fopAcM_GetRoomNo(this));
                    mIsOpeningDemo = true;
                    field_0x7e8 = 0.0f;
                    field_0x7ec = 255.0f;
                    if (mBitSw != 0xff) {
                        fopAcM_offSwitch(this, mBitSw);
                    }
                    attention_info.field_0x0[2] = 0;
                    attention_info.flags &= ~4;
                    fopAcM_SetGroup(this, 0);
                    fopAcM_OffStatus(this, 0);
                    if (!dComIfGs_isZoneSwitch(0, fopAcM_GetRoomNo(this))) {
                        setActionMode(ACT_OPENING_DEMO, 0);
                    } else {
                        setActionMode(ACT_OPENING_DEMO, 3);
                    }
                    setBck(ANM_OPDEMO, 0, 1.0f, 0.0f);
                } else {
                    cDmr_SkipInfo = 0;
                    dComIfGs_onZoneSwitch(5, fopAcM_GetRoomNo(this));
                }
                if (mBitSw3 != 0xff) {
                    fopAcM_offSwitch(this, mBitSw3);
                }
                if (mAction != ACT_OPENING_DEMO) {
                    field_0x7f8 = 0.5f;
                    Z2GetAudioMgr()->bgmStart(Z2BGM_HARAGIGANT_BTL01, 0, 0);
                    dKy_change_colpat(1);
                    mCreateTrap(true);
                    setActionMode(ACT_WAIT, 0);
                }
            } else {
                mChangeVer2();
                gravity = -1.0f;
                attention_info.field_0x0[2] = 0;
                attention_info.flags &= ~4;
                fopAcM_SetGroup(this, 0);
                fopAcM_OffStatus(this, 0);
                shape_angle.y = -0x500a;
                field_0x7e8 = 0.0f;
                current.pos.set(345.0f, -1375.0f, -1040.0f);
                shape_angle.y = 20000;
                shape_angle.z = -15000;
                setActionMode(ACT_B2_OPENING_DEMO, 0);
            }
        }
        daB_DS_Execute(this);
    }
    return step;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm cPhs__Step daB_DS_c::create() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/create__8daB_DS_cFv.s"
}
#pragma pop
#endif

/* 805DC1E8-805DC4CC 0110A8 02E4+00 1/1 0/0 0/0 .text            __ct__8daB_DS_cFv */
#ifdef NONMATCHING
// vtable ordering
daB_DS_c::daB_DS_c() {
    /* empty function */
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daB_DS_c::daB_DS_c() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/__ct__8daB_DS_cFv.s"
}
#pragma pop
#endif

#ifndef NONMATCHING

/* 805DC4CC-805DC514 01138C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 805DC514-805DC598 0113D4 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Sph::dCcD_Sph() {
extern "C" asm void __ct__8dCcD_SphFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/__ct__8dCcD_SphFv.s"
}
#pragma pop

/* 805DC598-805DC664 011458 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Sph::~dCcD_Sph() {
extern "C" asm void __dt__8dCcD_SphFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/__dt__8dCcD_SphFv.s"
}
#pragma pop

/* 805DC664-805DC6AC 011524 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 805DC6AC-805DC6F4 01156C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 805DC6F4-805DC750 0115B4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 805DC750-805DC7C0 011610 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 805DC7C0-805DC830 011680 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 805DC830-805DC834 0116F0 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}
#endif

/* 805DC834-805DC854 0116F4 0020+00 1/0 0/0 0/0 .text            daB_DS_Create__FP8daB_DS_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daB_DS_Create(daB_DS_c* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/daB_DS_Create__FP8daB_DS_c.s"
}
#pragma pop

#ifndef NONMATCHING
/* 805DC854-805DC89C 011714 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 805DC89C-805DC8E4 01175C 0048+00 2/1 0/0 0/0 .text            __dt__12daB_DS_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daB_DS_HIO_c::~daB_DS_HIO_c() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/__dt__12daB_DS_HIO_cFv.s"
}
#pragma pop

/* 805DC8E4-805DC900 0117A4 001C+00 17/17 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_805DC8E4(void* _this, int* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/func_805DC8E4.s"
}
#pragma pop

/* 805DC900-805DC91C 0117C0 001C+00 3/3 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_805DC900(void* _this, u8* param_0) {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/func_805DC900.s"
}
#pragma pop

/* 805DC91C-805DC958 0117DC 003C+00 0/0 1/0 0/0 .text            __sinit_d_a_b_ds_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_b_ds_cpp() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/__sinit_d_a_b_ds_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x805DC91C, __sinit_d_a_b_ds_cpp);
#pragma pop

/* 805DC958-805DC960 011818 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_805DC958() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/func_805DC958.s"
}
#pragma pop

/* 805DC960-805DC968 011820 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_805DC960() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/func_805DC960.s"
}
#pragma pop

/* 805DC968-805DC9A4 011828 003C+00 7/7 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/__dt__4cXyzFv.s"
}
#pragma pop

/* 805DC9A4-805DC9C0 011864 001C+00 1/1 0/0 0/0 .text            changeDemoPos0__9daPy_py_cFPC4cXyz
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void changeDemoPos0__9daPy_py_cFPC4cXyz() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/changeDemoPos0__9daPy_py_cFPC4cXyz.s"
}
#pragma pop

/* 805DC9C0-805DC9DC 011880 001C+00 1/1 0/0 0/0 .text            __as__4cXyzFRC4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void cXyz::operator=(cXyz const& param_0) {
extern "C" asm void __as__4cXyzFRC4cXyz() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/__as__4cXyzFRC4cXyz.s"
}
#pragma pop

/* 805DC9DC-805DC9F0 01189C 0014+00 2/2 0/0 0/0 .text            changeDemoMode__9daPy_py_cFUliis */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void changeDemoMode__9daPy_py_cFUliis() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/changeDemoMode__9daPy_py_cFUliis.s"
}
#pragma pop

/* 805DC9F0-805DCA0C 0118B0 001C+00 1/1 0/0 0/0 .text            set__4cXyzFRC3Vec */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void cXyz::set(Vec const& param_0) {
extern "C" asm void set__4cXyzFRC3Vec() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/set__4cXyzFRC3Vec.s"
}
#pragma pop

/* 805DCA0C-805DCA28 0118CC 001C+00 1/1 0/0 0/0 .text            __ct__4cXyzFRC4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::cXyz(cXyz const& param_0) {
extern "C" asm void __ct__4cXyzFRC4cXyz() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/__ct__4cXyzFRC4cXyz.s"
}
#pragma pop

/* 805DCA28-805DCA40 0118E8 0018+00 1/1 0/0 0/0 .text            zero__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void cXyz::zero() {
extern "C" asm void zero__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/b/d_a_b_ds/d_a_b_ds/zero__4cXyzFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 805DE2AC-805DE2B0 000844 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_805DE2AC[4];
#pragma pop

/* 805DE2B0-805DE2B4 000848 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_805DE2B0[4];
#pragma pop

/* 805DE2B4-805DE2B8 00084C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_805DE2B4[4];
#pragma pop

/* 805DE2B8-805DE2BC 000850 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_805DE2B8[4];
#pragma pop

/* 805DE2BC-805DE2C0 000854 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_805DE2BC[4];
#pragma pop

/* 805DE2C0-805DE2C4 000858 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_805DE2C0[4];
#pragma pop

/* 805DE2C4-805DE2C8 00085C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_805DE2C4[4];
#pragma pop

/* 805DE2C8-805DE2CC 000860 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_805DE2C8[4];
#pragma pop

/* 805DE2CC-805DE2D0 000864 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_805DE2CC[4];
#pragma pop

/* 805DE2D0-805DE2D4 000868 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_805DE2D0[4];
#pragma pop

/* 805DE2D4-805DE2D8 00086C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_805DE2D4[4];
#pragma pop

/* 805DE2D8-805DE2DC 000870 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_805DE2D8[4];
#pragma pop

/* 805DE2DC-805DE2E0 000874 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_805DE2DC[4];
#pragma pop

/* 805DE2E0-805DE2E4 000878 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_805DE2E0[4];
#pragma pop

/* 805DE2E4-805DE2E8 00087C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_805DE2E4[4];
#pragma pop

/* 805DE2E8-805DE2EC 000880 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_805DE2E8[4];
#pragma pop

/* 805DE2EC-805DE2F0 000884 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_805DE2EC[4];
#pragma pop

/* 805DE2F0-805DE2F4 000888 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_805DE2F0[4];
#pragma pop

/* 805DE2F4-805DE2F8 00088C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_805DE2F4[4];
#pragma pop

/* 805DE2F8-805DE2FC 000890 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_805DE2F8[4];
#pragma pop

/* 805DE2FC-805DE300 000894 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_805DE2FC[4];
#pragma pop

/* 805DE300-805DE304 000898 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_805DE300[4];
#pragma pop

/* 805DE304-805DE308 00089C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_805DE304[4];
#pragma pop

/* 805DE308-805DE30C 0008A0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_805DE308[4];
#pragma pop

/* 805DE30C-805DE310 0008A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_805DE30C[4];
#pragma pop

/* 805DD22C-805DD22C 0007D8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#endif

/* 805DD994-805DD9B4 -00001 0020+00 1/0 0/0 0/0 .data            l_daB_DS_Method */
static actor_method_class l_daB_DS_Method = {
    (process_method_func)daB_DS_Create,
    (process_method_func)daB_DS_Delete,
    (process_method_func)daB_DS_Execute,
    (process_method_func)daB_DS_IsDelete,
    (process_method_func)daB_DS_Draw,
};

/* 805DD9B4-805DD9E4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_B_DS */
extern actor_process_profile_definition g_profile_B_DS = {
    fpcLy_CURRENT_e,
    4,
    fpcPi_CURRENT_e,
    PROC_B_DS,
    &g_fpcLf_Method.mBase,
    sizeof(daB_DS_c),
    0,
    0,
    &g_fopAc_Method.base,
    0xDC,
    &l_daB_DS_Method,
    0x4040000,
    fopAc_ENEMY_e,
    fopAc_CULLBOX_CUSTOM_e,
};

#ifndef NONMATCHING
/* 805DD9E4-805DD9F0 00079C 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 805DD9F0-805DD9FC 0007A8 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 805DD9FC-805DDA08 0007B4 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 805DDA08-805DDA14 0007C0 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 805DDA14-805DDA20 0007CC 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 805DDA20-805DDA2C 0007D8 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 805DDA2C-805DDA50 0007E4 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_805DC960,
    (void*)NULL,
    (void*)NULL,
    (void*)func_805DC958,
};

/* 805DDA50-805DDA5C 000808 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 805DDA5C-805DDA68 000814 000C+00 2/2 0/0 0/0 .data            __vt__12daB_DS_HIO_c */
SECTION_DATA extern void* __vt__12daB_DS_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daB_DS_HIO_cFv,
};
#endif
