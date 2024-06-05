/**
 * @file d_a_npc_taro.cpp
 * 
*/

#include "rel/d/a/npc/d_a_npc_taro/d_a_npc_taro.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__12daNpc_Taro_cFv();
extern "C" void create__12daNpc_Taro_cFv();
extern "C" void CreateHeap__12daNpc_Taro_cFv();
extern "C" void __dt__15J3DTevKColorAnmFv();
extern "C" void __ct__15J3DTevKColorAnmFv();
extern "C" void __dt__14J3DTevColorAnmFv();
extern "C" void __ct__14J3DTevColorAnmFv();
extern "C" void __dt__11J3DTexNoAnmFv();
extern "C" void __ct__11J3DTexNoAnmFv();
extern "C" void __dt__12J3DTexMtxAnmFv();
extern "C" void __ct__12J3DTexMtxAnmFv();
extern "C" void __dt__14J3DMatColorAnmFv();
extern "C" void __ct__14J3DMatColorAnmFv();
extern "C" void Delete__12daNpc_Taro_cFv();
extern "C" void Execute__12daNpc_Taro_cFv();
extern "C" void Draw__12daNpc_Taro_cFv();
extern "C" void createHeapCallBack__12daNpc_Taro_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__12daNpc_Taro_cFP8J3DJointi();
extern "C" void srchArrow__12daNpc_Taro_cFPvPv();
extern "C" void srchNpc__12daNpc_Taro_cFPvPv();
extern "C" void getArrowP__12daNpc_Taro_cFv();
extern "C" void getType__12daNpc_Taro_cFv();
extern "C" void isDelete__12daNpc_Taro_cFv();
extern "C" void reset__12daNpc_Taro_cFv();
extern "C" void afterJntAnm__12daNpc_Taro_cFi();
extern "C" void setParam__12daNpc_Taro_cFv();
extern "C" void checkChangeEvt__12daNpc_Taro_cFv();
extern "C" void evtEndProc__12daNpc_Taro_cFv();
extern "C" void setAfterTalkMotion__12daNpc_Taro_cFv();
extern "C" void srchActors__12daNpc_Taro_cFv();
extern "C" void evtTalk__12daNpc_Taro_cFv();
extern "C" void evtCutProc__12daNpc_Taro_cFv();
extern "C" void action__12daNpc_Taro_cFv();
extern "C" void beforeMove__12daNpc_Taro_cFv();
extern "C" void setAttnPos__12daNpc_Taro_cFv();
extern "C" void setCollision__12daNpc_Taro_cFv();
extern "C" bool drawDbgInfo__12daNpc_Taro_cFv();
extern "C" void drawOtherMdl__12daNpc_Taro_cFv();
extern "C" void getFaceMotionAnm__12daNpc_Taro_cF26daNpcT_faceMotionAnmData_c();
extern "C" void selectAction__12daNpc_Taro_cFv();
extern "C" void chkAction__12daNpc_Taro_cFM12daNpc_Taro_cFPCvPvPv_i();
extern "C" void setAction__12daNpc_Taro_cFM12daNpc_Taro_cFPCvPvPv_i();
extern "C" void setSwingVoice__12daNpc_Taro_cFv();
extern "C" void cutConversationAboutPachinko__12daNpc_Taro_cFi();
extern "C" void cutConversationAboutWoodSwd__12daNpc_Taro_cFi();
extern "C" void cutSwdTutorial__12daNpc_Taro_cFi();
extern "C" void cutHail__12daNpc_Taro_cFi();
extern "C" void cutFindMonkey__12daNpc_Taro_cFi();
extern "C" void cutHelpMe__12daNpc_Taro_cFi();
extern "C" void cutAppearanceMoi__12daNpc_Taro_cFi();
extern "C" void cutGiveMeWoodSwd__12daNpc_Taro_cFi();
extern "C" void cutGetWoodSwd__12daNpc_Taro_cFi();
extern "C" void cutConversationWithMaro__12daNpc_Taro_cFi();
extern "C" void cutCacaricoConversation__12daNpc_Taro_cFi();
extern "C" void cutArrowTutorial__12daNpc_Taro_cFi();
extern "C" void cutCaution__12daNpc_Taro_cFi();
extern "C" void cutTagPush1__12daNpc_Taro_cFi();
extern "C" void cutNotGonnaLet__12daNpc_Taro_cFi();
extern "C" void cutTagPush4__12daNpc_Taro_cFi();
extern "C" void wait__12daNpc_Taro_cFPv();
extern "C" void swdTutorial__12daNpc_Taro_cFPv();
extern "C" void talk_withMaro__12daNpc_Taro_cFPv();
extern "C" void practice__12daNpc_Taro_cFPv();
extern "C" void nurse__12daNpc_Taro_cFPv();
extern "C" void talk__12daNpc_Taro_cFPv();
extern "C" static void daNpc_Taro_Create__FPv();
extern "C" static void daNpc_Taro_Delete__FPv();
extern "C" static void daNpc_Taro_Execute__FPv();
extern "C" static void daNpc_Taro_Draw__FPv();
extern "C" static bool daNpc_Taro_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__8daNpcT_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
extern "C" void __ct__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void
__ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__15daNpcT_JntAnm_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs();
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs();
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_80571208(void* _this, int*);
extern "C" void func_80571224(void* _this, int, int);
extern "C" void __sinit_d_a_npc_taro_cpp();
extern "C" void
__ct__12daNpc_Taro_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" s32 getEyeballMaterialNo__12daNpc_Taro_cFv();
extern "C" s32 getHeadJointNo__12daNpc_Taro_cFv();
extern "C" s32 getNeckJointNo__12daNpc_Taro_cFv();
extern "C" bool getBackboneJointNo__12daNpc_Taro_cFv();
extern "C" void checkChangeJoint__12daNpc_Taro_cFi();
extern "C" void checkRemoveJoint__12daNpc_Taro_cFi();
extern "C" s32 getFootLJointNo__12daNpc_Taro_cFv();
extern "C" s32 getFootRJointNo__12daNpc_Taro_cFv();
extern "C" void __dt__18daNpc_Taro_Param_cFv();
extern "C" static void func_80571644();
extern "C" static void func_8057164C();
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz();
extern "C" u8 const m__18daNpc_Taro_Param_c[144];
extern "C" extern char const* const d_a_npc_taro__stringBase0;
extern "C" void* mCutNameList__12daNpc_Taro_c[17];
extern "C" u8 mCutList__12daNpc_Taro_c[204];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fpcEx_IsExist__FUi();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfGp_setNextStage__FPCcsScSc();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void daNpcKakashi_chkSwdTutorialStage__Fv();
extern "C" void daNpcKakashi_setSwdTutorialStep__FUc();
extern "C" void daNpcKakashi_getSwdTutorialStep__Fv();
extern "C" void daNpcKakashi_clrSuccessCount__Fv();
extern "C" void isSwitch__12dSv_memBit_cCFi();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void setEventReg__11dSv_event_cFUsUc();
extern "C" void getEventReg__11dSv_event_cCFUs();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setPt2__14dEvt_control_cFPv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void setGoal__16dEvent_manager_cFP4cXyz();
extern "C" void getRunEventName__16dEvent_manager_cFv();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void initialize__18daNpcT_ActorMngr_cFv();
extern "C" void entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcT_ActorMngr_cFv();
extern "C" void getActorP__18daNpcT_ActorMngr_cFv();
extern "C" void initialize__15daNpcT_MatAnm_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void checkEndSequence__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz();
extern "C" void calcJntRad__15daNpcT_JntAnm_cFfff();
extern "C" void setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs();
extern "C" void calc__19daNpcT_DmgStagger_cFi();
extern "C" void tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void getTrnsfrmAnmP__8daNpcT_cFPCci();
extern "C" void loadRes__8daNpcT_cFPCScPPCc();
extern "C" void deleteRes__8daNpcT_cFPCScPPCc();
extern "C" void execute__8daNpcT_cFv();
extern "C" void draw__8daNpcT_cFiifP11_GXColorS10fiii();
extern "C" void setEnvTevColor__8daNpcT_cFv();
extern "C" void setRoomNo__8daNpcT_cFv();
extern "C" void ctrlBtk__8daNpcT_cFv();
extern "C" void setMtx__8daNpcT_cFv();
extern "C" void ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel();
extern "C" void evtProc__8daNpcT_cFv();
extern "C" void setFootPos__8daNpcT_cFv();
extern "C" void setFootPrtcl__8daNpcT_cFP4cXyzff();
extern "C" bool checkCullDraw__8daNpcT_cFv();
extern "C" void twilight__8daNpcT_cFv();
extern "C" void evtOrder__8daNpcT_cFv();
extern "C" void evtChange__8daNpcT_cFv();
extern "C" void clrParam__8daNpcT_cFv();
extern "C" void setFaceMotionAnm__8daNpcT_cFib();
extern "C" void setMotionAnm__8daNpcT_cFifi();
extern "C" void setPos__8daNpcT_cF4cXyz();
extern "C" void setAngle__8daNpcT_cF5csXyz();
extern "C" void setAngle__8daNpcT_cFs();
extern "C" void hitChk__8daNpcT_cFP12dCcD_GObjInfUl();
extern "C" void setDamage__8daNpcT_cFiii();
extern "C" void chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void calcSpeedAndAngle__8daNpcT_cF4cXyziss();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void getEvtAreaTagP__8daNpcT_cFii();
extern "C" void daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_onEvtBit__FUl();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_onTmpBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
extern "C" void dCam_getBody__Fv();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void dMeter2Info_setSword__FUcb();
extern "C" void getActor__12dMsgObject_cFv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void bgmStart__8Z2SeqMgrFUlUll();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void getTexNo__16J3DAnmTexPatternCFUsPUs();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
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
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcT_c[68];
extern "C" extern void* __vt__8daNpcT_c[49];
extern "C" extern void* __vt__15daNpcT_MatAnm_c[4 + 1 /* padding */];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mFindActorPtrs__8daNpcT_c[200];
extern "C" u8 mFindCount__8daNpcT_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz();
extern "C" void choccai__12daNpc_Maro_cFPv();
extern "C" void __register_global_object();
extern "C" void checkStartDemo13StbEvt__11daNpc_Len_cFP10fopAc_ac_cfffffff();

//
// Declarations:
//

/* ############################################################################################## */
/* 80571908-80571908 000240 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80571908 = "";
SECTION_DEAD static char const* const stringBase_80571909 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80571915 = "HAIL";
SECTION_DEAD static char const* const stringBase_8057191A = "FIND_MONKEY";
SECTION_DEAD static char const* const stringBase_80571926 = "HELP_ME";
SECTION_DEAD static char const* const stringBase_8057192E = "THANX_FOR_YOURHELP";
SECTION_DEAD static char const* const stringBase_80571941 = "APPEARANCE_MOI";
SECTION_DEAD static char const* const stringBase_80571950 = "GIVEME_WOODSWD1";
SECTION_DEAD static char const* const stringBase_80571960 = "GIVEME_WOODSWD2";
SECTION_DEAD static char const* const stringBase_80571970 = "GET_WOODSWD";
SECTION_DEAD static char const* const stringBase_8057197C = "CONVERSATION_WITH_MARO1";
SECTION_DEAD static char const* const stringBase_80571994 = "CONVERSATION_WITH_MARO2";
SECTION_DEAD static char const* const stringBase_805719AC = "DEMO13_STB";
SECTION_DEAD static char const* const stringBase_805719B7 = "BEGIN_ARROWTUTORIAL";
SECTION_DEAD static char const* const stringBase_805719CB = "BEGIN_ARROWTUTORIAL_NO_ARROW";
SECTION_DEAD static char const* const stringBase_805719E8 = "RETRY_ARROWTUTORIAL1";
SECTION_DEAD static char const* const stringBase_805719FD = "RETRY_ARROWTUTORIAL1_NO_ARROW";
SECTION_DEAD static char const* const stringBase_80571A1B = "RETRY_ARROWTUTORIAL2";
SECTION_DEAD static char const* const stringBase_80571A30 = "RETRY_ARROWTUTORIAL2_NO_ARROW";
SECTION_DEAD static char const* const stringBase_80571A4E = "RETRY_ARROWTUTORIAL3";
SECTION_DEAD static char const* const stringBase_80571A63 = "RETRY_ARROWTUTORIAL3_NO_ARROW";
SECTION_DEAD static char const* const stringBase_80571A81 = "CAUTION";
SECTION_DEAD static char const* const stringBase_80571A89 = "TAG_PUSH1";
SECTION_DEAD static char const* const stringBase_80571A93 = "NOT_GONNA_LET_1";
SECTION_DEAD static char const* const stringBase_80571AA3 = "NOT_GONNA_LET_2";
SECTION_DEAD static char const* const stringBase_80571AB3 = "NOT_GONNA_LET_3";
SECTION_DEAD static char const* const stringBase_80571AC3 = "TAG_PUSH4";
SECTION_DEAD static char const* const stringBase_80571ACD = "Taro";
SECTION_DEAD static char const* const stringBase_80571AD2 = "Taro_TW";
SECTION_DEAD static char const* const stringBase_80571ADA = "Taro0";
SECTION_DEAD static char const* const stringBase_80571AE0 = "Taro1";
SECTION_DEAD static char const* const stringBase_80571AE6 = "Taro2";
SECTION_DEAD static char const* const stringBase_80571AEC = "Taro3";
SECTION_DEAD static char const* const stringBase_80571AF2 = "Taro4";
SECTION_DEAD static char const* const stringBase_80571AF8 = "Taro5";
SECTION_DEAD static char const* const stringBase_80571AFE = "TaroB";
SECTION_DEAD static char const* const stringBase_80571B04 = "Len1";
SECTION_DEAD static char const* const stringBase_80571B09 = "CONVERSATION_ABOUT_PACHINKO";
SECTION_DEAD static char const* const stringBase_80571B25 = "CONVERSATION_ABOUT_WOODSWD";
SECTION_DEAD static char const* const stringBase_80571B40 = "SWDTUTORIAL";
SECTION_DEAD static char const* const stringBase_80571B4C = "GIVEME_WOODSWD";
SECTION_DEAD static char const* const stringBase_80571B5B = "CONVERSATION_WITH_MARO";
SECTION_DEAD static char const* const stringBase_80571B72 = "CACARICO_CONVERSATION";
SECTION_DEAD static char const* const stringBase_80571B88 = "ARROWTUTORIAL";
SECTION_DEAD static char const* const stringBase_80571B96 = "NOT_GONNA_LET";
#pragma pop

/* 80571BC8-80571BD4 000000 000C+00 4/4 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80571BD4-80571BE8 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80571BE8-80571BF4 -00001 000C+00 0/0 0/0 0/0 .data            @3931 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3931[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)choccai__12daNpc_Maro_cFPv,
};
#pragma pop

/* 80571BF4-80571C1C 00002C 0028+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[40] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00,
    0x00, 0x04, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09,
};

/* 80571C1C-80571CF4 -00001 00D8+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[54] = {
    (void*)&d_a_npc_taro__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0xD),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x12),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x1E),
    (void*)0x00000008,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x26),
    (void*)0x00000008,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x39),
    (void*)0x00000008,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x48),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x58),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x68),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x74),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x8C),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0xA4),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0xAF),
    (void*)0x00000005,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0xC3),
    (void*)0x00000005,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0xE0),
    (void*)0x00000005,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0xF5),
    (void*)0x00000005,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x113),
    (void*)0x00000005,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x128),
    (void*)0x00000005,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x146),
    (void*)0x00000005,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x15B),
    (void*)0x00000005,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x179),
    (void*)0x00000005,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x181),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x18B),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x19B),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x1AB),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x1BB),
    (void*)0x00000004,
};
#pragma pop

/* 80571CF4-80571D20 -00001 002C+00 3/4 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[11] = {
    (void*)&d_a_npc_taro__stringBase0,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x1C5),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x1CA),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x1D2),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x1D8),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x1DE),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x1E4),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x1EA),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x1F0),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x1F6),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x1FC),
};

/* 80571D20-80571D28 000158 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u8 l_loadResPtrn0[5 + 3 /* padding */] = {
    0x01,
    0x03,
    0x04,
    0x06,
    0xFF,
    /* padding */
    0x00,
    0x00,
    0x00,
};

/* 80571D28-80571D2C 000160 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u32 l_loadResPtrn1 = 0x010302FF;

/* 80571D2C-80571D34 000164 0006+02 1/0 0/0 0/0 .data            l_loadResPtrn2 */
SECTION_DATA static u8 l_loadResPtrn2[6 + 2 /* padding */] = {
    0x01,
    0x03,
    0x05,
    0x06,
    0x07,
    0xFF,
    /* padding */
    0x00,
    0x00,
};

/* 80571D34-80571D3C 00016C 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn3 */
SECTION_DATA static u8 l_loadResPtrn3[5 + 3 /* padding */] = {
    0x01,
    0x03,
    0x04,
    0x07,
    0xFF,
    /* padding */
    0x00,
    0x00,
    0x00,
};

/* 80571D3C-80571D40 000174 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn4 */
SECTION_DATA static u32 l_loadResPtrn4 = 0x010308FF;

/* 80571D40-80571D48 000178 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn5 */
SECTION_DATA static u8 l_loadResPtrn5[5 + 3 /* padding */] = {
    0x09,
    0x03,
    0x04,
    0x08,
    0xFF,
    /* padding */
    0x00,
    0x00,
    0x00,
};

/* 80571D48-80571D50 000180 0006+02 1/0 0/0 0/0 .data            l_loadResPtrn6 */
SECTION_DATA static u8 l_loadResPtrn6[6 + 2 /* padding */] = {
    0x01,
    0x03,
    0x04,
    0x05,
    0x06,
    0xFF,
    /* padding */
    0x00,
    0x00,
};

/* 80571D50-80571D5C 000188 0009+03 1/0 0/0 0/0 .data            l_loadResPtrn9 */
SECTION_DATA static u8 l_loadResPtrn9[9 + 3 /* padding */] = {
    0x01,
    0x02,
    0x03,
    0x04,
    0x05,
    0x06,
    0x07,
    0x08,
    0xFF,
    /* padding */
    0x00,
    0x00,
    0x00,
};

/* 80571D5C-80571DA0 -00001 0044+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[17] = {
    (void*)&l_loadResPtrn6, (void*)&l_loadResPtrn6, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn1,
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn3, (void*)&l_loadResPtrn6,
    (void*)&l_loadResPtrn2, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn6, (void*)&l_loadResPtrn6,
    (void*)&l_loadResPtrn6, (void*)&l_loadResPtrn4, (void*)&l_loadResPtrn5, (void*)&l_loadResPtrn6,
    (void*)&l_loadResPtrn9,
};

/* 80571DA0-805720E8 0001D8 0348+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[840] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x2D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x2F,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x20,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x1C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x1C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x1B,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 805720E8-80572580 000520 0498+00 1/2 0/0 0/0 .data            l_motionAnmData */
SECTION_DATA static u8 l_motionAnmData[1176] = {
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
};

/* 80572580-80572780 0009B8 0200+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[512] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x15, 0xFF, 0x01, 0x00, 0x16, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x18, 0xFF, 0x01, 0x00, 0x19, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1A, 0xFF, 0x01, 0x00, 0x1B, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x16, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x17, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x19, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1C, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x18, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80572780-80572A20 000BB8 02A0+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[672] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x15, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x16, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x18, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x19, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1A, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1B, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1C, 0xFF, 0x01, 0x00, 0x1D, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1E, 0x0A, 0x01, 0x00, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x20, 0xFF, 0x01, 0x00, 0x1F, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x23, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x24, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x25, 0xFF, 0x01, 0x00, 0x24, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x26, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x27, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x01, 0x00, 0x12, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x01, 0x00, 0x12, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x17, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x21, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x22, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x28, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x28, 0xFF, 0x01, 0x00, 0x29, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80572A20-80572A64 -00001 0044+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_Taro_c */
SECTION_DATA void* daNpc_Taro_c::mCutNameList[17] = {
    (void*)&d_a_npc_taro__stringBase0,
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x201),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x21D),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x238),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0xD),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x12),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x1E),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x39),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x244),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x68),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x253),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x26A),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x280),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x179),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x181),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x28E),
    (void*)(((char*)&d_a_npc_taro__stringBase0) + 0x1BB),
};

/* 80572A64-80572A70 -00001 000C+00 0/1 0/0 0/0 .data            @4215 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4215[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutPachinko__12daNpc_Taro_cFi,
};
#pragma pop

/* 80572A70-80572A7C -00001 000C+00 0/1 0/0 0/0 .data            @4216 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4216[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutWoodSwd__12daNpc_Taro_cFi,
};
#pragma pop

/* 80572A7C-80572A88 -00001 000C+00 0/1 0/0 0/0 .data            @4217 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4217[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutSwdTutorial__12daNpc_Taro_cFi,
};
#pragma pop

/* 80572A88-80572A94 -00001 000C+00 0/1 0/0 0/0 .data            @4218 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4218[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutHail__12daNpc_Taro_cFi,
};
#pragma pop

/* 80572A94-80572AA0 -00001 000C+00 0/1 0/0 0/0 .data            @4219 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4219[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutFindMonkey__12daNpc_Taro_cFi,
};
#pragma pop

/* 80572AA0-80572AAC -00001 000C+00 0/1 0/0 0/0 .data            @4220 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4220[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutHelpMe__12daNpc_Taro_cFi,
};
#pragma pop

/* 80572AAC-80572AB8 -00001 000C+00 0/1 0/0 0/0 .data            @4221 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4221[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutAppearanceMoi__12daNpc_Taro_cFi,
};
#pragma pop

/* 80572AB8-80572AC4 -00001 000C+00 0/1 0/0 0/0 .data            @4222 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4222[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutGiveMeWoodSwd__12daNpc_Taro_cFi,
};
#pragma pop

/* 80572AC4-80572AD0 -00001 000C+00 0/1 0/0 0/0 .data            @4223 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4223[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutGetWoodSwd__12daNpc_Taro_cFi,
};
#pragma pop

/* 80572AD0-80572ADC -00001 000C+00 0/1 0/0 0/0 .data            @4224 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4224[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationWithMaro__12daNpc_Taro_cFi,
};
#pragma pop

/* 80572ADC-80572AE8 -00001 000C+00 0/1 0/0 0/0 .data            @4225 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4225[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutCacaricoConversation__12daNpc_Taro_cFi,
};
#pragma pop

/* 80572AE8-80572AF4 -00001 000C+00 0/1 0/0 0/0 .data            @4226 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4226[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutArrowTutorial__12daNpc_Taro_cFi,
};
#pragma pop

/* 80572AF4-80572B00 -00001 000C+00 0/1 0/0 0/0 .data            @4227 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4227[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutCaution__12daNpc_Taro_cFi,
};
#pragma pop

/* 80572B00-80572B0C -00001 000C+00 0/1 0/0 0/0 .data            @4228 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4228[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTagPush1__12daNpc_Taro_cFi,
};
#pragma pop

/* 80572B0C-80572B18 -00001 000C+00 0/1 0/0 0/0 .data            @4229 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4229[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutNotGonnaLet__12daNpc_Taro_cFi,
};
#pragma pop

/* 80572B18-80572B24 -00001 000C+00 0/1 0/0 0/0 .data            @4230 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4230[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTagPush4__12daNpc_Taro_cFi,
};
#pragma pop

/* 80572B24-80572BF0 000F5C 00CC+00 1/2 0/0 0/0 .data            mCutList__12daNpc_Taro_c */
SECTION_DATA u8 daNpc_Taro_c::mCutList[204] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80572BF0-80572C30 -00001 0040+00 1/1 0/0 0/0 .data            @4989 */
SECTION_DATA static void* lit_4989[16] = {
    (void*)(((char*)getType__12daNpc_Taro_cFv) + 0x28),
    (void*)(((char*)getType__12daNpc_Taro_cFv) + 0x30),
    (void*)(((char*)getType__12daNpc_Taro_cFv) + 0x38),
    (void*)(((char*)getType__12daNpc_Taro_cFv) + 0x40),
    (void*)(((char*)getType__12daNpc_Taro_cFv) + 0x48),
    (void*)(((char*)getType__12daNpc_Taro_cFv) + 0x50),
    (void*)(((char*)getType__12daNpc_Taro_cFv) + 0x58),
    (void*)(((char*)getType__12daNpc_Taro_cFv) + 0x60),
    (void*)(((char*)getType__12daNpc_Taro_cFv) + 0x68),
    (void*)(((char*)getType__12daNpc_Taro_cFv) + 0x70),
    (void*)(((char*)getType__12daNpc_Taro_cFv) + 0x78),
    (void*)(((char*)getType__12daNpc_Taro_cFv) + 0x80),
    (void*)(((char*)getType__12daNpc_Taro_cFv) + 0x88),
    (void*)(((char*)getType__12daNpc_Taro_cFv) + 0x90),
    (void*)(((char*)getType__12daNpc_Taro_cFv) + 0x98),
    (void*)(((char*)getType__12daNpc_Taro_cFv) + 0xA0),
};

/* 80572C30-80572C70 -00001 0040+00 1/1 0/0 0/0 .data            @5030 */
SECTION_DATA static void* lit_5030[16] = {
    (void*)(((char*)isDelete__12daNpc_Taro_cFv) + 0x34),
    (void*)(((char*)isDelete__12daNpc_Taro_cFv) + 0x64),
    (void*)(((char*)isDelete__12daNpc_Taro_cFv) + 0x78),
    (void*)(((char*)isDelete__12daNpc_Taro_cFv) + 0x80),
    (void*)(((char*)isDelete__12daNpc_Taro_cFv) + 0x88),
    (void*)(((char*)isDelete__12daNpc_Taro_cFv) + 0xB8),
    (void*)(((char*)isDelete__12daNpc_Taro_cFv) + 0xE8),
    (void*)(((char*)isDelete__12daNpc_Taro_cFv) + 0x118),
    (void*)(((char*)isDelete__12daNpc_Taro_cFv) + 0x148),
    (void*)(((char*)isDelete__12daNpc_Taro_cFv) + 0x15C),
    (void*)(((char*)isDelete__12daNpc_Taro_cFv) + 0x164),
    (void*)(((char*)isDelete__12daNpc_Taro_cFv) + 0x170),
    (void*)(((char*)isDelete__12daNpc_Taro_cFv) + 0x1A0),
    (void*)(((char*)isDelete__12daNpc_Taro_cFv) + 0x1D0),
    (void*)(((char*)isDelete__12daNpc_Taro_cFv) + 0x1D8),
    (void*)(((char*)isDelete__12daNpc_Taro_cFv) + 0x208),
};

/* 80572C70-80572CB0 -00001 0040+00 1/1 0/0 0/0 .data            @5081 */
SECTION_DATA static void* lit_5081[16] = {
    (void*)(((char*)reset__12daNpc_Taro_cFv) + 0x168),
    (void*)(((char*)reset__12daNpc_Taro_cFv) + 0x170),
    (void*)(((char*)reset__12daNpc_Taro_cFv) + 0x194),
    (void*)(((char*)reset__12daNpc_Taro_cFv) + 0x1EC),
    (void*)(((char*)reset__12daNpc_Taro_cFv) + 0x1A0),
    (void*)(((char*)reset__12daNpc_Taro_cFv) + 0x1EC),
    (void*)(((char*)reset__12daNpc_Taro_cFv) + 0x1EC),
    (void*)(((char*)reset__12daNpc_Taro_cFv) + 0x1EC),
    (void*)(((char*)reset__12daNpc_Taro_cFv) + 0x1EC),
    (void*)(((char*)reset__12daNpc_Taro_cFv) + 0x1C0),
    (void*)(((char*)reset__12daNpc_Taro_cFv) + 0x1EC),
    (void*)(((char*)reset__12daNpc_Taro_cFv) + 0x1EC),
    (void*)(((char*)reset__12daNpc_Taro_cFv) + 0x1CC),
    (void*)(((char*)reset__12daNpc_Taro_cFv) + 0x1D8),
    (void*)(((char*)reset__12daNpc_Taro_cFv) + 0x1EC),
    (void*)(((char*)reset__12daNpc_Taro_cFv) + 0x1E4),
};

/* 80572CB0-80572CBC -00001 000C+00 0/1 0/0 0/0 .data            @5109 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5109[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)swdTutorial__12daNpc_Taro_cFPv,
};
#pragma pop

/* 80572CBC-80572CC8 -00001 000C+00 0/1 0/0 0/0 .data            @5112 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5112[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk_withMaro__12daNpc_Taro_cFPv,
};
#pragma pop

/* 80572CC8-80572CD4 -00001 000C+00 0/1 0/0 0/0 .data            @5125 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5125[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)practice__12daNpc_Taro_cFPv,
};
#pragma pop

/* 80572CD4-80572CE0 -00001 000C+00 1/1 0/0 0/0 .data            @5164 */
SECTION_DATA static void* lit_5164[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Taro_cFPv,
};

/* 80572CE0-80572D1C -00001 003C+00 1/1 0/0 0/0 .data            @5233 */
SECTION_DATA static void* lit_5233[15] = {
    (void*)(((char*)setAfterTalkMotion__12daNpc_Taro_cFv) + 0x7C),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Taro_cFv) + 0x40),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Taro_cFv) + 0x48),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Taro_cFv) + 0x50),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Taro_cFv) + 0x58),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Taro_cFv) + 0x60),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Taro_cFv) + 0x7C),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Taro_cFv) + 0x7C),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Taro_cFv) + 0x7C),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Taro_cFv) + 0x7C),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Taro_cFv) + 0x7C),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Taro_cFv) + 0x7C),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Taro_cFv) + 0x68),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Taro_cFv) + 0x70),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Taro_cFv) + 0x78),
};

/* 80572D1C-80572D5C -00001 0040+00 1/1 0/0 0/0 .data            @5298 */
SECTION_DATA static void* lit_5298[16] = {
    (void*)(((char*)srchActors__12daNpc_Taro_cFv) + 0x3C),
    (void*)(((char*)srchActors__12daNpc_Taro_cFv) + 0xE4),
    (void*)(((char*)srchActors__12daNpc_Taro_cFv) + 0x35C),
    (void*)(((char*)srchActors__12daNpc_Taro_cFv) + 0x110),
    (void*)(((char*)srchActors__12daNpc_Taro_cFv) + 0x13C),
    (void*)(((char*)srchActors__12daNpc_Taro_cFv) + 0x13C),
    (void*)(((char*)srchActors__12daNpc_Taro_cFv) + 0x35C),
    (void*)(((char*)srchActors__12daNpc_Taro_cFv) + 0x35C),
    (void*)(((char*)srchActors__12daNpc_Taro_cFv) + 0x1B8),
    (void*)(((char*)srchActors__12daNpc_Taro_cFv) + 0x35C),
    (void*)(((char*)srchActors__12daNpc_Taro_cFv) + 0x230),
    (void*)(((char*)srchActors__12daNpc_Taro_cFv) + 0x35C),
    (void*)(((char*)srchActors__12daNpc_Taro_cFv) + 0x25C),
    (void*)(((char*)srchActors__12daNpc_Taro_cFv) + 0x2B0),
    (void*)(((char*)srchActors__12daNpc_Taro_cFv) + 0x2E0),
    (void*)(((char*)srchActors__12daNpc_Taro_cFv) + 0x30C),
};

/* 80572D5C-80572D68 -00001 000C+00 1/1 0/0 0/0 .data            @5302 */
SECTION_DATA static void* lit_5302[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Taro_cFPv,
};

/* 80572D68-80572D74 -00001 000C+00 1/1 0/0 0/0 .data            @5307 */
SECTION_DATA static void* lit_5307[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Taro_cFPv,
};

/* 80572D74-80572D80 -00001 000C+00 0/1 0/0 0/0 .data            @5704 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5704[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)nurse__12daNpc_Taro_cFPv,
};
#pragma pop

/* 80572D80-80572D8C -00001 000C+00 0/1 0/0 0/0 .data            @5708 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5708[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)swdTutorial__12daNpc_Taro_cFPv,
};
#pragma pop

/* 80572D8C-80572D98 -00001 000C+00 0/1 0/0 0/0 .data            @5710 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5710[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_Taro_cFPv,
};
#pragma pop

/* 80572D98-80572DA4 -00001 000C+00 0/1 0/0 0/0 .data            @5712 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5712[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_Taro_cFPv,
};
#pragma pop

/* 80572DA4-80572EC8 -00001 0124+00 1/1 0/0 0/0 .data            @6200 */
SECTION_DATA static void* lit_6200[73] = {
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x66C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x6BC),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x6F0),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x6F8),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x72C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x7B4),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x864),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x864),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x918),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x72C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x72C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x864),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x864),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x72C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x9C8),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA64),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x9D0),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0xA44),
};

/* 80572EC8-80572FEC -00001 0124+00 1/1 0/0 0/0 .data            @6199 */
SECTION_DATA static void* lit_6199[73] = {
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x158),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x1B8),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x1CC),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x1D4),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x280),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x31C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x330),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x3CC),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x498),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x3CC),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x544),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x63C),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x550),
    (void*)(((char*)cutSwdTutorial__12daNpc_Taro_cFi) + 0x634),
};

/* 80572FEC-80573008 -00001 001C+00 1/1 0/0 0/0 .data            @6436 */
SECTION_DATA static void* lit_6436[7] = {
    (void*)(((char*)cutFindMonkey__12daNpc_Taro_cFi) + 0x1E0),
    (void*)(((char*)cutFindMonkey__12daNpc_Taro_cFi) + 0x260),
    (void*)(((char*)cutFindMonkey__12daNpc_Taro_cFi) + 0x34C),
    (void*)(((char*)cutFindMonkey__12daNpc_Taro_cFi) + 0x3EC),
    (void*)(((char*)cutFindMonkey__12daNpc_Taro_cFi) + 0x4B8),
    (void*)(((char*)cutFindMonkey__12daNpc_Taro_cFi) + 0x5EC),
    (void*)(((char*)cutFindMonkey__12daNpc_Taro_cFi) + 0x604),
};

/* 80573008-80573024 -00001 001C+00 1/1 0/0 0/0 .data            @6435 */
SECTION_DATA static void* lit_6435[7] = {
    (void*)(((char*)cutFindMonkey__12daNpc_Taro_cFi) + 0xE8),
    (void*)(((char*)cutFindMonkey__12daNpc_Taro_cFi) + 0x114),
    (void*)(((char*)cutFindMonkey__12daNpc_Taro_cFi) + 0x1A8),
    (void*)(((char*)cutFindMonkey__12daNpc_Taro_cFi) + 0x11C),
    (void*)(((char*)cutFindMonkey__12daNpc_Taro_cFi) + 0x130),
    (void*)(((char*)cutFindMonkey__12daNpc_Taro_cFi) + 0x188),
    (void*)(((char*)cutFindMonkey__12daNpc_Taro_cFi) + 0x1A8),
};

/* 80573024-80573050 -00001 002C+00 1/1 0/0 0/0 .data            @6878 */
SECTION_DATA static void* lit_6878[11] = {
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0x504),
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0x824),
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0x870),
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0x8DC),
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0x8DC),
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0x8DC),
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0xADC),
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0xB84),
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0xB84),
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0xB84),
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0xAE4),
};

/* 80573050-8057307C -00001 002C+00 1/1 0/0 0/0 .data            @6877 */
SECTION_DATA static void* lit_6877[11] = {
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0x118),
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0x1A8),
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0x2CC),
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0x334),
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0x3AC),
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0x4E4),
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0x4C8),
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0x4E4),
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0x4E4),
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0x4E4),
    (void*)(((char*)cutAppearanceMoi__12daNpc_Taro_cFi) + 0x4E4),
};

/* 8057307C-805730A0 -00001 0024+00 1/1 0/0 0/0 .data            @7059 */
SECTION_DATA static void* lit_7059[9] = {
    (void*)(((char*)cutGiveMeWoodSwd__12daNpc_Taro_cFi) + 0x16C),
    (void*)(((char*)cutGiveMeWoodSwd__12daNpc_Taro_cFi) + 0x1C4),
    (void*)(((char*)cutGiveMeWoodSwd__12daNpc_Taro_cFi) + 0x1CC),
    (void*)(((char*)cutGiveMeWoodSwd__12daNpc_Taro_cFi) + 0x24C),
    (void*)(((char*)cutGiveMeWoodSwd__12daNpc_Taro_cFi) + 0x348),
    (void*)(((char*)cutGiveMeWoodSwd__12daNpc_Taro_cFi) + 0x348),
    (void*)(((char*)cutGiveMeWoodSwd__12daNpc_Taro_cFi) + 0x348),
    (void*)(((char*)cutGiveMeWoodSwd__12daNpc_Taro_cFi) + 0x260),
    (void*)(((char*)cutGiveMeWoodSwd__12daNpc_Taro_cFi) + 0x338),
};

/* 805730A0-805730F8 -00001 0058+00 1/1 0/0 0/0 .data            @7369 */
SECTION_DATA static void* lit_7369[22] = {
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x470),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x470),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x4C0),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x500),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0xAA4),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0xAA4),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0xAA4),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0xAA4),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0xAA4),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0xAA4),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0xAA4),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x588),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x724),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x910),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x948),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x948),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0xAA4),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0xAA4),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0xAA4),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0xAA4),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0xA8C),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0xA8C),
};

/* 805730F8-80573150 -00001 0058+00 1/1 0/0 0/0 .data            @7368 */
SECTION_DATA static void* lit_7368[22] = {
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x198),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x198),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x1A0),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x264),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x438),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x438),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x438),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x438),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x438),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x438),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x438),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x278),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x338),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x3B8),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x438),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x438),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x438),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x438),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x438),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x438),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x438),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Taro_cFi) + 0x430),
};

/* 80573150-8057317C -00001 002C+00 1/1 0/0 0/0 .data            @7782 */
SECTION_DATA static void* lit_7782[11] = {
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0x53C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0x53C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0x53C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0x558),
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0x558),
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0x610),
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0x6A0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0x6C0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0x7D0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0x7D0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0x6A8),
};

/* 8057317C-805731A8 -00001 002C+00 1/1 0/0 0/0 .data            @7781 */
SECTION_DATA static void* lit_7781[11] = {
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0xB4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0xCC),
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0x51C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0x200),
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0x51C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0x30C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0x43C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0x498),
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0x51C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0x51C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Taro_cFi) + 0x490),
};

/* 805731A8-8057324C -00001 00A4+00 1/1 0/0 0/0 .data            @8208 */
SECTION_DATA static void* lit_8208[41] = {
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x94C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x968),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x970),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x970),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x970),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x970),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x970),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x970),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x970),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x974),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x99C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x99C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x970),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x970),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x974),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x94C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9A4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x9CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x968),
};

/* 8057324C-805732F0 -00001 00A4+00 1/1 0/0 0/0 .data            @8207 */
SECTION_DATA static void* lit_8207[41] = {
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x114),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x120),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x24C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x260),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x2FC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x338),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x3D4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x47C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x524),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x560),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x5F4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x708),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x7B4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x7CC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x814),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x864),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x91C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Taro_cFi) + 0x204),
};

/* 805732F0-80573328 -00001 0038+00 1/1 0/0 0/0 .data            @8839 */
SECTION_DATA static void* lit_8839[14] = {
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x8E4),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x7DC),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x7DC),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x8E4),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x7E8),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x7E8),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x858),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x8E4),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x8CC),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x7DC),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x858),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x864),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x8E4),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x8C0),
};

/* 80573328-80573364 -00001 003C+00 1/1 0/0 0/0 .data            @8838 */
SECTION_DATA static void* lit_8838[15] = {
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x424),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x764),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x764),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x4BC),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x764),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x764),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x764),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x764),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x548),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x764),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x764),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x764),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x60C),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x640),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x728),
};

/* 80573364-8057339C -00001 0038+00 1/1 0/0 0/0 .data            @8837 */
SECTION_DATA static void* lit_8837[14] = {
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x3A0),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x7C),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x7C),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0xEC),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x3A0),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x3A0),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x148),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x3A0),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x268),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x344),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x3A0),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x3A0),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x3A0),
    (void*)(((char*)wait__12daNpc_Taro_cFPv) + 0x1A4),
};

/* 8057339C-805733BC -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Taro_MethodTable */
static actor_method_class daNpc_Taro_MethodTable = {
    (process_method_func)daNpc_Taro_Create__FPv,
    (process_method_func)daNpc_Taro_Delete__FPv,
    (process_method_func)daNpc_Taro_Execute__FPv,
    (process_method_func)daNpc_Taro_IsDelete__FPv,
    (process_method_func)daNpc_Taro_Draw__FPv,
};

/* 805733BC-805733EC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_TARO */
extern actor_process_profile_definition g_profile_NPC_TARO = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_TARO,           // mProcName
  &g_fpcLf_Method.mBase,   // sub_method
  sizeof(daNpc_Taro_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  367,                     // mPriority
  &daNpc_Taro_MethodTable, // sub_method
  0x00040107,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 805733EC-805733F8 001824 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 805733F8-80573404 001830 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80573404-80573428 00183C 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8057164C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80571644,
};

/* 80573428-80573434 001860 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80573434-80573440 00186C 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80573440-8057344C 001878 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8057344C-80573458 001884 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80573458-80573464 001890 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80573464-80573470 00189C 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80573470-8057347C 0018A8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8057347C-80573488 0018B4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80573488-8057354C 0018C0 00C4+00 2/2 0/0 0/0 .data            __vt__12daNpc_Taro_c */
SECTION_DATA extern void* __vt__12daNpc_Taro_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daNpc_Taro_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__12daNpc_Taro_cFi,
    (void*)checkRemoveJoint__12daNpc_Taro_cFi,
    (void*)getBackboneJointNo__12daNpc_Taro_cFv,
    (void*)getNeckJointNo__12daNpc_Taro_cFv,
    (void*)getHeadJointNo__12daNpc_Taro_cFv,
    (void*)getFootLJointNo__12daNpc_Taro_cFv,
    (void*)getFootRJointNo__12daNpc_Taro_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__12daNpc_Taro_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__12daNpc_Taro_cFi,
    (void*)setParam__12daNpc_Taro_cFv,
    (void*)checkChangeEvt__12daNpc_Taro_cFv,
    (void*)evtTalk__12daNpc_Taro_cFv,
    (void*)evtEndProc__12daNpc_Taro_cFv,
    (void*)evtCutProc__12daNpc_Taro_cFv,
    (void*)setAfterTalkMotion__12daNpc_Taro_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__12daNpc_Taro_cFv,
    (void*)beforeMove__12daNpc_Taro_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__12daNpc_Taro_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__12daNpc_Taro_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__12daNpc_Taro_cFv,
    (void*)drawOtherMdl__12daNpc_Taro_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__8daNpcT_cFiifi,
    (void*)getFaceMotionAnm__12daNpc_Taro_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__8daNpcT_cFPiPi,
    (void*)changeBck__8daNpcT_cFPiPi,
    (void*)changeBtp__8daNpcT_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
};

/* 80565E8C-8056604C 0000EC 01C0+00 1/0 0/0 0/0 .text            __dt__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_Taro_c::~daNpc_Taro_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__dt__12daNpc_Taro_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 805716C8-80571758 000000 0090+00 19/19 0/0 0/0 .rodata          m__18daNpc_Taro_Param_c */
SECTION_RODATA u8 const daNpc_Taro_Param_c::m[144] = {
    0x43, 0x0C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x42, 0xF0, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0xC1, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0x42, 0x5C, 0x00, 0x00, 0x00, 0x78, 0x00, 0x5A,
};
COMPILER_STRIP_GATE(0x805716C8, &daNpc_Taro_Param_c::m);

/* 80571758-8057179C 000090 0044+00 0/1 0/0 0/0 .rodata          heapSize$4397 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[68] = {
    0x00, 0x00, 0x40, 0xF0, 0x00, 0x00, 0x40, 0xF0, 0x00, 0x00, 0x48, 0xF0, 0x00, 0x00,
    0x38, 0x40, 0x00, 0x00, 0x39, 0x10, 0x00, 0x00, 0x39, 0x10, 0x00, 0x00, 0x48, 0xF0,
    0x00, 0x00, 0x39, 0x10, 0x00, 0x00, 0x39, 0x10, 0x00, 0x00, 0x41, 0x00, 0x00, 0x00,
    0x39, 0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x40, 0xF0, 0x00, 0x00, 0x39, 0x00,
    0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x40, 0xF0, 0x00, 0x00, 0x48, 0xF0,
};
COMPILER_STRIP_GATE(0x80571758, &heapSize);
#pragma pop

/* 8057179C-805717A0 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4468 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4468 = -200.0f;
COMPILER_STRIP_GATE(0x8057179C, &lit_4468);
#pragma pop

/* 805717A0-805717A4 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4469 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4469 = -100.0f;
COMPILER_STRIP_GATE(0x805717A0, &lit_4469);
#pragma pop

/* 805717A4-805717A8 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4470 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4470 = 200.0f;
COMPILER_STRIP_GATE(0x805717A4, &lit_4470);
#pragma pop

/* 805717A8-805717AC 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4471 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4471 = 300.0f;
COMPILER_STRIP_GATE(0x805717A8, &lit_4471);
#pragma pop

/* 805717AC-805717B0 0000E4 0004+00 13/26 0/0 0/0 .rodata          @4472 */
SECTION_RODATA static u8 const lit_4472[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x805717AC, &lit_4472);

/* 805717B0-805717B4 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4473 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4473 = -1000000000.0f;
COMPILER_STRIP_GATE(0x805717B0, &lit_4473);
#pragma pop

/* 8056604C-80566340 0002AC 02F4+00 1/1 0/0 0/0 .text            create__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::create() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/create__12daNpc_Taro_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 805717B4-805717B8 0000EC 0004+00 0/2 0/0 0/0 .rodata          @4644 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4644 = 65536.0f;
COMPILER_STRIP_GATE(0x805717B4, &lit_4644);
#pragma pop

/* 805717B8-805717BC 0000F0 0004+00 0/3 0/0 0/0 .rodata          @4645 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4645 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x805717B8, &lit_4645);
#pragma pop

/* 805717BC-805717C0 0000F4 0004+00 2/4 0/0 0/0 .rodata          @4835 */
SECTION_RODATA static f32 const lit_4835 = 1.0f;
COMPILER_STRIP_GATE(0x805717BC, &lit_4835);

/* 80566340-80566754 0005A0 0414+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/CreateHeap__12daNpc_Taro_cFv.s"
}
#pragma pop

/* 80566754-80566790 0009B4 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" asm void __dt__15J3DTevKColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__dt__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 80566790-805667A8 0009F0 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" asm void __ct__15J3DTevKColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__ct__15J3DTevKColorAnmFv.s"
}
#pragma pop

/* 805667A8-805667E4 000A08 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" asm void __dt__14J3DTevColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__dt__14J3DTevColorAnmFv.s"
}
#pragma pop

/* 805667E4-805667FC 000A44 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTevColorAnm::J3DTevColorAnm() {
extern "C" asm void __ct__14J3DTevColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__ct__14J3DTevColorAnmFv.s"
}
#pragma pop

/* 805667FC-80566844 000A5C 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" asm void __dt__11J3DTexNoAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__dt__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 80566844-80566868 000AA4 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexNoAnm::J3DTexNoAnm() {
extern "C" asm void __ct__11J3DTexNoAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__ct__11J3DTexNoAnmFv.s"
}
#pragma pop

/* 80566868-805668A4 000AC8 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" asm void __dt__12J3DTexMtxAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__dt__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 805668A4-805668BC 000B04 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" asm void __ct__12J3DTexMtxAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__ct__12J3DTexMtxAnmFv.s"
}
#pragma pop

/* 805668BC-805668F8 000B1C 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" asm void __dt__14J3DMatColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__dt__14J3DMatColorAnmFv.s"
}
#pragma pop

/* 805668F8-80566910 000B58 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DMatColorAnm::J3DMatColorAnm() {
extern "C" asm void __ct__14J3DMatColorAnmFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__ct__14J3DMatColorAnmFv.s"
}
#pragma pop

/* 80566910-80566944 000B70 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::Delete() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/Delete__12daNpc_Taro_cFv.s"
}
#pragma pop

/* 80566944-80566964 000BA4 0020+00 2/2 0/0 0/0 .text            Execute__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::Execute() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/Execute__12daNpc_Taro_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 805717C0-805717C4 0000F8 0004+00 1/2 0/0 0/0 .rodata          @4884 */
SECTION_RODATA static f32 const lit_4884 = 100.0f;
COMPILER_STRIP_GATE(0x805717C0, &lit_4884);

/* 80566964-805669F8 000BC4 0094+00 1/1 0/0 0/0 .text            Draw__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::Draw() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/Draw__12daNpc_Taro_cFv.s"
}
#pragma pop

/* 805669F8-80566A18 000C58 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daNpc_Taro_cFP10fopAc_ac_c             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::createHeapCallBack(fopAc_ac_c* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/createHeapCallBack__12daNpc_Taro_cFP10fopAc_ac_c.s"
}
#pragma pop

/* 80566A18-80566A70 000C78 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__12daNpc_Taro_cFP8J3DJointi                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/ctrlJointCallBack__12daNpc_Taro_cFP8J3DJointi.s"
}
#pragma pop

/* 80566A70-80566B0C 000CD0 009C+00 1/1 0/0 0/0 .text            srchArrow__12daNpc_Taro_cFPvPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::srchArrow(void* param_0, void* param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/srchArrow__12daNpc_Taro_cFPvPv.s"
}
#pragma pop

/* 80566B0C-80566BD4 000D6C 00C8+00 1/1 0/0 0/0 .text            srchNpc__12daNpc_Taro_cFPvPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::srchNpc(void* param_0, void* param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/srchNpc__12daNpc_Taro_cFPvPv.s"
}
#pragma pop

/* ############################################################################################## */
/* 805717C4-805717C8 0000FC 0004+00 1/1 0/0 0/0 .rodata          @4965 */
SECTION_RODATA static f32 const lit_4965 = 1000000000.0f;
COMPILER_STRIP_GATE(0x805717C4, &lit_4965);

/* 80566BD4-80566CCC 000E34 00F8+00 1/1 0/0 0/0 .text            getArrowP__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::getArrowP() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/getArrowP__12daNpc_Taro_cFv.s"
}
#pragma pop

/* 80566CCC-80566D7C 000F2C 00B0+00 2/1 0/0 0/0 .text            getType__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::getType() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/getType__12daNpc_Taro_cFv.s"
}
#pragma pop

/* 80566D7C-80566FA4 000FDC 0228+00 2/1 0/0 0/0 .text            isDelete__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::isDelete() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/isDelete__12daNpc_Taro_cFv.s"
}
#pragma pop

/* 80566FA4-805671F4 001204 0250+00 2/1 0/0 0/0 .text            reset__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::reset() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/reset__12daNpc_Taro_cFv.s"
}
#pragma pop

/* 805671F4-80567280 001454 008C+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_Taro_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::afterJntAnm(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/afterJntAnm__12daNpc_Taro_cFi.s"
}
#pragma pop

/* ############################################################################################## */
/* 805717C8-805717CC 000100 0004+00 0/1 0/0 0/0 .rodata          @5156 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5156 = 180.0f;
COMPILER_STRIP_GATE(0x805717C8, &lit_5156);
#pragma pop

/* 805717CC-805717D0 000104 0004+00 0/1 0/0 0/0 .rodata          @5157 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5157 = 500.0f;
COMPILER_STRIP_GATE(0x805717CC, &lit_5157);
#pragma pop

/* 80567280-8056747C 0014E0 01FC+00 1/0 0/0 0/0 .text            setParam__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::setParam() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/setParam__12daNpc_Taro_cFv.s"
}
#pragma pop

/* 8056747C-8056757C 0016DC 0100+00 1/0 0/0 0/0 .text            checkChangeEvt__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::checkChangeEvt() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/checkChangeEvt__12daNpc_Taro_cFv.s"
}
#pragma pop

/* 8056757C-805675B8 0017DC 003C+00 1/0 0/0 0/0 .text            evtEndProc__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::evtEndProc() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/evtEndProc__12daNpc_Taro_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 805717D0-805717D4 000108 0004+00 6/13 0/0 0/0 .rodata          @5232 */
SECTION_RODATA static f32 const lit_5232 = -1.0f;
COMPILER_STRIP_GATE(0x805717D0, &lit_5232);

/* 805675B8-8056767C 001818 00C4+00 2/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::setAfterTalkMotion() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/setAfterTalkMotion__12daNpc_Taro_cFv.s"
}
#pragma pop

/* 8056767C-805679F0 0018DC 0374+00 2/1 0/0 0/0 .text            srchActors__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::srchActors() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/srchActors__12daNpc_Taro_cFv.s"
}
#pragma pop

/* 805679F0-80567A90 001C50 00A0+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::evtTalk() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/evtTalk__12daNpc_Taro_cFv.s"
}
#pragma pop

/* 80567A90-80567C90 001CF0 0200+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::evtCutProc() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/evtCutProc__12daNpc_Taro_cFv.s"
}
#pragma pop

/* 80567C90-80567EB4 001EF0 0224+00 1/0 0/0 0/0 .text            action__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::action() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/action__12daNpc_Taro_cFv.s"
}
#pragma pop

/* 80567EB4-80567F78 002114 00C4+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::beforeMove() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/beforeMove__12daNpc_Taro_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 805717D4-805717D8 00010C 0004+00 0/1 0/0 0/0 .rodata          @5501 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5501 = 30.0f;
COMPILER_STRIP_GATE(0x805717D4, &lit_5501);
#pragma pop

/* 805717D8-805717DC 000110 0004+00 0/1 0/0 0/0 .rodata          @5502 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5502 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x805717D8, &lit_5502);
#pragma pop

/* 805717DC-805717E0 000114 0004+00 0/1 0/0 0/0 .rodata          @5503 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5503 = 10.0f;
COMPILER_STRIP_GATE(0x805717DC, &lit_5503);
#pragma pop

/* 805717E0-805717E8 000118 0008+00 2/4 0/0 0/0 .rodata          @5505 */
SECTION_RODATA static u8 const lit_5505[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805717E0, &lit_5505);

/* 80573560-80573564 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80573564-80573568 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80573568-8057356C 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 8057356C-80573570 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80573570-80573574 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80573574-80573578 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80573578-8057357C 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 8057357C-80573580 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80573580-80573584 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80573584-80573588 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80573588-8057358C 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 8057358C-80573590 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80573590-80573594 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80573594-80573598 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80573598-8057359C 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 8057359C-805735A0 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 805735A0-805735AC 000048 000C+00 1/1 0/0 0/0 .bss             @4231 */
static u8 lit_4231[12];

/* 805735AC-805735B0 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 805735B0-805735C0 000058 000C+04 0/1 0/0 0/0 .bss             @5431 */
#pragma push
#pragma force_active on
static u8 lit_5431[12 + 4 /* padding */];
#pragma pop

/* 805735C0-805735CC 000068 000C+00 0/1 0/0 0/0 .bss             prtclScl$5430 */
#pragma push
#pragma force_active on
static u8 prtclScl[12];
#pragma pop

/* 80567F78-805682E8 0021D8 0370+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::setAttnPos() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/setAttnPos__12daNpc_Taro_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 805717E8-805717F0 000120 0008+00 0/1 0/0 0/0 .rodata          @5563 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5563[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805717E8, &lit_5563);
#pragma pop

/* 805717F0-805717F8 000128 0008+00 0/1 0/0 0/0 .rodata          @5564 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5564[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805717F0, &lit_5564);
#pragma pop

/* 805717F8-80571800 000130 0008+00 0/1 0/0 0/0 .rodata          @5565 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5565[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805717F8, &lit_5565);
#pragma pop

/* 80571800-80571804 000138 0004+00 0/1 0/0 0/0 .rodata          @5634 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5634 = 0xC27D8F5C;
COMPILER_STRIP_GATE(0x80571800, &lit_5634);
#pragma pop

/* 80571804-80571808 00013C 0004+00 0/1 0/0 0/0 .rodata          @5635 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5635 = 140.0f;
COMPILER_STRIP_GATE(0x80571804, &lit_5635);
#pragma pop

/* 80571808-8057180C 000140 0004+00 0/1 0/0 0/0 .rodata          @5636 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5636 = 60.0f;
COMPILER_STRIP_GATE(0x80571808, &lit_5636);
#pragma pop

/* 8057180C-80571810 000144 0004+00 0/1 0/0 0/0 .rodata          @5637 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5637 = 40.0f;
COMPILER_STRIP_GATE(0x8057180C, &lit_5637);
#pragma pop

/* 80571810-80571814 000148 0004+00 0/1 0/0 0/0 .rodata          @5638 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5638 = 80.0f;
COMPILER_STRIP_GATE(0x80571810, &lit_5638);
#pragma pop

/* 805682E8-80568590 002548 02A8+00 1/0 0/0 0/0 .text            setCollision__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::setCollision() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/setCollision__12daNpc_Taro_cFv.s"
}
#pragma pop

/* 80568590-80568598 0027F0 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_Taro_cFv */
bool daNpc_Taro_c::drawDbgInfo() {
    return false;
}

/* ############################################################################################## */
/* 80571814-8057181C 00014C 0008+00 1/1 0/0 0/0 .rodata          jointNo$5646 */
SECTION_RODATA static u8 const jointNo[8] = {
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x0F,
};
COMPILER_STRIP_GATE(0x80571814, &jointNo);

/* 80568598-805686A0 0027F8 0108+00 1/0 0/0 0/0 .text            drawOtherMdl__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::drawOtherMdl() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/drawOtherMdl__12daNpc_Taro_cFv.s"
}
#pragma pop

/* 805686A0-80568738 002900 0098+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__12daNpc_Taro_cF26daNpcT_faceMotionAnmData_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/getFaceMotionAnm__12daNpc_Taro_cF26daNpcT_faceMotionAnmData_c.s"
}
#pragma pop

/* 80568738-80568828 002998 00F0+00 1/1 0/0 0/0 .text            selectAction__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::selectAction() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/selectAction__12daNpc_Taro_cFv.s"
}
#pragma pop

/* 80568828-80568854 002A88 002C+00 2/2 0/0 0/0 .text
 * chkAction__12daNpc_Taro_cFM12daNpc_Taro_cFPCvPvPv_i          */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::chkAction(int (daNpc_Taro_c::*param_0)(void*)) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/chkAction__12daNpc_Taro_cFM12daNpc_Taro_cFPCvPvPv_i.s"
}
#pragma pop

/* 80568854-805688FC 002AB4 00A8+00 2/2 0/0 0/0 .text
 * setAction__12daNpc_Taro_cFM12daNpc_Taro_cFPCvPvPv_i          */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::setAction(int (daNpc_Taro_c::*param_0)(void*)) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/setAction__12daNpc_Taro_cFM12daNpc_Taro_cFPCvPvPv_i.s"
}
#pragma pop

/* ############################################################################################## */
/* 8057181C-80571820 000154 0004+00 1/1 0/0 0/0 .rodata          @5760 */
SECTION_RODATA static f32 const lit_5760 = 34.0f;
COMPILER_STRIP_GATE(0x8057181C, &lit_5760);

/* 80571820-80571824 000158 0004+00 1/1 0/0 0/0 .rodata          @5761 */
SECTION_RODATA static f32 const lit_5761 = 52.0f;
COMPILER_STRIP_GATE(0x80571820, &lit_5761);

/* 805688FC-80568A2C 002B5C 0130+00 1/1 0/0 0/0 .text            setSwingVoice__12daNpc_Taro_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::setSwingVoice() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/setSwingVoice__12daNpc_Taro_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80571824-80571828 00015C 0004+00 1/3 0/0 0/0 .rodata          @5839 */
SECTION_RODATA static f32 const lit_5839 = -40.0f;
COMPILER_STRIP_GATE(0x80571824, &lit_5839);

/* 80571908-80571908 000240 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80571BA4 = "prm";
#pragma pop

/* 80568A2C-80568C58 002C8C 022C+00 1/0 0/0 0/0 .text
 * cutConversationAboutPachinko__12daNpc_Taro_cFi               */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::cutConversationAboutPachinko(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/cutConversationAboutPachinko__12daNpc_Taro_cFi.s"
}
#pragma pop

/* 80568C58-80568E00 002EB8 01A8+00 1/0 0/0 0/0 .text
 * cutConversationAboutWoodSwd__12daNpc_Taro_cFi                */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::cutConversationAboutWoodSwd(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/cutConversationAboutWoodSwd__12daNpc_Taro_cFi.s"
}
#pragma pop

