/**
 * @file d_a_b_tn.cpp
 * 
*/

#include "d/actor/d_a_b_tn.h"
#include "d/actor/d_a_nbomb.h"
#include "d/d_bomb.h"
#include "d/d_cc_uty.h"
#include "dol2asm.h"
#include "Z2AudioLib/Z2Instances.h"
#include "d/d_camera.h"
UNK_REL_DATA;
#include "f_op/f_op_actor_enemy.h"

//
// Forward References:
//

extern "C" void __ct__12daB_TN_HIO_cFv();
extern "C" void ctrlJoint__8daB_TN_cFP8J3DJointP8J3DModel();
extern "C" void JointCallBack__8daB_TN_cFP8J3DJointi();
extern "C" void calcNeckAngle__8daB_TN_cFv();
extern "C" void calcWaistAngle__8daB_TN_cFv();
extern "C" void draw__8daB_TN_cFv();
extern "C" static void daB_TN_Draw__FP8daB_TN_c();
extern "C" void setBreakPart__8daB_TN_cFi();
extern "C" void setBreakHeadPart__8daB_TN_cFi();
extern "C" void setPartLandEffect__8daB_TN_cFii();
extern "C" void calcShieldMove__8daB_TN_cFv();
extern "C" void calcSwordMoveA__8daB_TN_cFv();
extern "C" void calcSwordMoveB__8daB_TN_cFv();
extern "C" void calcOtherPartMove__8daB_TN_cFi();
extern "C" void calcPartMove__8daB_TN_cFv();
extern "C" void setBck__8daB_TN_cFiUcff();
extern "C" void checkBck__8daB_TN_cFi();
extern "C" void setActionMode__8daB_TN_cFii();
extern "C" void setSwordAtBit__8daB_TN_cFi();
extern "C" void setSwordAtBreak__8daB_TN_cFi();
extern "C" void setBodyShield__8daB_TN_cFv();
extern "C" void checkNormalAttackAble__8daB_TN_cFv();
extern "C" void getCutType__8daB_TN_cFv();
extern "C" void setDamage__8daB_TN_cFP8dCcD_Sphi();
extern "C" void setShieldEffect__8daB_TN_cFP8dCcD_Sph();
extern "C" void damage_check__8daB_TN_cFv();
extern "C" void __as__8dCcD_SphFRC8dCcD_Sph();
extern "C" void __as__12dCcD_GObjInfFRC12dCcD_GObjInf();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void checkMoveArea__8daB_TN_cFv();
extern "C" void checkMoveAngle__8daB_TN_cFv();
extern "C" void setAttackBlurEffect__8daB_TN_cFi();
extern "C" void setArmorBreakEffect__8daB_TN_cFi();
extern "C" static void s_obj_sub__FPvPv();
extern "C" void demo_skip__8daB_TN_cFi();
extern "C" void DemoSkipCallBack__8daB_TN_cFPvi();
extern "C" void executeRoomDemo__8daB_TN_cFv();
extern "C" void executeOpening__8daB_TN_cFv();
extern "C" void executeWaitH__8daB_TN_cFv();
extern "C" void setAwaitSound__8daB_TN_cFv();
extern "C" void executeChaseH__8daB_TN_cFv();
extern "C" void checkStartAttackH__8daB_TN_cFv();
extern "C" void executeAttackH__8daB_TN_cFv();
extern "C" void executeAttackShieldH__8daB_TN_cFv();
extern "C" void executeGuardH__8daB_TN_cFv();
extern "C" void executeDamageH__8daB_TN_cFv();
extern "C" void executeChangeDemo__8daB_TN_cFv();
extern "C" void executeZakoChangeDemo__8daB_TN_cFv();
extern "C" void setWalkDir__8daB_TN_cFv();
extern "C" void initChaseL__8daB_TN_cFi();
extern "C" void checkAttackAble__8daB_TN_cFv();
extern "C" void checkNextMove__8daB_TN_cFv();
extern "C" void executeChaseL__8daB_TN_cFv();
extern "C" void executeAttackL__8daB_TN_cFv();
extern "C" void executeAttackShieldL__8daB_TN_cFv();
extern "C" void executeGuardL__8daB_TN_cFv();
extern "C" void executeDamageL__8daB_TN_cFv();
extern "C" void executeYoroke__8daB_TN_cFv();
extern "C" void executeEnding__8daB_TN_cFv();
extern "C" void executeZakoEnding__8daB_TN_cFv();
extern "C" void action__8daB_TN_cFv();
extern "C" void mtx_set__8daB_TN_cFv();
extern "C" void cc_set__8daB_TN_cFv();
extern "C" void execute__8daB_TN_cFv();
extern "C" static void daB_TN_Execute__FP8daB_TN_c();
extern "C" static bool daB_TN_IsDelete__FP8daB_TN_c();
extern "C" void _delete__8daB_TN_cFv();
extern "C" static void daB_TN_Delete__FP8daB_TN_c();
extern "C" void CreateHeap__8daB_TN_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daB_TN_cFv();
extern "C" void __ct__8daB_TN_cFv();
extern "C" void __ct__9dCcD_SttsFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__9dCcD_SttsFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __ct__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" static void daB_TN_Create__FP8daB_TN_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daB_TN_HIO_cFv();
extern "C" void __sinit_d_a_b_tn_cpp();
extern "C" static void func_8062E16C();
extern "C" static void func_8062E174();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" void checkNowWolf__9daPy_py_cFv();
extern "C" extern char const* const d_a_b_tn__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_ZXYrotM__FPA4_fsss();
extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void mDoMtx_MtxToRot__FPA4_CfP5csXyz();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
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
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcM_IsCreating__FUi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_onOneZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void checkInsectBombMove__7dBomb_cFP10fopAc_ac_c();
extern "C" void onDungeonItem__12dSv_memBit_cFi();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void isEventBit__11dSv_event_cCFUs();
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
setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetGroundUpY__9dBgS_AcchFf();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CpsFRC11dCcD_SrcCps();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void getThrowBoomerangActor__9daPy_py_cFv();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void dCam_getBody__Fv();
extern "C" void Eye__9dCamera_cFv();
extern "C" void Center__9dCamera_cFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_custom_colset__FUcUcf();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void GetAc__8cCcD_ObjFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void __ct__8cM3dGCpsFv();
extern "C" void Set__8cM3dGCpsFRC4cXyzRC4cXyzf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcPos2__FP4cXyzRC4cXyzff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
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
extern "C" void setLinkSearch__15Z2CreatureEnemyFb();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __copy();
extern "C" void __construct_array();
extern "C" void _savegpr_18();
extern "C" void _savegpr_19();
extern "C" void _savegpr_21();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_18();
extern "C" void _restgpr_19();
extern "C" void _restgpr_21();
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
extern "C" extern void* __vt__8dCcD_Cps[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CpsAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

namespace {
/* 8062E93C-8062E97C 000038 0040+00 0/1 0/0 0/0 .data            cc_tt_src__22@unnamed@d_a_b_tn_cpp@
 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_8062E93C[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xD8, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x75, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 8062E97C-8062E9BC 000078 0040+00 0/1 0/0 0/0 .data cc_tt_src2__22@unnamed@d_a_b_tn_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_8062E97C[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0xFB, 0xFD, 0xED, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 8062E9BC-8062E9FC 0000B8 0040+00 0/1 0/0 0/0 .data cc_bomb_src__22@unnamed@d_a_b_tn_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_8062E9BC[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x45, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 8062E9FC-8062EA3C 0000F8 0040+00 0/1 0/0 0/0 .data cc_tt_at_src__22@unnamed@d_a_b_tn_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_8062E9FC[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x09, 0x00, 0x09, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 8062EA3C-8062EA88 000138 004C+00 0/1 0/0 0/0 .data cc_tt_at_cps_src__22@unnamed@d_a_b_tn_cpp@
 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_8062EA3C[76] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x75, 0x09, 0x00, 0x09, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
};
#pragma pop

/* 8062EA88-8062EAC8 000184 0040+00 0/1 0/0 0/0 .data cc_tt_tate_src__22@unnamed@d_a_b_tn_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_8062EA88[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0xD8, 0xFB, 0xFD, 0xFF, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x75, 0x09, 0x00, 0x09, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x03, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 8062EAC8-8062EB08 0001C4 0040+00 0/1 0/0 0/0 .data cc_part_src__22@unnamed@d_a_b_tn_cpp@ */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_8062EAC8[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x75, 0x09, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
};
#pragma pop

/* 8062EB08-8062EB18 000204 0010+00 0/1 0/0 0/0 .data tn_model_brk_idx__22@unnamed@d_a_b_tn_cpp@
 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_8062EB08[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x02, 0xFF, 0xFF, 0xFF,
};
#pragma pop

/* 8062EB18-8062EB28 000214 0010+00 0/1 0/0 0/0 .data tn_model_brk_idx2__22@unnamed@d_a_b_tn_cpp@
 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_8062EB18[16] = {
    0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF,
};
#pragma pop

/* 8062EB28-8062EBA8 000224 0080+00 0/1 0/0 0/0 .data tn_part_model_id__22@unnamed@d_a_b_tn_cpp@
 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 data_8062EB28[128] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x12,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x14,
};
#pragma pop

    /* 8062EBA8-8062EBE8 0002A4 0040+00 2/2 0/0 0/0 .data tn_part_joint__22@unnamed@d_a_b_tn_cpp@ */
    static int tn_part_joint[16] = {
        8, 14, 3, 3, 5, 5, 11, 17, 26, 
        25, 27, 28, 9, 27, 27, 27
    };

    /* 8062EBE8-8062EC28 0002E4 0040+00 1/2 0/0 0/0 .data ground_y_part__22@unnamed@d_a_b_tn_cpp@ */
    static float ground_y_part[16] = {
    15.0f, 15.0f, 0.0f, 0.0f, 23.0f, 12.0f, 25.0f, 25.0f,
    -5.0f, 5.0f, 8.0f, 5.0f, 12.0f, 7.0f, 0.0f, 0.0f,
    };
}

/* 8062ECD0-8062ECF0 -00001 0020+00 1/1 0/0 0/0 .data            @4659 */
SECTION_DATA static void* lit_4659[8] = {
    (void*)(((char*)calcOtherPartMove__8daB_TN_cFi) + 0x6FC),
    (void*)(((char*)calcOtherPartMove__8daB_TN_cFi) + 0x6FC),
    (void*)(((char*)calcOtherPartMove__8daB_TN_cFi) + 0x68),
    (void*)(((char*)calcOtherPartMove__8daB_TN_cFi) + 0x264),
    (void*)(((char*)calcOtherPartMove__8daB_TN_cFi) + 0x4B4),
    (void*)(((char*)calcOtherPartMove__8daB_TN_cFi) + 0x5F4),
    (void*)(((char*)calcOtherPartMove__8daB_TN_cFi) + 0x65C),
    (void*)(((char*)calcOtherPartMove__8daB_TN_cFi) + 0x6FC),
};

/* 8062ECF0-8062ED8C -00001 009C+00 1/1 0/0 0/0 .data            @5007 */
SECTION_DATA static void* lit_5007[39] = {
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xA8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xB0),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xA8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xB8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xA8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xA8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0x78),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0x98),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0x98),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0x78),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0x90),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0x90),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xA0),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xB0),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC0),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xC8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xB8),
    (void*)(((char*)getCutType__8daB_TN_cFv) + 0xA8),
};

/* 8062EDE0-8062EE34 -00001 0054+00 1/1 0/0 0/0 .data            @6815 */
SECTION_DATA static void* lit_6815[21] = {
    (void*)(((char*)executeOpening__8daB_TN_cFv) + 0x6C),
    (void*)(((char*)executeOpening__8daB_TN_cFv) + 0x94),
    (void*)(((char*)executeOpening__8daB_TN_cFv) + 0x2F4),
    (void*)(((char*)executeOpening__8daB_TN_cFv) + 0x47C),
    (void*)(((char*)executeOpening__8daB_TN_cFv) + 0x538),
    (void*)(((char*)executeOpening__8daB_TN_cFv) + 0xD3C),
    (void*)(((char*)executeOpening__8daB_TN_cFv) + 0xD3C),
    (void*)(((char*)executeOpening__8daB_TN_cFv) + 0xD3C),
    (void*)(((char*)executeOpening__8daB_TN_cFv) + 0xD3C),
    (void*)(((char*)executeOpening__8daB_TN_cFv) + 0xD3C),
    (void*)(((char*)executeOpening__8daB_TN_cFv) + 0x718),
    (void*)(((char*)executeOpening__8daB_TN_cFv) + 0xD3C),
    (void*)(((char*)executeOpening__8daB_TN_cFv) + 0xD3C),
    (void*)(((char*)executeOpening__8daB_TN_cFv) + 0xD3C),
    (void*)(((char*)executeOpening__8daB_TN_cFv) + 0x7D4),
    (void*)(((char*)executeOpening__8daB_TN_cFv) + 0xD3C),
    (void*)(((char*)executeOpening__8daB_TN_cFv) + 0xD3C),
    (void*)(((char*)executeOpening__8daB_TN_cFv) + 0xB78),
    (void*)(((char*)executeOpening__8daB_TN_cFv) + 0xD3C),
    (void*)(((char*)executeOpening__8daB_TN_cFv) + 0xD3C),
    (void*)(((char*)executeOpening__8daB_TN_cFv) + 0xBF8),
};

/* 8062EE34-8062EE7C -00001 0048+00 1/1 0/0 0/0 .data            @8051 */
SECTION_DATA static void* lit_8051[18] = {
    (void*)(((char*)initChaseL__8daB_TN_cFi) + 0x308),
    (void*)(((char*)initChaseL__8daB_TN_cFi) + 0x308),
    (void*)(((char*)initChaseL__8daB_TN_cFi) + 0x50),
    (void*)(((char*)initChaseL__8daB_TN_cFi) + 0x70),
    (void*)(((char*)initChaseL__8daB_TN_cFi) + 0x90),
    (void*)(((char*)initChaseL__8daB_TN_cFi) + 0xF8),
    (void*)(((char*)initChaseL__8daB_TN_cFi) + 0x160),
    (void*)(((char*)initChaseL__8daB_TN_cFi) + 0x178),
    (void*)(((char*)initChaseL__8daB_TN_cFi) + 0x1B4),
    (void*)(((char*)initChaseL__8daB_TN_cFi) + 0x1D0),
    (void*)(((char*)initChaseL__8daB_TN_cFi) + 0x214),
    (void*)(((char*)initChaseL__8daB_TN_cFi) + 0x214),
    (void*)(((char*)initChaseL__8daB_TN_cFi) + 0x230),
    (void*)(((char*)initChaseL__8daB_TN_cFi) + 0x27C),
    (void*)(((char*)initChaseL__8daB_TN_cFi) + 0x27C),
    (void*)(((char*)initChaseL__8daB_TN_cFi) + 0x298),
    (void*)(((char*)initChaseL__8daB_TN_cFi) + 0x2E4),
    (void*)(((char*)initChaseL__8daB_TN_cFi) + 0x1B4),
};

/* 8062EE7C-8062EEC4 -00001 0048+00 1/1 0/0 0/0 .data            @8593 */
SECTION_DATA static void* lit_8593[18] = {
    (void*)(((char*)executeChaseL__8daB_TN_cFv) + 0x98),
    (void*)(((char*)executeChaseL__8daB_TN_cFv) + 0xA0),
    (void*)(((char*)executeChaseL__8daB_TN_cFv) + 0x31C),
    (void*)(((char*)executeChaseL__8daB_TN_cFv) + 0x148),
    (void*)(((char*)executeChaseL__8daB_TN_cFv) + 0x338),
    (void*)(((char*)executeChaseL__8daB_TN_cFv) + 0x474),
    (void*)(((char*)executeChaseL__8daB_TN_cFv) + 0x5B0),
    (void*)(((char*)executeChaseL__8daB_TN_cFv) + 0x6C4),
    (void*)(((char*)executeChaseL__8daB_TN_cFv) + 0x7B8),
    (void*)(((char*)executeChaseL__8daB_TN_cFv) + 0x958),
    (void*)(((char*)executeChaseL__8daB_TN_cFv) + 0x9EC),
    (void*)(((char*)executeChaseL__8daB_TN_cFv) + 0x9EC),
    (void*)(((char*)executeChaseL__8daB_TN_cFv) + 0xB68),
    (void*)(((char*)executeChaseL__8daB_TN_cFv) + 0x9EC),
    (void*)(((char*)executeChaseL__8daB_TN_cFv) + 0x9EC),
    (void*)(((char*)executeChaseL__8daB_TN_cFv) + 0xB68),
    (void*)(((char*)executeChaseL__8daB_TN_cFv) + 0x258),
    (void*)(((char*)executeChaseL__8daB_TN_cFv) + 0x7B8),
};

/* 8062EEC4-8062EF04 -00001 0040+00 1/1 0/0 0/0 .data            @9574 */
SECTION_DATA static void* lit_9574[16] = {
    (void*)(((char*)action__8daB_TN_cFv) + 0x10C), (void*)(((char*)action__8daB_TN_cFv) + 0x11C),
    (void*)(((char*)action__8daB_TN_cFv) + 0x12C), (void*)(((char*)action__8daB_TN_cFv) + 0x148),
    (void*)(((char*)action__8daB_TN_cFv) + 0x154), (void*)(((char*)action__8daB_TN_cFv) + 0x160),
    (void*)(((char*)action__8daB_TN_cFv) + 0x16C), (void*)(((char*)action__8daB_TN_cFv) + 0x178),
    (void*)(((char*)action__8daB_TN_cFv) + 0x184), (void*)(((char*)action__8daB_TN_cFv) + 0x1A8),
    (void*)(((char*)action__8daB_TN_cFv) + 0x1B4), (void*)(((char*)action__8daB_TN_cFv) + 0x1C0),
    (void*)(((char*)action__8daB_TN_cFv) + 0x1CC), (void*)(((char*)action__8daB_TN_cFv) + 0x1D8),
    (void*)(((char*)action__8daB_TN_cFv) + 0x1F0), (void*)(((char*)action__8daB_TN_cFv) + 0x1E4),
};

/* 8062EF04-8062EF10 000600 000C+00 0/1 0/0 0/0 .data            tn2_brk_index$10040 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 tn2_brk_index[12] = {
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x1B,
};
#pragma pop

/* 8062EF60-8062EF6C 00065C 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8062EF6C-8062EF78 000668 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8062EF78-8062EF84 000674 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8062EF84-8062EFA8 000680 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8062E174,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8062E16C,
};

/* 8062EFA8-8062EFB4 0006A4 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8062EFB4-8062EFC0 0006B0 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 8062EFC0-8062EFCC 0006BC 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8062EFCC-8062EFD8 0006C8 000C+00 2/2 0/0 0/0 .data            __vt__12daB_TN_HIO_c */
SECTION_DATA extern void* __vt__12daB_TN_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daB_TN_HIO_cFv,
};

/* 8061EBEC-8061EC58 0000EC 006C+00 1/1 0/0 0/0 .text            __ct__12daB_TN_HIO_cFv */
daB_TN_HIO_c::daB_TN_HIO_c() {
    field_0x4 = -1;
    field_0x8 = 1.3f;
    field_0xc = 40.0f;
    field_0x1c = 150.0f;
    field_0x20 = 250.0f;
    field_0x14 = 210.0f;
    field_0x18 = 350.0f;
    field_0x10 = 120.0f;
    field_0x24 = 360.0f;
    field_0x28 = 0.0f;
    field_0x2c = 0.0f;
}

/* 8061EC58-8061ED10 000158 00B8+00 1/1 0/0 0/0 .text ctrlJoint__8daB_TN_cFP8J3DJointP8J3DModel */
int daB_TN_c::ctrlJoint(J3DJoint* i_joint, J3DModel* model) {
    int mJntNo = i_joint->getJntNo();
    mDoMtx_stack_c::copy(model->getAnmMtx(mJntNo));

    if (mJntNo == 5) {
        mDoMtx_stack_c::XrotM(field_0xa96);
    } else if (mJntNo == 1) {
        mDoMtx_stack_c::XrotM(field_0xa98);
    }

    model->setAnmMtx(mJntNo, mDoMtx_stack_c::get());
    PSMTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    return 1;
}

/* 8061ED10-8061ED5C 000210 004C+00 1/1 0/0 0/0 .text JointCallBack__8daB_TN_cFP8J3DJointi */
int daB_TN_c::JointCallBack(J3DJoint* i_joint, int param_2) {
    // Fakematch???
    if (!(int)i_joint) {
        J3DModel* model = j3dSys.getModel();
        daB_TN_c* mUserArea = (daB_TN_c*)model->getUserArea();
        if (mUserArea) {
            mUserArea->ctrlJoint((J3DJoint*)this, model);
        }
    }

    return 1;
}

/* 8061ED5C-8061EE14 00025C 00B8+00 1/1 0/0 0/0 .text            calcNeckAngle__8daB_TN_cFv */
void daB_TN_c::calcNeckAngle() {
    csXyz acStack_18;
    s16 sVar1 = 0;

    if (field_0xa93) {
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(5));
        mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &acStack_18);

        sVar1 = fopAcM_searchPlayerAngleY(this) - (acStack_18.y + 0x4000);
        if (sVar1 > 0x3000) {
            sVar1 = 0x3000;
        }

        if (sVar1 < -0x3000) {
            sVar1 = -0x3000;
        }
    }

    cLib_addCalcAngleS2(&field_0xa96, sVar1, 4, 0x1000);
}

/* 8061EE14-8061EEC8 000314 00B4+00 1/1 0/0 0/0 .text            calcWaistAngle__8daB_TN_cFv */
void daB_TN_c::calcWaistAngle() {
    csXyz acStack_18;
    s16 sVar1 = 0;

    if (field_0xa94) {
        mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(1));
        mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &acStack_18);

        sVar1 = fopAcM_searchPlayerAngleY(this) - shape_angle.y;
        if (sVar1 > 0x3000) {
            sVar1 = 0x3000;
        }

        if (sVar1 < -0x3000) {
            sVar1 = -0x3000;
        }
    }

    cLib_addCalcAngleS2(&field_0xa98, sVar1, 4, 0x1000);
}

UNK_REL_BSS

/* 8062F01D 0003+00 data_8062F01D None */
static u8 struct_8062F01C;

/* 8062F020-8062F02C 000048 000C+00 0/1 0/0 0/0 .bss             @3936 */
static u8 lit_3936[12];

/* 8062F02C-8062F05C 000054 0030+00 9/11 0/0 0/0 .bss             l_HIO */
static daB_TN_HIO_c l_HIO;

/* 8061EEC8-8061F1E0 0003C8 0318+00 1/1 0/0 0/0 .text            draw__8daB_TN_cFv */
int daB_TN_c::draw() {
    J3DModel* model = mpModelMorf2->getModel();
    if (field_0xa9e != 0 || field_0xaac != 0) {
        return 1;
    }

    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);
    J3DModelData* modelData = model->getModelData();
    if (field_0xaa5 == 1) {
        mBrkAnm->entry(modelData);
    }

    if (field_0x728) {
        for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
            J3DMaterial* mMatNodePtr = modelData->getMaterialNodePointer(i);
            J3DGXColorS10* mColor = mMatNodePtr->getTevColor(0);
            mColor->r = field_0x728;
            mColor = mMatNodePtr->getTevColor(0);
            mColor->g = field_0x728;
            mColor = mMatNodePtr->getTevColor(0);
            mColor->b = field_0x728;
        }
    }

    mpModelMorf2->entryDL();
    cXyz sp48(current.pos.x, current.pos.y + 100.0f, current.pos.z);
    mShadowKey = dComIfGd_setShadow(mShadowKey, 1, model, &sp48, 1000.0f, 0.0f,
        current.pos.y, mAcch.GetGroundH(), mAcch.m_gnd, &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());

    for (int i = 0; i < 16; i++) {
        if (field_0x9fc[i] != 7) {
            if (i == 15) {
                model = mpModelMorf1->getModel();
                g_env_light.setLightTevColorType_MAJI(model, &tevStr);
                mpModelMorf1->entryDL();
            } else {
                model = mModels[i];
                g_env_light.setLightTevColorType_MAJI(model, &tevStr);
            
                if (field_0xaa5 == 1 && mBrkAnms[i]) {
                    modelData = model->getModelData();
                    mBrkAnms[i]->entry(modelData);
                }
                mDoExt_modelUpdateDL(model);
            }

            if (field_0x9fc[i] == 0) {
                dComIfGd_addRealShadow(mShadowKey, model);
            }
        }
    }

    if (field_0xa90 != 0) {
        g_env_light.setLightTevColorType_MAJI(field_0x648, &tevStr);
        modelData = field_0x648->getModelData();
        J3DGXColor* mKColor = modelData->getMaterialNodePointer(0)->getTevKColor(3);
        mKColor->a = l_HIO.field_0xc;
        mDoExt_modelUpdateDL(field_0x648);
    }

    return 1;
}

/* 8061F1E0-8061F200 0006E0 0020+00 1/0 0/0 0/0 .text            daB_TN_Draw__FP8daB_TN_c */
static int daB_TN_Draw(daB_TN_c* i_this) {
    return i_this->draw();
}

/* 8061F200-8061F31C 000700 011C+00 3/3 0/0 0/0 .text            setBreakPart__8daB_TN_cFi */
void daB_TN_c::setBreakPart(int param_1) {
    // NONMATCHING
    static int break_part_no[13] = {
        6, 11, 8, 1, 10, 0, 9, 7, 4, 5, 12, 2, 3,
    };

    if (param_1 >= 12) {
        param_1 = 13;
    }

    int iVar1 = 0;
    for (int i = 0; i < 13; i++) {
        if (field_0x9fc[break_part_no[i]] != 0) {
            iVar1++;
        }
    }

    iVar1 = param_1 - iVar1;
    if (iVar1 != 0) {
        for (int i = 0; i <= 12; i++) {
            if (field_0x9fc[break_part_no[i]] == 0) {
                field_0x9fc[break_part_no[i]] = 2;
                mSound.startCreatureSound(Z2SE_EN_TN_BRK_ARMOR, 0, -1);

                if (field_0xaa5 == 1 && break_part_no[i] == 4) {
                    field_0xa78++;
                    iVar1++;
                }
                
                iVar1--;

                if (iVar1 == 0) {
                    return;
                }
            }
        }
    }
}

/* 8061F31C-8061F3D0 00081C 00B4+00 1/1 0/0 0/0 .text            setBreakHeadPart__8daB_TN_cFi */
void daB_TN_c::setBreakHeadPart(int param_1) {
    // NONMATCHING
    static int break_part_no2[13] = {
        4, 5, 7, 6, 11, 8, 1, 10, 0, 9, 12, 2, 3,
    };

    if (param_1 >= 12) {
        param_1 = 13;
    }

    int iVar1 = 0;
    for (int i = 0; i < 13; i++) {
        if (field_0x9fc[break_part_no2[i]] != 0) {
            iVar1++;
        }
    }

    iVar1 = param_1 - iVar1;
    if (iVar1 != 0) {
        for (int i = 0; i <= 12; i++) {
            if (field_0x9fc[break_part_no2[i]] == 0) {
                field_0x9fc[break_part_no2[i]] = 2;

                if (break_part_no2[i] == 4) {
                    field_0xa78++;
                    iVar1++;
                }
                
                iVar1--;

                if (iVar1 == 0) {
                    return;
                }
            }
        }
    }
}

/* 8061F3D0-8061F520 0008D0 0150+00 4/4 0/0 0/0 .text            setPartLandEffect__8daB_TN_cFii */
void daB_TN_c::setPartLandEffect(int param_1, int param_2) {
    // NONMATCHING
    static int break_part_vib[16] = {
        2, 2, 2, 2, 2, 1, 1, 1, 1,
        1, 1, 1, 3, 2, 0xFF, 2,
    };

    if (param_2 == 0) {
        csXyz cStack_30(0, 0, 0);
        cXyz sp1c(l_HIO.field_0x8, l_HIO.field_0x8, l_HIO.field_0x8);
        dComIfGp_particle_setPolyColor(0x87ea, mAcch.m_gnd, &field_0x75c[param_1], 
            &tevStr, &cStack_30, &sp1c, 0, NULL, -1, NULL);
        dComIfGp_particle_set(0x880b, &field_0x75c[param_1], &tevStr, &cStack_30, &sp1c);
    }

    int mVibMode = break_part_vib[param_1];
    if (mVibMode != 0xff) {
        dComIfGp_getVibration().StartShock(mVibMode, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
    }
}

/* 8062F05C-8062F068 000084 000C+00 0/1 0/0 0/0 .bss             @3949 */
#pragma push
#pragma force_active on
static u8 lit_3949[12];
#pragma pop

/* 8062F068-8062F074 000090 000C+00 0/1 0/0 0/0 .bss             @3950 */
#pragma push
#pragma force_active on
static u8 lit_3950[12];
#pragma pop

/* 8062F074-8062F080 00009C 000C+00 0/1 0/0 0/0 .bss             @3951 */
#pragma push
#pragma force_active on
static u8 lit_3951[12];
#pragma pop

/* 8062F080-8062F08C 0000A8 000C+00 0/1 0/0 0/0 .bss             @3952 */
#pragma push
#pragma force_active on
static u8 lit_3952[12];
#pragma pop

/* 8062F08C-8062F098 0000B4 000C+00 0/1 0/0 0/0 .bss             @3953 */
#pragma push
#pragma force_active on
static u8 lit_3953[12];
#pragma pop

/* 8062F098-8062F0A4 0000C0 000C+00 0/1 0/0 0/0 .bss             @3954 */
#pragma push
#pragma force_active on
static u8 lit_3954[12];
#pragma pop

/* 8062F0A4-8062F0B0 0000CC 000C+00 0/1 0/0 0/0 .bss             @3955 */
#pragma push
#pragma force_active on
static u8 lit_3955[12];
#pragma pop

/* 8062F0B0-8062F0BC 0000D8 000C+00 0/1 0/0 0/0 .bss             @3956 */
#pragma push
#pragma force_active on
static u8 lit_3956[12];
#pragma pop

/* 8062F0BC-8062F0C8 0000E4 000C+00 0/1 0/0 0/0 .bss             @3957 */
#pragma push
#pragma force_active on
static u8 lit_3957[12];
#pragma pop

/* 8062F0C8-8062F0D4 0000F0 000C+00 0/1 0/0 0/0 .bss             @3958 */
#pragma push
#pragma force_active on
static u8 lit_3958[12];
#pragma pop

/* 8062F0D4-8062F0E0 0000FC 000C+00 0/1 0/0 0/0 .bss             @3959 */
#pragma push
#pragma force_active on
static u8 lit_3959[12];
#pragma pop

/* 8062F0E0-8062F0EC 000108 000C+00 0/1 0/0 0/0 .bss             @3960 */
#pragma push
#pragma force_active on
static u8 lit_3960[12];
#pragma pop

/* 8062F0EC-8062F0F8 000114 000C+00 0/1 0/0 0/0 .bss             @3961 */
#pragma push
#pragma force_active on
static u8 lit_3961[12];
#pragma pop

/* 8062F0F8-8062F104 000120 000C+00 0/1 0/0 0/0 .bss             @3962 */
#pragma push
#pragma force_active on
static u8 lit_3962[12];
#pragma pop

/* 8062F104-8062F110 00012C 000C+00 0/1 0/0 0/0 .bss             @3963 */
#pragma push
#pragma force_active on
static u8 lit_3963[12];
#pragma pop

/* 8062F110-8062F11C 000138 000C+00 0/1 0/0 0/0 .bss             @3964 */
#pragma push
#pragma force_active on
static u8 lit_3964[12];
#pragma pop

namespace {
    /* 8062F11C-8062F1DC 000144 00C0+00 1/2 0/0 0/0 .bss offset_part__22@unnamed@d_a_b_tn_cpp@ */
    static cXyz offset_part[16];
}

/* 8062F1DC-8062F1E8 000204 000C+00 0/1 0/0 0/0 .bss             @3965 */
#pragma push
#pragma force_active on
static u8 lit_3965[12];
#pragma pop

/* 8062F1E8-8062F1F4 000210 000C+00 0/1 0/0 0/0 .bss             @3966 */
#pragma push
#pragma force_active on
static u8 lit_3966[12];
#pragma pop

/* 8062F1F4-8062F200 00021C 000C+00 0/1 0/0 0/0 .bss             @3967 */
#pragma push
#pragma force_active on
static u8 lit_3967[12];
#pragma pop

/* 8062F200-8062F20C 000228 000C+00 0/1 0/0 0/0 .bss             @3968 */
#pragma push
#pragma force_active on
static u8 lit_3968[12];
#pragma pop

/* 8062F20C-8062F218 000234 000C+00 0/1 0/0 0/0 .bss             @3969 */
#pragma push
#pragma force_active on
static u8 lit_3969[12];
#pragma pop

/* 8062F218-8062F224 000240 000C+00 0/1 0/0 0/0 .bss             @3970 */
#pragma push
#pragma force_active on
static u8 lit_3970[12];
#pragma pop

/* 8062F224-8062F230 00024C 000C+00 0/1 0/0 0/0 .bss             @3971 */
#pragma push
#pragma force_active on
static u8 lit_3971[12];
#pragma pop

/* 8062F230-8062F23C 000258 000C+00 0/1 0/0 0/0 .bss             @3972 */
#pragma push
#pragma force_active on
static u8 lit_3972[12];
#pragma pop

/* 8062F23C-8062F248 000264 000C+00 0/1 0/0 0/0 .bss             @3973 */
#pragma push
#pragma force_active on
static u8 lit_3973[12];
#pragma pop

/* 8062F248-8062F254 000270 000C+00 0/1 0/0 0/0 .bss             @3974 */
#pragma push
#pragma force_active on
static u8 lit_3974[12];
#pragma pop

/* 8062F254-8062F260 00027C 000C+00 0/1 0/0 0/0 .bss             @3975 */
#pragma push
#pragma force_active on
static u8 lit_3975[12];
#pragma pop

/* 8062F260-8062F26C 000288 000C+00 0/1 0/0 0/0 .bss             @3976 */
#pragma push
#pragma force_active on
static u8 lit_3976[12];
#pragma pop

/* 8062F26C-8062F278 000294 000C+00 0/1 0/0 0/0 .bss             @3977 */
#pragma push
#pragma force_active on
static u8 lit_3977[12];
#pragma pop

/* 8062F278-8062F284 0002A0 000C+00 0/1 0/0 0/0 .bss             @3978 */
#pragma push
#pragma force_active on
static u8 lit_3978[12];
#pragma pop

/* 8062F284-8062F290 0002AC 000C+00 0/1 0/0 0/0 .bss             @3979 */
#pragma push
#pragma force_active on
static u8 lit_3979[12];
#pragma pop

/* 8062F290-8062F29C 0002B8 000C+00 0/1 0/0 0/0 .bss             @3980 */
#pragma push
#pragma force_active on
static u8 lit_3980[12];
#pragma pop

namespace {
    /* 8062F29C-8062F2FC 0002C4 0060+00 4/5 0/0 0/0 .bss ground_angle_part__22@unnamed@d_a_b_tn_cpp@ */
    static csXyz ground_angle_part[16];
}

/* 8061F520-8061F9F4 000A20 04D4+00 1/1 0/0 0/0 .text            calcShieldMove__8daB_TN_cFv */
void daB_TN_c::calcShieldMove() {
    s16 sVar2;
    int iVar1;
    
    switch (field_0x9fc[12]) {
        case 2:
            mDoMtx_stack_c::copy(mModels[12]->getBaseTRMtx());
            mDoMtx_stack_c::multVecZero(&field_0x75c[12]);
            field_0x81c[12] = field_0x75c[12];
            mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &field_0x99c[12]);

            sVar2 = shape_angle.y + 0x4000;
            field_0xa5c = 0x1800;
            field_0x8dc[12].set((cM_rndF(5.0f) + 10.0f) * cM_ssin(sVar2), cM_rndF(7.0f) + 35.0f, (cM_rndF(5.0f) + 10.0f) * cM_scos(sVar2));
            field_0x9fc[12] = 3;
            break;

        case 3:
            field_0x10fc[12].SetGroundUpY(ground_y_part[12] + 55.0f);
            cLib_chaseF(&field_0x8dc[12].y, -70.0f, 5.0f);
            cLib_chaseAngleS(&field_0x99c[12].x, ground_angle_part[12].x, 0x400);
            cLib_chaseAngleS(&field_0x99c[12].z, field_0xa5c + ground_angle_part[12].z, 0x800);

            if (field_0x10fc[12].ChkGroundHit()) {
                Z2GetAudioMgr()->seStart(Z2SE_EN_TN_SHIELD_BND, &field_0x75c[12], 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                s16 sVar1 = cM_rndFX(32768.0f);
                field_0x8dc[12].set((cM_rndF(2.0f) + 5.0f) * cM_ssin(sVar1), cM_rndF(5.0f) + 18.0f, (cM_rndF(2.0f) + 5.0f) * cM_scos(sVar1));
                field_0x9fc[12] = 4;
                setPartLandEffect(12, 0);
            }
            break;

        case 4:
        case 5:
            field_0x10fc[12].SetGroundUpY(ground_y_part[12] + cM_ssin(field_0xa5c) * 60.0f);
            cLib_chaseAngleS(&field_0x99c[12].x, ground_angle_part[12].x, 0x400);
            cLib_chaseAngleS(&field_0x99c[12].z, ground_angle_part[12].z, 0x400);
            cLib_chaseAngleS(&field_0xa5c, 0, 0x60);
            field_0xa3c[12] += 0x1800;
            field_0x99c[12].x += (int)(field_0xa5c * cM_ssin(field_0xa3c[12]));
            field_0x99c[12].z += (int)(field_0xa5c * cM_scos(field_0xa3c[12]));
            cLib_chaseF(&field_0x8dc[12].y, -70.0f, 5.0f);

            if (field_0x9fc[12] == 4 && field_0x10fc[12].ChkGroundHit()) {
                if (field_0xaa5 == 0) {
                    field_0x9fc[12] = 5;
                    field_0xa3c[12] = 0;
                    field_0x8dc[12].set(0.0f, 0.0f, 0.0f);
                    setPartLandEffect(12, 1);
                } else {
                    fopAcM_createDisappear(this, &field_0x75c[12], 5, 0, 0xff);
                    field_0x9fc[12] = 7;
                }
            }
            break;

        case 6:
            sVar2 = shape_angle.y + 0x4000;
            field_0x8dc[12].set((cM_rndF(2.0f) + 5.0f) * cM_ssin(sVar2), cM_rndF(5.0f) + 18.0f, (cM_rndF(2.0f) + 5.0f) * cM_scos(sVar2));
            field_0x9fc[12] = 4;
            field_0xa5c = 0x1800;
            break;
    }
}

/* 8061F9F4-8061FD7C 000EF4 0388+00 1/1 0/0 0/0 .text            calcSwordMoveA__8daB_TN_cFv */
void daB_TN_c::calcSwordMoveA() {
    // NONMATCHING
    
    switch (field_0x9fc[13]) {
        case 2:
            mDoMtx_stack_c::copy(mModels[13]->getBaseTRMtx());
            mDoMtx_stack_c::multVecZero(&field_0x75c[13]);
            field_0x81c[13] = field_0x75c[13];
            mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &field_0x99c[13]);

            if (field_0xaa5 == 0) {
                field_0x8dc[13].set(0.0f, 0.0f, 70.0f);
            } else {
                cXyz sp20 = daPy_getPlayerActorClass()->current.pos;
                sp20.y += 200.0f;
                s16 sVar5 = cLib_targetAngleY(&field_0x75c[13], &sp20);
                s16 sVar6 = cLib_targetAngleX(&field_0x75c[13], &sp20);
                f32 fVar1 = abs(cM_scos(sVar6) * 80.0f);
                field_0x8dc[13].set(fVar1 * cM_ssin(sVar5), cM_ssin(sVar6) * 80.0f, fVar1 * cM_scos(sVar5));
            }

            field_0x9fc[13] = 3;
            break;

        case 3:
            Z2GetAudioMgr()->seStartLevel(Z2SE_EN_TN_WEAPON_FLY, &field_0x75c[13], 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);

            cLib_chaseF(&field_0x8dc[13].y, -70.0f, 0.3f);
            cLib_chaseAngleS(&field_0x99c[13].x, ground_angle_part[13].x, 0x800);
            field_0x99c[13].y += -0x1800;
            cLib_chaseAngleS(&field_0x99c[13].z, ground_angle_part[13].z, 0x800);

            if (field_0x10fc[13].ChkGroundHit() || field_0x10fc[13].ChkWallHit()) {
                Z2GetAudioMgr()->seStart(Z2SE_EN_TN_WEAPON_STOP, &field_0x75c[13], 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                setPartLandEffect(13, 0);

                if (field_0xaa5 == 1) {
                    field_0x99c[13].y = 0x1800;
                    fopAcM_createDisappear(this, &field_0x75c[13], 3, 0, 0xff);
                    field_0x9fc[13] = 7;
                } else {
                    field_0x8dc[13].set(0.0f, 18.0f, 25.0f);
                    field_0x9fc[13] = 4;
                }
            }
            break;

        case 6:
        case 7:
            cLib_chaseF(&field_0x8dc[13].y, -70.0f, 5.0f);
            cLib_chaseAngleS(&field_0x99c[13].x, ground_angle_part[13].x, 0x800);
            field_0x99c[13].y += -0x1000;
            cLib_chaseAngleS(&field_0x99c[13].z, ground_angle_part[13].z, 0x800);

            if (field_0x10fc[13].ChkGroundHit() || field_0x10fc[13].ChkWallHit()) {
                field_0x99c[13] = ground_angle_part[13];
                field_0x8dc[13].set(0.0f, 0.0f, 0.0f);
                field_0xa3c[13] = -0x1800;
                setPartLandEffect(13, 1);
                field_0x9fc[13] = 7;
            }
    }
}

/* 8061FD7C-8061FFE0 00127C 0264+00 1/1 0/0 0/0 .text            calcSwordMoveB__8daB_TN_cFv */
void daB_TN_c::calcSwordMoveB() {
    // NONMATCHING
    switch (field_0x9fc[15]) {
        case 2:
            mDoMtx_stack_c::copy(mpModelMorf1->getModel()->getBaseTRMtx());
            mDoMtx_stack_c::multVecZero(&field_0x75c[15]);
            field_0x81c[15] = field_0x75c[15];
            mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &field_0x99c[15]);
            field_0x8dc[15].set(0.0f, 0.0f, 10.0f);
            field_0x9fc[15] = 3;
            // fallthrough

        case 3:
        case 4:
            cLib_chaseAngleS(&field_0x99c[15].x, ground_angle_part[15].x, 16);
            cLib_chaseAngleS(&field_0x99c[15].y, ground_angle_part[15].y, 16);
            cLib_chaseAngleS(&field_0x99c[15].z, ground_angle_part[15].z, 16);
            cLib_chaseF(&field_0x8dc[15].y, -70.0f, 5.0f);

            if (field_0x10fc[15].ChkGroundHit()) {
                Z2GetAudioMgr()->seStart(Z2SE_EN_TN_SWD_DROP, &field_0x75c[15], 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);

                if (field_0x9fc[15] == 3) {
                    field_0x8dc[15].set(0.0f, 10.0f, 10.0f);
                    field_0x9fc[15] = 4;
                    setPartLandEffect(15, 0);
                } else if (field_0xaa5 == 0) {
                    field_0x8dc[15].set(0.0f, 0.0f, 7.0f);
                    field_0x99c[15] = ground_angle_part[15];
                    field_0x9fc[15] = 5;
                } else {
                    fopAcM_createDisappear(this, &field_0x75c[15], 3, 0, 0xff);
                    field_0x9fc[15] = 7;
                }
            }
            break;

        case 5:
            cLib_chaseF(&field_0x8dc[15].y, -70.0f, 5.0f);
            cLib_chaseF(&field_0x8dc[15].z, 0.0f, 0.3f);
            field_0x99c[15].set(ground_angle_part[15].x, ground_angle_part[15].y, ground_angle_part[15].z);
            break;
            
        case 8:
            break;
    }
}

/* 8061FFE0-8062070C 0014E0 072C+00 2/1 0/0 0/0 .text            calcOtherPartMove__8daB_TN_cFi */
void daB_TN_c::calcOtherPartMove(int param_1) {
    // NONMATCHING
    cXyz sp7c;
    s16 sVar1, sVar4;

    switch (field_0x9fc[param_1]) {
        case 0:
            if (param_1 != 14) {
                setArmorBreakEffect(param_1);
            }
            // fallthrough

        case 2:
            mDoMtx_stack_c::copy(mModels[param_1]->getBaseTRMtx());
            mDoMtx_stack_c::multVecZero(&field_0x75c[param_1]);
            field_0x81c[param_1] = field_0x75c[param_1];
            mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &field_0x99c[param_1]);

            sp7c = daPy_getPlayerActorClass()->current.pos;

            if (param_1 == 14) {
                sVar1 = shape_angle.y + 0x4000;
            } else if (param_1 == 2) {
                sVar1 = shape_angle.y + -0x4000;
            } else if (param_1 == 3) {
                sVar1 = shape_angle.y + 0x2000;
            } else {
                s16 sVar2 = cLib_targetAngleY(&field_0x75c[param_1], &sp7c);
                if (cM_rnd() < 0.5f) {
                    f32 fVar1 = cM_rndFX(4096.0f);
                    sVar1 = sVar2 + 0x2000 + fVar1;
                } else {
                    f32 fVar2 = cM_rndFX(4096.0f);
                    sVar1 = sVar2 - 0x2000 + fVar2;
                }
            }

            field_0x8dc[param_1].set((cM_rndF(5.0f) + 10.0f) * cM_ssin(sVar1), cM_rndF(7.0f) + 35.0f, (cM_rndF(5.0f) + 10.0f) * cM_scos(sVar1));
            field_0x9fc[param_1] = 3;
            break;
            
        case 3:
            cLib_chaseF(&field_0x8dc[param_1].y, -70.0f, 5.0f);

            if (param_1 == 14) {
                if ( field_0x8dc[param_1].y > 0.0f) {
                    field_0x99c[param_1].y += 0x800;
                    field_0x99c[param_1].z += 0x800;
                } else {
                    cLib_chaseAngleS(&field_0x99c[param_1].x, ground_angle_part[param_1].x, 0x800);
                    cLib_chaseAngleS(&field_0x99c[param_1].z, ground_angle_part[param_1].z, 0x800);
                }
            } else if (field_0x8dc[param_1].y > 0.0f) {
                field_0x99c[param_1].y += 0x1000;
                field_0x99c[param_1].z += 0x1000;
            } else {
                cLib_chaseAngleS(&field_0x99c[param_1].x, ground_angle_part[param_1].x, 0x400);
                cLib_chaseAngleS(&field_0x99c[param_1].z, ground_angle_part[param_1].z, 0x400);
            }

            if ((field_0xaa5 != 1 || param_1 != 5) && field_0x10fc[param_1].ChkGroundHit()) {
                if (param_1 == 14) {
                    Z2GetAudioMgr()->seStart(Z2SE_EN_TN_SAYA_BND_1, &field_0x75c[0], 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                } else {
                    Z2GetAudioMgr()->seStart(Z2SE_EN_TN_ARMOR_BND, &field_0x75c[param_1], 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                }

                s16 sVar3 = cM_rndFX(32768.0f);
                field_0x8dc[param_1].set((cM_rndF(2.0f) + 5.0f) * cM_ssin(sVar3), cM_rndF(5.0f) + 18.0f, (cM_rndF(2.0f) + 5.0f) * cM_scos(sVar3));
                field_0x9fc[param_1] = 4;
                setPartLandEffect(param_1, 0);
            }
            break;

        case 4:
            cLib_chaseF(&field_0x8dc[param_1].y, -70.0f, 5.0f);
            cLib_chaseAngleS(&field_0x99c[param_1].x, ground_angle_part[param_1].x, 0x800);
            field_0x99c[param_1].y += 0x400;
            cLib_chaseAngleS(&field_0x99c[param_1].z, ground_angle_part[param_1].z, 0x800);

            if (field_0x10fc[param_1].ChkGroundHit()) {
                if (field_0xaa5 == 0) {
                    if (param_1 == 14) {
                        Z2GetAudioMgr()->seStart(Z2SE_EN_TN_SAYA_BND_2, &field_0x75c[0], 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                    }

                    field_0x9fc[param_1] = 5;
                    field_0x99c[param_1].x = ground_angle_part[param_1].x;
                    field_0x99c[param_1].z = ground_angle_part[param_1].z;
                    field_0x9fc[param_1 + 0x20] = 0x400;
                    setPartLandEffect(param_1, 1);
                } else {
                    fopAcM_createDisappear(this, &field_0x75c[param_1], 3, 0, 0xff);
                    field_0x9fc[param_1] = 7;
                    if (field_0xaa5 == 1 && param_1 == 4) {
                        field_0x9fc[5] = 7;
                    }
                }
            }
            break;
        
        case 5:
            cLib_chaseF(&field_0x8dc[param_1].y, -70.0f, 5.0f);
            cLib_chaseF(&field_0x8dc[param_1].x, 0.0f, 2.0f);
            cLib_chaseF(&field_0x8dc[param_1].z, 0.0f, 2.0f);
            cLib_chaseAngleS(&field_0xa3c[param_1], 0, 0x40);
            field_0x99c[param_1].y += field_0xa3c[param_1];
            break;
        
        case 6:
            sVar4 = shape_angle.y + cM_rndFX(16384.0f);
            field_0x8dc[param_1].set((cM_rndF(5.0f) + 50.0f) * cM_ssin(sVar4), 0.0f, (cM_rndF(5.0f) + 50.0f) * cM_scos(sVar4));
            field_0x9fc[param_1 + 0x20] = 0x800;
            field_0x9fc[param_1] = 5;
            break;

        case 7:
            break;
    }
}

/* 8062070C-806208C8 001C0C 01BC+00 1/1 0/0 0/0 .text            calcPartMove__8daB_TN_cFv */
void daB_TN_c::calcPartMove() {
    // NONMATCHING
    for (int i = 0; i < 16; i++) {
        u16 sVar1 = field_0xa1c[i];
        if (sVar1 != 0) {
            sVar1--;
        }

        field_0x81c[i] = field_0x75c[i];

        if (i == 12) {
            calcShieldMove();
        } else if (i == 13) {
            calcSwordMoveA();
        } else if (i == 15) {
            calcSwordMoveB();
        } else {
            calcOtherPartMove(i);
        }

        field_0x75c[i] += *field_0x3edc[i].GetCCMoveP();

        if (field_0x9fc[i] == 3 || field_0x9fc[i] == 4 || field_0x9fc[i] == 5) {
            field_0x8dc[i] += field_0x81c[i];
            field_0x10fc[i].CrrPos(dComIfG_Bgsp());

            if (field_0xaa1 != 0 && field_0x429c[i].ChkCoHit()) {
                cCcD_Obj* mCoHitObj = field_0x429c[i].GetCoHitObj();
                fopAc_ac_c* mActor = mCoHitObj->GetAc();
                if ((dCc_GetAc(mActor) == this && mCoHitObj->GetAtAtp()) && field_0xa1c[i] == 0) {
                    field_0x9fc[i] = 6;
                    field_0xa1c[i] = 0x1e;
                }

                field_0x429c[i].ClrCoHit();
             }
        }
    }
}

/* 806208C8-8062096C 001DC8 00A4+00 18/18 0/0 0/0 .text            setBck__8daB_TN_cFiUcff */
void daB_TN_c::setBck(int param_1, u8 param_2, f32 param_3, f32 param_4) {
    mpModelMorf2->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("B_tn", param_1),
        param_2, param_3, param_4, 0.0f, -1.0f);
}

/* 8062096C-806209C8 001E6C 005C+00 3/3 0/0 0/0 .text            checkBck__8daB_TN_cFi */
int daB_TN_c::checkBck(int param_1) {
    return mpModelMorf2->getAnm() == dComIfG_getObjectRes("B_tn", param_1);
}

/* 806209C8-806209E0 001EC8 0018+00 22/22 0/0 0/0 .text            setActionMode__8daB_TN_cFii */
void daB_TN_c::setActionMode(int param_1, int param_2) {
    offHeadLockFlg();
    mActionMode1 = param_1;
    mActionMode2 = param_2;
}

/* 806209E0-80620AE4 001EE0 0104+00 11/11 0/0 0/0 .text            setSwordAtBit__8daB_TN_cFi */
void daB_TN_c::setSwordAtBit(int param_1) {
    if (param_1 == 0) {
        for (int i = 0; i < 4; i++) {
            field_0x3750[i].OffAtSetBit();
            field_0x3750[i].ClrAtHit();
        }
        
        field_0x3c30.OffAtSetBit();
        field_0x3c30.ClrAtHit();
    } else {
        for (int i = 0; i < 4; i++) {
            field_0x3750[i].OnAtSetBit();
            if (mActionMode1 <= 8) {
                field_0x3750[i].SetAtAtp(4);
            } else {
                field_0x3750[i].SetAtAtp(2);
            }
        }

        field_0x3c30.OnAtSetBit();
        if (mActionMode1 <= 8) {
            field_0x3c30.SetAtAtp(4);
        } else {
            field_0x3c30.SetAtAtp(2);
        }
    }
}

/* 80620AE4-80620B4C 001FE4 0068+00 5/5 0/0 0/0 .text            setSwordAtBreak__8daB_TN_cFi */
void daB_TN_c::setSwordAtBreak(int param_1) {
    if (param_1 == 0) {
        for (int i = 0; i < 4; i++) {
            field_0x3750[i].SetAtSpl((dCcG_At_Spl)1);
        }
        field_0x3c30.SetAtSpl((dCcG_At_Spl)1);
    } else {
        for (int i = 0; i < 4; i++) {
            field_0x3750[i].SetAtSpl((dCcG_At_Spl)10);
        }
        field_0x3c30.SetAtSpl((dCcG_At_Spl)10);
        field_0xa9a = 0;
    }
}

/* 80620B4C-80620E90 00204C 0344+00 1/1 0/0 0/0 .text            setBodyShield__8daB_TN_cFv */
void daB_TN_c::setBodyShield() {
    // NONMATCHING
    int bVar3 = true;
    int bVar2;
    daPy_py_c* player = daPy_getPlayerActorClass();
    switch (mActionMode1) {
        case 0:
        case 1:
            for (int i = 0; i < 3; i++) {
                field_0x2f64[i].OnTgShield();
            }

            field_0x3618.OnTgShield();
            field_0x3618.OnTgSetBit();
            return;

        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
            if ((daPy_py_c::checkNowWolf() || player->getCutType() == daPy_py_c::CUT_TYPE_TWIRL) || player->getCutCount() < 4) {
                field_0xa9f = 0;
            } else {
                field_0xa9f = 1;
            }
        
            if (field_0xa91 != 0) {
                if (abs(fopAcM_searchPlayerAngleY(this) - shape_angle.y) < 0x3001) {
                    break;
                }
            }

            bVar3 = false;
            // break;
            bVar2 = false;
            if ((player->getCutType() == daPy_py_c::CUT_TYPE_HEAD_JUMP || player->getCutType() == daPy_py_c::CUT_TYPE_MORTAL_DRAW_B) ||
                    (player->getCutType() == daPy_py_c::CUT_TYPE_MORTAL_DRAW_A || field_0xaa9 != 0)) {
                bVar3 = false;
                bVar2 = true;
            }
        
            if (field_0xa78 > 10) {
                bVar3 = false;
                field_0xaa7 = 0;
            }
        
            if ((bVar3 || daPy_py_c::checkNowWolf()) || field_0xaa7 != 0) {
                for (int i = 0; i < 3; i++) {
                    field_0x2f64[i].OnTgShield();
                }
            } else {
                for (int i = 0; i < 3; i++) {
                    field_0x2f64[i].OffTgShield();
                }
            }
        
            if ((mActionMode1 == 7 || field_0xa78 > 10) && field_0xaa7 == 0) {
                bVar2 = true;
            }
        
            if (bVar2) {
                field_0x3618.OffTgShield();
                field_0x3618.OffTgSetBit();
            } else {
                field_0x3618.OnTgShield();
                field_0x3618.OnTgSetBit();
            }
            break;

        default:
            field_0xa9f = 0;

            if (((daPy_py_c::checkNowWolf() || player->getCutType() == daPy_py_c::CUT_TYPE_TWIRL) || player->getCutType() == daPy_py_c::CUT_TYPE_MORTAL_DRAW_B) ||
                    (player->getCutType() == daPy_py_c::CUT_TYPE_MORTAL_DRAW_A || player->getCutCount() < 4)) {
                if ((player->getCutType() == daPy_py_c::CUT_TYPE_TURN_RIGHT || player->getCutType() == daPy_py_c::CUT_TYPE_TURN_LEFT) && field_0xaaa == 0) {
                    field_0xa9f = 1;
                }
            } else {
                field_0xa9f = 1;
            }

            bVar3 = false;
            if (player->getCutType() != daPy_py_c::CUT_TYPE_HEAD_JUMP && ((field_0xa91 == 1 && field_0xa9f != 0) || (field_0xaa7 != 0 || daPy_py_c::checkNowWolf()))) {
                bVar3 = true;
            }

            if (bVar3) {
                for (int i = 0; i < 3; i++) {
                    field_0x2f64[i].OnTgShield();
                }
                return;
            }

            for (int i = 0; i < 3; i++) {
                field_0x2f64[i].OffTgShield();
            }

            return;
    }
}

/* 8062F2FC-8062F300 000324 0004+00 2/3 0/0 0/0 .bss             m_attack_tn */
static daB_TN_c* m_attack_tn;

/* 8062F300-8062F304 000328 0004+00 1/2 0/0 0/0 .bss             m_attack_timer */
static int m_attack_timer;

/* 80620E90-80620FA0 002390 0110+00 4/4 0/0 0/0 .text            checkNormalAttackAble__8daB_TN_cFv */
int daB_TN_c::checkNormalAttackAble() {
    if (field_0xaa5 == 1) {
        if (daPy_getPlayerActorClass()->getCutCount() != 0) {
            field_0xa70 = cM_rndF(60.0f) + 30.0f;
            return 0;
        }

        if (m_attack_tn && m_attack_tn != this) {
            field_0xa70 = cM_rndF(60.0f) + 30.0f;
            return 0;
        }

        if (m_attack_timer != 0) {
            field_0xa70 = cM_rndF(60.0f) + 30.0f;
            return 0;
        }

        m_attack_timer = 30;
    }

    return 1;
}

/* 80620FA0-80621070 0024A0 00D0+00 4/3 0/0 0/0 .text            getCutType__8daB_TN_cFv */
u32 daB_TN_c::getCutType() {
    // NONMATCHING
    u32 rv = 0;

    if (field_0x3eb8.mpCollider->ChkAtType(AT_TYPE_NORMAL_SWORD)) {
        if (daPy_getPlayerActorClass()->getCutCount() >= 4) {
            rv = 4;
        }

        if (field_0x3eb8.mpCollider && ((dCcD_GObjInf*)field_0x3eb8.mpCollider)->GetAtSpl() == 1) {
            rv = 4;
        }
    }

    switch (daPy_getPlayerActorClass()->getCutType()) {
        default:
            if (field_0xaaa == 0) {
                return 32;
            }
            
            break;

        case daPy_py_c::CUT_TYPE_NM_VERTICAL:
        case daPy_py_c::CUT_TYPE_NM_RIGHT:
        case daPy_py_c::CUT_TYPE_FINISH_LEFT:
        case daPy_py_c::CUT_TYPE_FINISH_VERTICAL:
        case daPy_py_c::CUT_TYPE_DASH_UNK_26:
            return rv | 32;
        
        case daPy_py_c::CUT_TYPE_NM_STAB:
        case daPy_py_c::CUT_TYPE_FINISH_STAB:
            return rv | 16;

        case daPy_py_c::CUT_TYPE_NM_LEFT:
        case daPy_py_c::CUT_TYPE_DASH_UNK_25:
            return rv | 34;
        
        case daPy_py_c::CUT_TYPE_TURN_RIGHT:
        case daPy_py_c::CUT_TYPE_TURN_LEFT:
            return rv | 18;
        
        case daPy_py_c::CUT_TYPE_JUMP:
        case daPy_py_c::CUT_TYPE_LARGE_JUMP:
            return rv | 2;

        case daPy_py_c::CUT_TYPE_LARGE_TURN_LEFT:
        case daPy_py_c::CUT_TYPE_LARGE_TURN_RIGHT:
            return rv | 33;

        case daPy_py_c::CUT_TYPE_TWIRL:
            return rv | 1;

        case daPy_py_c::CUT_TYPE_COMBO_STAB:
            return rv | 3;
    }

    return rv | 32;
}

/* 80621070-8062138C 002570 031C+00 1/1 0/0 0/0 .text            setDamage__8daB_TN_cFP8dCcD_Sphi */
void daB_TN_c::setDamage(dCcD_Sph* i_sph, int param_2) {
    u8 uVar5;

    health = 100;
    cc_at_check(this, &field_0x3eb8);
    if (field_0x3eb8.mpCollider->ChkAtType(AT_TYPE_UNK) != 0) {
        field_0xa68 = 20;
    } else {
        if (field_0x3eb8.mpCollider->ChkAtType(AT_TYPE_BOMB) != 0) {
            field_0xa68 = 20;
        } else {
            field_0xa68 = 10;
        }
    }

    if (field_0x3eb8.mAttackPower <= 1) {
        field_0xa68 = 10;
    }

    dComIfGp_setHitMark(1, this, i_sph->GetTgHitPosP(), NULL, NULL, 0);

    if (field_0xa7c != 0) {
        field_0xa92 ^= 1;
    } else {
        u8 uVar4 = 0;
        if (field_0x3eb8.mpCollider->ChkAtType(AT_TYPE_NORMAL_SWORD) != 0) {
            uVar4 = getCutType() & -1;
        }

        if ((uVar4 & 3) != 0) {
            if (abs((s16)(fopAcM_searchPlayerAngleY(this) - shape_angle.y)) > 0x4000) {
                if ((uVar4 & 1) != 0) {
                    uVar5 = 1;
                } else {
                    uVar5 = 0;
                }
            } else if ((uVar4 & 1) != 0) {
                uVar5 = 0;
            } else {
                uVar5 = 1;
            }
        } else {
            if (cM_rnd() < 0.5f) {
                uVar5 = 0;
            } else {
                uVar5 = 1;
            }
        }

        field_0xa92 = uVar5;
    }

    field_0xa7c = 30;
    int iVar1 = mActionMode1;
    if (iVar1 < 8) {
        if (iVar1 != 7 && field_0xa80 == 0) {
            field_0xa80 = 70;
        }

        field_0xa78 += param_2;
        setActionMode(7, field_0xa92);
    } else {
        if (iVar1 != 13 && field_0xa80 == 0) {
            field_0xa80 = 90;

            if (field_0x6fc > field_0x700 - 50.0f) {
                field_0x6fc -= 20;
            }
        }

        if ((field_0x6fc > field_0x700 - 50.0f) && field_0xa9f != 0) {
            field_0x6fc += 50;
        } else {
            field_0x6fc += 100 - health;
        }

        if (field_0x6fc >= field_0x700) {
            setActionMode(14, 0);
            dComIfGp_setHitMark(3, this, i_sph->GetTgHitPosP(), NULL, NULL, 0);
        } else {
            setActionMode(13, field_0xa92);
        }
    }
}

/* 8062138C-806213FC 00288C 0070+00 1/1 0/0 0/0 .text setShieldEffect__8daB_TN_cFP8dCcD_Sph */
void daB_TN_c::setShieldEffect(dCcD_Sph* i_sph) {
    def_se_set(&mSound, field_0x3eb8.mpCollider, 42, this);
    dComIfGp_setHitMark(2, this, i_sph->GetTgHitPosP(), NULL, NULL, 0);
}

/* 806213FC-806223A0 0028FC 0FA4+00 1/1 0/0 0/0 .text            damage_check__8daB_TN_cFv */
void daB_TN_c::damage_check() {
    // NONMATCHING

}

/* 806223A0-8062242C 0038A0 008C+00 1/1 0/0 0/0 .text            __as__8dCcD_SphFRC8dCcD_Sph */
// void dCcD_Sph::operator=(dCcD_Sph const& param_0) {
extern "C" void __as__8dCcD_SphFRC8dCcD_Sph() {
    // NONMATCHING
}

/* 8062242C-80622674 00392C 0248+00 1/1 0/0 0/0 .text __as__12dCcD_GObjInfFRC12dCcD_GObjInf */
// void dCcD_GObjInf::operator=(dCcD_GObjInf const& param_0) {
extern "C" void __as__12dCcD_GObjInfFRC12dCcD_GObjInf() {
    // NONMATCHING
}

/* 80622674-80622740 003B74 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80622740-80622788 003C40 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80622788-806227D0 003C88 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 806227D0-80622B60 003CD0 0390+00 4/4 0/0 0/0 .text            checkMoveArea__8daB_TN_cFv */
int daB_TN_c::checkMoveArea() {
    if (field_0xaa5 != 0) {
        return 0;
    }

    if (current.pos.absXZ() > 1700.0f) {
        return 3;
    }

    if (current.pos.absXZ() > 1600.0f) {
        return 2;
    }

    if (current.pos.absXZ() > 1500.0f) {
        return 1;
    }

    return 0;
}

/* 80622B60-80622BE0 004060 0080+00 1/1 0/0 0/0 .text            checkMoveAngle__8daB_TN_cFv */
int daB_TN_c::checkMoveAngle() {
    s16 sVar1 = cM_atan2s(-current.pos.x, -current.pos.z);
    return abs((s16)(fopAcM_searchPlayerAngleY(this) - sVar1)) < 0x4000;
}

/* 80622BE0-80622CE4 0040E0 0104+00 1/1 0/0 0/0 .text            setAttackBlurEffect__8daB_TN_cFi */
void daB_TN_c::setAttackBlurEffect(int param_1) {
    // NONMATCHING
    static u16 blur_effect_id_5997[4] = {
        0x87DA, 0x87DB, 0x87DC, 0x87DD,
    };

    if (param_1 != 0) {
        for (int i = 0; i < 4; i++) {
            field_0x561c[i] = dComIfGp_particle_set(field_0x561c[i], blur_effect_id_5997[i], &current.pos, &tevStr);

            JPABaseEmitter* mBaseEmitter = dComIfGp_particle_getEmitter(field_0x561c[i]);
            if (mBaseEmitter) {
                mBaseEmitter->setGlobalSRTMatrix(mModels[13]->getBaseTRMtx());
            }
        }
    }
}

/* 80622CE4-80622DF4 0041E4 0110+00 1/1 0/0 0/0 .text            setArmorBreakEffect__8daB_TN_cFi */
void daB_TN_c::setArmorBreakEffect(int param_1) {
    // NONMATCHING
    static u16 blur_effect_id_6035[3] = {
        0x87DE, 0x87DF, 0x87E0
    };

    cXyz sp24(l_HIO.field_0x8, l_HIO.field_0x8, l_HIO.field_0x8);
    cXyz sp30;
    mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(tn_part_joint[param_1]));
    mDoMtx_stack_c::multVecZero(&sp30);

    for (int i = 0; i < 3; i++) {
        dComIfGp_particle_set(blur_effect_id_6035[i], &sp30, &tevStr, &shape_angle, &sp24);
    }
}

/* 80622DF4-80622F64 0042F4 0170+00 1/1 0/0 0/0 .text            s_obj_sub__FPvPv */
static void* s_obj_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor)) {
        if (!fpcM_IsCreating(fopAcM_GetID(i_actor)) && fopAcM_checkCarryNow((fopAc_ac_c*)i_actor) == 0) {
            f32 mActorDistance = fopAcM_searchActorDistanceXZ((fopAc_ac_c*)i_actor, (fopAc_ac_c*)i_data);
            if (mActorDistance < 300.0f && fopAcM_GetSpeed((fopAc_ac_c*)i_actor).y) {
                if (fopAcM_GetName(i_actor) == PROC_Obj_Carry) {
                    return i_actor;
                }

                if (fopAcM_GetName((fopAc_ac_c*)i_actor) == PROC_NBOMB) {
                    return i_actor;
                }
            }

            if (mActorDistance < 300.0f && fopAcM_GetName(i_actor) == PROC_NBOMB) {
                daNbomb_c* mNBomb = (daNbomb_c*)i_actor;
                if (mNBomb->checkInsectBombMove((fopAc_ac_c*)i_actor)) {
                    return i_actor;
                }

                if (mNBomb->getExTime() < 10) {
                    return i_actor;
                }
            }

            if ((mActorDistance < 700.0f && fopAcM_GetName(i_actor) == PROC_ARROW) && fopAcM_GetSpeedF((fopAc_ac_c*)i_actor)) {
                s16 mAngleY = ((fopAc_ac_c*)i_actor)->current.angle.y;
                if (abs((s16)(mAngleY - fopAcM_searchActorAngleY((fopAc_ac_c*)i_actor, (fopAc_ac_c*)i_data))) < 0x2000) {
                    return i_actor;
                }
            }
        }
    }

    return NULL;
}

/* 80622F64-8062318C 004464 0228+00 1/1 0/0 0/0 .text            demo_skip__8daB_TN_cFi */
void daB_TN_c::demo_skip(int param_1) {
    camera_class* cameraClass = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    daPy_py_c* player = daPy_getPlayerActorClass();

    if (param_1 == 0) {
        mCamCenter.set(0.0f, -180.0f, 0.0f);
        mCamEye.set(300.0f, -200.0f, 1000.0f);
        cameraClass->mCamera.Reset(mCamCenter, mCamEye);
        cameraClass->mCamera.Start();
        cameraClass->mCamera.SetTrimSize(0);
        dComIfGp_event_reset();
        
        Z2GetAudioMgr()->bgmStreamStop(0x1e);
        Z2GetAudioMgr()->subBgmStart(Z2BGM_TN_MBOSS);

        setActionMode(2, 0);
        field_0xa93 = 1;
        field_0xaae = 2;
        field_0xab0 = 1.0f;
    } else if (param_1 == 1) {
        mCamCenter.set(0.0f, -239.0f, 1874.0f);
        mCamEye.set(0.0f, -202.0f, 2251.0f);
        cXyz sp28(0.0f, -350.0f, 2200.0f);
        player->setPlayerPosAndAngle(&sp28, (s16)0xffff8000, 0);

        cameraClass->mCamera.Reset(mCamCenter, mCamEye);
        cameraClass->mCamera.Start();
        cameraClass->mCamera.SetTrimSize(0);
        dComIfGp_event_reset();

        setActionMode(1, 0);
    }
}

/* 8062318C-806231C0 00468C 0034+00 2/2 0/0 0/0 .text            DemoSkipCallBack__8daB_TN_cFPvi */
int daB_TN_c::DemoSkipCallBack(void* i_this, int param_2) {
    if (i_this) {
        static_cast<daB_TN_c*>(i_this)->demo_skip(param_2);
        return 1;
    }

    return 0;
}

/* 806231C0-80623920 0046C0 0760+00 2/1 0/0 0/0 .text            executeRoomDemo__8daB_TN_cFv */
void daB_TN_c::executeRoomDemo() {
    // NONMATCHING
    daPy_py_c* player = daPy_getPlayerActorClass();
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    cXyz sp24 = player->current.pos;
    cXyz sp30;

    fopAcM_searchPlayerDistance(this);

    switch (mActionMode2) {
        case 0:
            if (!eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(this, 2, 0xffff, 0);
                eventInfo.onCondition(2);
                return;
            }

            field_0xaae = 0;
            fopAcM_OffStatus(this, 0x4000);
            
            camera->mCamera.Stop();
            camera->mCamera.SetTrimSize(3);
            
            mCamCenter = dCam_getBody()->Center();
            mCamEye = dCam_getBody()->Eye();

            mCamFovY = dCam_getBody()->Fovy();
            mActionMode2 = 2;
            field_0xa6c = 30;
            break;

        case 2:
            if (field_0xa6c == 0) {
                if (!daPy_py_c::checkNowWolf()) {
                    field_0xa6c = 70;
                } else {
                    field_0xa6c = 30;
                }

                player->changeOriginalDemo();
                player->changeDemoMoveAngle(-0x8000);
                sp24.set(0.0f, -350.0f, 1850.0f);
                player->changeDemoPos0(&sp24);
                player->changeDemoMode(2, 0, 0, 0);
                mActionMode2 = 3;
            }
            break;
        
        case 3:
            cLib_addCalcPos2(&mCamCenter, sp24, 0.1f, 1.0f);

            if (field_0xa6c == 0) {
                player->changeDemoMoveAngle(-0x8000);

                if (!daPy_py_c::checkNowWolf()) {
                    sp24.set(0.0f, -350.0f, 2173.0f);
                } else {
                    sp24.set(0.0f, -350.0f, 1923.0f);
                }

                player->changeDemoPos0(&sp24);
                player->changeDemoMode(2, 0, 0, 0);
                sp24.z += 500.0f;
                player->setPlayerPosAndAngle(&sp24, (s16)0xffff8000, 0);

                field_0xa6c = 30;
                mActionMode2 = 10;
                field_0x720 = -0x7000;
                mCamEye.x = cM_ssin(field_0x720) * 400.0f;
                mCamEye.y = -170.0f;
                mCamEye.z = cM_scos(field_0x720) * 400.0f + 1900.0f;
                mCamCenter.set(sp24.x, sp24.y + 150.0f, sp24.z);
                return;
            }
            break;
        
        case 10:
        case 11:
            sp30.set(sp24.x, sp24.y + 150.0f, sp24.z);
            cLib_addCalcPos2(&mCamCenter, sp30, 0.5f, 10.0f);
            cLib_addCalcAngleS2(&field_0x720, -0x4000, 16, 32);
            cLib_addCalc2(&mCamEye.y, -250.0f, 16.0f, 0.5f);
            mCamEye.x = cM_ssin(field_0x720) * 400.0f;
            mCamEye.z = cM_scos(field_0x720) * 400.0f + 1900.0f;

            if (field_0xa6c == 0) {
                if (mActionMode2 == 10) {
                    player->changeDemoMode(20, 0, 0, 0);
                    field_0xa6c = 120;
                    mActionMode2 = 11;
                } else if (mActionMode2 == 11) {
                    if (!daPy_py_c::checkNowWolf()) {
                        player->changeDemoMode(47, 2, 0, 0);
                    }

                    mActionMode2 = 15;
                    field_0xa6c = 150;

                    if (!daPy_py_c::checkNowWolf()) {
                        mCamEye.set(0.0f, -200.0f, 2400.0f);
                    } else {
                        mCamEye.set(0.0f, -265.0f, 2400.0f);
                    }

                    field_0x720 = 0x5c00;
                    mCamCenter = mCamEye;
                    mCamCenter.y += 400.0f * cM_ssin(field_0x720);
                    mCamCenter.z += 400.0f * cM_scos(field_0x720);
                }
            }
            break;

        case 15:
            mCamCenter = mCamEye;
            mCamCenter.y += 400.0f * cM_ssin(field_0x720);
            mCamCenter.z += 400.0f * cM_scos(field_0x720);
            cLib_addCalcAngleS2(&field_0x720, 0x7800, 16, 64);

            if (field_0xa6c == 0) {
                mActionMode2 = 16;
                field_0xa6c = 70;
                field_0x724 = 1200.0f;
            }
            break;

        case 16:
            cLib_chaseF(&field_0x724, 1200.0f, 50.0f);
            sp30.set(0.0f, 423.0f, -1841.0f);
            cLib_addCalcPos2(&mCamCenter, sp30, 0.3f, field_0x724);
            sp30.set(0.0f, 370.0f, -1442.0f);
            cLib_addCalcPos2(&mCamEye, sp30, 0.3f, field_0x724);

            if (field_0xa6c == 0) {
                mCamCenter.set(0.0f, -239.0f, 1874.0f);
                mCamEye.set(0.0f, -202.0f, 2251.0f);
                camera->mCamera.Reset(mCamCenter, mCamEye);
                camera->mCamera.Start();
                camera->mCamera.SetTrimSize(0);
                dComIfGp_event_reset();
                
                setActionMode(1, 0);
                return;
            }
    }

    camera->mCamera.Set(mCamCenter, mCamEye, mCamFovY, 0);
    dComIfGp_getEvent().onSkipFade();
    dComIfGp_getEvent().setSkipProc(this, DemoSkipCallBack, 1);
}

/* 80623920-806246E8 004E20 0DC8+00 2/1 0/0 0/0 .text            executeOpening__8daB_TN_cFv */
void daB_TN_c::executeOpening() {
    // NONMATCHING
    cXyz sp7c, sp34;
    daPy_py_c* player = daPy_getPlayerActorClass();
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));

    fopAcM_searchPlayerDistance(this);

    switch (mActionMode2) {
        case 0:
            speedF = 0.0f;
            setBck(18, 2, 3.0f, 1.0f);
            mActionMode2 = 1;
            // fallthrough
        
        case 1:
            sp7c = player->current.pos;
            if (sp7c.absXZ() < 2200.0f) {
                sp34.set(0.0f, -350.0f, 2250.0f);
                if (sp7c.absXZ(sp34) > 1300.0f) {
                    mActionMode2 = 2;
                }
            }

            return;
        
        case 2:
            if (!eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(this, 2, 0xffff, 0);
                eventInfo.onCondition(2);
                return;
            }

            dComIfGs_onOneZoneSwitch(14, fopAcM_GetRoomNo(this));

            camera->mCamera.Stop();
            camera->mCamera.SetTrimSize(3);
            field_0xa6c = 30;

            Z2GetAudioMgr()->bgmStreamPrepare(0x2000037);
            Z2GetAudioMgr()->bgmStreamPlay();

            mActionMode2 = 3;
            mCamFovY = 60.0f;
            field_0x724 = 380.0f;
            field_0x720 = 0x1000;
            mCamCenter.set(current.pos.x, current.pos.y + 220.0f, current.pos.z);
            mCamEye.set(mCamCenter.x + field_0x724 * cM_ssin(field_0x720), -210.0f, mCamCenter.z + field_0x724 * cM_scos(field_0x720));

            mpModelMorf2->setFrame(15.0f);
            player->changeOriginalDemo();
            sp7c.set(150.0f, -400.0f, 600.0f);
            player->setPlayerPosAndAngle(&sp7c, (s16)0xffff9000, 0);
            player->changeDemoMode(4, 1, 0, 0);
            break;

        case 3:
            cLib_addCalcAngleS2(&field_0x720, 0x400, 8, 48);
            mCamCenter.set(current.pos.x, current.pos.y + 220.0f, current.pos.z);
            mCamEye.set(mCamCenter.x + field_0x724 * cM_ssin(field_0x720), -210.0f, mCamCenter.z + field_0x724 * cM_scos(field_0x720));

            if (field_0xa6c == 0) {
                setBck(14, 0, 20.0f, 1.0f);
                mActionMode2 = 4;
                field_0xaae = 1;
                field_0xab0 = 0.0f;
            }
            break;

        case 4:
            if (mpModelMorf2->checkFrame(111.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
            }

            if (mpModelMorf2->checkFrame(148.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
            }

            if (mpModelMorf2->getFrame() < 80.0f) {
                cLib_addCalcAngleS2(&field_0x720, -0x400, 8, 48);
                mCamCenter.set(current.pos.x, current.pos.y + 220.0f, current.pos.z);
            } else {
                cLib_addCalc2(&field_0x724, 250.0f, 8.0f, 5.0f);
                mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(4));
                mDoMtx_stack_c::multVecZero(&sp34);
                cLib_addCalcPos2(&mCamCenter, sp34, 0.5f, 5.0f);
            }

            mCamEye.set(mCamCenter.x + field_0x724 * cM_ssin(field_0x720), -210.0f, mCamCenter.z + field_0x724 * cM_scos(field_0x720));
            if (mpModelMorf2->isStop()) {
                setBck(15, 2, 3.0f, 1.0f);
                field_0xa6c = 60;
                mActionMode2 = 10;
            }
            break;
        
        case 10:
            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(4));
            mDoMtx_stack_c::multVecZero(&sp34);
            cLib_addCalcPos2(&mCamCenter, sp34, 0.5f, 5.0f);

            if (field_0xa6c < 30) {
                sp34.set(0.0f, -350.0f, 400.0f);
                cLib_addCalcPos2(&mCamEye, sp34, 0.5f, 5.0f);
            }

            if (field_0xa6c == 0) {
                setBck(7, 0, 10.0f, 1.0f);
                mActionMode2 = 14;
            }
            break;

        case 14:
            if (mpModelMorf2->checkFrame(33.0f) || mpModelMorf2->checkFrame(105.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
            } else if (mpModelMorf2->checkFrame(57.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_SWD_L, 0, -1);
                mSound.startCreatureVoice(Z2SE_EN_TN_V_KIAI_OP, -1);
            } else if (mpModelMorf2->checkFrame(62.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
            } else if (mpModelMorf2->checkFrame(98.0f)) {
                mSound.startCreatureSound(Z2SE_EN_TN_SWD_L, 0, -1);
            }

            if (mpModelMorf2->getFrame() < 30.0f) {
                mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(4));
                mDoMtx_stack_c::multVecZero(&sp34);
                cLib_addCalcPos2(&mCamCenter, sp34, 0.5f, 5.0f);
                sp34.set(0.0f, -350.0f, 400.0f);
                cLib_addCalcPos2(&mCamEye, sp34, 0.5f, 5.0f);
            } else {
                if (mpModelMorf2->getFrame() < 57.0f) {
                    mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(14));
                    mDoMtx_stack_c::multVecZero(&sp34);
                    sp34.y -= 50.0f;
                    cLib_addCalcPos2(&mCamCenter, sp34, 0.5f, 3.0f);
                    sp34.set(0.0f, -350.0f, 400.0f);
                    cLib_addCalcPos2(&mCamEye, sp34, 0.5f, 5.0f);
                } else {
                    mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(14));
                    mDoMtx_stack_c::multVecZero(&sp34);
                    sp34.y -= 50.0f;
                    cLib_addCalcPos2(&mCamCenter, sp34, 1.0f, 30.0f);
                    sp34.set(0.0f, -350.0f, 500.0f);
                    cLib_addCalcPos2(&mCamEye, sp34, 0.5f, 3.0f);
                }
            }

            if (mpModelMorf2->checkFrame(58.0f) || mpModelMorf2->checkFrame(98.0f)) {
                dComIfGp_getVibration().StartShock(4, 31, cXyz(0.0f, 1.0f, 0.0f));
                field_0xa88 = 7;
            }

            if (mpModelMorf2->checkFrame(126.0f)) {
                mActionMode2 = 17;
                field_0xa6c = 30;
            }
            break;

        case 17:
            mCamCenter.set(2.0f, -225.0f, -109.0f);
            sp34.set(0.0f, -350.0f, 430.0f);
            cLib_addCalcPos2(&mCamEye, sp34, 0.5f, 100.0f);
            if (mpModelMorf2->checkFrame(160.0f)) {
                mActionMode2 = 20;
                player->changeDemoMode(23, 0, 0, 0);
            }
            break;

        case 20:
            mDoMtx_stack_c::copy(mpModelMorf2->getModel()->getAnmMtx(4));
            mDoMtx_stack_c::multVecZero(&sp34);
            cLib_addCalcPos2(&mCamCenter, sp34, 0.5f, 5.0f);
            sp34.set(0.0f, -300.0f, 1000.0f);
            cLib_addCalcPos2(&mCamEye, sp34, 0.1f, 20.0f);

            if (mpModelMorf2->checkFrame(220.0f)) {
                camera->mCamera.Reset(mCamCenter, mCamEye);
                camera->mCamera.Start();
                camera->mCamera.SetTrimSize(0);
                dComIfGp_event_reset();

                Z2GetAudioMgr()->subBgmStart(Z2BGM_TN_MBOSS);

                setActionMode(2, 0);
                field_0xa93 = 1;
                field_0xaae = 2;
                field_0xab0 = 0.0f;
                return;
            }
    }

    camera->mCamera.Set(mCamCenter, mCamEye, mCamFovY, 0);
    dComIfGp_getEvent().onSkipFade();
    dComIfGp_getEvent().setSkipProc(this, DemoSkipCallBack, 0);
}

/* 806246E8-806247D8 005BE8 00F0+00 1/1 0/0 0/0 .text            executeWaitH__8daB_TN_cFv */
void daB_TN_c::executeWaitH() {
    fopAcM_searchPlayerAngleY(this);
    f32 mPlayerDistance = fopAcM_searchPlayerDistance(this);
    switch (mActionMode2) {
        case 0:
            speedF = 0.0f;
            setBck(15, 2, 3.0f, 1.0f);
            mActionMode2 = 1;
            // fallthrough
            
        case 1:
            if (mPlayerDistance < 1500.0f) {
                if (field_0xaad != 0) {
                    Z2GetAudioMgr()->subBgmStart(Z2BGM_TN_MBOSS_LV9);
                }

                setActionMode(3, 0);
            }
    }
}

/* 806247D8-80624890 005CD8 00B8+00 1/1 0/0 0/0 .text            setAwaitSound__8daB_TN_cFv */
void daB_TN_c::setAwaitSound() {
    if (mpModelMorf2->checkFrame(17.0f)) {
        mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
    }

    if (mpModelMorf2->checkFrame(36.0f)) {
        mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
    }
}

/* 80624890-80625394 005D90 0B04+00 1/1 0/0 0/0 .text            executeChaseH__8daB_TN_cFv */
void daB_TN_c::executeChaseH() {
    // NONMATCHING
    f32 mPlayerDistance = fopAcM_searchPlayerDistance(this);
    s16 sVar4 = fopAcM_searchPlayerAngleY(this);
    s16 sVar5 = sVar4 - cM_atan2s(-current.pos.x, -current.pos.z);
    int iVar2 = checkMoveArea();

    switch (mActionMode2) {

        case 101:
            break;

        case 0:
        case 70:
            if (iVar2 == 3) {
                if (checkMoveAngle() != 0) {
                    mActionMode2 = 100;
                } else {
                    mActionMode2 = 103;
                }
            } else {
                if (iVar2 != 0 && mPlayerDistance > 800.0f) {
                    mPlayerDistance = 400.0f;
                }

                if (mPlayerDistance < 200.0f) {
                    mActionMode2 = 3;
                } else {
                    if (mPlayerDistance >= 800.0f) {
                        if (mActionMode2 == 0) {
                            mActionMode2 = 10;
                        } else {
                            mActionMode2 = 8;
                        }
                    } else if (mPlayerDistance >= 400.0f) {
                        mActionMode2 = 1;
                    } else {
                        mActionMode2 = 5;
                    }
                }
            }

            setSwordAtBit(0);
            field_0xa91 = 1;
            break;

        case 11:
            break;
            
        case 1:
        case 2:
        case 3:
            setBck(16, 2, 3.0f, -1.0f);
            mActionMode2 = 4;
            current.angle.y = shape_angle.y + -0x8000;
            field_0xa8c = 11;

            if (mActionMode2 == 1) {
                setBck(16, 2, 3.0f, 1.0f);
            } else {
                setBck(16, 2, 10.0f, 1.0f);
            }

            mActionMode2 = 2;
            speedF = 2.3f;
            current.angle.y = shape_angle.y;
            break;

        case 8:
        case 9:
        case 10:
            if (mActionMode2 == 8) {
                setBck(19, 2, 3.0f, 1.0f);
            } else {
                setBck(19, 2, 10.0f, 1.0f);
            }

            mActionMode2 = 9;
            speedF = 4.3f;
            break;

        case 4:
            setAwaitSound();
            speedF = 2.3f;
            cLib_addCalcAngleS(&shape_angle.y, sVar4, 4, 0x400, 16);
            current.angle.y = shape_angle.y + -0x8000;
            if (mPlayerDistance < 200.0f && field_0xa70 == 0) {
                field_0xa8c++;
                if (field_0xa8c > 60) {
                    if (field_0xaa5 == 1) {
                        field_0xa70 = l_HIO.field_0x1c;
                    } else {
                        field_0xa70 = l_HIO.field_0x20;
                    }

                    setActionMode(4, 0);
                }
            } else {
                field_0xa8c = 0;
            }

            if (mPlayerDistance > 300.0f) {
                speedF = 0.0f;
                mActionMode2 = 5;
            }
            break;

        case 5:
            if (cM_rnd() < 0.5f) {
                mActionMode2 = 6;
                setBck(17, 2, 3.0f, 1.0f);
                current.angle.y = shape_angle.y + 0x4000;
            } else {
                mActionMode2 = 7;
                setBck(17, 2, 3.0f, -1.0f);
                current.angle.y = shape_angle.y + -0x4000;
            }

            field_0xa6c = cM_rndFX(20.0f) + 60.0f;
            speedF = 2.3f;
            break;

        case 7:
            setAwaitSound();
            cLib_addCalcAngleS(&shape_angle.y, sVar4, 4, 0x400, 16);
            current.angle.y = shape_angle.y + 0x4000;

            if (field_0xa6c == 0) {
                if (cM_rnd() < 0.5f) {
                    setBck(17, 2, 3.0f, 1.0f);
                    current.angle.y = shape_angle.y + -0x4000;
                    mActionMode2 = 6;
                }

                field_0xa6c = cM_rndFX(20.0f) + 90.0f;
            }

            if (mPlayerDistance < 200.0f) {
                mActionMode2 = 3;
            }

            if (mPlayerDistance > 400.0f) {
                mActionMode2 = 1;
            }
            break;

        case 6:
            setAwaitSound();
            cLib_addCalcAngleS(&shape_angle.y, sVar4, 4, 0x400, 16);
            current.angle.y = shape_angle.y + -0x4000;
            
            if (field_0xa6c == 0) {
                if (cM_rnd() < 0.5f) {
                    setBck(17, 2, 3.0f, -1.0f);
                    current.angle.y = shape_angle.y + 0x4000;
                    mActionMode2 = 7;
                }

                field_0xa6c = cM_rndFX(20.0f) + 60.0f;
            }

            if (mPlayerDistance < 200.0f) {
                mActionMode2 = 3;
            }

            if (mPlayerDistance > 400.0f) {
                mActionMode2 = 1;
            }
            break;

        case 103:
            mPlayerDistance = 3.0f;
            if (checkBck(19)) {
                mPlayerDistance = 10.0f;
            }

            if (abs(sVar5) < 0x2000) {
                if (cM_rnd() >= 0.5f) {
                    mActionMode2 = 107;
                    setBck(17, 2, mPlayerDistance, -1.0f);
                } else {
                    mActionMode2 = 106;
                    setBck(17, 2, mPlayerDistance, 1.0f);
                }
            } else if (sVar5 < 0) {
                mActionMode2 = 106;
                setBck(17, 2, mPlayerDistance, 1.0f);
            } else {
                mActionMode2 = 107;
                setBck(17, 2, mPlayerDistance, -1.0f);
            }

            field_0xa6c = cM_rndFX(20.0f) + 60.0f;
            break;

        case 105:
        case 106:
        case 107:
            setAwaitSound();
            speedF = 2.3f;
            cLib_addCalcAngleS(&shape_angle.y, sVar4, 4, 0x400, 16);

            if (mActionMode2 == 106) {
                if (iVar2 == 3) {
                    current.angle.y = shape_angle.y + 0x6000;
                } else if (iVar2 == 2) {
                    current.angle.y = shape_angle.y + 0x4000;
                } else {
                    current.angle.y = shape_angle.y + 0x3000;
                }
            } else if (iVar2 == 3) {
                current.angle.y = shape_angle.y + -0x6000;
            } else if (iVar2 == 2) {
                current.angle.y = shape_angle.y + -0x4000;
            } else {
                current.angle.y = shape_angle.y + -0x3000;
            }

            if (field_0xa6c == 0 && mpModelMorf2->checkFrame(0.0f)) {
                if (abs(sVar5) > 0x7800) {
                    field_0xa6c = cM_rndFX(20.0f) + 90.0f;
                    if (cM_rnd() < 0.5f) {
                        if (mActionMode2 == 106) {
                            setBck(17, 2, 3.0f, -1.0f);
                            mActionMode2 = 107;
                        } else {
                            setBck(17, 2, 3.0f, 1.0f);
                            mActionMode2 = 106;
                        }
                    }
                } else {
                    if (abs(sVar5) < 0x7000) {
                        if (mActionMode2 == 106) {
                            if (sVar5 > 0) {
                                setBck(17, 2, 3.0f, -1.0f);
                                mActionMode2 = 107;
                            }
                        } else if (sVar5 < 0) {
                            setBck(17, 2, 3.0f, 1.0f);
                            mActionMode2 = 106;
                        }
                    }
                }
            }

            if (checkMoveAngle() != 0) {
                mActionMode2 = 100;
            }

            if (iVar2 < 1) {
                mActionMode2 = 70;
            }

        // default:
            // if (mpModelMorf2->checkFrame(23.0f)) {
            //     mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M1, 0, -1);
            // }

            // if (mpModelMorf2->checkFrame(0.0f)) {
            //     mSound.startCreatureSound(Z2SE_EN_TN_FOOT_M2, 0, -1);
            // }

            cLib_addCalcAngleS(&shape_angle.y, sVar4, 4, 0x400, 16);
            current.angle.y = shape_angle.y;

            // if (mPlayerDistance < 700.0f) {
            //     mActionMode2 = 11;
            // }
    }

    if (mActionMode2 < 100) {
        checkStartAttackH();
        if (iVar2 == 3) {
            if (checkMoveAngle() != 0) {
                mActionMode2 = 100;
            } else {
                mActionMode2 = 103;
            }
        }
    }
}

/* 80625394-806255F0 006894 025C+00 1/1 0/0 0/0 .text            checkStartAttackH__8daB_TN_cFv */
void daB_TN_c::checkStartAttackH() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8062E7DC-8062E7E0 0001A8 0004+00 0/1 0/0 0/0 .rodata          @7243 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7243 = 72.0f;
COMPILER_STRIP_GATE(0x8062E7DC, &lit_7243);
#pragma pop

/* 8062E7E0-8062E7E4 0001AC 0004+00 0/2 0/0 0/0 .rodata          @7244 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7244 = 29.0f;
COMPILER_STRIP_GATE(0x8062E7E0, &lit_7244);
#pragma pop

/* 8062E7E4-8062E7E8 0001B0 0004+00 0/3 0/0 0/0 .rodata          @7245 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7245 = 11.0f;
COMPILER_STRIP_GATE(0x8062E7E4, &lit_7245);
#pragma pop

/* 8062E7E8-8062E7EC 0001B4 0004+00 0/3 0/0 0/0 .rodata          @7246 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7246 = 19.0f;
COMPILER_STRIP_GATE(0x8062E7E8, &lit_7246);
#pragma pop

/* 8062E7EC-8062E7F0 0001B8 0004+00 0/3 0/0 0/0 .rodata          @7247 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7247 = 22.0f;
COMPILER_STRIP_GATE(0x8062E7EC, &lit_7247);
#pragma pop

/* 8062E7F0-8062E7F4 0001BC 0004+00 0/1 0/0 0/0 .rodata          @7248 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7248 = 66.0f;
COMPILER_STRIP_GATE(0x8062E7F0, &lit_7248);
#pragma pop

/* 8062E7F4-8062E7F8 0001C0 0004+00 0/5 0/0 0/0 .rodata          @7249 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7249 = 26.0f;
COMPILER_STRIP_GATE(0x8062E7F4, &lit_7249);
#pragma pop

/* 806255F0-80625C74 006AF0 0684+00 1/1 0/0 0/0 .text            executeAttackH__8daB_TN_cFv */
void daB_TN_c::executeAttackH() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8062E7F8-8062E7FC 0001C4 0004+00 0/4 0/0 0/0 .rodata          @7293 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7293 = 4.0f;
COMPILER_STRIP_GATE(0x8062E7F8, &lit_7293);
#pragma pop

/* 8062E7FC-8062E800 0001C8 0004+00 0/1 0/0 0/0 .rodata          @7294 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7294 = 21.0f;
COMPILER_STRIP_GATE(0x8062E7FC, &lit_7294);
#pragma pop

/* 8062E800-8062E804 0001CC 0004+00 0/3 0/0 0/0 .rodata          @7295 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7295 = 9.0f;
COMPILER_STRIP_GATE(0x8062E800, &lit_7295);
#pragma pop

/* 80625C74-80625E40 007174 01CC+00 1/1 0/0 0/0 .text            executeAttackShieldH__8daB_TN_cFv
 */
void daB_TN_c::executeAttackShieldH() {
    // NONMATCHING
}

/* 80625E40-80626034 007340 01F4+00 1/1 0/0 0/0 .text            executeGuardH__8daB_TN_cFv */
void daB_TN_c::executeGuardH() {
    // NONMATCHING
}

/* 80626034-80626320 007534 02EC+00 1/1 0/0 0/0 .text            executeDamageH__8daB_TN_cFv */
void daB_TN_c::executeDamageH() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8062E804-8062E808 0001D0 0004+00 0/1 0/0 0/0 .rodata          @7807 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7807 = -179.0f;
COMPILER_STRIP_GATE(0x8062E804, &lit_7807);
#pragma pop

/* 8062E808-8062E80C 0001D4 0004+00 0/1 0/0 0/0 .rodata          @7808 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7808 = -342.0f;
COMPILER_STRIP_GATE(0x8062E808, &lit_7808);
#pragma pop

/* 8062E80C-8062E810 0001D8 0004+00 0/3 0/0 0/0 .rodata          @7809 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7809 = 37.0f;
COMPILER_STRIP_GATE(0x8062E80C, &lit_7809);
#pragma pop

/* 8062E810-8062E814 0001DC 0004+00 0/3 0/0 0/0 .rodata          @7810 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7810 = 6.0f;
COMPILER_STRIP_GATE(0x8062E810, &lit_7810);
#pragma pop

/* 8062E814-8062E818 0001E0 0004+00 0/1 0/0 0/0 .rodata          @7811 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7811 = -330.0f;
COMPILER_STRIP_GATE(0x8062E814, &lit_7811);
#pragma pop

/* 8062E818-8062E81C 0001E4 0004+00 0/1 0/0 0/0 .rodata          @7812 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7812 = 1250.0f;
COMPILER_STRIP_GATE(0x8062E818, &lit_7812);
#pragma pop

/* 8062E81C-8062E820 0001E8 0004+00 0/1 0/0 0/0 .rodata          @7813 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7813 = -380.0f;
COMPILER_STRIP_GATE(0x8062E81C, &lit_7813);
#pragma pop

/* 8062E820-8062E824 0001EC 0004+00 0/1 0/0 0/0 .rodata          @7814 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7814 = -270.0f;
COMPILER_STRIP_GATE(0x8062E820, &lit_7814);
#pragma pop

/* 8062E824-8062E828 0001F0 0004+00 0/2 0/0 0/0 .rodata          @7815 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7815 = -100.0f;
COMPILER_STRIP_GATE(0x8062E824, &lit_7815);
#pragma pop

/* 80626320-80627100 007820 0DE0+00 1/1 0/0 0/0 .text            executeChangeDemo__8daB_TN_cFv */
void daB_TN_c::executeChangeDemo() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8062E828-8062E82C 0001F4 0004+00 0/2 0/0 0/0 .rodata          @7949 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7949 = 45.0f;
COMPILER_STRIP_GATE(0x8062E828, &lit_7949);
#pragma pop

/* 80627100-80627790 008600 0690+00 1/1 0/0 0/0 .text            executeZakoChangeDemo__8daB_TN_cFv
 */
void daB_TN_c::executeZakoChangeDemo() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8062E82C-8062E830 0001F8 0004+00 0/2 0/0 0/0 .rodata          @8010 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8010 = 550.0f;
COMPILER_STRIP_GATE(0x8062E82C, &lit_8010);
#pragma pop

/* 80627790-8062799C 008C90 020C+00 1/1 0/0 0/0 .text            setWalkDir__8daB_TN_cFv */
void daB_TN_c::setWalkDir() {
    // NONMATCHING
}

/* 8062799C-80627CBC 008E9C 0320+00 6/5 0/0 0/0 .text            initChaseL__8daB_TN_cFi */
void daB_TN_c::initChaseL(int param_0) {
    // NONMATCHING
}

/* 80627CBC-80627D3C 0091BC 0080+00 4/4 0/0 0/0 .text            checkAttackAble__8daB_TN_cFv */
void daB_TN_c::checkAttackAble() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8062E830-8062E834 0001FC 0004+00 0/0 0/0 0/0 .rodata          @8049 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8049 = 47.0f / 10.0f;
COMPILER_STRIP_GATE(0x8062E830, &lit_8049);
#pragma pop

/* 8062E834-8062E838 000200 0004+00 0/0 0/0 0/0 .rodata          @8050 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8050 = 24.0f / 5.0f;
COMPILER_STRIP_GATE(0x8062E834, &lit_8050);
#pragma pop

/* 8062E838-8062E83C 000204 0004+00 0/3 0/0 0/0 .rodata          @8302 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8302 = 28.0f;
COMPILER_STRIP_GATE(0x8062E838, &lit_8302);
#pragma pop

/* 8062E83C-8062E840 000208 0004+00 0/2 0/0 0/0 .rodata          @8303 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8303 = 450.0f;
COMPILER_STRIP_GATE(0x8062E83C, &lit_8303);
#pragma pop

/* 8062E840-8062E844 00020C 0004+00 0/1 0/0 0/0 .rodata          @8304 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8304 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x8062E840, &lit_8304);
#pragma pop

/* 80627D3C-8062868C 00923C 0950+00 1/1 0/0 0/0 .text            checkNextMove__8daB_TN_cFv */
void daB_TN_c::checkNextMove() {
    // NONMATCHING
}

/* 8062868C-806292F8 009B8C 0C6C+00 2/1 0/0 0/0 .text            executeChaseL__8daB_TN_cFv */
void daB_TN_c::executeChaseL() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8062E844-8062E848 000210 0004+00 0/1 0/0 0/0 .rodata          @8590 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8590 = 13.0f;
COMPILER_STRIP_GATE(0x8062E844, &lit_8590);
#pragma pop

/* 8062E848-8062E84C 000214 0004+00 0/1 0/0 0/0 .rodata          @8591 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8591 = 27.0f;
COMPILER_STRIP_GATE(0x8062E848, &lit_8591);
#pragma pop

/* 8062E84C-8062E850 000218 0004+00 0/1 0/0 0/0 .rodata          @8592 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8592 = -4.0f;
COMPILER_STRIP_GATE(0x8062E84C, &lit_8592);
#pragma pop

/* 8062E850-8062E854 00021C 0004+00 0/1 0/0 0/0 .rodata          @8823 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8823 = 14.0f;
COMPILER_STRIP_GATE(0x8062E850, &lit_8823);
#pragma pop

/* 8062E854-8062E858 000220 0004+00 0/1 0/0 0/0 .rodata          @8824 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8824 = 52.0f;
COMPILER_STRIP_GATE(0x8062E854, &lit_8824);
#pragma pop

/* 8062E858-8062E85C 000224 0004+00 0/1 0/0 0/0 .rodata          @8825 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8825 = 38.0f;
COMPILER_STRIP_GATE(0x8062E858, &lit_8825);
#pragma pop

/* 8062E85C-8062E860 000228 0004+00 0/1 0/0 0/0 .rodata          @8826 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8826 = 53.0f;
COMPILER_STRIP_GATE(0x8062E85C, &lit_8826);
#pragma pop

/* 8062E860-8062E864 00022C 0004+00 0/1 0/0 0/0 .rodata          @8827 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8827 = 41.0f;
COMPILER_STRIP_GATE(0x8062E860, &lit_8827);
#pragma pop

/* 806292F8-80629D20 00A7F8 0A28+00 1/1 0/0 0/0 .text            executeAttackL__8daB_TN_cFv */
void daB_TN_c::executeAttackL() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8062E864-8062E868 000230 0004+00 0/2 0/0 0/0 .rodata          @8895 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8895 = 12.0f;
COMPILER_STRIP_GATE(0x8062E864, &lit_8895);
#pragma pop

/* 80629D20-80629FB0 00B220 0290+00 1/1 0/0 0/0 .text            executeAttackShieldL__8daB_TN_cFv
 */
void daB_TN_c::executeAttackShieldL() {
    // NONMATCHING
}

/* 80629FB0-8062A3D0 00B4B0 0420+00 1/1 0/0 0/0 .text            executeGuardL__8daB_TN_cFv */
void daB_TN_c::executeGuardL() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8062E868-8062E86C 000234 0004+00 0/1 0/0 0/0 .rodata          @9070 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9070 = 32.0f;
COMPILER_STRIP_GATE(0x8062E868, &lit_9070);
#pragma pop

/* 8062A3D0-8062A71C 00B8D0 034C+00 1/1 0/0 0/0 .text            executeDamageL__8daB_TN_cFv */
void daB_TN_c::executeDamageL() {
    // NONMATCHING
}

/* 8062A71C-8062A950 00BC1C 0234+00 1/1 0/0 0/0 .text            executeYoroke__8daB_TN_cFv */
void daB_TN_c::executeYoroke() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8062E86C-8062E870 000238 0004+00 0/2 0/0 0/0 .rodata          @9401 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9401 = -5.0f;
COMPILER_STRIP_GATE(0x8062E86C, &lit_9401);
#pragma pop

/* 8062E870-8062E874 00023C 0004+00 0/1 0/0 0/0 .rodata          @9402 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9402 = -217.0f;
COMPILER_STRIP_GATE(0x8062E870, &lit_9402);
#pragma pop

/* 8062E874-8062E878 000240 0004+00 0/1 0/0 0/0 .rodata          @9403 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9403 = -61.0f;
COMPILER_STRIP_GATE(0x8062E874, &lit_9403);
#pragma pop

/* 8062E878-8062E87C 000244 0004+00 0/1 0/0 0/0 .rodata          @9404 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9404 = 212.0f;
COMPILER_STRIP_GATE(0x8062E878, &lit_9404);
#pragma pop

/* 8062E87C-8062E880 000248 0004+00 0/1 0/0 0/0 .rodata          @9405 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9405 = 94.0f;
COMPILER_STRIP_GATE(0x8062E87C, &lit_9405);
#pragma pop

/* 8062E880-8062E884 00024C 0004+00 0/1 0/0 0/0 .rodata          @9406 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9406 = 103.0f;
COMPILER_STRIP_GATE(0x8062E880, &lit_9406);
#pragma pop

/* 8062E884-8062E888 000250 0004+00 0/1 0/0 0/0 .rodata          @9407 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9407 = 121.0f;
COMPILER_STRIP_GATE(0x8062E884, &lit_9407);
#pragma pop

/* 8062E888-8062E88C 000254 0004+00 0/1 0/0 0/0 .rodata          @9408 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9408 = 147.0f;
COMPILER_STRIP_GATE(0x8062E888, &lit_9408);
#pragma pop

/* 8062E88C-8062E890 000258 0004+00 0/1 0/0 0/0 .rodata          @9409 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9409 = 168.0f;
COMPILER_STRIP_GATE(0x8062E88C, &lit_9409);
#pragma pop

/* 8062E890-8062E894 00025C 0004+00 0/1 0/0 0/0 .rodata          @9410 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9410 = 289.0f;
COMPILER_STRIP_GATE(0x8062E890, &lit_9410);
#pragma pop

/* 8062E894-8062E898 000260 0004+00 0/1 0/0 0/0 .rodata          @9411 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9411 = 312.0f;
COMPILER_STRIP_GATE(0x8062E894, &lit_9411);
#pragma pop

/* 8062E898-8062E89C 000264 0004+00 0/3 0/0 0/0 .rodata          @9412 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9412 = -50.0f;
COMPILER_STRIP_GATE(0x8062E898, &lit_9412);
#pragma pop

/* 8062A950-8062B344 00BE50 09F4+00 1/1 0/0 0/0 .text            executeEnding__8daB_TN_cFv */
void daB_TN_c::executeEnding() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8062E89C-8062E8A0 000268 0004+00 0/1 0/0 0/0 .rodata          @9502 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9502 = 68.0f;
COMPILER_STRIP_GATE(0x8062E89C, &lit_9502);
#pragma pop

/* 8062B344-8062B6A8 00C844 0364+00 1/1 0/0 0/0 .text            executeZakoEnding__8daB_TN_cFv */
void daB_TN_c::executeZakoEnding() {
    // NONMATCHING
}

/* 8062B6A8-8062BA5C 00CBA8 03B4+00 2/1 0/0 0/0 .text            action__8daB_TN_cFv */
void daB_TN_c::action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8062E8A0-8062E8A4 00026C 0004+00 0/0 0/0 0/0 .rodata          @9572 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9572 = 0x3B449BA6;
COMPILER_STRIP_GATE(0x8062E8A0, &lit_9572);
#pragma pop

/* 8062E8A4-8062E8A8 000270 0004+00 0/1 0/0 0/0 .rodata          @9689 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9689 = 0x414A6666;
COMPILER_STRIP_GATE(0x8062E8A4, &lit_9689);
#pragma pop

/* 8062E8A8-8062E8AC 000274 0004+00 0/1 0/0 0/0 .rodata          @9690 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9690 = 0x4157851F;
COMPILER_STRIP_GATE(0x8062E8A8, &lit_9690);
#pragma pop

/* 8062E8AC-8062E8B0 000278 0004+00 0/1 0/0 0/0 .rodata          @9691 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9691 = 0x41A08F5C;
COMPILER_STRIP_GATE(0x8062E8AC, &lit_9691);
#pragma pop

/* 8062BA5C-8062BDCC 00CF5C 0370+00 1/1 0/0 0/0 .text            mtx_set__8daB_TN_cFv */
void daB_TN_c::mtx_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8062E8B0-8062E8B4 00027C 0004+00 0/1 0/0 0/0 .rodata          @9919 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9919 = 65.0f;
COMPILER_STRIP_GATE(0x8062E8B0, &lit_9919);
#pragma pop

/* 8062E8B4-8062E8B8 000280 0004+00 0/2 0/0 0/0 .rodata          @9920 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9920 = -20.0f;
COMPILER_STRIP_GATE(0x8062E8B4, &lit_9920);
#pragma pop

/* 8062E8B8-8062E8BC 000284 0004+00 0/1 0/0 0/0 .rodata          @9921 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9921 = -6.0f;
COMPILER_STRIP_GATE(0x8062E8B8, &lit_9921);
#pragma pop

/* 8062E8BC-8062E8C0 000288 0004+00 0/1 0/0 0/0 .rodata          @9922 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9922 = -10.0f;
COMPILER_STRIP_GATE(0x8062E8BC, &lit_9922);
#pragma pop

/* 8062BDCC-8062C5B4 00D2CC 07E8+00 1/1 0/0 0/0 .text            cc_set__8daB_TN_cFv */
void daB_TN_c::cc_set() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8062E8C0-8062E8C4 00028C 0004+00 1/1 0/0 0/0 .rodata          @9978 */
SECTION_RODATA static f32 const lit_9978 = 1.5f;
COMPILER_STRIP_GATE(0x8062E8C0, &lit_9978);

/* 8062E8C4-8062E8CC 000290 0004+04 1/1 0/0 0/0 .rodata          @9979 */
SECTION_RODATA static f32 const lit_9979[1 + 1 /* padding */] = {
    11.0f / 5.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8062E8C4, &lit_9979);

/* 8062C5B4-8062C7A0 00DAB4 01EC+00 1/1 0/0 0/0 .text            execute__8daB_TN_cFv */
void daB_TN_c::execute() {
    // NONMATCHING
}

/* 8062C7A0-8062C7C0 00DCA0 0020+00 2/1 0/0 0/0 .text            daB_TN_Execute__FP8daB_TN_c */
static void daB_TN_Execute(daB_TN_c* param_0) {
    // NONMATCHING
}

/* 8062C7C0-8062C7C8 00DCC0 0008+00 1/0 0/0 0/0 .text            daB_TN_IsDelete__FP8daB_TN_c */
static bool daB_TN_IsDelete(daB_TN_c* param_0) {
    return true;
}

/* 8062C7C8-8062C848 00DCC8 0080+00 1/1 0/0 0/0 .text            _delete__8daB_TN_cFv */
void daB_TN_c::_delete() {
    // NONMATCHING
}

/* 8062C848-8062C868 00DD48 0020+00 1/0 0/0 0/0 .text            daB_TN_Delete__FP8daB_TN_c */
static void daB_TN_Delete(daB_TN_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8062E8E8-8062E8E8 0002B4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8062E8ED = "B_tnp";
SECTION_DEAD static char const* const stringBase_8062E8F3 = "B_tnp2";
#pragma pop

/* 8062C868-8062CD10 00DD68 04A8+00 1/1 0/0 0/0 .text            CreateHeap__8daB_TN_cFv */
void daB_TN_c::CreateHeap() {
    // NONMATCHING
}

/* 8062CD10-8062CD58 00E210 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 8062CD58-8062CD78 00E258 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* actor) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8062E8CC-8062E8D4 000298 0008+00 0/1 0/0 0/0 .rodata          @10331 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_10331[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8062E8CC, &lit_10331);
#pragma pop

/* 8062E8E8-8062E8E8 0002B4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8062E8FA = "D_MN09";
#pragma pop

/* 8062CD78-8062D2F0 00E278 0578+00 1/1 0/0 0/0 .text            create__8daB_TN_cFv */
int daB_TN_c::create() {
    // NONMATCHING
    fopAcM_SetupActor(this, daB_TN_c);

    field_0xaa4 = fopAcM_GetParam(this);
    field_0xaa5 = fopAcM_GetParam(this) >> 8;

    if (field_0xaa5 != 1) {
        field_0xaa5 = 0;
    }

    if (field_0xaa5 == 0) {
        field_0xab4 = "B_tnp";
        if (dComIfGs_isStageMiddleBoss()) {
            return cPhs_ERROR_e;
        }
    } else {
        field_0xab4 = "B_tnp2";
        if (dComIfGs_isSwitch(field_0xaa4, fopAcM_GetRoomNo(this))) {
            return cPhs_ERROR_e;
        }
    }

    if (dComIfG_resLoad(&mPhase1, "B_tn") == cPhs_COMPLEATE_e && dComIfG_resLoad(&mPhase2, field_0xab4) == cPhs_COMPLEATE_e) {
        field_0xaa3 = fopAcM_GetParam(this) >> 16;
        if (field_0xaa3 > 4) {
            field_0xaa4 = 4;
        }

        field_0xaa6 = fopAcM_GetParam(this) >> 24;
        if (field_0xaa6 != 1) {
            field_0xaa6 = 0;
        }

        if (field_0xaa5 == 1) {
            if (!fopAcM_entrySolidHeap(this, useHeapInit, 0xb940)) {
                return cPhs_ERROR_e;
            }
        } else if (!fopAcM_entrySolidHeap(this, useHeapInit, 0xaa20)) {
            return cPhs_ERROR_e;
        }

        if (struct_8062F01C == 0) {
            struct_8062F01C = 1;
            field_0x562c = 1;
            l_HIO.field_0x4 = -1;
        }

        attention_info.flags = 4;
        fopAcM_SetMtx(this, mpModelMorf2->getModel()->getBaseTRMtx());
        fopAcM_SetMin(this, -200.0f, -200.0f, -200.0f);
        fopAcM_SetMax(this, 200.0f, 200.0f, 200.0f);

        mAcch.Set(&current.pos, &old.pos, this, 1, &mAcchCir, &speed, NULL, NULL);
        mAcchCir.SetWall(60.0f, 300.0f);
        health = 0x50;
        field_0x560 = 0x50;
    }
}

/* 8062D2F0-8062D624 00E7F0 0334+00 1/1 0/0 0/0 .text            __ct__8daB_TN_cFv */
daB_TN_c::daB_TN_c() {
    // NONMATCHING
}

/* 8062D624-8062D678 00EB24 0054+00 1/1 0/0 0/0 .text            __ct__9dCcD_SttsFv */
// dCcD_Stts::dCcD_Stts() {
extern "C" void __ct__9dCcD_SttsFv() {
    // NONMATCHING
}

/* 8062D678-8062D6FC 00EB78 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 8062D6FC-8062D78C 00EBFC 0090+00 1/1 0/0 0/0 .text            __dt__9dCcD_SttsFv */
// dCcD_Stts::~dCcD_Stts() {
extern "C" void __dt__9dCcD_SttsFv() {
    // NONMATCHING
}

/* 8062D78C-8062D7E8 00EC8C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 8062D7E8-8062D83C 00ECE8 0054+00 1/1 0/0 0/0 .text            __ct__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::dBgS_ObjAcch() {
extern "C" void __ct__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8062D83C-8062D8AC 00ED3C 0070+00 4/3 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8062D8AC-8062D91C 00EDAC 0070+00 2/1 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 8062D91C-8062D920 00EE1C 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 8062D920-8062D924 00EE20 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 8062D924-8062D944 00EE24 0020+00 1/0 0/0 0/0 .text            daB_TN_Create__FP8daB_TN_c */
static void daB_TN_Create(daB_TN_c* param_0) {
    // NONMATCHING
}

/* 8062D944-8062D98C 00EE44 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8062E8D4-8062E8D8 0002A0 0004+00 0/1 0/0 0/0 .rodata          @10688 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10688 = -12.0f;
COMPILER_STRIP_GATE(0x8062E8D4, &lit_10688);
#pragma pop

/* 8062E8D8-8062E8DC 0002A4 0004+00 0/1 0/0 0/0 .rodata          @10689 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10689 = -17.0f;
COMPILER_STRIP_GATE(0x8062E8D8, &lit_10689);
#pragma pop

/* 8062E8DC-8062E8E0 0002A8 0004+00 0/1 0/0 0/0 .rodata          @10690 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10690 = -30.0f;
COMPILER_STRIP_GATE(0x8062E8DC, &lit_10690);
#pragma pop

/* 8062E8E0-8062E8E4 0002AC 0004+00 0/1 0/0 0/0 .rodata          @10691 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10691 = -40.0f;
COMPILER_STRIP_GATE(0x8062E8E0, &lit_10691);
#pragma pop

/* 8062E8E4-8062E8E8 0002B0 0004+00 0/1 0/0 0/0 .rodata          @10692 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10692 = -15.0f;
COMPILER_STRIP_GATE(0x8062E8E4, &lit_10692);
#pragma pop

/* 8062D9D4-8062E16C 00EED4 0798+00 0/0 1/0 0/0 .text            __sinit_d_a_b_tn_cpp */
void __sinit_d_a_b_tn_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8062D9D4, __sinit_d_a_b_tn_cpp);
#pragma pop

/* 8062E16C-8062E174 00F66C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8062E16C() {
    // NONMATCHING
}

/* 8062E174-8062E17C 00F674 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8062E174() {
    // NONMATCHING
}

/* 8062E590-8062E5CC 00FA90 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 8062E5CC-8062E608 00FACC 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 8062E608-8062E620 00FB08 0018+00 2/2 0/0 0/0 .text            checkNowWolf__9daPy_py_cFv */
// void daPy_py_c::checkNowWolf() {
extern "C" void checkNowWolf__9daPy_py_cFv() {
    // NONMATCHING
}

/* 8062E8E8-8062E8E8 0002B4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
/* 8062EF10-8062EF30 -00001 0020+00 1/0 0/0 0/0 .data            l_daB_TN_Method */
static actor_method_class l_daB_TN_Method = {
    (process_method_func)daB_TN_Create,
    (process_method_func)daB_TN_Delete,
    (process_method_func)daB_TN_Execute,
    (process_method_func)daB_TN_IsDelete,
    (process_method_func)daB_TN_Draw,
};

/* 8062EF30-8062EF60 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_B_TN */
extern actor_process_profile_definition g_profile_B_TN = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_B_TN,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daB_TN_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  225,                    // mPriority
  &l_daB_TN_Method,       // sub_method
  0x00044000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

AUDIO_INSTANCES;
