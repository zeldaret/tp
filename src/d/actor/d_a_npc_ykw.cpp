/**
 * @file d_a_npc_ykw.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_ykw.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__11daNpc_ykW_cFv();
extern "C" void create__11daNpc_ykW_cFv();
extern "C" void CreateHeap__11daNpc_ykW_cFv();
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
extern "C" void Delete__11daNpc_ykW_cFv();
extern "C" void Execute__11daNpc_ykW_cFv();
extern "C" void Draw__11daNpc_ykW_cFv();
extern "C" void createHeapCallBack__11daNpc_ykW_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_ykW_cFP8J3DJointi();
extern "C" void srchItemHeart__11daNpc_ykW_cFPvPv();
extern "C" void srchYkw__11daNpc_ykW_cFPvPv();
extern "C" void getOtherYkwP__11daNpc_ykW_cFi();
extern "C" void srchYkm__11daNpc_ykW_cFPvPv();
extern "C" void getOtherYkmP__11daNpc_ykW_cFi();
extern "C" void getType__11daNpc_ykW_cFv();
extern "C" void isDelete__11daNpc_ykW_cFv();
extern "C" void reset__11daNpc_ykW_cFv();
extern "C" void afterJntAnm__11daNpc_ykW_cFi();
extern "C" void setParam__11daNpc_ykW_cFv();
extern "C" void checkChangeEvt__11daNpc_ykW_cFv();
extern "C" void setAfterTalkMotion__11daNpc_ykW_cFv();
extern "C" void srchActors__11daNpc_ykW_cFv();
extern "C" void evtTalk__11daNpc_ykW_cFv();
extern "C" void evtCutProc__11daNpc_ykW_cFv();
extern "C" void action__11daNpc_ykW_cFv();
extern "C" void beforeMove__11daNpc_ykW_cFv();
extern "C" void afterMoved__11daNpc_ykW_cFv();
extern "C" void setAttnPos__11daNpc_ykW_cFv();
extern "C" void setCollision__11daNpc_ykW_cFv();
extern "C" bool drawDbgInfo__11daNpc_ykW_cFv();
extern "C" void selectAction__11daNpc_ykW_cFv();
extern "C" void chkAction__11daNpc_ykW_cFM11daNpc_ykW_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_ykW_cFM11daNpc_ykW_cFPCvPvPv_i();
extern "C" void getGoalPos__11daNpc_ykW_cFv();
extern "C" void orderGoIntoBossRoomEvt__11daNpc_ykW_cFv();
extern "C" void putUtuwaHeart__11daNpc_ykW_cFP4cXyzffsP4cXyz();
extern "C" void cutShowDoor__11daNpc_ykW_cFi();
extern "C" void cutGoIntoBossRoom__11daNpc_ykW_cFi();
extern "C" void cutLv5DungeonClear__11daNpc_ykW_cFi();
extern "C" void cutFindWolf__11daNpc_ykW_cFi();
extern "C" void cutStartSnowboardRace__11daNpc_ykW_cFi();
extern "C" void cutEndSnowboardRace__11daNpc_ykW_cFi();
extern "C" void cutHug__11daNpc_ykW_cFi();
extern "C" void setDialogueMotion__11daNpc_ykW_cFv();
extern "C" void dialogue__11daNpc_ykW_cFv();
extern "C" void wait__11daNpc_ykW_cFPv();
extern "C" void sitWait__11daNpc_ykW_cFPv();
extern "C" void walk__11daNpc_ykW_cFPv();
extern "C" void race__11daNpc_ykW_cFPv();
extern "C" void talk__11daNpc_ykW_cFPv();
extern "C" static void daNpc_ykW_Create__FPv();
extern "C" static void daNpc_ykW_Delete__FPv();
extern "C" static void daNpc_ykW_Execute__FPv();
extern "C" static void daNpc_ykW_Draw__FPv();
extern "C" static bool daNpc_ykW_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__8daNpcT_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__13daNpcT_Path_cFv();
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
extern "C" void getDstPos__13daNpcT_Path_cF4cXyzP4cXyz();
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawOtherMdl__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_80B678D0(void* _this, int*);
extern "C" void func_80B678EC(void* _this, f32, f32);
extern "C" void __sinit_d_a_npc_ykw_cpp();
extern "C" void
__ct__11daNpc_ykW_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__11daNpc_ykW_cFv();
extern "C" s32 getHeadJointNo__11daNpc_ykW_cFv();
extern "C" s32 getNeckJointNo__11daNpc_ykW_cFv();
extern "C" bool getBackboneJointNo__11daNpc_ykW_cFv();
extern "C" void checkChangeJoint__11daNpc_ykW_cFi();
extern "C" void checkRemoveJoint__11daNpc_ykW_cFi();
extern "C" s32 getFootLJointNo__11daNpc_ykW_cFv();
extern "C" s32 getFootRJointNo__11daNpc_ykW_cFv();
extern "C" void __dt__17daNpc_ykW_Param_cFv();
extern "C" static void func_80B67BB4();
extern "C" static void func_80B67BBC();
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz();
extern "C" u8 const m__17daNpc_ykW_Param_c[180];
extern "C" extern char const* const d_a_npc_ykw__stringBase0;
extern "C" void* mCutNameList__11daNpc_ykW_c[8];
extern "C" u8 mCutList__11daNpc_ykW_c[96];

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
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_delete__FUi();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi();
extern "C" void fopAcM_fastCreateItem__FPC4cXyziiPC5csXyzPC4cXyzPfPfiiPFPv_i();
extern "C" void fopAcM_getPolygonAngle__FRC13cBgS_PolyInfos();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void fpcEx_SearchByID__FUi();
extern "C" void fpcEx_IsExist__FUi();
extern "C" void fpcM_IsCreating__FUi();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void getLayerNo__14dComIfG_play_cFi();
extern "C" void getTimerNowTimeMs__14dComIfG_play_cFv();
extern "C" void getTimerMode__14dComIfG_play_cFv();
extern "C" void getTimerPtr__14dComIfG_play_cFv();
extern "C" void dComIfG_TimerStart__Fis();
extern "C" void dComIfG_TimerEnd__Fii();
extern "C" void dComIfG_TimerDeleteRequest__Fi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void isDungeonItem__12dSv_memBit_cCFi();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void offEventBit__11dSv_event_cFUs();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getItemNo__12daItemBase_cFv();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setSkipZev__14dEvt_control_cFPvPc();
extern "C" void setPt2__14dEvt_control_cFPv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void setGoal__16dEvent_manager_cFP4cXyz();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void
setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo();
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
extern "C" void setPosition__7dTres_cFiUcPC3Veci();
extern "C" void initialize__18daNpcT_ActorMngr_cFv();
extern "C" void entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcT_ActorMngr_cFv();
extern "C" void getActorP__18daNpcT_ActorMngr_cFv();
extern "C" void initialize__15daNpcT_MatAnm_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void checkEndSequence__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__13daNpcT_Path_cFv();
extern "C" void setPathInfo__13daNpcT_Path_cFUcScUc();
extern "C" void setNextIdx__13daNpcT_Path_cFi();
extern "C" void getDstPos__13daNpcT_Path_cF4cXyzP4cXyzi();
extern "C" void getDstPosH__13daNpcT_Path_cF4cXyzP4cXyzii();
extern "C" void chkPassed1__13daNpcT_Path_cF4cXyzi();
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
extern "C" void chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void calcSpeedAndAngle__8daNpcT_cF4cXyziss();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void getEvtAreaTagP__8daNpcT_cFii();
extern "C" void daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz();
extern "C" void daNpcT_judgeRace__FP5dPathPP10fopAc_ac_cP16daNpcT_pntData_ciPi();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_onTmpBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
extern "C" void dKy_custom_colset__FUcUcf();
extern "C" void setMeterString__13dMeter2Info_cFl();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void remove__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void isStart__8dTimer_cFv();
extern "C" void dTimer_createTimer__FlUlUcUcffff();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void cM3d_Len2dSqPntAndSegLine__FffffffPfPfPf();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void bgmStreamPrepare__8Z2SeqMgrFUl();
extern "C" void bgmStreamPlay__8Z2SeqMgrFv();
extern "C" void bgmStreamStop__8Z2SeqMgrFUl();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
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
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_20();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_20();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
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
extern "C" extern u8 g_meter2_info[248];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mFindCount__8daNpcT_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz();
extern "C" void getType__11daNpc_ykM_cFv();
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80B67E68-80B67E68 000230 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B67E68 = "";
SECTION_DEAD static char const* const stringBase_80B67E69 = "DEFAULT_GETITEM";
SECTION_DEAD static char const* const stringBase_80B67E79 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80B67E85 = "SHOW_DOOR";
SECTION_DEAD static char const* const stringBase_80B67E8F = "GO_INTO_BOSSROOM1";
SECTION_DEAD static char const* const stringBase_80B67EA1 = "GO_INTO_BOSSROOM2";
SECTION_DEAD static char const* const stringBase_80B67EB3 = "LV5DUNGEON_CLEAR";
SECTION_DEAD static char const* const stringBase_80B67EC4 = "FIND_WOLF";
SECTION_DEAD static char const* const stringBase_80B67ECE = "START_SNOWBOARDRACE";
SECTION_DEAD static char const* const stringBase_80B67EE2 = "END_SNOWBOARDRACE";
SECTION_DEAD static char const* const stringBase_80B67EF4 = "ykW";
SECTION_DEAD static char const* const stringBase_80B67EF8 = "ykW1";
SECTION_DEAD static char const* const stringBase_80B67EFD = "ykW2";
SECTION_DEAD static char const* const stringBase_80B67F02 = "ykM2";
SECTION_DEAD static char const* const stringBase_80B67F07 = "GO_INTO_BOSSROOM";
SECTION_DEAD static char const* const stringBase_80B67F18 = "HUG";
#pragma pop

/* 80B67F60-80B67F68 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x01,
};

/* 80B67F68-80B67FB8 -00001 0050+00 1/2 0/0 0/0 .data            l_evtList */
SECTION_DATA static void* l_evtList[20] = {
    (void*)&d_a_npc_ykw__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_ykw__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_ykw__stringBase0) + 0x11),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_ykw__stringBase0) + 0x1D),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_ykw__stringBase0) + 0x27),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_ykw__stringBase0) + 0x39),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_ykw__stringBase0) + 0x4B),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_ykw__stringBase0) + 0x5C),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_ykw__stringBase0) + 0x66),
    (void*)0x00000003,
    (void*)(((char*)&d_a_npc_ykw__stringBase0) + 0x7A),
    (void*)0x00000003,
};

