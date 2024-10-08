/**
 * @file d_a_npc_ykm.cpp
 * 
*/

#include "d/actor/d_a_npc_ykm.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__11daNpc_ykM_cFv();
extern "C" void create__11daNpc_ykM_cFv();
extern "C" void CreateHeap__11daNpc_ykM_cFv();
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
extern "C" void Delete__11daNpc_ykM_cFv();
extern "C" void Execute__11daNpc_ykM_cFv();
extern "C" void Draw__11daNpc_ykM_cFv();
extern "C" void createHeapCallBack__11daNpc_ykM_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_ykM_cFP8J3DJointi();
extern "C" void srchGadget__11daNpc_ykM_cFPvPv();
extern "C" void getTomatoPureeP__11daNpc_ykM_cFv();
extern "C" void getCheeseP__11daNpc_ykM_cFv();
extern "C" void srchYkm__11daNpc_ykM_cFPvPv();
extern "C" void getOtherYkmP__11daNpc_ykM_cFi();
extern "C" void srchYkw__11daNpc_ykM_cFPvPv();
extern "C" void getOtherYkwP__11daNpc_ykM_cFi();
extern "C" void getType__11daNpc_ykM_cFv();
extern "C" void isDelete__11daNpc_ykM_cFv();
extern "C" void reset__11daNpc_ykM_cFv();
extern "C" void afterJntAnm__11daNpc_ykM_cFi();
extern "C" void setParam__11daNpc_ykM_cFv();
extern "C" void getDistTable__12dAttention_cFi();
extern "C" void checkChangeEvt__11daNpc_ykM_cFv();
extern "C" void setAfterTalkMotion__11daNpc_ykM_cFv();
extern "C" void srchActors__11daNpc_ykM_cFv();
extern "C" void evtTalk__11daNpc_ykM_cFv();
extern "C" void evtCutProc__11daNpc_ykM_cFv();
extern "C" void action__11daNpc_ykM_cFv();
extern "C" void beforeMove__11daNpc_ykM_cFv();
extern "C" void afterMoved__11daNpc_ykM_cFv();
extern "C" void setAttnPos__11daNpc_ykM_cFv();
extern "C" void setCollision__11daNpc_ykM_cFv();
extern "C" bool drawDbgInfo__11daNpc_ykM_cFv();
extern "C" void drawOtherMdl__11daNpc_ykM_cFv();
extern "C" void setFishAnm__11daNpc_ykM_cFiif();
extern "C" void setLeafAnm__11daNpc_ykM_cFif();
extern "C" void afterSetMotionAnm__11daNpc_ykM_cFiifi();
extern "C" void selectAction__11daNpc_ykM_cFv();
extern "C" void chkAction__11daNpc_ykM_cFM11daNpc_ykM_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_ykM_cFM11daNpc_ykM_cFPCvPvPv_i();
extern "C" void chkContinueAttnPlayer__11daNpc_ykM_cFv();
extern "C" void chkTouchPlayer__11daNpc_ykM_cFv();
extern "C" void cutSlideDown__11daNpc_ykM_cFi();
extern "C" void cutMeetingAgain__11daNpc_ykM_cFi();
extern "C" void cutGetTomatoPuree__11daNpc_ykM_cFi();
extern "C" void cutGetTaste__11daNpc_ykM_cFi();
extern "C" void cutLv5DungeonClear__11daNpc_ykM_cFi();
extern "C" void cutFindWolf__11daNpc_ykM_cFi();
extern "C" void cutStartSnowboardRace__11daNpc_ykM_cFi();
extern "C" void cutEndSnowboardRace__11daNpc_ykM_cFi();
extern "C" void cutHug__11daNpc_ykM_cFi();
extern "C" void setDialogueMotion__11daNpc_ykM_cFv();
extern "C" void dialogue__11daNpc_ykM_cFv();
extern "C" void wait__11daNpc_ykM_cFPv();
extern "C" void cook__11daNpc_ykM_cFPv();
extern "C" void race__11daNpc_ykM_cFPv();
extern "C" void talk__11daNpc_ykM_cFPv();
extern "C" static void daNpc_ykM_Create__FPv();
extern "C" static void daNpc_ykM_Delete__FPv();
extern "C" static void daNpc_ykM_Execute__FPv();
extern "C" static void daNpc_ykM_Draw__FPv();
extern "C" static bool daNpc_ykM_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__8daNpcT_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__13daNpcT_Path_cFv();
extern "C" void __ct__18daNpcT_ActorMngr_cFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
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
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_80B5D378(void* _this, int*);
extern "C" void func_80B5D394(void* _this, int, int);
extern "C" void __sinit_d_a_npc_ykm_cpp();
extern "C" void
__ct__11daNpc_ykM_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" s32 getEyeballMaterialNo__11daNpc_ykM_cFv();
extern "C" s32 getHeadJointNo__11daNpc_ykM_cFv();
extern "C" s32 getNeckJointNo__11daNpc_ykM_cFv();
extern "C" bool getBackboneJointNo__11daNpc_ykM_cFv();
extern "C" void checkChangeJoint__11daNpc_ykM_cFi();
extern "C" void checkRemoveJoint__11daNpc_ykM_cFi();
extern "C" void __dt__17daNpc_ykM_Param_cFv();
extern "C" static void func_80B5D710();
extern "C" static void func_80B5D718();
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz();
extern "C" u8 const m__17daNpc_ykM_Param_c[200];
extern "C" extern char const* const d_a_npc_ykm__stringBase0;
extern "C" void* mCutNameList__11daNpc_ykM_c[10];
extern "C" u8 mCutList__11daNpc_ykM_c[120];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
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
extern "C" void fopAcM_getPolygonAngle__FRC13cBgS_PolyInfos();
extern "C" void fpcEx_SearchByID__FUi();
extern "C" void fpcEx_IsExist__FUi();
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
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
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
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void StartShock__12dVibration_cFii4cXyz();
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
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void checkItemGet__FUci();
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
extern "C" void chkPassed1__13daNpcT_Path_cF4cXyzi();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz();
extern "C" void calcJntRad__15daNpcT_JntAnm_cFfff();
extern "C" void setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs();
extern "C" void calc__19daNpcT_DmgStagger_cFi();
extern "C" void tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void getTrnsfrmKeyAnmP__8daNpcT_cFPCci();
extern "C" void loadRes__8daNpcT_cFPCScPPCc();
extern "C" void deleteRes__8daNpcT_cFPCScPPCc();
extern "C" void execute__8daNpcT_cFv();
extern "C" void draw__8daNpcT_cFiifP11_GXColorS10fiii();
extern "C" void setEnvTevColor__8daNpcT_cFv();
extern "C" void setRoomNo__8daNpcT_cFv();
extern "C" void ctrlBtk__8daNpcT_cFv();
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
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void getEvtAreaTagP__8daNpcT_cFii();
extern "C" void daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz();
extern "C" void daNpcT_judgeRace__FP5dPathPP10fopAc_ac_cP16daNpcT_pntData_ciPi();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_onTmpBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void setMeterString__13dMeter2Info_cFl();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void isStart__8dTimer_cFv();
extern "C" void dTimer_createTimer__FlUlUcUcffff();
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
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void bgmStreamStop__8Z2SeqMgrFUl();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void hide__13J3DShapeTableFv();
extern "C" void show__13J3DShapeTableFv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void getTexNo__16J3DAnmTexPatternCFUsPUs();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void __cvt_fp2unsigned();
extern "C" void _savegpr_17();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_17();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" u8 dist_table__12dAttention_c[6552];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcT_c[68];
extern "C" u8 mCcDSph__8daNpcT_c[64];
extern "C" extern void* __vt__8daNpcT_c[49];
extern "C" extern void* __vt__15daNpcT_MatAnm_c[4 + 1 /* padding */];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mFindActorPtrs__8daNpcT_c[200];
extern "C" extern u8 g_meter2_info[248];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mFindCount__8daNpcT_c[4];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz();
extern "C" void __register_global_object();
extern "C" void getType__11daNpc_ykW_cFv();

//
// Declarations:
//

/* ############################################################################################## */
/* 80B5DA40-80B5DA40 0002AC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B5DA40 = "";
SECTION_DEAD static char const* const stringBase_80B5DA41 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80B5DA4D = "SLIDEDOWN";
SECTION_DEAD static char const* const stringBase_80B5DA57 = "MEETING_AGAIN";
SECTION_DEAD static char const* const stringBase_80B5DA65 = "GET_TOMATOPUREE";
SECTION_DEAD static char const* const stringBase_80B5DA75 = "GET_TASTE";
SECTION_DEAD static char const* const stringBase_80B5DA7F = "FIND_WOLF";
SECTION_DEAD static char const* const stringBase_80B5DA89 = "START_SNOWBOARDRACE";
SECTION_DEAD static char const* const stringBase_80B5DA9D = "END_SNOWBOARDRACE";
SECTION_DEAD static char const* const stringBase_80B5DAAF = "HUG";
SECTION_DEAD static char const* const stringBase_80B5DAB3 = "ykM";
SECTION_DEAD static char const* const stringBase_80B5DAB7 = "ykM1";
SECTION_DEAD static char const* const stringBase_80B5DABC = "ykM2";
SECTION_DEAD static char const* const stringBase_80B5DAC1 = "ykM3";
SECTION_DEAD static char const* const stringBase_80B5DAC6 = "LV5DUNGEON_CLEAR";
#pragma pop

/* 80B5DAE8-80B5DAF4 000000 000C+00 3/3 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B5DAF4-80B5DB08 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80B5DB08-80B5DB38 000020 0030+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[48] = {
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x04,
};

/* 80B5DB38-80B5DB88 -00001 0050+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[20] = {
    (void*)&d_a_npc_ykm__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0xD),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0x17),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0x25),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0x35),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0x3F),
    (void*)0x00000003,
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0x49),
    (void*)0x00000003,
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0x5D),
    (void*)0x00000003,
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0x6F),
    (void*)0x00000002,
};
#pragma pop

/* 80B5DB88-80B5DB9C -00001 0014+00 4/5 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[5] = {
    (void*)&d_a_npc_ykm__stringBase0,
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0x73),
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0x77),
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0x7C),
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0x81),
};

/* 80B5DB9C-80B5DBA0 0000B4 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u8 l_loadResPtrn0[3 + 1 /* padding */] = {
    0x01,
    0x02,
    0xFF,
    /* padding */
    0x00,
};

/* 80B5DBA0-80B5DBA4 0000B8 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u8 l_loadResPtrn1[3 + 1 /* padding */] = {
    0x01,
    0x03,
    0xFF,
    /* padding */
    0x00,
};

/* 80B5DBA4-80B5DBAC 0000BC 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn2 */
SECTION_DATA static u8 l_loadResPtrn2[5 + 3 /* padding */] = {
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

/* 80B5DBAC-80B5DBB4 0000C4 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn9 */
SECTION_DATA static u8 l_loadResPtrn9[5 + 3 /* padding */] = {
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

/* 80B5DBB4-80B5DBD4 -00001 0020+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[8] = {
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn2, (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn1, (void*)&l_loadResPtrn1, (void*)&l_loadResPtrn1, (void*)&l_loadResPtrn9,
};

/* 80B5DBD4-80B5DD94 0000EC 01C0+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[448] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x20,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80B5DD94-80B5E328 0002AC 0594+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[1428] = {
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80B5E328-80B5E428 000840 0100+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[256] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x09, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x08, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x01, 0x00, 0x0F, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B5E428-80B5E718 000940 02F0+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[752] = {
    0x00, 0x00, 0xF7, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x01, 0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0x00, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xF7, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x01, 0x00, 0x06, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x18, 0xFF, 0x01, 0x00, 0x14, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x19, 0xFF, 0x01, 0x00, 0x14, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1A, 0xFF, 0x01, 0x00, 0x1B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1C, 0xFF, 0x01, 0x00, 0x14, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1D, 0xFF, 0x01, 0x00, 0x14, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1E, 0xFF, 0x01, 0x00, 0x1F, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x2C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x2D, 0xFF, 0x01, 0x00, 0x2E, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x29, 0xFF, 0x01, 0x00, 0x2E, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x2E, 0xF7, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x2F, 0xFF, 0x01, 0x00, 0x30, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x30, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x32, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x20, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x21, 0x00, 0x01, 0x00, 0x22, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x23, 0x04, 0x01, 0x00, 0x20, 0x04, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x2A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x2B, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x31, 0xFF, 0x01, 0x00, 0x32, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x26, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x15, 0xFF, 0x01, 0x00, 0x16, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x17, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x24, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x25, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x27, 0xFF, 0x01, 0x00, 0x28, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B5E718-80B5E740 -00001 0028+00 1/1 0/0 0/0 .data            mCutNameList__11daNpc_ykM_c */
SECTION_DATA void* daNpc_ykM_c::mCutNameList[10] = {
    (void*)&d_a_npc_ykm__stringBase0,
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0xD),
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0x17),
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0x25),
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0x35),
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0x86),
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0x3F),
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0x49),
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0x5D),
    (void*)(((char*)&d_a_npc_ykm__stringBase0) + 0x6F),
};

/* 80B5E740-80B5E74C -00001 000C+00 0/1 0/0 0/0 .data            @3908 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3908[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutSlideDown__11daNpc_ykM_cFi,
};
#pragma pop

/* 80B5E74C-80B5E758 -00001 000C+00 0/1 0/0 0/0 .data            @3909 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3909[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutMeetingAgain__11daNpc_ykM_cFi,
};
#pragma pop

/* 80B5E758-80B5E764 -00001 000C+00 0/1 0/0 0/0 .data            @3910 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3910[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutGetTomatoPuree__11daNpc_ykM_cFi,
};
#pragma pop

/* 80B5E764-80B5E770 -00001 000C+00 0/1 0/0 0/0 .data            @3911 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3911[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutGetTaste__11daNpc_ykM_cFi,
};
#pragma pop

/* 80B5E770-80B5E77C -00001 000C+00 0/1 0/0 0/0 .data            @3912 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3912[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutLv5DungeonClear__11daNpc_ykM_cFi,
};
#pragma pop

/* 80B5E77C-80B5E788 -00001 000C+00 0/1 0/0 0/0 .data            @3913 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3913[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutFindWolf__11daNpc_ykM_cFi,
};
#pragma pop

/* 80B5E788-80B5E794 -00001 000C+00 0/1 0/0 0/0 .data            @3914 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3914[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutStartSnowboardRace__11daNpc_ykM_cFi,
};
#pragma pop

/* 80B5E794-80B5E7A0 -00001 000C+00 0/1 0/0 0/0 .data            @3915 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3915[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutEndSnowboardRace__11daNpc_ykM_cFi,
};
#pragma pop

/* 80B5E7A0-80B5E7AC -00001 000C+00 0/1 0/0 0/0 .data            @3916 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3916[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutHug__11daNpc_ykM_cFi,
};
#pragma pop

/* 80B5E7AC-80B5E824 000CC4 0078+00 1/2 0/0 0/0 .data            mCutList__11daNpc_ykM_c */
SECTION_DATA u8 daNpc_ykM_c::mCutList[120] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B5E824-80B5E840 -00001 001C+00 1/1 0/0 0/0 .data            @4838 */
SECTION_DATA static void* lit_4838[7] = {
    (void*)(((char*)getType__11daNpc_ykM_cFv) + 0x28),
    (void*)(((char*)getType__11daNpc_ykM_cFv) + 0x30),
    (void*)(((char*)getType__11daNpc_ykM_cFv) + 0x38),
    (void*)(((char*)getType__11daNpc_ykM_cFv) + 0x40),
    (void*)(((char*)getType__11daNpc_ykM_cFv) + 0x48),
    (void*)(((char*)getType__11daNpc_ykM_cFv) + 0x50),
    (void*)(((char*)getType__11daNpc_ykM_cFv) + 0x58),
};

/* 80B5E840-80B5E85C -00001 001C+00 1/1 0/0 0/0 .data            @4854 */
SECTION_DATA static void* lit_4854[7] = {
    (void*)(((char*)isDelete__11daNpc_ykM_cFv) + 0x30),
    (void*)(((char*)isDelete__11daNpc_ykM_cFv) + 0x38),
    (void*)(((char*)isDelete__11daNpc_ykM_cFv) + 0x50),
    (void*)(((char*)isDelete__11daNpc_ykM_cFv) + 0x5C),
    (void*)(((char*)isDelete__11daNpc_ykM_cFv) + 0x74),
    (void*)(((char*)isDelete__11daNpc_ykM_cFv) + 0x7C),
    (void*)(((char*)isDelete__11daNpc_ykM_cFv) + 0x84),
};

/* 80B5E85C-80B5E868 -00001 000C+00 1/1 0/0 0/0 .data            @5032 */
SECTION_DATA static void* lit_5032[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_ykM_cFPv,
};

/* 80B5E868-80B5E874 -00001 000C+00 1/1 0/0 0/0 .data            @5117 */
SECTION_DATA static void* lit_5117[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_ykM_cFPv,
};

/* 80B5E874-80B5E880 -00001 000C+00 1/1 0/0 0/0 .data            @5122 */
SECTION_DATA static void* lit_5122[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_ykM_cFPv,
};

/* 80B5E880-80B5EA18 000D98 0198+00 1/1 0/0 0/0 .data            fishAnmData$5818 */
SECTION_DATA static u8 fishAnmData[408] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x04, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
};

/* 80B5EA18-80B5EA3C 000F30 0024+00 1/1 0/0 0/0 .data            leafAnmData$5831 */
SECTION_DATA static u8 leafAnmData[36] = {
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
};

/* 80B5EA3C-80B5EA48 -00001 000C+00 0/1 0/0 0/0 .data            @5860 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5860[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cook__11daNpc_ykM_cFPv,
};
#pragma pop

/* 80B5EA48-80B5EA54 -00001 000C+00 0/1 0/0 0/0 .data            @5864 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5864[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)race__11daNpc_ykM_cFPv,
};
#pragma pop

/* 80B5EA54-80B5EA60 -00001 000C+00 0/1 0/0 0/0 .data            @5866 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5866[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_ykM_cFPv,
};
#pragma pop

/* 80B5EA60-80B5EA6C -00001 000C+00 0/1 0/0 0/0 .data            @5870 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5870[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)race__11daNpc_ykM_cFPv,
};
#pragma pop

/* 80B5EA6C-80B5EA78 -00001 000C+00 0/1 0/0 0/0 .data            @5872 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5872[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_ykM_cFPv,
};
#pragma pop

/* 80B5EA78-80B5EA84 -00001 000C+00 0/1 0/0 0/0 .data            @5874 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5874[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_ykM_cFPv,
};
#pragma pop

/* 80B5EA84-80B5EAA0 -00001 001C+00 1/1 0/0 0/0 .data            @6145 */
SECTION_DATA static void* lit_6145[7] = {
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x38C),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x3A4),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x3AC),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x428),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x568),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x6A4),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x704),
};

/* 80B5EAA0-80B5EABC -00001 001C+00 1/1 0/0 0/0 .data            @6144 */
SECTION_DATA static void* lit_6144[7] = {
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0xC0),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0xC8),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x230),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x248),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x2AC),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x2C0),
    (void*)(((char*)cutSlideDown__11daNpc_ykM_cFi) + 0x360),
};

/* 80B5EABC-80B5EAE0 -00001 0024+00 1/1 0/0 0/0 .data            @6555 */
SECTION_DATA static void* lit_6555[9] = {
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x34C),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x380),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x398),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x3E0),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x490),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x6A8),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x7A4),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x704),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x7D8),
};

/* 80B5EAE0-80B5EB04 -00001 0024+00 1/1 0/0 0/0 .data            @6554 */
SECTION_DATA static void* lit_6554[9] = {
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x138),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x198),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x1A0),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x1B4),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x1D0),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x230),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x28C),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x2A0),
    (void*)(((char*)cutGetTomatoPuree__11daNpc_ykM_cFi) + 0x30C),
};

/* 80B5EB04-80B5EB28 -00001 0024+00 1/1 0/0 0/0 .data            @6858 */
SECTION_DATA static void* lit_6858[9] = {
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x7D8),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x7D8),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x330),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x378),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x428),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x640),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x73C),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x69C),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x770),
};

/* 80B5EB28-80B5EB4C -00001 0024+00 1/1 0/0 0/0 .data            @6857 */
SECTION_DATA static void* lit_6857[9] = {
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x300),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x300),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x138),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x198),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x1B4),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x214),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x270),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x284),
    (void*)(((char*)cutGetTaste__11daNpc_ykM_cFi) + 0x2F0),
};

/* 80B5EB4C-80B5EB6C -00001 0020+00 1/0 0/0 0/0 .data            daNpc_ykM_MethodTable */
static actor_method_class daNpc_ykM_MethodTable = {
    (process_method_func)daNpc_ykM_Create__FPv,
    (process_method_func)daNpc_ykM_Delete__FPv,
    (process_method_func)daNpc_ykM_Execute__FPv,
    (process_method_func)daNpc_ykM_IsDelete__FPv,
    (process_method_func)daNpc_ykM_Draw__FPv,
};

/* 80B5EB6C-80B5EB9C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_YKM */
extern actor_process_profile_definition g_profile_NPC_YKM = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_YKM,             // mProcName
  &g_fpcLf_Method.mBase,    // sub_method
  sizeof(daNpc_ykM_c),      // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  380,                      // mPriority
  &daNpc_ykM_MethodTable,   // sub_method
  0x00040107,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80B5EB9C-80B5EBA8 0010B4 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80B5EBA8-80B5EBB4 0010C0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80B5EBB4-80B5EBC0 0010CC 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80B5EBC0-80B5EBE4 0010D8 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B5D718,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B5D710,
};

/* 80B5EBE4-80B5EBF0 0010FC 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80B5EBF0-80B5EBFC 001108 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80B5EBFC-80B5EC08 001114 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80B5EC08-80B5EC14 001120 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80B5EC14-80B5EC20 00112C 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80B5EC20-80B5EC2C 001138 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80B5EC2C-80B5EC38 001144 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B5EC38-80B5EC44 001150 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80B5EC44-80B5EC50 00115C 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80B5EC50-80B5ED14 001168 00C4+00 2/2 0/0 0/0 .data            __vt__11daNpc_ykM_c */
SECTION_DATA extern void* __vt__11daNpc_ykM_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_ykM_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__11daNpc_ykM_cFi,
    (void*)checkRemoveJoint__11daNpc_ykM_cFi,
    (void*)getBackboneJointNo__11daNpc_ykM_cFv,
    (void*)getNeckJointNo__11daNpc_ykM_cFv,
    (void*)getHeadJointNo__11daNpc_ykM_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__11daNpc_ykM_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__11daNpc_ykM_cFi,
    (void*)setParam__11daNpc_ykM_cFv,
    (void*)checkChangeEvt__11daNpc_ykM_cFv,
    (void*)evtTalk__11daNpc_ykM_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__11daNpc_ykM_cFv,
    (void*)setAfterTalkMotion__11daNpc_ykM_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__11daNpc_ykM_cFv,
    (void*)beforeMove__11daNpc_ykM_cFv,
    (void*)afterMoved__11daNpc_ykM_cFv,
    (void*)setAttnPos__11daNpc_ykM_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__11daNpc_ykM_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__11daNpc_ykM_cFv,
    (void*)drawOtherMdl__11daNpc_ykM_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__11daNpc_ykM_cFiifi,
    (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__8daNpcT_cFPiPi,
    (void*)changeBck__8daNpcT_cFPiPi,
    (void*)changeBtp__8daNpcT_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
};

/* 80B534EC-80B53698 0000EC 01AC+00 1/0 0/0 0/0 .text            __dt__11daNpc_ykM_cFv */
daNpc_ykM_c::~daNpc_ykM_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5D794-80B5D85C 000000 00C8+00 23/23 0/0 0/0 .rodata          m__17daNpc_ykM_Param_c */
SECTION_RODATA u8 const daNpc_ykM_Param_c::m[200] = {
    0x43, 0xFA, 0x00, 0x00, 0xC0, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x44, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x2A, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0x42, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xC1, 0x70, 0x00, 0x00, 0x41, 0xC8, 0x00, 0x00, 0xC1, 0xC8, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x70, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0xC1, 0xA0, 0x00, 0x00,
    0x3F, 0x4C, 0xCC, 0xCD, 0x41, 0x40, 0x00, 0x00, 0x00, 0x07, 0x00, 0x06, 0x00, 0x09, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00,
    0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0x41, 0x90, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
    0x40, 0x40, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00, 0x42, 0x60, 0x00, 0x00,
    0x3F, 0x4C, 0xCC, 0xCD, 0x42, 0x50, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x41, 0xE0, 0x00, 0x00,
    0x00, 0x01, 0x00, 0x05, 0x3F, 0x19, 0x99, 0x9A,
};
COMPILER_STRIP_GATE(0x80B5D794, &daNpc_ykM_Param_c::m);

/* 80B5D85C-80B5D87C 0000C8 0020+00 0/1 0/0 0/0 .rodata          heapSize$4109 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[32] = {
    0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x54, 0x60, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x44, 0x60,
    0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x80, 0x00,
};
COMPILER_STRIP_GATE(0x80B5D85C, &heapSize);
#pragma pop

/* 80B5D87C-80B5D880 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4189 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4189 = -400.0f;
COMPILER_STRIP_GATE(0x80B5D87C, &lit_4189);
#pragma pop

/* 80B5D880-80B5D884 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4190 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4190 = -100.0f;
COMPILER_STRIP_GATE(0x80B5D880, &lit_4190);
#pragma pop

/* 80B5D884-80B5D888 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4191 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4191 = -500.0f;
COMPILER_STRIP_GATE(0x80B5D884, &lit_4191);
#pragma pop

/* 80B5D888-80B5D88C 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4192 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4192 = 400.0f;
COMPILER_STRIP_GATE(0x80B5D888, &lit_4192);
#pragma pop

/* 80B5D88C-80B5D890 0000F8 0004+00 0/2 0/0 0/0 .rodata          @4193 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4193 = 600.0f;
COMPILER_STRIP_GATE(0x80B5D88C, &lit_4193);
#pragma pop

/* 80B5D890-80B5D894 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4194 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4194 = 500.0f;
COMPILER_STRIP_GATE(0x80B5D890, &lit_4194);
#pragma pop

/* 80B5D894-80B5D898 000100 0004+00 0/2 0/0 0/0 .rodata          @4195 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4195 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80B5D894, &lit_4195);
#pragma pop

/* 80B53698-80B53990 000298 02F8+00 1/1 0/0 0/0 .text            create__11daNpc_ykM_cFv */
void daNpc_ykM_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5D898-80B5D89C 000104 0004+00 5/25 0/0 0/0 .rodata          @4392 */
SECTION_RODATA static u8 const lit_4392[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B5D898, &lit_4392);

/* 80B5D89C-80B5D8A0 000108 0004+00 0/2 0/0 0/0 .rodata          @4393 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4393 = 65536.0f;
COMPILER_STRIP_GATE(0x80B5D89C, &lit_4393);
#pragma pop

/* 80B5D8A0-80B5D8A4 00010C 0004+00 0/3 0/0 0/0 .rodata          @4394 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4394 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B5D8A0, &lit_4394);
#pragma pop

/* 80B5D8A4-80B5D8B0 000110 000C+00 0/1 0/0 0/0 .rodata          bmdTypeList$4504 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const bmdTypeList[12] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
};
COMPILER_STRIP_GATE(0x80B5D8A4, &bmdTypeList);
#pragma pop

/* 80B5D8B0-80B5D8B4 00011C 0004+00 1/8 0/0 0/0 .rodata          @4613 */
SECTION_RODATA static f32 const lit_4613 = 1.0f;
COMPILER_STRIP_GATE(0x80B5D8B0, &lit_4613);

/* 80B53990-80B53F00 000590 0570+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_ykM_cFv */
void daNpc_ykM_c::CreateHeap() {
    // NONMATCHING
}

/* 80B53F00-80B53F3C 000B00 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80B53F3C-80B53F54 000B3C 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80B53F54-80B53F90 000B54 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80B53F90-80B53FA8 000B90 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80B53FA8-80B53FF0 000BA8 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80B53FF0-80B54014 000BF0 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80B54014-80B54050 000C14 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80B54050-80B54068 000C50 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80B54068-80B540A4 000C68 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80B540A4-80B540BC 000CA4 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80B540BC-80B540F0 000CBC 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_ykM_cFv */
void daNpc_ykM_c::Delete() {
    // NONMATCHING
}

/* 80B540F0-80B54110 000CF0 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_ykM_cFv */
void daNpc_ykM_c::Execute() {
    // NONMATCHING
}

/* 80B54110-80B541F8 000D10 00E8+00 1/1 0/0 0/0 .text            Draw__11daNpc_ykM_cFv */
void daNpc_ykM_c::Draw() {
    // NONMATCHING
}

/* 80B541F8-80B54218 000DF8 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_ykM_cFP10fopAc_ac_c              */
void daNpc_ykM_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80B54218-80B54270 000E18 0058+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpc_ykM_cFP8J3DJointi
 */
void daNpc_ykM_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80B54270-80B5430C 000E70 009C+00 2/2 0/0 0/0 .text            srchGadget__11daNpc_ykM_cFPvPv */
void daNpc_ykM_c::srchGadget(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5D8B4-80B5D8B8 000120 0004+00 4/4 0/0 0/0 .rodata          @4737 */
SECTION_RODATA static f32 const lit_4737 = 1000000000.0f;
COMPILER_STRIP_GATE(0x80B5D8B4, &lit_4737);

/* 80B5430C-80B543DC 000F0C 00D0+00 1/1 0/0 0/0 .text            getTomatoPureeP__11daNpc_ykM_cFv */
void daNpc_ykM_c::getTomatoPureeP() {
    // NONMATCHING
}

/* 80B543DC-80B544B0 000FDC 00D4+00 1/1 0/0 0/0 .text            getCheeseP__11daNpc_ykM_cFv */
void daNpc_ykM_c::getCheeseP() {
    // NONMATCHING
}

/* 80B544B0-80B5454C 0010B0 009C+00 1/1 0/0 0/0 .text            srchYkm__11daNpc_ykM_cFPvPv */
void daNpc_ykM_c::srchYkm(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80B5454C-80B54628 00114C 00DC+00 4/4 0/0 0/0 .text            getOtherYkmP__11daNpc_ykM_cFi */
void daNpc_ykM_c::getOtherYkmP(int param_0) {
    // NONMATCHING
}

/* 80B54628-80B546C4 001228 009C+00 1/1 0/0 0/0 .text            srchYkw__11daNpc_ykM_cFPvPv */
void daNpc_ykM_c::srchYkw(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80B546C4-80B547A0 0012C4 00DC+00 1/1 0/0 0/0 .text            getOtherYkwP__11daNpc_ykM_cFi */
void daNpc_ykM_c::getOtherYkwP(int param_0) {
    // NONMATCHING
}

/* 80B547A0-80B54808 0013A0 0068+00 3/2 0/0 1/1 .text            getType__11daNpc_ykM_cFv */
void daNpc_ykM_c::getType() {
    // NONMATCHING
}

/* 80B54808-80B548A8 001408 00A0+00 2/1 0/0 0/0 .text            isDelete__11daNpc_ykM_cFv */
void daNpc_ykM_c::isDelete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5D8B8-80B5D8BC 000124 0004+00 0/1 0/0 0/0 .rodata          @4914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4914 = -20.0f;
COMPILER_STRIP_GATE(0x80B5D8B8, &lit_4914);
#pragma pop

/* 80B548A8-80B54B44 0014A8 029C+00 1/1 0/0 0/0 .text            reset__11daNpc_ykM_cFv */
void daNpc_ykM_c::reset() {
    // NONMATCHING
}

/* 80B54B44-80B54BD0 001744 008C+00 1/0 0/0 0/0 .text            afterJntAnm__11daNpc_ykM_cFi */
void daNpc_ykM_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5D8BC-80B5D8C0 000128 0004+00 0/1 0/0 0/0 .rodata          @5022 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5022 = 350.0f;
COMPILER_STRIP_GATE(0x80B5D8BC, &lit_5022);
#pragma pop

/* 80B5D8C0-80B5D8C4 00012C 0004+00 0/1 0/0 0/0 .rodata          @5023 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5023 = 800.0f;
COMPILER_STRIP_GATE(0x80B5D8C0, &lit_5023);
#pragma pop

/* 80B5D8C4-80B5D8C8 000130 0004+00 0/1 0/0 0/0 .rodata          @5024 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5024 = 900.0f;
COMPILER_STRIP_GATE(0x80B5D8C4, &lit_5024);
#pragma pop

/* 80B5D8C8-80B5D8CC 000134 0004+00 0/1 0/0 0/0 .rodata          @5025 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5025 = 700.0f;
COMPILER_STRIP_GATE(0x80B5D8C8, &lit_5025);
#pragma pop

/* 80B5D8CC-80B5D8D0 000138 0004+00 0/1 0/0 0/0 .rodata          @5026 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5026 = 1800.0f;
COMPILER_STRIP_GATE(0x80B5D8CC, &lit_5026);
#pragma pop

/* 80B54BD0-80B54E48 0017D0 0278+00 1/0 0/0 0/0 .text            setParam__11daNpc_ykM_cFv */
void daNpc_ykM_c::setParam() {
    // NONMATCHING
}

/* 80B54E48-80B54E5C 001A48 0014+00 1/1 0/0 0/0 .text            getDistTable__12dAttention_cFi */
// void dAttention_c::getDistTable(int param_0) {
extern "C" void getDistTable__12dAttention_cFi() {
    // NONMATCHING
}

/* 80B54E5C-80B55004 001A5C 01A8+00 1/0 0/0 0/0 .text            checkChangeEvt__11daNpc_ykM_cFv */
void daNpc_ykM_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5D8D0-80B5D8D4 00013C 0004+00 1/11 0/0 0/0 .rodata          @5084 */
SECTION_RODATA static f32 const lit_5084 = -1.0f;
COMPILER_STRIP_GATE(0x80B5D8D0, &lit_5084);

/* 80B55004-80B550A4 001C04 00A0+00 1/0 0/0 0/0 .text            setAfterTalkMotion__11daNpc_ykM_cFv
 */
void daNpc_ykM_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80B550A4-80B55254 001CA4 01B0+00 1/1 0/0 0/0 .text            srchActors__11daNpc_ykM_cFv */
void daNpc_ykM_c::srchActors() {
    // NONMATCHING
}

/* 80B55254-80B552F4 001E54 00A0+00 1/0 0/0 0/0 .text            evtTalk__11daNpc_ykM_cFv */
void daNpc_ykM_c::evtTalk() {
    // NONMATCHING
}

/* 80B552F4-80B553BC 001EF4 00C8+00 1/0 0/0 0/0 .text            evtCutProc__11daNpc_ykM_cFv */
void daNpc_ykM_c::evtCutProc() {
    // NONMATCHING
}

/* 80B553BC-80B55658 001FBC 029C+00 1/0 0/0 0/0 .text            action__11daNpc_ykM_cFv */
void daNpc_ykM_c::action() {
    // NONMATCHING
}

/* 80B55658-80B5571C 002258 00C4+00 1/0 0/0 0/0 .text            beforeMove__11daNpc_ykM_cFv */
void daNpc_ykM_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5D8D4-80B5D8D8 000140 0004+00 0/2 0/0 0/0 .rodata          @5319 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5319 = 3.0f;
COMPILER_STRIP_GATE(0x80B5D8D4, &lit_5319);
#pragma pop

/* 80B5D8D8-80B5D8DC 000144 0004+00 0/2 0/0 0/0 .rodata          @5320 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5320 = 30.0f;
COMPILER_STRIP_GATE(0x80B5D8D8, &lit_5320);
#pragma pop

/* 80B5D8DC-80B5D8E0 000148 0004+00 0/1 0/0 0/0 .rodata          @5321 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5321 = 2.0f;
COMPILER_STRIP_GATE(0x80B5D8DC, &lit_5321);
#pragma pop

/* 80B5D8E0-80B5D8E4 00014C 0004+00 0/2 0/0 0/0 .rodata          @5322 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5322 = 4.0f;
COMPILER_STRIP_GATE(0x80B5D8E0, &lit_5322);
#pragma pop

/* 80B5D8E4-80B5D8E8 000150 0004+00 0/1 0/0 0/0 .rodata          @5323 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5323 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B5D8E4, &lit_5323);
#pragma pop

/* 80B5D8E8-80B5D8EC 000154 0004+00 0/1 0/0 0/0 .rodata          @5324 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5324 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B5D8E8, &lit_5324);
#pragma pop

/* 80B5D8EC-80B5D8F0 000158 0004+00 0/2 0/0 0/0 .rodata          @5325 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5325 = 50.0f;
COMPILER_STRIP_GATE(0x80B5D8EC, &lit_5325);
#pragma pop

/* 80B5D8F0-80B5D8F4 00015C 0004+00 0/1 0/0 0/0 .rodata          @5326 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5326 = 205.0f;
COMPILER_STRIP_GATE(0x80B5D8F0, &lit_5326);
#pragma pop

/* 80B5D8F4-80B5D8FC 000160 0008+00 0/3 0/0 0/0 .rodata          @5327 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5327[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B5D8F4, &lit_5327);
#pragma pop

/* 80B5D8FC-80B5D904 000168 0008+00 0/3 0/0 0/0 .rodata          @5328 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5328[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B5D8FC, &lit_5328);
#pragma pop

/* 80B5D904-80B5D90C 000170 0008+00 0/3 0/0 0/0 .rodata          @5329 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5329[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B5D904, &lit_5329);
#pragma pop

/* 80B5D90C-80B5D910 000178 0004+00 0/1 0/0 0/0 .rodata          @5330 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5330 = 0x358637BD;
COMPILER_STRIP_GATE(0x80B5D90C, &lit_5330);
#pragma pop

/* 80B5571C-80B55A64 00231C 0348+00 1/0 0/0 0/0 .text            afterMoved__11daNpc_ykM_cFv */
void daNpc_ykM_c::afterMoved() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5D910-80B5D914 00017C 0004+00 0/2 0/0 0/0 .rodata          @5510 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5510 = 80.0f;
COMPILER_STRIP_GATE(0x80B5D910, &lit_5510);
#pragma pop

/* 80B5D914-80B5D918 000180 0004+00 0/1 0/0 0/0 .rodata          @5511 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5511 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80B5D914, &lit_5511);
#pragma pop

/* 80B5D918-80B5D91C 000184 0004+00 0/2 0/0 0/0 .rodata          @5512 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5512 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80B5D918, &lit_5512);
#pragma pop

/* 80B5D91C-80B5D920 000188 0004+00 0/1 0/0 0/0 .rodata          @5513 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5513 = 55.0f;
COMPILER_STRIP_GATE(0x80B5D91C, &lit_5513);
#pragma pop

/* 80B5D920-80B5D924 00018C 0004+00 0/1 0/0 0/0 .rodata          @5514 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5514 = 440.0f;
COMPILER_STRIP_GATE(0x80B5D920, &lit_5514);
#pragma pop

/* 80B5D924-80B5D92C 000190 0004+04 0/1 0/0 0/0 .rodata          @5515 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5515[1 + 1 /* padding */] = {
    480.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80B5D924, &lit_5515);
#pragma pop

/* 80B5D92C-80B5D934 000198 0008+00 2/5 0/0 0/0 .rodata          @5517 */
SECTION_RODATA static u8 const lit_5517[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B5D92C, &lit_5517);

/* 80B55A64-80B560B4 002664 0650+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_ykM_cFv */
void daNpc_ykM_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5D934-80B5D944 0001A0 0010+00 0/1 0/0 0/0 .rodata          @5599 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5599[16] = {
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x1D,
};
COMPILER_STRIP_GATE(0x80B5D934, &lit_5599);
#pragma pop

/* 80B5D944-80B5D954 0001B0 0010+00 0/1 0/0 0/0 .rodata          @5600 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5600[16] = {
    0x43, 0x0C, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00, 0x43, 0x0C, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B5D944, &lit_5600);
#pragma pop

/* 80B5D954-80B5D958 0001C0 0004+00 0/1 0/0 0/0 .rodata          @5701 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5701 = 170.0f;
COMPILER_STRIP_GATE(0x80B5D954, &lit_5701);
#pragma pop

/* 80B560B4-80B5641C 002CB4 0368+00 1/0 0/0 0/0 .text            setCollision__11daNpc_ykM_cFv */
void daNpc_ykM_c::setCollision() {
    // NONMATCHING
}

/* 80B5641C-80B56424 00301C 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_ykM_cFv */
bool daNpc_ykM_c::drawDbgInfo() {
    return false;
}

/* ############################################################################################## */
/* 80B5D958-80B5D964 0001C4 000C+00 1/1 0/0 0/0 .rodata          jointNo$5709 */
SECTION_RODATA static u8 const jointNo[12] = {
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x14,
};
COMPILER_STRIP_GATE(0x80B5D958, &jointNo);

/* 80B56424-80B56624 003024 0200+00 1/0 0/0 0/0 .text            drawOtherMdl__11daNpc_ykM_cFv */
void daNpc_ykM_c::drawOtherMdl() {
    // NONMATCHING
}

/* 80B56624-80B566E8 003224 00C4+00 1/1 0/0 0/0 .text            setFishAnm__11daNpc_ykM_cFiif */
void daNpc_ykM_c::setFishAnm(int param_0, int param_1, f32 param_2) {
    // NONMATCHING
}

/* 80B566E8-80B567B4 0032E8 00CC+00 2/2 0/0 0/0 .text            setLeafAnm__11daNpc_ykM_cFif */
void daNpc_ykM_c::setLeafAnm(int param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5D964-80B5D968 0001D0 0004+00 1/1 0/0 0/0 .rodata          @5854 */
SECTION_RODATA static f32 const lit_5854 = 15.0f;
COMPILER_STRIP_GATE(0x80B5D964, &lit_5854);

/* 80B567B4-80B5680C 0033B4 0058+00 1/0 0/0 0/0 .text afterSetMotionAnm__11daNpc_ykM_cFiifi */
void daNpc_ykM_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    // NONMATCHING
}

/* 80B5680C-80B56954 00340C 0148+00 1/1 0/0 0/0 .text            selectAction__11daNpc_ykM_cFv */
void daNpc_ykM_c::selectAction() {
    // NONMATCHING
}

/* 80B56954-80B56980 003554 002C+00 2/2 0/0 0/0 .text
 * chkAction__11daNpc_ykM_cFM11daNpc_ykM_cFPCvPvPv_i            */
void daNpc_ykM_c::chkAction(int (daNpc_ykM_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80B56980-80B56A28 003580 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_ykM_cFM11daNpc_ykM_cFPCvPvPv_i            */
void daNpc_ykM_c::setAction(int (daNpc_ykM_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80B56A28-80B56AB4 003628 008C+00 2/2 0/0 0/0 .text chkContinueAttnPlayer__11daNpc_ykM_cFv */
void daNpc_ykM_c::chkContinueAttnPlayer() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5D968-80B5D96C 0001D4 0004+00 1/1 0/0 0/0 .rodata          @5936 */
SECTION_RODATA static f32 const lit_5936 = 20.0f;
COMPILER_STRIP_GATE(0x80B5D968, &lit_5936);

/* 80B56AB4-80B56B84 0036B4 00D0+00 1/1 0/0 0/0 .text            chkTouchPlayer__11daNpc_ykM_cFv */
void daNpc_ykM_c::chkTouchPlayer() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5DA40-80B5DA40 0002AC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B5DAD7 = "prm";
SECTION_DEAD static char const* const stringBase_80B5DADB = "timer";
#pragma pop

/* 80B56B84-80B572C8 003784 0744+00 3/0 0/0 0/0 .text            cutSlideDown__11daNpc_ykM_cFi */
void daNpc_ykM_c::cutSlideDown(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5D96C-80B5D974 0001D8 0008+00 0/0 0/0 0/0 .rodata          @5955 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5955[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B5D96C, &lit_5955);
#pragma pop

/* 80B5D974-80B5D978 0001E0 0004+00 0/0 0/0 0/0 .rodata          @6136 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6136 = -200.0f;
COMPILER_STRIP_GATE(0x80B5D974, &lit_6136);
#pragma pop

/* 80B5D978-80B5D97C 0001E4 0004+00 0/0 0/0 0/0 .rodata          @6137 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6137 = 65.0f;
COMPILER_STRIP_GATE(0x80B5D978, &lit_6137);
#pragma pop

/* 80B5D97C-80B5D980 0001E8 0004+00 0/0 0/0 0/0 .rodata          @6138 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6138 = 62.0f;
COMPILER_STRIP_GATE(0x80B5D97C, &lit_6138);
#pragma pop

/* 80B5D980-80B5D984 0001EC 0004+00 0/0 0/0 0/0 .rodata          @6139 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6139 = -14483.0f;
COMPILER_STRIP_GATE(0x80B5D980, &lit_6139);
#pragma pop

/* 80B5D984-80B5D988 0001F0 0004+00 0/0 0/0 0/0 .rodata          @6140 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6140 = 2023.0f;
COMPILER_STRIP_GATE(0x80B5D984, &lit_6140);
#pragma pop

/* 80B5D988-80B5D98C 0001F4 0004+00 0/0 0/0 0/0 .rodata          @6141 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6141 = -9768.0f;
COMPILER_STRIP_GATE(0x80B5D988, &lit_6141);
#pragma pop

/* 80B5D98C-80B5D990 0001F8 0004+00 0/0 0/0 0/0 .rodata          @6142 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6142 = 22.0f;
COMPILER_STRIP_GATE(0x80B5D98C, &lit_6142);
#pragma pop

/* 80B5D990-80B5D994 0001FC 0004+00 0/0 0/0 0/0 .rodata          @6143 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6143 = 27.0f;
COMPILER_STRIP_GATE(0x80B5D990, &lit_6143);
#pragma pop

/* 80B5D994-80B5D99C 000200 0008+00 0/0 0/0 0/0 .rodata          @6165 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6165[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B5D994, &lit_6165);
#pragma pop

/* 80B5D99C-80B5D9A0 000208 0004+00 0/1 0/0 0/0 .rodata          @6239 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6239 = 1000.0f;
COMPILER_STRIP_GATE(0x80B5D99C, &lit_6239);
#pragma pop

/* 80B5DA40-80B5DA40 0002AC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B5DAE1 = "msgNo";
#pragma pop

/* 80B572C8-80B57638 003EC8 0370+00 1/0 0/0 0/0 .text            cutMeetingAgain__11daNpc_ykM_cFi */
void daNpc_ykM_c::cutMeetingAgain(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5D9A0-80B5D9A8 00020C 0008+00 0/1 0/0 0/0 .rodata          @6262 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6262[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B5D9A0, &lit_6262);
#pragma pop

/* 80B5D9A8-80B5D9AC 000214 0004+00 0/3 0/0 0/0 .rodata          @6549 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6549 = 200.0f;
COMPILER_STRIP_GATE(0x80B5D9A8, &lit_6549);
#pragma pop

/* 80B5D9AC-80B5D9B0 000218 0004+00 0/3 0/0 0/0 .rodata          @6550 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6550 = 450.0f;
COMPILER_STRIP_GATE(0x80B5D9AC, &lit_6550);
#pragma pop

/* 80B57638-80B5806C 004238 0A34+00 3/0 0/0 0/0 .text            cutGetTomatoPuree__11daNpc_ykM_cFi
 */
void daNpc_ykM_c::cutGetTomatoPuree(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5D9B0-80B5D9B4 00021C 0004+00 0/1 0/0 0/0 .rodata          @6551 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6551 = 0x43360B61;
COMPILER_STRIP_GATE(0x80B5D9B0, &lit_6551);
#pragma pop

/* 80B5D9B4-80B5D9B8 000220 0004+00 0/0 0/0 0/0 .rodata          @6552 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6552 = 19.0f;
COMPILER_STRIP_GATE(0x80B5D9B4, &lit_6552);
#pragma pop

/* 80B5D9B8-80B5D9BC 000224 0004+00 0/0 0/0 0/0 .rodata          @6553 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6553 = 18.0f;
COMPILER_STRIP_GATE(0x80B5D9B8, &lit_6553);
#pragma pop

/* 80B5D9BC-80B5D9C4 000228 0008+00 0/1 0/0 0/0 .rodata          @6578 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6578[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B5D9BC, &lit_6578);
#pragma pop

/* 80B5806C-80B58A38 004C6C 09CC+00 3/0 0/0 0/0 .text            cutGetTaste__11daNpc_ykM_cFi */
void daNpc_ykM_c::cutGetTaste(int param_0) {
    // NONMATCHING
}

/* 80B58A38-80B59500 005638 0AC8+00 1/0 0/0 0/0 .text            cutLv5DungeonClear__11daNpc_ykM_cFi
 */
void daNpc_ykM_c::cutLv5DungeonClear(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5D9C4-80B5D9CC 000230 0008+00 0/0 0/0 0/0 .rodata          @6889 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6889[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B5D9C4, &lit_6889);
#pragma pop

/* 80B5D9CC-80B5D9D4 000238 0008+00 0/1 0/0 0/0 .rodata          @7183 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7183[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B5D9CC, &lit_7183);
#pragma pop

/* 80B59500-80B59748 006100 0248+00 1/0 0/0 0/0 .text            cutFindWolf__11daNpc_ykM_cFi */
void daNpc_ykM_c::cutFindWolf(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5D9D4-80B5D9DC 000240 0008+00 0/0 0/0 0/0 .rodata          @7190 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7190[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B5D9D4, &lit_7190);
#pragma pop

/* 80B5D9DC-80B5D9E0 000248 0004+00 0/1 0/0 0/0 .rodata          @7353 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7353 = -72610.0f;
COMPILER_STRIP_GATE(0x80B5D9DC, &lit_7353);
#pragma pop

/* 80B5D9E0-80B5D9E4 00024C 0004+00 0/1 0/0 0/0 .rodata          @7354 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7354 = -54260.0f;
COMPILER_STRIP_GATE(0x80B5D9E0, &lit_7354);
#pragma pop

/* 80B5D9E4-80B5D9E8 000250 0004+00 0/1 0/0 0/0 .rodata          @7355 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7355 = 56590.0f;
COMPILER_STRIP_GATE(0x80B5D9E4, &lit_7355);
#pragma pop

/* 80B5D9E8-80B5D9EC 000254 0004+00 0/1 0/0 0/0 .rodata          @7356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7356 = 210.0f;
COMPILER_STRIP_GATE(0x80B5D9E8, &lit_7356);
#pragma pop

/* 80B5D9EC-80B5D9F0 000258 0004+00 0/1 0/0 0/0 .rodata          @7357 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7357 = 410.0f;
COMPILER_STRIP_GATE(0x80B5D9EC, &lit_7357);
#pragma pop

/* 80B5D9F0-80B5D9F4 00025C 0004+00 0/1 0/0 0/0 .rodata          @7358 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7358 = 32.0f;
COMPILER_STRIP_GATE(0x80B5D9F0, &lit_7358);
#pragma pop

/* 80B5D9F4-80B5D9F8 000260 0004+00 0/1 0/0 0/0 .rodata          @7359 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7359 = 419.0f;
COMPILER_STRIP_GATE(0x80B5D9F4, &lit_7359);
#pragma pop

/* 80B59748-80B59B90 006348 0448+00 1/0 0/0 0/0 .text cutStartSnowboardRace__11daNpc_ykM_cFi */
void daNpc_ykM_c::cutStartSnowboardRace(int param_0) {
    // NONMATCHING
}

/* 80B59B90-80B5A0B8 006790 0528+00 1/0 0/0 0/0 .text cutEndSnowboardRace__11daNpc_ykM_cFi */
void daNpc_ykM_c::cutEndSnowboardRace(int param_0) {
    // NONMATCHING
}

/* 80B5A0B8-80B5A128 006CB8 0070+00 1/0 0/0 0/0 .text            cutHug__11daNpc_ykM_cFi */
void daNpc_ykM_c::cutHug(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5D9F8-80B5DA00 000264 0008+00 0/0 0/0 0/0 .rodata          @7385 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7385[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B5D9F8, &lit_7385);
#pragma pop

/* 80B5DA00-80B5DA10 00026C 0010+00 0/1 0/0 0/0 .rodata          motionTbl2$7522 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const motionTbl2[16] = {
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02,
};
COMPILER_STRIP_GATE(0x80B5DA00, &motionTbl2);
#pragma pop

/* 80B5DA10-80B5DA18 00027C 0008+00 0/1 0/0 0/0 .rodata          motionTbl1$7524 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const motionTbl1[8] = {
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0D,
};
COMPILER_STRIP_GATE(0x80B5DA10, &motionTbl1);
#pragma pop

/* 80B5DA18-80B5DA1C 000284 0004+00 0/3 0/0 0/0 .rodata          @7540 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7540 = 0.5f;
COMPILER_STRIP_GATE(0x80B5DA18, &lit_7540);
#pragma pop

/* 80B5A128-80B5A224 006D28 00FC+00 1/1 0/0 0/0 .text            setDialogueMotion__11daNpc_ykM_cFv
 */
void daNpc_ykM_c::setDialogueMotion() {
    // NONMATCHING
}

/* 80B5A224-80B5A3FC 006E24 01D8+00 1/1 0/0 0/0 .text            dialogue__11daNpc_ykM_cFv */
void daNpc_ykM_c::dialogue() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5DA1C-80B5DA20 000288 0004+00 0/1 0/0 0/0 .rodata          @7841 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7841 = -40.0f;
COMPILER_STRIP_GATE(0x80B5DA1C, &lit_7841);
#pragma pop

/* 80B5A3FC-80B5ABA8 006FFC 07AC+00 3/0 0/0 0/0 .text            wait__11daNpc_ykM_cFPv */
void daNpc_ykM_c::wait(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5DA20-80B5DA24 00028C 0004+00 0/1 0/0 0/0 .rodata          @8049 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8049 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B5DA20, &lit_8049);
#pragma pop

/* 80B5ABA8-80B5B260 0077A8 06B8+00 1/0 0/0 0/0 .text            cook__11daNpc_ykM_cFPv */
void daNpc_ykM_c::cook(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5DA24-80B5DA2C 000290 0008+00 0/1 0/0 0/0 .rodata          @8053 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_8053[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B5DA24, &lit_8053);
#pragma pop

/* 80B5DA2C-80B5DA30 000298 0004+00 0/1 0/0 0/0 .rodata          @8468 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8468 = 640000.0f;
COMPILER_STRIP_GATE(0x80B5DA2C, &lit_8468);
#pragma pop

/* 80B5DA30-80B5DA34 00029C 0004+00 0/1 0/0 0/0 .rodata          @8469 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8469 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80B5DA30, &lit_8469);
#pragma pop

/* 80B5DA34-80B5DA38 0002A0 0004+00 0/1 0/0 0/0 .rodata          @8470 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_8470 = 0x3BB40000;
COMPILER_STRIP_GATE(0x80B5DA34, &lit_8470);
#pragma pop

/* 80B5DA38-80B5DA3C 0002A4 0004+00 0/1 0/0 0/0 .rodata          @8471 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8471 = 24.0f;
COMPILER_STRIP_GATE(0x80B5DA38, &lit_8471);
#pragma pop

/* 80B5DA3C-80B5DA40 0002A8 0004+00 0/1 0/0 0/0 .rodata          @8472 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8472 = -4.0f;
COMPILER_STRIP_GATE(0x80B5DA3C, &lit_8472);
#pragma pop

/* 80B5B260-80B5BE08 007E60 0BA8+00 2/0 0/0 0/0 .text            race__11daNpc_ykM_cFPv */
void daNpc_ykM_c::race(void* param_0) {
    // NONMATCHING
}

/* 80B5BE08-80B5C0C4 008A08 02BC+00 3/0 0/0 0/0 .text            talk__11daNpc_ykM_cFPv */
void daNpc_ykM_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80B5C0C4-80B5C0E4 008CC4 0020+00 1/0 0/0 0/0 .text            daNpc_ykM_Create__FPv */
static void daNpc_ykM_Create(void* param_0) {
    // NONMATCHING
}

/* 80B5C0E4-80B5C104 008CE4 0020+00 1/0 0/0 0/0 .text            daNpc_ykM_Delete__FPv */
static void daNpc_ykM_Delete(void* param_0) {
    // NONMATCHING
}

/* 80B5C104-80B5C124 008D04 0020+00 1/0 0/0 0/0 .text            daNpc_ykM_Execute__FPv */
static void daNpc_ykM_Execute(void* param_0) {
    // NONMATCHING
}

/* 80B5C124-80B5C144 008D24 0020+00 1/0 0/0 0/0 .text            daNpc_ykM_Draw__FPv */
static void daNpc_ykM_Draw(void* param_0) {
    // NONMATCHING
}

/* 80B5C144-80B5C14C 008D44 0008+00 1/0 0/0 0/0 .text            daNpc_ykM_IsDelete__FPv */
static bool daNpc_ykM_IsDelete(void* param_0) {
    return true;
}

/* 80B5C14C-80B5C17C 008D4C 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80B5C17C-80B5C1C4 008D7C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B5C1C4-80B5C54C 008DC4 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B5C54C-80B5C588 00914C 003C+00 4/4 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80B5C588-80B5C5C4 009188 003C+00 3/3 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80B5C5C4-80B5C690 0091C4 00CC+00 2/2 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80B5C690-80B5C6D8 009290 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B5C6D8-80B5C720 0092D8 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80B5C720-80B5C75C 009320 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B5C75C-80B5C7E0 00935C 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80B5C7E0-80B5C828 0093E0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80B5C828-80B5C870 009428 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80B5C870-80B5C8B8 009470 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80B5C8B8-80B5CCBC 0094B8 0404+00 1/1 0/0 0/0 .text
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

/* 80B5CCBC-80B5CCC0 0098BC 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80B5CCC0-80B5CDBC 0098C0 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80B5CDBC-80B5CDC0 0099BC 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80B5CDC0-80B5CE08 0099C0 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80B5CE08-80B5CE78 009A08 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80B5CE78-80B5CED4 009A78 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B5CED4-80B5CF44 009AD4 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80B5CF44-80B5CF8C 009B44 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80B5CF8C-80B5D0A8 009B8C 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80B5D0A8-80B5D2B0 009CA8 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80B5D2B0-80B5D2B4 009EB0 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80B5D2B4-80B5D2BC 009EB4 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootLJointNo() {
    return -1;
}

/* 80B5D2BC-80B5D2C4 009EBC 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootRJointNo() {
    return -1;
}

/* 80B5D2C4-80B5D2CC 009EC4 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B5D2CC-80B5D2D4 009ECC 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B5D2D4-80B5D2DC 009ED4 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80B5D2DC-80B5D2E4 009EDC 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80B5D2E4-80B5D2FC 009EE4 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B5D2FC-80B5D300 009EFC 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80B5D300-80B5D308 009F00 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B5D308-80B5D338 009F08 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80B5D338-80B5D368 009F38 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80B5D368-80B5D36C 009F68 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B5D36C-80B5D370 009F6C 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B5D370-80B5D374 009F70 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B5D374-80B5D378 009F74 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B5D378-80B5D394 009F78 001C+00 10/10 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80B5D378(void* _this, int* param_0) {
    // NONMATCHING
}

/* 80B5D394-80B5D410 009F94 007C+00 2/2 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
extern "C" void func_80B5D394(void* _this, int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5ED14-80B5ED20 00122C 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_ykM_Param_c */
SECTION_DATA extern void* __vt__17daNpc_ykM_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_ykM_Param_cFv,
};

/* 80B5ED28-80B5ED2C 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80B5ED2C-80B5ED30 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80B5ED30-80B5ED34 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80B5ED34-80B5ED38 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80B5ED38-80B5ED3C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80B5ED3C-80B5ED40 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80B5ED40-80B5ED44 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80B5ED44-80B5ED48 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80B5ED48-80B5ED4C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80B5ED4C-80B5ED50 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80B5ED50-80B5ED54 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80B5ED54-80B5ED58 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80B5ED58-80B5ED5C 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80B5ED5C-80B5ED60 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80B5ED60-80B5ED64 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80B5ED64-80B5ED68 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 80B5ED68-80B5ED74 000048 000C+00 0/1 0/0 0/0 .bss             @3917 */
#pragma push
#pragma force_active on
static u8 lit_3917[12];
#pragma pop

/* 80B5ED74-80B5ED80 000054 000C+00 0/1 0/0 0/0 .bss             l_SBRaceStartPos */
#pragma push
#pragma force_active on
static u8 l_SBRaceStartPos[12];
#pragma pop

/* 80B5ED80-80B5ED8C 000060 000C+00 0/1 0/0 0/0 .bss             @3918 */
#pragma push
#pragma force_active on
static u8 lit_3918[12];
#pragma pop

/* 80B5ED8C-80B5ED94 00006C 0006+02 0/1 0/0 0/0 .bss             l_SBRaceStartAngle */
#pragma push
#pragma force_active on
static u8 l_SBRaceStartAngle[6 + 2 /* padding */];
#pragma pop

/* 80B5ED94-80B5EDA0 000074 000C+00 0/1 0/0 0/0 .bss             @3919 */
#pragma push
#pragma force_active on
static u8 lit_3919[12];
#pragma pop

/* 80B5EDA0-80B5EDA4 000080 0004+00 0/1 0/0 0/0 .bss             l_HIO */
#pragma push
#pragma force_active on
static u8 l_HIO[4];
#pragma pop

/* 80B5D410-80B5D588 00A010 0178+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_ykm_cpp */
void __sinit_d_a_npc_ykm_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80B5D410, __sinit_d_a_npc_ykm_cpp);
#pragma pop

/* 80B5D588-80B5D688 00A188 0100+00 1/1 0/0 0/0 .text
 * __ct__11daNpc_ykM_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_ykM_c::daNpc_ykM_c(daNpcT_faceMotionAnmData_c const* param_0,
                             daNpcT_motionAnmData_c const* param_1,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
                             daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80B5D688-80B5D690 00A288 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__11daNpc_ykM_cFv */
s32 daNpc_ykM_c::getEyeballMaterialNo() {
    return 2;
}

/* 80B5D690-80B5D698 00A290 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__11daNpc_ykM_cFv */
s32 daNpc_ykM_c::getHeadJointNo() {
    return 4;
}

/* 80B5D698-80B5D6A0 00A298 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__11daNpc_ykM_cFv */
s32 daNpc_ykM_c::getNeckJointNo() {
    return 3;
}

/* 80B5D6A0-80B5D6A8 00A2A0 0008+00 1/0 0/0 0/0 .text            getBackboneJointNo__11daNpc_ykM_cFv
 */
bool daNpc_ykM_c::getBackboneJointNo() {
    return true;
}

/* 80B5D6A8-80B5D6B8 00A2A8 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__11daNpc_ykM_cFi
 */
void daNpc_ykM_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80B5D6B8-80B5D6C8 00A2B8 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__11daNpc_ykM_cFi
 */
void daNpc_ykM_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80B5D6C8-80B5D710 00A2C8 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_ykM_Param_cFv */
daNpc_ykM_Param_c::~daNpc_ykM_Param_c() {
    // NONMATCHING
}

/* 80B5D710-80B5D718 00A310 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80B5D710() {
    // NONMATCHING
}

/* 80B5D718-80B5D720 00A318 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80B5D718() {
    // NONMATCHING
}

/* 80B5D720-80B5D780 00A320 0060+00 2/2 0/0 0/0 .text chkPointInArea__15daTag_EvtArea_cF4cXyz */
// void daTag_EvtArea_c::chkPointInArea(cXyz param_0) {
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5EDA4-80B5EDA8 000084 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80B5EDA4[4];
#pragma pop

/* 80B5EDA8-80B5EDAC 000088 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80B5EDA8[4];
#pragma pop

/* 80B5EDAC-80B5EDB0 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80B5EDAC[4];
#pragma pop

/* 80B5EDB0-80B5EDB4 000090 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80B5EDB0[4];
#pragma pop

/* 80B5EDB4-80B5EDB8 000094 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B5EDB4[4];
#pragma pop

/* 80B5EDB8-80B5EDBC 000098 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B5EDB8[4];
#pragma pop

/* 80B5EDBC-80B5EDC0 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80B5EDBC[4];
#pragma pop

/* 80B5EDC0-80B5EDC4 0000A0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80B5EDC0[4];
#pragma pop

/* 80B5EDC4-80B5EDC8 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80B5EDC4[4];
#pragma pop

/* 80B5EDC8-80B5EDCC 0000A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80B5EDC8[4];
#pragma pop

/* 80B5EDCC-80B5EDD0 0000AC 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80B5EDCC[4];
#pragma pop

/* 80B5EDD0-80B5EDD4 0000B0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80B5EDD0[4];
#pragma pop

/* 80B5EDD4-80B5EDD8 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80B5EDD4[4];
#pragma pop

/* 80B5EDD8-80B5EDDC 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B5EDD8[4];
#pragma pop

/* 80B5EDDC-80B5EDE0 0000BC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80B5EDDC[4];
#pragma pop

/* 80B5EDE0-80B5EDE4 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80B5EDE0[4];
#pragma pop

/* 80B5EDE4-80B5EDE8 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80B5EDE4[4];
#pragma pop

/* 80B5EDE8-80B5EDEC 0000C8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80B5EDE8[4];
#pragma pop

/* 80B5EDEC-80B5EDF0 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80B5EDEC[4];
#pragma pop

/* 80B5EDF0-80B5EDF4 0000D0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80B5EDF0[4];
#pragma pop

/* 80B5EDF4-80B5EDF8 0000D4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80B5EDF4[4];
#pragma pop

/* 80B5EDF8-80B5EDFC 0000D8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B5EDF8[4];
#pragma pop

/* 80B5EDFC-80B5EE00 0000DC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B5EDFC[4];
#pragma pop

/* 80B5EE00-80B5EE04 0000E0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B5EE00[4];
#pragma pop

/* 80B5EE04-80B5EE08 0000E4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80B5EE04[4];
#pragma pop

/* 80B5DA40-80B5DA40 0002AC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */