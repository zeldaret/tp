/**
 * @file d_a_npc_hanjo.cpp
 * 
*/

#include "d/actor/d_a_npc_hanjo.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__13daNpc_Hanjo_cFv();
extern "C" void create__13daNpc_Hanjo_cFv();
extern "C" void CreateHeap__13daNpc_Hanjo_cFv();
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
extern "C" void Delete__13daNpc_Hanjo_cFv();
extern "C" void Execute__13daNpc_Hanjo_cFv();
extern "C" void Draw__13daNpc_Hanjo_cFv();
extern "C" void createHeapCallBack__13daNpc_Hanjo_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__13daNpc_Hanjo_cFP8J3DJointi();
extern "C" void getType__13daNpc_Hanjo_cFv();
extern "C" void isDelete__13daNpc_Hanjo_cFv();
extern "C" void reset__13daNpc_Hanjo_cFv();
extern "C" void afterJntAnm__13daNpc_Hanjo_cFi();
extern "C" void setParam__13daNpc_Hanjo_cFv();
extern "C" void checkChangeEvt__13daNpc_Hanjo_cFv();
extern "C" void setAfterTalkMotion__13daNpc_Hanjo_cFv();
extern "C" void srchActors__13daNpc_Hanjo_cFv();
extern "C" void evtTalk__13daNpc_Hanjo_cFv();
extern "C" void evtCutProc__13daNpc_Hanjo_cFv();
extern "C" void action__13daNpc_Hanjo_cFv();
extern "C" void beforeMove__13daNpc_Hanjo_cFv();
extern "C" void afterMoved__13daNpc_Hanjo_cFv();
extern "C" void setAttnPos__13daNpc_Hanjo_cFv();
extern "C" void setCollision__13daNpc_Hanjo_cFv();
extern "C" bool drawDbgInfo__13daNpc_Hanjo_cFv();
extern "C" void drawOtherMdl__13daNpc_Hanjo_cFv();
extern "C" void selectAction__13daNpc_Hanjo_cFv();
extern "C" void chkAction__13daNpc_Hanjo_cFM13daNpc_Hanjo_cFPCvPvPv_i();
extern "C" void setAction__13daNpc_Hanjo_cFM13daNpc_Hanjo_cFPCvPvPv_i();
extern "C" void initShoot__13daNpc_Hanjo_cFi();
extern "C" void shoot__13daNpc_Hanjo_cFi();
extern "C" void initDive__13daNpc_Hanjo_cFv();
extern "C" void dive__13daNpc_Hanjo_cFv();
extern "C" void lookround__13daNpc_Hanjo_cFs();
extern "C" void commandToHawk__13daNpc_Hanjo_cFv();
extern "C" void cutConversationAboutSaru__13daNpc_Hanjo_cFi();
extern "C" void cutConversation__13daNpc_Hanjo_cFi();
extern "C" void cutPursuitBee__13daNpc_Hanjo_cFi();
extern "C" void cutAppearHawker__13daNpc_Hanjo_cFi();
extern "C" void cutDive__13daNpc_Hanjo_cFi();
extern "C" void wait__13daNpc_Hanjo_cFPv();
extern "C" void throwStone__13daNpc_Hanjo_cFPv();
extern "C" void takayose__13daNpc_Hanjo_cFPv();
extern "C" void talk__13daNpc_Hanjo_cFPv();
extern "C" static void daNpc_Hanjo_Create__FPv();
extern "C" static void daNpc_Hanjo_Delete__FPv();
extern "C" static void daNpc_Hanjo_Execute__FPv();
extern "C" static void daNpc_Hanjo_Draw__FPv();
extern "C" static bool daNpc_Hanjo_IsDelete__FPv();
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
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_809FFE6C(void* _this, int*);
extern "C" void func_809FFE88(void* _this, f32, f32);
extern "C" void __sinit_d_a_npc_hanjo_cpp();
extern "C" void __dt__18daNpc_HanjoStone_cFv();
extern "C" void
__ct__13daNpc_Hanjo_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __ct__18daNpc_HanjoStone_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" s32 getEyeballMaterialNo__13daNpc_Hanjo_cFv();
extern "C" void getPos__18daNpc_HanjoStone_cFv();
extern "C" void getOld__18daNpc_HanjoStone_cFv();
extern "C" void posMoveF__18daNpc_HanjoStone_cFP10fopAc_ac_c();
extern "C" void setPos__18daNpc_HanjoStone_cF4cXyz();
extern "C" s32 getHeadJointNo__13daNpc_Hanjo_cFv();
extern "C" s32 getNeckJointNo__13daNpc_Hanjo_cFv();
extern "C" bool getBackboneJointNo__13daNpc_Hanjo_cFv();
extern "C" void setAngle__18daNpc_HanjoStone_cF5csXyz();
extern "C" void checkChangeJoint__13daNpc_Hanjo_cFi();
extern "C" void checkRemoveJoint__13daNpc_Hanjo_cFi();
extern "C" s32 getFootLJointNo__13daNpc_Hanjo_cFv();
extern "C" s32 getFootRJointNo__13daNpc_Hanjo_cFv();
extern "C" void __dt__19daNpc_Hanjo_Param_cFv();
extern "C" static void func_80A0057C();
extern "C" static void func_80A00584();
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz();
extern "C" u8 const m__19daNpc_Hanjo_Param_c[180];
extern "C" u8 const mStoneCcDObjInfo__13daNpc_Hanjo_c[48];
extern "C" extern char const* const d_a_npc_hanjo__stringBase0;
extern "C" void* mCutNameList__13daNpc_Hanjo_c[6];
extern "C" u8 mCutList__13daNpc_Hanjo_c[72];
extern "C" u8 mStoneCcDSph__13daNpc_Hanjo_c[64];

//
// External References:
//

extern "C" void mDoMtx_XYZrotM__FPA4_fsss();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_getWaterY__FPC4cXyzPf();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void isCollect__20dSv_player_collect_cCFiUc();
extern "C" void onSwitch__12dSv_memBit_cFi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setSkipZev__14dEvt_control_cFPvPc();
extern "C" void onSkipFade__14dEvt_control_cFv();
extern "C" void setPt2__14dEvt_control_cFPv();
extern "C" void setPtT__14dEvt_control_cFPv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void setGoal__16dEvent_manager_cFP4cXyz();
extern "C" void getRunEventName__16dEvent_manager_cFv();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
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
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void ChkCoHit__12dCcD_GObjInfFv();
extern "C" void GetCoHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void initialize__18daNpcT_ActorMngr_cFv();
extern "C" void entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcT_ActorMngr_cFv();
extern "C" void getActorP__18daNpcT_ActorMngr_cFv();
extern "C" void initialize__15daNpcT_MatAnm_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void checkEndSequence__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__13daNpcT_Path_cFv();
extern "C" void setPathInfo__13daNpcT_Path_cFUcScUc();
extern "C" void getDstPosH__13daNpcT_Path_cF4cXyzP4cXyzii();
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
extern "C" void chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void getEvtAreaTagP__8daNpcT_cFii();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_onEvtBit__FUl();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_onTmpBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_set_actcol_ratio__Ff();
extern "C" void dKy_set_bgcol_ratio__Ff();
extern "C" void dKy_set_fogcol_ratio__Ff();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void remove__10dMsgFlow_cFv();
extern "C" void GetAc__8cCcD_ObjFv();
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
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
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
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcT_c[68];
extern "C" extern void* __vt__8daNpcT_c[49];
extern "C" extern void* __vt__15daNpcT_MatAnm_c[4 + 1 /* padding */];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_Counter[12 + 4 /* padding */];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz();
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80A007F8-80A007F8 0001F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A007F8 = "";
SECTION_DEAD static char const* const stringBase_80A007F9 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80A00805 = "CONVERSATION_ABOUT_SARU01";
SECTION_DEAD static char const* const stringBase_80A0081F = "CONVERSATION_ABOUT_SARU02";
SECTION_DEAD static char const* const stringBase_80A00839 = "CONVERSATION_ABOUT_HONEYCOMB1";
SECTION_DEAD static char const* const stringBase_80A00857 = "CONVERSATION_ABOUT_HONEYCOMB2";
SECTION_DEAD static char const* const stringBase_80A00875 = "CONVERSATION_ABOUT_HONEYCOMB3";
SECTION_DEAD static char const* const stringBase_80A00893 = "CONVERSATION_ABOUT_HONEYCOMB4";
SECTION_DEAD static char const* const stringBase_80A008B1 = "PURSUIT_BEE";
SECTION_DEAD static char const* const stringBase_80A008BD = "APPEAR_HAWKER";
SECTION_DEAD static char const* const stringBase_80A008CB = "DIVE";
SECTION_DEAD static char const* const stringBase_80A008D0 = "Hanjo";
SECTION_DEAD static char const* const stringBase_80A008D6 = "Hanjo1";
SECTION_DEAD static char const* const stringBase_80A008DD = "Hanjo2";
SECTION_DEAD static char const* const stringBase_80A008E4 = "J_Tobi";
SECTION_DEAD static char const* const stringBase_80A008EB = "Sera";
SECTION_DEAD static char const* const stringBase_80A008F0 = "CONVERSATION_ABOUT_SARU";
SECTION_DEAD static char const* const stringBase_80A00908 = "CONVERSATION";
#pragma pop

/* 80A00940-80A0094C 000000 000C+00 3/3 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A0094C-80A00960 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80A00960-80A00980 000020 0020+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[32] = {
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
};

/* 80A00980-80A009D8 -00001 0058+00 1/2 0/0 0/0 .data            l_evtList */
SECTION_DATA static void* l_evtList[22] = {
    (void*)&d_a_npc_hanjo__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_hanjo__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_hanjo__stringBase0) + 0xD),
    (void*)0x00000005,
    (void*)(((char*)&d_a_npc_hanjo__stringBase0) + 0x27),
    (void*)0x00000005,
    (void*)(((char*)&d_a_npc_hanjo__stringBase0) + 0x41),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_hanjo__stringBase0) + 0x5F),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_hanjo__stringBase0) + 0x7D),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_hanjo__stringBase0) + 0x9B),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_hanjo__stringBase0) + 0xB9),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_hanjo__stringBase0) + 0xC5),
    (void*)0x00000003,
    (void*)(((char*)&d_a_npc_hanjo__stringBase0) + 0xD3),
    (void*)0x00000003,
};

/* 80A009D8-80A009F0 -00001 0018+00 3/4 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[6] = {
    (void*)&d_a_npc_hanjo__stringBase0,
    (void*)(((char*)&d_a_npc_hanjo__stringBase0) + 0xD8),
    (void*)(((char*)&d_a_npc_hanjo__stringBase0) + 0xDE),
    (void*)(((char*)&d_a_npc_hanjo__stringBase0) + 0xE5),
    (void*)(((char*)&d_a_npc_hanjo__stringBase0) + 0xEC),
    (void*)(((char*)&d_a_npc_hanjo__stringBase0) + 0xF3),
};

/* 80A009F0-80A009F4 0000B0 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u8 l_loadResPtrn0[3 + 1 /* padding */] = {
    0x01,
    0x02,
    0xFF,
    /* padding */
    0x00,
};

/* 80A009F4-80A009FC 0000B4 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u8 l_loadResPtrn1[5 + 3 /* padding */] = {
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

/* 80A009FC-80A00A00 0000BC 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn2 */
SECTION_DATA static u16 l_loadResPtrn2[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80A00A00-80A00A08 0000C0 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn9 */
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

/* 80A00A08-80A00A1C -00001 0014+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[5] = {
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn1, (void*)&l_loadResPtrn1,
    (void*)&l_loadResPtrn2, (void*)&l_loadResPtrn9,
};

/* 80A00A1C-80A00B34 0000DC 0118+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[280] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x25,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x24,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A00B34-80A00DB8 0001F4 0284+00 1/2 0/0 0/0 .data            l_motionAnmData */
SECTION_DATA static u8 l_motionAnmData[644] = {
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1F,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00,
};

/* 80A00DB8-80A00E38 000478 0080+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[128] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x04, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0x00, 0x09, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x07, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A00E38-80A00F78 0004F8 0140+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[320] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x15, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0x00, 0x09, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x01, 0x00, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x01, 0x00, 0x11, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x05, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x05, 0x00, 0x01, 0x00, 0x04, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A00F78-80A00F90 -00001 0018+00 1/1 0/0 0/0 .data            mCutNameList__13daNpc_Hanjo_c */
SECTION_DATA void* daNpc_Hanjo_c::mCutNameList[6] = {
    (void*)&d_a_npc_hanjo__stringBase0,
    (void*)(((char*)&d_a_npc_hanjo__stringBase0) + 0xF8),
    (void*)(((char*)&d_a_npc_hanjo__stringBase0) + 0x110),
    (void*)(((char*)&d_a_npc_hanjo__stringBase0) + 0xB9),
    (void*)(((char*)&d_a_npc_hanjo__stringBase0) + 0xC5),
    (void*)(((char*)&d_a_npc_hanjo__stringBase0) + 0xD3),
};

/* 80A00F90-80A00F9C -00001 000C+00 0/1 0/0 0/0 .data            @3854 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3854[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutSaru__13daNpc_Hanjo_cFi,
};
#pragma pop

/* 80A00F9C-80A00FA8 -00001 000C+00 0/1 0/0 0/0 .data            @3855 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3855[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversation__13daNpc_Hanjo_cFi,
};
#pragma pop

/* 80A00FA8-80A00FB4 -00001 000C+00 0/1 0/0 0/0 .data            @3856 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3856[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutPursuitBee__13daNpc_Hanjo_cFi,
};
#pragma pop

/* 80A00FB4-80A00FC0 -00001 000C+00 0/1 0/0 0/0 .data            @3857 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3857[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutAppearHawker__13daNpc_Hanjo_cFi,
};
#pragma pop

/* 80A00FC0-80A00FCC -00001 000C+00 0/1 0/0 0/0 .data            @3858 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3858[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutDive__13daNpc_Hanjo_cFi,
};
#pragma pop

/* 80A00FCC-80A01014 00068C 0048+00 1/2 0/0 0/0 .data            mCutList__13daNpc_Hanjo_c */
SECTION_DATA u8 daNpc_Hanjo_c::mCutList[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A01014-80A01054 0006D4 0040+00 0/1 0/0 0/0 .data            mStoneCcDSph__13daNpc_Hanjo_c */
#pragma push
#pragma force_active on
SECTION_DATA u8 daNpc_Hanjo_c::mStoneCcDSph[64] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A01054-80A01060 -00001 000C+00 1/1 0/0 0/0 .data            @4803 */
SECTION_DATA static void* lit_4803[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Hanjo_cFPv,
};

/* 80A01060-80A0106C -00001 000C+00 1/1 0/0 0/0 .data            @4891 */
SECTION_DATA static void* lit_4891[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Hanjo_cFPv,
};

/* 80A0106C-80A01078 -00001 000C+00 1/1 0/0 0/0 .data            @4896 */
SECTION_DATA static void* lit_4896[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Hanjo_cFPv,
};

/* 80A01078-80A01084 -00001 000C+00 0/1 0/0 0/0 .data            @5512 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5512[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_Hanjo_cFPv,
};
#pragma pop

/* 80A01084-80A01090 -00001 000C+00 0/1 0/0 0/0 .data            @5519 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5519[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)throwStone__13daNpc_Hanjo_cFPv,
};
#pragma pop

/* 80A01090-80A0109C -00001 000C+00 0/1 0/0 0/0 .data            @5521 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5521[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)takayose__13daNpc_Hanjo_cFPv,
};
#pragma pop

/* 80A0109C-80A010A8 -00001 000C+00 0/1 0/0 0/0 .data            @5523 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5523[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_Hanjo_cFPv,
};
#pragma pop

/* 80A010A8-80A010C8 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Hanjo_MethodTable */
static actor_method_class daNpc_Hanjo_MethodTable = {
    (process_method_func)daNpc_Hanjo_Create__FPv,
    (process_method_func)daNpc_Hanjo_Delete__FPv,
    (process_method_func)daNpc_Hanjo_Execute__FPv,
    (process_method_func)daNpc_Hanjo_IsDelete__FPv,
    (process_method_func)daNpc_Hanjo_Draw__FPv,
};

/* 80A010C8-80A010F8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_HANJO */
extern actor_process_profile_definition g_profile_NPC_HANJO = {
  fpcLy_CURRENT_e,            // mLayerID
  7,                          // mListID
  fpcPi_CURRENT_e,            // mListPrio
  PROC_NPC_HANJO,             // mProcName
  &g_fpcLf_Method.mBase,      // sub_method
  sizeof(daNpc_Hanjo_c),      // mSize
  0,                          // mSizeOther
  0,                          // mParameters
  &g_fopAc_Method.base,       // sub_method
  341,                        // mPriority
  &daNpc_Hanjo_MethodTable,   // sub_method
  0x00040107,                 // mStatus
  fopAc_NPC_e,                // mActorType
  fopAc_CULLBOX_CUSTOM_e,     // cullType
};

/* 80A010F8-80A01104 0007B8 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80A01104-80A01110 0007C4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80A01110-80A0111C 0007D0 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80A0111C-80A01140 0007DC 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A00584,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A0057C,
};

/* 80A01140-80A0114C 000800 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80A0114C-80A01158 00080C 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80A01158-80A01164 000818 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80A01164-80A01170 000824 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80A01170-80A0117C 000830 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80A0117C-80A01188 00083C 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80A01188-80A01194 000848 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80A01194-80A011A0 000854 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80A011A0-80A011AC 000860 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80A011AC-80A01270 00086C 00C4+00 2/2 0/0 0/0 .data            __vt__13daNpc_Hanjo_c */
SECTION_DATA extern void* __vt__13daNpc_Hanjo_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpc_Hanjo_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__13daNpc_Hanjo_cFi,
    (void*)checkRemoveJoint__13daNpc_Hanjo_cFi,
    (void*)getBackboneJointNo__13daNpc_Hanjo_cFv,
    (void*)getNeckJointNo__13daNpc_Hanjo_cFv,
    (void*)getHeadJointNo__13daNpc_Hanjo_cFv,
    (void*)getFootLJointNo__13daNpc_Hanjo_cFv,
    (void*)getFootRJointNo__13daNpc_Hanjo_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__13daNpc_Hanjo_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__13daNpc_Hanjo_cFi,
    (void*)setParam__13daNpc_Hanjo_cFv,
    (void*)checkChangeEvt__13daNpc_Hanjo_cFv,
    (void*)evtTalk__13daNpc_Hanjo_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__13daNpc_Hanjo_cFv,
    (void*)setAfterTalkMotion__13daNpc_Hanjo_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__13daNpc_Hanjo_cFv,
    (void*)beforeMove__13daNpc_Hanjo_cFv,
    (void*)afterMoved__13daNpc_Hanjo_cFv,
    (void*)setAttnPos__13daNpc_Hanjo_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__13daNpc_Hanjo_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__13daNpc_Hanjo_cFv,
    (void*)drawOtherMdl__13daNpc_Hanjo_cFv,
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

/* 809F908C-809F9278 0000EC 01EC+00 1/0 0/0 0/0 .text            __dt__13daNpc_Hanjo_cFv */
daNpc_Hanjo_c::~daNpc_Hanjo_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A00600-80A006B4 000000 00B4+00 19/19 0/0 0/0 .rodata          m__19daNpc_Hanjo_Param_c */
SECTION_RODATA u8 const daNpc_Hanjo_Param_c::m[180] = {
    0x43, 0x20, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00,
    0x00, 0x43, 0x7F, 0x00, 0x00, 0x43, 0x20, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1,
    0x20, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00,
    0xC2, 0x34, 0x00, 0x00, 0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00,
    0x06, 0x00, 0x05, 0x00, 0x06, 0x42, 0xDC, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96,
    0x00, 0x00, 0xC3, 0x96, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xC0, 0x00, 0x00, 0x41, 0x80, 0x00, 0x00, 0x40, 0x80,
    0x00, 0x00, 0x42, 0xA0, 0x00, 0x00, 0x42, 0x82, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x44,
    0x16, 0x00, 0x00, 0x43, 0x08, 0x00, 0x00, 0x05, 0x00, 0x00, 0x5A, 0x00, 0x5A, 0x00, 0x02,
};
COMPILER_STRIP_GATE(0x80A00600, &daNpc_Hanjo_Param_c::m);

/* 80A006B4-80A006E4 0000B4 0030+00 1/1 0/0 0/0 .rodata          mStoneCcDObjInfo__13daNpc_Hanjo_c
 */
SECTION_RODATA u8 const daNpc_Hanjo_c::mStoneCcDObjInfo[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A006B4, &daNpc_Hanjo_c::mStoneCcDObjInfo);

/* 80A006E4-80A006F8 0000E4 0014+00 0/1 0/0 0/0 .rodata          heapSize$4058 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[20] = {
    0x00, 0x00, 0x61, 0xB0, 0x00, 0x00, 0x41, 0xD0, 0x00, 0x00,
    0x39, 0xD0, 0x00, 0x00, 0x39, 0xC0, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A006E4, &heapSize);
#pragma pop

/* 80A006F8-80A006FC 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4140 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4140 = 60.0f;
COMPILER_STRIP_GATE(0x80A006F8, &lit_4140);
#pragma pop

/* 80A006FC-80A00700 0000FC 0004+00 10/26 0/0 0/0 .rodata          @4141 */
SECTION_RODATA static u8 const lit_4141[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A006FC, &lit_4141);

/* 80A00700-80A00704 000100 0004+00 0/1 0/0 0/0 .rodata          @4142 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4142 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80A00700, &lit_4142);
#pragma pop

/* 809F9278-809F9578 0002D8 0300+00 1/1 0/0 0/0 .text            create__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A00704-80A00708 000104 0004+00 3/5 0/0 0/0 .rodata          @4212 */
SECTION_RODATA static f32 const lit_4212 = -3.0f;
COMPILER_STRIP_GATE(0x80A00704, &lit_4212);

/* 80A00708-80A0070C 000108 0004+00 0/2 0/0 0/0 .rodata          @4384 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4384 = 65536.0f;
COMPILER_STRIP_GATE(0x80A00708, &lit_4384);
#pragma pop

/* 80A0070C-80A00710 00010C 0004+00 0/3 0/0 0/0 .rodata          @4385 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4385 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A0070C, &lit_4385);
#pragma pop

/* 80A00710-80A00718 000110 0008+00 0/1 0/0 0/0 .rodata          bmdTypeList$4495 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const bmdTypeList[8] = {
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
};
COMPILER_STRIP_GATE(0x80A00710, &bmdTypeList);
#pragma pop

/* 80A00718-80A0071C 000118 0004+00 1/9 0/0 0/0 .rodata          @4593 */
SECTION_RODATA static f32 const lit_4593 = 1.0f;
COMPILER_STRIP_GATE(0x80A00718, &lit_4593);

/* 809F9578-809F997C 0005D8 0404+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::CreateHeap() {
    // NONMATCHING
}

/* 809F997C-809F99B8 0009DC 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 809F99B8-809F99D0 000A18 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 809F99D0-809F9A0C 000A30 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 809F9A0C-809F9A24 000A6C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 809F9A24-809F9A6C 000A84 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 809F9A6C-809F9A90 000ACC 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 809F9A90-809F9ACC 000AF0 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 809F9ACC-809F9AE4 000B2C 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 809F9AE4-809F9B20 000B44 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 809F9B20-809F9B38 000B80 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 809F9B38-809F9B6C 000B98 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::Delete() {
    // NONMATCHING
}

/* 809F9B6C-809F9B8C 000BCC 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A0071C-80A00720 00011C 0004+00 1/1 0/0 0/0 .rodata          @4642 */
SECTION_RODATA static f32 const lit_4642 = 100.0f;
COMPILER_STRIP_GATE(0x80A0071C, &lit_4642);

/* 809F9B8C-809F9C20 000BEC 0094+00 1/1 0/0 0/0 .text            Draw__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::Draw() {
    // NONMATCHING
}

/* 809F9C20-809F9C40 000C80 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_Hanjo_cFP10fopAc_ac_c            */
void daNpc_Hanjo_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809F9C40-809F9C98 000CA0 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpc_Hanjo_cFP8J3DJointi               */
void daNpc_Hanjo_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 809F9C98-809F9CF0 000CF8 0058+00 1/1 0/0 2/2 .text            getType__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::getType() {
    // NONMATCHING
}

/* 809F9CF0-809F9D9C 000D50 00AC+00 1/1 0/0 0/0 .text            isDelete__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::isDelete() {
    // NONMATCHING
}

/* 809F9D9C-809F9FCC 000DFC 0230+00 1/1 0/0 0/0 .text            reset__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::reset() {
    // NONMATCHING
}

/* 809F9FCC-809FA050 00102C 0084+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpc_Hanjo_cFi */
void daNpc_Hanjo_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 809FA050-809FA1C4 0010B0 0174+00 1/0 0/0 0/0 .text            setParam__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::setParam() {
    // NONMATCHING
}

/* 809FA1C4-809FA3B8 001224 01F4+00 1/0 0/0 0/0 .text            checkChangeEvt__13daNpc_Hanjo_cFv
 */
void daNpc_Hanjo_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A00720-80A00724 000120 0004+00 5/13 0/0 0/0 .rodata          @4869 */
SECTION_RODATA static f32 const lit_4869 = -1.0f;
COMPILER_STRIP_GATE(0x80A00720, &lit_4869);

/* 809FA3B8-809FA45C 001418 00A4+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 809FA45C-809FA55C 0014BC 0100+00 1/1 0/0 0/0 .text            srchActors__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::srchActors() {
    // NONMATCHING
}

/* 809FA55C-809FA5FC 0015BC 00A0+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::evtTalk() {
    // NONMATCHING
}

/* 809FA5FC-809FA6C4 00165C 00C8+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::evtCutProc() {
    // NONMATCHING
}

/* 809FA6C4-809FA88C 001724 01C8+00 1/0 0/0 0/0 .text            action__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::action() {
    // NONMATCHING
}

/* 809FA88C-809FAABC 0018EC 0230+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::beforeMove() {
    // NONMATCHING
}

/* 809FAABC-809FABB8 001B1C 00FC+00 1/0 0/0 0/0 .text            afterMoved__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::afterMoved() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A00724-80A00728 000124 0004+00 0/1 0/0 0/0 .rodata          @5228 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5228 = -10.0f;
COMPILER_STRIP_GATE(0x80A00724, &lit_5228);
#pragma pop

/* 80A00728-80A0072C 000128 0004+00 0/1 0/0 0/0 .rodata          @5229 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5229 = 10.0f;
COMPILER_STRIP_GATE(0x80A00728, &lit_5229);
#pragma pop

/* 80A0072C-80A00730 00012C 0004+00 0/1 0/0 0/0 .rodata          @5230 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5230 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80A0072C, &lit_5230);
#pragma pop

/* 80A00730-80A00734 000130 0004+00 0/1 0/0 0/0 .rodata          @5231 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5231 = 20.0f;
COMPILER_STRIP_GATE(0x80A00730, &lit_5231);
#pragma pop

/* 80A00734-80A00738 000134 0004+00 0/1 0/0 0/0 .rodata          @5232 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5232 = 170.0f;
COMPILER_STRIP_GATE(0x80A00734, &lit_5232);
#pragma pop

/* 80A00738-80A0073C 000138 0004+00 0/2 0/0 0/0 .rodata          @5233 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5233 = -20.0f;
COMPILER_STRIP_GATE(0x80A00738, &lit_5233);
#pragma pop

/* 80A0073C-80A00740 00013C 0004+00 0/2 0/0 0/0 .rodata          @5234 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5234 = 3.0f;
COMPILER_STRIP_GATE(0x80A0073C, &lit_5234);
#pragma pop

/* 80A00740-80A00744 000140 0004+00 0/1 0/0 0/0 .rodata          @5235 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5235 = 17.0f;
COMPILER_STRIP_GATE(0x80A00740, &lit_5235);
#pragma pop

/* 80A00744-80A00748 000144 0004+00 0/2 0/0 0/0 .rodata          @5236 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5236 = 2.0f;
COMPILER_STRIP_GATE(0x80A00744, &lit_5236);
#pragma pop

/* 80A00748-80A00750 000148 0008+00 1/5 0/0 0/0 .rodata          @5238 */
SECTION_RODATA static u8 const lit_5238[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A00748, &lit_5238);

/* 80A01288-80A0128C 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80A0128C-80A01290 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80A01290-80A01294 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80A01294-80A01298 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80A01298-80A0129C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80A0129C-80A012A0 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80A012A0-80A012A4 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80A012A4-80A012A8 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80A012A8-80A012AC 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80A012AC-80A012B0 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80A012B0-80A012B4 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80A012B4-80A012B8 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80A012B8-80A012BC 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80A012BC-80A012C0 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80A012C0-80A012C4 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80A012C4-80A012C8 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 80A012C8-80A012D4 000048 000C+00 1/1 0/0 0/0 .bss             @3859 */
static u8 lit_3859[12];

/* 80A012D4-80A012D8 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A012D8-80A012E8 000058 000C+04 0/1 0/0 0/0 .bss             @5144 */
#pragma push
#pragma force_active on
static u8 lit_5144[12 + 4 /* padding */];
#pragma pop

/* 80A012E8-80A012F4 000068 000C+00 0/1 0/0 0/0 .bss             prtclScl$5143 */
#pragma push
#pragma force_active on
static u8 prtclScl[12];
#pragma pop

/* 809FABB8-809FAF90 001C18 03D8+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A00750-80A00758 000150 0008+00 0/1 0/0 0/0 .rodata          @5296 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5296[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A00750, &lit_5296);
#pragma pop

/* 80A00758-80A00760 000158 0008+00 0/1 0/0 0/0 .rodata          @5297 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5297[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A00758, &lit_5297);
#pragma pop

/* 80A00760-80A00768 000160 0008+00 0/1 0/0 0/0 .rodata          @5298 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5298[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A00760, &lit_5298);
#pragma pop

/* 80A00768-80A0076C 000168 0004+00 0/1 0/0 0/0 .rodata          @5386 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5386 = 320.0f;
COMPILER_STRIP_GATE(0x80A00768, &lit_5386);
#pragma pop

/* 80A0076C-80A00770 00016C 0004+00 0/1 0/0 0/0 .rodata          @5387 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5387 = -140.0f;
COMPILER_STRIP_GATE(0x80A0076C, &lit_5387);
#pragma pop

/* 80A00770-80A00774 000170 0004+00 0/2 0/0 0/0 .rodata          @5388 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5388 = 40.0f;
COMPILER_STRIP_GATE(0x80A00770, &lit_5388);
#pragma pop

/* 80A00774-80A00778 000174 0004+00 0/1 0/0 0/0 .rodata          @5389 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5389 = -240.0f;
COMPILER_STRIP_GATE(0x80A00774, &lit_5389);
#pragma pop

/* 80A00778-80A0077C 000178 0004+00 0/1 0/0 0/0 .rodata          @5390 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5390 = -200.0f;
COMPILER_STRIP_GATE(0x80A00778, &lit_5390);
#pragma pop

/* 809FAF90-809FB2C4 001FF0 0334+00 1/0 0/0 0/0 .text            setCollision__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::setCollision() {
    // NONMATCHING
}

/* 809FB2C4-809FB2CC 002324 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_Hanjo_cFv */
bool daNpc_Hanjo_c::drawDbgInfo() {
    return false;
}

/* ############################################################################################## */
/* 80A0077C-80A00780 00017C 0004+00 0/1 0/0 0/0 .rodata          @5503 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5503 = 0x3C1374BC;
COMPILER_STRIP_GATE(0x80A0077C, &lit_5503);
#pragma pop

/* 80A00780-80A00784 000180 0004+00 0/1 0/0 0/0 .rodata          @5504 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5504 = -9.0f / 50.0f;
COMPILER_STRIP_GATE(0x80A00780, &lit_5504);
#pragma pop

/* 80A00784-80A00788 000184 0004+00 0/1 0/0 0/0 .rodata          @5505 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5505 = 0xBE147AE1;
COMPILER_STRIP_GATE(0x80A00784, &lit_5505);
#pragma pop

/* 80A00788-80A0078C 000188 0004+00 0/2 0/0 0/0 .rodata          @5506 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5506 = 3.0f / 20.0f;
COMPILER_STRIP_GATE(0x80A00788, &lit_5506);
#pragma pop

/* 809FB2CC-809FB59C 00232C 02D0+00 1/0 0/0 0/0 .text            drawOtherMdl__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::drawOtherMdl() {
    // NONMATCHING
}

/* 809FB59C-809FB6CC 0025FC 0130+00 1/1 0/0 0/0 .text            selectAction__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::selectAction() {
    // NONMATCHING
}

/* 809FB6CC-809FB6F8 00272C 002C+00 2/2 0/0 0/0 .text
 * chkAction__13daNpc_Hanjo_cFM13daNpc_Hanjo_cFPCvPvPv_i        */
void daNpc_Hanjo_c::chkAction(int (daNpc_Hanjo_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809FB6F8-809FB7A0 002758 00A8+00 2/2 0/0 0/0 .text
 * setAction__13daNpc_Hanjo_cFM13daNpc_Hanjo_cFPCvPvPv_i        */
void daNpc_Hanjo_c::setAction(int (daNpc_Hanjo_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809FB7A0-809FB90C 002800 016C+00 2/2 0/0 0/0 .text            initShoot__13daNpc_Hanjo_cFi */
void daNpc_Hanjo_c::initShoot(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A0078C-80A00790 00018C 0004+00 0/1 0/0 0/0 .rodata          @5666 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5666 = 0x43360B61;
COMPILER_STRIP_GATE(0x80A0078C, &lit_5666);
#pragma pop

/* 80A00790-80A00794 000190 0004+00 0/1 0/0 0/0 .rodata          @5667 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5667 = 36.0f;
COMPILER_STRIP_GATE(0x80A00790, &lit_5667);
#pragma pop

/* 80A00794-80A00798 000194 0004+00 0/1 0/0 0/0 .rodata          @5668 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5668 = 21.0f;
COMPILER_STRIP_GATE(0x80A00794, &lit_5668);
#pragma pop

/* 80A00798-80A0079C 000198 0004+00 0/1 0/0 0/0 .rodata          @5669 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5669 = 110.0f;
COMPILER_STRIP_GATE(0x80A00798, &lit_5669);
#pragma pop

/* 80A0079C-80A007A0 00019C 0004+00 0/2 0/0 0/0 .rodata          @5670 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5670 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80A0079C, &lit_5670);
#pragma pop

/* 80A007A0-80A007A4 0001A0 0004+00 0/5 0/0 0/0 .rodata          @5671 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5671 = 0.5f;
COMPILER_STRIP_GATE(0x80A007A0, &lit_5671);
#pragma pop

/* 809FB90C-809FBB94 00296C 0288+00 2/2 0/0 0/0 .text            shoot__13daNpc_Hanjo_cFi */
void daNpc_Hanjo_c::shoot(int param_0) {
    // NONMATCHING
}

/* 809FBB94-809FBC3C 002BF4 00A8+00 2/2 0/0 0/0 .text            initDive__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::initDive() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A007A4-80A007A8 0001A4 0004+00 0/1 0/0 0/0 .rodata          @5802 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5802 = 5.5f;
COMPILER_STRIP_GATE(0x80A007A4, &lit_5802);
#pragma pop

/* 80A007A8-80A007AC 0001A8 0004+00 0/1 0/0 0/0 .rodata          @5803 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5803 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80A007A8, &lit_5803);
#pragma pop

/* 80A007AC-80A007B0 0001AC 0004+00 0/1 0/0 0/0 .rodata          @5804 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5804 = 260.0f;
COMPILER_STRIP_GATE(0x80A007AC, &lit_5804);
#pragma pop

/* 80A007B0-80A007B4 0001B0 0004+00 0/1 0/0 0/0 .rodata          @5805 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5805 = 18.0f;
COMPILER_STRIP_GATE(0x80A007B0, &lit_5805);
#pragma pop

/* 809FBC3C-809FC06C 002C9C 0430+00 1/1 0/0 0/0 .text            dive__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::dive() {
    // NONMATCHING
}

/* 809FC06C-809FC1BC 0030CC 0150+00 1/1 0/0 0/0 .text            lookround__13daNpc_Hanjo_cFs */
void daNpc_Hanjo_c::lookround(s16 param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A007B4-80A007B8 0001B4 0004+00 1/2 0/0 0/0 .rodata          @5887 */
SECTION_RODATA static f32 const lit_5887 = 50.0f;
COMPILER_STRIP_GATE(0x80A007B4, &lit_5887);

/* 809FC1BC-809FC2E4 00321C 0128+00 1/1 0/0 0/0 .text            commandToHawk__13daNpc_Hanjo_cFv */
void daNpc_Hanjo_c::commandToHawk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A007F8-80A007F8 0001F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A00915 = "prm";
#pragma pop

/* 809FC2E4-809FC438 003344 0154+00 1/0 0/0 0/0 .text cutConversationAboutSaru__13daNpc_Hanjo_cFi
 */
void daNpc_Hanjo_c::cutConversationAboutSaru(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A007B8-80A007C0 0001B8 0008+00 0/1 0/0 0/0 .rodata          @5944 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5944[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80A007B8, &lit_5944);
#pragma pop

/* 80A007F8-80A007F8 0001F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A00919 = "prm0";
SECTION_DEAD static char const* const stringBase_80A0091E = "prm1";
SECTION_DEAD static char const* const stringBase_80A00923 = "msgNo";
#pragma pop

/* 809FC438-809FC80C 003498 03D4+00 1/0 0/0 0/0 .text            cutConversation__13daNpc_Hanjo_cFi
 */
void daNpc_Hanjo_c::cutConversation(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A007C0-80A007C4 0001C0 0004+00 0/1 0/0 0/0 .rodata          @6200 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6200 = 1074.0f;
COMPILER_STRIP_GATE(0x80A007C0, &lit_6200);
#pragma pop

/* 80A007C4-80A007C8 0001C4 0004+00 0/1 0/0 0/0 .rodata          @6201 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6201 = -100.0f;
COMPILER_STRIP_GATE(0x80A007C4, &lit_6201);
#pragma pop

/* 80A007C8-80A007CC 0001C8 0004+00 0/1 0/0 0/0 .rodata          @6202 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6202 = -443.0f;
COMPILER_STRIP_GATE(0x80A007C8, &lit_6202);
#pragma pop

/* 809FC80C-809FCDC4 00386C 05B8+00 1/0 0/0 0/0 .text            cutPursuitBee__13daNpc_Hanjo_cFi */
void daNpc_Hanjo_c::cutPursuitBee(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A007CC-80A007D0 0001CC 0004+00 0/1 0/0 0/0 .rodata          @6354 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6354 = 8.0f;
COMPILER_STRIP_GATE(0x80A007CC, &lit_6354);
#pragma pop

/* 80A007F8-80A007F8 0001F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A00929 = "timer";
SECTION_DEAD static char const* const stringBase_80A0092F = "@";
#pragma pop

/* 809FCDC4-809FD3C0 003E24 05FC+00 1/0 0/0 0/0 .text            cutAppearHawker__13daNpc_Hanjo_cFi
 */
void daNpc_Hanjo_c::cutAppearHawker(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A007D0-80A007D4 0001D0 0004+00 0/1 0/0 0/0 .rodata          @6468 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6468 = 1400.0f;
COMPILER_STRIP_GATE(0x80A007D0, &lit_6468);
#pragma pop

/* 80A007D4-80A007D8 0001D4 0004+00 0/1 0/0 0/0 .rodata          @6469 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6469 = 600.0f;
COMPILER_STRIP_GATE(0x80A007D4, &lit_6469);
#pragma pop

/* 80A007D8-80A007DC 0001D8 0004+00 0/1 0/0 0/0 .rodata          @6470 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6470 = 180.0f;
COMPILER_STRIP_GATE(0x80A007D8, &lit_6470);
#pragma pop

/* 80A007DC-80A007E0 0001DC 0004+00 0/1 0/0 0/0 .rodata          @6471 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6471 = 200.0f;
COMPILER_STRIP_GATE(0x80A007DC, &lit_6471);
#pragma pop

/* 809FD3C0-809FD86C 004420 04AC+00 1/0 0/0 0/0 .text            cutDive__13daNpc_Hanjo_cFi */
void daNpc_Hanjo_c::cutDive(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A007E0-80A007E4 0001E0 0004+00 0/1 0/0 0/0 .rodata          @6683 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6683 = 150.0f;
COMPILER_STRIP_GATE(0x80A007E0, &lit_6683);
#pragma pop

/* 80A007E4-80A007E8 0001E4 0004+00 0/1 0/0 0/0 .rodata          @6684 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6684 = -150.0f;
COMPILER_STRIP_GATE(0x80A007E4, &lit_6684);
#pragma pop

/* 80A007E8-80A007EC 0001E8 0004+00 0/1 0/0 0/0 .rodata          @6685 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6685 = -40.0f;
COMPILER_STRIP_GATE(0x80A007E8, &lit_6685);
#pragma pop

/* 809FD86C-809FDEFC 0048CC 0690+00 2/0 0/0 0/0 .text            wait__13daNpc_Hanjo_cFPv */
void daNpc_Hanjo_c::wait(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A007EC-80A007F0 0001EC 0004+00 0/2 0/0 0/0 .rodata          @6795 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6795 = 1.5f;
COMPILER_STRIP_GATE(0x80A007EC, &lit_6795);
#pragma pop

/* 80A007F0-80A007F4 0001F0 0004+00 0/1 0/0 0/0 .rodata          @6796 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6796 = 1000.0f;
COMPILER_STRIP_GATE(0x80A007F0, &lit_6796);
#pragma pop

/* 80A007F4-80A007F8 0001F4 0004+00 0/1 0/0 0/0 .rodata          @6797 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6797 = -1000.0f;
COMPILER_STRIP_GATE(0x80A007F4, &lit_6797);
#pragma pop

/* 809FDEFC-809FE2E0 004F5C 03E4+00 1/0 0/0 0/0 .text            throwStone__13daNpc_Hanjo_cFPv */
void daNpc_Hanjo_c::throwStone(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A007F8-80A007F8 0001F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A00931 = "toal_enter01";
#pragma pop

/* 809FE2E0-809FEAEC 005340 080C+00 1/0 0/0 0/0 .text            takayose__13daNpc_Hanjo_cFPv */
void daNpc_Hanjo_c::takayose(void* param_0) {
    // NONMATCHING
}

/* 809FEAEC-809FED58 005B4C 026C+00 3/0 0/0 0/0 .text            talk__13daNpc_Hanjo_cFPv */
void daNpc_Hanjo_c::talk(void* param_0) {
    // NONMATCHING
}

/* 809FED58-809FED78 005DB8 0020+00 1/0 0/0 0/0 .text            daNpc_Hanjo_Create__FPv */
static void daNpc_Hanjo_Create(void* param_0) {
    // NONMATCHING
}

/* 809FED78-809FED98 005DD8 0020+00 1/0 0/0 0/0 .text            daNpc_Hanjo_Delete__FPv */
static void daNpc_Hanjo_Delete(void* param_0) {
    // NONMATCHING
}

/* 809FED98-809FEDB8 005DF8 0020+00 1/0 0/0 0/0 .text            daNpc_Hanjo_Execute__FPv */
static void daNpc_Hanjo_Execute(void* param_0) {
    // NONMATCHING
}

/* 809FEDB8-809FEDD8 005E18 0020+00 1/0 0/0 0/0 .text            daNpc_Hanjo_Draw__FPv */
static void daNpc_Hanjo_Draw(void* param_0) {
    // NONMATCHING
}

/* 809FEDD8-809FEDE0 005E38 0008+00 1/0 0/0 0/0 .text            daNpc_Hanjo_IsDelete__FPv */
static bool daNpc_Hanjo_IsDelete(void* param_0) {
    return true;
}

/* 809FEDE0-809FEE10 005E40 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 809FEE10-809FEE58 005E70 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 809FEE58-809FF1E0 005EB8 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 809FF1E0-809FF21C 006240 003C+00 4/4 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 809FF21C-809FF258 00627C 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 809FF258-809FF2A0 0062B8 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809FF2A0-809FF2E8 006300 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 809FF2E8-809FF324 006348 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809FF324-809FF36C 006384 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 809FF36C-809FF3B4 0063CC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 809FF3B4-809FF7B8 006414 0404+00 1/1 0/0 0/0 .text
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

/* 809FF7B8-809FF7BC 006818 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 809FF7BC-809FF8B8 00681C 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 809FF8B8-809FF8BC 006918 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 809FF8BC-809FF904 00691C 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 809FF904-809FF974 006964 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 809FF974-809FF9D0 0069D4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 809FF9D0-809FFA40 006A30 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809FFA40-809FFA88 006AA0 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 809FFA88-809FFBA4 006AE8 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 809FFBA4-809FFDAC 006C04 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 809FFDAC-809FFDB0 006E0C 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 809FFDB0-809FFDB8 006E10 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 809FFDB8-809FFDC0 006E18 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 809FFDC0-809FFDC8 006E20 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 809FFDC8-809FFDD0 006E28 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 809FFDD0-809FFDE8 006E30 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 809FFDE8-809FFDEC 006E48 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 809FFDEC-809FFDF4 006E4C 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 809FFDF4-809FFDFC 006E54 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 809FFDFC-809FFE2C 006E5C 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 809FFE2C-809FFE5C 006E8C 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 809FFE5C-809FFE60 006EBC 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809FFE60-809FFE64 006EC0 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809FFE64-809FFE68 006EC4 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809FFE68-809FFE6C 006EC8 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809FFE6C-809FFE88 006ECC 001C+00 5/5 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_809FFE6C(void* _this, int* param_0) {
    // NONMATCHING
}

/* 809FFE88-809FFEC4 006EE8 003C+00 2/2 0/0 0/0 .text            cLib_getRndValue<f>__Fff */
extern "C" void func_809FFE88(void* _this, f32 param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A01270-80A0127C 000930 000C+00 2/2 0/0 0/0 .data            __vt__19daNpc_Hanjo_Param_c */
SECTION_DATA extern void* __vt__19daNpc_Hanjo_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daNpc_Hanjo_Param_cFv,
};

/* 809FFEC4-809FFFD4 006F24 0110+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_hanjo_cpp */
void __sinit_d_a_npc_hanjo_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x809FFEC4, __sinit_d_a_npc_hanjo_cpp);
#pragma pop

/* 809FFFD4-80A000A8 007034 00D4+00 2/2 0/0 0/0 .text            __dt__18daNpc_HanjoStone_cFv */
daNpc_HanjoStone_c::~daNpc_HanjoStone_c() {
    // NONMATCHING
}

/* 80A000A8-80A001FC 007108 0154+00 1/1 0/0 0/0 .text
 * __ct__13daNpc_Hanjo_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Hanjo_c::daNpc_Hanjo_c(daNpcT_faceMotionAnmData_c const* param_0,
                                 daNpcT_motionAnmData_c const* param_1,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                 int param_3,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                 int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80A001FC-80A002EC 00725C 00F0+00 1/1 0/0 0/0 .text            __ct__18daNpc_HanjoStone_cFv */
daNpc_HanjoStone_c::daNpc_HanjoStone_c() {
    // NONMATCHING
}

/* 80A002EC-80A00334 00734C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80A00334-80A0033C 007394 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__13daNpc_Hanjo_cFv */
s32 daNpc_Hanjo_c::getEyeballMaterialNo() {
    return 2;
}

/* 80A0033C-80A00358 00739C 001C+00 2/2 0/0 0/0 .text            getPos__18daNpc_HanjoStone_cFv */
void daNpc_HanjoStone_c::getPos() {
    // NONMATCHING
}

/* 80A00358-80A00374 0073B8 001C+00 1/1 0/0 0/0 .text            getOld__18daNpc_HanjoStone_cFv */
void daNpc_HanjoStone_c::getOld() {
    // NONMATCHING
}

/* 80A00374-80A004A8 0073D4 0134+00 1/1 0/0 0/0 .text posMoveF__18daNpc_HanjoStone_cFP10fopAc_ac_c
 */
void daNpc_HanjoStone_c::posMoveF(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A004A8-80A004D0 007508 0028+00 1/1 0/0 0/0 .text            setPos__18daNpc_HanjoStone_cF4cXyz
 */
void daNpc_HanjoStone_c::setPos(cXyz param_0) {
    // NONMATCHING
}

/* 80A004D0-80A004D8 007530 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__13daNpc_Hanjo_cFv
 */
s32 daNpc_Hanjo_c::getHeadJointNo() {
    return 4;
}

/* 80A004D8-80A004E0 007538 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__13daNpc_Hanjo_cFv
 */
s32 daNpc_Hanjo_c::getNeckJointNo() {
    return 3;
}

/* 80A004E0-80A004E8 007540 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__13daNpc_Hanjo_cFv */
bool daNpc_Hanjo_c::getBackboneJointNo() {
    return true;
}

/* 80A004E8-80A00504 007548 001C+00 1/1 0/0 0/0 .text setAngle__18daNpc_HanjoStone_cF5csXyz */
void daNpc_HanjoStone_c::setAngle(csXyz param_0) {
    // NONMATCHING
}

/* 80A00504-80A00514 007564 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__13daNpc_Hanjo_cFi
 */
void daNpc_Hanjo_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80A00514-80A00524 007574 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__13daNpc_Hanjo_cFi
 */
void daNpc_Hanjo_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80A00524-80A0052C 007584 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__13daNpc_Hanjo_cFv
 */
s32 daNpc_Hanjo_c::getFootLJointNo() {
    return 22;
}

/* 80A0052C-80A00534 00758C 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__13daNpc_Hanjo_cFv
 */
s32 daNpc_Hanjo_c::getFootRJointNo() {
    return 26;
}

/* 80A00534-80A0057C 007594 0048+00 2/1 0/0 0/0 .text            __dt__19daNpc_Hanjo_Param_cFv */
daNpc_Hanjo_Param_c::~daNpc_Hanjo_Param_c() {
    // NONMATCHING
}

/* 80A0057C-80A00584 0075DC 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80A0057C() {
    // NONMATCHING
}

/* 80A00584-80A0058C 0075E4 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80A00584() {
    // NONMATCHING
}

/* 80A0058C-80A005EC 0075EC 0060+00 1/1 0/0 0/0 .text chkPointInArea__15daTag_EvtArea_cF4cXyz */
// void daTag_EvtArea_c::chkPointInArea(cXyz param_0) {
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A012F4-80A012F8 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80A012F4[4];
#pragma pop

/* 80A012F8-80A012FC 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80A012F8[4];
#pragma pop

/* 80A012FC-80A01300 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80A012FC[4];
#pragma pop

/* 80A01300-80A01304 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80A01300[4];
#pragma pop

/* 80A01304-80A01308 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A01304[4];
#pragma pop

/* 80A01308-80A0130C 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A01308[4];
#pragma pop

/* 80A0130C-80A01310 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80A0130C[4];
#pragma pop

/* 80A01310-80A01314 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80A01310[4];
#pragma pop

/* 80A01314-80A01318 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80A01314[4];
#pragma pop

/* 80A01318-80A0131C 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80A01318[4];
#pragma pop

/* 80A0131C-80A01320 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80A0131C[4];
#pragma pop

/* 80A01320-80A01324 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80A01320[4];
#pragma pop

/* 80A01324-80A01328 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80A01324[4];
#pragma pop

/* 80A01328-80A0132C 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A01328[4];
#pragma pop

/* 80A0132C-80A01330 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80A0132C[4];
#pragma pop

/* 80A01330-80A01334 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80A01330[4];
#pragma pop

/* 80A01334-80A01338 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80A01334[4];
#pragma pop

/* 80A01338-80A0133C 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80A01338[4];
#pragma pop

/* 80A0133C-80A01340 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80A0133C[4];
#pragma pop

/* 80A01340-80A01344 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80A01340[4];
#pragma pop

/* 80A01344-80A01348 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80A01344[4];
#pragma pop

/* 80A01348-80A0134C 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A01348[4];
#pragma pop

/* 80A0134C-80A01350 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A0134C[4];
#pragma pop

/* 80A01350-80A01354 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A01350[4];
#pragma pop

/* 80A01354-80A01358 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80A01354[4];
#pragma pop

/* 80A007F8-80A007F8 0001F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */