/**
 * @file d_a_npc_maro.cpp
 * 
*/

#include "d/actor/d_a_npc_maro.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__12daNpc_Maro_cFv();
extern "C" void create__12daNpc_Maro_cFv();
extern "C" void CreateHeap__12daNpc_Maro_cFv();
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
extern "C" void Delete__12daNpc_Maro_cFv();
extern "C" void Execute__12daNpc_Maro_cFv();
extern "C" void Draw__12daNpc_Maro_cFv();
extern "C" void createHeapCallBack__12daNpc_Maro_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__12daNpc_Maro_cFP8J3DJointi();
extern "C" void srchArrow__12daNpc_Maro_cFPvPv();
extern "C" void getArrowP__12daNpc_Maro_cFv();
extern "C" void srchItaMato__12daNpc_Maro_cFPvPv();
extern "C" void getItaMatoP__12daNpc_Maro_cFi();
extern "C" void getType__12daNpc_Maro_cFv();
extern "C" void isDelete__12daNpc_Maro_cFv();
extern "C" void reset__12daNpc_Maro_cFv();
extern "C" void afterJntAnm__12daNpc_Maro_cFi();
extern "C" void setParam__12daNpc_Maro_cFv();
extern "C" void checkChangeEvt__12daNpc_Maro_cFv();
extern "C" void evtEndProc__12daNpc_Maro_cFv();
extern "C" void setAfterTalkMotion__12daNpc_Maro_cFv();
extern "C" void srchActors__12daNpc_Maro_cFv();
extern "C" void evtTalk__12daNpc_Maro_cFv();
extern "C" void evtCutProc__12daNpc_Maro_cFv();
extern "C" void action__12daNpc_Maro_cFv();
extern "C" void beforeMove__12daNpc_Maro_cFv();
extern "C" void setAttnPos__12daNpc_Maro_cFv();
extern "C" void setCollision__12daNpc_Maro_cFv();
extern "C" bool drawDbgInfo__12daNpc_Maro_cFv();
extern "C" void drawOtherMdl__12daNpc_Maro_cFv();
extern "C" void getFaceMotionAnm__12daNpc_Maro_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__12daNpc_Maro_cF22daNpcT_motionAnmData_c();
extern "C" void selectAction__12daNpc_Maro_cFv();
extern "C" void chkAction__12daNpc_Maro_cFM12daNpc_Maro_cFPCvPvPv_i();
extern "C" void setAction__12daNpc_Maro_cFM12daNpc_Maro_cFPCvPvPv_i();
extern "C" void cutConversationAboutPachinko__12daNpc_Maro_cFi();
extern "C" void cutConversationAboutWoodSwd__12daNpc_Maro_cFi();
extern "C" void cutSwdTutorial__12daNpc_Maro_cFi();
extern "C" void cutHail__12daNpc_Maro_cFi();
extern "C" void cutFindMonkey__12daNpc_Maro_cFi();
extern "C" void cutGiveMeWoodSwd__12daNpc_Maro_cFi();
extern "C" void cutGetWoodSwd__12daNpc_Maro_cFi();
extern "C" void cutConversationWithMaro__12daNpc_Maro_cFi();
extern "C" void cutCacaricoConversation__12daNpc_Maro_cFi();
extern "C" void cutSurprise__12daNpc_Maro_cFi();
extern "C" void cutArrowTutorial__12daNpc_Maro_cFi();
extern "C" void cutBokinTalk__12daNpc_Maro_cFi();
extern "C" void cutMarosWhisper__12daNpc_Maro_cFi();
extern "C" void cutTagPush1__12daNpc_Maro_cFi();
extern "C" void cutNotGonnaLet__12daNpc_Maro_cFi();
extern "C" void cutTalkToKakashi__12daNpc_Maro_cFi();
extern "C" void wait__12daNpc_Maro_cFPv();
extern "C" void swdTutorial__12daNpc_Maro_cFPv();
extern "C" void talk_withTaro__12daNpc_Maro_cFPv();
extern "C" void choccai__12daNpc_Maro_cFPv();
extern "C" void tend__12daNpc_Maro_cFPv();
extern "C" void arrowTutorial__12daNpc_Maro_cFPv();
extern "C" void talk__12daNpc_Maro_cFPv();
extern "C" void shop__12daNpc_Maro_cFPv();
extern "C" static void daNpc_Maro_Create__FPv();
extern "C" static void daNpc_Maro_Delete__FPv();
extern "C" static void daNpc_Maro_Execute__FPv();
extern "C" static void daNpc_Maro_Draw__FPv();
extern "C" static bool daNpc_Maro_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
extern "C" void __ct__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__5csXyzFv();
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
extern "C" void lookActor__15daNpcT_JntAnm_cFP10fopAc_ac_cfUc();
extern "C" void absXZ__4cXyzCFRC3Vec();
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi();
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_8056469C(void* _this, int*);
extern "C" void __sinit_d_a_npc_maro_cpp();
extern "C" void
__ct__12daNpc_Maro_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" s32 getEyeballMaterialNo__12daNpc_Maro_cFv();
extern "C" s32 getHeadJointNo__12daNpc_Maro_cFv();
extern "C" s32 getNeckJointNo__12daNpc_Maro_cFv();
extern "C" bool getBackboneJointNo__12daNpc_Maro_cFv();
extern "C" void checkChangeJoint__12daNpc_Maro_cFi();
extern "C" void checkRemoveJoint__12daNpc_Maro_cFi();
extern "C" void __dt__18daNpc_Maro_Param_cFv();
extern "C" static void func_805649F8();
extern "C" static void func_80564A00();
extern "C" void
__ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" bool getResName2__13dShopSystem_cFi();
extern "C" bool beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci();
extern "C" bool beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci();
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz();
extern "C" u8 const m__18daNpc_Maro_Param_c[144];
extern "C" extern char const* const d_a_npc_maro__stringBase0;
extern "C" void* mCutNameList__12daNpc_Maro_c[17];
extern "C" u8 mCutList__12daNpc_Maro_c[204];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fpcEx_IsExist__FUi();
extern "C" void getTimerMode__14dComIfG_play_cFv();
extern "C" void getTimerPtr__14dComIfG_play_cFv();
extern "C" void dComIfG_TimerStart__Fis();
extern "C" void dComIfG_TimerDeleteRequest__Fi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void daNpcKakashi_chkSwdTutorialStage__Fv();
extern "C" void offSwitch__12dSv_memBit_cFi();
extern "C" void isSwitch__12dSv_memBit_cCFi();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void setEventReg__11dSv_event_cFUsUc();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setPt2__14dEvt_control_cFPv();
extern "C" void setPtT__14dEvt_control_cFPv();
extern "C" void setPtI__14dEvt_control_cFPv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void setGoal__16dEvent_manager_cFP4cXyz();
extern "C" void getRunEventName__16dEvent_manager_cFv();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void checkItemGet__FUci();
extern "C" void initialize__18daNpcT_ActorMngr_cFv();
extern "C" void entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcT_ActorMngr_cFv();
extern "C" void getActorP__18daNpcT_ActorMngr_cFv();
extern "C" void initialize__15daNpcT_MatAnm_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz();
extern "C" void calcJntRad__15daNpcT_JntAnm_cFfff();
extern "C" void setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs();
extern "C" void calc__19daNpcT_DmgStagger_cFi();
extern "C" void tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
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
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void getEvtAreaTagP__8daNpcT_cFii();
extern "C" void getShopItemTagP__8daNpcT_cFv();
extern "C" void daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz();
extern "C" void daNpcT_chkDoBtnIsSpeak__FP10fopAc_ac_c();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_onEvtBit__FUl();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
extern "C" void dCam_getBody__Fv();
extern "C" void shop_cam_action_init__16ShopCam_action_cFv();
extern "C" void Save__16ShopCam_action_cFv();
extern "C" void EventRecoverNotime__16ShopCam_action_cFv();
extern "C" void Reset__16ShopCam_action_cFv();
extern "C" void move__16ShopCam_action_cFv();
extern "C" void __ct__15dShopItemCtrl_cFv();
extern "C" void initShopSystem__13dShopSystem_cFv();
extern "C" void __dt__13dShopSystem_cFv();
extern "C" void drawCursor__13dShopSystem_cFv();
extern "C" void itemRotate__13dShopSystem_cFv();
extern "C" void itemZoom__13dShopSystem_cFP4cXyz();
extern "C" void shop_init__13dShopSystem_cFb();
extern "C" void shop_process__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c();
extern "C" void deleteObject__13dShopSystem_cFv();
extern "C" void searchItemActor__13dShopSystem_cFv();
extern "C" void setSellItemMax__13dShopSystem_cFUc();
extern "C" void checkShopOpen__13dShopSystem_cFv();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void getRestTimeMs__8dTimer_cFv();
extern "C" void dTimer_createTimer__FlUlUcUcffff();
extern "C" void dTimer_isStart__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void getTexNo__16J3DAnmTexPatternCFUsPUs();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_20();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_20();
extern "C" void _restgpr_22();
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
extern "C" extern void* __vt__13dShopSystem_c[52 + 1 /* padding */];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mFindActorPtrs__8daNpcT_c[200];
extern "C" u8 mFindCount__8daNpcT_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz();
extern "C" void __register_global_object();
extern "C" void checkStartDemo13StbEvt__11daNpc_Len_cFP10fopAc_ac_cfffffff();
extern "C" void getSwitchBit1__16daTag_ShopItem_cFv();

//
// Declarations:
//

/* ############################################################################################## */
/* 80564D58-80564D58 0001AC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80564D58 = "";
SECTION_DEAD static char const* const stringBase_80564D59 = "DEFAULT_GETITEM";
SECTION_DEAD static char const* const stringBase_80564D69 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80564D75 = "CONVERSATION_ABOUT_WOODSWD1";
SECTION_DEAD static char const* const stringBase_80564D91 = "CONVERSATION_ABOUT_WOODSWD2";
SECTION_DEAD static char const* const stringBase_80564DAD = "CONVERSATION_WITH_MARO1";
SECTION_DEAD static char const* const stringBase_80564DC5 = "CONVERSATION_WITH_MARO2";
SECTION_DEAD static char const* const stringBase_80564DDD = "DEMO13_STB";
SECTION_DEAD static char const* const stringBase_80564DE8 = "SURPRISE";
SECTION_DEAD static char const* const stringBase_80564DF1 = "BREAK_ARROWTUTORIAL";
SECTION_DEAD static char const* const stringBase_80564E05 = "CONTINUE_ARROWTUTORIAL";
SECTION_DEAD static char const* const stringBase_80564E1C = "END_ARROWTUTORIAL";
SECTION_DEAD static char const* const stringBase_80564E2E = "CLEAR_ARROWTUTORIAL";
SECTION_DEAD static char const* const stringBase_80564E42 = "NOT_GONNA_LET_3";
SECTION_DEAD static char const* const stringBase_80564E52 = "TALK_TO_KAKASHI";
SECTION_DEAD static char const* const stringBase_80564E62 = "Maro";
SECTION_DEAD static char const* const stringBase_80564E67 = "Maro_TW";
SECTION_DEAD static char const* const stringBase_80564E6F = "Maro1";
SECTION_DEAD static char const* const stringBase_80564E75 = "Maro2";
SECTION_DEAD static char const* const stringBase_80564E7B = "Maro3";
SECTION_DEAD static char const* const stringBase_80564E81 = "Taro1";
SECTION_DEAD static char const* const stringBase_80564E87 = "Taro2";
SECTION_DEAD static char const* const stringBase_80564E8D = "Len1";
SECTION_DEAD static char const* const stringBase_80564E92 = "Besu1";
SECTION_DEAD static char const* const stringBase_80564E98 = "CONVERSATION_ABOUT_PACHINKO";
SECTION_DEAD static char const* const stringBase_80564EB4 = "CONVERSATION_ABOUT_WOODSWD";
SECTION_DEAD static char const* const stringBase_80564ECF = "SWDTUTORIAL";
SECTION_DEAD static char const* const stringBase_80564EDB = "HAIL";
SECTION_DEAD static char const* const stringBase_80564EE0 = "FIND_MONKEY";
SECTION_DEAD static char const* const stringBase_80564EEC = "GIVEME_WOODSWD";
SECTION_DEAD static char const* const stringBase_80564EFB = "GET_WOODSWD";
SECTION_DEAD static char const* const stringBase_80564F07 = "CONVERSATION_WITH_MARO";
SECTION_DEAD static char const* const stringBase_80564F1E = "CACARICO_CONVERSATION";
SECTION_DEAD static char const* const stringBase_80564F34 = "ARROWTUTORIAL";
SECTION_DEAD static char const* const stringBase_80564F42 = "BOKIN_TALK";
SECTION_DEAD static char const* const stringBase_80564F4D = "MAROS_WHISPER";
SECTION_DEAD static char const* const stringBase_80564F5B = "TAG_PUSH1";
SECTION_DEAD static char const* const stringBase_80564F65 = "NOT_GONNA_LET";
#pragma pop

/* 80564F90-80564F9C 000000 000C+00 5/5 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80564F9C-80564FB0 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80564FB0-80564FBC -00001 000C+00 0/0 0/0 0/0 .data            @4085 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4085[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)choccai__12daNpc_Maro_cFPv,
};
#pragma pop

/* 80564FBC-80564FCC 00002C 0010+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[16] = {
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02,
};

/* 80564FCC-80565044 -00001 0078+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[30] = {
    (void*)&d_a_npc_maro__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x11),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x1D),
    (void*)0x00000009,
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x39),
    (void*)0x00000009,
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x55),
    (void*)0x00000006,
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x6D),
    (void*)0x00000006,
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x85),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x90),
    (void*)0x00000003,
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x99),
    (void*)0x00000007,
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0xAD),
    (void*)0x00000007,
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0xC4),
    (void*)0x00000007,
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0xD6),
    (void*)0x00000007,
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0xEA),
    (void*)0x00000006,
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0xFA),
    (void*)0x00000003,
};
#pragma pop

/* 80565044-8056506C -00001 0028+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[10] = {
    (void*)&d_a_npc_maro__stringBase0,
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x10A),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x10F),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x117),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x11D),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x123),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x129),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x12F),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x135),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x13A),
};

/* 8056506C-80565070 0000DC 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u8 l_loadResPtrn0[3 + 1 /* padding */] = {
    0x01,
    0x03,
    0xFF,
    /* padding */
    0x00,
};

/* 80565070-80565074 0000E0 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u8 l_loadResPtrn1[3 + 1 /* padding */] = {
    0x01,
    0x02,
    0xFF,
    /* padding */
    0x00,
};

/* 80565074-80565078 0000E4 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn2 */
SECTION_DATA static u32 l_loadResPtrn2 = 0x010304FF;

/* 80565078-80565080 0000E8 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn3 */
SECTION_DATA static u8 l_loadResPtrn3[5 + 3 /* padding */] = {
    0x01,
    0x02,
    0x03,
    0x04,
    0xFF,
    /* padding */
    0x00,
    0x00,
    0x00,
};

/* 80565080-805650C4 -00001 0044+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[17] = {
    (void*)&l_loadResPtrn2, (void*)&l_loadResPtrn2, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn1,
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn2,
    (void*)&l_loadResPtrn2, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn2, (void*)&l_loadResPtrn2,
    (void*)&l_loadResPtrn2, (void*)&l_loadResPtrn2, (void*)&l_loadResPtrn2, (void*)&l_loadResPtrn2,
    (void*)&l_loadResPtrn3,
};

/* 805650C4-805651DC 000134 0118+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[280] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x15,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 805651DC-805652F4 00024C 0118+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[280] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 805652F4-80565394 000364 00A0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[160] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x09, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80565394-80565424 000404 0090+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[144] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80565424-80565468 -00001 0044+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_Maro_c */
SECTION_DATA void* daNpc_Maro_c::mCutNameList[17] = {
    (void*)&d_a_npc_maro__stringBase0,
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x140),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x15C),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x177),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x183),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x188),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x194),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x1A3),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x1AF),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x1C6),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x90),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x1DC),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x1EA),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x1F5),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x203),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0x20D),
    (void*)(((char*)&d_a_npc_maro__stringBase0) + 0xFA),
};

/* 80565468-80565474 -00001 000C+00 0/1 0/0 0/0 .data            @4102 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4102[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutPachinko__12daNpc_Maro_cFi,
};
#pragma pop

/* 80565474-80565480 -00001 000C+00 0/1 0/0 0/0 .data            @4103 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4103[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutWoodSwd__12daNpc_Maro_cFi,
};
#pragma pop

/* 80565480-8056548C -00001 000C+00 0/1 0/0 0/0 .data            @4104 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4104[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutSwdTutorial__12daNpc_Maro_cFi,
};
#pragma pop

/* 8056548C-80565498 -00001 000C+00 0/1 0/0 0/0 .data            @4105 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4105[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutHail__12daNpc_Maro_cFi,
};
#pragma pop

/* 80565498-805654A4 -00001 000C+00 0/1 0/0 0/0 .data            @4106 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4106[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutFindMonkey__12daNpc_Maro_cFi,
};
#pragma pop

/* 805654A4-805654B0 -00001 000C+00 0/1 0/0 0/0 .data            @4107 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4107[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutGiveMeWoodSwd__12daNpc_Maro_cFi,
};
#pragma pop

/* 805654B0-805654BC -00001 000C+00 0/1 0/0 0/0 .data            @4108 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4108[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutGetWoodSwd__12daNpc_Maro_cFi,
};
#pragma pop

/* 805654BC-805654C8 -00001 000C+00 0/1 0/0 0/0 .data            @4109 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4109[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationWithMaro__12daNpc_Maro_cFi,
};
#pragma pop

/* 805654C8-805654D4 -00001 000C+00 0/1 0/0 0/0 .data            @4110 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4110[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutCacaricoConversation__12daNpc_Maro_cFi,
};
#pragma pop

/* 805654D4-805654E0 -00001 000C+00 0/1 0/0 0/0 .data            @4111 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4111[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutSurprise__12daNpc_Maro_cFi,
};
#pragma pop

/* 805654E0-805654EC -00001 000C+00 0/1 0/0 0/0 .data            @4112 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4112[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutArrowTutorial__12daNpc_Maro_cFi,
};
#pragma pop

/* 805654EC-805654F8 -00001 000C+00 0/1 0/0 0/0 .data            @4113 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4113[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutBokinTalk__12daNpc_Maro_cFi,
};
#pragma pop

/* 805654F8-80565504 -00001 000C+00 0/1 0/0 0/0 .data            @4114 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4114[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutMarosWhisper__12daNpc_Maro_cFi,
};
#pragma pop

/* 80565504-80565510 -00001 000C+00 0/1 0/0 0/0 .data            @4115 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4115[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTagPush1__12daNpc_Maro_cFi,
};
#pragma pop

/* 80565510-8056551C -00001 000C+00 0/1 0/0 0/0 .data            @4116 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4116[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutNotGonnaLet__12daNpc_Maro_cFi,
};
#pragma pop

/* 8056551C-80565528 -00001 000C+00 0/1 0/0 0/0 .data            @4117 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4117[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTalkToKakashi__12daNpc_Maro_cFi,
};
#pragma pop

/* 80565528-805655F4 000598 00CC+00 1/2 0/0 0/0 .data            mCutList__12daNpc_Maro_c */
SECTION_DATA u8 daNpc_Maro_c::mCutList[204] = {
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

/* 805655F4-80565634 -00001 0040+00 1/1 0/0 0/0 .data            @4874 */
SECTION_DATA static void* lit_4874[16] = {
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x28),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x30),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x38),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x40),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x48),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x50),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x58),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x60),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x68),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x70),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x78),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x80),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x88),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x90),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0x98),
    (void*)(((char*)getType__12daNpc_Maro_cFv) + 0xA0),
};

/* 80565634-80565674 -00001 0040+00 1/1 0/0 0/0 .data            @4915 */
SECTION_DATA static void* lit_4915[16] = {
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x34),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x64),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x78),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x80),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x88),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0xB8),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0xE8),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x118),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x12C),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x140),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x148),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x154),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x184),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x1B4),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x1BC),
    (void*)(((char*)isDelete__12daNpc_Maro_cFv) + 0x1EC),
};

/* 80565674-80565680 -00001 000C+00 0/1 0/0 0/0 .data            @4995 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4995[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)arrowTutorial__12daNpc_Maro_cFPv,
};
#pragma pop

/* 80565680-8056568C -00001 000C+00 0/1 0/0 0/0 .data            @5000 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5000[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)swdTutorial__12daNpc_Maro_cFPv,
};
#pragma pop

/* 8056568C-80565698 -00001 000C+00 0/1 0/0 0/0 .data            @5010 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5010[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk_withTaro__12daNpc_Maro_cFPv,
};
#pragma pop

/* 80565698-805656A4 -00001 000C+00 1/1 0/0 0/0 .data            @5060 */
SECTION_DATA static void* lit_5060[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Maro_cFPv,
};

/* 805656A4-805656B0 -00001 000C+00 1/1 0/0 0/0 .data            @5156 */
SECTION_DATA static void* lit_5156[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)arrowTutorial__12daNpc_Maro_cFPv,
};

/* 805656B0-805656BC -00001 000C+00 1/1 0/0 0/0 .data            @5163 */
SECTION_DATA static void* lit_5163[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tend__12daNpc_Maro_cFPv,
};

/* 805656BC-805656FC -00001 0040+00 1/1 0/0 0/0 .data            @5193 */
SECTION_DATA static void* lit_5193[16] = {
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x38),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0xDC),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x350),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x130),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x350),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x350),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x350),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x15C),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x15C),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x350),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x208),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x350),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x234),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x2B0),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x350),
    (void*)(((char*)srchActors__12daNpc_Maro_cFv) + 0x350),
};

/* 805656FC-80565708 -00001 000C+00 0/1 0/0 0/0 .data            @5199 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5199[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__12daNpc_Maro_cFPv,
};
#pragma pop

/* 80565708-80565714 -00001 000C+00 0/1 0/0 0/0 .data            @5204 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5204[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__12daNpc_Maro_cFPv,
};
#pragma pop

/* 80565714-80565720 -00001 000C+00 0/1 0/0 0/0 .data            @5207 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5207[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Maro_cFPv,
};
#pragma pop

/* 80565720-8056572C -00001 000C+00 0/1 0/0 0/0 .data            @5212 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5212[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Maro_cFPv,
};
#pragma pop

/* 8056572C-80565738 -00001 000C+00 0/1 0/0 0/0 .data            @5535 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5535[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tend__12daNpc_Maro_cFPv,
};
#pragma pop

/* 80565738-80565744 -00001 000C+00 0/1 0/0 0/0 .data            @5537 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5537[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)arrowTutorial__12daNpc_Maro_cFPv,
};
#pragma pop

/* 80565744-80565750 -00001 000C+00 0/1 0/0 0/0 .data            @5541 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5541[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)swdTutorial__12daNpc_Maro_cFPv,
};
#pragma pop

/* 80565750-8056575C -00001 000C+00 0/1 0/0 0/0 .data            @5543 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5543[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_Maro_cFPv,
};
#pragma pop

/* 8056575C-80565768 -00001 000C+00 0/1 0/0 0/0 .data            @5545 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5545[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_Maro_cFPv,
};
#pragma pop

/* 80565768-80565798 -00001 0030+00 1/1 0/0 0/0 .data            @6228 */
SECTION_DATA static void* lit_6228[12] = {
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x368),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x3A8),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x448),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x448),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x4E8),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x7A4),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x7F8),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x7F8),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x7F8),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x7F8),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x7E0),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x7E0),
};

/* 80565798-805657C8 -00001 0030+00 1/1 0/0 0/0 .data            @6227 */
SECTION_DATA static void* lit_6227[12] = {
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0xB8),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x114),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x1BC),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x1C8),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x268),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x2C8),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x348),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x348),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x348),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x348),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x348),
    (void*)(((char*)cutGetWoodSwd__12daNpc_Maro_cFi) + 0x340),
};

/* 805657C8-80565940 -00001 0178+00 1/1 0/0 0/0 .data            @7029 */
SECTION_DATA static void* lit_7029[94] = {
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB7C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB98),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xC58),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xD7C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xC58),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xC58),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xD98),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x14B0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x1530),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xDCC),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xE0C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xE14),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xE2C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB98),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xE60),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xEF4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x154C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x15E0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xEFC),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xF30),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xFB0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xFB0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x15E8),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x107C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x1530),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x10C0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x10C8),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x10C8),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x10C8),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16B0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x12F8),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x1300),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x1334),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x13A0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x1468),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x16D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x14A8),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xE60),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xFB0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB7C),
};

/* 80565940-80565AB8 -00001 0178+00 1/1 0/0 0/0 .data            @7028 */
SECTION_DATA static void* lit_7028[94] = {
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x19C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x1CC),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x1D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x1EC),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x1D4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x234),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x9D8),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x9E8),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x27C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x2EC),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x3A8),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x3B0),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x44C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x4DC),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x51C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xA94),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xAD4),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x564),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x604),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB1C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x618),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x664),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x700),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB34),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x714),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x72C),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x740),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x7C8),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x7DC),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0x938),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
    (void*)(((char*)cutArrowTutorial__12daNpc_Maro_cFi) + 0xB44),
};

/* 80565AB8-80565B38 -00001 0080+00 1/1 0/0 0/0 .data            @7426 */
SECTION_DATA static void* lit_7426[32] = {
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x5BC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x5D8),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x5E0),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x698),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x698),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x698),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x698),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6C4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6A0),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x6BC),
};

/* 80565B38-80565BB8 -00001 0080+00 1/1 0/0 0/0 .data            @7425 */
SECTION_DATA static void* lit_7425[32] = {
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x90),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0xA4),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x1DC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x218),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x2EC),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x424),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x59C),
    (void*)(((char*)cutNotGonnaLet__12daNpc_Maro_cFi) + 0x4E0),
};

/* 80565BB8-80565BD8 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Maro_MethodTable */
static actor_method_class daNpc_Maro_MethodTable = {
    (process_method_func)daNpc_Maro_Create__FPv,
    (process_method_func)daNpc_Maro_Delete__FPv,
    (process_method_func)daNpc_Maro_Execute__FPv,
    (process_method_func)daNpc_Maro_IsDelete__FPv,
    (process_method_func)daNpc_Maro_Draw__FPv,
};

/* 80565BD8-80565C08 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_MARO */
extern actor_process_profile_definition g_profile_NPC_MARO = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_MARO,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daNpc_Maro_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  353,                     // mPriority
  &daNpc_Maro_MethodTable, // sub_method
  0x00040107,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80565C08-80565C14 000C78 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80565C14-80565C20 000C84 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80565C20-80565C44 000C90 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80564A00,
    (void*)NULL,
    (void*)NULL,
    (void*)func_805649F8,
};

/* 80565C44-80565C50 000CB4 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80565C50-80565C5C 000CC0 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80565C5C-80565C68 000CCC 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80565C68-80565C74 000CD8 000C+00 2/2 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80565C74-80565C80 000CE4 000C+00 2/2 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80565C80-80565C8C 000CF0 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80565C8C-80565C98 000CFC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80565C98-80565CA4 000D08 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80565CA4-80565D74 000D14 00D0+00 2/2 0/0 0/0 .data            __vt__12daNpc_Maro_c */
SECTION_DATA extern void* __vt__12daNpc_Maro_c[52] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daNpc_Maro_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__12daNpc_Maro_cFi,
    (void*)checkRemoveJoint__12daNpc_Maro_cFi,
    (void*)getBackboneJointNo__12daNpc_Maro_cFv,
    (void*)getNeckJointNo__12daNpc_Maro_cFv,
    (void*)getHeadJointNo__12daNpc_Maro_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__12daNpc_Maro_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__12daNpc_Maro_cFi,
    (void*)setParam__12daNpc_Maro_cFv,
    (void*)checkChangeEvt__12daNpc_Maro_cFv,
    (void*)evtTalk__12daNpc_Maro_cFv,
    (void*)evtEndProc__12daNpc_Maro_cFv,
    (void*)evtCutProc__12daNpc_Maro_cFv,
    (void*)setAfterTalkMotion__12daNpc_Maro_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__12daNpc_Maro_cFv,
    (void*)beforeMove__12daNpc_Maro_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__12daNpc_Maro_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__12daNpc_Maro_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__12daNpc_Maro_cFv,
    (void*)drawOtherMdl__12daNpc_Maro_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__8daNpcT_cFiifi,
    (void*)getFaceMotionAnm__12daNpc_Maro_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__12daNpc_Maro_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__8daNpcT_cFPiPi,
    (void*)changeBck__8daNpcT_cFPiPi,
    (void*)changeBtp__8daNpcT_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
    (void*)getResName2__13dShopSystem_cFi,
    (void*)beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci,
    (void*)beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci,
};

/* 8055B58C-8055B6E0 0000EC 0154+00 1/0 0/0 0/0 .text            __dt__12daNpc_Maro_cFv */
daNpc_Maro_c::~daNpc_Maro_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564BAC-80564C3C 000000 0090+00 15/15 0/0 0/0 .rodata          m__18daNpc_Maro_Param_c */
SECTION_RODATA u8 const daNpc_Maro_Param_c::m[144] = {
    0x42, 0xC8, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x42, 0xA0, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0xC1, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x70, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80564BAC, &daNpc_Maro_Param_c::m);

/* 80564C3C-80564C80 000090 0044+00 0/1 0/0 0/0 .rodata          heapSize$4152 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[68] = {
    0x00, 0x00, 0x33, 0x10, 0x00, 0x00, 0x33, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x32, 0x60, 0x00, 0x00, 0x33, 0x20, 0x00, 0x00, 0x33, 0x20, 0x00, 0x00, 0x33, 0x20,
    0x00, 0x00, 0x33, 0x10, 0x00, 0x00, 0x33, 0x10, 0x00, 0x00, 0x33, 0x20, 0x00, 0x00,
    0x33, 0x10, 0x00, 0x00, 0x33, 0x10, 0x00, 0x00, 0x33, 0x10, 0x00, 0x00, 0x33, 0x10,
    0x00, 0x00, 0x33, 0x10, 0x00, 0x00, 0x33, 0x10, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80564C3C, &heapSize);
#pragma pop

/* 80564C80-80564C84 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4222 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4222 = -200.0f;
COMPILER_STRIP_GATE(0x80564C80, &lit_4222);
#pragma pop

/* 80564C84-80564C88 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4223 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4223 = -100.0f;
COMPILER_STRIP_GATE(0x80564C84, &lit_4223);
#pragma pop

/* 80564C88-80564C8C 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4224 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4224 = 200.0f;
COMPILER_STRIP_GATE(0x80564C88, &lit_4224);
#pragma pop

/* 80564C8C-80564C90 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4225 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4225 = 300.0f;
COMPILER_STRIP_GATE(0x80564C8C, &lit_4225);
#pragma pop

/* 80564C90-80564C94 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4226 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4226 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80564C90, &lit_4226);
#pragma pop

/* 8055B6E0-8055B9A8 000240 02C8+00 1/1 0/0 0/0 .text            create__12daNpc_Maro_cFv */
void daNpc_Maro_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564C94-80564C98 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4315 = 0.25f;
COMPILER_STRIP_GATE(0x80564C94, &lit_4315);
#pragma pop

/* 80564C98-80564C9C 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4316 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4316 = 20.0f;
COMPILER_STRIP_GATE(0x80564C98, &lit_4316);
#pragma pop

/* 80564C9C-80564CA0 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4317 = 5.0f;
COMPILER_STRIP_GATE(0x80564C9C, &lit_4317);
#pragma pop

/* 80564CA0-80564CA4 0000F4 0004+00 23/33 0/0 0/0 .rodata          @4318 */
SECTION_RODATA static u8 const lit_4318[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80564CA0, &lit_4318);

/* 80564CA4-80564CA8 0000F8 0004+00 1/2 0/0 0/0 .rodata          @4319 */
SECTION_RODATA static f32 const lit_4319 = 100.0f;
COMPILER_STRIP_GATE(0x80564CA4, &lit_4319);

/* 80564CA8-80564CAC 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4320 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4320 = 60.0f;
COMPILER_STRIP_GATE(0x80564CA8, &lit_4320);
#pragma pop

/* 80564CAC-80564CB0 000100 0004+00 0/2 0/0 0/0 .rodata          @4541 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4541 = 65536.0f;
COMPILER_STRIP_GATE(0x80564CAC, &lit_4541);
#pragma pop

/* 80564CB0-80564CB4 000104 0004+00 0/3 0/0 0/0 .rodata          @4542 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4542 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80564CB0, &lit_4542);
#pragma pop

/* 80564CB4-80564CB8 000108 0004+00 2/4 0/0 0/0 .rodata          @4688 */
SECTION_RODATA static f32 const lit_4688 = 1.0f;
COMPILER_STRIP_GATE(0x80564CB4, &lit_4688);

/* 8055B9A8-8055BC2C 000508 0284+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_Maro_cFv */
void daNpc_Maro_c::CreateHeap() {
    // NONMATCHING
}

/* 8055BC2C-8055BC68 00078C 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 8055BC68-8055BC80 0007C8 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 8055BC80-8055BCBC 0007E0 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 8055BCBC-8055BCD4 00081C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 8055BCD4-8055BD1C 000834 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 8055BD1C-8055BD40 00087C 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 8055BD40-8055BD7C 0008A0 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 8055BD7C-8055BD94 0008DC 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 8055BD94-8055BDD0 0008F4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 8055BDD0-8055BDE8 000930 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 8055BDE8-8055BE1C 000948 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_Maro_cFv */
void daNpc_Maro_c::Delete() {
    // NONMATCHING
}

/* 8055BE1C-8055BF0C 00097C 00F0+00 2/2 0/0 0/0 .text            Execute__12daNpc_Maro_cFv */
void daNpc_Maro_c::Execute() {
    // NONMATCHING
}

/* 8055BF0C-8055BFA0 000A6C 0094+00 1/1 0/0 0/0 .text            Draw__12daNpc_Maro_cFv */
void daNpc_Maro_c::Draw() {
    // NONMATCHING
}

/* 8055BFA0-8055BFC0 000B00 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daNpc_Maro_cFP10fopAc_ac_c             */
void daNpc_Maro_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8055BFC0-8055C018 000B20 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__12daNpc_Maro_cFP8J3DJointi                */
void daNpc_Maro_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 8055C018-8055C0B4 000B78 009C+00 1/1 0/0 0/0 .text            srchArrow__12daNpc_Maro_cFPvPv */
void daNpc_Maro_c::srchArrow(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564CB8-80564CBC 00010C 0004+00 2/2 0/0 0/0 .rodata          @4808 */
SECTION_RODATA static f32 const lit_4808 = 1000000000.0f;
COMPILER_STRIP_GATE(0x80564CB8, &lit_4808);

/* 8055C0B4-8055C1AC 000C14 00F8+00 1/1 0/0 0/0 .text            getArrowP__12daNpc_Maro_cFv */
void daNpc_Maro_c::getArrowP() {
    // NONMATCHING
}

/* 8055C1AC-8055C248 000D0C 009C+00 1/1 0/0 0/0 .text            srchItaMato__12daNpc_Maro_cFPvPv */
void daNpc_Maro_c::srchItaMato(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 8055C248-8055C330 000DA8 00E8+00 1/1 0/0 0/0 .text            getItaMatoP__12daNpc_Maro_cFi */
void daNpc_Maro_c::getItaMatoP(int param_0) {
    // NONMATCHING
}

/* 8055C330-8055C3E0 000E90 00B0+00 2/1 0/0 0/0 .text            getType__12daNpc_Maro_cFv */
void daNpc_Maro_c::getType() {
    // NONMATCHING
}

/* 8055C3E0-8055C614 000F40 0234+00 2/1 0/0 0/0 .text            isDelete__12daNpc_Maro_cFv */
void daNpc_Maro_c::isDelete() {
    // NONMATCHING
}

/* 8055C614-8055C834 001174 0220+00 1/1 0/0 0/0 .text            reset__12daNpc_Maro_cFv */
void daNpc_Maro_c::reset() {
    // NONMATCHING
}

/* 8055C834-8055C8B0 001394 007C+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_Maro_cFi */
void daNpc_Maro_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564CBC-80564CC0 000110 0004+00 0/1 0/0 0/0 .rodata          @5050 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5050 = 210.0f;
COMPILER_STRIP_GATE(0x80564CBC, &lit_5050);
#pragma pop

/* 80564CC0-80564CC4 000114 0004+00 0/1 0/0 0/0 .rodata          @5051 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5051 = 410.0f;
COMPILER_STRIP_GATE(0x80564CC0, &lit_5051);
#pragma pop

/* 80564CC4-80564CC8 000118 0004+00 0/1 0/0 0/0 .rodata          @5052 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5052 = 32.0f;
COMPILER_STRIP_GATE(0x80564CC4, &lit_5052);
#pragma pop

/* 80564CC8-80564CCC 00011C 0004+00 0/1 0/0 0/0 .rodata          @5053 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5053 = 419.0f;
COMPILER_STRIP_GATE(0x80564CC8, &lit_5053);
#pragma pop

/* 8055C8B0-8055CB14 001410 0264+00 1/0 0/0 0/0 .text            setParam__12daNpc_Maro_cFv */
void daNpc_Maro_c::setParam() {
    // NONMATCHING
}

/* 8055CB14-8055CC9C 001674 0188+00 1/0 0/0 0/0 .text            checkChangeEvt__12daNpc_Maro_cFv */
void daNpc_Maro_c::checkChangeEvt() {
    // NONMATCHING
}

/* 8055CC9C-8055CCD8 0017FC 003C+00 1/0 0/0 0/0 .text            evtEndProc__12daNpc_Maro_cFv */
void daNpc_Maro_c::evtEndProc() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564CCC-80564CD0 000120 0004+00 10/14 0/0 0/0 .rodata          @5128 */
SECTION_RODATA static f32 const lit_5128 = -1.0f;
COMPILER_STRIP_GATE(0x80564CCC, &lit_5128);

/* 8055CCD8-8055CD74 001838 009C+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_Maro_cFv */
void daNpc_Maro_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 8055CD74-8055D0D8 0018D4 0364+00 2/1 0/0 0/0 .text            srchActors__12daNpc_Maro_cFv */
void daNpc_Maro_c::srchActors() {
    // NONMATCHING
}

/* 8055D0D8-8055D1F4 001C38 011C+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_Maro_cFv */
void daNpc_Maro_c::evtTalk() {
    // NONMATCHING
}

/* 8055D1F4-8055D368 001D54 0174+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_Maro_cFv */
void daNpc_Maro_c::evtCutProc() {
    // NONMATCHING
}

/* 8055D368-8055D5C4 001EC8 025C+00 1/0 0/0 0/0 .text            action__12daNpc_Maro_cFv */
void daNpc_Maro_c::action() {
    // NONMATCHING
}

/* 8055D5C4-8055D688 002124 00C4+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_Maro_cFv */
void daNpc_Maro_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564CD0-80564CD4 000124 0004+00 0/1 0/0 0/0 .rodata          @5395 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5395 = -30.0f;
COMPILER_STRIP_GATE(0x80564CD0, &lit_5395);
#pragma pop

/* 80564CD4-80564CDC 000128 0004+04 0/1 0/0 0/0 .rodata          @5396 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5396[1 + 1 /* padding */] = {
    0x38C90FDB,
    /* padding */
    0x00000000,
};
COMPILER_STRIP_GATE(0x80564CD4, &lit_5396);
#pragma pop

/* 80564CDC-80564CE4 000130 0008+00 1/3 0/0 0/0 .rodata          @5398 */
SECTION_RODATA static u8 const lit_5398[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80564CDC, &lit_5398);

/* 8055D688-8055D918 0021E8 0290+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_Maro_cFv */
void daNpc_Maro_c::setAttnPos() {
    // NONMATCHING
}

/* 8055D918-8055DA70 002478 0158+00 1/0 0/0 0/0 .text            setCollision__12daNpc_Maro_cFv */
void daNpc_Maro_c::setCollision() {
    // NONMATCHING
}

/* 8055DA70-8055DA78 0025D0 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_Maro_cFv */
bool daNpc_Maro_c::drawDbgInfo() {
    return false;
}

/* 8055DA78-8055DAD8 0025D8 0060+00 1/0 0/0 0/0 .text            drawOtherMdl__12daNpc_Maro_cFv */
void daNpc_Maro_c::drawOtherMdl() {
    // NONMATCHING
}

/* 8055DAD8-8055DB64 002638 008C+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__12daNpc_Maro_cF26daNpcT_faceMotionAnmData_c */
void daNpc_Maro_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
    // NONMATCHING
}

/* 8055DB64-8055DBF0 0026C4 008C+00 1/0 0/0 0/0 .text
 * getMotionAnm__12daNpc_Maro_cF22daNpcT_motionAnmData_c        */
void daNpc_Maro_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
    // NONMATCHING
}

/* 8055DBF0-8055DD08 002750 0118+00 1/1 0/0 0/0 .text            selectAction__12daNpc_Maro_cFv */
void daNpc_Maro_c::selectAction() {
    // NONMATCHING
}

/* 8055DD08-8055DD34 002868 002C+00 2/2 0/0 0/0 .text
 * chkAction__12daNpc_Maro_cFM12daNpc_Maro_cFPCvPvPv_i          */
void daNpc_Maro_c::chkAction(int (daNpc_Maro_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 8055DD34-8055DDDC 002894 00A8+00 2/2 0/0 0/0 .text
 * setAction__12daNpc_Maro_cFM12daNpc_Maro_cFPCvPvPv_i          */
void daNpc_Maro_c::setAction(int (daNpc_Maro_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564D58-80564D58 0001AC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80564F73 = "prm";
#pragma pop

/* 8055DDDC-8055DF7C 00293C 01A0+00 1/0 0/0 0/0 .text
 * cutConversationAboutPachinko__12daNpc_Maro_cFi               */
void daNpc_Maro_c::cutConversationAboutPachinko(int param_0) {
    // NONMATCHING
}

/* 8055DF7C-8055E124 002ADC 01A8+00 1/0 0/0 0/0 .text
 * cutConversationAboutWoodSwd__12daNpc_Maro_cFi                */
void daNpc_Maro_c::cutConversationAboutWoodSwd(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564CE4-80564CEC 000138 0008+00 0/3 0/0 0/0 .rodata          @5456 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5456[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80564CE4, &lit_5456);
#pragma pop

/* 80564CEC-80564CF4 000140 0008+00 0/3 0/0 0/0 .rodata          @5457 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5457[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80564CEC, &lit_5457);
#pragma pop

/* 80564CF4-80564CFC 000148 0008+00 0/3 0/0 0/0 .rodata          @5458 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5458[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80564CF4, &lit_5458);
#pragma pop

/* 80564CFC-80564D00 000150 0004+00 1/1 0/0 0/0 .rodata          @5731 */
SECTION_RODATA static f32 const lit_5731 = 30.0f;
COMPILER_STRIP_GATE(0x80564CFC, &lit_5731);

/* 8055E124-8055E414 002C84 02F0+00 1/0 0/0 0/0 .text            cutSwdTutorial__12daNpc_Maro_cFi */
void daNpc_Maro_c::cutSwdTutorial(int param_0) {
    // NONMATCHING
}

/* 8055E414-8055E578 002F74 0164+00 1/0 0/0 0/0 .text            cutHail__12daNpc_Maro_cFi */
void daNpc_Maro_c::cutHail(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564D00-80564D04 000154 0004+00 0/1 0/0 0/0 .rodata          @5888 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5888 = 50.0f;
COMPILER_STRIP_GATE(0x80564D00, &lit_5888);
#pragma pop

/* 80564D04-80564D08 000158 0004+00 0/1 0/0 0/0 .rodata          @5889 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5889 = 10.0f;
COMPILER_STRIP_GATE(0x80564D04, &lit_5889);
#pragma pop

/* 80564D08-80564D0C 00015C 0004+00 0/1 0/0 0/0 .rodata          @5890 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5890 = 0.5f;
COMPILER_STRIP_GATE(0x80564D08, &lit_5890);
#pragma pop

/* 80564D58-80564D58 0001AC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80564F77 = "timer";
#pragma pop

/* 8055E578-8055E968 0030D8 03F0+00 1/0 0/0 0/0 .text            cutFindMonkey__12daNpc_Maro_cFi */
void daNpc_Maro_c::cutFindMonkey(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564D0C-80564D10 000160 0004+00 0/1 0/0 0/0 .rodata          @5995 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5995 = -718.0f;
COMPILER_STRIP_GATE(0x80564D0C, &lit_5995);
#pragma pop

/* 80564D10-80564D14 000164 0004+00 0/1 0/0 0/0 .rodata          @5996 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5996 = 1331.0f;
COMPILER_STRIP_GATE(0x80564D10, &lit_5996);
#pragma pop

/* 80564D14-80564D18 000168 0004+00 0/1 0/0 0/0 .rodata          @5997 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5997 = -2139.0f;
COMPILER_STRIP_GATE(0x80564D14, &lit_5997);
#pragma pop

/* 80564D18-80564D1C 00016C 0004+00 0/1 0/0 0/0 .rodata          @5998 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5998 = -511.0f;
COMPILER_STRIP_GATE(0x80564D18, &lit_5998);
#pragma pop

/* 80564D1C-80564D20 000170 0004+00 0/1 0/0 0/0 .rodata          @5999 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5999 = 1370.0f;
COMPILER_STRIP_GATE(0x80564D1C, &lit_5999);
#pragma pop

/* 80564D20-80564D24 000174 0004+00 0/1 0/0 0/0 .rodata          @6000 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6000 = -2153.0f;
COMPILER_STRIP_GATE(0x80564D20, &lit_6000);
#pragma pop

/* 80564D24-80564D28 000178 0004+00 1/4 0/0 0/0 .rodata          @6001 */
SECTION_RODATA static f32 const lit_6001 = -40.0f;
COMPILER_STRIP_GATE(0x80564D24, &lit_6001);

/* 8055E968-8055ECF4 0034C8 038C+00 1/0 0/0 0/0 .text            cutGiveMeWoodSwd__12daNpc_Maro_cFi
 */
void daNpc_Maro_c::cutGiveMeWoodSwd(int param_0) {
    // NONMATCHING
}

/* 8055ECF4-8055F508 003854 0814+00 3/0 0/0 0/0 .text            cutGetWoodSwd__12daNpc_Maro_cFi */
void daNpc_Maro_c::cutGetWoodSwd(int param_0) {
    // NONMATCHING
}

/* 8055F508-8055F634 004068 012C+00 1/0 0/0 0/0 .text cutConversationWithMaro__12daNpc_Maro_cFi */
void daNpc_Maro_c::cutConversationWithMaro(int param_0) {
    // NONMATCHING
}

/* 8055F634-8055F82C 004194 01F8+00 1/0 0/0 0/0 .text cutCacaricoConversation__12daNpc_Maro_cFi */
void daNpc_Maro_c::cutCacaricoConversation(int param_0) {
    // NONMATCHING
}

/* 8055F82C-8055FAF0 00438C 02C4+00 1/0 0/0 0/0 .text            cutSurprise__12daNpc_Maro_cFi */
void daNpc_Maro_c::cutSurprise(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564D28-80564D2C 00017C 0004+00 0/0 0/0 0/0 .rodata          @6226 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6226 = 1600.0f;
COMPILER_STRIP_GATE(0x80564D28, &lit_6226);
#pragma pop

/* 80564D2C-80564D34 000180 0008+00 0/0 0/0 0/0 .rodata          @6272 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6272[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80564D2C, &lit_6272);
#pragma pop

/* 80564D34-80564D3C 000188 0008+00 0/1 0/0 0/0 .rodata          @6425 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6425[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80564D34, &lit_6425);
#pragma pop

/* 80564D3C-80564D48 000190 000C+00 0/1 0/0 0/0 .rodata          @6485 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6485[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80564D3C, &lit_6485);
#pragma pop

/* 80564D58-80564D58 0001AC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80564F7D = "msgNo";
SECTION_DEAD static char const* const stringBase_80564F83 = "msgNo2";
SECTION_DEAD static char const* const stringBase_80564F8A = "send";
#pragma pop

/* 8055FAF0-805611E0 004650 16F0+00 3/0 0/0 0/0 .text            cutArrowTutorial__12daNpc_Maro_cFi
 */
void daNpc_Maro_c::cutArrowTutorial(int param_0) {
    // NONMATCHING
}

/* 805611E0-80561328 005D40 0148+00 1/0 0/0 0/0 .text            cutBokinTalk__12daNpc_Maro_cFi */
void daNpc_Maro_c::cutBokinTalk(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564D48-80564D4C 00019C 0004+00 1/1 0/0 0/0 .rodata          @7191 */
SECTION_RODATA static f32 const lit_7191 = 40.0f;
COMPILER_STRIP_GATE(0x80564D48, &lit_7191);

/* 80561328-80561614 005E88 02EC+00 1/0 0/0 0/0 .text            cutMarosWhisper__12daNpc_Maro_cFi
 */
void daNpc_Maro_c::cutMarosWhisper(int param_0) {
    // NONMATCHING
}

/* 80561614-8056178C 006174 0178+00 1/0 0/0 0/0 .text            cutTagPush1__12daNpc_Maro_cFi */
void daNpc_Maro_c::cutTagPush1(int param_0) {
    // NONMATCHING
}

/* 8056178C-80561E70 0062EC 06E4+00 3/0 0/0 0/0 .text            cutNotGonnaLet__12daNpc_Maro_cFi */
void daNpc_Maro_c::cutNotGonnaLet(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80564D4C-80564D50 0001A0 0004+00 0/1 0/0 0/0 .rodata          @7496 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7496 = 70.0f;
COMPILER_STRIP_GATE(0x80564D4C, &lit_7496);
#pragma pop

/* 80564D50-80564D54 0001A4 0004+00 0/1 0/0 0/0 .rodata          @7497 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7497 = 500.0f;
COMPILER_STRIP_GATE(0x80564D50, &lit_7497);
#pragma pop

/* 80564D54-80564D58 0001A8 0004+00 0/1 0/0 0/0 .rodata          @7498 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7498 = 150.0f;
COMPILER_STRIP_GATE(0x80564D54, &lit_7498);
#pragma pop

/* 80561E70-80562174 0069D0 0304+00 1/0 0/0 0/0 .text            cutTalkToKakashi__12daNpc_Maro_cFi
 */
void daNpc_Maro_c::cutTalkToKakashi(int param_0) {
    // NONMATCHING
}

/* 80562174-805629A4 006CD4 0830+00 2/0 0/0 0/0 .text            wait__12daNpc_Maro_cFPv */
void daNpc_Maro_c::wait(void* param_0) {
    // NONMATCHING
}

/* 805629A4-80562B14 007504 0170+00 2/0 0/0 0/0 .text            swdTutorial__12daNpc_Maro_cFPv */
void daNpc_Maro_c::swdTutorial(void* param_0) {
    // NONMATCHING
}

/* 80562B14-80562CA4 007674 0190+00 1/0 0/0 0/0 .text            talk_withTaro__12daNpc_Maro_cFPv */
void daNpc_Maro_c::talk_withTaro(void* param_0) {
    // NONMATCHING
}

/* 80562CA4-80562EC8 007804 0224+00 1/0 0/0 2/0 .text            choccai__12daNpc_Maro_cFPv */
void daNpc_Maro_c::choccai(void* param_0) {
    // NONMATCHING
}

/* 80562EC8-8056319C 007A28 02D4+00 2/0 0/0 0/0 .text            tend__12daNpc_Maro_cFPv */
void daNpc_Maro_c::tend(void* param_0) {
    // NONMATCHING
}

/* 8056319C-8056342C 007CFC 0290+00 3/0 0/0 0/0 .text            arrowTutorial__12daNpc_Maro_cFPv */
void daNpc_Maro_c::arrowTutorial(void* param_0) {
    // NONMATCHING
}

/* 8056342C-80563660 007F8C 0234+00 3/0 0/0 0/0 .text            talk__12daNpc_Maro_cFPv */
void daNpc_Maro_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80563660-80563780 0081C0 0120+00 2/0 0/0 0/0 .text            shop__12daNpc_Maro_cFPv */
void daNpc_Maro_c::shop(void* param_0) {
    // NONMATCHING
}

/* 80563780-805637A0 0082E0 0020+00 1/0 0/0 0/0 .text            daNpc_Maro_Create__FPv */
static void daNpc_Maro_Create(void* param_0) {
    // NONMATCHING
}

/* 805637A0-805637C0 008300 0020+00 1/0 0/0 0/0 .text            daNpc_Maro_Delete__FPv */
static void daNpc_Maro_Delete(void* param_0) {
    // NONMATCHING
}

/* 805637C0-805637E0 008320 0020+00 1/0 0/0 0/0 .text            daNpc_Maro_Execute__FPv */
static void daNpc_Maro_Execute(void* param_0) {
    // NONMATCHING
}

/* 805637E0-80563800 008340 0020+00 1/0 0/0 0/0 .text            daNpc_Maro_Draw__FPv */
static void daNpc_Maro_Draw(void* param_0) {
    // NONMATCHING
}

/* 80563800-80563808 008360 0008+00 1/0 0/0 0/0 .text            daNpc_Maro_IsDelete__FPv */
static bool daNpc_Maro_IsDelete(void* param_0) {
    return true;
}

/* 80563808-80563838 008368 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80563838-80563880 008398 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80563880-805638C8 0083E0 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 805638C8-80563904 008428 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80563904-8056394C 008464 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 8056394C-80563994 0084AC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80563994-805639D0 0084F4 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 805639D0-80563A0C 008530 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80563A0C-80563E10 00856C 0404+00 1/1 0/0 0/0 .text
 * __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
// daNpcT_c::daNpcT_c(daNpcT_faceMotionAnmData_c const* param_0,
//                       daNpcT_motionAnmData_c const* param_1,
// daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
//                          daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
//                       daNpcT_evtData_c const* param_6, char** param_7) {
extern "C" void __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc() {
    // NONMATCHING
}

/* 80563E10-80563E14 008970 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80563E14-80563F10 008974 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80563F10-80563F14 008A70 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80563F14-80563F5C 008A74 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80563F5C-80563FCC 008ABC 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80563FCC-80564028 008B2C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80564028-80564098 008B88 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80564098-805640E0 008BF8 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 805640E0-805641FC 008C40 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 805641FC-80564404 008D5C 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80564404-805644E8 008F64 00E4+00 1/1 0/0 0/0 .text
 * lookActor__15daNpcT_JntAnm_cFP10fopAc_ac_cfUc                */
// void daNpcT_JntAnm_c::lookActor(fopAc_ac_c* param_0, f32 param_1, u8 param_2) {
extern "C" void lookActor__15daNpcT_JntAnm_cFP10fopAc_ac_cfUc() {
    // NONMATCHING
}

/* 805644E8-80564630 009048 0148+00 1/1 0/0 0/0 .text            absXZ__4cXyzCFRC3Vec */
// void cXyz::absXZ(Vec const& param_0) const {
extern "C" void absXZ__4cXyzCFRC3Vec() {
    // NONMATCHING
}

/* 80564630-80564634 009190 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80564634-8056463C 009194 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__8daNpcT_cFv */
s32 getFootLJointNo__8daNpcT_cFv() {
    return -1;
}

/* 8056463C-80564644 00919C 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__8daNpcT_cFv */
s32 getFootRJointNo__8daNpcT_cFv() {
    return -1;
}

/* 80564644-8056464C 0091A4 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 8056464C-80564654 0091AC 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80564658-80564660 0091B8 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80564660-80564678 0091C0 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80564678-8056467C 0091D8 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 8056467C-80564684 0091DC 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80564684-8056468C 0091E4 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 8056468C-80564690 0091EC 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80564690-80564694 0091F0 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80564694-80564698 0091F4 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80564698-8056469C 0091F8 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 8056469C-805646B8 0091FC 001C+00 5/5 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_8056469C(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80565D74-80565D80 000DE4 000C+00 2/2 0/0 0/0 .data            __vt__18daNpc_Maro_Param_c */
SECTION_DATA extern void* __vt__18daNpc_Maro_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpc_Maro_Param_cFv,
};

/* 80565D88-80565D94 000008 000C+00 1/1 0/0 0/0 .bss             @4118 */
static u8 lit_4118[12];

/* 80565D94-80565D98 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 805646B8-805648A4 009218 01EC+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_maro_cpp */
void __sinit_d_a_npc_maro_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x805646B8, __sinit_d_a_npc_maro_cpp);
#pragma pop

/* 805648A4-80564970 009404 00CC+00 1/1 0/0 0/0 .text
 * __ct__12daNpc_Maro_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Maro_c::daNpc_Maro_c(daNpcT_faceMotionAnmData_c const* param_0,
                               daNpcT_motionAnmData_c const* param_1,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                               int param_3,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                               int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80564970-80564978 0094D0 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__12daNpc_Maro_cFv */
s32 daNpc_Maro_c::getEyeballMaterialNo() {
    return true;
}

/* 80564978-80564980 0094D8 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__12daNpc_Maro_cFv */
s32 daNpc_Maro_c::getHeadJointNo() {
    return 4;
}

/* 80564980-80564988 0094E0 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__12daNpc_Maro_cFv */
s32 daNpc_Maro_c::getNeckJointNo() {
    return 3;
}

/* 80564988-80564990 0094E8 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__12daNpc_Maro_cFv */
bool daNpc_Maro_c::getBackboneJointNo() {
    return true;
}

/* 80564990-805649A0 0094F0 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__12daNpc_Maro_cFi
 */
void daNpc_Maro_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 805649A0-805649B0 009500 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__12daNpc_Maro_cFi
 */
void daNpc_Maro_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 805649B0-805649F8 009510 0048+00 2/1 0/0 0/0 .text            __dt__18daNpc_Maro_Param_cFv */
daNpc_Maro_Param_c::~daNpc_Maro_Param_c() {
    // NONMATCHING
}

/* 805649F8-80564A00 009558 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_805649F8() {
    // NONMATCHING
}

/* 80564A00-80564A08 009560 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80564A00() {
    // NONMATCHING
}

/* 80564A08-80564B20 009568 0118+00 1/1 0/0 0/0 .text
 * __ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
// dShopSystem_c::dShopSystem_c(daNpcT_faceMotionAnmData_c const* param_0,
//                                 daNpcT_motionAnmData_c const* param_1,
//                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
//                                 int param_3,
//                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
//                                 int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
extern "C" void __ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc() {
    // NONMATCHING
}

/* 80564B20-80564B28 009680 0008+00 1/0 0/0 0/0 .text            getResName2__13dShopSystem_cFi */
// bool dShopSystem_c::getResName2(int param_0) {
extern "C" bool getResName2__13dShopSystem_cFi() {
    return false;
}

/* 80564B28-80564B30 009688 0008+00 1/0 0/0 0/0 .text
 * beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci         */
// bool dShopSystem_c::beforeStartSeqAction(dMsgFlow_c* param_0, int param_1) {
extern "C" bool beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci() {
    return true;
}

/* 80564B30-80564B38 009690 0008+00 1/0 0/0 0/0 .text
 * beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci        */
// bool dShopSystem_c::beforeSelectSeqAction(dMsgFlow_c* param_0, int param_1) {
extern "C" bool beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci() {
    return true;
}

/* 80564B38-80564B98 009698 0060+00 1/1 0/0 0/0 .text chkPointInArea__15daTag_EvtArea_cF4cXyz */
// void daTag_EvtArea_c::chkPointInArea(cXyz param_0) {
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz() {
    // NONMATCHING
}

/* 80564D58-80564D58 0001AC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