/* ############################################################################################## */
/* 80571828-80571834 000160 000C+00 0/1 0/0 0/0 .rodata          @5896 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5896[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80571828, &lit_5896);
#pragma pop

/* 80571834-8057183C 00016C 0008+00 0/1 0/0 0/0 .rodata          @5920 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5920[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80571834, &lit_5920);
#pragma pop

/* 80571908-80571908 000240 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80571BA8 = "timer";
SECTION_DEAD static char const* const stringBase_80571BAE = "msgNo";
#pragma pop

/* 80568E00-80569880 003060 0A80+00 3/0 0/0 0/0 .text            cutSwdTutorial__12daNpc_Taro_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::cutSwdTutorial(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/cutSwdTutorial__12daNpc_Taro_cFi.s"
}
#pragma pop

/* 80569880-80569AFC 003AE0 027C+00 1/0 0/0 0/0 .text            cutHail__12daNpc_Taro_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::cutHail(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/cutHail__12daNpc_Taro_cFi.s"
}
#pragma pop

/* ############################################################################################## */
/* 8057183C-80571840 000174 0004+00 0/0 0/0 0/0 .rodata          @6197 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6197 = -50.0f;
COMPILER_STRIP_GATE(0x8057183C, &lit_6197);
#pragma pop

/* 80571840-80571844 000178 0004+00 0/0 0/0 0/0 .rodata          @6198 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6198 = 8.0f;
COMPILER_STRIP_GATE(0x80571840, &lit_6198);
#pragma pop

/* 80571844-80571850 00017C 000C+00 0/1 0/0 0/0 .rodata          @6309 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6309[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80571844, &lit_6309);
#pragma pop

/* 80569AFC-8056A120 003D5C 0624+00 3/0 0/0 0/0 .text            cutFindMonkey__12daNpc_Taro_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::cutFindMonkey(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/cutFindMonkey__12daNpc_Taro_cFi.s"
}
#pragma pop

/* 8056A120-8056A460 004380 0340+00 1/0 0/0 0/0 .text            cutHelpMe__12daNpc_Taro_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::cutHelpMe(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/cutHelpMe__12daNpc_Taro_cFi.s"
}
#pragma pop

/* ############################################################################################## */
/* 80571850-80571854 000188 0004+00 0/0 0/0 0/0 .rodata          @6432 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6432 = 2500.0f;
COMPILER_STRIP_GATE(0x80571850, &lit_6432);
#pragma pop

/* 80571854-80571858 00018C 0004+00 0/0 0/0 0/0 .rodata          @6433 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6433 = 16.0f;
COMPILER_STRIP_GATE(0x80571854, &lit_6433);
#pragma pop

/* 80571858-8057185C 000190 0004+00 0/1 0/0 0/0 .rodata          @6434 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6434 = 0.5f;
COMPILER_STRIP_GATE(0x80571858, &lit_6434);
#pragma pop

/* 8057185C-80571864 000194 0008+00 0/1 0/0 0/0 .rodata          @6526 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6526[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8057185C, &lit_6526);
#pragma pop

/* 80571864-80571868 00019C 0004+00 0/1 0/0 0/0 .rodata          @6873 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6873 = 400.0f;
COMPILER_STRIP_GATE(0x80571864, &lit_6873);
#pragma pop

/* 8056A460-8056B000 0046C0 0BA0+00 3/0 0/0 0/0 .text            cutAppearanceMoi__12daNpc_Taro_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::cutAppearanceMoi(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/cutAppearanceMoi__12daNpc_Taro_cFi.s"
}
#pragma pop

/* ############################################################################################## */
/* 80571868-8057186C 0001A0 0004+00 0/0 0/0 0/0 .rodata          @6874 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6874 = 1600.0f;
COMPILER_STRIP_GATE(0x80571868, &lit_6874);
#pragma pop

/* 8057186C-80571870 0001A4 0004+00 0/0 0/0 0/0 .rodata          @6875 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6875 = 50.0f;
COMPILER_STRIP_GATE(0x8057186C, &lit_6875);
#pragma pop

/* 80571870-80571874 0001A8 0004+00 0/0 0/0 0/0 .rodata          @6876 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6876 = 800.0f;
COMPILER_STRIP_GATE(0x80571870, &lit_6876);
#pragma pop

/* 80571874-8057187C 0001AC 0008+00 0/1 0/0 0/0 .rodata          @6890 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6890[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80571874, &lit_6890);
#pragma pop

/* 8057187C-80571888 0001B4 000C+00 0/1 0/0 0/0 .rodata          @6904 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6904[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x8057187C, &lit_6904);
#pragma pop

/* 80571908-80571908 000240 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80571BB4 = "msgNo2";
#pragma pop

/* 8056B000-8056B68C 005260 068C+00 2/0 0/0 0/0 .text            cutGiveMeWoodSwd__12daNpc_Taro_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::cutGiveMeWoodSwd(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/cutGiveMeWoodSwd__12daNpc_Taro_cFi.s"
}
#pragma pop

/* ############################################################################################## */
/* 80571888-8057188C 0001C0 0004+00 0/0 0/0 0/0 .rodata          @7053 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7053 = -656.0f;
COMPILER_STRIP_GATE(0x80571888, &lit_7053);
#pragma pop

/* 8057188C-80571890 0001C4 0004+00 0/0 0/0 0/0 .rodata          @7054 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7054 = 1338.0f;
COMPILER_STRIP_GATE(0x8057188C, &lit_7054);
#pragma pop

/* 80571890-80571894 0001C8 0004+00 0/0 0/0 0/0 .rodata          @7055 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7055 = -2237.0f;
COMPILER_STRIP_GATE(0x80571890, &lit_7055);
#pragma pop

/* 80571894-80571898 0001CC 0004+00 0/0 0/0 0/0 .rodata          @7056 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7056 = -419.0f;
COMPILER_STRIP_GATE(0x80571894, &lit_7056);
#pragma pop

/* 80571898-8057189C 0001D0 0004+00 0/0 0/0 0/0 .rodata          @7057 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7057 = 1375.0f;
COMPILER_STRIP_GATE(0x80571898, &lit_7057);
#pragma pop

/* 8057189C-805718A0 0001D4 0004+00 0/0 0/0 0/0 .rodata          @7058 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7058 = -2203.0f;
COMPILER_STRIP_GATE(0x8057189C, &lit_7058);
#pragma pop

/* 805718A0-805718A8 0001D8 0008+00 0/1 0/0 0/0 .rodata          @7073 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7073[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805718A0, &lit_7073);
#pragma pop

/* 805718A8-805718B4 0001E0 000C+00 0/1 0/0 0/0 .rodata          @7089 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7089[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x805718A8, &lit_7089);
#pragma pop

/* 80571908-80571908 000240 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80571BBB = "send";
#pragma pop

/* 8056B68C-8056C14C 0058EC 0AC0+00 3/0 0/0 0/0 .text            cutGetWoodSwd__12daNpc_Taro_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::cutGetWoodSwd(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/cutGetWoodSwd__12daNpc_Taro_cFi.s"
}
#pragma pop

/* ############################################################################################## */
/* 805718B4-805718B8 0001EC 0004+00 0/0 0/0 0/0 .rodata          @7366 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7366 = 45.0f;
COMPILER_STRIP_GATE(0x805718B4, &lit_7366);
#pragma pop

/* 805718B8-805718BC 0001F0 0004+00 0/0 0/0 0/0 .rodata          @7367 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7367 = 63.0f;
COMPILER_STRIP_GATE(0x805718B8, &lit_7367);
#pragma pop

/* 805718BC-805718C4 0001F4 0008+00 0/1 0/0 0/0 .rodata          @7379 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7379[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805718BC, &lit_7379);
#pragma pop

/* 805718C4-805718D0 0001FC 000C+00 0/1 0/0 0/0 .rodata          @7389 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7389[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x805718C4, &lit_7389);
#pragma pop

/* 8056C14C-8056C5B4 0063AC 0468+00 1/0 0/0 0/0 .text cutConversationWithMaro__12daNpc_Taro_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::cutConversationWithMaro(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/cutConversationWithMaro__12daNpc_Taro_cFi.s"
}
#pragma pop

/* ############################################################################################## */
/* 805718D0-805718E0 000208 0010+00 0/1 0/0 0/0 .rodata          @7494 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7494[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805718D0, &lit_7494);
#pragma pop

/* 805718E0-805718E8 000218 0008+00 0/1 0/0 0/0 .rodata          @7501 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7501[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x805718E0, &lit_7501);
#pragma pop

/* 8056C5B4-8056C8CC 006814 0318+00 1/0 0/0 0/0 .text cutCacaricoConversation__12daNpc_Taro_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::cutCacaricoConversation(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/cutCacaricoConversation__12daNpc_Taro_cFi.s"
}
#pragma pop

/* 8056C8CC-8056D0B8 006B2C 07EC+00 3/0 0/0 0/0 .text            cutArrowTutorial__12daNpc_Taro_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::cutArrowTutorial(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/cutArrowTutorial__12daNpc_Taro_cFi.s"
}
#pragma pop

/* 8056D0B8-8056D310 007318 0258+00 1/0 0/0 0/0 .text            cutCaution__12daNpc_Taro_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::cutCaution(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/cutCaution__12daNpc_Taro_cFi.s"
}
#pragma pop

/* ############################################################################################## */
/* 80571908-80571908 000240 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80571BC0 = "F_SP103";
#pragma pop

/* 8056D310-8056D5C0 007570 02B0+00 1/0 0/0 0/0 .text            cutTagPush1__12daNpc_Taro_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::cutTagPush1(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/cutTagPush1__12daNpc_Taro_cFi.s"
}
#pragma pop

/* ############################################################################################## */
/* 805718E8-805718F0 000220 0008+00 0/1 0/0 0/0 .rodata          @7945 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7945[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805718E8, &lit_7945);
#pragma pop

/* 805718F0-805718F8 000228 0008+00 0/1 0/0 0/0 .rodata          @7968 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7968[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x805718F0, &lit_7968);
#pragma pop

/* 8056D5C0-8056DFAC 007820 09EC+00 3/0 0/0 0/0 .text            cutNotGonnaLet__12daNpc_Taro_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::cutNotGonnaLet(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/cutNotGonnaLet__12daNpc_Taro_cFi.s"
}
#pragma pop

/* 8056DFAC-8056E270 00820C 02C4+00 1/0 0/0 0/0 .text            cutTagPush4__12daNpc_Taro_cFi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::cutTagPush4(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/cutTagPush4__12daNpc_Taro_cFi.s"
}
#pragma pop

/* 8056E270-8056F2A8 0084D0 1038+00 5/0 0/0 0/0 .text            wait__12daNpc_Taro_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::wait(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/wait__12daNpc_Taro_cFPv.s"
}
#pragma pop

/* 8056F2A8-8056F418 009508 0170+00 2/0 0/0 0/0 .text            swdTutorial__12daNpc_Taro_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::swdTutorial(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/swdTutorial__12daNpc_Taro_cFPv.s"
}
#pragma pop

/* 8056F418-8056F7E8 009678 03D0+00 1/0 0/0 0/0 .text            talk_withMaro__12daNpc_Taro_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::talk_withMaro(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/talk_withMaro__12daNpc_Taro_cFPv.s"
}
#pragma pop

/* 8056F7E8-8056FC20 009A48 0438+00 1/0 0/0 0/0 .text            practice__12daNpc_Taro_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::practice(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/practice__12daNpc_Taro_cFPv.s"
}
#pragma pop

/* 8056FC20-8056FDCC 009E80 01AC+00 1/0 0/0 0/0 .text            nurse__12daNpc_Taro_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::nurse(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/nurse__12daNpc_Taro_cFPv.s"
}
#pragma pop

/* ############################################################################################## */
/* 805718F8-80571908 000230 0010+00 0/1 0/0 0/0 .rodata          @9434 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_9434[16] = {
    0x00, 0x0D, 0x00, 0x0E, 0x00, 0x0F, 0x00, 0x10, 0x00, 0x11, 0x00, 0x12, 0x00, 0x13, 0x00, 0x14,
};
COMPILER_STRIP_GATE(0x805718F8, &lit_9434);
#pragma pop

/* 8056FDCC-80570170 00A02C 03A4+00 3/0 0/0 0/0 .text            talk__12daNpc_Taro_cFPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::talk(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/talk__12daNpc_Taro_cFPv.s"
}
#pragma pop

/* 80570170-80570190 00A3D0 0020+00 1/0 0/0 0/0 .text            daNpc_Taro_Create__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_Taro_Create(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/daNpc_Taro_Create__FPv.s"
}
#pragma pop

/* 80570190-805701B0 00A3F0 0020+00 1/0 0/0 0/0 .text            daNpc_Taro_Delete__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_Taro_Delete(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/daNpc_Taro_Delete__FPv.s"
}
#pragma pop

/* 805701B0-805701D0 00A410 0020+00 1/0 0/0 0/0 .text            daNpc_Taro_Execute__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_Taro_Execute(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/daNpc_Taro_Execute__FPv.s"
}
#pragma pop

/* 805701D0-805701F0 00A430 0020+00 1/0 0/0 0/0 .text            daNpc_Taro_Draw__FPv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daNpc_Taro_Draw(void* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/daNpc_Taro_Draw__FPv.s"
}
#pragma pop

/* 805701F0-805701F8 00A450 0008+00 1/0 0/0 0/0 .text            daNpc_Taro_IsDelete__FPv */
static bool daNpc_Taro_IsDelete(void* param_0) {
    return true;
}