/* 80B67FB8-80B67FCC -00001 0014+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[5] = {
    (void*)&d_a_npc_ykw__stringBase0,
    (void*)(((char*)&d_a_npc_ykw__stringBase0) + 0x8C),
    (void*)(((char*)&d_a_npc_ykw__stringBase0) + 0x90),
    (void*)(((char*)&d_a_npc_ykw__stringBase0) + 0x95),
    (void*)(((char*)&d_a_npc_ykw__stringBase0) + 0x9A),
};

/* 80B67FCC-80B67FD0 00008C 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80B67FD0-80B67FD4 000090 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u8 l_loadResPtrn1[3 + 1 /* padding */] = {
    0x01,
    0x02,
    0xFF,
    /* padding */
    0x00,
};

/* 80B67FD4-80B67FD8 000094 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn2 */
SECTION_DATA static u8 l_loadResPtrn2[3 + 1 /* padding */] = {
    0x01,
    0x03,
    0xFF,
    /* padding */
    0x00,
};

/* 80B67FD8-80B67FDC 000098 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn9 */
SECTION_DATA static u32 l_loadResPtrn9 = 0x010203FF;

/* 80B67FDC-80B67FFC -00001 0020+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[8] = {
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn1, (void*)&l_loadResPtrn1, (void*)&l_loadResPtrn2,
    (void*)&l_loadResPtrn1, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn9,
};

/* 80B67FFC-80B68184 0000BC 0188+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[392] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x26,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x23,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x28,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80B68184-80B68558 000244 03D4+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[980] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x20,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80B68558-80B68638 000618 00E0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[224] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x07, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x01, 0x00, 0x0B, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x01, 0x00, 0x0C, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B68638-80B68848 0006F8 0210+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[528] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x19, 0xFF, 0x01, 0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1D, 0xFF, 0x01, 0x00, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1E, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1F, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x21, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x22, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x20, 0xFF, 0x01, 0x00, 0x03, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1A, 0xFF, 0x01, 0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1B, 0xFF, 0x01, 0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x01, 0x00, 0x0A, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0x00, 0x0A, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0x00, 0x0C, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0x00, 0x0E, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x01, 0x00, 0x0F, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x15, 0x00, 0x01, 0x00, 0x0F, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x16, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1D, 0xFF, 0x01, 0x00, 0x02, 0xFF, 0x02, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x17, 0x00, 0x01, 0x00, 0x18, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B68848-80B68868 -00001 0020+00 1/1 0/0 0/0 .data            mCutNameList__11daNpc_ykW_c */
SECTION_DATA void* daNpc_ykW_c::mCutNameList[8] = {
    (void*)&d_a_npc_ykw__stringBase0,
    (void*)(((char*)&d_a_npc_ykw__stringBase0) + 0x1D),
    (void*)(((char*)&d_a_npc_ykw__stringBase0) + 0x9F),
    (void*)(((char*)&d_a_npc_ykw__stringBase0) + 0x4B),
    (void*)(((char*)&d_a_npc_ykw__stringBase0) + 0x5C),
    (void*)(((char*)&d_a_npc_ykw__stringBase0) + 0x66),
    (void*)(((char*)&d_a_npc_ykw__stringBase0) + 0x7A),
    (void*)(((char*)&d_a_npc_ykw__stringBase0) + 0xB0),
};

/* 80B68868-80B68874 -00001 000C+00 0/1 0/0 0/0 .data            @4119 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4119[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutShowDoor__11daNpc_ykW_cFi,
};
#pragma pop

/* 80B68874-80B68880 -00001 000C+00 0/1 0/0 0/0 .data            @4120 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4120[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutGoIntoBossRoom__11daNpc_ykW_cFi,
};
#pragma pop

/* 80B68880-80B6888C -00001 000C+00 0/1 0/0 0/0 .data            @4121 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4121[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutLv5DungeonClear__11daNpc_ykW_cFi,
};
#pragma pop

/* 80B6888C-80B68898 -00001 000C+00 0/1 0/0 0/0 .data            @4122 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4122[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutFindWolf__11daNpc_ykW_cFi,
};
#pragma pop

/* 80B68898-80B688A4 -00001 000C+00 0/1 0/0 0/0 .data            @4123 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4123[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutStartSnowboardRace__11daNpc_ykW_cFi,
};
#pragma pop

/* 80B688A4-80B688B0 -00001 000C+00 0/1 0/0 0/0 .data            @4124 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4124[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutEndSnowboardRace__11daNpc_ykW_cFi,
};
#pragma pop

/* 80B688B0-80B688BC -00001 000C+00 0/1 0/0 0/0 .data            @4125 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4125[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutHug__11daNpc_ykW_cFi,
};
#pragma pop

/* 80B688BC-80B6891C 00097C 0060+00 1/2 0/0 0/0 .data            mCutList__11daNpc_ykW_c */
SECTION_DATA u8 daNpc_ykW_c::mCutList[96] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B6891C-80B68938 -00001 001C+00 1/1 0/0 0/0 .data            @4846 */
SECTION_DATA static void* lit_4846[7] = {
    (void*)(((char*)getType__11daNpc_ykW_cFv) + 0x28),
    (void*)(((char*)getType__11daNpc_ykW_cFv) + 0x30),
    (void*)(((char*)getType__11daNpc_ykW_cFv) + 0x38),
    (void*)(((char*)getType__11daNpc_ykW_cFv) + 0x40),
    (void*)(((char*)getType__11daNpc_ykW_cFv) + 0x48),
    (void*)(((char*)getType__11daNpc_ykW_cFv) + 0x50),
    (void*)(((char*)getType__11daNpc_ykW_cFv) + 0x58),
};

/* 80B68938-80B68954 -00001 001C+00 1/1 0/0 0/0 .data            @4881 */
SECTION_DATA static void* lit_4881[7] = {
    (void*)(((char*)isDelete__11daNpc_ykW_cFv) + 0x3C),
    (void*)(((char*)isDelete__11daNpc_ykW_cFv) + 0x44),
    (void*)(((char*)isDelete__11daNpc_ykW_cFv) + 0x5C),
    (void*)(((char*)isDelete__11daNpc_ykW_cFv) + 0xC4),
    (void*)(((char*)isDelete__11daNpc_ykW_cFv) + 0xCC),
    (void*)(((char*)isDelete__11daNpc_ykW_cFv) + 0x110),
    (void*)(((char*)isDelete__11daNpc_ykW_cFv) + 0x118),
};

/* 80B68954-80B68960 -00001 000C+00 1/1 0/0 0/0 .data            @5056 */
SECTION_DATA static void* lit_5056[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_ykW_cFPv,
};

/* 80B68960-80B6896C -00001 000C+00 1/1 0/0 0/0 .data            @5124 */
SECTION_DATA static void* lit_5124[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_ykW_cFPv,
};

/* 80B6896C-80B68978 -00001 000C+00 1/1 0/0 0/0 .data            @5129 */
SECTION_DATA static void* lit_5129[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_ykW_cFPv,
};

/* 80B68978-80B68984 -00001 000C+00 0/1 0/0 0/0 .data            @5356 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5356[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sitWait__11daNpc_ykW_cFPv,
};
#pragma pop

/* 80B68984-80B68990 -00001 000C+00 0/1 0/0 0/0 .data            @5360 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5360[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sitWait__11daNpc_ykW_cFPv,
};
#pragma pop

/* 80B68990-80B6899C -00001 000C+00 0/1 0/0 0/0 .data            @5365 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5365[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sitWait__11daNpc_ykW_cFPv,
};
#pragma pop

/* 80B6899C-80B689A8 -00001 000C+00 1/1 0/0 0/0 .data            @5554 */
SECTION_DATA static void* lit_5554[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sitWait__11daNpc_ykW_cFPv,
};

/* 80B689A8-80B689B4 -00001 000C+00 1/1 0/0 0/0 .data            @5558 */
SECTION_DATA static void* lit_5558[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)race__11daNpc_ykW_cFPv,
};

/* 80B689B4-80B689C0 -00001 000C+00 0/1 0/0 0/0 .data            @5599 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5599[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sitWait__11daNpc_ykW_cFPv,
};
#pragma pop

/* 80B689C0-80B689CC -00001 000C+00 0/1 0/0 0/0 .data            @5601 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5601[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_ykW_cFPv,
};
#pragma pop

/* 80B689CC-80B689D8 -00001 000C+00 0/1 0/0 0/0 .data            @5606 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5606[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk__11daNpc_ykW_cFPv,
};
#pragma pop

/* 80B689D8-80B689E4 -00001 000C+00 0/1 0/0 0/0 .data            @5608 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5608[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_ykW_cFPv,
};
#pragma pop

/* 80B689E4-80B689F0 -00001 000C+00 0/1 0/0 0/0 .data            @5611 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5611[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)race__11daNpc_ykW_cFPv,
};
#pragma pop

/* 80B689F0-80B689FC -00001 000C+00 0/1 0/0 0/0 .data            @5613 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5613[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_ykW_cFPv,
};
#pragma pop

/* 80B689FC-80B68B8C -00001 0190+00 1/1 0/0 0/0 .data            @6524 */
SECTION_DATA static void* lit_6524[100] = {
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x178),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x254),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x26C),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x280),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x26C),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x2DC),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x338),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x394),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x418),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x420),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x47C),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x418),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x4BC),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x4CC),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x504),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x26C),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x538),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x6A8),
    (void*)(((char*)cutLv5DungeonClear__11daNpc_ykW_cFi) + 0x564),
};

/* 80B68B8C-80B68B98 -00001 000C+00 1/1 0/0 0/0 .data            @7918 */
SECTION_DATA static void* lit_7918[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sitWait__11daNpc_ykW_cFPv,
};

/* 80B68B98-80B68BB8 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_ykW_MethodTable */
static actor_method_class daNpc_ykW_MethodTable = {
    (process_method_func)daNpc_ykW_Create__FPv,
    (process_method_func)daNpc_ykW_Delete__FPv,
    (process_method_func)daNpc_ykW_Execute__FPv,
    (process_method_func)daNpc_ykW_IsDelete__FPv,
    (process_method_func)daNpc_ykW_Draw__FPv,
};

/* 80B68BB8-80B68BE8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_YKW */
extern actor_process_profile_definition g_profile_NPC_YKW = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_YKW,             // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_ykW_c),      // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  381,                      // mPriority
  &daNpc_ykW_MethodTable,   // sub_method
  0x00040108,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80B68BE8-80B68BF4 000CA8 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80B68BF4-80B68C00 000CB4 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80B68C00-80B68C24 000CC0 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B67BBC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B67BB4,
};

/* 80B68C24-80B68C30 000CE4 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80B68C30-80B68C3C 000CF0 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80B68C3C-80B68C48 000CFC 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80B68C48-80B68C54 000D08 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80B68C54-80B68C60 000D14 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80B68C60-80B68C6C 000D20 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80B68C6C-80B68C78 000D2C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B68C78-80B68C84 000D38 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80B68C84-80B68C90 000D44 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80B68C90-80B68D54 000D50 00C4+00 2/2 0/0 0/0 .data            __vt__11daNpc_ykW_c */
SECTION_DATA extern void* __vt__11daNpc_ykW_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_ykW_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__11daNpc_ykW_cFi,
    (void*)checkRemoveJoint__11daNpc_ykW_cFi,
    (void*)getBackboneJointNo__11daNpc_ykW_cFv,
    (void*)getNeckJointNo__11daNpc_ykW_cFv,
    (void*)getHeadJointNo__11daNpc_ykW_cFv,
    (void*)getFootLJointNo__11daNpc_ykW_cFv,
    (void*)getFootRJointNo__11daNpc_ykW_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__11daNpc_ykW_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__11daNpc_ykW_cFi,
    (void*)setParam__11daNpc_ykW_cFv,
    (void*)checkChangeEvt__11daNpc_ykW_cFv,
    (void*)evtTalk__11daNpc_ykW_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__11daNpc_ykW_cFv,
    (void*)setAfterTalkMotion__11daNpc_ykW_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__11daNpc_ykW_cFv,
    (void*)beforeMove__11daNpc_ykW_cFv,
    (void*)afterMoved__11daNpc_ykW_cFv,
    (void*)setAttnPos__11daNpc_ykW_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__11daNpc_ykW_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__11daNpc_ykW_cFv,
    (void*)drawOtherMdl__8daNpcT_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__8daNpcT_cFiifi,
    (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__8daNpcT_cFPiPi,
    (void*)changeBck__8daNpcT_cFPiPi,
    (void*)changeBtp__8daNpcT_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
};

