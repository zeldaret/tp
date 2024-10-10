/**
 * @file d_a_npc_besu.cpp
 * 
*/

#include "d/actor/d_a_npc_besu.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void __dt__12daNpc_Besu_cFv();
extern "C" void create__12daNpc_Besu_cFv();
extern "C" void CreateHeap__12daNpc_Besu_cFv();
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
extern "C" void Delete__12daNpc_Besu_cFv();
extern "C" void Execute__12daNpc_Besu_cFv();
extern "C" void Draw__12daNpc_Besu_cFv();
extern "C" void createHeapCallBack__12daNpc_Besu_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__12daNpc_Besu_cFP8J3DJointi();
extern "C" void getType__12daNpc_Besu_cFv();
extern "C" void isDelete__12daNpc_Besu_cFv();
extern "C" void reset__12daNpc_Besu_cFv();
extern "C" void chkNurse__12daNpc_Besu_cFv();
extern "C" void chkBesu3__12daNpc_Besu_cFv();
extern "C" void afterJntAnm__12daNpc_Besu_cFi();
extern "C" void setParam__12daNpc_Besu_cFv();
extern "C" void checkChangeEvt__12daNpc_Besu_cFv();
extern "C" void setAfterTalkMotion__12daNpc_Besu_cFv();
extern "C" void srchActors__12daNpc_Besu_cFv();
extern "C" void evtTalk__12daNpc_Besu_cFv();
extern "C" void evtCutProc__12daNpc_Besu_cFv();
extern "C" void action__12daNpc_Besu_cFv();
extern "C" void beforeMove__12daNpc_Besu_cFv();
extern "C" void setAttnPos__12daNpc_Besu_cFv();
extern "C" void setCollision__12daNpc_Besu_cFv();
extern "C" bool drawDbgInfo__12daNpc_Besu_cFv();
extern "C" void drawOtherMdl__12daNpc_Besu_cFv();
extern "C" void setCupAnm__12daNpc_Besu_cFiif();
extern "C" void afterSetMotionAnm__12daNpc_Besu_cFiifi();
extern "C" void getFaceMotionAnm__12daNpc_Besu_cF26daNpcT_faceMotionAnmData_c();
extern "C" void changeAnm__12daNpc_Besu_cFPiPi();
extern "C" void changeBck__12daNpc_Besu_cFPiPi();
extern "C" void changeBtp__12daNpc_Besu_cFPiPi();
extern "C" void changeBtk__12daNpc_Besu_cFPiPi();
extern "C" void selectAction__12daNpc_Besu_cFv();
extern "C" void chkAction__12daNpc_Besu_cFM12daNpc_Besu_cFPCvPvPv_i();
extern "C" void setAction__12daNpc_Besu_cFM12daNpc_Besu_cFPCvPvPv_i();
extern "C" void mop__12daNpc_Besu_cFii();
extern "C" void cutConversationAboutSaru__12daNpc_Besu_cFi();
extern "C" void cutConversationAboutPachinko__12daNpc_Besu_cFi();
extern "C" void cutConversationAboutWoodSwd__12daNpc_Besu_cFi();
extern "C" void cutSwdTutorial__12daNpc_Besu_cFi();
extern "C" void cutFindMonkey__12daNpc_Besu_cFi();
extern "C" void cutGetWoodSwd__12daNpc_Besu_cFi();
extern "C" void cutCacaricoConversation__12daNpc_Besu_cFi();
extern "C" void cutSurprise__12daNpc_Besu_cFi();
extern "C" void cutConversationInHotel__12daNpc_Besu_cFi();
extern "C" void cutConversationAboutDeathMt__12daNpc_Besu_cFi();
extern "C" void cutConversationAboutGoron__12daNpc_Besu_cFi();
extern "C" void cutNurse__12daNpc_Besu_cFi();
extern "C" void cutClothTry__12daNpc_Besu_cFi();
extern "C" void cutThankYou__12daNpc_Besu_cFi();
extern "C" void wait__12daNpc_Besu_cFPv();
extern "C" void swdTutorial__12daNpc_Besu_cFPv();
extern "C" void nurse__12daNpc_Besu_cFPv();
extern "C" void giveHotWater__12daNpc_Besu_cFPv();
extern "C" void talk__12daNpc_Besu_cFPv();
extern "C" static void daNpc_Besu_Create__FPv();
extern "C" static void daNpc_Besu_Delete__FPv();
extern "C" static void daNpc_Besu_Execute__FPv();
extern "C" static void daNpc_Besu_Draw__FPv();
extern "C" static bool daNpc_Besu_IsDelete__FPv();
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
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void func_8053E334(void* _this, int*);
extern "C" void func_8053E350(void* _this, int, int);
extern "C" void __sinit_d_a_npc_besu_cpp();
extern "C" void
__ct__12daNpc_Besu_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" s32 getEyeballMaterialNo__12daNpc_Besu_cFv();
extern "C" s32 getHeadJointNo__12daNpc_Besu_cFv();
extern "C" s32 getNeckJointNo__12daNpc_Besu_cFv();
extern "C" bool getBackboneJointNo__12daNpc_Besu_cFv();
extern "C" void checkChangeJoint__12daNpc_Besu_cFi();
extern "C" void checkRemoveJoint__12daNpc_Besu_cFi();
extern "C" void __dt__18daNpc_Besu_Param_cFv();
extern "C" static void func_8053E730();
extern "C" static void func_8053E738();
extern "C" u8 const m__18daNpc_Besu_Param_c[144];
extern "C" extern char const* const d_a_npc_besu__stringBase0;
extern "C" void* mCutNameList__12daNpc_Besu_c[15];
extern "C" u8 mCutList__12daNpc_Besu_c[180];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
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
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void daNpcKakashi_chkSwdTutorialStage__Fv();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void offEventBit__11dSv_event_cFUs();
extern "C" void getEventReg__11dSv_event_cCFUs();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void setGoal__16dEvent_manager_cFP4cXyz();
extern "C" void getRunEventName__16dEvent_manager_cFv();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
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
extern "C" void checkItemGet__FUci();
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
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void hide__13J3DShapeTableFv();
extern "C" void show__13J3DShapeTableFv();
extern "C" void init__12J3DFrameCtrlFs();
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
extern "C" void __register_global_object();
extern "C" void checkStartDemo13StbEvt__11daNpc_Len_cFP10fopAc_ac_cfffffff();

//
// Declarations:
//

/* ############################################################################################## */
/* 8053E908-8053E908 0001B4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8053E908 = "";
SECTION_DEAD static char const* const stringBase_8053E909 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_8053E915 = "CONVERSATION_ABOUT_SARU01";
SECTION_DEAD static char const* const stringBase_8053E92F = "CONVERSATION_ABOUT_SARU02";
SECTION_DEAD static char const* const stringBase_8053E949 = "CONVERSATION_ABOUT_PACHINKO1";
SECTION_DEAD static char const* const stringBase_8053E966 = "CONVERSATION_ABOUT_PACHINKO2";
SECTION_DEAD static char const* const stringBase_8053E983 = "CONVERSATION_ABOUT_PACHINKO3";
SECTION_DEAD static char const* const stringBase_8053E9A0 = "CACARICO_CONVERSATION";
SECTION_DEAD static char const* const stringBase_8053E9B6 = "DEMO13_STB";
SECTION_DEAD static char const* const stringBase_8053E9C1 = "SURPRISE";
SECTION_DEAD static char const* const stringBase_8053E9CA = "CONVERSATION_ABOUT_DEATHMT";
SECTION_DEAD static char const* const stringBase_8053E9E5 = "NURSE";
SECTION_DEAD static char const* const stringBase_8053E9EB = "CONVERSATION_ABOUT_ZORA";
SECTION_DEAD static char const* const stringBase_8053EA03 = "Besu";
SECTION_DEAD static char const* const stringBase_8053EA08 = "Besu_TW";
SECTION_DEAD static char const* const stringBase_8053EA10 = "Besu0";
SECTION_DEAD static char const* const stringBase_8053EA16 = "Besu1";
SECTION_DEAD static char const* const stringBase_8053EA1C = "Besu2";
SECTION_DEAD static char const* const stringBase_8053EA22 = "Besu3";
SECTION_DEAD static char const* const stringBase_8053EA28 = "Besu_p1";
SECTION_DEAD static char const* const stringBase_8053EA30 = "Len1";
SECTION_DEAD static char const* const stringBase_8053EA35 = "Taro1";
SECTION_DEAD static char const* const stringBase_8053EA3B = "Lud2";
SECTION_DEAD static char const* const stringBase_8053EA40 = "Sera";
SECTION_DEAD static char const* const stringBase_8053EA45 = "CONVERSATION_ABOUT_SARU";
SECTION_DEAD static char const* const stringBase_8053EA5D = "CONVERSATION_ABOUT_PACHINKO";
SECTION_DEAD static char const* const stringBase_8053EA79 = "CONVERSATION_ABOUT_WOODSWD";
SECTION_DEAD static char const* const stringBase_8053EA94 = "SWDTUTORIAL";
SECTION_DEAD static char const* const stringBase_8053EAA0 = "FIND_MONKEY";
SECTION_DEAD static char const* const stringBase_8053EAAC = "GET_WOODSWD";
SECTION_DEAD static char const* const stringBase_8053EAB8 = "CONVERSATION_IN_HOTEL";
SECTION_DEAD static char const* const stringBase_8053EACE = "CONVERSATION_ABOUT_GORON";
SECTION_DEAD static char const* const stringBase_8053EAE7 = "CLOTH_TRY";
SECTION_DEAD static char const* const stringBase_8053EAF1 = "THANK_YOU";
#pragma pop

/* 8053EB5C-8053EB68 000000 000C+00 3/3 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8053EB68-8053EB7C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 8053EB7C-8053EBAC 000020 0030+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[48] = {
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x05,
};

/* 8053EBAC-8053EC14 -00001 0068+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[26] = {
    (void*)&d_a_npc_besu__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0xD),
    (void*)0x0000000B,
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x27),
    (void*)0x0000000B,
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x41),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x5E),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x7B),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x98),
    (void*)0x00000009,
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0xAE),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0xB9),
    (void*)0x00000006,
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0xC2),
    (void*)0x00000005,
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0xDD),
    (void*)0x0000000A,
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0xE3),
    (void*)0x00000005,
};
#pragma pop

/* 8053EC14-8053EC44 -00001 0030+00 3/4 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[12] = {
    (void*)&d_a_npc_besu__stringBase0,
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0xFB),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x100),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x108),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x10E),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x114),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x11A),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x120),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x128),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x12D),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x133),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x138),
};

/* 8053EC44-8053EC48 0000E8 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u32 l_loadResPtrn0 = 0x010304FF;

/* 8053EC48-8053EC4C 0000EC 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u8 l_loadResPtrn1[3 + 1 /* padding */] = {
    0x03,
    0x02,
    0xFF,
    /* padding */
    0x00,
};

/* 8053EC4C-8053EC50 0000F0 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn2 */
SECTION_DATA static u8 l_loadResPtrn2[3 + 1 /* padding */] = {
    0x03,
    0x05,
    0xFF,
    /* padding */
    0x00,
};

/* 8053EC50-8053EC54 0000F4 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn3 */
SECTION_DATA static u8 l_loadResPtrn3[3 + 1 /* padding */] = {
    0x03,
    0x06,
    0xFF,
    /* padding */
    0x00,
};

/* 8053EC54-8053EC58 0000F8 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn4 */
SECTION_DATA static u32 l_loadResPtrn4 = 0x030406FF;

/* 8053EC58-8053EC5C 0000FC 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn5 */
SECTION_DATA static u8 l_loadResPtrn5[3 + 1 /* padding */] = {
    0x01,
    0x07,
    0xFF,
    /* padding */
    0x00,
};

/* 8053EC5C-8053EC64 000100 0007+01 1/0 0/0 0/0 .data            l_loadResPtrn9 */
SECTION_DATA static u8 l_loadResPtrn9[7 + 1 /* padding */] = {
    0x01,
    0x02,
    0x03,
    0x04,
    0x05,
    0x06,
    0xFF,
    /* padding */
    0x00,
};

/* 8053EC64-8053ECB0 -00001 004C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[19] = {
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn1, (void*)&l_loadResPtrn4,
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn3, (void*)&l_loadResPtrn2, (void*)&l_loadResPtrn2,
    (void*)&l_loadResPtrn2, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn4,
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn5, (void*)&l_loadResPtrn9,
};

/* 8053ECB0-8053EFF8 000154 0348+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[840] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x12,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x1A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x33,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x35, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x36, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x37, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x2F,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x17,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x2B,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x30,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 8053EFF8-8053F394 00049C 039C+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[924] = {
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 8053F394-8053F564 000838 01D0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[464] = {
    0x00, 0x03, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x01, 0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0x00, 0x01, 0x00, 0x0B, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x01, 0x00, 0x14, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x15, 0xFF, 0x01, 0x00, 0x16, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x17, 0xFF, 0x01, 0x00, 0x18, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x19, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x16, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 8053F564-8053F744 000A08 01E0+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[480] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x03, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1C, 0xFF, 0x01, 0x00, 0x1D, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1E, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1F, 0xFF, 0x01, 0x00, 0x20, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0x00, 0x01, 0x00, 0x0D, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x15, 0xFF, 0x01, 0x00, 0x16, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x17, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x18, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x19, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 8053F744-8053F780 -00001 003C+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_Besu_c */
SECTION_DATA void* daNpc_Besu_c::mCutNameList[15] = {
    (void*)&d_a_npc_besu__stringBase0,
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x13D),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x155),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x171),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x18C),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x198),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x1A4),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x98),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0xB9),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x1B0),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0xC2),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x1C6),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0xDD),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x1DF),
    (void*)(((char*)&d_a_npc_besu__stringBase0) + 0x1E9),
};

/* 8053F780-8053F78C -00001 000C+00 0/1 0/0 0/0 .data            @3908 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3908[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutSaru__12daNpc_Besu_cFi,
};
#pragma pop

/* 8053F78C-8053F798 -00001 000C+00 0/1 0/0 0/0 .data            @3909 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3909[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutPachinko__12daNpc_Besu_cFi,
};
#pragma pop

/* 8053F798-8053F7A4 -00001 000C+00 0/1 0/0 0/0 .data            @3910 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3910[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutWoodSwd__12daNpc_Besu_cFi,
};
#pragma pop

/* 8053F7A4-8053F7B0 -00001 000C+00 0/1 0/0 0/0 .data            @3911 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3911[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutSwdTutorial__12daNpc_Besu_cFi,
};
#pragma pop

/* 8053F7B0-8053F7BC -00001 000C+00 0/1 0/0 0/0 .data            @3912 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3912[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutFindMonkey__12daNpc_Besu_cFi,
};
#pragma pop

/* 8053F7BC-8053F7C8 -00001 000C+00 0/1 0/0 0/0 .data            @3913 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3913[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutGetWoodSwd__12daNpc_Besu_cFi,
};
#pragma pop

/* 8053F7C8-8053F7D4 -00001 000C+00 0/1 0/0 0/0 .data            @3914 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3914[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutCacaricoConversation__12daNpc_Besu_cFi,
};
#pragma pop

/* 8053F7D4-8053F7E0 -00001 000C+00 0/1 0/0 0/0 .data            @3915 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3915[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutSurprise__12daNpc_Besu_cFi,
};
#pragma pop

/* 8053F7E0-8053F7EC -00001 000C+00 0/1 0/0 0/0 .data            @3916 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3916[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationInHotel__12daNpc_Besu_cFi,
};
#pragma pop

/* 8053F7EC-8053F7F8 -00001 000C+00 0/1 0/0 0/0 .data            @3917 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3917[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutDeathMt__12daNpc_Besu_cFi,
};
#pragma pop

/* 8053F7F8-8053F804 -00001 000C+00 0/1 0/0 0/0 .data            @3918 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3918[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutGoron__12daNpc_Besu_cFi,
};
#pragma pop

/* 8053F804-8053F810 -00001 000C+00 0/1 0/0 0/0 .data            @3919 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3919[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutNurse__12daNpc_Besu_cFi,
};
#pragma pop

/* 8053F810-8053F81C -00001 000C+00 0/1 0/0 0/0 .data            @3920 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3920[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutClothTry__12daNpc_Besu_cFi,
};
#pragma pop

/* 8053F81C-8053F828 -00001 000C+00 0/1 0/0 0/0 .data            @3921 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3921[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutThankYou__12daNpc_Besu_cFi,
};
#pragma pop

/* 8053F828-8053F8DC 000CCC 00B4+00 1/2 0/0 0/0 .data            mCutList__12daNpc_Besu_c */
SECTION_DATA u8 daNpc_Besu_c::mCutList[180] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8053F8DC-8053F924 -00001 0048+00 1/1 0/0 0/0 .data            @4621 */
SECTION_DATA static void* lit_4621[18] = {
    (void*)(((char*)getType__12daNpc_Besu_cFv) + 0x28),
    (void*)(((char*)getType__12daNpc_Besu_cFv) + 0x30),
    (void*)(((char*)getType__12daNpc_Besu_cFv) + 0x38),
    (void*)(((char*)getType__12daNpc_Besu_cFv) + 0x40),
    (void*)(((char*)getType__12daNpc_Besu_cFv) + 0x48),
    (void*)(((char*)getType__12daNpc_Besu_cFv) + 0x50),
    (void*)(((char*)getType__12daNpc_Besu_cFv) + 0x58),
    (void*)(((char*)getType__12daNpc_Besu_cFv) + 0x60),
    (void*)(((char*)getType__12daNpc_Besu_cFv) + 0x68),
    (void*)(((char*)getType__12daNpc_Besu_cFv) + 0x70),
    (void*)(((char*)getType__12daNpc_Besu_cFv) + 0x78),
    (void*)(((char*)getType__12daNpc_Besu_cFv) + 0x80),
    (void*)(((char*)getType__12daNpc_Besu_cFv) + 0x88),
    (void*)(((char*)getType__12daNpc_Besu_cFv) + 0x90),
    (void*)(((char*)getType__12daNpc_Besu_cFv) + 0x98),
    (void*)(((char*)getType__12daNpc_Besu_cFv) + 0xA0),
    (void*)(((char*)getType__12daNpc_Besu_cFv) + 0xA8),
    (void*)(((char*)getType__12daNpc_Besu_cFv) + 0xB0),
};

/* 8053F924-8053F96C -00001 0048+00 1/1 0/0 0/0 .data            @4668 */
SECTION_DATA static void* lit_4668[18] = {
    (void*)(((char*)isDelete__12daNpc_Besu_cFv) + 0x34),
    (void*)(((char*)isDelete__12daNpc_Besu_cFv) + 0x64),
    (void*)(((char*)isDelete__12daNpc_Besu_cFv) + 0x78),
    (void*)(((char*)isDelete__12daNpc_Besu_cFv) + 0x80),
    (void*)(((char*)isDelete__12daNpc_Besu_cFv) + 0xB0),
    (void*)(((char*)isDelete__12daNpc_Besu_cFv) + 0xE0),
    (void*)(((char*)isDelete__12daNpc_Besu_cFv) + 0x110),
    (void*)(((char*)isDelete__12daNpc_Besu_cFv) + 0x140),
    (void*)(((char*)isDelete__12daNpc_Besu_cFv) + 0x170),
    (void*)(((char*)isDelete__12daNpc_Besu_cFv) + 0x1A0),
    (void*)(((char*)isDelete__12daNpc_Besu_cFv) + 0x1A8),
    (void*)(((char*)isDelete__12daNpc_Besu_cFv) + 0x1BC),
    (void*)(((char*)isDelete__12daNpc_Besu_cFv) + 0x1C8),
    (void*)(((char*)isDelete__12daNpc_Besu_cFv) + 0x1F8),
    (void*)(((char*)isDelete__12daNpc_Besu_cFv) + 0x228),
    (void*)(((char*)isDelete__12daNpc_Besu_cFv) + 0x230),
    (void*)(((char*)isDelete__12daNpc_Besu_cFv) + 0x260),
    (void*)(((char*)isDelete__12daNpc_Besu_cFv) + 0x290),
};

/* 8053F96C-8053F9B0 -00001 0044+00 1/1 0/0 0/0 .data            @4719 */
SECTION_DATA static void* lit_4719[17] = {
    (void*)(((char*)reset__12daNpc_Besu_cFv) + 0x168),
    (void*)(((char*)reset__12daNpc_Besu_cFv) + 0x170),
    (void*)(((char*)reset__12daNpc_Besu_cFv) + 0x1B0),
    (void*)(((char*)reset__12daNpc_Besu_cFv) + 0x1B0),
    (void*)(((char*)reset__12daNpc_Besu_cFv) + 0x1B0),
    (void*)(((char*)reset__12daNpc_Besu_cFv) + 0x1B0),
    (void*)(((char*)reset__12daNpc_Besu_cFv) + 0x190),
    (void*)(((char*)reset__12daNpc_Besu_cFv) + 0x19C),
    (void*)(((char*)reset__12daNpc_Besu_cFv) + 0x1A8),
    (void*)(((char*)reset__12daNpc_Besu_cFv) + 0x1B0),
    (void*)(((char*)reset__12daNpc_Besu_cFv) + 0x1B0),
    (void*)(((char*)reset__12daNpc_Besu_cFv) + 0x1B0),
    (void*)(((char*)reset__12daNpc_Besu_cFv) + 0x1B0),
    (void*)(((char*)reset__12daNpc_Besu_cFv) + 0x1B0),
    (void*)(((char*)reset__12daNpc_Besu_cFv) + 0x1B0),
    (void*)(((char*)reset__12daNpc_Besu_cFv) + 0x1B0),
    (void*)(((char*)reset__12daNpc_Besu_cFv) + 0x1B0),
};

/* 8053F9B0-8053F9BC -00001 000C+00 1/1 0/0 0/0 .data            @4829 */
SECTION_DATA static void* lit_4829[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Besu_cFPv,
};