/* 805701F8-80570228 00A458 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" asm void calc__11J3DTexNoAnmCFPUs() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/calc__11J3DTexNoAnmCFPUs.s"
}
#pragma pop

/* 80570228-80570270 00A488 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 80570270-805705F8 00A4D0 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_c::~daNpcT_c() {
extern "C" asm void __dt__8daNpcT_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__dt__8daNpcT_cFv.s"
}
#pragma pop

/* 805705F8-80570634 00A858 003C+00 4/4 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__dt__4cXyzFv.s"
}
#pragma pop

/* 80570634-80570670 00A894 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm csXyz::~csXyz() {
extern "C" asm void __dt__5csXyzFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__dt__5csXyzFv.s"
}
#pragma pop

/* 80570670-805706B8 00A8D0 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" asm void __dt__18daNpcT_ActorMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__dt__18daNpcT_ActorMngr_cFv.s"
}
#pragma pop

/* 805706B8-805706F4 00A918 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" asm void __ct__18daNpcT_ActorMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__ct__18daNpcT_ActorMngr_cFv.s"
}
#pragma pop

/* 805706F4-8057073C 00A954 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 8057073C-80570784 00A99C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80570784-80570B88 00A9E4 0404+00 1/1 0/0 0/0 .text
 * __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_c::daNpcT_c(daNpcT_faceMotionAnmData_c const* param_0,
//                       daNpcT_motionAnmData_c const* param_1,
// daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
//                          daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
//                       daNpcT_evtData_c const* param_6, char** param_7) {
extern "C" asm void __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/func_80570784.s"
}
#pragma pop

/* 80570B88-80570B8C 00ADE8 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" asm void __ct__5csXyzFv() {
    /* empty function */
}

/* 80570B8C-80570C88 00ADEC 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" asm void __dt__15daNpcT_JntAnm_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__dt__15daNpcT_JntAnm_cFv.s"
}
#pragma pop

/* 80570C88-80570C8C 00AEE8 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" asm void __ct__4cXyzFv() {
    /* empty function */
}

/* 80570C8C-80570CD4 00AEEC 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" asm void __dt__22daNpcT_MotionSeqMngr_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__dt__22daNpcT_MotionSeqMngr_cFv.s"
}
#pragma pop

/* 80570CD4-80570D44 00AF34 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 80570D44-80570DA0 00AFA4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 80570DA0-80570E10 00B000 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 80570E10-80570E58 00B070 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 80570E58-80570F74 00B0B8 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" asm void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs.s"
}
#pragma pop

/* 80570F74-8057117C 00B1D4 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" asm void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs.s"
}
#pragma pop

/* 8057117C-80571180 00B3DC 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" asm void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80571180-80571188 00B3E0 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80571188-80571190 00B3E8 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80571190-80571194 00B3F0 0004+00 1/0 0/0 0/0 .text            afterMoved__8daNpcT_cFv */
void daNpcT_c::afterMoved() {
    /* empty function */
}

/* 80571194-8057119C 00B3F4 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 8057119C-805711B4 00B3FC 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_c::decTmr() {
extern "C" asm void decTmr__8daNpcT_cFv() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/decTmr__8daNpcT_cFv.s"
}
#pragma pop

/* 805711B4-805711B8 00B414 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" asm void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 805711B8-805711C0 00B418 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 805711C0-805711C8 00B420 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 805711C8-805711F8 00B428 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" asm void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c.s"
}
#pragma pop

/* 805711F8-805711FC 00B458 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" asm void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 805711FC-80571200 00B45C 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" asm void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80571200-80571204 00B460 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" asm void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80571204-80571208 00B464 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" asm void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80571208-80571224 00B468 001C+00 11/11 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80571208(void* _this, int* param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/func_80571208.s"
}
#pragma pop

/* 80571224-805712A0 00B484 007C+00 3/3 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
extern "C" asm void func_80571224(void* _this, int param_0, int param_1) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/func_80571224.s"
}
#pragma pop

/* ############################################################################################## */
/* 8057354C-80573558 001984 000C+00 2/2 0/0 0/0 .data            __vt__18daNpc_Taro_Param_c */
SECTION_DATA extern void* __vt__18daNpc_Taro_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpc_Taro_Param_cFv,
};

/* 805712A0-8057148C 00B500 01EC+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_taro_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_npc_taro_cpp() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__sinit_d_a_npc_taro_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x805712A0, __sinit_d_a_npc_taro_cpp);
#pragma pop

/* 8057148C-805715AC 00B6EC 0120+00 1/1 0/0 0/0 .text
 * __ct__12daNpc_Taro_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_Taro_c::daNpc_Taro_c(daNpcT_faceMotionAnmData_c const* param_0,
                               daNpcT_motionAnmData_c const* param_1,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                               int param_3,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                               int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/func_8057148C.s"
}
#pragma pop

/* 805715AC-805715B4 00B80C 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__12daNpc_Taro_cFv */
s32 daNpc_Taro_c::getEyeballMaterialNo() {
    return 2;
}

/* 805715B4-805715BC 00B814 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__12daNpc_Taro_cFv */
s32 daNpc_Taro_c::getHeadJointNo() {
    return 4;
}

/* 805715BC-805715C4 00B81C 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__12daNpc_Taro_cFv */
s32 daNpc_Taro_c::getNeckJointNo() {
    return 3;
}

/* 805715C4-805715CC 00B824 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__12daNpc_Taro_cFv */
bool daNpc_Taro_c::getBackboneJointNo() {
    return true;
}

/* 805715CC-805715DC 00B82C 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__12daNpc_Taro_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::checkChangeJoint(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/checkChangeJoint__12daNpc_Taro_cFi.s"
}
#pragma pop

/* 805715DC-805715EC 00B83C 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__12daNpc_Taro_cFi
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daNpc_Taro_c::checkRemoveJoint(int param_0) {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/checkRemoveJoint__12daNpc_Taro_cFi.s"
}
#pragma pop

/* 805715EC-805715F4 00B84C 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__12daNpc_Taro_cFv
 */
s32 daNpc_Taro_c::getFootLJointNo() {
    return 19;
}

/* 805715F4-805715FC 00B854 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__12daNpc_Taro_cFv
 */
s32 daNpc_Taro_c::getFootRJointNo() {
    return 22;
}

/* 805715FC-80571644 00B85C 0048+00 2/1 0/0 0/0 .text            __dt__18daNpc_Taro_Param_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daNpc_Taro_Param_c::~daNpc_Taro_Param_c() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/__dt__18daNpc_Taro_Param_cFv.s"
}
#pragma pop

/* 80571644-8057164C 00B8A4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_80571644() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/func_80571644.s"
}
#pragma pop

/* 8057164C-80571654 00B8AC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_8057164C() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/func_8057164C.s"
}
#pragma pop

/* 80571654-805716B4 00B8B4 0060+00 2/2 0/0 0/0 .text chkPointInArea__15daTag_EvtArea_cF4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daTag_EvtArea_c::chkPointInArea(cXyz param_0) {
extern "C" asm void chkPointInArea__15daTag_EvtArea_cF4cXyz() {
    nofralloc
#include "asm/rel/d/a/npc/d_a_npc_taro/d_a_npc_taro/chkPointInArea__15daTag_EvtArea_cF4cXyz.s"
}
#pragma pop

/* ############################################################################################## */
/* 805735CC-805735D0 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_805735CC[4];
#pragma pop

/* 805735D0-805735D4 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_805735D0[4];
#pragma pop

/* 805735D4-805735D8 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_805735D4[4];
#pragma pop

/* 805735D8-805735DC 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_805735D8[4];
#pragma pop

/* 805735DC-805735E0 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_805735DC[4];
#pragma pop

/* 805735E0-805735E4 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_805735E0[4];
#pragma pop

/* 805735E4-805735E8 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_805735E4[4];
#pragma pop

/* 805735E8-805735EC 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_805735E8[4];
#pragma pop

/* 805735EC-805735F0 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_805735EC[4];
#pragma pop

/* 805735F0-805735F4 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_805735F0[4];
#pragma pop

/* 805735F4-805735F8 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_805735F4[4];
#pragma pop

/* 805735F8-805735FC 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_805735F8[4];
#pragma pop

/* 805735FC-80573600 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_805735FC[4];
#pragma pop

/* 80573600-80573604 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80573600[4];
#pragma pop

/* 80573604-80573608 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80573604[4];
#pragma pop

/* 80573608-8057360C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80573608[4];
#pragma pop

/* 8057360C-80573610 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8057360C[4];
#pragma pop

/* 80573610-80573614 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80573610[4];
#pragma pop

/* 80573614-80573618 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80573614[4];
#pragma pop

/* 80573618-8057361C 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80573618[4];
#pragma pop

/* 8057361C-80573620 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8057361C[4];
#pragma pop

/* 80573620-80573624 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80573620[4];
#pragma pop

/* 80573624-80573628 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80573624[4];
#pragma pop

/* 80573628-8057362C 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80573628[4];
#pragma pop

/* 8057362C-80573630 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8057362C[4];
#pragma pop

/* 80571908-80571908 000240 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
