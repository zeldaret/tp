/**
 * @file d_a_npc_gra.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_gra.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__11daNpc_grA_cFv();
extern "C" void __dt__Q211daNpc_grA_c21daNpc_GrA_prtclMngr_cFv();
extern "C" void __ct__Q211daNpc_grA_c21daNpc_GrA_prtclMngr_cFv();
extern "C" void __dt__11daNpc_grA_cFv();
extern "C" void create__11daNpc_grA_cFv();
extern "C" void CreateHeap__11daNpc_grA_cFv();
extern "C" void Delete__11daNpc_grA_cFv();
extern "C" void Execute__11daNpc_grA_cFv();
extern "C" void Draw__11daNpc_grA_cFv();
extern "C" void ctrlJoint__11daNpc_grA_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__11daNpc_grA_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_grA_cFP8J3DJointi();
extern "C" void setTagJump__11daNpc_grA_cFv();
extern "C" void setTagJump2__11daNpc_grA_cFv();
extern "C" void setHomeJump__11daNpc_grA_cFv();
extern "C" static void s_sub__FPvPv();
extern "C" void checkTagGraSub__11daNpc_grA_cFP10fopAc_ac_c();
extern "C" static void s_sub2__FPvPv();
extern "C" void checkTagGraSub2__11daNpc_grA_cFP10fopAc_ac_c();
extern "C" static void s_subShop__FPvPv();
extern "C" static void s_subGRD__FPvPv();
extern "C" static void s_subOnsenTaru__FPvPv();
extern "C" static void s_subCarry__FPvPv();
extern "C" static void s_subCrashed__FPvPv();
extern "C" void checkTagGraSubCrashed__11daNpc_grA_cFP10fopAc_ac_c();
extern "C" void setParam__11daNpc_grA_cFv();
extern "C" void main__11daNpc_grA_cFv();
extern "C" bool ctrlBtk__11daNpc_grA_cFv();
extern "C" void setAttnPos__11daNpc_grA_cFv();
extern "C" void setExpressionAnm__11daNpc_grA_cFib();
extern "C" void setExpressionBtp__11daNpc_grA_cFi();
extern "C" void setExpression__11daNpc_grA_cFif();
extern "C" void setMotionAnm__11daNpc_grA_cFif();
extern "C" void setMotion__11daNpc_grA_cFifi();
extern "C" bool drawDbgInfo__11daNpc_grA_cFv();
extern "C" void drawOtherMdls__11daNpc_grA_cFv();
extern "C" void getMode__11daNpc_grA_cFv();
extern "C" void getMode1__11daNpc_grA_cFv();
extern "C" void getTypeFromParam__11daNpc_grA_cFv();
extern "C" void getSwBit__11daNpc_grA_cFv();
extern "C" void isDelete__11daNpc_grA_cFv();
extern "C" void reset__11daNpc_grA_cFv();
extern "C" void playExpression__11daNpc_grA_cFv();
extern "C" void playMotion__11daNpc_grA_cFv();
extern "C" void chkAction__11daNpc_grA_cFM11daNpc_grA_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_grA_cFM11daNpc_grA_cFPCvPvPv_i();
extern "C" void selectAction__11daNpc_grA_cFv();
extern "C" void doEvent__11daNpc_grA_cFv();
extern "C" void setLookMode__11daNpc_grA_cFi();
extern "C" void lookat__11daNpc_grA_cFv();
extern "C" void chkFindPlayer__11daNpc_grA_cFv();
extern "C" void setExpressionTalkAfter__11daNpc_grA_cFv();
extern "C" void setPrtcl__11daNpc_grA_cFv();
extern "C" void setRollPrtcl__11daNpc_grA_cFRC4cXyzf();
extern "C" void setOtherObjMtx__11daNpc_grA_cFv();
extern "C" void ECut_talkSpa__11daNpc_grA_cFi();
extern "C" void ECut_grDSRoll__11daNpc_grA_cFi();
extern "C" void ECut_grDSGate__11daNpc_grA_cFi();
extern "C" void ECut_teachElevator__11daNpc_grA_cFi();
extern "C" void ECut_kickOut__11daNpc_grA_cFi();
extern "C" void ECut_noneLook__11daNpc_grA_cFi();
extern "C" void ECut_rescueRock__11daNpc_grA_cFi();
extern "C" void ECut_carrySpaWater__11daNpc_grA_cFi();
extern "C" void ECut_carrySpaWaterFailure__11daNpc_grA_cFi();
extern "C" void ECut_rollRockCrash__11daNpc_grA_cFi();
extern "C" void ECut_talkSpaWater__11daNpc_grA_cFi();
extern "C" void wait__11daNpc_grA_cFPv();
extern "C" void waitTW__11daNpc_grA_cFPv();
extern "C" void waitCheer__11daNpc_grA_cFPv();
extern "C" void waitGate__11daNpc_grA_cFPv();
extern "C" void waitKickOut__11daNpc_grA_cFPv();
extern "C" void moveRock__11daNpc_grA_cFPv();
extern "C" void spaWarm__11daNpc_grA_cFPv();
extern "C" void waitSpaWater__11daNpc_grA_cFPv();
extern "C" void waitSpaBuyer__11daNpc_grA_cFPv();
extern "C" void waitSpaBuyerTW__11daNpc_grA_cFPv();
extern "C" void beforeCrashWait__11daNpc_grA_cFPv();
extern "C" void crashRoll__11daNpc_grA_cFPv();
extern "C" void crashRollWait__11daNpc_grA_cFPv();
extern "C" void crashedWait__11daNpc_grA_cFPv();
extern "C" void waitBuyer__11daNpc_grA_cFPv();
extern "C" void talk__11daNpc_grA_cFPv();
extern "C" void test__11daNpc_grA_cFPv();
extern "C" static void daNpc_grA_Create__FPv();
extern "C" static void daNpc_grA_Delete__FPv();
extern "C" static void daNpc_grA_Execute__FPv();
extern "C" static void daNpc_grA_Draw__FPv();
extern "C" static bool daNpc_grA_IsDelete__FPv();
extern "C" void __dt__13daNpcF_Path_cFv();
extern "C" void __dt__16daNpcF_SPCurve_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__18daNpcF_ActorMngr_cFv();
extern "C" void __ct__18daNpcF_ActorMngr_cFv();
extern "C" void __dt__15daNpcF_Lookat_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__8daNpcF_cFv();
extern "C" void __ct__8daNpcF_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void setCollisions__8daNpcF_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void func_809C9AC8(void* _this, s16*);
extern "C" void func_809C9AE4(void* _this, int*);
extern "C" void func_809C9B00(void* _this, int, int);
extern "C" void __sinit_d_a_npc_gra_cpp();
extern "C" void getGraAngle__10daTagGra_cFv();
extern "C" void getGraPos__10daTagGra_cFv();
extern "C" void adjustShapeAngle__11daNpc_grA_cFv();
extern "C" void __dt__17daNpc_grA_Param_cFv();
extern "C" static void func_809C9D74();
extern "C" static void func_809C9D7C();
extern "C" u8 const m__17daNpc_grA_Param_c[132];
extern "C" extern char const* const d_a_npc_gra__stringBase0;
extern "C" void* mEvtCutNameList__11daNpc_grA_c[12];
extern "C" u8 mEvtCutList__11daNpc_grA_c[144];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcM_IsCreating__FUi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void reset__14dEvt_control_cFPv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
extern "C" void setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcT_ActorMngr_cFv();
extern "C" void getActorP__18daNpcT_ActorMngr_cFv();
extern "C" void initialize__18daNpcF_ActorMngr_cFv();
extern "C" void entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcF_ActorMngr_cFv();
extern "C" void getActorP__18daNpcF_ActorMngr_cFv();
extern "C" void initialize__16daNpcF_SPCurve_cFP5dPathi();
extern "C" void initialize__13daNpcF_Path_cFv();
extern "C" void setPathInfo__13daNpcF_Path_cFUcScUc();
extern "C" void reverse__13daNpcF_Path_cFv();
extern "C" void setNextIdx__13daNpcF_Path_cFv();
extern "C" void getDstPos__13daNpcF_Path_cF4cXyzR4cXyz();
extern "C" void initialize__15daNpcF_Lookat_cFv();
extern "C" void setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz();
extern "C" void calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii();
extern "C" void execute__8daNpcF_cFv();
extern "C" void draw__8daNpcF_cFiifP11_GXColorS10i();
extern "C" void setMtx__8daNpcF_cFv();
extern "C" void setMtx2__8daNpcF_cFv();
extern "C" void initialize__8daNpcF_cFv();
extern "C" void getTrnsfrmKeyAnmP__8daNpcF_cFPci();
extern "C" void getTexPtrnAnmP__8daNpcF_cFPci();
extern "C" void getTexSRTKeyAnmP__8daNpcF_cFPci();
extern "C" void setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii();
extern "C" void setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib();
extern "C" void setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi();
extern "C" void setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi();
extern "C" void setEnvTevColor__8daNpcF_cFv();
extern "C" void setRoomNo__8daNpcF_cFv();
extern "C" void playExpressionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void setLookatMtx__8daNpcF_cFiPif();
extern "C" void hitChk2__8daNpcF_cFP8dCcD_Cylii();
extern "C" void setDamage__8daNpcF_cFiii();
extern "C" void ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci();
extern "C" void orderEvent__8daNpcF_cFiPcUsUsUcUs();
extern "C" void changeEvent__8daNpcF_cFPcPcUsUs();
extern "C" void chkActorInSight__8daNpcF_cFP10fopAc_ac_cf();
extern "C" void chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void step__8daNpcF_cFsiii();
extern "C" void setAngle__8daNpcF_cFs();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void daNpcF_onTmpBit__FUl();
extern "C" void daNpcF_offTmpBit__FUl();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void setFloatingMessage__13dMeter2Info_cFUssb();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseS__FPsss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void cLib_chasePosXZ__FP4cXyzRC4cXyzf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleY__FRC3VecRC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcF_c[68];
extern "C" extern void* __vt__8daNpcF_c[18];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_meter2_info[248];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 809CA4B8-809CA4B8 000720 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809CA4B8 = "TALK_SPA";
SECTION_DEAD static char const* const stringBase_809CA4C1 = "TEACH_ELV";
SECTION_DEAD static char const* const stringBase_809CA4CB = "KICK_OUT";
SECTION_DEAD static char const* const stringBase_809CA4D4 = "KICK_OUT_BREAK";
SECTION_DEAD static char const* const stringBase_809CA4E3 = "NONE_LOOK";
SECTION_DEAD static char const* const stringBase_809CA4ED = "RESCUE_ROCK";
SECTION_DEAD static char const* const stringBase_809CA4F9 = "CARRY_SPA_WATER";
SECTION_DEAD static char const* const stringBase_809CA509 = "CARRY_SPA_WATER_FAILURE";
SECTION_DEAD static char const* const stringBase_809CA521 = "TALK_SPA_WATER";
SECTION_DEAD static char const* const stringBase_809CA530 = "ROLL_ROCK_CRASH";
SECTION_DEAD static char const* const stringBase_809CA540 = "grA_base";
SECTION_DEAD static char const* const stringBase_809CA549 = "grA_mdl";
SECTION_DEAD static char const* const stringBase_809CA551 = "grA_TW";
SECTION_DEAD static char const* const stringBase_809CA558 = "grA_SPA";
SECTION_DEAD static char const* const stringBase_809CA560 = "grA_Sdemo";
SECTION_DEAD static char const* const stringBase_809CA56A = "grA_Elv";
SECTION_DEAD static char const* const stringBase_809CA572 = "grA_Kick";
SECTION_DEAD static char const* const stringBase_809CA57B = "grA_Rock";
SECTION_DEAD static char const* const stringBase_809CA584 = "grA_RockD";
SECTION_DEAD static char const* const stringBase_809CA58E = "grA_SWD";
SECTION_DEAD static char const* const stringBase_809CA596 = "grA_onsen";
SECTION_DEAD static char const* const stringBase_809CA5A0 = "grA_onsn2";
SECTION_DEAD static char const* const stringBase_809CA5AA = "maroTaru";
SECTION_DEAD static char const* const stringBase_809CA5B3 = "grA_RCD";
SECTION_DEAD static char const* const stringBase_809CA5BB = "grA_gate";
SECTION_DEAD static char const* const stringBase_809CA5C4 = "grA_town";
SECTION_DEAD static char const* const stringBase_809CA5CD = "grA";
SECTION_DEAD static char const* const stringBase_809CA5D1 = "grA_spa";
SECTION_DEAD static char const* const stringBase_809CA5D9 = "";
SECTION_DEAD static char const* const stringBase_809CA5DA = "GRDS_ROLL";
SECTION_DEAD static char const* const stringBase_809CA5E4 = "GRDS_GATE";
#pragma pop

/* 809CA634-809CA65C 000020 0028+00 1/1 0/0 0/0 .data            l_bmdGetParamList */
SECTION_DATA static u8 l_bmdGetParamList[40] = {
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
    0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0F,
};

/* 809CA65C-809CA7F4 000048 0198+00 1/2 0/0 0/0 .data            l_bckGetParamList */
SECTION_DATA static u8 l_bckGetParamList[408] = {
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0F,
};

/* 809CA7F4-809CA874 0001E0 0080+00 1/1 0/0 0/0 .data            l_btpGetParamList */
SECTION_DATA static u8 l_btpGetParamList[128] = {
    0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00,
};

/* 809CA874-809CA87C 000260 0008+00 0/1 0/0 0/0 .data            l_btkGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_btkGetParamList[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 809CA87C-809CA8D4 000268 0058+00 0/3 0/0 0/0 .data            l_evtGetParamList */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_evtGetParamList[88] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
    0x03, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00,
    0x00, 0x06, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x05, 0x00,
    0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00,
    0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0D,
};
#pragma pop

/* 809CA8D4-809CA900 -00001 002C+00 0/3 0/0 0/0 .data            l_evtNames */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtNames[11] = {
    (void*)NULL,
    (void*)&d_a_npc_gra__stringBase0,
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x9),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x13),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x1C),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x2B),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x35),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x41),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x51),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x69),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x78),
};
#pragma pop

/* 809CA900-809CA920 0002EC 0020+00 1/0 0/0 0/0 .data            l_loadRes_GRAa */
SECTION_DATA static u8 l_loadRes_GRAa[32] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809CA920-809CA940 00030C 0020+00 1/0 0/0 0/0 .data            l_loadRes_GRA_Tw */
SECTION_DATA static u8 l_loadRes_GRA_Tw[32] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809CA940-809CA960 00032C 0020+00 1/0 0/0 0/0 .data            l_loadRes_GRA_Spa */
SECTION_DATA static u8 l_loadRes_GRA_Spa[32] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809CA960-809CA980 00034C 0020+00 1/0 0/0 0/0 .data            l_loadRes_GRA_SDEMO */
SECTION_DATA static u8 l_loadRes_GRA_SDEMO[32] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809CA980-809CA9A0 00036C 0020+00 1/0 0/0 0/0 .data            l_loadRes_GRA_GATE */
SECTION_DATA static u8 l_loadRes_GRA_GATE[32] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809CA9A0-809CA9C0 00038C 0020+00 1/0 0/0 0/0 .data            l_loadRes_GRA_KICKOUT */
SECTION_DATA static u8 l_loadRes_GRA_KICKOUT[32] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0A,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809CA9C0-809CA9E0 0003AC 0020+00 1/0 0/0 0/0 .data            l_loadRes_GRA_ROCK */
SECTION_DATA static u8 l_loadRes_GRA_ROCK[32] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809CA9E0-809CAA00 0003CC 0020+00 1/0 0/0 0/0 .data            l_loadRes_GRA_SPAWATER */
SECTION_DATA static u8 l_loadRes_GRA_SPAWATER[32] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0C, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809CAA00-809CAA20 0003EC 0020+00 1/0 0/0 0/0 .data            l_loadRes_GRA_SPABUYER */
SECTION_DATA static u8 l_loadRes_GRA_SPABUYER[32] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0F, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809CAA20-809CAA40 00040C 0020+00 1/0 0/0 0/0 .data            l_loadRes_GRA_SPABUYER_TW */
SECTION_DATA static u8 l_loadRes_GRA_SPABUYER_TW[32] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0F, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809CAA40-809CAA60 00042C 0020+00 1/0 0/0 0/0 .data            l_loadRes_GRA_ROCKCRASHER */
SECTION_DATA static u8 l_loadRes_GRA_ROCKCRASHER[32] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x0E, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809CAA60-809CAA80 00044C 0020+00 1/0 0/0 0/0 .data            l_loadRes_GRA_BUYER */
SECTION_DATA static u8 l_loadRes_GRA_BUYER[32] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809CAA80-809CAAA0 00046C 0020+00 1/0 0/0 0/0 .data            l_loadRes_GRA0 */
SECTION_DATA static u8 l_loadRes_GRA0[32] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 809CAAA0-809CAAD4 -00001 0034+00 2/2 0/0 0/0 .data            l_loadRes_list */
SECTION_DATA static void* l_loadRes_list[13] = {
    (void*)&l_loadRes_GRAa,
    (void*)&l_loadRes_GRA_Tw,
    (void*)&l_loadRes_GRA_Spa,
    (void*)&l_loadRes_GRA_SDEMO,
    (void*)&l_loadRes_GRA_GATE,
    (void*)&l_loadRes_GRA_KICKOUT,
    (void*)&l_loadRes_GRA_ROCK,
    (void*)&l_loadRes_GRA_SPAWATER,
    (void*)&l_loadRes_GRA_SPABUYER,
    (void*)&l_loadRes_GRA_SPABUYER_TW,
    (void*)&l_loadRes_GRA_ROCKCRASHER,
    (void*)&l_loadRes_GRA_BUYER,
    (void*)&l_loadRes_GRA0,
};

/* 809CAAD4-809CAB14 -00001 0040+00 5/9 0/0 0/0 .data            l_resNames */
SECTION_DATA static void* l_resNames[16] = {
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x88),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x91),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x99),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0xA0),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0xA8),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0xB2),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0xBA),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0xC3),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0xCC),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0xD6),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0xDE),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0xE8),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0xF2),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0xFB),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x103),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x10C),
};

/* 809CAB14-809CAB20 -00001 000C+00 1/1 0/0 0/0 .data            l_myName */
SECTION_DATA static void* l_myName[3] = {
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x115),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x119),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0xB2),
};

/* 809CAB20-809CAB50 -00001 0030+00 0/1 0/0 0/0 .data            mEvtCutNameList__11daNpc_grA_c */
#pragma push
#pragma force_active on
SECTION_DATA void* daNpc_grA_c::mEvtCutNameList[12] = {
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x121),
    (void*)&d_a_npc_gra__stringBase0,
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x122),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x12C),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x9),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x13),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x2B),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x35),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x41),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x51),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x69),
    (void*)(((char*)&d_a_npc_gra__stringBase0) + 0x78),
};
#pragma pop

/* 809CAB50-809CAB5C -00001 000C+00 0/1 0/0 0/0 .data            @4084 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4084[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_talkSpa__11daNpc_grA_cFi,
};
#pragma pop

/* 809CAB5C-809CAB68 -00001 000C+00 0/1 0/0 0/0 .data            @4085 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4085[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_grDSRoll__11daNpc_grA_cFi,
};
#pragma pop

/* 809CAB68-809CAB74 -00001 000C+00 0/1 0/0 0/0 .data            @4086 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4086[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_grDSGate__11daNpc_grA_cFi,
};
#pragma pop

/* 809CAB74-809CAB80 -00001 000C+00 0/1 0/0 0/0 .data            @4087 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4087[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_teachElevator__11daNpc_grA_cFi,
};
#pragma pop

/* 809CAB80-809CAB8C -00001 000C+00 0/1 0/0 0/0 .data            @4088 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4088[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_kickOut__11daNpc_grA_cFi,
};
#pragma pop

/* 809CAB8C-809CAB98 -00001 000C+00 0/1 0/0 0/0 .data            @4089 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4089[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_noneLook__11daNpc_grA_cFi,
};
#pragma pop

/* 809CAB98-809CABA4 -00001 000C+00 0/1 0/0 0/0 .data            @4090 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4090[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_rescueRock__11daNpc_grA_cFi,
};
#pragma pop

/* 809CABA4-809CABB0 -00001 000C+00 0/1 0/0 0/0 .data            @4091 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4091[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_carrySpaWater__11daNpc_grA_cFi,
};
#pragma pop

/* 809CABB0-809CABBC -00001 000C+00 0/1 0/0 0/0 .data            @4092 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4092[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_carrySpaWaterFailure__11daNpc_grA_cFi,
};
#pragma pop

/* 809CABBC-809CABC8 -00001 000C+00 0/1 0/0 0/0 .data            @4093 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4093[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_talkSpaWater__11daNpc_grA_cFi,
};
#pragma pop

/* 809CABC8-809CABD4 -00001 000C+00 0/1 0/0 0/0 .data            @4094 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4094[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_rollRockCrash__11daNpc_grA_cFi,
};
#pragma pop

/* 809CABD4-809CAC64 0005C0 0090+00 0/2 0/0 0/0 .data            mEvtCutList__11daNpc_grA_c */
#pragma push
#pragma force_active on
SECTION_DATA u8 daNpc_grA_c::mEvtCutList[144] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 809CAC64-809CAC70 -00001 000C+00 1/1 0/0 0/0 .data            @4625 */
SECTION_DATA static void* lit_4625[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__11daNpc_grA_cFPv,
};

/* 809CAC70-809CAC7C -00001 000C+00 1/1 0/0 0/0 .data            @4986 */
SECTION_DATA static void* lit_4986[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitSpaWater__11daNpc_grA_cFPv,
};

/* 809CAC7C-809CAC88 -00001 000C+00 1/1 0/0 0/0 .data            @5105 */
SECTION_DATA static void* lit_5105[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)moveRock__11daNpc_grA_cFPv,
};

/* 809CAC88-809CAC94 -00001 000C+00 1/1 0/0 0/0 .data            @5126 */
SECTION_DATA static void* lit_5126[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitSpaWater__11daNpc_grA_cFPv,
};

/* 809CAC94-809CACEC -00001 0058+00 1/1 0/0 0/0 .data            @5367 */
SECTION_DATA static void* lit_5367[22] = {
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0x90),
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0xAC),
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0xC8),
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0xE4),
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0x100),
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0x120),
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0x13C),
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0x15C),
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0x178),
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0x198),
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0x1B4),
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0x1D4),
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0x1F0),
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0x210),
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0x22C),
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0x24C),
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0x268),
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0x284),
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0x2A4),
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0x2C0),
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0x2F8),
    (void*)(((char*)setExpressionAnm__11daNpc_grA_cFib) + 0x2DC),
};

/* 809CACEC-809CAD28 -00001 003C+00 1/1 0/0 0/0 .data            @5405 */
SECTION_DATA static void* lit_5405[15] = {
    (void*)(((char*)setExpressionBtp__11daNpc_grA_cFi) + 0x8C),
    (void*)(((char*)setExpressionBtp__11daNpc_grA_cFi) + 0xB8),
    (void*)(((char*)setExpressionBtp__11daNpc_grA_cFi) + 0xB8),
    (void*)(((char*)setExpressionBtp__11daNpc_grA_cFi) + 0x94),
    (void*)(((char*)setExpressionBtp__11daNpc_grA_cFi) + 0xB8),
    (void*)(((char*)setExpressionBtp__11daNpc_grA_cFi) + 0xB8),
    (void*)(((char*)setExpressionBtp__11daNpc_grA_cFi) + 0x9C),
    (void*)(((char*)setExpressionBtp__11daNpc_grA_cFi) + 0xB8),
    (void*)(((char*)setExpressionBtp__11daNpc_grA_cFi) + 0xA4),
    (void*)(((char*)setExpressionBtp__11daNpc_grA_cFi) + 0xB8),
    (void*)(((char*)setExpressionBtp__11daNpc_grA_cFi) + 0xB8),
    (void*)(((char*)setExpressionBtp__11daNpc_grA_cFi) + 0xAC),
    (void*)(((char*)setExpressionBtp__11daNpc_grA_cFi) + 0xB8),
    (void*)(((char*)setExpressionBtp__11daNpc_grA_cFi) + 0xB8),
    (void*)(((char*)setExpressionBtp__11daNpc_grA_cFi) + 0xB8),
};

/* 809CAD28-809CAD9C -00001 0074+00 1/1 0/0 0/0 .data            @5469 */
SECTION_DATA static void* lit_5469[29] = {
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xFC),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xFC),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xFC),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0x9C),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xFC),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xA4),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xA4),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xFC),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xFC),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xAC),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xAC),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xAC),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xFC),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xB4),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xFC),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xB4),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xFC),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xFC),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xBC),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xFC),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xC4),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xFC),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xCC),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xFC),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xD4),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xDC),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xFC),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xE4),
    (void*)(((char*)setMotionAnm__11daNpc_grA_cFif) + 0xEC),
};

/* 809CAD9C-809CADC0 -00001 0024+00 1/1 0/0 0/0 .data            @5559 */
SECTION_DATA static void* lit_5559[9] = {
    (void*)(((char*)getTypeFromParam__11daNpc_grA_cFv) + 0x3C),
    (void*)(((char*)getTypeFromParam__11daNpc_grA_cFv) + 0x50),
    (void*)(((char*)getTypeFromParam__11daNpc_grA_cFv) + 0x58),
    (void*)(((char*)getTypeFromParam__11daNpc_grA_cFv) + 0x60),
    (void*)(((char*)getTypeFromParam__11daNpc_grA_cFv) + 0x68),
    (void*)(((char*)getTypeFromParam__11daNpc_grA_cFv) + 0x70),
    (void*)(((char*)getTypeFromParam__11daNpc_grA_cFv) + 0x78),
    (void*)(((char*)getTypeFromParam__11daNpc_grA_cFv) + 0xA4),
    (void*)(((char*)getTypeFromParam__11daNpc_grA_cFv) + 0xAC),
};

/* 809CADC0-809CADCC -00001 000C+00 0/1 0/0 0/0 .data            @5970 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5970[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)test__11daNpc_grA_cFPv,
};
#pragma pop

/* 809CADCC-809CADD8 -00001 000C+00 0/1 0/0 0/0 .data            @5974 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5974[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)spaWarm__11daNpc_grA_cFPv,
};
#pragma pop

/* 809CADD8-809CADE4 -00001 000C+00 0/0 0/0 0/0 .data            @5976 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5976[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitCheer__11daNpc_grA_cFPv,
};
#pragma pop

/* 809CADE4-809CADF0 -00001 000C+00 0/0 0/0 0/0 .data            @5978 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5978[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitGate__11daNpc_grA_cFPv,
};
#pragma pop

/* 809CADF0-809CADFC -00001 000C+00 0/0 0/0 0/0 .data            @5980 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5980[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitKickOut__11daNpc_grA_cFPv,
};
#pragma pop

/* 809CADFC-809CAE08 -00001 000C+00 0/0 0/0 0/0 .data            @5984 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5984[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_grA_cFPv,
};
#pragma pop

/* 809CAE08-809CAE14 -00001 000C+00 0/0 0/0 0/0 .data            @5986 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5986[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)moveRock__11daNpc_grA_cFPv,
};
#pragma pop

/* 809CAE14-809CAE20 -00001 000C+00 0/0 0/0 0/0 .data            @5988 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5988[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitSpaWater__11daNpc_grA_cFPv,
};
#pragma pop

/* 809CAE20-809CAE2C -00001 000C+00 0/0 0/0 0/0 .data            @5990 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5990[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitSpaBuyer__11daNpc_grA_cFPv,
};
#pragma pop

/* 809CAE2C-809CAE38 -00001 000C+00 0/0 0/0 0/0 .data            @5992 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5992[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitSpaBuyerTW__11daNpc_grA_cFPv,
};
#pragma pop

/* 809CAE38-809CAE44 -00001 000C+00 0/0 0/0 0/0 .data            @5996 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5996[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)beforeCrashWait__11daNpc_grA_cFPv,
};
#pragma pop

/* 809CAE44-809CAE50 -00001 000C+00 0/0 0/0 0/0 .data            @5998 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5998[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)crashRoll__11daNpc_grA_cFPv,
};
#pragma pop

/* 809CAE50-809CAE5C -00001 000C+00 0/0 0/0 0/0 .data            @6000 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6000[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)crashRollWait__11daNpc_grA_cFPv,
};
#pragma pop

/* 809CAE5C-809CAE68 -00001 000C+00 0/0 0/0 0/0 .data            @6002 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6002[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)crashedWait__11daNpc_grA_cFPv,
};
#pragma pop

/* 809CAE68-809CAE74 -00001 000C+00 0/0 0/0 0/0 .data            @6006 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6006[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitBuyer__11daNpc_grA_cFPv,
};
#pragma pop

/* 809CAE74-809CAE80 -00001 000C+00 0/0 0/0 0/0 .data            @6008 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6008[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_grA_cFPv,
};
#pragma pop

/* 809CAE80-809CAE8C -00001 000C+00 0/1 0/0 0/0 .data            @6012 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6012[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitTW__11daNpc_grA_cFPv,
};
#pragma pop

/* 809CAE8C-809CAE98 -00001 000C+00 0/1 0/0 0/0 .data            @6014 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6014[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_grA_cFPv,
};
#pragma pop

/* 809CAE98-809CAEC8 -00001 0030+00 1/1 0/0 0/0 .data            @6017 */
SECTION_DATA static void* lit_6017[12] = {
    (void*)(((char*)selectAction__11daNpc_grA_cFv) + 0x264),
    (void*)(((char*)selectAction__11daNpc_grA_cFv) + 0x264),
    (void*)(((char*)selectAction__11daNpc_grA_cFv) + 0x7C),
    (void*)(((char*)selectAction__11daNpc_grA_cFv) + 0x98),
    (void*)(((char*)selectAction__11daNpc_grA_cFv) + 0xB4),
    (void*)(((char*)selectAction__11daNpc_grA_cFv) + 0xD0),
    (void*)(((char*)selectAction__11daNpc_grA_cFv) + 0xEC),
    (void*)(((char*)selectAction__11daNpc_grA_cFv) + 0x130),
    (void*)(((char*)selectAction__11daNpc_grA_cFv) + 0x14C),
    (void*)(((char*)selectAction__11daNpc_grA_cFv) + 0x168),
    (void*)(((char*)selectAction__11daNpc_grA_cFv) + 0x184),
    (void*)(((char*)selectAction__11daNpc_grA_cFv) + 0x220),
};

/* 809CAEC8-809CAED4 -00001 000C+00 0/1 0/0 0/0 .data            @6031 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6031[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_grA_cFPv,
};
#pragma pop

/* 809CAED4-809CAEE0 -00001 000C+00 0/1 0/0 0/0 .data            @6041 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_6041[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_grA_cFPv,
};
#pragma pop

/* 809CAEE0-809CAF08 -00001 0028+00 1/1 0/0 0/0 .data            @6281 */
SECTION_DATA static void* lit_6281[10] = {
    (void*)(((char*)setExpressionTalkAfter__11daNpc_grA_cFv) + 0xB0),
    (void*)(((char*)setExpressionTalkAfter__11daNpc_grA_cFv) + 0xB0),
    (void*)(((char*)setExpressionTalkAfter__11daNpc_grA_cFv) + 0x70),
    (void*)(((char*)setExpressionTalkAfter__11daNpc_grA_cFv) + 0x90),
    (void*)(((char*)setExpressionTalkAfter__11daNpc_grA_cFv) + 0xB0),
    (void*)(((char*)setExpressionTalkAfter__11daNpc_grA_cFv) + 0x30),
    (void*)(((char*)setExpressionTalkAfter__11daNpc_grA_cFv) + 0xCC),
    (void*)(((char*)setExpressionTalkAfter__11daNpc_grA_cFv) + 0xB0),
    (void*)(((char*)setExpressionTalkAfter__11daNpc_grA_cFv) + 0xB0),
    (void*)(((char*)setExpressionTalkAfter__11daNpc_grA_cFv) + 0x50),
};

/* 809CAF08-809CAF28 0008F4 0020+00 1/1 0/0 0/0 .data            l_offsetHeight */
SECTION_DATA static u8 l_offsetHeight[32] = {
    0xB6, 0xB6, 0xBA, 0xBE, 0xC6, 0xCE, 0xCE, 0xCE, 0xCA, 0xCA, 0xC6, 0xC2, 0xBE, 0xBA, 0xB6, 0xB6,
    0xBA, 0xBA, 0xBE, 0xC6, 0xCA, 0xCE, 0xD1, 0xCE, 0xC6, 0xBA, 0xCA, 0xCE, 0xCA, 0xBE, 0xB6, 0xB6,
};

/* 809CAF28-809CB06C -00001 0144+00 1/1 0/0 0/0 .data            @7378 */
SECTION_DATA static void* lit_7378[81] = {
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x3B0),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x4B0),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x4D4),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x594),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x4F4),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x594),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x5B8),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x634),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x760),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x810),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x760),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x820),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x818),
};

/* 809CB06C-809CB1B0 -00001 0144+00 1/1 0/0 0/0 .data            @7377 */
SECTION_DATA static void* lit_7377[81] = {
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x90),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x134),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x148),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x1DC),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x1F0),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x214),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x228),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x238),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x278),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x298),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x2C8),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x390),
    (void*)(((char*)ECut_carrySpaWater__11daNpc_grA_cFi) + 0x31C),
};

/* 809CB1B0-809CB1D0 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_grA_MethodTable */
static actor_method_class daNpc_grA_MethodTable = {
    (process_method_func)daNpc_grA_Create__FPv,
    (process_method_func)daNpc_grA_Delete__FPv,
    (process_method_func)daNpc_grA_Execute__FPv,
    (process_method_func)daNpc_grA_IsDelete__FPv,
    (process_method_func)daNpc_grA_Draw__FPv,
};

/* 809CB1D0-809CB200 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_GRA */
extern actor_process_profile_definition g_profile_NPC_GRA = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_GRA,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpc_grA_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  306,                    // mPriority
  &daNpc_grA_MethodTable, // sub_method
  0x00044100,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 809CB200-809CB248 000BEC 0048+00 2/2 0/0 0/0 .data            __vt__11daNpc_grA_c */
SECTION_DATA extern void* __vt__11daNpc_grA_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_grA_cFv,
    (void*)setParam__11daNpc_grA_cFv,
    (void*)main__11daNpc_grA_cFv,
    (void*)ctrlBtk__11daNpc_grA_cFv,
    (void*)adjustShapeAngle__11daNpc_grA_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__11daNpc_grA_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__11daNpc_grA_cFib,
    (void*)setExpressionBtp__11daNpc_grA_cFi,
    (void*)setExpression__11daNpc_grA_cFif,
    (void*)setMotionAnm__11daNpc_grA_cFif,
    (void*)setMotion__11daNpc_grA_cFifi,
    (void*)drawDbgInfo__11daNpc_grA_cFv,
    (void*)drawOtherMdls__11daNpc_grA_cFv,
};

/* 809CB248-809CB254 000C34 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 809CB254-809CB278 000C40 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809C9D7C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809C9D74,
};

/* 809CB278-809CB284 000C64 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 809CB284-809CB290 000C70 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 809CB290-809CB29C 000C7C 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 809CB29C-809CB2A8 000C88 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 809CB2A8-809CB2B4 000C94 000C+00 4/4 0/0 0/0 .data            __vt__16daNpcF_SPCurve_c */
SECTION_DATA extern void* __vt__16daNpcF_SPCurve_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__16daNpcF_SPCurve_cFv,
};

/* 809CB2B4-809CB2C0 000CA0 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcF_Path_c */
SECTION_DATA extern void* __vt__13daNpcF_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcF_Path_cFv,
};

/* 809CB2C0-809CB2CC 000CAC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 809CB2CC-809CB2D8 000CB8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 809CB2D8-809CB2E4 000CC4 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 809BE94C-809BEB24 0000EC 01D8+00 1/1 0/0 0/0 .text            __ct__11daNpc_grA_cFv */
daNpc_grA_c::daNpc_grA_c() {
    // NONMATCHING
}

/* 809BEB24-809BEB60 0002C4 003C+00 2/2 0/0 0/0 .text
 * __dt__Q211daNpc_grA_c21daNpc_GrA_prtclMngr_cFv               */
daNpc_grA_c::daNpc_GrA_prtclMngr_c::~daNpc_GrA_prtclMngr_c() {
    // NONMATCHING
}

/* 809BEB60-809BEB64 000300 0004+00 1/1 0/0 0/0 .text
 * __ct__Q211daNpc_grA_c21daNpc_GrA_prtclMngr_cFv               */
daNpc_grA_c::daNpc_GrA_prtclMngr_c::daNpc_GrA_prtclMngr_c() {
    /* empty function */
}

/* 809BEB64-809BEDA4 000304 0240+00 1/0 0/0 0/0 .text            __dt__11daNpc_grA_cFv */
daNpc_grA_c::~daNpc_grA_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809C9D98-809C9E1C 000000 0084+00 27/27 0/0 0/0 .rodata          m__17daNpc_grA_Param_c */
SECTION_RODATA u8 const daNpc_grA_Param_c::m[132] = {
    0x42, 0xB4, 0x00, 0x00, 0xC0, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x44, 0x54, 0x80,
    0x00, 0x43, 0x7F, 0x00, 0x00, 0x43, 0x8C, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00, 0x42, 0xC8,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0xC1,
    0xA0, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
    0xC2, 0x20, 0x00, 0x00, 0x3E, 0xCC, 0xCC, 0xCD, 0x41, 0x40, 0x00, 0x00, 0x00, 0x04, 0x00,
    0x06, 0x00, 0x06, 0x00, 0x06, 0x42, 0x70, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96,
    0x00, 0x00, 0xC3, 0x96, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x40, 0xC0, 0x00, 0x00, 0x40, 0x40, 0x00, 0x00,
    0x3E, 0x2E, 0x14, 0x7B, 0x03, 0x00, 0x00, 0x04, 0x3F, 0xAC, 0xCC, 0xCD,
};
COMPILER_STRIP_GATE(0x809C9D98, &daNpc_grA_Param_c::m);

/* 809C9E1C-809C9E20 000084 0004+00 0/2 0/0 0/0 .rodata          @4523 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4523 = -300.0f;
COMPILER_STRIP_GATE(0x809C9E1C, &lit_4523);
#pragma pop

/* 809C9E20-809C9E24 000088 0004+00 0/1 0/0 0/0 .rodata          @4524 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4524 = -50.0f;
COMPILER_STRIP_GATE(0x809C9E20, &lit_4524);
#pragma pop

/* 809C9E24-809C9E28 00008C 0004+00 0/3 0/0 0/0 .rodata          @4525 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4525 = 300.0f;
COMPILER_STRIP_GATE(0x809C9E24, &lit_4525);
#pragma pop

/* 809C9E28-809C9E2C 000090 0004+00 0/1 0/0 0/0 .rodata          @4526 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4526 = 450.0f;
COMPILER_STRIP_GATE(0x809C9E28, &lit_4526);
#pragma pop

/* 809C9E2C-809C9E30 000094 0004+00 1/3 0/0 0/0 .rodata          @4527 */
SECTION_RODATA static f32 const lit_4527 = 120.0f;
COMPILER_STRIP_GATE(0x809C9E2C, &lit_4527);

/* 809BEDA4-809BF0A8 000544 0304+00 1/1 0/0 0/0 .text            create__11daNpc_grA_cFv */
void daNpc_grA_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809C9E30-809C9E34 000098 0004+00 4/11 0/0 0/0 .rodata          @4610 */
SECTION_RODATA static f32 const lit_4610 = 1.0f;
COMPILER_STRIP_GATE(0x809C9E30, &lit_4610);

/* 809C9E34-809C9E38 00009C 0004+00 10/25 0/0 0/0 .rodata          @4611 */
SECTION_RODATA static u8 const lit_4611[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809C9E34, &lit_4611);

/* 809BF0A8-809BF418 000848 0370+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_grA_cFv */
void daNpc_grA_c::CreateHeap() {
    // NONMATCHING
}

/* 809BF418-809BF44C 000BB8 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_grA_cFv */
void daNpc_grA_c::Delete() {
    // NONMATCHING
}

/* 809BF44C-809BF490 000BEC 0044+00 2/2 0/0 0/0 .text            Execute__11daNpc_grA_cFv */
void daNpc_grA_c::Execute() {
    // NONMATCHING
}

/* 809BF490-809BF504 000C30 0074+00 1/1 0/0 0/0 .text            Draw__11daNpc_grA_cFv */
void daNpc_grA_c::Draw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809C9E38-809C9E44 0000A0 000C+00 1/1 0/0 0/0 .rodata          @4634 */
SECTION_RODATA static u8 const lit_4634[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};
COMPILER_STRIP_GATE(0x809C9E38, &lit_4634);

/* 809BF504-809BF738 000CA4 0234+00 1/1 0/0 0/0 .text
 * ctrlJoint__11daNpc_grA_cFP8J3DJointP8J3DModel                */
void daNpc_grA_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    // NONMATCHING
}

/* 809BF738-809BF758 000ED8 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_grA_cFP10fopAc_ac_c              */
void daNpc_grA_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809BF758-809BF7A4 000EF8 004C+00 2/2 0/0 0/0 .text ctrlJointCallBack__11daNpc_grA_cFP8J3DJointi
 */
void daNpc_grA_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 809BF7A4-809BF8A0 000F44 00FC+00 1/1 0/0 1/1 .text            setTagJump__11daNpc_grA_cFv */
void daNpc_grA_c::setTagJump() {
    // NONMATCHING
}

/* 809BF8A0-809BF99C 001040 00FC+00 2/2 0/0 0/0 .text            setTagJump2__11daNpc_grA_cFv */
void daNpc_grA_c::setTagJump2() {
    // NONMATCHING
}

/* 809BF99C-809BFA88 00113C 00EC+00 1/1 0/0 1/1 .text            setHomeJump__11daNpc_grA_cFv */
void daNpc_grA_c::setHomeJump() {
    // NONMATCHING
}

/* 809BFA88-809BFAF4 001228 006C+00 2/2 0/0 0/0 .text            s_sub__FPvPv */
static void s_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 809BFAF4-809BFB54 001294 0060+00 1/1 0/0 0/0 .text checkTagGraSub__11daNpc_grA_cFP10fopAc_ac_c
 */
void daNpc_grA_c::checkTagGraSub(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809BFB54-809BFBC0 0012F4 006C+00 1/1 0/0 0/0 .text            s_sub2__FPvPv */
static void s_sub2(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 809BFBC0-809BFC00 001360 0040+00 1/1 0/0 0/0 .text checkTagGraSub2__11daNpc_grA_cFP10fopAc_ac_c
 */
void daNpc_grA_c::checkTagGraSub2(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809BFC00-809BFC4C 0013A0 004C+00 1/1 0/0 0/0 .text            s_subShop__FPvPv */
static void s_subShop(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 809BFC4C-809BFC98 0013EC 004C+00 1/1 0/0 0/0 .text            s_subGRD__FPvPv */
static void s_subGRD(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 809BFC98-809BFD04 001438 006C+00 1/1 0/0 0/0 .text            s_subOnsenTaru__FPvPv */
static void s_subOnsenTaru(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 809BFD04-809BFD60 0014A4 005C+00 2/2 0/0 0/0 .text            s_subCarry__FPvPv */
static void s_subCarry(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 809BFD60-809BFDCC 001500 006C+00 2/2 0/0 0/0 .text            s_subCrashed__FPvPv */
static void s_subCrashed(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 809BFDCC-809BFDFC 00156C 0030+00 1/1 0/0 0/0 .text
 * checkTagGraSubCrashed__11daNpc_grA_cFP10fopAc_ac_c           */
void daNpc_grA_c::checkTagGraSubCrashed(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809BFDFC-809C0038 00159C 023C+00 1/0 0/0 0/0 .text            setParam__11daNpc_grA_cFv */
void daNpc_grA_c::setParam() {
    // NONMATCHING
}

/* 809C0038-809C0298 0017D8 0260+00 1/0 0/0 0/0 .text            main__11daNpc_grA_cFv */
void daNpc_grA_c::main() {
    // NONMATCHING
}

/* 809C0298-809C02A0 001A38 0008+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpc_grA_cFv */
bool daNpc_grA_c::ctrlBtk() {
    return false;
}

/* ############################################################################################## */
/* 809C9E44-809C9E48 0000AC 0004+00 0/1 0/0 0/0 .rodata          @5317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5317 = 15.0f;
COMPILER_STRIP_GATE(0x809C9E44, &lit_5317);
#pragma pop

/* 809C9E48-809C9E4C 0000B0 0004+00 0/1 0/0 0/0 .rodata          @5318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5318 = 25.0f;
COMPILER_STRIP_GATE(0x809C9E48, &lit_5318);
#pragma pop

/* 809C9E4C-809C9E50 0000B4 0004+00 0/3 0/0 0/0 .rodata          @5319 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5319 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x809C9E4C, &lit_5319);
#pragma pop

/* 809C9E50-809C9E58 0000B8 0004+04 0/1 0/0 0/0 .rodata          @5320 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5320[1 + 1 /* padding */] = {
    125.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x809C9E50, &lit_5320);
#pragma pop

/* 809C9E58-809C9E60 0000C0 0008+00 0/3 0/0 0/0 .rodata          @5321 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5321[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9E58, &lit_5321);
#pragma pop

/* 809C9E60-809C9E68 0000C8 0008+00 0/3 0/0 0/0 .rodata          @5322 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5322[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9E60, &lit_5322);
#pragma pop

/* 809C9E68-809C9E70 0000D0 0008+00 0/3 0/0 0/0 .rodata          @5323 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5323[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9E68, &lit_5323);
#pragma pop

/* 809C9E70-809C9E74 0000D8 0004+00 0/2 0/0 0/0 .rodata          @5324 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5324 = 215.0f;
COMPILER_STRIP_GATE(0x809C9E70, &lit_5324);
#pragma pop

/* 809C9E74-809C9E78 0000DC 0004+00 0/2 0/0 0/0 .rodata          @5325 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5325 = -80.0f;
COMPILER_STRIP_GATE(0x809C9E74, &lit_5325);
#pragma pop

/* 809C9E78-809C9E7C 0000E0 0004+00 0/2 0/0 0/0 .rodata          @5326 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5326 = 150.0f;
COMPILER_STRIP_GATE(0x809C9E78, &lit_5326);
#pragma pop

/* 809CB338-809CB344 000048 000C+00 1/1 0/0 0/0 .bss             @4083 */
static u8 lit_4083[12];

/* 809CB344-809CB348 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 809CB348-809CB358 000058 000C+04 0/1 0/0 0/0 .bss             @5080 */
#pragma push
#pragma force_active on
static u8 lit_5080[12 + 4 /* padding */];
#pragma pop

/* 809CB358-809CB364 000068 000C+00 0/1 0/0 0/0 .bss             eyeOffset$5079 */
#pragma push
#pragma force_active on
static u8 eyeOffset[12];
#pragma pop

/* 809C02A0-809C0948 001A40 06A8+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_grA_cFv */
void daNpc_grA_c::setAttnPos() {
    // NONMATCHING
}

/* 809C0948-809C0CE4 0020E8 039C+00 2/0 0/0 0/0 .text            setExpressionAnm__11daNpc_grA_cFib
 */
void daNpc_grA_c::setExpressionAnm(int param_0, bool param_1) {
    // NONMATCHING
}

/* 809C0CE4-809C0E18 002484 0134+00 2/0 0/0 0/0 .text            setExpressionBtp__11daNpc_grA_cFi
 */
void daNpc_grA_c::setExpressionBtp(int param_0) {
    // NONMATCHING
}

/* 809C0E18-809C0E44 0025B8 002C+00 1/0 0/0 0/0 .text            setExpression__11daNpc_grA_cFif */
void daNpc_grA_c::setExpression(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 809C0E44-809C1018 0025E4 01D4+00 2/0 0/0 0/0 .text            setMotionAnm__11daNpc_grA_cFif */
bool daNpc_grA_c::setMotionAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 809C1018-809C105C 0027B8 0044+00 1/0 0/0 0/0 .text            setMotion__11daNpc_grA_cFifi */
void daNpc_grA_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 809C105C-809C1064 0027FC 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_grA_cFv */
bool daNpc_grA_c::drawDbgInfo() {
    return false;
}

/* 809C1064-809C1154 002804 00F0+00 1/0 0/0 0/0 .text            drawOtherMdls__11daNpc_grA_cFv */
void daNpc_grA_c::drawOtherMdls() {
    // NONMATCHING
}

/* 809C1154-809C1160 0028F4 000C+00 4/4 0/0 0/0 .text            getMode__11daNpc_grA_cFv */
void daNpc_grA_c::getMode() {
    // NONMATCHING
}

/* 809C1160-809C116C 002900 000C+00 4/4 0/0 1/1 .text            getMode1__11daNpc_grA_cFv */
u8 daNpc_grA_c::getMode1() {
    // NONMATCHING
    return fopAcM_GetParam(this) & 0xFF00 >> 8;
}

/* 809C116C-809C1238 00290C 00CC+00 2/1 0/0 0/0 .text            getTypeFromParam__11daNpc_grA_cFv
 */
void daNpc_grA_c::getTypeFromParam() {
    // NONMATCHING
}

/* 809C1238-809C1244 0029D8 000C+00 1/1 0/0 0/0 .text            getSwBit__11daNpc_grA_cFv */
void daNpc_grA_c::getSwBit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CA4B8-809CA4B8 000720 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809CA5EE = "F_SP109";
#pragma pop

/* 809C1244-809C13D8 0029E4 0194+00 1/1 0/0 0/0 .text            isDelete__11daNpc_grA_cFv */
void daNpc_grA_c::isDelete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809C9E7C-809C9E80 0000E4 0004+00 0/3 0/0 0/0 .rodata          @5740 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5740 = 100.0f;
COMPILER_STRIP_GATE(0x809C9E7C, &lit_5740);
#pragma pop

/* 809C9E80-809C9E84 0000E8 0004+00 0/3 0/0 0/0 .rodata          @5741 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5741 = -150.0f;
COMPILER_STRIP_GATE(0x809C9E80, &lit_5741);
#pragma pop

/* 809CA4B8-809CA4B8 000720 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809CA5F6 = "F_SP121";
#pragma pop

/* 809C13D8-809C1990 002B78 05B8+00 1/1 0/0 0/0 .text            reset__11daNpc_grA_cFv */
void daNpc_grA_c::reset() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809C9E84-809C9E90 0000EC 000C+00 0/1 0/0 0/0 .rodata          @5745 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5745[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809C9E84, &lit_5745);
#pragma pop

/* 809C9E90-809C9E9C 0000F8 000C+00 0/1 0/0 0/0 .rodata          @5746 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5746[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9E90, &lit_5746);
#pragma pop

/* 809C9E9C-809C9EA4 000104 0008+00 0/1 0/0 0/0 .rodata          @5747 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5747[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9E9C, &lit_5747);
#pragma pop

/* 809C9EA4-809C9EB0 00010C 000C+00 0/1 0/0 0/0 .rodata          @5748 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5748[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809C9EA4, &lit_5748);
#pragma pop

/* 809C9EB0-809C9EBC 000118 000C+00 0/1 0/0 0/0 .rodata          @5749 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5749[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9EB0, &lit_5749);
#pragma pop

/* 809C9EBC-809C9EC4 000124 0008+00 0/1 0/0 0/0 .rodata          @5750 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5750[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9EBC, &lit_5750);
#pragma pop

/* 809C9EC4-809C9ED0 00012C 000C+00 0/1 0/0 0/0 .rodata          @5751 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5751[12] = {
    0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809C9EC4, &lit_5751);
#pragma pop

/* 809C9ED0-809C9EDC 000138 000C+00 0/1 0/0 0/0 .rodata          @5752 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5752[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9ED0, &lit_5752);
#pragma pop

/* 809C9EDC-809C9EE4 000144 0008+00 0/1 0/0 0/0 .rodata          @5753 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5753[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9EDC, &lit_5753);
#pragma pop

/* 809C9EE4-809C9EF0 00014C 000C+00 0/1 0/0 0/0 .rodata          @5754 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5754[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809C9EE4, &lit_5754);
#pragma pop

/* 809C9EF0-809C9EFC 000158 000C+00 0/1 0/0 0/0 .rodata          @5755 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5755[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9EF0, &lit_5755);
#pragma pop

/* 809C9EFC-809C9F04 000164 0008+00 0/1 0/0 0/0 .rodata          @5756 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5756[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9EFC, &lit_5756);
#pragma pop

/* 809C9F04-809C9F10 00016C 000C+00 0/1 0/0 0/0 .rodata          @5757 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5757[12] = {
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809C9F04, &lit_5757);
#pragma pop

/* 809C9F10-809C9F1C 000178 000C+00 0/1 0/0 0/0 .rodata          @5758 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5758[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9F10, &lit_5758);
#pragma pop

/* 809C9F1C-809C9F24 000184 0008+00 0/1 0/0 0/0 .rodata          @5759 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5759[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9F1C, &lit_5759);
#pragma pop

/* 809C9F24-809C9F30 00018C 000C+00 0/1 0/0 0/0 .rodata          @5760 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5760[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809C9F24, &lit_5760);
#pragma pop

/* 809C9F30-809C9F3C 000198 000C+00 0/1 0/0 0/0 .rodata          @5761 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5761[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9F30, &lit_5761);
#pragma pop

/* 809C9F3C-809C9F44 0001A4 0008+00 0/1 0/0 0/0 .rodata          @5762 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5762[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9F3C, &lit_5762);
#pragma pop

/* 809C9F44-809C9F50 0001AC 000C+00 0/1 0/0 0/0 .rodata          @5763 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5763[12] = {
    0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809C9F44, &lit_5763);
#pragma pop

/* 809C9F50-809C9F5C 0001B8 000C+00 0/1 0/0 0/0 .rodata          @5764 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5764[12] = {
    0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9F50, &lit_5764);
#pragma pop

/* 809C9F5C-809C9F64 0001C4 0008+00 0/1 0/0 0/0 .rodata          @5765 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5765[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9F5C, &lit_5765);
#pragma pop

/* 809C9F64-809C9F70 0001CC 000C+00 0/1 0/0 0/0 .rodata          @5766 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5766[12] = {
    0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809C9F64, &lit_5766);
#pragma pop

/* 809C9F70-809C9F7C 0001D8 000C+00 0/1 0/0 0/0 .rodata          @5767 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5767[12] = {
    0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9F70, &lit_5767);
#pragma pop

/* 809C9F7C-809C9F84 0001E4 0008+00 0/1 0/0 0/0 .rodata          @5768 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5768[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9F7C, &lit_5768);
#pragma pop

/* 809C9F84-809C9F90 0001EC 000C+00 0/1 0/0 0/0 .rodata          @5769 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5769[12] = {
    0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809C9F84, &lit_5769);
#pragma pop

/* 809C9F90-809C9F9C 0001F8 000C+00 0/1 0/0 0/0 .rodata          @5770 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5770[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9F90, &lit_5770);
#pragma pop

/* 809C9F9C-809C9FA4 000204 0008+00 0/1 0/0 0/0 .rodata          @5771 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5771[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9F9C, &lit_5771);
#pragma pop

/* 809C9FA4-809C9FB0 00020C 000C+00 0/1 0/0 0/0 .rodata          @5772 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5772[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9FA4, &lit_5772);
#pragma pop

/* 809C9FB0-809C9FB4 000218 0004+00 0/1 0/0 0/0 .rodata          @5773 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5773[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809C9FB0, &lit_5773);
#pragma pop

/* 809C9FB4-809C9FC0 00021C 000C+00 0/1 0/0 0/0 .rodata          @5774 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5774[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809C9FB4, &lit_5774);
#pragma pop

/* 809C9FC0-809C9FCC 000228 000C+00 0/1 0/0 0/0 .rodata          @5775 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5775[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9FC0, &lit_5775);
#pragma pop

/* 809C9FCC-809C9FD4 000234 0008+00 0/1 0/0 0/0 .rodata          @5776 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5776[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9FCC, &lit_5776);
#pragma pop

/* 809C9FD4-809C9FE0 00023C 000C+00 0/1 0/0 0/0 .rodata          @5777 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5777[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9FD4, &lit_5777);
#pragma pop

/* 809C9FE0-809C9FE4 000248 0004+00 0/1 0/0 0/0 .rodata          @5778 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5778[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809C9FE0, &lit_5778);
#pragma pop

/* 809C9FE4-809C9FF0 00024C 000C+00 0/1 0/0 0/0 .rodata          @5779 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5779[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809C9FE4, &lit_5779);
#pragma pop

/* 809C9FF0-809C9FFC 000258 000C+00 0/1 0/0 0/0 .rodata          @5780 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5780[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9FF0, &lit_5780);
#pragma pop

/* 809C9FFC-809CA004 000264 0008+00 0/1 0/0 0/0 .rodata          @5781 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5781[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809C9FFC, &lit_5781);
#pragma pop

/* 809CA004-809CA010 00026C 000C+00 0/1 0/0 0/0 .rodata          @5782 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5782[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA004, &lit_5782);
#pragma pop

/* 809CA010-809CA014 000278 0004+00 0/1 0/0 0/0 .rodata          @5783 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5783[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA010, &lit_5783);
#pragma pop

/* 809CA014-809CA020 00027C 000C+00 0/1 0/0 0/0 .rodata          @5784 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5784[12] = {
    0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA014, &lit_5784);
#pragma pop

/* 809CA020-809CA024 000288 0004+00 0/1 0/0 0/0 .rodata          @5785 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5785[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA020, &lit_5785);
#pragma pop

/* 809CA024-809CA030 00028C 000C+00 0/1 0/0 0/0 .rodata          @5786 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5786[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA024, &lit_5786);
#pragma pop

/* 809CA030-809CA034 000298 0004+00 0/1 0/0 0/0 .rodata          @5787 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5787[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA030, &lit_5787);
#pragma pop

/* 809CA034-809CA040 00029C 000C+00 0/1 0/0 0/0 .rodata          @5788 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5788[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA034, &lit_5788);
#pragma pop

/* 809CA040-809CA044 0002A8 0004+00 0/1 0/0 0/0 .rodata          @5789 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5789[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA040, &lit_5789);
#pragma pop

/* 809CA044-809CA050 0002AC 000C+00 0/1 0/0 0/0 .rodata          @5790 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5790[12] = {
    0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA044, &lit_5790);
#pragma pop

/* 809CA050-809CA054 0002B8 0004+00 0/1 0/0 0/0 .rodata          @5791 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5791[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA050, &lit_5791);
#pragma pop

/* 809CA054-809CA060 0002BC 000C+00 0/1 0/0 0/0 .rodata          @5792 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5792[12] = {
    0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA054, &lit_5792);
#pragma pop

/* 809CA060-809CA064 0002C8 0004+00 0/1 0/0 0/0 .rodata          @5793 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5793[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA060, &lit_5793);
#pragma pop

/* 809CA064-809CA070 0002CC 000C+00 0/1 0/0 0/0 .rodata          @5794 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5794[12] = {
    0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809CA064, &lit_5794);
#pragma pop

/* 809CA070-809CA07C 0002D8 000C+00 0/1 0/0 0/0 .rodata          @5795 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5795[12] = {
    0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA070, &lit_5795);
#pragma pop

/* 809CA07C-809CA084 0002E4 0008+00 0/1 0/0 0/0 .rodata          @5796 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5796[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA07C, &lit_5796);
#pragma pop

/* 809CA084-809CA090 0002EC 000C+00 0/1 0/0 0/0 .rodata          @5797 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5797[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA084, &lit_5797);
#pragma pop

/* 809CA090-809CA094 0002F8 0004+00 0/1 0/0 0/0 .rodata          @5798 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5798[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA090, &lit_5798);
#pragma pop

/* 809CA094-809CA0A0 0002FC 000C+00 0/1 0/0 0/0 .rodata          @5799 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5799[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA094, &lit_5799);
#pragma pop

/* 809CA0A0-809CA0A4 000308 0004+00 0/1 0/0 0/0 .rodata          @5800 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5800[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA0A0, &lit_5800);
#pragma pop

/* 809C1990-809C2080 003130 06F0+00 1/1 0/0 0/0 .text            playExpression__11daNpc_grA_cFv */
void daNpc_grA_c::playExpression() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CA0A4-809CA104 00030C 0060+00 0/0 0/0 0/0 .rodata          @5801 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5801[96] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA0A4, &lit_5801);
#pragma pop

/* 809CA104-809CA110 00036C 000C+00 0/1 0/0 0/0 .rodata          @5844 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5844[12] = {
    0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA104, &lit_5844);
#pragma pop

/* 809CA110-809CA114 000378 0004+00 0/1 0/0 0/0 .rodata          @5845 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5845[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA110, &lit_5845);
#pragma pop

/* 809CA114-809CA120 00037C 000C+00 0/1 0/0 0/0 .rodata          @5846 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5846[12] = {
    0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA114, &lit_5846);
#pragma pop

/* 809CA120-809CA124 000388 0004+00 0/1 0/0 0/0 .rodata          @5847 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5847[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA120, &lit_5847);
#pragma pop

/* 809CA124-809CA130 00038C 000C+00 0/1 0/0 0/0 .rodata          @5848 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5848[12] = {
    0x00, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA124, &lit_5848);
#pragma pop

/* 809CA130-809CA134 000398 0004+00 0/1 0/0 0/0 .rodata          @5849 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5849[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA130, &lit_5849);
#pragma pop

/* 809CA134-809CA140 00039C 000C+00 0/1 0/0 0/0 .rodata          @5850 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5850[12] = {
    0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809CA134, &lit_5850);
#pragma pop

/* 809CA140-809CA14C 0003A8 000C+00 0/1 0/0 0/0 .rodata          @5851 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5851[12] = {
    0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA140, &lit_5851);
#pragma pop

/* 809CA14C-809CA154 0003B4 0008+00 0/1 0/0 0/0 .rodata          @5852 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5852[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA14C, &lit_5852);
#pragma pop

/* 809CA154-809CA160 0003BC 000C+00 0/1 0/0 0/0 .rodata          @5853 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5853[12] = {
    0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809CA154, &lit_5853);
#pragma pop

/* 809CA160-809CA16C 0003C8 000C+00 0/1 0/0 0/0 .rodata          @5854 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5854[12] = {
    0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA160, &lit_5854);
#pragma pop

/* 809CA16C-809CA174 0003D4 0008+00 0/1 0/0 0/0 .rodata          @5855 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5855[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA16C, &lit_5855);
#pragma pop

/* 809CA174-809CA180 0003DC 000C+00 0/1 0/0 0/0 .rodata          @5856 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5856[12] = {
    0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA174, &lit_5856);
#pragma pop

/* 809CA180-809CA184 0003E8 0004+00 0/1 0/0 0/0 .rodata          @5857 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5857[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA180, &lit_5857);
#pragma pop

/* 809CA184-809CA190 0003EC 000C+00 0/1 0/0 0/0 .rodata          @5858 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5858[12] = {
    0x00, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809CA184, &lit_5858);
#pragma pop

/* 809CA190-809CA19C 0003F8 000C+00 0/1 0/0 0/0 .rodata          @5859 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5859[12] = {
    0x00, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA190, &lit_5859);
#pragma pop

/* 809CA19C-809CA1A4 000404 0008+00 0/1 0/0 0/0 .rodata          @5860 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5860[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA19C, &lit_5860);
#pragma pop

/* 809CA1A4-809CA1B0 00040C 000C+00 0/1 0/0 0/0 .rodata          @5861 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5861[12] = {
    0x00, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA1A4, &lit_5861);
#pragma pop

/* 809CA1B0-809CA1B4 000418 0004+00 0/1 0/0 0/0 .rodata          @5862 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5862[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA1B0, &lit_5862);
#pragma pop

/* 809CA1B4-809CA1C0 00041C 000C+00 0/1 0/0 0/0 .rodata          @5863 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5863[12] = {
    0x00, 0x2A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809CA1B4, &lit_5863);
#pragma pop

/* 809CA1C0-809CA1CC 000428 000C+00 0/1 0/0 0/0 .rodata          @5864 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5864[12] = {
    0x00, 0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA1C0, &lit_5864);
#pragma pop

/* 809CA1CC-809CA1D4 000434 0008+00 0/1 0/0 0/0 .rodata          @5865 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5865[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA1CC, &lit_5865);
#pragma pop

/* 809CA1D4-809CA1E0 00043C 000C+00 0/1 0/0 0/0 .rodata          @5866 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5866[12] = {
    0x00, 0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA1D4, &lit_5866);
#pragma pop

/* 809CA1E0-809CA1E4 000448 0004+00 0/1 0/0 0/0 .rodata          @5867 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5867[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA1E0, &lit_5867);
#pragma pop

/* 809CA1E4-809CA1F0 00044C 000C+00 0/1 0/0 0/0 .rodata          @5868 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5868[12] = {
    0x00, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809CA1E4, &lit_5868);
#pragma pop

/* 809CA1F0-809CA1FC 000458 000C+00 0/1 0/0 0/0 .rodata          @5869 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5869[12] = {
    0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA1F0, &lit_5869);
#pragma pop

/* 809CA1FC-809CA204 000464 0008+00 0/1 0/0 0/0 .rodata          @5870 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5870[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA1FC, &lit_5870);
#pragma pop

/* 809CA204-809CA210 00046C 000C+00 0/1 0/0 0/0 .rodata          @5871 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5871[12] = {
    0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA204, &lit_5871);
#pragma pop

/* 809CA210-809CA214 000478 0004+00 0/1 0/0 0/0 .rodata          @5872 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5872[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA210, &lit_5872);
#pragma pop

/* 809CA214-809CA220 00047C 000C+00 0/1 0/0 0/0 .rodata          @5873 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5873[12] = {
    0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809CA214, &lit_5873);
#pragma pop

/* 809CA220-809CA22C 000488 000C+00 0/1 0/0 0/0 .rodata          @5874 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5874[12] = {
    0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA220, &lit_5874);
#pragma pop

/* 809CA22C-809CA234 000494 0008+00 0/1 0/0 0/0 .rodata          @5875 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5875[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA22C, &lit_5875);
#pragma pop

/* 809CA234-809CA240 00049C 000C+00 0/1 0/0 0/0 .rodata          @5876 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5876[12] = {
    0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA234, &lit_5876);
#pragma pop

/* 809CA240-809CA244 0004A8 0004+00 0/1 0/0 0/0 .rodata          @5877 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5877[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA240, &lit_5877);
#pragma pop

/* 809CA244-809CA250 0004AC 000C+00 0/1 0/0 0/0 .rodata          @5878 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5878[12] = {
    0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809CA244, &lit_5878);
#pragma pop

/* 809CA250-809CA25C 0004B8 000C+00 0/1 0/0 0/0 .rodata          @5879 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5879[12] = {
    0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA250, &lit_5879);
#pragma pop

/* 809CA25C-809CA264 0004C4 0008+00 0/1 0/0 0/0 .rodata          @5880 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5880[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA25C, &lit_5880);
#pragma pop

/* 809CA264-809CA270 0004CC 000C+00 0/1 0/0 0/0 .rodata          @5881 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5881[12] = {
    0x00, 0x32, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809CA264, &lit_5881);
#pragma pop

/* 809CA270-809CA27C 0004D8 000C+00 0/1 0/0 0/0 .rodata          @5882 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5882[12] = {
    0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA270, &lit_5882);
#pragma pop

/* 809CA27C-809CA284 0004E4 0008+00 0/1 0/0 0/0 .rodata          @5883 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5883[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA27C, &lit_5883);
#pragma pop

/* 809CA284-809CA290 0004EC 000C+00 0/1 0/0 0/0 .rodata          @5884 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5884[12] = {
    0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA284, &lit_5884);
#pragma pop

/* 809CA290-809CA294 0004F8 0004+00 0/1 0/0 0/0 .rodata          @5885 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5885[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA290, &lit_5885);
#pragma pop

/* 809CA294-809CA2A0 0004FC 000C+00 0/1 0/0 0/0 .rodata          @5886 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5886[12] = {
    0x00, 0x31, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809CA294, &lit_5886);
#pragma pop

/* 809CA2A0-809CA2AC 000508 000C+00 0/1 0/0 0/0 .rodata          @5887 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5887[12] = {
    0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA2A0, &lit_5887);
#pragma pop

/* 809CA2AC-809CA2B4 000514 0008+00 0/1 0/0 0/0 .rodata          @5888 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5888[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA2AC, &lit_5888);
#pragma pop

/* 809CA2B4-809CA2C0 00051C 000C+00 0/1 0/0 0/0 .rodata          @5889 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5889[12] = {
    0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA2B4, &lit_5889);
#pragma pop

/* 809CA2C0-809CA2C4 000528 0004+00 0/1 0/0 0/0 .rodata          @5890 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5890[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA2C0, &lit_5890);
#pragma pop

/* 809CA2C4-809CA2D0 00052C 000C+00 0/1 0/0 0/0 .rodata          @5891 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5891[12] = {
    0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA2C4, &lit_5891);
#pragma pop

/* 809CA2D0-809CA2D4 000538 0004+00 0/1 0/0 0/0 .rodata          @5892 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5892[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA2D0, &lit_5892);
#pragma pop

/* 809CA2D4-809CA2E0 00053C 000C+00 0/1 0/0 0/0 .rodata          @5893 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5893[12] = {
    0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809CA2D4, &lit_5893);
#pragma pop

/* 809CA2E0-809CA2EC 000548 000C+00 0/1 0/0 0/0 .rodata          @5894 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5894[12] = {
    0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA2E0, &lit_5894);
#pragma pop

/* 809CA2EC-809CA2F4 000554 0008+00 0/1 0/0 0/0 .rodata          @5895 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5895[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA2EC, &lit_5895);
#pragma pop

/* 809CA2F4-809CA300 00055C 000C+00 0/1 0/0 0/0 .rodata          @5896 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5896[12] = {
    0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809CA2F4, &lit_5896);
#pragma pop

/* 809CA300-809CA30C 000568 000C+00 0/1 0/0 0/0 .rodata          @5897 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5897[12] = {
    0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA300, &lit_5897);
#pragma pop

/* 809CA30C-809CA314 000574 0008+00 0/1 0/0 0/0 .rodata          @5898 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5898[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA30C, &lit_5898);
#pragma pop

/* 809CA314-809CA320 00057C 000C+00 0/1 0/0 0/0 .rodata          @5899 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5899[12] = {
    0x00, 0x1C, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA314, &lit_5899);
#pragma pop

/* 809CA320-809CA324 000588 0004+00 0/1 0/0 0/0 .rodata          @5900 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5900[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA320, &lit_5900);
#pragma pop

/* 809CA324-809CA330 00058C 000C+00 0/1 0/0 0/0 .rodata          @5901 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5901[12] = {
    0x00, 0x20, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA324, &lit_5901);
#pragma pop

/* 809CA330-809CA334 000598 0004+00 0/1 0/0 0/0 .rodata          @5902 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5902[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA330, &lit_5902);
#pragma pop

/* 809CA334-809CA340 00059C 000C+00 0/1 0/0 0/0 .rodata          @5903 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5903[12] = {
    0x00, 0x21, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA334, &lit_5903);
#pragma pop

/* 809CA340-809CA344 0005A8 0004+00 0/1 0/0 0/0 .rodata          @5904 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5904[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA340, &lit_5904);
#pragma pop

/* 809CA344-809CA350 0005AC 000C+00 0/1 0/0 0/0 .rodata          @5905 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5905[12] = {
    0x00, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA344, &lit_5905);
#pragma pop

/* 809CA350-809CA354 0005B8 0004+00 0/1 0/0 0/0 .rodata          @5906 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5906[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA350, &lit_5906);
#pragma pop

/* 809CA354-809CA360 0005BC 000C+00 0/1 0/0 0/0 .rodata          @5907 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5907[12] = {
    0x00, 0x2D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA354, &lit_5907);
#pragma pop

/* 809CA360-809CA364 0005C8 0004+00 0/1 0/0 0/0 .rodata          @5908 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5908[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA360, &lit_5908);
#pragma pop

/* 809CA364-809CA370 0005CC 000C+00 0/1 0/0 0/0 .rodata          @5909 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5909[12] = {
    0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x809CA364, &lit_5909);
#pragma pop

/* 809CA370-809CA37C 0005D8 000C+00 0/1 0/0 0/0 .rodata          @5910 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5910[12] = {
    0x00, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA370, &lit_5910);
#pragma pop

/* 809CA37C-809CA384 0005E4 0008+00 0/1 0/0 0/0 .rodata          @5911 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5911[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA37C, &lit_5911);
#pragma pop

/* 809CA384-809CA390 0005EC 000C+00 0/1 0/0 0/0 .rodata          @5912 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5912[12] = {
    0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA384, &lit_5912);
#pragma pop

/* 809CA390-809CA394 0005F8 0004+00 0/1 0/0 0/0 .rodata          @5913 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5913[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA390, &lit_5913);
#pragma pop

/* 809C2080-809C28BC 003820 083C+00 1/1 0/0 0/0 .text            playMotion__11daNpc_grA_cFv */
void daNpc_grA_c::playMotion() {
    // NONMATCHING
}

/* 809C28BC-809C28E8 00405C 002C+00 4/4 0/0 0/0 .text
 * chkAction__11daNpc_grA_cFM11daNpc_grA_cFPCvPvPv_i            */
void daNpc_grA_c::chkAction(int (daNpc_grA_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809C28E8-809C2990 004088 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_grA_cFM11daNpc_grA_cFPCvPvPv_i            */
void daNpc_grA_c::setAction(int (daNpc_grA_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809C2990-809C2C3C 004130 02AC+00 2/1 0/0 0/0 .text            selectAction__11daNpc_grA_cFv */
void daNpc_grA_c::selectAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CA394-809CA408 0005FC 0074+00 0/0 0/0 0/0 .rodata          @5914 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5914[116] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA394, &lit_5914);
#pragma pop

/* 809CA408-809CA40C 000670 0004+00 13/26 0/0 0/0 .rodata          @6106 */
SECTION_RODATA static f32 const lit_6106 = -1.0f;
COMPILER_STRIP_GATE(0x809CA408, &lit_6106);

/* 809C2C3C-809C3070 0043DC 0434+00 1/1 0/0 0/0 .text            doEvent__11daNpc_grA_cFv */
void daNpc_grA_c::doEvent() {
    // NONMATCHING
}

/* 809C3070-809C3094 004810 0024+00 29/29 0/0 0/0 .text            setLookMode__11daNpc_grA_cFi */
void daNpc_grA_c::setLookMode(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CA40C-809CA418 000674 000C+00 0/1 0/0 0/0 .rodata          @6118 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6118[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA40C, &lit_6118);
#pragma pop

/* 809CA418-809CA41C 000680 0004+00 0/1 0/0 0/0 .rodata          @6220 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6220 = 80.0f;
COMPILER_STRIP_GATE(0x809CA418, &lit_6220);
#pragma pop

/* 809CA41C-809CA420 000684 0004+00 0/1 0/0 0/0 .rodata          @6221 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6221 = 40.0f;
COMPILER_STRIP_GATE(0x809CA41C, &lit_6221);
#pragma pop

/* 809CA420-809CA424 000688 0004+00 0/1 0/0 0/0 .rodata          @6222 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6222 = 160.0f;
COMPILER_STRIP_GATE(0x809CA420, &lit_6222);
#pragma pop

/* 809C3094-809C3424 004834 0390+00 1/1 0/0 0/0 .text            lookat__11daNpc_grA_cFv */
void daNpc_grA_c::lookat() {
    // NONMATCHING
}

/* 809C3424-809C35D0 004BC4 01AC+00 9/9 0/0 0/0 .text            chkFindPlayer__11daNpc_grA_cFv */
void daNpc_grA_c::chkFindPlayer() {
    // NONMATCHING
}

/* 809C35D0-809C36AC 004D70 00DC+00 2/1 0/0 0/0 .text setExpressionTalkAfter__11daNpc_grA_cFv */
void daNpc_grA_c::setExpressionTalkAfter() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CA424-809CA428 00068C 0004+00 0/2 0/0 0/0 .rodata          @6363 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6363 = 2.0f;
COMPILER_STRIP_GATE(0x809CA424, &lit_6363);
#pragma pop

/* 809CA428-809CA42C 000690 0004+00 0/2 0/0 0/0 .rodata          @6364 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6364 = 3.0f;
COMPILER_STRIP_GATE(0x809CA428, &lit_6364);
#pragma pop

/* 809C36AC-809C389C 004E4C 01F0+00 1/1 0/0 0/0 .text            setPrtcl__11daNpc_grA_cFv */
void daNpc_grA_c::setPrtcl() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CA42C-809CA434 000694 0006+02 0/1 0/0 0/0 .rodata          l_prticles_id$6368 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_prticles_id[6 + 2 /* padding */] = {
    0x83,
    0xB5,
    0x83,
    0xB6,
    0x83,
    0xB7,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809CA42C, &l_prticles_id);
#pragma pop

/* 809CA434-809CA438 00069C 0004+00 0/1 0/0 0/0 .rodata          @6442 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6442 = 7.0f / 100.0f;
COMPILER_STRIP_GATE(0x809CA434, &lit_6442);
#pragma pop

/* 809C389C-809C3A54 00503C 01B8+00 5/5 0/0 0/0 .text setRollPrtcl__11daNpc_grA_cFRC4cXyzf */
void daNpc_grA_c::setRollPrtcl(cXyz const& param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CA438-809CA440 0006A0 0008+00 1/1 0/0 0/0 .rodata          @6463 */
SECTION_RODATA static u8 const lit_6463[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA438, &lit_6463);

/* 809C3A54-809C3B28 0051F4 00D4+00 1/1 0/0 0/0 .text            setOtherObjMtx__11daNpc_grA_cFv */
void daNpc_grA_c::setOtherObjMtx() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CA440-809CA448 0006A8 0008+00 1/1 0/0 0/0 .rodata          @6467 */
SECTION_RODATA static u8 const lit_6467[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA440, &lit_6467);

/* 809CA4B8-809CA4B8 000720 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809CA5FE = "prm";
#pragma pop

/* 809C3B28-809C3D78 0052C8 0250+00 1/0 0/0 0/0 .text            ECut_talkSpa__11daNpc_grA_cFi */
void daNpc_grA_c::ECut_talkSpa(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CA448-809CA44C 0006B0 0004+00 0/2 0/0 0/0 .rodata          @6810 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6810 = 14.0f;
COMPILER_STRIP_GATE(0x809CA448, &lit_6810);
#pragma pop

/* 809CA44C-809CA450 0006B4 0004+00 0/4 0/0 0/0 .rodata          @6811 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6811 = 20.0f;
COMPILER_STRIP_GATE(0x809CA44C, &lit_6811);
#pragma pop

/* 809CA450-809CA454 0006B8 0004+00 0/1 0/0 0/0 .rodata          @6812 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6812 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x809CA450, &lit_6812);
#pragma pop

/* 809CA454-809CA458 0006BC 0004+00 0/1 0/0 0/0 .rodata          @6813 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6813 = 0.25f;
COMPILER_STRIP_GATE(0x809CA454, &lit_6813);
#pragma pop

/* 809CA458-809CA45C 0006C0 0004+00 0/5 0/0 0/0 .rodata          @6814 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6814 = 5.0f;
COMPILER_STRIP_GATE(0x809CA458, &lit_6814);
#pragma pop

/* 809CA45C-809CA460 0006C4 0004+00 0/1 0/0 0/0 .rodata          @6815 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6815 = 12.0f;
COMPILER_STRIP_GATE(0x809CA45C, &lit_6815);
#pragma pop

/* 809CA460-809CA464 0006C8 0004+00 0/3 0/0 0/0 .rodata          @6816 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6816 = 10.0f;
COMPILER_STRIP_GATE(0x809CA460, &lit_6816);
#pragma pop

/* 809CA464-809CA468 0006CC 0004+00 0/1 0/0 0/0 .rodata          @6817 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6817 = 11.0f;
COMPILER_STRIP_GATE(0x809CA464, &lit_6817);
#pragma pop

/* 809CA468-809CA46C 0006D0 0004+00 0/4 0/0 0/0 .rodata          @6818 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6818 = 127.0f;
COMPILER_STRIP_GATE(0x809CA468, &lit_6818);
#pragma pop

/* 809C3D78-809C45B0 005518 0838+00 1/0 0/0 0/0 .text            ECut_grDSRoll__11daNpc_grA_cFi */
void daNpc_grA_c::ECut_grDSRoll(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CA46C-809CA470 0006D4 0004+00 0/3 0/0 0/0 .rodata          @6865 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6865 = 30.0f / 11.0f;
COMPILER_STRIP_GATE(0x809CA46C, &lit_6865);
#pragma pop

/* 809C45B0-809C47EC 005D50 023C+00 1/0 0/0 0/0 .text            ECut_grDSGate__11daNpc_grA_cFi */
void daNpc_grA_c::ECut_grDSGate(int param_0) {
    // NONMATCHING
}

/* 809C47EC-809C4BE4 005F8C 03F8+00 1/0 0/0 0/0 .text            ECut_teachElevator__11daNpc_grA_cFi
 */
void daNpc_grA_c::ECut_teachElevator(int param_0) {
    // NONMATCHING
}

/* 809C4BE4-809C4EB4 006384 02D0+00 1/0 0/0 0/0 .text            ECut_kickOut__11daNpc_grA_cFi */
void daNpc_grA_c::ECut_kickOut(int param_0) {
    // NONMATCHING
}

/* 809C4EB4-809C5088 006654 01D4+00 1/0 0/0 0/0 .text            ECut_noneLook__11daNpc_grA_cFi */
void daNpc_grA_c::ECut_noneLook(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CA470-809CA474 0006D8 0004+00 0/1 0/0 0/0 .rodata          @7127 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7127 = 41.0f;
COMPILER_STRIP_GATE(0x809CA470, &lit_7127);
#pragma pop

/* 809CA474-809CA478 0006DC 0004+00 0/1 0/0 0/0 .rodata          @7128 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7128 = -0.5f;
COMPILER_STRIP_GATE(0x809CA474, &lit_7128);
#pragma pop

/* 809CA478-809CA47C 0006E0 0004+00 0/1 0/0 0/0 .rodata          @7129 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7129 = 3.0f / 100.0f;
COMPILER_STRIP_GATE(0x809CA478, &lit_7129);
#pragma pop

/* 809CA47C-809CA480 0006E4 0004+00 0/1 0/0 0/0 .rodata          @7130 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7130 = 8.0f;
COMPILER_STRIP_GATE(0x809CA47C, &lit_7130);
#pragma pop

/* 809C5088-809C5430 006828 03A8+00 1/0 0/0 0/0 .text            ECut_rescueRock__11daNpc_grA_cFi */
void daNpc_grA_c::ECut_rescueRock(int param_0) {
    // NONMATCHING
}

/* 809C5430-809C5D44 006BD0 0914+00 3/0 0/0 0/0 .text            ECut_carrySpaWater__11daNpc_grA_cFi
 */
void daNpc_grA_c::ECut_carrySpaWater(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CA480-809CA484 0006E8 0004+00 0/0 0/0 0/0 .rodata          @7374 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7374 = 250.0f;
COMPILER_STRIP_GATE(0x809CA480, &lit_7374);
#pragma pop

/* 809CA484-809CA488 0006EC 0004+00 0/2 0/0 0/0 .rodata          @7375 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7375 = 200.0f;
COMPILER_STRIP_GATE(0x809CA484, &lit_7375);
#pragma pop

/* 809CA488-809CA48C 0006F0 0004+00 0/0 0/0 0/0 .rodata          @7376 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7376 = 18.0f;
COMPILER_STRIP_GATE(0x809CA488, &lit_7376);
#pragma pop

/* 809CA48C-809CA490 0006F4 0004+00 0/1 0/0 0/0 .rodata          @7423 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7423 = 21.0f;
COMPILER_STRIP_GATE(0x809CA48C, &lit_7423);
#pragma pop

/* 809C5D44-809C5F90 0074E4 024C+00 1/0 0/0 0/0 .text ECut_carrySpaWaterFailure__11daNpc_grA_cFi
 */
void daNpc_grA_c::ECut_carrySpaWaterFailure(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CA490-809CA494 0006F8 0004+00 0/1 0/0 0/0 .rodata          @7576 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7576 = 79.0f;
COMPILER_STRIP_GATE(0x809CA490, &lit_7576);
#pragma pop

/* 809CA494-809CA498 0006FC 0004+00 0/1 0/0 0/0 .rodata          @7577 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7577 = 7.0f;
COMPILER_STRIP_GATE(0x809CA494, &lit_7577);
#pragma pop

/* 809CA498-809CA49C 000700 0004+00 0/1 0/0 0/0 .rodata          @7578 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7578 = 93.0f;
COMPILER_STRIP_GATE(0x809CA498, &lit_7578);
#pragma pop

/* 809CA49C-809CA4A0 000704 0004+00 0/1 0/0 0/0 .rodata          @7579 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7579 = 94.0f;
COMPILER_STRIP_GATE(0x809CA49C, &lit_7579);
#pragma pop

/* 809C5F90-809C6608 007730 0678+00 1/0 0/0 0/0 .text            ECut_rollRockCrash__11daNpc_grA_cFi
 */
void daNpc_grA_c::ECut_rollRockCrash(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CA4A0-809CA4A4 000708 0004+00 1/1 0/0 0/0 .rodata          @7629 */
SECTION_RODATA static f32 const lit_7629 = 500.0f;
COMPILER_STRIP_GATE(0x809CA4A0, &lit_7629);

/* 809C6608-809C681C 007DA8 0214+00 1/0 0/0 0/0 .text            ECut_talkSpaWater__11daNpc_grA_cFi
 */
void daNpc_grA_c::ECut_talkSpaWater(int param_0) {
    // NONMATCHING
}

/* 809C681C-809C69B8 007FBC 019C+00 3/0 0/0 0/0 .text            wait__11daNpc_grA_cFPv */
void daNpc_grA_c::wait(void* param_0) {
    // NONMATCHING
}

/* 809C69B8-809C6AAC 008158 00F4+00 1/0 0/0 0/0 .text            waitTW__11daNpc_grA_cFPv */
void daNpc_grA_c::waitTW(void* param_0) {
    // NONMATCHING
}

/* 809C6AAC-809C6D48 00824C 029C+00 1/0 0/0 0/0 .text            waitCheer__11daNpc_grA_cFPv */
void daNpc_grA_c::waitCheer(void* param_0) {
    // NONMATCHING
}

/* 809C6D48-809C73FC 0084E8 06B4+00 1/0 0/0 0/0 .text            waitGate__11daNpc_grA_cFPv */
void daNpc_grA_c::waitGate(void* param_0) {
    // NONMATCHING
}

/* 809C73FC-809C770C 008B9C 0310+00 1/0 0/0 0/0 .text            waitKickOut__11daNpc_grA_cFPv */
void daNpc_grA_c::waitKickOut(void* param_0) {
    // NONMATCHING
}

/* 809C770C-809C77E0 008EAC 00D4+00 2/0 0/0 0/0 .text            moveRock__11daNpc_grA_cFPv */
void daNpc_grA_c::moveRock(void* param_0) {
    // NONMATCHING
}

/* 809C77E0-809C7ACC 008F80 02EC+00 1/0 0/0 0/0 .text            spaWarm__11daNpc_grA_cFPv */
void daNpc_grA_c::spaWarm(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CA4A4-809CA4A8 00070C 0004+00 0/1 0/0 0/0 .rodata          @8136 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8136 = 1200.0f;
COMPILER_STRIP_GATE(0x809CA4A4, &lit_8136);
#pragma pop

/* 809C7ACC-809C7F24 00926C 0458+00 3/0 0/0 0/0 .text            waitSpaWater__11daNpc_grA_cFPv */
void daNpc_grA_c::waitSpaWater(void* param_0) {
    // NONMATCHING
}

/* 809C7F24-809C8138 0096C4 0214+00 1/0 0/0 0/0 .text            waitSpaBuyer__11daNpc_grA_cFPv */
void daNpc_grA_c::waitSpaBuyer(void* param_0) {
    // NONMATCHING
}

/* 809C8138-809C82A8 0098D8 0170+00 1/0 0/0 0/0 .text            waitSpaBuyerTW__11daNpc_grA_cFPv */
void daNpc_grA_c::waitSpaBuyerTW(void* param_0) {
    // NONMATCHING
}

/* 809C82A8-809C8514 009A48 026C+00 1/0 0/0 0/0 .text            beforeCrashWait__11daNpc_grA_cFPv
 */
void daNpc_grA_c::beforeCrashWait(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CA4A8-809CA4B0 000710 0004+04 0/1 0/0 0/0 .rodata          @8269 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8269[1 + 1 /* padding */] = {
    50.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x809CA4A8, &lit_8269);
#pragma pop

/* 809C8514-809C8694 009CB4 0180+00 1/0 0/0 0/0 .text            crashRoll__11daNpc_grA_cFPv */
void daNpc_grA_c::crashRoll(void* param_0) {
    // NONMATCHING
}

/* 809C8694-809C884C 009E34 01B8+00 1/0 0/0 0/0 .text            crashRollWait__11daNpc_grA_cFPv */
void daNpc_grA_c::crashRollWait(void* param_0) {
    // NONMATCHING
}

/* 809C884C-809C8A2C 009FEC 01E0+00 1/0 0/0 0/0 .text            crashedWait__11daNpc_grA_cFPv */
void daNpc_grA_c::crashedWait(void* param_0) {
    // NONMATCHING
}

/* 809C8A2C-809C8BD4 00A1CC 01A8+00 1/0 0/0 0/0 .text            waitBuyer__11daNpc_grA_cFPv */
void daNpc_grA_c::waitBuyer(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CA4B8-809CA4B8 000720 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809CA602 = "DEFAULT_GETITEM";
#pragma pop

/* 809C8BD4-809C9044 00A374 0470+00 2/0 0/0 0/0 .text            talk__11daNpc_grA_cFPv */
void daNpc_grA_c::talk(void* param_0) {
    // NONMATCHING
}

/* 809C9044-809C9128 00A7E4 00E4+00 2/0 0/0 0/0 .text            test__11daNpc_grA_cFPv */
void daNpc_grA_c::test(void* param_0) {
    // NONMATCHING
}

/* 809C9128-809C9148 00A8C8 0020+00 1/0 0/0 0/0 .text            daNpc_grA_Create__FPv */
static void daNpc_grA_Create(void* param_0) {
    // NONMATCHING
}

/* 809C9148-809C9168 00A8E8 0020+00 1/0 0/0 0/0 .text            daNpc_grA_Delete__FPv */
static void daNpc_grA_Delete(void* param_0) {
    // NONMATCHING
}

/* 809C9168-809C9188 00A908 0020+00 1/0 0/0 0/0 .text            daNpc_grA_Execute__FPv */
static void daNpc_grA_Execute(void* param_0) {
    // NONMATCHING
}

/* 809C9188-809C91A8 00A928 0020+00 1/0 0/0 0/0 .text            daNpc_grA_Draw__FPv */
static void daNpc_grA_Draw(void* param_0) {
    // NONMATCHING
}

/* 809C91A8-809C91B0 00A948 0008+00 1/0 0/0 0/0 .text            daNpc_grA_IsDelete__FPv */
static bool daNpc_grA_IsDelete(void* param_0) {
    return true;
}

/* 809C91B0-809C9210 00A950 0060+00 1/0 0/0 0/0 .text            __dt__13daNpcF_Path_cFv */
// daNpcF_Path_c::~daNpcF_Path_c() {
extern "C" void __dt__13daNpcF_Path_cFv() {
    // NONMATCHING
}

/* 809C9210-809C9258 00A9B0 0048+00 1/0 0/0 0/0 .text            __dt__16daNpcF_SPCurve_cFv */
// daNpcF_SPCurve_c::~daNpcF_SPCurve_c() {
extern "C" void __dt__16daNpcF_SPCurve_cFv() {
    // NONMATCHING
}

/* 809C9258-809C92A0 00A9F8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 809C92A0-809C92E8 00AA40 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 809C92E8-809C9330 00AA88 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809C9330-809C936C 00AAD0 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809C936C-809C943C 00AB0C 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 809C943C-809C9478 00ABDC 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 809C9478-809C947C 00AC18 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 809C947C-809C94B8 00AC1C 003C+00 6/6 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 809C94B8-809C94BC 00AC58 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 809C94BC-809C9708 00AC5C 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809C9708-809C98F8 00AEA8 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 809C98F8-809C9968 00B098 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 809C9968-809C99C4 00B108 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 809C99C4-809C9A34 00B164 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809C9A34-809C9A7C 00B1D4 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 809C9A7C-809C9A80 00B21C 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 809C9A80-809C9AC8 00B220 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 809C9AC8-809C9AE4 00B268 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<s>__FPs */
extern "C" void func_809C9AC8(void* _this, s16* param_0) {
    // NONMATCHING
}

/* 809C9AE4-809C9B00 00B284 001C+00 5/5 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_809C9AE4(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CA4B0-809CA4B8 000718 0008+00 1/1 0/0 0/0 .rodata          @8542 */
SECTION_RODATA static u8 const lit_8542[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809CA4B0, &lit_8542);

/* 809C9B00-809C9B7C 00B2A0 007C+00 3/3 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
extern "C" void func_809C9B00(void* _this, int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CB2E4-809CB2F0 000CD0 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_grA_Param_c */
SECTION_DATA extern void* __vt__17daNpc_grA_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_grA_Param_cFv,
};

/* 809C9B7C-809C9CF8 00B31C 017C+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_gra_cpp */
void __sinit_d_a_npc_gra_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x809C9B7C, __sinit_d_a_npc_gra_cpp);
#pragma pop

/* 809C9CF8-809C9D0C 00B498 0014+00 2/2 0/0 0/0 .text            getGraAngle__10daTagGra_cFv */
// void daTagGra_c::getGraAngle() {
extern "C" void getGraAngle__10daTagGra_cFv() {
    // NONMATCHING
}

/* 809C9D0C-809C9D28 00B4AC 001C+00 2/2 0/0 0/0 .text            getGraPos__10daTagGra_cFv */
// void daTagGra_c::getGraPos() {
extern "C" void getGraPos__10daTagGra_cFv() {
    // NONMATCHING
}

/* 809C9D28-809C9D2C 00B4C8 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__11daNpc_grA_cFv
 */
void daNpc_grA_c::adjustShapeAngle() {
    /* empty function */
}

/* 809C9D2C-809C9D74 00B4CC 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_grA_Param_cFv */
daNpc_grA_Param_c::~daNpc_grA_Param_c() {
    // NONMATCHING
}

/* 809C9D74-809C9D7C 00B514 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809C9D74() {
    // NONMATCHING
}

/* 809C9D7C-809C9D84 00B51C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809C9D7C() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809CB364-809CB368 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_809CB364[4];
#pragma pop

/* 809CB368-809CB36C 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_809CB368[4];
#pragma pop

/* 809CB36C-809CB370 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_809CB36C[4];
#pragma pop

/* 809CB370-809CB374 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_809CB370[4];
#pragma pop

/* 809CB374-809CB378 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809CB374[4];
#pragma pop

/* 809CB378-809CB37C 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809CB378[4];
#pragma pop

/* 809CB37C-809CB380 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_809CB37C[4];
#pragma pop

/* 809CB380-809CB384 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_809CB380[4];
#pragma pop

/* 809CB384-809CB388 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_809CB384[4];
#pragma pop

/* 809CB388-809CB38C 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_809CB388[4];
#pragma pop

/* 809CB38C-809CB390 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_809CB38C[4];
#pragma pop

/* 809CB390-809CB394 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_809CB390[4];
#pragma pop

/* 809CB394-809CB398 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_809CB394[4];
#pragma pop

/* 809CB398-809CB39C 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809CB398[4];
#pragma pop

/* 809CB39C-809CB3A0 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_809CB39C[4];
#pragma pop

/* 809CB3A0-809CB3A4 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_809CB3A0[4];
#pragma pop

/* 809CB3A4-809CB3A8 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_809CB3A4[4];
#pragma pop

/* 809CB3A8-809CB3AC 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_809CB3A8[4];
#pragma pop

/* 809CB3AC-809CB3B0 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_809CB3AC[4];
#pragma pop

/* 809CB3B0-809CB3B4 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_809CB3B0[4];
#pragma pop

/* 809CB3B4-809CB3B8 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_809CB3B4[4];
#pragma pop

/* 809CB3B8-809CB3BC 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809CB3B8[4];
#pragma pop

/* 809CB3BC-809CB3C0 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809CB3BC[4];
#pragma pop

/* 809CB3C0-809CB3C4 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809CB3C0[4];
#pragma pop

/* 809CB3C4-809CB3C8 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_809CB3C4[4];
#pragma pop

/* 809CA4B8-809CA4B8 000720 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