/* 8053F9BC-8053FA04 -00001 0048+00 1/1 0/0 0/0 .data            @4875 */
SECTION_DATA static void* lit_4875[18] = {
    (void*)(((char*)checkChangeEvt__12daNpc_Besu_cFv) + 0x1A8),
    (void*)(((char*)checkChangeEvt__12daNpc_Besu_cFv) + 0x1A8),
    (void*)(((char*)checkChangeEvt__12daNpc_Besu_cFv) + 0x1A8),
    (void*)(((char*)checkChangeEvt__12daNpc_Besu_cFv) + 0xC0),
    (void*)(((char*)checkChangeEvt__12daNpc_Besu_cFv) + 0xC0),
    (void*)(((char*)checkChangeEvt__12daNpc_Besu_cFv) + 0x1A8),
    (void*)(((char*)checkChangeEvt__12daNpc_Besu_cFv) + 0xD8),
    (void*)(((char*)checkChangeEvt__12daNpc_Besu_cFv) + 0xF0),
    (void*)(((char*)checkChangeEvt__12daNpc_Besu_cFv) + 0x108),
    (void*)(((char*)checkChangeEvt__12daNpc_Besu_cFv) + 0x1A8),
    (void*)(((char*)checkChangeEvt__12daNpc_Besu_cFv) + 0x1A8),
    (void*)(((char*)checkChangeEvt__12daNpc_Besu_cFv) + 0x120),
    (void*)(((char*)checkChangeEvt__12daNpc_Besu_cFv) + 0x1A8),
    (void*)(((char*)checkChangeEvt__12daNpc_Besu_cFv) + 0x1A8),
    (void*)(((char*)checkChangeEvt__12daNpc_Besu_cFv) + 0x1A8),
    (void*)(((char*)checkChangeEvt__12daNpc_Besu_cFv) + 0x1A8),
    (void*)(((char*)checkChangeEvt__12daNpc_Besu_cFv) + 0x1A8),
    (void*)(((char*)checkChangeEvt__12daNpc_Besu_cFv) + 0x174),
};

/* 8053FA04-8053FA34 -00001 0030+00 1/1 0/0 0/0 .data            @4895 */
SECTION_DATA static void* lit_4895[12] = {
    (void*)(((char*)setAfterTalkMotion__12daNpc_Besu_cFv) + 0x64),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Besu_cFv) + 0x40),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Besu_cFv) + 0x48),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Besu_cFv) + 0x64),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Besu_cFv) + 0x64),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Besu_cFv) + 0x64),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Besu_cFv) + 0x64),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Besu_cFv) + 0x64),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Besu_cFv) + 0x50),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Besu_cFv) + 0x64),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Besu_cFv) + 0x58),
    (void*)(((char*)setAfterTalkMotion__12daNpc_Besu_cFv) + 0x60),
};

/* 8053FA34-8053FA7C -00001 0048+00 1/1 0/0 0/0 .data            @4948 */
SECTION_DATA static void* lit_4948[18] = {
    (void*)(((char*)srchActors__12daNpc_Besu_cFv) + 0x38),
    (void*)(((char*)srchActors__12daNpc_Besu_cFv) + 0x280),
    (void*)(((char*)srchActors__12daNpc_Besu_cFv) + 0x8C),
    (void*)(((char*)srchActors__12daNpc_Besu_cFv) + 0x280),
    (void*)(((char*)srchActors__12daNpc_Besu_cFv) + 0x280),
    (void*)(((char*)srchActors__12daNpc_Besu_cFv) + 0x280),
    (void*)(((char*)srchActors__12daNpc_Besu_cFv) + 0x280),
    (void*)(((char*)srchActors__12daNpc_Besu_cFv) + 0x280),
    (void*)(((char*)srchActors__12daNpc_Besu_cFv) + 0x280),
    (void*)(((char*)srchActors__12daNpc_Besu_cFv) + 0x280),
    (void*)(((char*)srchActors__12daNpc_Besu_cFv) + 0x280),
    (void*)(((char*)srchActors__12daNpc_Besu_cFv) + 0xB8),
    (void*)(((char*)srchActors__12daNpc_Besu_cFv) + 0x10C),
    (void*)(((char*)srchActors__12daNpc_Besu_cFv) + 0x160),
    (void*)(((char*)srchActors__12daNpc_Besu_cFv) + 0x1DC),
    (void*)(((char*)srchActors__12daNpc_Besu_cFv) + 0x280),
    (void*)(((char*)srchActors__12daNpc_Besu_cFv) + 0x280),
    (void*)(((char*)srchActors__12daNpc_Besu_cFv) + 0x230),
};

/* 8053FA7C-8053FA88 -00001 000C+00 1/1 0/0 0/0 .data            @4952 */
SECTION_DATA static void* lit_4952[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Besu_cFPv,
};

/* 8053FA88-8053FA94 -00001 000C+00 1/1 0/0 0/0 .data            @4957 */
SECTION_DATA static void* lit_4957[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Besu_cFPv,
};

/* 8053FA94-8053FAA0 -00001 000C+00 1/1 0/0 0/0 .data            @5059 */
SECTION_DATA static void* lit_5059[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)nurse__12daNpc_Besu_cFPv,
};

/* 8053FAA0-8053FAAC -00001 000C+00 1/1 0/0 0/0 .data            @5060 */
SECTION_DATA static void* lit_5060[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)giveHotWater__12daNpc_Besu_cFPv,
};

/* 8053FAAC-8053FBB4 000F50 0108+00 1/1 0/0 0/0 .data            cupAnmData$5432 */
SECTION_DATA static u8 cupAnmData[264] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x05,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
};

/* 8053FBB4-8053FBC0 -00001 000C+00 0/1 0/0 0/0 .data            @5517 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5517[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)nurse__12daNpc_Besu_cFPv,
};
#pragma pop

/* 8053FBC0-8053FBCC -00001 000C+00 0/1 0/0 0/0 .data            @5519 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5519[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)giveHotWater__12daNpc_Besu_cFPv,
};
#pragma pop

/* 8053FBCC-8053FBD8 -00001 000C+00 0/1 0/0 0/0 .data            @5521 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5521[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)nurse__12daNpc_Besu_cFPv,
};
#pragma pop

/* 8053FBD8-8053FBE4 -00001 000C+00 0/1 0/0 0/0 .data            @5525 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5525[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)swdTutorial__12daNpc_Besu_cFPv,
};
#pragma pop

/* 8053FBE4-8053FBF0 -00001 000C+00 0/1 0/0 0/0 .data            @5527 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5527[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_Besu_cFPv,
};
#pragma pop

/* 8053FBF0-8053FBFC -00001 000C+00 0/1 0/0 0/0 .data            @5529 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5529[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_Besu_cFPv,
};
#pragma pop

/* 8053FBFC-8053FC54 -00001 0058+00 1/1 0/0 0/0 .data            @5771 */
SECTION_DATA static void* lit_5771[22] = {
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x204),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x20C),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x20C),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x20C),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x20C),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x5F8),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x5F8),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x5F8),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x5F8),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x5F8),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x20C),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x20C),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x20C),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x5F8),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x5F8),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x5F8),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x5F8),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x5F8),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x5F8),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x5F8),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x584),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x5D8),
};

/* 8053FC54-8053FCAC -00001 0058+00 1/1 0/0 0/0 .data            @5770 */
SECTION_DATA static void* lit_5770[22] = {
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x1CC),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x180),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x1CC),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x1CC),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x1CC),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x1CC),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x1CC),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x1CC),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x1CC),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x1CC),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x198),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x1CC),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x1CC),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x1CC),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x1CC),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x1CC),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x1CC),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x1CC),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x1CC),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x1CC),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x1BC),
    (void*)(((char*)cutConversationAboutPachinko__12daNpc_Besu_cFi) + 0x1CC),
};

/* 8053FCAC-8053FCCC -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Besu_MethodTable */
static actor_method_class daNpc_Besu_MethodTable = {
    (process_method_func)daNpc_Besu_Create__FPv,
    (process_method_func)daNpc_Besu_Delete__FPv,
    (process_method_func)daNpc_Besu_Execute__FPv,
    (process_method_func)daNpc_Besu_IsDelete__FPv,
    (process_method_func)daNpc_Besu_Draw__FPv,
};

/* 8053FCCC-8053FCFC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_BESU */
extern actor_process_profile_definition g_profile_NPC_BESU = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_BESU,           // mProcName
  &g_fpcLf_Method.mBase,   // sub_method
  sizeof(daNpc_Besu_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  323,                     // mPriority
  &daNpc_Besu_MethodTable, // sub_method
  0x00040108,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 8053FCFC-8053FD08 0011A0 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 8053FD08-8053FD14 0011AC 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8053FD14-8053FD38 0011B8 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8053E738,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8053E730,
};