/* 80B5EF0C-80B5F084 0000EC 0178+00 1/0 0/0 0/0 .text            __dt__11daNpc_ykW_cFv */
daNpc_ykW_c::~daNpc_ykW_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B67C38-80B67CEC 000000 00B4+00 19/19 0/0 0/0 .rodata          m__17daNpc_ykW_Param_c */
SECTION_RODATA u8 const daNpc_ykW_Param_c::m[180] = {
    0x43, 0x7A, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xFA, 0x00,
    0x00, 0x43, 0x7F, 0x00, 0x00, 0x43, 0x66, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x70,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0xC1,
    0xA0, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00, 0xC1, 0x70, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
    0xC1, 0xA0, 0x00, 0x00, 0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00,
    0x06, 0x00, 0x05, 0x00, 0x06, 0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x42, 0x48,
    0x00, 0x00, 0x42, 0x60, 0x00, 0x00, 0x3F, 0x33, 0x33, 0x33, 0x42, 0x68, 0x00, 0x00, 0x00,
    0x03, 0x00, 0x05, 0x3F, 0x19, 0x99, 0x9A, 0x01, 0x68, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B67C38, &daNpc_ykW_Param_c::m);

/* 80B67CEC-80B67D0C 0000B4 0020+00 0/1 0/0 0/0 .rodata          heapSize$4289 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[32] = {
    0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x33, 0x10, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x80, 0x00,
    0x00, 0x00, 0x33, 0x10, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x80, 0x00,
};
COMPILER_STRIP_GATE(0x80B67CEC, &heapSize);
#pragma pop

/* 80B67D0C-80B67D10 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4355 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4355 = -300.0f;
COMPILER_STRIP_GATE(0x80B67D0C, &lit_4355);
#pragma pop

/* 80B67D10-80B67D14 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4356 = -100.0f;
COMPILER_STRIP_GATE(0x80B67D10, &lit_4356);
#pragma pop

/* 80B67D14-80B67D18 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4357 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4357 = 300.0f;
COMPILER_STRIP_GATE(0x80B67D14, &lit_4357);
#pragma pop

/* 80B67D18-80B67D1C 0000E0 0004+00 7/23 0/0 0/0 .rodata          @4358 */
SECTION_RODATA static u8 const lit_4358[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B67D18, &lit_4358);

/* 80B67D1C-80B67D20 0000E4 0004+00 0/2 0/0 0/0 .rodata          @4359 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4359 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80B67D1C, &lit_4359);
#pragma pop

/* 80B5F084-80B5F34C 000264 02C8+00 1/1 0/0 0/0 .text            create__11daNpc_ykW_cFv */
void daNpc_ykW_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B67D20-80B67D24 0000E8 0004+00 0/2 0/0 0/0 .rodata          @4524 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4524 = 65536.0f;
COMPILER_STRIP_GATE(0x80B67D20, &lit_4524);
#pragma pop

/* 80B67D24-80B67D28 0000EC 0004+00 0/3 0/0 0/0 .rodata          @4525 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4525 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B67D24, &lit_4525);
#pragma pop

/* 80B67D28-80B67D2C 0000F0 0004+00 2/8 0/0 0/0 .rodata          @4669 */
SECTION_RODATA static f32 const lit_4669 = 1.0f;
COMPILER_STRIP_GATE(0x80B67D28, &lit_4669);

/* 80B5F34C-80B5F5C8 00052C 027C+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_ykW_cFv */
void daNpc_ykW_c::CreateHeap() {
    // NONMATCHING
}

/* 80B5F5C8-80B5F604 0007A8 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80B5F604-80B5F61C 0007E4 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80B5F61C-80B5F658 0007FC 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80B5F658-80B5F670 000838 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80B5F670-80B5F6B8 000850 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80B5F6B8-80B5F6DC 000898 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80B5F6DC-80B5F718 0008BC 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80B5F718-80B5F730 0008F8 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80B5F730-80B5F76C 000910 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80B5F76C-80B5F784 00094C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80B5F784-80B5F7B8 000964 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_ykW_cFv */
void daNpc_ykW_c::Delete() {
    // NONMATCHING
}

/* 80B5F7B8-80B5F7D8 000998 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_ykW_cFv */
void daNpc_ykW_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B67D2C-80B67D30 0000F4 0004+00 1/2 0/0 0/0 .rodata          @4729 */
SECTION_RODATA static f32 const lit_4729 = 100.0f;
COMPILER_STRIP_GATE(0x80B67D2C, &lit_4729);

/* 80B5F7D8-80B5F8AC 0009B8 00D4+00 1/1 0/0 0/0 .text            Draw__11daNpc_ykW_cFv */
void daNpc_ykW_c::Draw() {
    // NONMATCHING
}

/* 80B5F8AC-80B5F8CC 000A8C 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_ykW_cFP10fopAc_ac_c              */
void daNpc_ykW_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80B5F8CC-80B5F924 000AAC 0058+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpc_ykW_cFP8J3DJointi
 */
void daNpc_ykW_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80B5F924-80B5F9D8 000B04 00B4+00 1/1 0/0 0/0 .text            srchItemHeart__11daNpc_ykW_cFPvPv
 */
void daNpc_ykW_c::srchItemHeart(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80B5F9D8-80B5FA74 000BB8 009C+00 1/1 0/0 0/0 .text            srchYkw__11daNpc_ykW_cFPvPv */
void daNpc_ykW_c::srchYkw(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B67D30-80B67D34 0000F8 0004+00 2/2 0/0 0/0 .rodata          @4798 */
SECTION_RODATA static f32 const lit_4798 = 1000000000.0f;
COMPILER_STRIP_GATE(0x80B67D30, &lit_4798);

/* 80B5FA74-80B5FB50 000C54 00DC+00 2/2 0/0 0/0 .text            getOtherYkwP__11daNpc_ykW_cFi */
void daNpc_ykW_c::getOtherYkwP(int param_0) {
    // NONMATCHING
}

/* 80B5FB50-80B5FBEC 000D30 009C+00 1/1 0/0 0/0 .text            srchYkm__11daNpc_ykW_cFPvPv */
void daNpc_ykW_c::srchYkm(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80B5FBEC-80B5FCC8 000DCC 00DC+00 1/1 0/0 0/0 .text            getOtherYkmP__11daNpc_ykW_cFi */
void daNpc_ykW_c::getOtherYkmP(int param_0) {
    // NONMATCHING
}

/* 80B5FCC8-80B5FD30 000EA8 0068+00 3/2 0/0 1/1 .text            getType__11daNpc_ykW_cFv */
u8 daNpc_ykW_c::getType() {
    // NONMATCHING
}

/* 80B5FD30-80B5FE6C 000F10 013C+00 2/1 0/0 0/0 .text            isDelete__11daNpc_ykW_cFv */
void daNpc_ykW_c::isDelete() {
    // NONMATCHING
}

/* 80B5FE6C-80B601C8 00104C 035C+00 1/1 0/0 0/0 .text            reset__11daNpc_ykW_cFv */
void daNpc_ykW_c::reset() {
    // NONMATCHING
}

/* 80B601C8-80B60290 0013A8 00C8+00 1/0 0/0 0/0 .text            afterJntAnm__11daNpc_ykW_cFi */
void daNpc_ykW_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B67D34-80B67D38 0000FC 0004+00 1/1 0/0 0/0 .rodata          @5051 */
SECTION_RODATA static f32 const lit_5051 = 1500.0f;
COMPILER_STRIP_GATE(0x80B67D34, &lit_5051);

/* 80B60290-80B6042C 001470 019C+00 1/0 0/0 0/0 .text            setParam__11daNpc_ykW_cFv */
void daNpc_ykW_c::setParam() {
    // NONMATCHING
}

/* 80B6042C-80B60520 00160C 00F4+00 1/0 0/0 0/0 .text            checkChangeEvt__11daNpc_ykW_cFv */
void daNpc_ykW_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B67D38-80B67D3C 000100 0004+00 4/10 0/0 0/0 .rodata          @5096 */
SECTION_RODATA static f32 const lit_5096 = -1.0f;
COMPILER_STRIP_GATE(0x80B67D38, &lit_5096);

/* 80B60520-80B605C0 001700 00A0+00 1/0 0/0 0/0 .text            setAfterTalkMotion__11daNpc_ykW_cFv
 */
void daNpc_ykW_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80B605C0-80B60744 0017A0 0184+00 1/1 0/0 0/0 .text            srchActors__11daNpc_ykW_cFv */
void daNpc_ykW_c::srchActors() {
    // NONMATCHING
}

/* 80B60744-80B607E4 001924 00A0+00 1/0 0/0 0/0 .text            evtTalk__11daNpc_ykW_cFv */
void daNpc_ykW_c::evtTalk() {
    // NONMATCHING
}

/* 80B607E4-80B608AC 0019C4 00C8+00 1/0 0/0 0/0 .text            evtCutProc__11daNpc_ykW_cFv */
void daNpc_ykW_c::evtCutProc() {
    // NONMATCHING
}

/* 80B608AC-80B60AFC 001A8C 0250+00 1/0 0/0 0/0 .text            action__11daNpc_ykW_cFv */
void daNpc_ykW_c::action() {
    // NONMATCHING
}

/* 80B60AFC-80B60BC0 001CDC 00C4+00 1/0 0/0 0/0 .text            beforeMove__11daNpc_ykW_cFv */
void daNpc_ykW_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B67D3C-80B67D40 000104 0004+00 0/2 0/0 0/0 .rodata          @5332 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5332 = 3.0f;
COMPILER_STRIP_GATE(0x80B67D3C, &lit_5332);
#pragma pop

/* 80B67D40-80B67D44 000108 0004+00 0/1 0/0 0/0 .rodata          @5333 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5333 = 30.0f;
COMPILER_STRIP_GATE(0x80B67D40, &lit_5333);
#pragma pop

/* 80B67D44-80B67D48 00010C 0004+00 0/2 0/0 0/0 .rodata          @5334 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5334 = 2.0f;
COMPILER_STRIP_GATE(0x80B67D44, &lit_5334);
#pragma pop

/* 80B67D48-80B67D4C 000110 0004+00 0/2 0/0 0/0 .rodata          @5335 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5335 = 4.0f;
COMPILER_STRIP_GATE(0x80B67D48, &lit_5335);
#pragma pop

/* 80B67D4C-80B67D50 000114 0004+00 0/1 0/0 0/0 .rodata          @5336 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5336 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B67D4C, &lit_5336);
#pragma pop

/* 80B67D50-80B67D54 000118 0004+00 0/1 0/0 0/0 .rodata          @5337 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5337 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B67D50, &lit_5337);
#pragma pop

/* 80B67D54-80B67D58 00011C 0004+00 0/2 0/0 0/0 .rodata          @5338 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5338 = 50.0f;
COMPILER_STRIP_GATE(0x80B67D54, &lit_5338);
#pragma pop

/* 80B67D58-80B67D60 000120 0004+04 0/1 0/0 0/0 .rodata          @5339 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5339[1 + 1 /* padding */] = {
    205.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80B67D58, &lit_5339);
#pragma pop

/* 80B67D60-80B67D68 000128 0008+00 0/4 0/0 0/0 .rodata          @5340 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5340[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B67D60, &lit_5340);
#pragma pop

/* 80B67D68-80B67D70 000130 0008+00 0/4 0/0 0/0 .rodata          @5341 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5341[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B67D68, &lit_5341);
#pragma pop

/* 80B67D70-80B67D78 000138 0008+00 0/4 0/0 0/0 .rodata          @5342 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5342[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B67D70, &lit_5342);
#pragma pop

/* 80B67D78-80B67D7C 000140 0004+00 0/1 0/0 0/0 .rodata          @5343 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5343 = 0x358637BD;
COMPILER_STRIP_GATE(0x80B67D78, &lit_5343);
#pragma pop

/* 80B60BC0-80B60F08 001DA0 0348+00 1/0 0/0 0/0 .text            afterMoved__11daNpc_ykW_cFv */
void daNpc_ykW_c::afterMoved() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B67D7C-80B67D80 000144 0004+00 0/1 0/0 0/0 .rodata          @5467 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5467 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80B67D7C, &lit_5467);
#pragma pop

/* 80B67D80-80B67D84 000148 0004+00 0/1 0/0 0/0 .rodata          @5468 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5468 = 55.0f;
COMPILER_STRIP_GATE(0x80B67D80, &lit_5468);
#pragma pop

/* 80B67D84-80B67D88 00014C 0004+00 0/1 0/0 0/0 .rodata          @5469 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5469 = 440.0f;
COMPILER_STRIP_GATE(0x80B67D84, &lit_5469);
#pragma pop

/* 80B67D88-80B67D90 000150 0004+04 0/4 0/0 0/0 .rodata          @5470 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5470[1 + 1 /* padding */] = {
    10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80B67D88, &lit_5470);
#pragma pop

/* 80B67D90-80B67D98 000158 0008+00 1/4 0/0 0/0 .rodata          @5472 */
SECTION_RODATA static u8 const lit_5472[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B67D90, &lit_5472);

/* 80B68DA8-80B68DB4 000048 000C+00 1/1 0/0 0/0 .bss             @4126 */
static u8 lit_4126[12];

/* 80B68DB4-80B68DB8 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80B68DB8-80B68DC8 000058 000C+04 0/1 0/0 0/0 .bss             @5372 */
#pragma push
#pragma force_active on
static u8 lit_5372[12 + 4 /* padding */];
#pragma pop

/* 80B68DC8-80B68DD4 000068 000C+00 0/1 0/0 0/0 .bss             prtclScl$5371 */
#pragma push
#pragma force_active on
static u8 prtclScl[12];
#pragma pop

/* 80B60F08-80B614D0 0020E8 05C8+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_ykW_cFv */
void daNpc_ykW_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B67D98-80B67D9C 000160 0004+00 0/1 0/0 0/0 .rodata          @5587 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5587 = 180.0f;
COMPILER_STRIP_GATE(0x80B67D98, &lit_5587);
#pragma pop

/* 80B67D9C-80B67DA0 000164 0004+00 0/1 0/0 0/0 .rodata          @5588 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5588 = 70.0f;
COMPILER_STRIP_GATE(0x80B67D9C, &lit_5588);
#pragma pop

/* 80B67DA0-80B67DA4 000168 0004+00 0/1 0/0 0/0 .rodata          @5589 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5589 = 120.0f;
COMPILER_STRIP_GATE(0x80B67DA0, &lit_5589);
#pragma pop

/* 80B614D0-80B61708 0026B0 0238+00 1/0 0/0 0/0 .text            setCollision__11daNpc_ykW_cFv */
void daNpc_ykW_c::setCollision() {
    // NONMATCHING
}

/* 80B61708-80B61710 0028E8 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_ykW_cFv */
bool daNpc_ykW_c::drawDbgInfo() {
    return false;
}

/* 80B61710-80B61828 0028F0 0118+00 1/1 0/0 0/0 .text            selectAction__11daNpc_ykW_cFv */
void daNpc_ykW_c::selectAction() {
    // NONMATCHING
}

/* 80B61828-80B61854 002A08 002C+00 2/2 0/0 0/0 .text
 * chkAction__11daNpc_ykW_cFM11daNpc_ykW_cFPCvPvPv_i            */
void daNpc_ykW_c::chkAction(int (daNpc_ykW_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80B61854-80B618FC 002A34 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_ykW_cFM11daNpc_ykW_cFPCvPvPv_i            */
void daNpc_ykW_c::setAction(int (daNpc_ykW_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B67DA4-80B67DA8 00016C 0004+00 0/4 0/0 0/0 .rodata          @5652 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5652 = 0.5f;
COMPILER_STRIP_GATE(0x80B67DA4, &lit_5652);
#pragma pop

/* 80B67DA8-80B67DAC 000170 0004+00 0/1 0/0 0/0 .rodata          @5653 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5653 = -1000.0f;
COMPILER_STRIP_GATE(0x80B67DA8, &lit_5653);
#pragma pop

/* 80B618FC-80B61A0C 002ADC 0110+00 1/1 0/0 0/0 .text            getGoalPos__11daNpc_ykW_cFv */
void daNpc_ykW_c::getGoalPos() {
    // NONMATCHING
}

/* 80B61A0C-80B61AA4 002BEC 0098+00 2/2 0/0 0/0 .text orderGoIntoBossRoomEvt__11daNpc_ykW_cFv */
void daNpc_ykW_c::orderGoIntoBossRoomEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B67DAC-80B67DB0 000174 0004+00 0/1 0/0 0/0 .rodata          @5738 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5738 = 211.0f;
COMPILER_STRIP_GATE(0x80B67DAC, &lit_5738);
#pragma pop

/* 80B67DB0-80B67DB4 000178 0004+00 0/1 0/0 0/0 .rodata          @5739 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5739 = -900.0f;
COMPILER_STRIP_GATE(0x80B67DB0, &lit_5739);
#pragma pop

/* 80B61AA4-80B61C8C 002C84 01E8+00 2/2 0/0 0/0 .text putUtuwaHeart__11daNpc_ykW_cFP4cXyzffsP4cXyz
 */
void daNpc_ykW_c::putUtuwaHeart(cXyz* param_0, f32 param_1, f32 param_2, s16 param_3,
                                    cXyz* param_4) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B67DB4-80B67DBC 00017C 0008+00 1/1 0/0 0/0 .rodata          @5758 */
SECTION_RODATA static u8 const lit_5758[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B67DB4, &lit_5758);

/* 80B67E68-80B67E68 000230 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B67F1C = "prm";
SECTION_DEAD static char const* const stringBase_80B67F20 = "timer";
SECTION_DEAD static char const* const stringBase_80B67F26 = "msgNo";
SECTION_DEAD static char const* const stringBase_80B67F2C = "send";
#pragma pop

/* 80B61C8C-80B61E74 002E6C 01E8+00 1/0 0/0 0/0 .text            cutShowDoor__11daNpc_ykW_cFi */
void daNpc_ykW_c::cutShowDoor(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B67DBC-80B67DC0 000184 0004+00 0/1 0/0 0/0 .rodata          @6160 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6160 = 250.0f;
COMPILER_STRIP_GATE(0x80B67DBC, &lit_6160);
#pragma pop

/* 80B67E68-80B67E68 000230 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B67F31 = "skip";
SECTION_DEAD static char const* const stringBase_80B67F36 = "@";
#pragma pop

/* 80B61E74-80B62AF8 003054 0C84+00 1/0 0/0 0/0 .text            cutGoIntoBossRoom__11daNpc_ykW_cFi
 */
void daNpc_ykW_c::cutGoIntoBossRoom(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B67DC0-80B67DC8 000188 0008+00 0/1 0/0 0/0 .rodata          @6174 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6174[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B67DC0, &lit_6174);
#pragma pop

/* 80B67DC8-80B67DD0 000190 0008+00 0/1 0/0 0/0 .rodata          @6202 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6202[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B67DC8, &lit_6202);
#pragma pop

/* 80B62AF8-80B63894 003CD8 0D9C+00 2/0 0/0 0/0 .text            cutLv5DungeonClear__11daNpc_ykW_cFi
 */
void daNpc_ykW_c::cutLv5DungeonClear(int param_0) {
    // NONMATCHING
}

/* 80B63894-80B63AA0 004A74 020C+00 1/0 0/0 0/0 .text            cutFindWolf__11daNpc_ykW_cFi */
void daNpc_ykW_c::cutFindWolf(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B67DD0-80B67DD4 000198 0004+00 0/0 0/0 0/0 .rodata          @6511 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6511 = -196.0f;
COMPILER_STRIP_GATE(0x80B67DD0, &lit_6511);
#pragma pop

/* 80B67DD4-80B67DD8 00019C 0004+00 0/0 0/0 0/0 .rodata          @6512 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6512 = -21.0f;
COMPILER_STRIP_GATE(0x80B67DD4, &lit_6512);
#pragma pop

/* 80B67DD8-80B67DDC 0001A0 0004+00 0/0 0/0 0/0 .rodata          @6513 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6513 = -70.0f;
COMPILER_STRIP_GATE(0x80B67DD8, &lit_6513);
#pragma pop

/* 80B67DDC-80B67DE0 0001A4 0004+00 0/0 0/0 0/0 .rodata          @6514 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6514 = -30.0f;
COMPILER_STRIP_GATE(0x80B67DDC, &lit_6514);
#pragma pop

/* 80B67DE0-80B67DE4 0001A8 0004+00 0/0 0/0 0/0 .rodata          @6515 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6515 = 22.0f;
COMPILER_STRIP_GATE(0x80B67DE0, &lit_6515);
#pragma pop

/* 80B67DE4-80B67DE8 0001AC 0004+00 0/0 0/0 0/0 .rodata          @6516 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6516 = 40.0f;
COMPILER_STRIP_GATE(0x80B67DE4, &lit_6516);
#pragma pop

/* 80B67DE8-80B67DEC 0001B0 0004+00 0/0 0/0 0/0 .rodata          @6517 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6517 = 1.5f;
COMPILER_STRIP_GATE(0x80B67DE8, &lit_6517);
#pragma pop

/* 80B67DEC-80B67DF0 0001B4 0004+00 0/0 0/0 0/0 .rodata          @6518 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6518 = -10.0f;
COMPILER_STRIP_GATE(0x80B67DEC, &lit_6518);
#pragma pop

/* 80B67DF0-80B67DF4 0001B8 0004+00 0/1 0/0 0/0 .rodata          @6519 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6519 = 5.0f;
COMPILER_STRIP_GATE(0x80B67DF0, &lit_6519);
#pragma pop

/* 80B67DF4-80B67DF8 0001BC 0004+00 0/1 0/0 0/0 .rodata          @6520 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6520 = 0x43360B61;
COMPILER_STRIP_GATE(0x80B67DF4, &lit_6520);
#pragma pop

/* 80B67DF8-80B67DFC 0001C0 0004+00 0/0 0/0 0/0 .rodata          @6521 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6521 = 0x3FE66667;
COMPILER_STRIP_GATE(0x80B67DF8, &lit_6521);
#pragma pop

/* 80B67DFC-80B67E00 0001C4 0004+00 0/0 0/0 0/0 .rodata          @6522 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6522 = 1.0f / 50.0f;
COMPILER_STRIP_GATE(0x80B67DFC, &lit_6522);
#pragma pop

/* 80B67E00-80B67E04 0001C8 0004+00 0/0 0/0 0/0 .rodata          @6523 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6523 = 2.0f / 25.0f;
COMPILER_STRIP_GATE(0x80B67E00, &lit_6523);
#pragma pop

/* 80B67E04-80B67E08 0001CC 0004+00 0/1 0/0 0/0 .rodata          @6700 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6700 = -72610.0f;
COMPILER_STRIP_GATE(0x80B67E04, &lit_6700);
#pragma pop

/* 80B67E08-80B67E0C 0001D0 0004+00 0/1 0/0 0/0 .rodata          @6701 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6701 = -54260.0f;
COMPILER_STRIP_GATE(0x80B67E08, &lit_6701);
#pragma pop

/* 80B67E0C-80B67E10 0001D4 0004+00 0/1 0/0 0/0 .rodata          @6702 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6702 = 56590.0f;
COMPILER_STRIP_GATE(0x80B67E0C, &lit_6702);
#pragma pop

/* 80B67E10-80B67E14 0001D8 0004+00 0/1 0/0 0/0 .rodata          @6703 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6703 = 210.0f;
COMPILER_STRIP_GATE(0x80B67E10, &lit_6703);
#pragma pop

/* 80B67E14-80B67E18 0001DC 0004+00 0/1 0/0 0/0 .rodata          @6704 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6704 = 410.0f;
COMPILER_STRIP_GATE(0x80B67E14, &lit_6704);
#pragma pop

/* 80B67E18-80B67E1C 0001E0 0004+00 0/1 0/0 0/0 .rodata          @6705 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6705 = 32.0f;
COMPILER_STRIP_GATE(0x80B67E18, &lit_6705);
#pragma pop

/* 80B67E1C-80B67E20 0001E4 0004+00 0/1 0/0 0/0 .rodata          @6706 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6706 = 419.0f;
COMPILER_STRIP_GATE(0x80B67E1C, &lit_6706);
#pragma pop

/* 80B63AA0-80B63EE0 004C80 0440+00 1/0 0/0 0/0 .text cutStartSnowboardRace__11daNpc_ykW_cFi */
void daNpc_ykW_c::cutStartSnowboardRace(int param_0) {
    // NONMATCHING
}

/* 80B63EE0-80B6450C 0050C0 062C+00 1/0 0/0 0/0 .text cutEndSnowboardRace__11daNpc_ykW_cFi */
void daNpc_ykW_c::cutEndSnowboardRace(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B67E20-80B67E28 0001E8 0008+00 0/1 0/0 0/0 .rodata          @6867 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6867[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B67E20, &lit_6867);
#pragma pop

/* 80B67E28-80B67E2C 0001F0 0004+00 0/1 0/0 0/0 .rodata          @6929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6929 = 20.0f;
COMPILER_STRIP_GATE(0x80B67E28, &lit_6929);
#pragma pop

/* 80B67E2C-80B67E30 0001F4 0004+00 0/1 0/0 0/0 .rodata          @6930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6930 = 80.0f;
COMPILER_STRIP_GATE(0x80B67E2C, &lit_6930);
#pragma pop

/* 80B6450C-80B647E4 0056EC 02D8+00 1/0 0/0 0/0 .text            cutHug__11daNpc_ykW_cFi */
void daNpc_ykW_c::cutHug(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B67E30-80B67E38 0001F8 0008+00 0/1 0/0 0/0 .rodata          motionTbl1$6944 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const motionTbl1[8] = {
    0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x06,
};
COMPILER_STRIP_GATE(0x80B67E30, &motionTbl1);
#pragma pop

/* 80B67E38-80B67E40 000200 0008+00 0/1 0/0 0/0 .rodata          motionTbl2$6949 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const motionTbl2[8] = {
    0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x05,
};
COMPILER_STRIP_GATE(0x80B67E38, &motionTbl2);
#pragma pop

/* 80B647E4-80B6491C 0059C4 0138+00 1/1 0/0 0/0 .text            setDialogueMotion__11daNpc_ykW_cFv
 */
void daNpc_ykW_c::setDialogueMotion() {
    // NONMATCHING
}

/* 80B6491C-80B649A8 005AFC 008C+00 1/1 0/0 0/0 .text            dialogue__11daNpc_ykW_cFv */
void daNpc_ykW_c::dialogue() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B67E40-80B67E44 000208 0004+00 0/1 0/0 0/0 .rodata          @7243 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7243 = -40.0f;
COMPILER_STRIP_GATE(0x80B67E40, &lit_7243);
#pragma pop

/* 80B67E68-80B67E68 000230 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B67F38 = "D_MN11A";
#pragma pop

/* 80B649A8-80B65278 005B88 08D0+00 3/0 0/0 0/0 .text            wait__11daNpc_ykW_cFPv */
void daNpc_ykW_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80B65278-80B654CC 006458 0254+00 6/0 0/0 0/0 .text            sitWait__11daNpc_ykW_cFPv */
void daNpc_ykW_c::sitWait(void* param_0) {
    // NONMATCHING
}

/* 80B654CC-80B6591C 0066AC 0450+00 1/0 0/0 0/0 .text            walk__11daNpc_ykW_cFPv */
void daNpc_ykW_c::walk(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B67E44-80B67E4C 00020C 0008+00 0/1 0/0 0/0 .rodata          @7481 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7481[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B67E44, &lit_7481);
#pragma pop

/* 80B67E4C-80B67E50 000214 0004+00 0/1 0/0 0/0 .rodata          @7887 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7887 = 640000.0f;
COMPILER_STRIP_GATE(0x80B67E4C, &lit_7887);
#pragma pop

/* 80B67E50-80B67E54 000218 0004+00 0/1 0/0 0/0 .rodata          @7888 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7888 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80B67E50, &lit_7888);
#pragma pop

/* 80B67E54-80B67E58 00021C 0004+00 0/1 0/0 0/0 .rodata          @7889 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7889 = 6.0f;
COMPILER_STRIP_GATE(0x80B67E54, &lit_7889);
#pragma pop

/* 80B67E58-80B67E5C 000220 0004+00 0/1 0/0 0/0 .rodata          @7890 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_7890 = 0x3BB40000;
COMPILER_STRIP_GATE(0x80B67E58, &lit_7890);
#pragma pop

/* 80B67E5C-80B67E60 000224 0004+00 0/1 0/0 0/0 .rodata          @7891 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7891 = 12.0f;
COMPILER_STRIP_GATE(0x80B67E5C, &lit_7891);
#pragma pop

/* 80B67E60-80B67E64 000228 0004+00 0/1 0/0 0/0 .rodata          @7892 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7892 = -4.0f;
COMPILER_STRIP_GATE(0x80B67E60, &lit_7892);
#pragma pop

/* 80B67E64-80B67E68 00022C 0004+00 0/1 0/0 0/0 .rodata          @7893 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7893 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B67E64, &lit_7893);
#pragma pop

/* 80B6591C-80B6640C 006AFC 0AF0+00 2/0 0/0 0/0 .text            race__11daNpc_ykW_cFPv */
void daNpc_ykW_c::race(void* param_0) {
    // NONMATCHING
}

/* 80B6640C-80B66774 0075EC 0368+00 3/0 0/0 0/0 .text            talk__11daNpc_ykW_cFPv */
void daNpc_ykW_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80B66774-80B66794 007954 0020+00 1/0 0/0 0/0 .text            daNpc_ykW_Create__FPv */
static void daNpc_ykW_Create(void* param_0) {
    // NONMATCHING
}

/* 80B66794-80B667B4 007974 0020+00 1/0 0/0 0/0 .text            daNpc_ykW_Delete__FPv */
static void daNpc_ykW_Delete(void* param_0) {
    // NONMATCHING
}

/* 80B667B4-80B667D4 007994 0020+00 1/0 0/0 0/0 .text            daNpc_ykW_Execute__FPv */
static void daNpc_ykW_Execute(void* param_0) {
    // NONMATCHING
}

/* 80B667D4-80B667F4 0079B4 0020+00 1/0 0/0 0/0 .text            daNpc_ykW_Draw__FPv */
static void daNpc_ykW_Draw(void* param_0) {
    // NONMATCHING
}

/* 80B667F4-80B667FC 0079D4 0008+00 1/0 0/0 0/0 .text            daNpc_ykW_IsDelete__FPv */
static bool daNpc_ykW_IsDelete(void* param_0) {
    return true;
}

/* 80B667FC-80B6682C 0079DC 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80B6682C-80B66874 007A0C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B66874-80B66BFC 007A54 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B66BFC-80B66C38 007DDC 003C+00 4/4 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80B66C38-80B66C74 007E18 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80B66C74-80B66CBC 007E54 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B66CBC-80B66D04 007E9C 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80B66D04-80B66D40 007EE4 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B66D40-80B66D88 007F20 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80B66D88-80B66DD0 007F68 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80B66DD0-80B671D4 007FB0 0404+00 1/1 0/0 0/0 .text
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

/* 80B671D4-80B671D8 0083B4 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80B671D8-80B672D4 0083B8 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80B672D4-80B672D8 0084B4 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80B672D8-80B67320 0084B8 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80B67320-80B67390 008500 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80B67390-80B673EC 008570 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B673EC-80B6745C 0085CC 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80B6745C-80B674A4 00863C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80B674A4-80B675C0 008684 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80B675C0-80B677C8 0087A0 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80B677C8-80B6780C 0089A8 0044+00 1/1 0/0 0/0 .text getDstPos__13daNpcT_Path_cF4cXyzP4cXyz */
// void daNpcT_Path_c::getDstPos(cXyz param_0, cXyz* param_1) {
extern "C" void getDstPos__13daNpcT_Path_cF4cXyzP4cXyz() {
    // NONMATCHING
}

/* 80B6780C-80B67810 0089EC 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80B67810-80B67818 0089F0 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B67818-80B67820 0089F8 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B67820-80B67828 008A00 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80B67828-80B67830 008A08 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80B67830-80B67848 008A10 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B67848-80B6784C 008A28 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80B6784C-80B67850 008A2C 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80B67850-80B67858 008A30 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B67858-80B67860 008A38 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B67860-80B67890 008A40 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80B67890-80B678C0 008A70 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80B678C0-80B678C4 008AA0 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B678C4-80B678C8 008AA4 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B678C8-80B678CC 008AA8 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B678CC-80B678D0 008AAC 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B678D0-80B678EC 008AB0 001C+00 8/8 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80B678D0(void* _this, int* param_0) {
    // NONMATCHING
}

/* 80B678EC-80B67928 008ACC 003C+00 1/1 0/0 0/0 .text            cLib_getRndValue<f>__Fff */
extern "C" void func_80B678EC(void* _this, f32 param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B68D54-80B68D60 000E14 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_ykW_Param_c */
SECTION_DATA extern void* __vt__17daNpc_ykW_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_ykW_Param_cFv,
};

/* 80B67928-80B67A3C 008B08 0114+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_ykw_cpp */
void __sinit_d_a_npc_ykw_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80B67928, __sinit_d_a_npc_ykw_cpp);
#pragma pop

/* 80B67A3C-80B67B1C 008C1C 00E0+00 1/1 0/0 0/0 .text
 * __ct__11daNpc_ykW_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_ykW_c::daNpc_ykW_c(daNpcT_faceMotionAnmData_c const* param_0,
                             daNpcT_motionAnmData_c const* param_1,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
                             daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80B67B1C-80B67B24 008CFC 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__11daNpc_ykW_cFv */
u16 daNpc_ykW_c::getEyeballMaterialNo() {
    return 2;
}

/* 80B67B24-80B67B2C 008D04 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__11daNpc_ykW_cFv */
s32 daNpc_ykW_c::getHeadJointNo() {
    return 5;
}

/* 80B67B2C-80B67B34 008D0C 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__11daNpc_ykW_cFv */
s32 daNpc_ykW_c::getNeckJointNo() {
    return 4;
}

/* 80B67B34-80B67B3C 008D14 0008+00 1/0 0/0 0/0 .text            getBackboneJointNo__11daNpc_ykW_cFv
 */
bool daNpc_ykW_c::getBackboneJointNo() {
    return true;
}

/* 80B67B3C-80B67B4C 008D1C 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__11daNpc_ykW_cFi
 */
void daNpc_ykW_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80B67B4C-80B67B5C 008D2C 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__11daNpc_ykW_cFi
 */
void daNpc_ykW_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80B67B5C-80B67B64 008D3C 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__11daNpc_ykW_cFv */
s32 daNpc_ykW_c::getFootLJointNo() {
    return 13;
}

/* 80B67B64-80B67B6C 008D44 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__11daNpc_ykW_cFv */
s32 daNpc_ykW_c::getFootRJointNo() {
    return 16;
}

/* 80B67B6C-80B67BB4 008D4C 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_ykW_Param_cFv */
daNpc_ykW_Param_c::~daNpc_ykW_Param_c() {
    // NONMATCHING
}

/* 80B67BB4-80B67BBC 008D94 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80B67BB4() {
    // NONMATCHING
}

/* 80B67BBC-80B67BC4 008D9C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80B67BBC() {
    // NONMATCHING
}

/* 80B67BC4-80B67C24 008DA4 0060+00 2/2 0/0 0/0 .text chkPointInArea__15daTag_EvtArea_cF4cXyz */
// void daTag_EvtArea_c::chkPointInArea(cXyz param_0) {
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B68DD4-80B68DD8 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80B68DD4[4];
#pragma pop

/* 80B68DD8-80B68DDC 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80B68DD8[4];
#pragma pop

/* 80B68DDC-80B68DE0 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80B68DDC[4];
#pragma pop

/* 80B68DE0-80B68DE4 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80B68DE0[4];
#pragma pop

/* 80B68DE4-80B68DE8 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B68DE4[4];
#pragma pop

/* 80B68DE8-80B68DEC 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B68DE8[4];
#pragma pop

/* 80B68DEC-80B68DF0 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80B68DEC[4];
#pragma pop

/* 80B68DF0-80B68DF4 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80B68DF0[4];
#pragma pop

/* 80B68DF4-80B68DF8 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80B68DF4[4];
#pragma pop

/* 80B68DF8-80B68DFC 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80B68DF8[4];
#pragma pop

/* 80B68DFC-80B68E00 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80B68DFC[4];
#pragma pop

/* 80B68E00-80B68E04 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80B68E00[4];
#pragma pop

/* 80B68E04-80B68E08 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80B68E04[4];
#pragma pop

/* 80B68E08-80B68E0C 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B68E08[4];
#pragma pop

/* 80B68E0C-80B68E10 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80B68E0C[4];
#pragma pop

/* 80B68E10-80B68E14 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80B68E10[4];
#pragma pop

/* 80B68E14-80B68E18 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80B68E14[4];
#pragma pop

/* 80B68E18-80B68E1C 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80B68E18[4];
#pragma pop

/* 80B68E1C-80B68E20 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80B68E1C[4];
#pragma pop

/* 80B68E20-80B68E24 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80B68E20[4];
#pragma pop

/* 80B68E24-80B68E28 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80B68E24[4];
#pragma pop

/* 80B68E28-80B68E2C 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B68E28[4];
#pragma pop

/* 80B68E2C-80B68E30 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B68E2C[4];
#pragma pop

/* 80B68E30-80B68E34 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B68E30[4];
#pragma pop

/* 80B68E34-80B68E38 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80B68E34[4];
#pragma pop

/* 80B67E68-80B67E68 000230 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
