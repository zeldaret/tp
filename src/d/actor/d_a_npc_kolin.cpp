/**
 * @file d_a_npc_kolin.cpp
 * 
*/

#include "d/actor/d_a_npc_kolin.h"
#include "Z2AudioLib/Z2Instances.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__13daNpc_Kolin_cFv();
extern "C" void create__13daNpc_Kolin_cFv();
extern "C" void CreateHeap__13daNpc_Kolin_cFv();
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
extern "C" void Delete__13daNpc_Kolin_cFv();
extern "C" void Execute__13daNpc_Kolin_cFv();
extern "C" void Draw__13daNpc_Kolin_cFv();
extern "C" void createHeapCallBack__13daNpc_Kolin_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__13daNpc_Kolin_cFP8J3DJointi();
extern "C" void getType__13daNpc_Kolin_cFv();
extern "C" void isDelete__13daNpc_Kolin_cFv();
extern "C" void reset__13daNpc_Kolin_cFv();
extern "C" void afterJntAnm__13daNpc_Kolin_cFi();
extern "C" void setParam__13daNpc_Kolin_cFv();
extern "C" void checkChangeEvt__13daNpc_Kolin_cFv();
extern "C" void setAfterTalkMotion__13daNpc_Kolin_cFv();
extern "C" void srchActors__13daNpc_Kolin_cFv();
extern "C" void evtTalk__13daNpc_Kolin_cFv();
extern "C" void evtCutProc__13daNpc_Kolin_cFv();
extern "C" void action__13daNpc_Kolin_cFv();
extern "C" void beforeMove__13daNpc_Kolin_cFv();
extern "C" void setAttnPos__13daNpc_Kolin_cFv();
extern "C" void setCollision__13daNpc_Kolin_cFv();
extern "C" bool drawDbgInfo__13daNpc_Kolin_cFv();
extern "C" void drawOtherMdl__13daNpc_Kolin_cFv();
extern "C" void changeAnm__13daNpc_Kolin_cFPiPi();
extern "C" void changeBck__13daNpc_Kolin_cFPiPi();
extern "C" void selectAction__13daNpc_Kolin_cFv();
extern "C" void chkAction__13daNpc_Kolin_cFM13daNpc_Kolin_cFPCvPvPv_i();
extern "C" void setAction__13daNpc_Kolin_cFM13daNpc_Kolin_cFPCvPvPv_i();
extern "C" void calcFollowSpeedAndAngle__13daNpc_Kolin_cFP10fopAc_ac_cii();
extern "C" void followPlayer__13daNpc_Kolin_cFi();
extern "C" void getDistTable__12dAttention_cFi();
extern "C" void lookup__13daNpc_Kolin_cFUc();
extern "C" void cutNoRide__13daNpc_Kolin_cFi();
extern "C" void cutHail__13daNpc_Kolin_cFi();
extern "C" void cutGiveMeWoodSwd__13daNpc_Kolin_cFi();
extern "C" void cutGetWoodSwd__13daNpc_Kolin_cFi();
extern "C" void cutConversationAboutLoopHole__13daNpc_Kolin_cFi();
extern "C" void cutCacaricoConversation__13daNpc_Kolin_cFi();
extern "C" void cutConversationAboutDeathMt__13daNpc_Kolin_cFi();
extern "C" void cutConversationAboutGoron__13daNpc_Kolin_cFi();
extern "C" void cutClothTry__13daNpc_Kolin_cFi();
extern "C" void cutThankYou__13daNpc_Kolin_cFi();
extern "C" void wait__13daNpc_Kolin_cFPv();
extern "C" void timidWalk__13daNpc_Kolin_cFPv();
extern "C" void follow__13daNpc_Kolin_cFPv();
extern "C" void clothWait__13daNpc_Kolin_cFPv();
extern "C" void talk__13daNpc_Kolin_cFPv();
extern "C" static void daNpc_Kolin_Create__FPv();
extern "C" static void daNpc_Kolin_Delete__FPv();
extern "C" static void daNpc_Kolin_Execute__FPv();
extern "C" static void daNpc_Kolin_Draw__FPv();
extern "C" static bool daNpc_Kolin_IsDelete__FPv();
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
extern "C" u16 getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" u16 getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_8055A1C4(void* _this, int*);
extern "C" void func_8055A1E0(void* _this, int, int);
extern "C" void __sinit_d_a_npc_kolin_cpp();
extern "C" void
__ct__13daNpc_Kolin_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__13daNpc_Kolin_cFv();
extern "C" s32 getHeadJointNo__13daNpc_Kolin_cFv();
extern "C" s32 getNeckJointNo__13daNpc_Kolin_cFv();
extern "C" bool getBackboneJointNo__13daNpc_Kolin_cFv();
extern "C" void checkChangeJoint__13daNpc_Kolin_cFi();
extern "C" void checkRemoveJoint__13daNpc_Kolin_cFi();
extern "C" s32 getFootLJointNo__13daNpc_Kolin_cFv();
extern "C" s32 getFootRJointNo__13daNpc_Kolin_cFv();
extern "C" void __dt__19daNpc_Kolin_Param_cFv();
extern "C" static void func_8055A530();
extern "C" static void func_8055A538();
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz();
extern "C" u8 const m__19daNpc_Kolin_Param_c[160];
extern "C" extern char const* const d_a_npc_kolin__stringBase0;
extern "C" void* mCutNameList__13daNpc_Kolin_c[11];
extern "C" u8 mCutList__13daNpc_Kolin_c[132];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
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
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
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
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
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
extern "C" void getAttnPos__8daNpcT_cFP10fopAc_ac_c();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void calcSpeedAndAngle__8daNpcT_cF4cXyziss();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void getEvtAreaTagP__8daNpcT_cFii();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_onEvtBit__FUl();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
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
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" u8 dist_table__12dAttention_c[6552];
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
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz();
extern "C" void __register_global_object();
extern "C" void checkStartDemo13StbEvt__11daNpc_Len_cFP10fopAc_ac_cfffffff();

//
// Declarations:
//

UNK_REL_DATA;

/* 8055A8E8-8055A900 000020 0018+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[3][2] = {
    {11, 1},
    {12, 2},
    {11, 4},
};

/* 8055A900-8055A948 -00001 0048+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[9] = {
    {"", 0},
    {"NO_RESPONSE", 0},
    {"NO_RIDE_L", 3},
    {"NO_RIDE_R", 3},
    {"HAIL", 3},
    {"CONVERSATION_ABOUT_LOOPHOLE1", 3},
    {"CONVERSATION_ABOUT_LOOPHOLE2", 3},
    {"DEMO13_STB", 0},
    {"CLOTH_TRY", 3},
};

/* 8055A948-8055A968 -00001 0020+00 2/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[8] = {
    "",
    "Kolin",
    "Kolin_TW",
    "Kolin1",
    "Kolin2",
    "Kolin_p1",
    "Len1",
    "Taro1",
};

/* 8055A968-8055A96C 0000A0 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[3] = {
    1, 3, -1,
};

/* 8055A96C-8055A970 0000A4 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
static s8 l_loadResPtrn1[3] = {
    1, 2, -1,
};

/* 8055A970-8055A974 0000A8 0003+01 0/0 0/0 0/0 .data            l_loadResPtrn2 */
static s8 l_loadResPtrn2[3] = {
    1, 4, -1,
};

/* 8055A974-8055A97C 0000AC 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn3 */
static s8 l_loadResPtrn3[5] = {
    1, 3, 4, 2, -1,
};

/* 8055A97C-8055A980 0000B4 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn4 */
static s8 l_loadResPtrn4[3] = {
    1, 5, -1,
};

/* 8055A980-8055A988 0000B8 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn9 */
static s8 l_loadResPtrn9[5] = {
    1, 3, 4, 2, -1,
};

/* 8055A988-8055A9C4 -00001 003C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[15] = {
    l_loadResPtrn0, l_loadResPtrn0, l_loadResPtrn0, l_loadResPtrn0,
    l_loadResPtrn1, l_loadResPtrn0, l_loadResPtrn0, l_loadResPtrn0,
    l_loadResPtrn0, l_loadResPtrn0, l_loadResPtrn3, l_loadResPtrn0,
    l_loadResPtrn0, l_loadResPtrn4, l_loadResPtrn9,
};

/* 8055A9C4-8055AB4C 0000FC 0188+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[14] = {
    {-1, 0, 0, 17, 2, 1, 1},
    {12, 2, 3, 41, 2, 3, 0},
    {11, 0, 3, 40, 0, 3, 0},
    {14, 2, 3, 17, 2, 1, 1},
    {9, 0, 3, 39, 0, 3, 0},
    {13, 2, 3, 17, 2, 1, 1},
    {15, 2, 3, 42, 2, 3, 0},
    {9, 2, 2, 20, 2, 2, 0},
    {8, 2, 2, 19, 2, 2, 0},
    {8, 0, 4, 17, 0, 4, 0},
    {6, 0, 1, 18, 0, 1, 0},
    {10, 0, 3, 17, 2, 1, 1},
    {8, 0, 3, 17, 2, 1, 1},
    {7, 0, 3, 38, 0, 3, 0},
};

/* 8055AB4C-8055AD98 000284 024C+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[21] = {
    {8, 2, 1, 14, 0, 1, 1, 0},
    {25, 2, 3, 14, 0, 1, 1, 0},
    {26, 2, 3, 14, 0, 1, 1, 0},
    {27, 2, 3, 14, 0, 1, 1, 0},
    {18, 2, 3, 14, 0, 1, 1, 0},
    {23, 0, 3, 14, 0, 1, 1, 0},
    {19, 0, 3, 14, 0, 1, 1, 0},
    {17, 0, 3, 14, 0, 1, 1, 0},
    {28, 2, 3, 35, 2, 3, 0, 0},
    {29, 2, 3, 14, 0, 1, 1, 0},
    {21, 2, 3, 14, 0, 1, 1, 0},
    {16, 2, 3, 14, 0, 1, 1, 0},
    {24, 0, 3, 14, 0, 1, 1, 0},
    {22, 0, 3, 34, 0, 3, 0, 0},
    {6, 0, 3, 32, 0, 3, 0, 0},
    {20, 0, 3, 33, 0, 3, 0, 0},
    {7, 0, 1, 14, 0, 1, 1, 0},
    {7, 2, 2, 16, 2, 2, 0, 0},
    {6, 2, 2, 15, 2, 2, 0, 0},
    {7, 2, 4, 14, 2, 1, 1, 0},
    {6, 0, 4, 14, 0, 4, 0, 0},
};

/* 8055AD98-8055AE78 0004D0 00E0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[56] = {
    {10, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {2, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {11, -1, 1}, {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {12, -1, 1}, {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {13, -1, 1}, {5, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {4, -1, 1}, {5, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {5, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {8, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {9, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 8055AE78-8055AFB8 0005B0 0140+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[80] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {2, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {5, -1, 1}, {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {13, -1, 1}, {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 1}, {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {7, -1, 1}, {4, -1, 0}, {-1, 0, 0}, {-1, 0, 0},
    {14, -1, 1}, {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {19, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {16, 3, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {15, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {12, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {8, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {9, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {10, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {11, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {17, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {18, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {20, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

char* daNpc_Kolin_c::mCutNameList[11] = {
    "",
    "NO_RIDE",
    "HAIL",
    "GIVEME_WOODSWD",
    "GET_WOODSWD",
    "CONVERSATION_ABOUT_LOOPHOLE",
    "CACARICO_CONVERSATION",
    "CONVERSATION_ABOUT_DEATHMT",
    "CONVERSATION_ABOUT_GORON",
    "CLOTH_TRY",
    "THANK_YOU",
};

/* 8055AFE4-8055AFF0 -00001 000C+00 0/1 0/0 0/0 .data            @3870 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3870[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutNoRide__13daNpc_Kolin_cFi,
};
#pragma pop

/* 8055AFF0-8055AFFC -00001 000C+00 0/1 0/0 0/0 .data            @3871 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3871[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutHail__13daNpc_Kolin_cFi,
};
#pragma pop

/* 8055AFFC-8055B008 -00001 000C+00 0/1 0/0 0/0 .data            @3872 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3872[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutGiveMeWoodSwd__13daNpc_Kolin_cFi,
};
#pragma pop

/* 8055B008-8055B014 -00001 000C+00 0/1 0/0 0/0 .data            @3873 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3873[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutGetWoodSwd__13daNpc_Kolin_cFi,
};
#pragma pop

/* 8055B014-8055B020 -00001 000C+00 0/1 0/0 0/0 .data            @3874 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3874[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutLoopHole__13daNpc_Kolin_cFi,
};
#pragma pop

/* 8055B020-8055B02C -00001 000C+00 0/1 0/0 0/0 .data            @3875 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3875[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutCacaricoConversation__13daNpc_Kolin_cFi,
};
#pragma pop

/* 8055B02C-8055B038 -00001 000C+00 0/1 0/0 0/0 .data            @3876 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3876[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutDeathMt__13daNpc_Kolin_cFi,
};
#pragma pop

/* 8055B038-8055B044 -00001 000C+00 0/1 0/0 0/0 .data            @3877 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3877[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutGoron__13daNpc_Kolin_cFi,
};
#pragma pop

/* 8055B044-8055B050 -00001 000C+00 0/1 0/0 0/0 .data            @3878 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3878[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutClothTry__13daNpc_Kolin_cFi,
};
#pragma pop

/* 8055B050-8055B05C -00001 000C+00 0/1 0/0 0/0 .data            @3879 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3879[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutThankYou__13daNpc_Kolin_cFi,
};
#pragma pop

/* 8055B05C-8055B0E0 000794 0084+00 1/2 0/0 0/0 .data            mCutList__13daNpc_Kolin_c */
daNpc_Kolin_c::cutFunc daNpc_Kolin_c::mCutList[11] = {
    NULL,
    &daNpc_Kolin_c::cutNoRide,
    &daNpc_Kolin_c::cutHail,
    &daNpc_Kolin_c::cutGiveMeWoodSwd,
    &daNpc_Kolin_c::cutGiveMeWoodSwd,
    &daNpc_Kolin_c::cutConversationAboutLoopHole,
    &daNpc_Kolin_c::cutCacaricoConversation,
    &daNpc_Kolin_c::cutConversationAboutDeathMt,
    &daNpc_Kolin_c::cutConversationAboutGoron,
    &daNpc_Kolin_c::cutClothTry,
    &daNpc_Kolin_c::cutThankYou
};

/* 8055B0E0-8055B118 -00001 0038+00 1/1 0/0 0/0 .data            @4528 */
SECTION_DATA static void* lit_4528[14] = {
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x28),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x30),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x38),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x40),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x48),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x50),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x58),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x60),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x68),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x70),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x78),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x80),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x88),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x90),
};

/* 8055B118-8055B150 -00001 0038+00 1/1 0/0 0/0 .data            @4557 */
SECTION_DATA static void* lit_4557[14] = {
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x34),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x40),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x70),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x78),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x84),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x8C),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0xBC),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0xEC),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x100),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x108),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x110),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x140),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x14C),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x160),
};

/* 8055B150-8055B15C -00001 000C+00 1/1 0/0 0/0 .data            @4641 */
SECTION_DATA static void* lit_4641[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)follow__13daNpc_Kolin_cFPv,
};

/* 8055B15C-8055B168 -00001 000C+00 1/1 0/0 0/0 .data            @4652 */
SECTION_DATA static void* lit_4652[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)follow__13daNpc_Kolin_cFPv,
};

/* 8055B168-8055B174 -00001 000C+00 1/1 0/0 0/0 .data            @4691 */
SECTION_DATA static void* lit_4691[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Kolin_cFPv,
};

/* 8055B174-8055B180 -00001 000C+00 1/1 0/0 0/0 .data            @4777 */
SECTION_DATA static void* lit_4777[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Kolin_cFPv,
};

/* 8055B180-8055B18C -00001 000C+00 1/1 0/0 0/0 .data            @4782 */
SECTION_DATA static void* lit_4782[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Kolin_cFPv,
};

/* 8055B18C-8055B198 -00001 000C+00 0/1 0/0 0/0 .data            @5117 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5117[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)timidWalk__13daNpc_Kolin_cFPv,
};
#pragma pop

/* 8055B198-8055B1A4 -00001 000C+00 0/1 0/0 0/0 .data            @5120 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5120[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)follow__13daNpc_Kolin_cFPv,
};
#pragma pop

/* 8055B1A4-8055B1B0 -00001 000C+00 0/1 0/0 0/0 .data            @5122 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5122[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)clothWait__13daNpc_Kolin_cFPv,
};
#pragma pop

/* 8055B1B0-8055B1BC -00001 000C+00 0/1 0/0 0/0 .data            @5124 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5124[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_Kolin_cFPv,
};
#pragma pop

/* 8055B1BC-8055B1DC -00001 0020+00 1/1 0/0 0/0 .data            @5842 */
SECTION_DATA static void* lit_5842[8] = {
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x384),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x3A0),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x3A8),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x3C0),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x3C8),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x448),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x648),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x3C8),
};

/* 8055B1DC-8055B1FC -00001 0020+00 1/1 0/0 0/0 .data            @5841 */
SECTION_DATA static void* lit_5841[8] = {
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x34C),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0xE8),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x1DC),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x1E4),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x29C),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x2B0),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x330),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x34C),
};

/* 8055B24C-8055B258 000984 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 8055B258-8055B264 000990 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8055B264-8055B288 00099C 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8055A538,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8055A530,
};

/* 8055B288-8055B294 0009C0 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8055B294-8055B2A0 0009CC 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8055B2A0-8055B2AC 0009D8 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8055B2AC-8055B2B8 0009E4 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 8055B2B8-8055B2C4 0009F0 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 8055B2C4-8055B2D0 0009FC 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 8055B2D0-8055B2DC 000A08 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8055B2DC-8055B2E8 000A14 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 8055B2E8-8055B2F4 000A20 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 8055B2F4-8055B3B8 000A2C 00C4+00 2/2 0/0 0/0 .data            __vt__13daNpc_Kolin_c */
SECTION_DATA extern void* __vt__13daNpc_Kolin_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpc_Kolin_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__13daNpc_Kolin_cFi,
    (void*)checkRemoveJoint__13daNpc_Kolin_cFi,
    (void*)getBackboneJointNo__13daNpc_Kolin_cFv,
    (void*)getNeckJointNo__13daNpc_Kolin_cFv,
    (void*)getHeadJointNo__13daNpc_Kolin_cFv,
    (void*)getFootLJointNo__13daNpc_Kolin_cFv,
    (void*)getFootRJointNo__13daNpc_Kolin_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__13daNpc_Kolin_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__13daNpc_Kolin_cFi,
    (void*)setParam__13daNpc_Kolin_cFv,
    (void*)checkChangeEvt__13daNpc_Kolin_cFv,
    (void*)evtTalk__13daNpc_Kolin_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__13daNpc_Kolin_cFv,
    (void*)setAfterTalkMotion__13daNpc_Kolin_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__13daNpc_Kolin_cFv,
    (void*)beforeMove__13daNpc_Kolin_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__13daNpc_Kolin_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__13daNpc_Kolin_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__13daNpc_Kolin_cFv,
    (void*)drawOtherMdl__13daNpc_Kolin_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__8daNpcT_cFiifi,
    (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__13daNpc_Kolin_cFPiPi,
    (void*)changeBck__13daNpc_Kolin_cFPiPi,
    (void*)changeBtp__8daNpcT_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
};

/* 80553FEC-80554138 0000EC 014C+00 1/0 0/0 0/0 .text            __dt__13daNpc_Kolin_cFv */
daNpc_Kolin_c::~daNpc_Kolin_c() {
    // NONMATCHING
    if (mpMorf[0] != NULL) {
        mpMorf[0]->stopZelAnime();
    }

    deleteRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
}

/* 8055A5B4-8055A654 000000 00A0+00 17/17 0/0 0/0 .rodata          m__19daNpc_Kolin_Param_c */
daNpc_Kolin_HIOParam const daNpc_Kolin_Param_c::m = {
    140.0f,
    -3.0f,
    1.0f,
    500.0f,
    255.0f,
    130.0f,
    35.0f,
    30.0f,
    0.0f,
    0.0f,
    10.0f,
    -10.0f,
    30.0f,
    -10.0f,
    45.0f,
    -45.0f,
    0.6f,
    12.0f,
    3,
    6,
    5,
    6,
    110.0f,
    0.0f,
    0.0f,
    0.0f,
    60,
    8,
    0,
    0,
    0,
    false,
    false,
    4.0f,
    -15.0f,
    0.0f,
    -15.0f,
    15.0f,
    40.0f,
    15.0f,
    60.0f,
    250.0f,
    200.0f,
    8.0f,
    0x168,
    0xB4,
    2.0f,
};

/* 80554138-80554414 000238 02DC+00 1/1 0/0 0/0 .text            create__13daNpc_Kolin_cFv */
cPhs__Step daNpc_Kolin_c::create() {
    fopAcM_SetupActor2(this, daNpc_Kolin_c, l_faceMotionAnmData, l_motionAnmData, l_faceMotionSequenceData, 4, l_motionSequenceData, 4, l_evtList, l_resNameList);

    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = dKy_darkworld_check();

    if (mType == 9) {
        mTwilight = false;
    }

    cPhs__Step phase = (cPhs__Step)loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("\t(%s:%d) flowNo:%d, PathID:%02x, BitSW:%02x<%08x> ", fopAcM_getProcNameString(this), mType, mFlowNodeNo,
                  (getPathID() >> 32) & 0xFF, getBitSW() & 0xFF, fopAcM_GetParam(this));
        
        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("\n");

        static u32 const heapSize[15] = {
            0x39C0, 0, 0, 0x39C0, 0x3900, 0x39D0, 0x39D0, 0x39C0,
            0, 0x39C0, 0x41D0, 0x39C0, 0x39C0, 0x39C0, 0,
        };
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, heapSize[mType])) {
            return cPhs_ERROR_e;
        }

        J3DModel* model = mpMorf[0]->getModel();
        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -200.0f, -100.0f, -200.0f, 200.0f, 300.0f, 200.0f);

        mSound.init(&current.pos, &eyePos, 3, 1);
        field_0x9c0.init(&mAcch, 0.0f, 0.0f);

        reset();

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this),
                  fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_Kolin_Param_c::m.common.weight, 0, this);

        field_0xe48.Set(mCcDCyl);
        field_0xe48.SetStts(&mCcStts);
        field_0xe48.SetTgHitCallback(tgHitCallBack);

        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        if (mGroundH != -1000000000.0f) {
            setEnvTevColor();
            setRoomNo();
        }

        mCreating = true;
        Execute();
        mCreating = false;
    }

    return phase;
}

/* 80554414-80554774 000514 0360+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_Kolin_cFv */
int daNpc_Kolin_c::CreateHeap() {
    int bmdIdx;

    if (mTwilight == 1) {
        bmdIdx = 1;
    } else {
        bmdIdx = 0;
    }

    J3DModelData* modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_resNameList[l_bmdData[bmdIdx][1]], l_bmdData[bmdIdx][0]));
    if (modelData == NULL) {
        return 0;
    }

    mpMorf[0] = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, 0x11020284);
    if (mpMorf[0] == NULL || mpMorf[0]->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = mpMorf[0]->getModel();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((u32)this);

    mpMatAnm[0] = new daNpcT_MatAnm_c();
    if (mpMatAnm[0] == NULL) {
        return 0;
    }

    if (mType == 10) {
        if (l_bmdData[2][0] >= 0) {
            modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameList[l_bmdData[2][1]], l_bmdData[2][0]);
        } else {
            modelData = NULL;
        }

        if (modelData != NULL) {
            field_0xe44 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        }

        if (field_0xe44 == NULL) {
            return 0;
        }
    }

    if (mTwilight) {
        if (setFaceMotionAnm(7, false) && setMotionAnm(0x11, 0.0f, FALSE)) {
            return 1;
        }

        return 0;
    }

    if (setFaceMotionAnm(10, false) && setMotionAnm(0, 0.0f, FALSE)) {
        return 1;
    }

    return 0;
}

/* 80554930-80554964 000A30 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_Kolin_cFv */
int daNpc_Kolin_c::Delete() {
    this->~daNpc_Kolin_c();
    return 1;
}

/* 80554964-80554984 000A64 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_Kolin_cFv */
int daNpc_Kolin_c::Execute() {
    return execute();
}

/* 80554984-80554A18 000A84 0094+00 1/1 0/0 0/0 .text            Draw__13daNpc_Kolin_cFv */
int daNpc_Kolin_c::Draw() {
    if (mpMatAnm[0] != NULL) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }

    draw(FALSE, FALSE, mRealShadowSize, NULL, 100.0f, FALSE, FALSE, FALSE);
}

/* 80554A18-80554A38 000B18 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__13daNpc_Kolin_cFP10fopAc_ac_c */
int daNpc_Kolin_c::createHeapCallBack(fopAc_ac_c* a_this) {
    daNpc_Kolin_c* i_this = (daNpc_Kolin_c*)a_this;
    return i_this->CreateHeap();
}

/* 80554A38-80554A90 000B38 0058+00 1/1 0/0 0/0 .text            ctrlJointCallBack__13daNpc_Kolin_cFP8J3DJointi */
int daNpc_Kolin_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        daNpc_Kolin_c* i_this = (daNpc_Kolin_c*)j3dSys.getModel()->getUserArea();
        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, j3dSys.getModel());
        }
    }

    return 1;
}

/* 80554A90-80554B30 000B90 00A0+00 2/1 0/0 0/0 .text            getType__13daNpc_Kolin_cFv */
u8 daNpc_Kolin_c::getType() {
    // NONMATCHING
    switch (fopAcM_GetParam(this) & 0xFF) {
        case 0:
            return 0;

        case 1:
            return 1;

        case 2:
            return 2;

        case 3:
            return 3;

        case 4:
            return 4;

        case 5:
            return 5;

        case 6:
            return 6;

        case 7:
            return 7;

        case 8:
            return 8;

        case 9:
            return 9;

        case 10:
            return 10;

        case 11:
            return 11;

        case 12:
            return 12;

        case 13:
            return 13;

        default:
            return 14;
    }
}

/* 80554B30-80554CB0 000C30 0180+00 2/1 0/0 0/0 .text            isDelete__13daNpc_Kolin_cFv */
BOOL daNpc_Kolin_c::isDelete() {
    // NONMATCHING
    switch (mType) {
        case 0:
                   /* dSv_event_flag_c::F_0026 - Ordon Village - gave wooden sword to talo on 3rd day */
            return daNpcT_chkEvtBit(31);

        case 1:
                    /* dSv_event_flag_c::F_0044 - Ordon Village - Accepted sword tutorial first time */
            return !daNpcT_chkEvtBit(142) ||
                    /* dSv_event_flag_c::F_0009 - Ordon Woods - Approach secret entrance with Colin */
                    daNpcT_chkEvtBit(13);

        case 2:
            return FALSE;

        case 3:
                   /* dSv_event_flag_c::F_0070 - Ordon Woods - Colin went deep into the woods */
            return daNpcT_chkEvtBit(168);

        case 4:
            return FALSE;

        case 5:
                    /* dSv_event_flag_c::M_028 - Cutscene - [cutscene: 14] restore mountain spirit - Reuinion with Colin et al. */
            return !daNpcT_chkEvtBit(61) ||
                    /* dSv_event_flag_c::F_0066 - Death Mountain - First saw Goron cutscene on mountain path */
                    daNpcT_chkEvtBit(164);

        case 6:
                    /* dSv_event_flag_c::F_0066 - Death Mountain - First saw Goron cutscene on mountain path */
            return !daNpcT_chkEvtBit(164) ||
                    /* dSv_event_flag_c::M_020 - Cutscene - [cutscene: ] Colin kidnapped : ON once watched */
                    daNpcT_chkEvtBit(53);

        case 7:
                    /* dSv_event_flag_c::F_0264 - Cutscene - Get master sword */
            return !daNpcT_chkEvtBit(264);

        case 8:
            return TRUE;

        case 9:
            return FALSE;

        case 10:
                    /* dSv_event_flag_c::M_035 - Cutscene - [cutscene: 35] after carriage guarding event */
            return !daNpcT_chkEvtBit(68) ||
                    /* dSv_event_flag_c::F_0264 - Cutscene - Get master sword */
                    daNpcT_chkEvtBit(264);
            break;

        case 11:
                   /* dSv_event_flag_c::F_0014 - Ordon Village - sword tutorial ends */
            return daNpcT_chkEvtBit(18);

        case 12:
                    /* dSv_event_flag_c::F_0014 - Ordon Village - sword tutorial ends */
            return !daNpcT_chkEvtBit(18);

        case 13:
            return FALSE;

        default:
            return FALSE;
    }
}

/* 80554CB0-80554EBC 000DB0 020C+00 1/1 0/0 0/0 .text            reset__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::reset() {
    csXyz angle;
    int iVar1 = (u8*)&field_0x101c - (u8*)&mNextAction;

    if (mpMatAnm[0] != NULL) {
        mpMatAnm[0]->initialize();
    }

    initialize();

    for (int i = 0; i < 5; i++) {
        mActorMngr[i].initialize();
    }

    if (getPathID() != 0xFF) {
        mPath.initialize();
        mPath.setPathInfo(getPathID(), fopAcM_GetRoomNo(this), 0);
    }

    memset(&mNextAction, 0, iVar1);

    angle.setall(0);
    angle.y = home.angle.y;

    switch (mType) {
        case 10:
            field_0x1017 = 1;
            break;
    
        case 9:
        case 11:
        default:
            break;
    }

    setAngle(angle);
        /* dSv_event_flag_c::F_0026 - Ordon Village - gave wooden sword to talo on 3rd day */
    if (daNpcT_chkEvtBit(31) ||
          /* dSv_event_flag_c::F_0010 - Ordon Village - First convo with Colin blocking path (forced) */
        (!daNpcT_chkEvtBit(14) &&
          /* dSv_event_flag_c::F_0016 - Ordon Village - On 3rd day, start following Colin who is blocking path */
         !daNpcT_chkEvtBit(20))) {
        /* dSv_event_tmp_flag_c::T_0021 - Ordon Village - Colin follows to Link's house */
        daNpcT_offTmpBit(22);        
    }

    field_0x1010 = cM_rnd();
}

/* 80554EBC-80554F48 000FBC 008C+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpc_Kolin_cFi */
void daNpc_Kolin_c::afterJntAnm(int param_1) {
    if (param_1 == 1) {
        mDoMtx_stack_c::YrotM(-mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(1));
    } else if (param_1 == 4) {
        mDoMtx_stack_c::YrotM(-mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(0));
    }
}

/* 80554F48-80555118 001048 01D0+00 1/0 0/0 0/0 .text            setParam__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::setParam() {
    // NONMATCHING
    selectAction();
    srchActors();

    s16 talk_distance = daNpc_Kolin_Param_c::m.common.talk_distance;
    s16 talk_angle = daNpc_Kolin_Param_c::m.common.talk_angle;
    s16 attention_distance = daNpc_Kolin_Param_c::m.common.attention_distance;
    s16 attention_angle = daNpc_Kolin_Param_c::m.common.attention_angle;

    if (mType == 3) {
        talk_distance = 7;
        talk_angle = 6;
        attention_distance = 9;
        attention_angle = 6;
    } else {
        if (&daNpc_Kolin_c::follow == mNextAction) {
            talk_distance = 1;
            talk_angle = 6;
            attention_distance = 3;
            attention_angle = 6;
        }
    }

    if (daPy_getPlayerActorClass()->checkHorseRide()) {
        if (talk_distance < 7) {
            talk_distance = 7;
        }

        if (attention_distance < 9) {
            attention_distance = 9;
        }
    }

    attention_info.distances[fopAc_attn_LOCK_e] = daNpcT_getDistTableIdx(attention_distance, attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = daNpcT_getDistTableIdx(talk_distance, talk_angle);
    attention_info.flags = 10;

    if (mType == 4) {
        fopAcM_OffStatus(this, fopAcM_STATUS_UNK_000100);
    }

    scale.set(daNpc_Kolin_Param_c::m.common.scale, daNpc_Kolin_Param_c::m.common.scale, daNpc_Kolin_Param_c::m.common.scale);
    mCcStts.SetWeight(daNpc_Kolin_Param_c::m.common.weight);

    if (&daNpc_Kolin_c::follow == mNextAction) {
        mCcStts.SetWeight(109);
    }

    mCylH = daNpc_Kolin_Param_c::m.common.height;
    mWallR = daNpc_Kolin_Param_c::m.common.width;
    mAttnFovY = daNpc_Kolin_Param_c::m.common.fov;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(daNpc_Kolin_Param_c::m.common.knee_length);
    mRealShadowSize = daNpc_Kolin_Param_c::m.common.real_shadow_size;
    mExpressionMorfFrame = daNpc_Kolin_Param_c::m.common.expression_morf_frame;
    mMorfFrames = daNpc_Kolin_Param_c::m.common.morf_frame;
    gravity = daNpc_Kolin_Param_c::m.common.gravity;
}

/* 80555118-8055523C 001218 0124+00 1/0 0/0 0/0 .text            checkChangeEvt__13daNpc_Kolin_cFv */
BOOL daNpc_Kolin_c::checkChangeEvt() {
    // NONMATCHING
    if (!chkAction(&daNpc_Kolin_c::talk)) {
        mPreItemNo = 0;

        if (dComIfGp_event_chkTalkXY()) {
            if (dComIfGp_evmng_ChkPresentEnd()) {
                mEvtNo = 1;
                evtChange();
            }

            return TRUE;
        }

        switch (mType) {
            case 2:
                break;
                
            case 3:
                    /* dSv_event_flag_c::F_0019 - Ordon Woods - Spoke with Ilia (Colin is there too) at the spring */
                if (daNpcT_chkEvtBit(23)) {
                    mEvtNo = 6;
                } else {
                    mEvtNo = 5;
                }

                evtChange();
                return TRUE;

            case 10:
                mEvtNo = 8;
                evtChange();
                return TRUE;

            case 11:
                break;
        }
    }

    return FALSE;
}

/* 8055523C-805552DC 00133C 00A0+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::setAfterTalkMotion() {
    int i_index = 0xD;
    
    switch (mFaceMotionSeqMngr.getNo()) {
        case 3:
            i_index = 8;
            break;

        case 4:
            i_index = 8;
            break;

        case 9:
            return;
    }

    mFaceMotionSeqMngr.setNo(i_index, -1.0f, FALSE, 0);
}

/* 805552DC-80555448 0013DC 016C+00 1/1 0/0 0/0 .text            srchActors__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::srchActors() {
    switch (mType) {
        case 0:
            if (mActorMngr[0].getActorP() == NULL) {
                mActorMngr[0].entry(getEvtAreaTagP(7, 0));
            }
            break;

        case 1:
            if (mActorMngr[0].getActorP() == NULL) {
                mActorMngr[0].entry(getEvtAreaTagP(8, 0));
            }

            if (mActorMngr[1].getActorP() == NULL) {
                mActorMngr[1].entry(getEvtAreaTagP(9, 0));
            }

            if (mActorMngr[2].getActorP() == NULL) {
                mActorMngr[2].entry(getNearestActorP(PROC_Obj_Hfuta));
            }
            break;

        case 3:
            if (mActorMngr[3].getActorP() == NULL) {
                mActorMngr[3].entry(getNearestActorP(PROC_NPC_YELIA));
            }
            break;

        case 4:
            if (mActorMngr[4].getActorP() == NULL) {
                mActorMngr[4].entry(getNearestActorP(PROC_NPC_LEN));
            }
            break;

        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
            break;
    }
}

/* 80555448-805554E8 001548 00A0+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_Kolin_cFv */
BOOL daNpc_Kolin_c::evtTalk() {
    // NONMATCHING
    if (chkAction(&daNpc_Kolin_c::talk)) {
        (this->*mAction)(NULL);
    } else {
        setAction(&daNpc_Kolin_c::talk);
    }

    return TRUE;
}

/* 805554E8-805555B0 0015E8 00C8+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_Kolin_cFv */
BOOL daNpc_Kolin_c::evtCutProc() {
    int staffId = dComIfGp_getEventManager().getMyStaffId("Kolin", this, -1);
    if (staffId != -1) {
        mStaffId = staffId;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, mCutNameList, 11, 0, 0);
        if ((this->*mCutList[actIdx])(mStaffId)) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }

        return TRUE;
    }

    return FALSE;
}

/* 805555B0-8055574C 0016B0 019C+00 1/0 0/0 0/0 .text            action__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::action() {
    fopAc_ac_c* actor_p = hitChk(&field_0xe48, -1);
    if (actor_p) {
        if (mType != 10 && field_0xe48.GetTgHitObj()->ChkAtType(AT_TYPE_THROW_OBJ)) {
            mStagger.setParam(this, actor_p, mCurAngle.y);
            setDamage(0, 13, 1);
            mDamageTimerStart = 0;
            mJntAnm.lookNone(1);
        }
    }

    if (mStagger.checkRebirth()) {
        mStagger.initialize();
        mMode = 1;
    }

    if (mNextAction) {
        if (mAction == mNextAction) {
            (this->*mAction)(NULL);
        } else {
            setAction(mNextAction);
        }
    }
}

/* 8055574C-80555810 00184C 00C4+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::beforeMove() {
    fopAcM_OffStatus(this, fopAcM_STATUS_UNK_80000000);

    if (checkHide()) {
        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_80000000);
    }

    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
}

UNK_REL_BSS;

/* 8055B41C-8055B420 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_Kolin_Param_c l_HIO;

/* 80555810-80555B48 001910 0338+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::setAttnPos() {
    cXyz sp3c(5.0f, 30.0f, 0.0f);

    if (field_0x1015 != 0) {
        daPy_getPlayerActorClass()->onWolfEyeKeep();
    }

    mStagger.calc(FALSE);
    f32 rad_val = cM_s2rad(mCurAngle.y - field_0xd7e.y);
    mJntAnm.setParam(this, mpMorf[0]->getModel(), &sp3c, getBackboneJointNo(), getNeckJointNo(), getHeadJointNo(),
                     daNpc_Kolin_Param_c::m.common.body_angleX_min, daNpc_Kolin_Param_c::m.common.body_angleX_max,
                     daNpc_Kolin_Param_c::m.common.body_angleY_min, daNpc_Kolin_Param_c::m.common.body_angleY_max,
                     daNpc_Kolin_Param_c::m.common.head_angleX_min, daNpc_Kolin_Param_c::m.common.head_angleX_max,
                     daNpc_Kolin_Param_c::m.common.head_angleY_min, daNpc_Kolin_Param_c::m.common.head_angleY_max,
                     daNpc_Kolin_Param_c::m.common.neck_rotation_ratio, rad_val, NULL);
    mJntAnm.calcJntRad(0.2f, 1.0f, rad_val);
    
    setMtx();
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&sp3c, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, FALSE, 1.0f, 0);

    sp3c.set(0.0f, 0.0f, 0.0f);
    sp3c.y = daNpc_Kolin_Param_c::m.common.attention_offset;
    if (mType == 10) {
        sp3c.set(26.54f, 0.0f, -97.77f);
        sp3c.y = daNpc_Kolin_Param_c::m.common.attention_offset;
    }

    mDoMtx_stack_c::YrotS(mCurAngle.y);
    mDoMtx_stack_c::multVec(&sp3c, &sp3c);
    attention_info.position = current.pos + sp3c;

    static cXyz prtclScl(1.0f, 1.0f, 1.0f);
    setFootPos();
    if (3.0f < speedF) {
        setFootPrtcl(&prtclScl, 9.0f, 0.0f);
    }
}

/* 80555B48-80555CE4 001C48 019C+00 1/0 0/0 0/0 .text            setCollision__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::setCollision() {
    cXyz pos;

    if (!mHide) {
        u32 tgType = 0xD8FBFDFF;
        u32 tgSPrm = 0x1F;

        if (mTwilight) {
            tgType = 0;
            tgSPrm = 0;
        } else if (mStagger.checkStagger()) {
            tgType = 0;
            tgSPrm = 0;
        }

        field_0xe48.SetCoSPrm(0x79);
        field_0xe48.SetTgType(tgType);
        field_0xe48.SetTgSPrm(tgSPrm);
        field_0xe48.OnTgNoHitMark();

        pos.set(0.0f, 0.0f, 0.0f);
        f32 cyl_h = mCylH;
        f32 wall_r = mWallR;

        if (mType == 10) {
            pos.set(26.54f, 0.0f, -97.77f);
        } else if (mType == 4) {
            pos.set(-63.45f, 0.0f, 157.33f);
        }

        mDoMtx_stack_c::YrotS(mCurAngle.y);
        mDoMtx_stack_c::multVec(&pos, &pos);
        pos += current.pos;

        field_0xe48.SetH(cyl_h);
        field_0xe48.SetR(wall_r);
        field_0xe48.SetC(pos);
        dComIfG_Ccsp()->Set(&field_0xe48);
    }

    field_0xe48.ClrCoHit();
    field_0xe48.ClrTgHit();
}

/* 80555CE4-80555CEC 001DE4 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_Kolin_cFv */
int daNpc_Kolin_c::drawDbgInfo() {
    return false;
}

/* 80555CEC-80555DC4 001DEC 00D8+00 1/0 0/0 0/0 .text            drawOtherMdl__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::drawOtherMdl() {
    J3DModel* model = mpMorf[0]->getModel();

    for (int i = 0; i < 1; i++) {
        if (field_0xe44 != NULL && i == 0 && field_0x1017 != 0) {
            g_env_light.setLightTevColorType_MAJI(field_0xe44, &tevStr);
            static int const jointNo[1] = {0x12};
            mDoMtx_stack_c::copy(model->getAnmMtx(jointNo[0]));
            Mtx mtx;
            MTXCopy(mDoMtx_stack_c::get(), mtx);
            field_0xe44->setBaseTRMtx(mtx);
            mDoExt_modelUpdateDL(field_0xe44);
            dComIfGd_addRealShadow(mShadowKey, field_0xe44);
        }
    }
}

/* 80555DC4-80555DEC 001EC4 0028+00 1/0 0/0 0/0 .text            changeAnm__13daNpc_Kolin_cFPiPi */
void daNpc_Kolin_c::changeAnm(int* param_1, int* param_2) {
    if (mType == 13 && *param_1 == 19) {
        *param_1 = 5;
        *param_2 = 5;
    }
}

/* 80555DEC-80555E38 001EEC 004C+00 1/0 0/0 0/0 .text            changeBck__13daNpc_Kolin_cFPiPi */
void daNpc_Kolin_c::changeBck(int* param_1, int* param_2) {
    if (mType == 13) {
        switch (*param_1) {
            case 8:
                *param_1 = 3;
                *param_2 = 5;
                break;

            case 14:
                *param_1 = 4;
                *param_2 = 5;
                break;
        }
    }
}

/* 80555E38-80555F28 001F38 00F0+00 1/1 0/0 0/0 .text            selectAction__13daNpc_Kolin_cFv */
int daNpc_Kolin_c::selectAction() {
    // NONMATCHING
    mNextAction = NULL;

#ifdef DEBUG
    if (daNpc_Kolin_Param_c::m.common.debug_mode_ON) {
        mNextAction = &daNpc_Kolin_c::test;
        return 1;
    }
#endif

    switch (mType) {
        case 0:
            mNextAction = &daNpc_Kolin_c::timidWalk;
                /* dSv_event_tmp_flag_c::T_0021 - Ordon Village - Colin follows to Link's house */
            if (daNpcT_chkTmpBit(22)) {
                mNextAction = &daNpc_Kolin_c::follow;
            }
            break;
            
        case 10:
            mNextAction = &daNpc_Kolin_c::clothWait;
            break;

        default:
            mNextAction = &daNpc_Kolin_c::wait;
            break;
    }

    return 1;
}

/* 80555F28-80555F54 002028 002C+00 2/2 0/0 0/0 .text            chkAction__13daNpc_Kolin_cFM13daNpc_Kolin_cFPCvPvPv_i */
BOOL daNpc_Kolin_c::chkAction(actionFunc action) {
    return mAction == action;
}

/* 80555F54-80555FFC 002054 00A8+00 2/2 0/0 0/0 .text            setAction__13daNpc_Kolin_cFM13daNpc_Kolin_cFPCvPvPv_i */
int daNpc_Kolin_c::setAction(actionFunc action) {
    mMode = 3;

    if (mAction) {
        (this->*mAction)(NULL);
    }

    mMode = 0;

    mAction = action;
    if (mAction) {
        (this->*mAction)(NULL);
    }

    return 1;
}

/* 80555FFC-805563BC 0020FC 03C0+00 1/1 0/0 0/0 .text            calcFollowSpeedAndAngle__13daNpc_Kolin_cFP10fopAc_ac_cii */
void daNpc_Kolin_c::calcFollowSpeedAndAngle(fopAc_ac_c* actor, int param_2, int param_3) {
    cXyz sp4c, sp58;
    f32 actor_distance = fopAcM_searchActorDistanceXZ(this, actor);

    if (param_2 == 0) {
        cLib_addCalcAngleS2(&current.angle.y, fopAcM_searchActorAngleY(this, actor), 6, 0x800);
        shape_angle.y = current.angle.y;
        mCurAngle.y = current.angle.y;

        if (param_3 != 0) {
            f32 fVar1;
            if (daNpc_Kolin_Param_c::m.follow_distance <= actor_distance) {
                fVar1 = actor_distance - daNpc_Kolin_Param_c::m.follow_distance;
            } else {
                fVar1 = 0.0f;
            }

            sp4c.set(0.0f, 0.0f, fVar1 * 0.1f);
            mDoMtx_stack_c::YrotS(fopAcM_searchActorAngleY(this, actor));
            mDoMtx_stack_c::multVec(&sp4c, &sp58);
            current.pos += sp58;
            old.pos = current.pos;
        }

        if (mMotionSeqMngr.getNo() == 0xF) {
            cLib_chaseF(&speedF, daNpc_Kolin_Param_c::m.run_speed, 0.5f);
        } else if (mFootLOffset.y < mFootROffset.y) {
            speedF = (mFootLOffset - mOldFootLOffset).absXZ();
        } else {
            speedF = (mFootROffset - mOldFootROffset).absXZ();
        }
    } else if (mMotionSeqMngr.getNo() == 0xF) {
        cLib_chaseF(&speedF, 0.0f, 1.0f);
    } else {
        speedF = 0.0f;
    }
}

/* 805563BC-80556798 0024BC 03DC+00 1/1 0/0 0/0 .text            followPlayer__13daNpc_Kolin_cFi */
void daNpc_Kolin_c::followPlayer(int param_1) {
    cXyz attnPos = getAttnPos(daPy_getPlayerActorClass());
    BOOL bVar1 = mPlayerActorMngr.getActorP() != NULL;

    int dist_index = bVar1 == FALSE ? attention_info.distances[fopAc_attn_SPEAK_e] : attention_info.distances[fopAc_attn_TALK_e];
    int iVar1 = 0;
    f32 dist_max = bVar1 == FALSE ? dComIfGp_getAttention()->getDistTable(dist_index).mDistMax : dComIfGp_getAttention()->getDistTable(dist_index).mDistMax;
    f32 lower_y = dComIfGp_getAttention()->getDistTable(dist_index).mLowerY * -1.0f;
    f32 upper_y = dComIfGp_getAttention()->getDistTable(dist_index).mUpperY * -1.0f;

    if (chkPointInArea(attnPos, attention_info.position, dist_max, lower_y, upper_y, 0)) {
        if (!bVar1) {
            mPlayerActorMngr.entry(daPy_getPlayerActorClass());
            bVar1 = TRUE;
        }
    } else if (bVar1) {
        mPlayerActorMngr.remove();
        bVar1 = FALSE;
    }

    if (bVar1 != FALSE) {
        iVar1 = 1;
    }

    if (param_1 == 0 && iVar1 == 0) {
        cXyz start, end;

        start = current.pos;
        start.y += mAcchCir.GetWallH();
        end.setall(0.0f);
        end.z = 50.0f;

        mDoMtx_stack_c::YrotS(fopAcM_searchPlayerAngleY(this));
        mDoMtx_stack_c::multVec(&end, &end);
        end += start;
        mLinChk.Set(&start, &end, this);

        if (dComIfG_Bgsp().LineCross(&mLinChk)) {
            iVar1 = 1;
        }
    }

    calcFollowSpeedAndAngle(daPy_getPlayerActorClass(), iVar1, param_1);

    cXyz sp98 = attnPos - attention_info.position;

    if (300.0f < fabsf(sp98.y)) {
        if (mMotionSeqMngr.getNo() == 0xF) {
            cLib_chaseF(&speedF, 0.0f, 1.0f);
        } else {
            speedF = 0.0f;
        }
    }

    if (cM3d_IsZero(speedF)) {
        if (mMotionSeqMngr.getNo() != 1) {
            mMotionSeqMngr.setNo(1, -1.0f, FALSE, 0);
        }
    } else if (mMotionSeqMngr.getNo() != 0xF) {
        if (fopAcM_searchActorDistanceXZ(this, daPy_getPlayerActorClass()) < daNpc_Kolin_Param_c::m.start_distance) {
            if (mMotionSeqMngr.getNo() != 0xE) {
                mMotionSeqMngr.setNo(0xE, 4.0f, FALSE, 0);
            }
        } else {
            mMotionSeqMngr.setNo(0xF, 4.0f, FALSE, 0);
        }
    }

    mJntAnm.lookPlayer(0);
}

/* 805567AC-805568AC 0028AC 0100+00 1/1 0/0 0/0 .text            lookup__13daNpc_Kolin_cFUc */
void daNpc_Kolin_c::lookup(u8 i_direct) {
    cXyz pos;
    pos.set(0.0f, 30.0f, 200.0f);
    mDoMtx_stack_c::transS(attention_info.position);
    mDoMtx_stack_c::YrotM(mCurAngle.y);
    mDoMtx_stack_c::multVec(&pos, &field_0xd6c);
    mJntAnm.lookPos(&field_0xd6c, i_direct);
}

/* 805568AC-80556A04 0029AC 0158+00 1/0 0/0 0/0 .text            cutNoRide__13daNpc_Kolin_cFi */
int daNpc_Kolin_c::cutNoRide(int i_cutIndex) {
    int rv = 0;
    int prm = -1;

    int* piVar1 = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "prm");
    if (piVar1 != NULL) {
        prm = *piVar1;
    }

    if (dComIfGp_getEventManager().getIsAddvance(i_cutIndex)) {
        switch (prm) {
            case 0:
                mPlayerActorMngr.entry(daPy_getPlayerActorClass());
                initTalk(4, NULL);
                setAngle(mPlayerAngle);
                break;

            case 1:
                break;
        }
    }

    switch (prm) {
        case 0:
            mJntAnm.lookPlayer(0);

            if (talkProc(NULL, FALSE, NULL, FALSE) && mFlow.checkEndFlow()) {
                rv = 1;
            }
            break;

        case 1:
            rv = 1;
            break;
    }

    return rv;
}

/* 80556A04-80556DB4 002B04 03B0+00 1/0 0/0 0/0 .text            cutHail__13daNpc_Kolin_cFi */
int daNpc_Kolin_c::cutHail(int i_cutIndex) {
    cXyz work;
    int rv = 0;
    int prm = -1;
    int msgNo = 0;

    int* piVar1 = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "prm");
    if (piVar1 != NULL) {
        prm = *piVar1;
    }

    piVar1 = dComIfGp_evmng_getMyIntegerP(i_cutIndex, "msgNo");
    if (piVar1 != NULL) {
        msgNo = *piVar1;
    }

    if (dComIfGp_getEventManager().getIsAddvance(i_cutIndex)) {
        switch (prm) {
            case 0: {
                mFaceMotionSeqMngr.setNo(0xD, 0.0f, FALSE, 0);
                mMotionSeqMngr.setNo(2, 0.0f, FALSE, 0);
                mJntAnm.lookNone(1);
                initTalk(mFlowNodeNo, NULL);
                speedF = 0.0f;
                speed.setall(0.0f);
                setAngle(cM_deg2s(-25.0f));
                work.set(0.0f, 500.0f, 150.0f);

                s16 angle = fopAcM_searchActorAngleY(daPy_getPlayerActorClass(), this);

                mDoMtx_stack_c::YrotS(mCurAngle.y);
                mDoMtx_stack_c::multVec(&work, &work);
                work += current.pos;
                mGndChk.SetPos(&work);
                work.y = dComIfG_Bgsp().GroundCross(&mGndChk);

                JUT_ASSERT(2646, -(1000000000.0f) != work.y);

                daPy_getPlayerActorClass()->setPlayerPosAndAngle(&work, angle, 0);
                break;
            }

            case 1:
            case 2:
                break;
        }
    }

    int iVar1[2] = {-1, -1};
    switch (prm) {
        case 0:
        case 1:
        case 2:
            if (prm == 1) {
                work.set(-100.0f, -100.0f, -100.0f);
                mDoMtx_stack_c::YrotS(mCurAngle.y);
                mDoMtx_stack_c::multVec(&work, &work);
                field_0xd6c = attention_info.position + work;
                mJntAnm.lookPos(&field_0xd6c, 0);
            } else {
                mJntAnm.lookNone(0);
            }

            iVar1[0] = msgNo;
            
            if (talkProc(iVar1, FALSE, NULL, FALSE)) {
                if (msgNo == 0) {
                    if (mFlow.checkEndFlow()) {
                        rv = 1;
                    }
                } else {
                    rv = 1;
                }
            }

            shape_angle.y = 0;
            break;
    }

    return rv;
}

/* ############################################################################################## */
/* 8055A728-8055A72C 000174 0004+00 0/2 0/0 0/0 .rodata          @5652 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5652 = -613.0f;
COMPILER_STRIP_GATE(0x8055A728, &lit_5652);
#pragma pop

/* 8055A72C-8055A730 000178 0004+00 0/2 0/0 0/0 .rodata          @5653 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5653 = 1306.0f;
COMPILER_STRIP_GATE(0x8055A72C, &lit_5653);
#pragma pop

/* 8055A730-8055A734 00017C 0004+00 0/2 0/0 0/0 .rodata          @5654 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5654 = -2048.0f;
COMPILER_STRIP_GATE(0x8055A730, &lit_5654);
#pragma pop

/* 8055A734-8055A738 000180 0004+00 0/1 0/0 0/0 .rodata          @5655 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5655 = 153.0f;
COMPILER_STRIP_GATE(0x8055A734, &lit_5655);
#pragma pop

/* 8055A738-8055A73C 000184 0004+00 0/1 0/0 0/0 .rodata          @5656 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5656 = 1300.0f;
COMPILER_STRIP_GATE(0x8055A738, &lit_5656);
#pragma pop

/* 8055A73C-8055A740 000188 0004+00 0/1 0/0 0/0 .rodata          @5657 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5657 = -1278.0f;
COMPILER_STRIP_GATE(0x8055A73C, &lit_5657);
#pragma pop

/* 80556DB4-80557054 002EB4 02A0+00 1/0 0/0 0/0 .text            cutGiveMeWoodSwd__13daNpc_Kolin_cFi
 */
int daNpc_Kolin_c::cutGiveMeWoodSwd(int i_cutIndex) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055A740-8055A74C 00018C 000C+00 0/1 0/0 0/0 .rodata          @5679 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5679[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x8055A740, &lit_5679);
#pragma pop

/* 8055A77C-8055A77C 0001C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8055A8BF = "timer";
#pragma pop

/* 80557054-805576C4 003154 0670+00 3/0 0/0 0/0 .text            cutGetWoodSwd__13daNpc_Kolin_cFi */
int daNpc_Kolin_c::cutGetWoodSwd(int i_cutIndex) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055A74C-8055A750 000198 0004+00 0/0 0/0 0/0 .rodata          @5839 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5839 = 1600.0f;
COMPILER_STRIP_GATE(0x8055A74C, &lit_5839);
#pragma pop

/* 8055A750-8055A754 00019C 0004+00 0/0 0/0 0/0 .rodata          @5840 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5840 = 10.0f;
COMPILER_STRIP_GATE(0x8055A750, &lit_5840);
#pragma pop

/* 8055A754-8055A75C 0001A0 0008+00 0/1 0/0 0/0 .rodata          @5852 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5852[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8055A754, &lit_5852);
#pragma pop

/* 8055A75C-8055A768 0001A8 000C+00 0/1 0/0 0/0 .rodata          @5862 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5862[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x8055A75C, &lit_5862);
#pragma pop

/* 805576C4-805579DC 0037C4 0318+00 1/0 0/0 0/0 .text
 * cutConversationAboutLoopHole__13daNpc_Kolin_cFi              */
int daNpc_Kolin_c::cutConversationAboutLoopHole(int i_cutIndex) {
    // NONMATCHING
}

/* 805579DC-80557BD4 003ADC 01F8+00 1/0 0/0 0/0 .text cutCacaricoConversation__13daNpc_Kolin_cFi
 */
int daNpc_Kolin_c::cutCacaricoConversation(int i_cutIndex) {
    // NONMATCHING
}

/* 80557BD4-80557C6C 003CD4 0098+00 1/0 0/0 0/0 .text
 * cutConversationAboutDeathMt__13daNpc_Kolin_cFi               */
int daNpc_Kolin_c::cutConversationAboutDeathMt(int i_cutIndex) {
    // NONMATCHING
}

/* 80557C6C-80557D04 003D6C 0098+00 1/0 0/0 0/0 .text cutConversationAboutGoron__13daNpc_Kolin_cFi
 */
int daNpc_Kolin_c::cutConversationAboutGoron(int i_cutIndex) {
    // NONMATCHING
}

/* 80557D04-80557E38 003E04 0134+00 1/0 0/0 0/0 .text            cutClothTry__13daNpc_Kolin_cFi */
int daNpc_Kolin_c::cutClothTry(int i_cutIndex) {
    // NONMATCHING
}

/* 80557E38-80557ED8 003F38 00A0+00 1/0 0/0 0/0 .text            cutThankYou__13daNpc_Kolin_cFi */
int daNpc_Kolin_c::cutThankYou(int i_cutIndex) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055A768-8055A770 0001B4 0008+00 0/0 0/0 0/0 .rodata          @5929 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5929[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x8055A768, &lit_5929);
#pragma pop

/* 8055A770-8055A774 0001BC 0004+00 0/1 0/0 0/0 .rodata          @6301 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6301 = 60.0f;
COMPILER_STRIP_GATE(0x8055A770, &lit_6301);
#pragma pop

/* 80557ED8-80558698 003FD8 07C0+00 1/0 0/0 0/0 .text            wait__13daNpc_Kolin_cFPv */
int daNpc_Kolin_c::wait(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055A774-8055A778 0001C0 0004+00 0/1 0/0 0/0 .rodata          @6437 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6437 = 8.0f;
COMPILER_STRIP_GATE(0x8055A774, &lit_6437);
#pragma pop

/* 8055A778-8055A77C 0001C4 0004+00 0/1 0/0 0/0 .rodata          @6438 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6438 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x8055A778, &lit_6438);
#pragma pop

/* 80558698-80558AF8 004798 0460+00 1/0 0/0 0/0 .text            timidWalk__13daNpc_Kolin_cFPv */
int daNpc_Kolin_c::timidWalk(void* param_0) {
    // NONMATCHING
}

/* 80558AF8-80558C4C 004BF8 0154+00 3/0 0/0 0/0 .text            follow__13daNpc_Kolin_cFPv */
int daNpc_Kolin_c::follow(void* param_0) {
    // NONMATCHING
}

/* 80558C4C-80558E90 004D4C 0244+00 1/0 0/0 0/0 .text            clothWait__13daNpc_Kolin_cFPv */
int daNpc_Kolin_c::clothWait(void* param_0) {
    // NONMATCHING
}

/* 80558E90-805590B4 004F90 0224+00 3/0 0/0 0/0 .text            talk__13daNpc_Kolin_cFPv */
int daNpc_Kolin_c::talk(void* param_0) {
    // NONMATCHING
}

/* 805590B4-805590D4 0051B4 0020+00 1/0 0/0 0/0 .text            daNpc_Kolin_Create__FPv */
static int daNpc_Kolin_Create(void* a_this) {
    daNpc_Kolin_c* i_this = (daNpc_Kolin_c*)a_this;
    return i_this->create();
}

/* 805590D4-805590F4 0051D4 0020+00 1/0 0/0 0/0 .text            daNpc_Kolin_Delete__FPv */
static int daNpc_Kolin_Delete(void* a_this) {
    daNpc_Kolin_c* i_this = (daNpc_Kolin_c*)a_this;
    return i_this->Delete();
}

/* 805590F4-80559114 0051F4 0020+00 1/0 0/0 0/0 .text            daNpc_Kolin_Execute__FPv */
static int daNpc_Kolin_Execute(void* a_this) {
    daNpc_Kolin_c* i_this = (daNpc_Kolin_c*)a_this;
    return i_this->Execute();
}

/* 80559114-80559134 005214 0020+00 1/0 0/0 0/0 .text            daNpc_Kolin_Draw__FPv */
static int daNpc_Kolin_Draw(void* a_this) {
    daNpc_Kolin_c* i_this = (daNpc_Kolin_c*)a_this;
    return i_this->Draw();
}

/* 80559134-8055913C 005234 0008+00 1/0 0/0 0/0 .text            daNpc_Kolin_IsDelete__FPv */
static int daNpc_Kolin_IsDelete(void* a_this) {
    return 1;
}

/* 8055913C-8055916C 00523C 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 8055916C-805591B4 00526C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 805591B4-8055953C 0052B4 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 8055953C-80559578 00563C 003C+00 4/4 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80559578-805595B4 005678 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 805595B4-805595FC 0056B4 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 805595FC-80559644 0056FC 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80559644-80559680 005744 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80559680-805596C8 005780 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 805596C8-80559710 0057C8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80559710-80559B14 005810 0404+00 1/1 0/0 0/0 .text
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

/* 80559B14-80559B18 005C14 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80559B18-80559C14 005C18 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80559C14-80559C18 005D14 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80559C18-80559C60 005D18 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80559C60-80559CD0 005D60 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80559CD0-80559D2C 005DD0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80559D2C-80559D9C 005E2C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80559D9C-80559DE4 005E9C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80559DE4-80559F00 005EE4 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80559F00-8055A108 006000 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 8055A108-8055A10C 006208 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 8055A10C-8055A114 00620C 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" u16 getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 8055A114-8055A11C 006214 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" u16 getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 8055A11C-8055A124 00621C 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 8055A128-8055A130 006228 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 8055A130-8055A148 006230 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 8055A148-8055A14C 006248 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 8055A14C-8055A154 00624C 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 8055A154-8055A15C 006254 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 8055A15C-8055A18C 00625C 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 8055A18C-8055A1BC 00628C 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 8055A1BC-8055A1C0 0062BC 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 8055A1C0-8055A1C4 0062C0 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 8055A1C4-8055A1E0 0062C4 001C+00 3/3 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_8055A1C4(void* _this, int* param_0) {
    // NONMATCHING
}

/* 8055A1E0-8055A25C 0062E0 007C+00 1/1 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
extern "C" void func_8055A1E0(void* _this, int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055B3B8-8055B3C4 000AF0 000C+00 2/2 0/0 0/0 .data            __vt__19daNpc_Kolin_Param_c */
SECTION_DATA extern void* __vt__19daNpc_Kolin_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daNpc_Kolin_Param_cFv,
};

/* 8055A3B8-8055A498 0064B8 00E0+00 1/1 0/0 0/0 .text
 * __ct__13daNpc_Kolin_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
/* daNpc_Kolin_c::daNpc_Kolin_c(daNpcT_faceMotionAnmData_c const* param_0,
                                 daNpcT_motionAnmData_c const* param_1,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                 int param_3,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                 int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
} */

/* 8055A498-8055A4A0 006598 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__13daNpc_Kolin_cFv */
u16 daNpc_Kolin_c::getEyeballMaterialNo() {
    return 2;
}

/* 8055A4A0-8055A4A8 0065A0 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__13daNpc_Kolin_cFv */
s32 daNpc_Kolin_c::getHeadJointNo() {
    return 4;
}

/* 8055A4A8-8055A4B0 0065A8 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__13daNpc_Kolin_cFv */
s32 daNpc_Kolin_c::getNeckJointNo() {
    return 3;
}

/* 8055A4B0-8055A4B8 0065B0 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__13daNpc_Kolin_cFv */
s32 daNpc_Kolin_c::getBackboneJointNo() {
    return 1;
}

/* 8055A4B8-8055A4C8 0065B8 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__13daNpc_Kolin_cFi */
int daNpc_Kolin_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 8055A4C8-8055A4D8 0065C8 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__13daNpc_Kolin_cFi */
int daNpc_Kolin_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 8055A4D8-8055A4E0 0065D8 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__13daNpc_Kolin_cFv */
s32 daNpc_Kolin_c::getFootLJointNo() {
    return 22;
}

/* 8055A4E0-8055A4E8 0065E0 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__13daNpc_Kolin_cFv */
s32 daNpc_Kolin_c::getFootRJointNo() {
    return 25;
}

/* 8055A4E8-8055A530 0065E8 0048+00 2/1 0/0 0/0 .text            __dt__19daNpc_Kolin_Param_cFv */
daNpc_Kolin_Param_c::~daNpc_Kolin_Param_c() {
    // NONMATCHING
}

/* 8055A530-8055A538 006630 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8055A530() {
    // NONMATCHING
}

/* 8055A538-8055A540 006638 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8055A538() {
    // NONMATCHING
}

/* 8055A540-8055A5A0 006640 0060+00 1/1 0/0 0/0 .text chkPointInArea__15daTag_EvtArea_cF4cXyz */
// void daTag_EvtArea_c::chkPointInArea(cXyz param_0) {
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz() {
    // NONMATCHING
}

AUDIO_INSTANCES;

/* 8055B1FC-8055B21C -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Kolin_MethodTable */
static actor_method_class daNpc_Kolin_MethodTable = {
    (process_method_func)daNpc_Kolin_Create,
    (process_method_func)daNpc_Kolin_Delete,
    (process_method_func)daNpc_Kolin_Execute,
    (process_method_func)daNpc_Kolin_IsDelete,
    (process_method_func)daNpc_Kolin_Draw,
};

/* 8055B21C-8055B24C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_KOLIN */
extern actor_process_profile_definition g_profile_NPC_KOLIN = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_KOLIN,           // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_Kolin_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  350,                      // mPriority
  &daNpc_Kolin_MethodTable, // sub_method
  0x00040107,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};