/* 8053FD38-8053FD44 0011DC 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8053FD44-8053FD50 0011E8 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8053FD50-8053FD5C 0011F4 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8053FD5C-8053FD68 001200 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 8053FD68-8053FD74 00120C 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 8053FD74-8053FD80 001218 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 8053FD80-8053FD8C 001224 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8053FD8C-8053FD98 001230 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 8053FD98-8053FE5C 00123C 00C4+00 2/2 0/0 0/0 .data            __vt__12daNpc_Besu_c */
SECTION_DATA extern void* __vt__12daNpc_Besu_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daNpc_Besu_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__12daNpc_Besu_cFi,
    (void*)checkRemoveJoint__12daNpc_Besu_cFi,
    (void*)getBackboneJointNo__12daNpc_Besu_cFv,
    (void*)getNeckJointNo__12daNpc_Besu_cFv,
    (void*)getHeadJointNo__12daNpc_Besu_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__12daNpc_Besu_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__12daNpc_Besu_cFi,
    (void*)setParam__12daNpc_Besu_cFv,
    (void*)checkChangeEvt__12daNpc_Besu_cFv,
    (void*)evtTalk__12daNpc_Besu_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__12daNpc_Besu_cFv,
    (void*)setAfterTalkMotion__12daNpc_Besu_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__12daNpc_Besu_cFv,
    (void*)beforeMove__12daNpc_Besu_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__12daNpc_Besu_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__12daNpc_Besu_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__12daNpc_Besu_cFv,
    (void*)drawOtherMdl__12daNpc_Besu_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__12daNpc_Besu_cFiifi,
    (void*)getFaceMotionAnm__12daNpc_Besu_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__12daNpc_Besu_cFPiPi,
    (void*)changeBck__12daNpc_Besu_cFPiPi,
    (void*)changeBtp__12daNpc_Besu_cFPiPi,
    (void*)changeBtk__12daNpc_Besu_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
};

/* 80536E4C-8053701C 0000EC 01D0+00 1/0 0/0 0/0 .text            __dt__12daNpc_Besu_cFv */
daNpc_Besu_c::~daNpc_Besu_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8053E754-8053E7E4 000000 0090+00 13/13 0/0 0/0 .rodata          m__18daNpc_Besu_Param_c */
SECTION_RODATA u8 const daNpc_Besu_Param_c::m[144] = {
    0x43, 0x20, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x0C, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0xC1, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x70, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00, 0x42, 0x8C, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8053E754, &daNpc_Besu_Param_c::m);

/* 8053E7E4-8053E830 000090 004C+00 0/1 0/0 0/0 .rodata          heapSize$4091 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[76] = {
    0x00, 0x00, 0x35, 0xC0, 0x00, 0x00, 0x35, 0xC0, 0x00, 0x00, 0x35, 0x10, 0x00, 0x00, 0x35, 0xD0,
    0x00, 0x00, 0x35, 0xD0, 0x00, 0x00, 0x35, 0xD0, 0x00, 0x00, 0x3D, 0xC0, 0x00, 0x00, 0x3E, 0xC0,
    0x00, 0x00, 0x3D, 0xD0, 0x00, 0x00, 0x35, 0xC0, 0x00, 0x00, 0x35, 0xC0, 0x00, 0x00, 0x35, 0xD0,
    0x00, 0x00, 0x35, 0xC0, 0x00, 0x00, 0x35, 0xC0, 0x00, 0x00, 0x35, 0xD0, 0x00, 0x00, 0x35, 0xC0,
    0x00, 0x00, 0x35, 0xC0, 0x00, 0x00, 0x35, 0xC0, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8053E7E4, &heapSize);
#pragma pop

/* 8053E830-8053E834 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4162 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4162 = -200.0f;
COMPILER_STRIP_GATE(0x8053E830, &lit_4162);
#pragma pop

/* 8053E834-8053E838 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4163 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4163 = -100.0f;
COMPILER_STRIP_GATE(0x8053E834, &lit_4163);
#pragma pop

/* 8053E838-8053E83C 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4164 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4164 = 200.0f;
COMPILER_STRIP_GATE(0x8053E838, &lit_4164);
#pragma pop

/* 8053E83C-8053E840 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4165 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4165 = 300.0f;
COMPILER_STRIP_GATE(0x8053E83C, &lit_4165);
#pragma pop

/* 8053E840-8053E844 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4166 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4166 = -1000000000.0f;
COMPILER_STRIP_GATE(0x8053E840, &lit_4166);
#pragma pop

/* 8053701C-805372FC 0002BC 02E0+00 1/1 0/0 0/0 .text            create__12daNpc_Besu_cFv */
void daNpc_Besu_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8053E844-8053E848 0000F0 0004+00 14/24 0/0 0/0 .rodata          @4337 */
SECTION_RODATA static u8 const lit_4337[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8053E844, &lit_4337);

/* 8053E848-8053E84C 0000F4 0004+00 0/2 0/0 0/0 .rodata          @4338 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4338 = 65536.0f;
COMPILER_STRIP_GATE(0x8053E848, &lit_4338);
#pragma pop

/* 8053E84C-8053E850 0000F8 0004+00 0/3 0/0 0/0 .rodata          @4339 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4339 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x8053E84C, &lit_4339);
#pragma pop

/* 8053E850-8053E854 0000FC 0004+00 2/5 0/0 0/0 .rodata          @4531 */
SECTION_RODATA static f32 const lit_4531 = 1.0f;
COMPILER_STRIP_GATE(0x8053E850, &lit_4531);

/* 805372FC-80537758 00059C 045C+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_Besu_cFv */
void daNpc_Besu_c::CreateHeap() {
    // NONMATCHING
}

/* 80537758-80537794 0009F8 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80537794-805377AC 000A34 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 805377AC-805377E8 000A4C 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 805377E8-80537800 000A88 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80537800-80537848 000AA0 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80537848-8053786C 000AE8 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 8053786C-805378A8 000B0C 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 805378A8-805378C0 000B48 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 805378C0-805378FC 000B60 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 805378FC-80537914 000B9C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80537914-80537948 000BB4 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_Besu_cFv */
void daNpc_Besu_c::Delete() {
    // NONMATCHING
}

/* 80537948-80537968 000BE8 0020+00 2/2 0/0 0/0 .text            Execute__12daNpc_Besu_cFv */
void daNpc_Besu_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8053E854-8053E858 000100 0004+00 1/2 0/0 0/0 .rodata          @4580 */
SECTION_RODATA static f32 const lit_4580 = 100.0f;
COMPILER_STRIP_GATE(0x8053E854, &lit_4580);

/* 80537968-805379FC 000C08 0094+00 1/1 0/0 0/0 .text            Draw__12daNpc_Besu_cFv */
void daNpc_Besu_c::Draw() {
    // NONMATCHING
}

/* 805379FC-80537A1C 000C9C 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daNpc_Besu_cFP10fopAc_ac_c             */
void daNpc_Besu_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80537A1C-80537A74 000CBC 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__12daNpc_Besu_cFP8J3DJointi                */
void daNpc_Besu_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80537A74-80537B34 000D14 00C0+00 2/1 0/0 0/0 .text            getType__12daNpc_Besu_cFv */
void daNpc_Besu_c::getType() {
    // NONMATCHING
}

/* 80537B34-80537DE4 000DD4 02B0+00 2/1 0/0 0/0 .text            isDelete__12daNpc_Besu_cFv */
void daNpc_Besu_c::isDelete() {
    // NONMATCHING
}

/* 80537DE4-80537FD0 001084 01EC+00 2/1 0/0 0/0 .text            reset__12daNpc_Besu_cFv */
void daNpc_Besu_c::reset() {
    // NONMATCHING
}

/* 80537FD0-80537FFC 001270 002C+00 6/6 0/0 0/0 .text            chkNurse__12daNpc_Besu_cFv */
void daNpc_Besu_c::chkNurse() {
    // NONMATCHING
}

/* 80537FFC-80538028 00129C 002C+00 7/7 0/0 0/0 .text            chkBesu3__12daNpc_Besu_cFv */
void daNpc_Besu_c::chkBesu3() {
    // NONMATCHING
}

/* 80538028-805380A4 0012C8 007C+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_Besu_cFi */
void daNpc_Besu_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8053E858-8053E85C 000104 0004+00 0/1 0/0 0/0 .rodata          @4818 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4818 = 110.0f;
COMPILER_STRIP_GATE(0x8053E858, &lit_4818);
#pragma pop

/* 8053E85C-8053E860 000108 0004+00 0/1 0/0 0/0 .rodata          @4819 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4819 = 70.0f;
COMPILER_STRIP_GATE(0x8053E85C, &lit_4819);
#pragma pop

/* 8053E860-8053E864 00010C 0004+00 0/2 0/0 0/0 .rodata          @4820 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4820 = 60.0f;
COMPILER_STRIP_GATE(0x8053E860, &lit_4820);
#pragma pop

/* 8053E864-8053E868 000110 0004+00 0/1 0/0 0/0 .rodata          @4821 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4821 = 180.0f;
COMPILER_STRIP_GATE(0x8053E864, &lit_4821);
#pragma pop

/* 8053E868-8053E86C 000114 0004+00 0/1 0/0 0/0 .rodata          @4822 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4822 = 500.0f;
COMPILER_STRIP_GATE(0x8053E868, &lit_4822);
#pragma pop

/* 805380A4-805382D0 001344 022C+00 1/0 0/0 0/0 .text            setParam__12daNpc_Besu_cFv */
void daNpc_Besu_c::setParam() {
    // NONMATCHING
}

/* 805382D0-80538490 001570 01C0+00 2/0 0/0 0/0 .text            checkChangeEvt__12daNpc_Besu_cFv */
void daNpc_Besu_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8053E86C-8053E870 000118 0004+00 8/12 0/0 0/0 .rodata          @4894 */
SECTION_RODATA static f32 const lit_4894 = -1.0f;
COMPILER_STRIP_GATE(0x8053E86C, &lit_4894);

/* 80538490-8053853C 001730 00AC+00 2/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_Besu_cFv */
void daNpc_Besu_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 8053853C-805387D0 0017DC 0294+00 2/1 0/0 0/0 .text            srchActors__12daNpc_Besu_cFv */
void daNpc_Besu_c::srchActors() {
    // NONMATCHING
}

/* 805387D0-80538870 001A70 00A0+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_Besu_cFv */
void daNpc_Besu_c::evtTalk() {
    // NONMATCHING
}

/* 80538870-80538938 001B10 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_Besu_cFv */
void daNpc_Besu_c::evtCutProc() {
    // NONMATCHING
}

/* 80538938-80538B54 001BD8 021C+00 1/0 0/0 0/0 .text            action__12daNpc_Besu_cFv */
void daNpc_Besu_c::action() {
    // NONMATCHING
}

/* 80538B54-80538C18 001DF4 00C4+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_Besu_cFv */
void daNpc_Besu_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8053E870-8053E874 00011C 0004+00 0/2 0/0 0/0 .rodata          @5201 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5201 = 10.0f;
COMPILER_STRIP_GATE(0x8053E870, &lit_5201);
#pragma pop

/* 8053E874-8053E878 000120 0004+00 0/2 0/0 0/0 .rodata          @5202 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5202 = 30.0f;
COMPILER_STRIP_GATE(0x8053E874, &lit_5202);
#pragma pop

/* 8053E878-8053E87C 000124 0004+00 0/1 0/0 0/0 .rodata          @5203 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5203 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x8053E878, &lit_5203);
#pragma pop

/* 8053E87C-8053E880 000128 0004+00 0/1 0/0 0/0 .rodata          @5204 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5204 = -10.0f;
COMPILER_STRIP_GATE(0x8053E87C, &lit_5204);
#pragma pop

/* 8053E880-8053E884 00012C 0004+00 0/2 0/0 0/0 .rodata          @5205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5205 = 84.0f;
COMPILER_STRIP_GATE(0x8053E880, &lit_5205);
#pragma pop

/* 8053E884-8053E888 000130 0004+00 0/1 0/0 0/0 .rodata          @5206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5206 = 130.0f;
COMPILER_STRIP_GATE(0x8053E884, &lit_5206);
#pragma pop

/* 8053E888-8053E88C 000134 0004+00 0/1 0/0 0/0 .rodata          @5207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5207 = 75.0f;
COMPILER_STRIP_GATE(0x8053E888, &lit_5207);
#pragma pop

/* 8053E88C-8053E890 000138 0004+00 0/1 0/0 0/0 .rodata          @5208 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5208 = 40.0f;
COMPILER_STRIP_GATE(0x8053E88C, &lit_5208);
#pragma pop

/* 8053E890-8053E894 00013C 0004+00 0/1 0/0 0/0 .rodata          @5209 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5209 = 80.0f;
COMPILER_STRIP_GATE(0x8053E890, &lit_5209);
#pragma pop

/* 8053E894-8053E89C 000140 0004+04 0/2 0/0 0/0 .rodata          @5210 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5210[1 + 1 /* padding */] = {
    20.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8053E894, &lit_5210);
#pragma pop

/* 8053E89C-8053E8A4 000148 0008+00 2/4 0/0 0/0 .rodata          @5212 */
SECTION_RODATA static u8 const lit_5212[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8053E89C, &lit_5212);

/* 80538C18-805391B8 001EB8 05A0+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_Besu_cFv */
void daNpc_Besu_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8053E8A4-8053E8AC 000150 0008+00 0/2 0/0 0/0 .rodata          @5270 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5270[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8053E8A4, &lit_5270);
#pragma pop

/* 8053E8AC-8053E8B4 000158 0008+00 0/2 0/0 0/0 .rodata          @5271 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5271[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8053E8AC, &lit_5271);
#pragma pop

/* 8053E8B4-8053E8BC 000160 0008+00 0/2 0/0 0/0 .rodata          @5272 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5272[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8053E8B4, &lit_5272);
#pragma pop

/* 8053E8BC-8053E8C0 000168 0004+00 0/1 0/0 0/0 .rodata          @5345 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5345 = 0x427AE148;
COMPILER_STRIP_GATE(0x8053E8BC, &lit_5345);
#pragma pop

/* 8053E8C0-8053E8C4 00016C 0004+00 0/1 0/0 0/0 .rodata          @5346 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5346 = 85.0f;
COMPILER_STRIP_GATE(0x8053E8C0, &lit_5346);
#pragma pop

/* 8053E8C4-8053E8C8 000170 0004+00 0/1 0/0 0/0 .rodata          @5347 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5347 = 120.0f;
COMPILER_STRIP_GATE(0x8053E8C4, &lit_5347);
#pragma pop

/* 805391B8-80539494 002458 02DC+00 1/0 0/0 0/0 .text            setCollision__12daNpc_Besu_cFv */
void daNpc_Besu_c::setCollision() {
    // NONMATCHING
}

/* 80539494-8053949C 002734 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_Besu_cFv */
bool daNpc_Besu_c::drawDbgInfo() {
    return false;
}

/* ############################################################################################## */
/* 8053E8C8-8053E8CC 000174 0004+00 1/1 0/0 0/0 .rodata          jointNo$5355 */
SECTION_RODATA static u8 const jointNo[4] = {
    0x00,
    0x00,
    0x00,
    0x0E,
};
COMPILER_STRIP_GATE(0x8053E8C8, &jointNo);

/* 8053949C-805395F4 00273C 0158+00 1/0 0/0 0/0 .text            drawOtherMdl__12daNpc_Besu_cFv */
void daNpc_Besu_c::drawOtherMdl() {
    // NONMATCHING
}

/* 805395F4-805396C4 002894 00D0+00 1/1 0/0 0/0 .text            setCupAnm__12daNpc_Besu_cFiif */
void daNpc_Besu_c::setCupAnm(int param_0, int param_1, f32 param_2) {
    // NONMATCHING
}

/* 805396C4-805396F8 002964 0034+00 1/0 0/0 0/0 .text afterSetMotionAnm__12daNpc_Besu_cFiifi */
void daNpc_Besu_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    // NONMATCHING
}

/* 805396F8-805397B0 002998 00B8+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__12daNpc_Besu_cF26daNpcT_faceMotionAnmData_c */
void daNpc_Besu_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
    // NONMATCHING
}

/* 805397B0-80539840 002A50 0090+00 1/0 0/0 0/0 .text            changeAnm__12daNpc_Besu_cFPiPi */
void daNpc_Besu_c::changeAnm(int* param_0, int* param_1) {
    // NONMATCHING
}

/* 80539840-805398DC 002AE0 009C+00 1/0 0/0 0/0 .text            changeBck__12daNpc_Besu_cFPiPi */
void daNpc_Besu_c::changeBck(int* param_0, int* param_1) {
    // NONMATCHING
}

/* 805398DC-80539968 002B7C 008C+00 1/0 0/0 0/0 .text            changeBtp__12daNpc_Besu_cFPiPi */
void daNpc_Besu_c::changeBtp(int* param_0, int* param_1) {
    // NONMATCHING
}

/* 80539968-80539994 002C08 002C+00 1/0 0/0 0/0 .text            changeBtk__12daNpc_Besu_cFPiPi */
void daNpc_Besu_c::changeBtk(int* param_0, int* param_1) {
    // NONMATCHING
}

/* 80539994-80539ACC 002C34 0138+00 1/1 0/0 0/0 .text            selectAction__12daNpc_Besu_cFv */
void daNpc_Besu_c::selectAction() {
    // NONMATCHING
}

/* 80539ACC-80539AF8 002D6C 002C+00 2/2 0/0 0/0 .text
 * chkAction__12daNpc_Besu_cFM12daNpc_Besu_cFPCvPvPv_i          */
void daNpc_Besu_c::chkAction(int (daNpc_Besu_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80539AF8-80539BA0 002D98 00A8+00 2/2 0/0 0/0 .text
 * setAction__12daNpc_Besu_cFM12daNpc_Besu_cFPCvPvPv_i          */
void daNpc_Besu_c::setAction(int (daNpc_Besu_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8053E8CC-8053E8D0 000178 0004+00 1/1 0/0 0/0 .rodata          @5582 */
SECTION_RODATA static f32 const lit_5582 = 4.0f;
COMPILER_STRIP_GATE(0x8053E8CC, &lit_5582);

/* 80539BA0-80539CF4 002E40 0154+00 1/1 0/0 0/0 .text            mop__12daNpc_Besu_cFii */
void daNpc_Besu_c::mop(int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8053E908-8053E908 0001B4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8053EAFB = "prm";
#pragma pop

/* 80539CF4-80539E48 002F94 0154+00 1/0 0/0 0/0 .text cutConversationAboutSaru__12daNpc_Besu_cFi
 */
void daNpc_Besu_c::cutConversationAboutSaru(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8053E8D0-8053E8DC 00017C 000C+00 0/1 0/0 0/0 .rodata          @5629 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5629[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8053E8D0, &lit_5629);
#pragma pop

/* 8053E8DC-8053E8E8 000188 000C+00 0/1 0/0 0/0 .rodata          @5644 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5644[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x8053E8DC, &lit_5644);
#pragma pop

/* 8053E908-8053E908 0001B4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8053EAFF = "msgNo";
SECTION_DEAD static char const* const stringBase_8053EB05 = "msgNo2";
SECTION_DEAD static char const* const stringBase_8053EB0C = "timer";
#pragma pop

/* 80539E48-8053A45C 0030E8 0614+00 3/0 0/0 0/0 .text
 * cutConversationAboutPachinko__12daNpc_Besu_cFi               */
void daNpc_Besu_c::cutConversationAboutPachinko(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8053E8E8-8053E8EC 000194 0004+00 0/3 0/0 0/0 .rodata          @5769 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5769 = -40.0f;
COMPILER_STRIP_GATE(0x8053E8E8, &lit_5769);
#pragma pop

/* 8053E8EC-8053E8F8 000198 000C+00 0/1 0/0 0/0 .rodata          @5779 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5779[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8053E8EC, &lit_5779);
#pragma pop

/* 8053A45C-8053A7A0 0036FC 0344+00 1/0 0/0 0/0 .text
 * cutConversationAboutWoodSwd__12daNpc_Besu_cFi                */
void daNpc_Besu_c::cutConversationAboutWoodSwd(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8053E8F8-8053E8FC 0001A4 0004+00 0/2 0/0 0/0 .rodata          @5930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5930 = 50.0f;
COMPILER_STRIP_GATE(0x8053E8F8, &lit_5930);
#pragma pop

/* 8053A7A0-8053AA6C 003A40 02CC+00 1/0 0/0 0/0 .text            cutSwdTutorial__12daNpc_Besu_cFi */
void daNpc_Besu_c::cutSwdTutorial(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8053E8FC-8053E900 0001A8 0004+00 0/1 0/0 0/0 .rodata          @6067 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6067 = 0.5f;
COMPILER_STRIP_GATE(0x8053E8FC, &lit_6067);
#pragma pop

/* 8053AA6C-8053AF5C 003D0C 04F0+00 1/0 0/0 0/0 .text            cutFindMonkey__12daNpc_Besu_cFi */
void daNpc_Besu_c::cutFindMonkey(int param_0) {
    // NONMATCHING
}

/* 8053AF5C-8053B058 0041FC 00FC+00 1/0 0/0 0/0 .text            cutGetWoodSwd__12daNpc_Besu_cFi */
void daNpc_Besu_c::cutGetWoodSwd(int param_0) {
    // NONMATCHING
}

/* 8053B058-8053B250 0042F8 01F8+00 1/0 0/0 0/0 .text cutCacaricoConversation__12daNpc_Besu_cFi */
void daNpc_Besu_c::cutCacaricoConversation(int param_0) {
    // NONMATCHING
}

/* 8053B250-8053B530 0044F0 02E0+00 1/0 0/0 0/0 .text            cutSurprise__12daNpc_Besu_cFi */
void daNpc_Besu_c::cutSurprise(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8053E908-8053E908 0001B4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8053EB12 = "timer1";
SECTION_DEAD static char const* const stringBase_8053EB19 = "timer2";
#pragma pop

/* 8053B530-8053B820 0047D0 02F0+00 1/0 0/0 0/0 .text cutConversationInHotel__12daNpc_Besu_cFi */
void daNpc_Besu_c::cutConversationInHotel(int param_0) {
    // NONMATCHING
}

/* 8053B820-8053BA60 004AC0 0240+00 1/0 0/0 0/0 .text
 * cutConversationAboutDeathMt__12daNpc_Besu_cFi                */
void daNpc_Besu_c::cutConversationAboutDeathMt(int param_0) {
    // NONMATCHING
}

/* 8053BA60-8053BD18 004D00 02B8+00 1/0 0/0 0/0 .text cutConversationAboutGoron__12daNpc_Besu_cFi
 */
void daNpc_Besu_c::cutConversationAboutGoron(int param_0) {
    // NONMATCHING
}

/* 8053BD18-8053BE84 004FB8 016C+00 1/0 0/0 0/0 .text            cutNurse__12daNpc_Besu_cFi */
void daNpc_Besu_c::cutNurse(int param_0) {
    // NONMATCHING
}

/* 8053BE84-8053BF60 005124 00DC+00 1/0 0/0 0/0 .text            cutClothTry__12daNpc_Besu_cFi */
void daNpc_Besu_c::cutClothTry(int param_0) {
    // NONMATCHING
}

/* 8053BF60-8053C08C 005200 012C+00 1/0 0/0 0/0 .text            cutThankYou__12daNpc_Besu_cFi */
void daNpc_Besu_c::cutThankYou(int param_0) {
    // NONMATCHING
}

/* 8053C08C-8053CAA0 00532C 0A14+00 2/0 0/0 0/0 .text            wait__12daNpc_Besu_cFPv */
void daNpc_Besu_c::wait(void* param_0) {
    // NONMATCHING
}

/* 8053CAA0-8053CBB8 005D40 0118+00 1/0 0/0 0/0 .text            swdTutorial__12daNpc_Besu_cFPv */
void daNpc_Besu_c::swdTutorial(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8053E908-8053E908 0001B4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8053EB20 = "EVT_CONVERSATION_IN_HOTEL1_e";
SECTION_DEAD static char const* const stringBase_8053EB3D = "EVT_CONVERSATION_IN_HOTEL2_e";
#pragma pop

/* 8053CBB8-8053CF78 005E58 03C0+00 3/0 0/0 0/0 .text            nurse__12daNpc_Besu_cFPv */
void daNpc_Besu_c::nurse(void* param_0) {
    // NONMATCHING
}

/* 8053CF78-8053D078 006218 0100+00 2/0 0/0 0/0 .text            giveHotWater__12daNpc_Besu_cFPv */
void daNpc_Besu_c::giveHotWater(void* param_0) {
    // NONMATCHING
}

/* 8053D078-8053D29C 006318 0224+00 3/0 0/0 0/0 .text            talk__12daNpc_Besu_cFPv */
void daNpc_Besu_c::talk(void* param_0) {
    // NONMATCHING
}

/* 8053D29C-8053D2BC 00653C 0020+00 1/0 0/0 0/0 .text            daNpc_Besu_Create__FPv */
static void daNpc_Besu_Create(void* param_0) {
    // NONMATCHING
}

/* 8053D2BC-8053D2DC 00655C 0020+00 1/0 0/0 0/0 .text            daNpc_Besu_Delete__FPv */
static void daNpc_Besu_Delete(void* param_0) {
    // NONMATCHING
}

/* 8053D2DC-8053D2FC 00657C 0020+00 1/0 0/0 0/0 .text            daNpc_Besu_Execute__FPv */
static void daNpc_Besu_Execute(void* param_0) {
    // NONMATCHING
}

/* 8053D2FC-8053D31C 00659C 0020+00 1/0 0/0 0/0 .text            daNpc_Besu_Draw__FPv */
static void daNpc_Besu_Draw(void* param_0) {
    // NONMATCHING
}

/* 8053D31C-8053D324 0065BC 0008+00 1/0 0/0 0/0 .text            daNpc_Besu_IsDelete__FPv */
static bool daNpc_Besu_IsDelete(void* param_0) {
    return true;
}

/* 8053D324-8053D354 0065C4 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 8053D354-8053D39C 0065F4 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 8053D39C-8053D724 00663C 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 8053D724-8053D760 0069C4 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 8053D760-8053D79C 006A00 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 8053D79C-8053D7E4 006A3C 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 8053D7E4-8053D820 006A84 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 8053D820-8053D868 006AC0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 8053D868-8053D8B0 006B08 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8053D8B0-8053DCB4 006B50 0404+00 1/1 0/0 0/0 .text
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

/* 8053DCB4-8053DCB8 006F54 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 8053DCB8-8053DDB4 006F58 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 8053DDB4-8053DDB8 007054 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 8053DDB8-8053DE00 007058 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 8053DE00-8053DE70 0070A0 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 8053DE70-8053DECC 007110 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 8053DECC-8053DF3C 00716C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8053DF3C-8053DF84 0071DC 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 8053DF84-8053E0A0 007224 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 8053E0A0-8053E2A8 007340 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 8053E2A8-8053E2AC 007548 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 8053E2AC-8053E2B4 00754C 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootLJointNo() {
    return -1;
}

/* 8053E2B4-8053E2BC 007554 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootRJointNo() {
    return -1;
}

/* 8053E2BC-8053E2C4 00755C 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 8053E2C4-8053E2CC 007564 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 8053E2CC-8053E2D4 00756C 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 8053E2D4-8053E2D8 007574 0004+00 1/0 0/0 0/0 .text            afterMoved__8daNpcT_cFv */
void daNpcT_c::afterMoved() {
    /* empty function */
}

/* 8053E2D8-8053E2E0 007578 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 8053E2E0-8053E2F8 007580 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 8053E2F8-8053E2FC 007598 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 8053E2FC-8053E304 00759C 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 8053E304-8053E334 0075A4 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 8053E334-8053E350 0075D4 001C+00 7/7 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_8053E334(void* _this, int* param_0) {
    // NONMATCHING
}

/* 8053E350-8053E3CC 0075F0 007C+00 1/1 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
extern "C" void func_8053E350(void* _this, int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8053FE5C-8053FE68 001300 000C+00 2/2 0/0 0/0 .data            __vt__18daNpc_Besu_Param_c */
SECTION_DATA extern void* __vt__18daNpc_Besu_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpc_Besu_Param_cFv,
};

/* 8053FE70-8053FE7C 000008 000C+00 1/1 0/0 0/0 .bss             @3922 */
static u8 lit_3922[12];

/* 8053FE7C-8053FE80 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 8053E3CC-8053E588 00766C 01BC+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_besu_cpp */
void __sinit_d_a_npc_besu_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8053E3CC, __sinit_d_a_npc_besu_cpp);
#pragma pop

/* 8053E588-8053E6A8 007828 0120+00 1/1 0/0 0/0 .text
 * __ct__12daNpc_Besu_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Besu_c::daNpc_Besu_c(daNpcT_faceMotionAnmData_c const* param_0,
                               daNpcT_motionAnmData_c const* param_1,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                               int param_3,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                               int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 8053E6A8-8053E6B0 007948 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__12daNpc_Besu_cFv */
s32 daNpc_Besu_c::getEyeballMaterialNo() {
    return 2;
}

/* 8053E6B0-8053E6B8 007950 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__12daNpc_Besu_cFv */
s32 daNpc_Besu_c::getHeadJointNo() {
    return 4;
}

/* 8053E6B8-8053E6C0 007958 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__12daNpc_Besu_cFv */
s32 daNpc_Besu_c::getNeckJointNo() {
    return 3;
}

/* 8053E6C0-8053E6C8 007960 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__12daNpc_Besu_cFv */
bool daNpc_Besu_c::getBackboneJointNo() {
    return true;
}

/* 8053E6C8-8053E6D8 007968 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__12daNpc_Besu_cFi
 */
void daNpc_Besu_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 8053E6D8-8053E6E8 007978 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__12daNpc_Besu_cFi
 */
void daNpc_Besu_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 8053E6E8-8053E730 007988 0048+00 2/1 0/0 0/0 .text            __dt__18daNpc_Besu_Param_cFv */
daNpc_Besu_Param_c::~daNpc_Besu_Param_c() {
    // NONMATCHING
}

/* 8053E730-8053E738 0079D0 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8053E730() {
    // NONMATCHING
}

/* 8053E738-8053E740 0079D8 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8053E738() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8053E900-8053E908 0001AC 0008+00 0/0 0/0 0/0 .rodata          @6105 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6105[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x8053E900, &lit_6105);
#pragma pop

/* 8053E908-8053E908 0001B4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */