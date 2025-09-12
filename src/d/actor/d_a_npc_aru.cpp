/**
 * @file d_a_npc_aru.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_aru.h"
#include "d/actor/d_a_cow.h"
#include "d/actor/d_a_obj_udoor.h"
#include "d/d_timer.h"
#include "d/d_s_play.h"
#include "Z2AudioLib/Z2Instances.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__11daNpc_Aru_cFv();
extern "C" void create__11daNpc_Aru_cFv();
extern "C" void CreateHeap__11daNpc_Aru_cFv();
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
extern "C" void Delete__11daNpc_Aru_cFv();
extern "C" void Execute__11daNpc_Aru_cFv();
extern "C" void Draw__11daNpc_Aru_cFv();
extern "C" void createHeapCallBack__11daNpc_Aru_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_Aru_cFP8J3DJointi();
extern "C" void srchCow__11daNpc_Aru_cFPvPv();
extern "C" void srchUDoor__11daNpc_Aru_cFPvPv();
extern "C" void chkThrust__11daNpc_Aru_cFP10fopAc_ac_c();
extern "C" void getCowP__11daNpc_Aru_cFi();
extern "C" void getUDoor_l_P__11daNpc_Aru_cFv();
extern "C" void getUDoor_r_P__11daNpc_Aru_cFv();
extern "C" void getType__11daNpc_Aru_cFv();
extern "C" void isDelete__11daNpc_Aru_cFv();
extern "C" void reset__11daNpc_Aru_cFv();
extern "C" void afterJntAnm__11daNpc_Aru_cFi();
extern "C" void setParam__11daNpc_Aru_cFv();
extern "C" void checkChangeEvt__11daNpc_Aru_cFv();
extern "C" void setAfterTalkMotion__11daNpc_Aru_cFv();
extern "C" void srchActors__11daNpc_Aru_cFv();
extern "C" void evtTalk__11daNpc_Aru_cFv();
extern "C" void evtCutProc__11daNpc_Aru_cFv();
extern "C" void action__11daNpc_Aru_cFv();
extern "C" void beforeMove__11daNpc_Aru_cFv();
extern "C" void setAttnPos__11daNpc_Aru_cFv();
extern "C" void setCollision__11daNpc_Aru_cFv();
extern "C" bool drawDbgInfo__11daNpc_Aru_cFv();
extern "C" void selectAction__11daNpc_Aru_cFv();
extern "C" void chkAction__11daNpc_Aru_cFM11daNpc_Aru_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_Aru_cFM11daNpc_Aru_cFPCvPvPv_i();
extern "C" void chkBullRunningStage__11daNpc_Aru_cFv();
extern "C" void chkSkipFenceStage__11daNpc_Aru_cFv();
extern "C" void srchActorDirection__11daNpc_Aru_cFP10fopAc_ac_c();
extern "C" void adjustMoveDir__11daNpc_Aru_cFv();
extern "C" void __dt__8cM3dGPlaFv();
extern "C" void duck__11daNpc_Aru_cFi();
extern "C" void lookround__11daNpc_Aru_cFs();
extern "C" void cutRideOnHorse__11daNpc_Aru_cFi();
extern "C" void cutGotoBullRunningStage__11daNpc_Aru_cFi();
extern "C" void cutEndBullRunning__11daNpc_Aru_cFi();
extern "C" void cutGotoSkipFenceStage__11daNpc_Aru_cFi();
extern "C" void cutSpeakTo__11daNpc_Aru_cFi();
extern "C" void cutNoEntrance__11daNpc_Aru_cFi();
extern "C" void wait__11daNpc_Aru_cFPv();
extern "C" void bullRunning__11daNpc_Aru_cFPv();
extern "C" void skipFence__11daNpc_Aru_cFPv();
extern "C" void talk__11daNpc_Aru_cFPv();
extern "C" static void daNpc_Aru_Create__FPv();
extern "C" static void daNpc_Aru_Delete__FPv();
extern "C" static void daNpc_Aru_Execute__FPv();
extern "C" static void daNpc_Aru_Draw__FPv();
extern "C" static bool daNpc_Aru_IsDelete__FPv();
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
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
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
extern "C" void func_80957394(void* _this, int*);
extern "C" void func_809573B0(void* _this, f32, f32);
extern "C" void __sinit_d_a_npc_aru_cpp();
extern "C" void
__ct__11daNpc_Aru_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__11daNpc_Aru_cFv();
extern "C" s32 getHeadJointNo__11daNpc_Aru_cFv();
extern "C" s32 getNeckJointNo__11daNpc_Aru_cFv();
extern "C" bool getBackboneJointNo__11daNpc_Aru_cFv();
extern "C" void checkChangeJoint__11daNpc_Aru_cFi();
extern "C" void checkRemoveJoint__11daNpc_Aru_cFi();
extern "C" s32 getFootLJointNo__11daNpc_Aru_cFv();
extern "C" s32 getFootRJointNo__11daNpc_Aru_cFv();
extern "C" void __dt__17daNpc_Aru_Param_cFv();
extern "C" static void func_8095764C();
extern "C" static void func_80957654();
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz();
extern "C" u8 const m__17daNpc_Aru_Param_c[160];
extern "C" extern char const* const d_a_npc_aru__stringBase0;
extern "C" void* mCutNameList__11daNpc_Aru_c[7];
extern "C" u8 mCutList__11daNpc_Aru_c[84];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fpcEx_IsExist__FUi();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void getLayerNo__14dComIfG_play_cFi();
extern "C" void getTimerMode__14dComIfG_play_cFv();
extern "C" void getTimerPtr__14dComIfG_play_cFv();
extern "C" void dComIfG_TimerStart__Fis();
extern "C" void dComIfG_TimerReStart__Fi();
extern "C" void dComIfG_TimerEnd__Fii();
extern "C" void dComIfG_TimerDeleteCheck__Fi();
extern "C" void dComIfG_TimerDeleteRequest__Fi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void setGoal__16dEvent_manager_cFP4cXyz();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla();
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
extern "C" void setAngle__8daNpcT_cF5csXyz();
extern "C" void setAngle__8daNpcT_cFs();
extern "C" void hitChk__8daNpcT_cFP12dCcD_GObjInfUl();
extern "C" void setDamage__8daNpcT_cFiii();
extern "C" void chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getEvtAreaTagP__8daNpcT_cFii();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_onEvtBit__FUl();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_onTmpBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getEventId__10dMsgFlow_cFPi();
extern "C" void dTimer_createTimer__FlUlUcUcffff();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
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
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
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
extern "C" void _savegpr_19();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_19();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
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
// extern "C" u8 mFindActorPtrs__8daNpcT_c[200];
extern "C" extern u8 g_meter2_info[248];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" u8 mFindCount__8daNpcT_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz();
extern "C" void isGuardFad__7daCow_cFv();
extern "C" void __register_global_object();

/* 80957908-80957910 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[1][2] = {
    {12, 1},
};

/* 80957910-80957970 -00001 0060+00 0/1 0/0 0/0 .data            l_evtList */
static daNpcT_evtData_c l_evtList[12] = {
    {"", 0},
    {"DEFAULT_GETITEM", 0},
    {"NO_RESPONSE", 0},
    {"RIDEON_HORSE", 2},
    {"GOTO_BULLRUNNING_STAGE", 2},
    {"GOTO_BULLRUNNING_STAGE_VER2", 2},
    {"END_BULLRUNNING", 2},
    {"END_BULLRUNNING2", 2},
    {"END_BULLRUNNING3", 2},
    {"GOTO_SKIPFENCE_STAGE", 2},
    {"SPEAKTO", 2},
    {"NO_ENTRANCE", 2},
};

enum RES_Name {
    /* 0x0 */ NONE,
    /* 0x1 */ ARU,
    /* 0x2 */ ARU1,
};

/* 80957970-8095797C -00001 000C+00 2/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[3] = {
    "",
    "Aru",
    "Aru1",
};

/* 8095797C-80957980 000094 0002+02 0/0 0/0 0/0 .data            l_loadResPtrn0 */
static s8 l_loadResPtrn0[2] = {
    ARU, -1
};

/* 80957980-80957984 000098 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn9 */
static s8 l_loadResPtrn9[3] = {
    ARU, ARU1, -1,
};

/* 80957984-8095799C -00001 0018+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[6] = {
    l_loadResPtrn9, l_loadResPtrn9, l_loadResPtrn9,
    l_loadResPtrn9, l_loadResPtrn9, l_loadResPtrn9,
};

/* 8095799C-80957B08 0000B4 016C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[13] = {
    {-1, J3DFrameCtrl::EMode_NONE, 0, 18, J3DFrameCtrl::EMode_LOOP, ARU, 1},
    {6, J3DFrameCtrl::EMode_NONE, ARU, 18, J3DFrameCtrl::EMode_LOOP, ARU, 1},
    {7, J3DFrameCtrl::EMode_NONE, ARU1, 36, J3DFrameCtrl::EMode_NONE, ARU1, 0},
    {10, J3DFrameCtrl::EMode_NONE, ARU1, 39, J3DFrameCtrl::EMode_NONE, ARU1, 0},
    {6, J3DFrameCtrl::EMode_NONE, ARU1, 35, J3DFrameCtrl::EMode_NONE, ARU1, 0},
    {9, J3DFrameCtrl::EMode_NONE, ARU1, 38, J3DFrameCtrl::EMode_NONE, ARU1, 0},
    {8, J3DFrameCtrl::EMode_NONE, ARU1, 37, J3DFrameCtrl::EMode_NONE, ARU1, 0},
    {12, J3DFrameCtrl::EMode_LOOP, ARU1, 41, J3DFrameCtrl::EMode_LOOP, ARU1, 0},
    {15, J3DFrameCtrl::EMode_LOOP, ARU1, 44, J3DFrameCtrl::EMode_LOOP, ARU1, 0},
    {11, J3DFrameCtrl::EMode_LOOP, ARU1, 40, J3DFrameCtrl::EMode_LOOP, ARU1, 0},
    {13, J3DFrameCtrl::EMode_LOOP, ARU1, 42, J3DFrameCtrl::EMode_LOOP, ARU1, 0},
    {14, J3DFrameCtrl::EMode_LOOP, ARU1, 43, J3DFrameCtrl::EMode_LOOP, ARU1, 0},
    {7, J3DFrameCtrl::EMode_LOOP, ARU, 19, J3DFrameCtrl::EMode_LOOP, ARU, 0},
};

/* 80957B08-80957C74 000220 016C+00 0/1 0/0 0/0 .data            l_motionAnmData */
static daNpcT_motionAnmData_c l_motionAnmData[13] = {
    {9, J3DFrameCtrl::EMode_LOOP, ARU, 15,J3DFrameCtrl::EMode_NONE, ARU, 1, 0},
    {25, J3DFrameCtrl::EMode_LOOP, ARU1, 15, J3DFrameCtrl::EMode_NONE, ARU, 1, 0},
    {26, J3DFrameCtrl::EMode_LOOP, ARU1, 15, J3DFrameCtrl::EMode_NONE, ARU, 1, 0},
    {17, J3DFrameCtrl::EMode_NONE, ARU1, 29, J3DFrameCtrl::EMode_NONE, ARU1, 0, 0},
    {18, J3DFrameCtrl::EMode_NONE, ARU1, 30, J3DFrameCtrl::EMode_NONE, ARU1, 0, 0},
    {20, J3DFrameCtrl::EMode_NONE, ARU1, 15, J3DFrameCtrl::EMode_NONE, ARU, 1, 0},
    {21, J3DFrameCtrl::EMode_NONE, ARU1, 15, J3DFrameCtrl::EMode_NONE, ARU, 1, 0},
    {16, J3DFrameCtrl::EMode_NONE, ARU1, 15, J3DFrameCtrl::EMode_NONE, ARU, 1, 0},
    {22, J3DFrameCtrl::EMode_LOOP, ARU1, 31, J3DFrameCtrl::EMode_LOOP, ARU1, 0, 0},
    {23, J3DFrameCtrl::EMode_LOOP, ARU1, 32, J3DFrameCtrl::EMode_LOOP, ARU1, 0, 0},
    {24, J3DFrameCtrl::EMode_NONE, ARU1, 15, J3DFrameCtrl::EMode_NONE, ARU, 1, 0},
    {8, J3DFrameCtrl::EMode_NONE, ARU, 15, J3DFrameCtrl::EMode_NONE, ARU, 1, 0},
    {19, J3DFrameCtrl::EMode_LOOP, ARU1, 15, J3DFrameCtrl::EMode_NONE, ARU, 1, 0},
};

/* 80957C74-80957D44 00038C 00D0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[52] = {
    {1, -1, 1}, {12, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {2, -1, 1}, {7, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 1}, {8, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, -1, 1}, {9, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {5, -1, 1}, {11, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 1}, {10, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {12, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {8, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {9, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {11, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {10, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80957D44-80957E04 00045C 00C0+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[48] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {3, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 1}, {1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {5, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {8, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {9, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {10, -1, 1}, {2, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {12, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {11, 4, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80957E04-80957E20 -00001 001C+00 1/1 0/0 0/0 .data            mCutNameList__11daNpc_Aru_c */
char* daNpc_Aru_c::mCutNameList[7] = {
    "",
    "RIDEON_HORSE",
    "GOTO_BULLRUNNING_STAGE",
    "END_BULLRUNNING",
    "GOTO_SKIPFENCE_STAGE",
    "SPEAKTO",
    "NO_ENTRANCE",
};

/* 80957E68-80957EBC 000580 0054+00 1/2 0/0 0/0 .data            mCutList__11daNpc_Aru_c */
daNpc_Aru_c::cutFunc daNpc_Aru_c::mCutList[7] = {
    NULL,
    &daNpc_Aru_c::cutRideOnHorse,
    &daNpc_Aru_c::cutGotoBullRunningStage,
    &daNpc_Aru_c::cutEndBullRunning,
    &daNpc_Aru_c::cutGotoSkipFenceStage,
    &daNpc_Aru_c::cutSpeakTo,
    &daNpc_Aru_c::cutNoEntrance,
};

/* 80957EBC-80957EC8 -00001 000C+00 1/1 0/0 0/0 .data            @4761 */
SECTION_DATA static void* lit_4761[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Aru_cFPv,
};

/* 80957EC8-80957ED4 -00001 000C+00 1/1 0/0 0/0 .data            @4851 */
SECTION_DATA static void* lit_4851[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Aru_cFPv,
};

/* 80957ED4-80957EE0 -00001 000C+00 1/1 0/0 0/0 .data            @4856 */
SECTION_DATA static void* lit_4856[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Aru_cFPv,
};

/* 80957EE0-80957EEC -00001 000C+00 0/1 0/0 0/0 .data            @5104 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5104[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)skipFence__11daNpc_Aru_cFPv,
};
#pragma pop

/* 80957EEC-80957EF8 -00001 000C+00 0/1 0/0 0/0 .data            @5108 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5108[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)bullRunning__11daNpc_Aru_cFPv,
};
#pragma pop

/* 80957EF8-80957F04 -00001 000C+00 0/1 0/0 0/0 .data            @5110 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5110[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_Aru_cFPv,
};
#pragma pop

/* 80957F04-80957F10 -00001 000C+00 0/1 0/0 0/0 .data            @5114 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5114[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)bullRunning__11daNpc_Aru_cFPv,
};
#pragma pop

/* 80957F10-80957F1C -00001 000C+00 0/1 0/0 0/0 .data            @5116 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5116[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_Aru_cFPv,
};
#pragma pop

/* 80957F1C-80957F28 -00001 000C+00 0/1 0/0 0/0 .data            @5120 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5120[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)skipFence__11daNpc_Aru_cFPv,
};
#pragma pop

/* 80957F28-80957F34 -00001 000C+00 0/1 0/0 0/0 .data            @5124 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5124[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)bullRunning__11daNpc_Aru_cFPv,
};
#pragma pop

/* 80957F34-80957F40 -00001 000C+00 0/1 0/0 0/0 .data            @5126 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5126[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_Aru_cFPv,
};
#pragma pop

/* 80957F40-80957F4C -00001 000C+00 0/1 0/0 0/0 .data            @5128 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5128[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_Aru_cFPv,
};
#pragma pop

/* 80957F9C-80957FA8 0006B4 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGPla */
SECTION_DATA extern void* __vt__8cM3dGPla[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGPlaFv,
};

/* 80957FA8-80957FB4 0006C0 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80957FB4-80957FC0 0006CC 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80957FC0-80957FE4 0006D8 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80957654,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8095764C,
};

/* 80957FE4-80957FF0 0006FC 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80957FF0-80957FFC 000708 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80957FFC-80958008 000714 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80958008-80958014 000720 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80958014-80958020 00072C 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80958020-8095802C 000738 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 8095802C-80958038 000744 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80958038-80958044 000750 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80958044-80958108 00075C 00C4+00 2/2 0/0 0/0 .data            __vt__11daNpc_Aru_c */
SECTION_DATA extern void* __vt__11daNpc_Aru_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_Aru_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__11daNpc_Aru_cFi,
    (void*)checkRemoveJoint__11daNpc_Aru_cFi,
    (void*)getBackboneJointNo__11daNpc_Aru_cFv,
    (void*)getNeckJointNo__11daNpc_Aru_cFv,
    (void*)getHeadJointNo__11daNpc_Aru_cFv,
    (void*)getFootLJointNo__11daNpc_Aru_cFv,
    (void*)getFootRJointNo__11daNpc_Aru_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__11daNpc_Aru_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__11daNpc_Aru_cFi,
    (void*)setParam__11daNpc_Aru_cFv,
    (void*)checkChangeEvt__11daNpc_Aru_cFv,
    (void*)evtTalk__11daNpc_Aru_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__11daNpc_Aru_cFv,
    (void*)setAfterTalkMotion__11daNpc_Aru_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__11daNpc_Aru_cFv,
    (void*)beforeMove__11daNpc_Aru_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__11daNpc_Aru_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__11daNpc_Aru_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__11daNpc_Aru_cFv,
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

/* 8095178C-809518C4 0000EC 0138+00 1/0 0/0 0/0 .text            __dt__11daNpc_Aru_cFv */
daNpc_Aru_c::~daNpc_Aru_c() {
    // NONMATCHING
}

/* 809576D0-80957770 000000 00A0+00 12/12 0/0 0/0 .rodata          m__17daNpc_Aru_Param_c */
const daNpc_Aru_HIOParam daNpc_Aru_Param_c::m = {
    220.0f,
    -3.0f,
    1.0f,
    600.0f,
    255.0f,
    210.0f,
    35.0f,
    40.0f,
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
    6,
    6,
    9,
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
    0,
    0,
    4.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    0.0f,
    1500.0f,
    24.0f,
    4.0f,
    10,
    20,
    45.0f,
};

/* 80957770-80957788 0000A0 0018+00 0/1 0/0 0/0 .rodata          heapSize$4024 */
// static int const heapSize[6] = {
//     0x3D50, 0x3D50, 0x3D50, 0x3D50,
//     0x3D50, 0x0,
// };

/* 809518C4-80951BB0 000224 02EC+00 1/1 0/0 0/0 .text            create__11daNpc_Aru_cFv */
cPhs__Step daNpc_Aru_c::create() {
    fopAcM_SetupActor2(this, daNpc_Aru_c, l_faceMotionAnmData, l_motionAnmData,
                       l_faceMotionSequenceData, 4, l_motionSequenceData, 4, l_evtList, l_resNameList);

    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = false;

    cPhs__Step phase = (cPhs__Step)loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("\t(%s:%d) flowNo:%d, PathID:%02x<%08x> ", fopAcM_getProcNameString(this), mType, mFlowNodeNo, (getPathID() >> 32) & 0xFF, fopAcM_GetParam(this));

        if (isDelete()) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("\n");

        static int const heapSize[6] = {
            0x3D50, 0x3D50, 0x3D50, 0x3D50,
            0x3D50, 0x0,
        };

        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, heapSize[mType])) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -200.0f, -100.0f, -200.0f, 200.0f, 300.0f, 200.0f);

        mSound.init(&current.pos, &eyePos, 3, 1);
        field_0x9c0.init(&mAcch, 0.0f, 0.0f);

        reset();
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_Aru_Param_c::m.common.weight, 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetTgHitCallback(tgHitCallBack);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();

        if (mGroundH != -1e9f) {
            setEnvTevColor();
            setRoomNo();
        }

        if (mType == 3 &&
            /* dSv_event_flag_c::F_0573 - Ordon Village - 1st Day - Fado moves to the farm (disappears from in front of Link's house) */
            daNpcT_chkEvtBit(573)) {
            return cPhs_ERROR_e;
        }

        mCreating = true;
        Execute();
        mCreating = false;
    }

    return phase;
}

/* 80951BB0-80951E20 000510 0270+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_Aru_cFv */
int daNpc_Aru_c::CreateHeap() {
    J3DModelData* mdlData_p = static_cast<J3DModelData*>(dComIfG_getObjectRes(l_resNameList[l_bmdData[0][1]], l_bmdData[0][0]));
    if (mdlData_p == NULL) {
        return 1;
    }

    mpMorf[0] = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound, 0x80000, 0x11020284);
    if (mpMorf[0] == NULL || mpMorf[0]->getModel() == NULL) {
        return 0;
    }

    J3DModel* model = mpMorf[0]->getModel();
    for (u16 i = 0; i < mdlData_p->getJointNum(); i++) {
        mdlData_p->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((u32)this);

    mpMatAnm[0] = new daNpcT_MatAnm_c();
    if (mpMatAnm[0] == NULL) {
        return 0;
    }

    if (setFaceMotionAnm(1, false) && setMotionAnm(0, 0.0f, FALSE)) {
        return 1;
    }

    return 0;
}

/* 80951FDC-80952010 00093C 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_Aru_cFv */
int daNpc_Aru_c::Delete() {
    this->~daNpc_Aru_c();
    return 1;
}

/* 80952010-80952030 000970 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_Aru_cFv */
int daNpc_Aru_c::Execute() {
    return execute();
}

/* 80952030-809520C4 000990 0094+00 1/1 0/0 0/0 .text            Draw__11daNpc_Aru_cFv */
int daNpc_Aru_c::Draw() {
    if (mpMatAnm[0] != NULL) {
        J3DModelData* mdlData_p = mpMorf[0]->getModel()->getModelData();
        mdlData_p->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm[0]);
    }

    draw(
#ifdef DEBUG
        chkAction(&daNpc_Aru_c::test),
#else
        FALSE,
#endif
        FALSE, mRealShadowSize, NULL, 100.0f, FALSE, FALSE, FALSE
    );
}

/* 809520C4-809520E4 000A24 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__11daNpc_Aru_cFP10fopAc_ac_c */
int daNpc_Aru_c::createHeapCallBack(fopAc_ac_c* a_this) {
    return static_cast<daNpc_Aru_c*>(a_this)->CreateHeap();
}

/* 809520E4-8095213C 000A44 0058+00 1/1 0/0 0/0 .text            ctrlJointCallBack__11daNpc_Aru_cFP8J3DJointi */
int daNpc_Aru_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        daNpc_Aru_c* i_this = (daNpc_Aru_c*)j3dSys.getModel()->getUserArea();
        if (i_this != NULL) {
            i_this->ctrlJoint(i_joint, j3dSys.getModel());
        }
    }

    return 1;
}

/* 8095213C-809521E4 000A9C 00A8+00 1/1 0/0 0/0 .text            srchCow__11daNpc_Aru_cFPvPv */
void* daNpc_Aru_c::srchCow(void* i_actor, void* i_data) {
    // NONMATCHING
    if (mFindCount < 50 && i_actor != NULL && i_actor != i_data) {
        if (fopAcM_IsExecuting(fopAcM_GetID(i_actor)) && fopAcM_GetName(i_actor) == PROC_COW && !((daCow_c*)i_actor)->isGuardFad()) {
            mFindActorPtrs[mFindCount] = (fopAc_ac_c*)i_actor;
            mFindCount++;
        }
    }

    return NULL;
}

/* 809521E4-80952280 000B44 009C+00 2/2 0/0 0/0 .text            srchUDoor__11daNpc_Aru_cFPvPv */
void* daNpc_Aru_c::srchUDoor(void* i_actor, void* i_data) {
    if (mFindCount < 50 && i_actor != NULL && i_actor != i_data) {
        if (fopAcM_IsExecuting(fopAcM_GetID(i_actor)) && fopAcM_GetName(i_actor) == PROC_OBJ_UDOOR) {
            mFindActorPtrs[mFindCount] = (fopAc_ac_c*)i_actor;
            mFindCount++;
        }
    }

    return NULL;
}

/* 80952280-80952400 000BE0 0180+00 1/1 0/0 0/0 .text chkThrust__11daNpc_Aru_cFP10fopAc_ac_c */
BOOL daNpc_Aru_c::chkThrust(fopAc_ac_c* actor_p) {
    cM_atan2s(actor_p->speed.x, actor_p->speed.z);
    fopAcM_searchActorAngleY(actor_p, this);
    f32 actorDistance = fopAcM_searchActorDistance(this, actor_p);

    if (actor_p != NULL) {
        if (cM3d_IsZero(actor_p->speedF) <= 0 && (cM3d_IsZero(actor_p->speed.x) <= 0 || cM3d_IsZero(actor_p->speed.z) <= 0)) {
            f32 fVar2 = fopAcM_searchActorDistance(this, actor_p);
            s16 sVar1 = cM_atan2s(actor_p->speed.x, actor_p->speed.z) - fopAcM_searchActorAngleY(actor_p, this);

            if (fVar2 < daNpc_Aru_Param_c::m.warning_range) {
                if (abs(sVar1) < cM_deg2s(35.0f)) {
                    return TRUE;
                }
            }
        }

        if (fopAcM_GetName(actor_p) == PROC_ALINK && daPy_py_c::checkNowWolf() && actorDistance < daNpc_Aru_Param_c::m.warning_range) {
            return TRUE;
        }
    }

    return FALSE;
}

/* 80952400-8095253C 000D60 013C+00 1/1 0/0 0/0 .text            getCowP__11daNpc_Aru_cFi */
fopAc_ac_c* daNpc_Aru_c::getCowP(int param_1) {
    mFindCount = 0;

    if (daPy_py_c::checkNowWolf()) {
        mFindActorPtrs[mFindCount] = daPy_getPlayerActorClass();

        if (mFindActorPtrs[mFindCount] != NULL) {
            mFindCount++;
        }
    }

    if (param_1 != 0 && dComIfGp_getHorseActor() != NULL) {
        mFindActorPtrs[mFindCount] = (fopAc_ac_c*)dComIfGp_getHorseActor();

        if (mFindActorPtrs[mFindCount] != NULL) {
            mFindCount++;
        }
    }

    field_0xfd2 = 0;
    fopAcM_Search(srchCow, this);

    if (field_0xfd2 != 0) {
        return NULL;
    }

    for (int i = 0; i < mFindCount; i++) {
        if (chkThrust(mFindActorPtrs[i])) {
            return mFindActorPtrs[i];
        }
    }

    return NULL;
}

/* 8095253C-8095260C 000E9C 00D0+00 1/1 0/0 0/0 .text            getUDoor_l_P__11daNpc_Aru_cFv */
fopAc_ac_c* daNpc_Aru_c::getUDoor_l_P() {
    fopAc_ac_c* rv = NULL;
    f32 fVar1 = 1e9f;
    
    mFindCount = 0;
    fopAcM_Search(srchUDoor, this);

    for (int i = 0; i < mFindCount; i++) {
        if (((obj_udoor_class*)mFindActorPtrs[i])->field_0x570 == 1 && fopAcM_searchActorDistance(this, mFindActorPtrs[i]) < fVar1) {
            fVar1 = fopAcM_searchActorDistance(this, mFindActorPtrs[i]);
            rv = mFindActorPtrs[i];
        }
    }

    return rv;
}

/* 8095260C-809526DC 000F6C 00D0+00 1/1 0/0 0/0 .text            getUDoor_r_P__11daNpc_Aru_cFv */
fopAc_ac_c* daNpc_Aru_c::getUDoor_r_P() {
    fopAc_ac_c* rv = NULL;
    f32 fVar1 = 1e9f;
    
    mFindCount = 0;
    fopAcM_Search(srchUDoor, this);

    for (int i = 0; i < mFindCount; i++) {
        if (((obj_udoor_class*)mFindActorPtrs[i])->field_0x570 == 0 && fopAcM_searchActorDistance(this, mFindActorPtrs[i]) < fVar1) {
            fVar1 = fopAcM_searchActorDistance(this, mFindActorPtrs[i]);
            rv = mFindActorPtrs[i];
        }
    }

    return rv;
}

/* 809526DC-80952740 00103C 0064+00 1/1 0/0 0/0 .text            getType__11daNpc_Aru_cFv */
u8 daNpc_Aru_c::getType() {
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

        default:
            return 5;
    }
}

/* 80952740-809527CC 0010A0 008C+00 1/1 0/0 0/0 .text            isDelete__11daNpc_Aru_cFv */
BOOL daNpc_Aru_c::isDelete() {
    switch (mType) {
        case 0:
            /* dSv_event_flag_c::M_002 - Cutscene - [cutscene: 2] Met with Ilia (brings horse to spring) */
            return daNpcT_chkEvtBit(169);

        case 1:
            return FALSE;
        
        case 2:
            /* dSv_event_flag_c::M_013 - Misc. - First heard about Twilight gate from Midna */
            return daNpcT_chkEvtBit(45) == FALSE;

        case 3:
            /* dSv_event_flag_c::F_0573 - Ordon Village - 1st Day - Fado moves to the farm (disappears from in front of Link's house) */
            return daNpcT_chkEvtBit(573);

        case 4:
            return FALSE;

        default:
            return FALSE;
    }
}

/* 809527CC-80952B00 00112C 0334+00 1/1 0/0 0/0 .text            reset__11daNpc_Aru_cFv */
void daNpc_Aru_c::reset() {
    csXyz angle;
    int iVar1 = (u8*)&field_0xfd4 - (u8*)&mNextAction;

    if (mpMatAnm[0] != NULL) {
        mpMatAnm[0]->initialize();
    }

    initialize();

    for (int i = 0; i < 4; i++) {
        mActorMngrs[i].initialize();
    }

    memset(&mNextAction, 0, iVar1);
    angle.setall(0);
    angle.y = home.angle.y;

    switch (mType) {
        case 0:
            field_0xfbc = fpcM_ERROR_PROCESS_ID_e;
            mPlayerActorMngr.entry(daPy_getPlayerActorClass());
            mEventTimer = 30;
            break;
        
        case 2:
            field_0xfbc = fpcM_ERROR_PROCESS_ID_e;
            mPlayerActorMngr.entry(daPy_getPlayerActorClass());
            mEventTimer = 30;
            break;

        case 3:
            /* dSv_event_flag_c::F_0573 - Ordon Village - 1st Day - Fado moves to the farm (disappears from in front of Link's house) */
            if (!daNpcT_chkEvtBit(573)) {
                if (daPy_getPlayerActorClass()->checkHorseStart()) {
                    daNpcT_onEvtBit(573);
                }
            }
            break;
            
        case 4:
            field_0xfbc = fpcM_ERROR_PROCESS_ID_e;
            mEventTimer = 30;
            break;
    }

    if (!chkBullRunningStage()) {
        if (!chkSkipFenceStage()) {
            if ((strcmp(dComIfGp_getStartStageName(), "F_SP00") != 0 || (dComIfG_play_c::getLayerNo(0) != 2 && dComIfG_play_c::getLayerNo(0) != 13)) &&
                /* dSv_event_flag_c::M_002 - Cutscene - [cutscene: 2] Met with Ilia (brings horse to spring) */
                !daNpcT_chkEvtBit(169)) {
                daNpcT_offTmpBit(91); // dSv_event_tmp_flag_c::T_0091 - Ordon Ranch - Goat herding in second half (for day 1 check)
                daNpcT_offTmpBit(151); // dSv_event_tmp_flag_c::CAT_1 - Ordon Village - 3rd day: Heard results of goat herding
                daNpcT_offTmpBit(152); // dSv_event_tmp_flag_c::CAT_2 - Ordon Village - 3rd day: Spoke with Fado after herding goats
                daNpcT_offTmpBit(153); // dSv_event_tmp_flag_c::CAT_3 - Ordon Village - 3rd day: Fado's first conversation
                daNpcT_offTmpBit(179); // dSv_event_tmp_flag_c::T_0179 - Ordon Ranch - 3rd day - Goat herding START
                daNpcT_offTmpBit(180); // dSv_event_tmp_flag_c::T_0180 - Ordon Ranch - 3rd day - Goat herding END

                /* dSv_event_flag_c::F_0700 - N/A - First day ends */
                if (!daNpcT_chkEvtBit(603)) {
                    daNpcT_offTmpBit(175); // dSv_event_tmp_flag_c::T_0175 - Ordon Ranch - 1st day: Start Fado's goat herding
                    daNpcT_offTmpBit(176); // dSv_event_tmp_flag_c::T_0176 - Ordon Ranch - 1st day: Finish Fado's goat herding
                    daNpcT_offTmpBit(177); // dSv_event_tmp_flag_c::T_0177 - Ordon Ranch - 1st day: Asked to jump gate by Fado
                    daNpcT_offTmpBit(178); // dSv_event_tmp_flag_c::T_0178 - Ordon Ranch - 1st day: Spoke with Fado while jumping over gate
                }
            }
        }
    } else {
        angle.y = fopAcM_searchPlayerAngleY(this);
    }

    setAngle(angle);
}

/* 80952B00-80952B84 001460 0084+00 1/0 0/0 0/0 .text            afterJntAnm__11daNpc_Aru_cFi */
void daNpc_Aru_c::afterJntAnm(int param_1) {
    if (param_1 == 1) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(-mStagger.getAngleX(1));
    } else if (param_1 == 4) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(0));
    }
}

/* 80952B84-80952CE8 0014E4 0164+00 1/0 0/0 0/0 .text            setParam__11daNpc_Aru_cFv */
void daNpc_Aru_c::setParam() {
    selectAction();
    srchActors();
    u32 attnFlag = fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e;
    s16 talk_distance = daNpc_Aru_Param_c::m.common.talk_distance;
    s16 talk_angle = daNpc_Aru_Param_c::m.common.talk_angle;
    s16 attention_distance = daNpc_Aru_Param_c::m.common.attention_distance;
    s16 attention_angle = daNpc_Aru_Param_c::m.common.attention_angle;

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

    if (daPy_py_c::checkNowWolf()) {
        attnFlag = fopAc_AttnFlag_LOCK_e;
    }

    attention_info.flags = attnFlag;

    scale.set(daNpc_Aru_Param_c::m.common.scale, daNpc_Aru_Param_c::m.common.scale, daNpc_Aru_Param_c::m.common.scale);
    mCcStts.SetWeight(daNpc_Aru_Param_c::m.common.weight);
    mCylH = daNpc_Aru_Param_c::m.common.height;
    mWallR = daNpc_Aru_Param_c::m.common.width;
    mAttnFovY = daNpc_Aru_Param_c::m.common.fov;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(daNpc_Aru_Param_c::m.common.knee_length);
    mRealShadowSize = daNpc_Aru_Param_c::m.common.real_shadow_size;
    mExpressionMorfFrame = daNpc_Aru_Param_c::m.common.expression_morf_frame;
    mMorfFrames = daNpc_Aru_Param_c::m.common.morf_frame;
    gravity = daNpc_Aru_Param_c::m.common.gravity;
}

/* 80952CE8-80952D9C 001648 00B4+00 1/0 0/0 0/0 .text            checkChangeEvt__11daNpc_Aru_cFv */
BOOL daNpc_Aru_c::checkChangeEvt() {
    if (!chkAction(&daNpc_Aru_c::talk)) {
        mPreItemNo = 0;

        if (dComIfGp_event_chkTalkXY()) {
            if (dComIfGp_evmng_ChkPresentEnd()) {
                mEvtNo = 2;
                evtChange();
            }

            return TRUE;
        }
    }

    return FALSE;
}

/* 80952D9C-80952E64 0016FC 00C8+00 1/0 0/0 0/0 .text            setAfterTalkMotion__11daNpc_Aru_cFv */
void daNpc_Aru_c::setAfterTalkMotion() {
    int i_index = 0xC;

    switch (mFaceMotionSeqMngr.getNo()) {
        case 0:
            i_index = 6;
            break;
        
        case 1:
            i_index = 7;
            break;

        case 2:
            i_index = 8;
            break;
        
        case 3:
            i_index = 9;
            break;

        case 4:
            i_index = 10;
            break;

        case 5:
            i_index = 11;
            break;
    }

    mFaceMotionSeqMngr.setNo(i_index, -1.0f, FALSE, 0);
}

/* 80952E64-809530DC 0017C4 0278+00 1/1 0/0 0/0 .text            srchActors__11daNpc_Aru_cFv */
void daNpc_Aru_c::srchActors() {
    switch (mType) {
        case 0:
            if (chkBullRunningStage() && field_0xfbc == fpcM_ERROR_PROCESS_ID_e) {
                field_0xfbc = dTimer_createTimer(2, 0x989298, 3, 0, 210.0f, 410.0f, 32.0f, 419.0f);
            }

            if (mActorMngrs[0].getActorP() == NULL) {
                mActorMngrs[0].entry(getUDoor_l_P());
            }

            if (mActorMngrs[1].getActorP() == NULL) {
                mActorMngrs[1].entry(getUDoor_r_P());
            }
            break;
        
        case 2:
            if (chkBullRunningStage() && field_0xfbc == fpcM_ERROR_PROCESS_ID_e) {
                field_0xfbc = dTimer_createTimer(2, 0x989298, 3, 0, 210.0f, 410.0f, 32.0f, 419.0f);
            }

            if (mActorMngrs[0].getActorP() == NULL) {
                mActorMngrs[0].entry(getUDoor_l_P());
            }

            if (mActorMngrs[1].getActorP() == NULL) {
                mActorMngrs[1].entry(getUDoor_r_P());
            }
            break;

        case 3:
            if (mActorMngrs[3].getActorP() == NULL) {
                mActorMngrs[3].entry(getEvtAreaTagP(23, 0));
            }
            break;

        case 4:
            if (chkBullRunningStage() && field_0xfbc == fpcM_ERROR_PROCESS_ID_e) {
                field_0xfbc = dTimer_createTimer(2, 0x989298, 2, 0, 210.0f, 410.0f, 32.0f, 419.0f);
            }

            if (mActorMngrs[0].getActorP() == NULL) {
                mActorMngrs[0].entry(getUDoor_l_P());
            }

            if (mActorMngrs[1].getActorP() == NULL) {
                mActorMngrs[1].entry(getUDoor_r_P());
            }

            if (mActorMngrs[3].getActorP() == NULL) {
                mActorMngrs[3].entry(getEvtAreaTagP(25, 0));
            }
            break;
    }
}

/* 809530DC-8095317C 001A3C 00A0+00 1/0 0/0 0/0 .text            evtTalk__11daNpc_Aru_cFv */
BOOL daNpc_Aru_c::evtTalk() {
    if (chkAction(&daNpc_Aru_c::talk)) {
        (this->*mAction)(NULL);
    } else {
        setAction(&daNpc_Aru_c::talk);
    }

    return TRUE;
}

/* 8095317C-80953244 001ADC 00C8+00 1/0 0/0 0/0 .text            evtCutProc__11daNpc_Aru_cFv */
BOOL daNpc_Aru_c::evtCutProc() {
    int staffId = dComIfGp_getEventManager().getMyStaffId("Aru", this, -1);

    if (staffId != -1) {
        mStaffId = staffId;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, mCutNameList, 7, 0, 0);

        if ((this->*mCutList[actIdx])(mStaffId)) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }

        return TRUE;
    }

    return FALSE;
}

/* 80953244-809533D8 001BA4 0194+00 1/0 0/0 0/0 .text            action__11daNpc_Aru_cFv */
void daNpc_Aru_c::action() {
    fopAc_ac_c* actor_p = hitChk(&mCyl, 0xFFFFFFFF);

    if (actor_p != NULL && mCyl.GetTgHitObj()->ChkAtType(AT_TYPE_THROW_OBJ)) {
        mStagger.setParam(this, actor_p, mCurAngle.y);
        setDamage(0, 12, 0);
        mDamageTimerStart = 0;
        mJntAnm.lookNone(1);
        field_0xfc4 = 0;
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

/* 809533D8-8095349C 001D38 00C4+00 1/0 0/0 0/0 .text            beforeMove__11daNpc_Aru_cFv */
void daNpc_Aru_c::beforeMove() {
    fopAcM_OffStatus(this, fopAcM_STATUS_UNK_80000000);

    if (checkHide()) {
        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_80000000);
    }

    if (checkHide() || mNoDraw) {
        attention_info.flags = 0;
    }
}

/* 8095816C-80958170 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daNpc_Aru_Param_c l_HIO;

/* 8095349C-80953798 001DFC 02FC+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_Aru_cFv */
void daNpc_Aru_c::setAttnPos() {
    // NONMATCHING
    cXyz sp40(-30.0f, 10.0f, 0.0f);
    cXyz sp4c(0.0f, 10.0f, 0.0f);

    mStagger.calc(FALSE);
    f32 rad = cM_s2rad((s16)(mCurAngle.y - field_0xd7e.y));

    mJntAnm.setParam(this, mpMorf[0]->getModel(), &sp40, getBackboneJointNo(), getNeckJointNo(), getHeadJointNo(),
                     daNpc_Aru_Param_c::m.common.body_angleX_min, daNpc_Aru_Param_c::m.common.body_angleX_max,
                     daNpc_Aru_Param_c::m.common.body_angleY_min, daNpc_Aru_Param_c::m.common.body_angleY_max,
                     daNpc_Aru_Param_c::m.common.head_angleX_min, daNpc_Aru_Param_c::m.common.head_angleX_max,
                     daNpc_Aru_Param_c::m.common.head_angleY_min, daNpc_Aru_Param_c::m.common.head_angleY_max,
                     daNpc_Aru_Param_c::m.common.neck_rotation_ratio, rad, &sp4c);
    mJntAnm.calcJntRad(0.2f, 1.0f, rad);
    
    setMtx();
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&sp40, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, 0);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y + field_0xd8a.y, TRUE, 1.0f, 0);

    sp40.set(0.0f, 0.0f, 20.0f);
    sp40.y = daNpc_Aru_Param_c::m.common.attention_offset;
    mDoMtx_stack_c::YrotS(mCurAngle.y);
    mDoMtx_stack_c::multVec(&sp40, &sp40);
    attention_info.position = current.pos + sp40;

    static cXyz prtclScl(1.0f, 1.0f, 1.0f);
    setFootPos();
    setFootPrtcl(&prtclScl, 0.0f, 0.0f);
}

/* 80953798-809538F0 0020F8 0158+00 1/0 0/0 0/0 .text            setCollision__11daNpc_Aru_cFv */
void daNpc_Aru_c::setCollision() {
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

        mCyl.SetCoSPrm(0x79);
        mCyl.SetTgType(tgType);
        mCyl.SetTgSPrm(tgSPrm);
        mCyl.OnTgNoHitMark();

        pos.set(0.0f, 0.0f, 0.0f);
        f32 cylH = mCylH;
        f32 wallR = mWallR;

        mDoMtx_stack_c::YrotS(mCurAngle.y);
        mDoMtx_stack_c::multVec(&pos, &pos);
        pos += current.pos;
        mCyl.SetH(cylH);
        mCyl.SetR(wallR);
        mCyl.SetC(pos);
        dComIfG_Ccsp()->Set(&mCyl);
    }

    mCyl.ClrCoHit();
    mCyl.ClrTgHit();
}

/* 809538F0-809538F8 002250 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_Aru_cFv */
int daNpc_Aru_c::drawDbgInfo() {
    return 0;
}

/* 809538F8-80953AB8 002258 01C0+00 1/1 0/0 0/0 .text            selectAction__11daNpc_Aru_cFv */
BOOL daNpc_Aru_c::selectAction() {
    // NONMATCHING
    mNextAction = NULL;

    switch (mType) {
        case 0:
            if (chkSkipFenceStage()) {
                mNextAction = &daNpc_Aru_c::skipFence;
                break;
            }

            if (chkBullRunningStage()) {
                mNextAction = &daNpc_Aru_c::bullRunning;
                break;
            }

            mNextAction = &daNpc_Aru_c::wait;
            break;
        
        case 2:
            if (!chkBullRunningStage()) {
                mNextAction = &daNpc_Aru_c::wait;
            } else {
                mNextAction = &daNpc_Aru_c::bullRunning;
            }
            break;

        case 4:
            if (chkSkipFenceStage()) {
                mNextAction = &daNpc_Aru_c::skipFence;
                break;
            }

            if (chkBullRunningStage()) {
                mNextAction = &daNpc_Aru_c::bullRunning;
                break;
            }

            mNextAction = &daNpc_Aru_c::wait;
            break;

        default:
            mNextAction = &daNpc_Aru_c::wait;
            break;
    }

    return TRUE;
}

/* 80953AB8-80953AE4 002418 002C+00 2/2 0/0 0/0 .text            chkAction__11daNpc_Aru_cFM11daNpc_Aru_cFPCvPvPv_i */
BOOL daNpc_Aru_c::chkAction(actionFunc action) {
    return mAction == action;
}

/* 80953AE4-80953B8C 002444 00A8+00 2/2 0/0 0/0 .text            setAction__11daNpc_Aru_cFM11daNpc_Aru_cFPCvPvPv_i */
BOOL daNpc_Aru_c::setAction(actionFunc action) {
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

/* 80953B8C-80953C08 0024EC 007C+00 4/4 0/0 0/0 .text            chkBullRunningStage__11daNpc_Aru_cFv */
BOOL daNpc_Aru_c::chkBullRunningStage() {
    BOOL rv;

    if (strcmp(dComIfGp_getStartStageName(), "F_SP00") == 0) {
        rv = dComIfG_play_c::getLayerNo(0) == 4 || dComIfG_play_c::getLayerNo(0) == 5;
    } else {
        rv = FALSE;
    }

    return rv;
}

/* 80953C08-80953C84 002568 007C+00 2/2 0/0 0/0 .text            chkSkipFenceStage__11daNpc_Aru_cFv */
BOOL daNpc_Aru_c::chkSkipFenceStage() {
    BOOL rv;

    if (strcmp(dComIfGp_getStartStageName(), "F_SP00") == 0) {
        rv = dComIfG_play_c::getLayerNo(0) == 6 || dComIfG_play_c::getLayerNo(0) == 7;
    } else {
        rv = FALSE;
    }

    return rv;
}

/* 80953C84-80953D58 0025E4 00D4+00 1/1 0/0 0/0 .text            srchActorDirection__11daNpc_Aru_cFP10fopAc_ac_c */
s16 daNpc_Aru_c::srchActorDirection(fopAc_ac_c* actor_p) {
    s16 rv;
    s16 sVar1 = fopAcM_searchActorAngleY(this, actor_p) - mCurAngle.y;
    s16 sVar2 = abs(sVar1);
    s16 sVar3 = cM_deg2s(daNpc_Aru_Param_c::m.forward_visibility);
    
    if (sVar2 < sVar3) {
        if (sVar1 > 0) {
            rv = 7;
        } else {
            rv = 1;
        }
    } else if ((s16)(0x8000 - sVar3) < sVar2) {
        if (sVar1 > 0) {
            rv = 5;
        } else {
            rv = 3;
        }
    } else if (sVar1 > 0) {
        rv = 6;
    } else {
        rv = 2;
    }

    return (s16)rv;
}

/* 80953D58-809543B0 0026B8 0658+00 1/1 0/0 0/0 .text            adjustMoveDir__11daNpc_Aru_cFv */
void daNpc_Aru_c::adjustMoveDir() {
    cM3dGPla planes[3];
    cXyz sp84, sp90, sp9c;
    s16 sVar1[3] = {0, -0x2000, 0x2000};
    bool bVar1[3];
    f32 fVar1[3];
    s16 sVar3[3];

    sp84 = current.pos;
    sp84.y += daNpc_Aru_Param_c::m.common.knee_length;

    for (int i = 0; i < 3; i++) {
        bVar1[i] = 0;
        sp90 = sp84;

        if (i != 0) {
            sp90.x += cM_ssin(mCurAngle.y + sVar1[i]) * 280.0f;
            sp90.z += cM_scos(mCurAngle.y + sVar1[i]) * 280.0f;
        } else {
            sp90.x += cM_ssin(mCurAngle.y + sVar1[i]) * 400.0f;
            sp90.z += cM_scos(mCurAngle.y + sVar1[i]) * 400.0f;
        }

        mLinChk.Set(&sp84, &sp90, this);

        if (dComIfG_Bgsp().LineCross(&mLinChk)) {
            bVar1[i] = dComIfG_Bgsp().GetTriPla(mLinChk, &planes[i]);
            f32 fVar2 = cM_ssin(0x6000);
            f32 fVar3 = std::abs(planes[i].mNormal.y);

            if (fVar3 <= fVar2) {
                sp9c = current.pos - mLinChk.GetCross();
                fVar1[i] = sp9c.absXZ();
                sVar3[i] = cM_atan2s(planes[i].mNormal.x, planes[i].mNormal.z);
            } else {
                bVar1[i] = 0;
            }
        }
    }

    if (bVar1[1] != 0 && bVar1[2] != 0) {
        field_0xfc0 = daNpc_Aru_Param_c::m.no_turn_time;

        switch (field_0xfca) {
            case 1:
            case 2:
                field_0xfca = 2;
                break;

            case 6:
            case 7:
                field_0xfca = 6;
                break;

            default:
                if (field_0xfc8 == 1 || field_0xfc8 == 2 || field_0xfc8 == 3) {
                    field_0xfca = 2;
                } else {
                    field_0xfca = 6;
                }
                break;
        }
    } else if (bVar1[0] != 0) {
        if (bVar1[1] != 0) {
            if (field_0xfc8 == 5 || field_0xfc8 == 3) {
                field_0xfca = 7;
            } else {
                field_0xfca = 6;
            }
        } else if (bVar1[2] != 0) {
            if (field_0xfc8 == 5 || field_0xfc8 == 3) {
                field_0xfca = 1;
            } else {
                field_0xfca = 2;
            }
        } else {
            s16 sVar4 = sVar3[0] - mCurAngle.y;

            if (abs(sVar4) > 0x7800) {
                if (field_0xfc8 == 1 || field_0xfc8 == 2 || field_0xfc8 == 3) {
                    field_0xfca = 6;
                } else {
                    field_0xfca = 2;
                }
            } else if (sVar4 > 0) {
                field_0xfca = 6;
            } else {
                field_0xfca = 2;
            }
        }
    } else if (bVar1[1]) {
        switch (field_0xfc8) {
            case 1:
            case 7:
                field_0xfca = 6;
                field_0xfc0 = daNpc_Aru_Param_c::m.no_turn_time;
                break;
            
            case 2:
                field_0xfca = 7;
                break;

            default:
                field_0xfca = 0;

                if (fVar1[1] < 200.0f) {
                    field_0xfca = 7;
                }
                break;
        }
    } else if (bVar1[2]) {
        switch (field_0xfc8) {
            case 1:
            case 7:
                field_0xfca = 2;
                field_0xfc0 = daNpc_Aru_Param_c::m.no_turn_time;
                break;

            case 6:
                field_0xfca = 1;
                break;

            default:
                field_0xfca = 0;

                if (fVar1[2] < 200.0f) {
                    field_0xfca = 1;
                }
                break;
        }
    } else if (cLib_calcTimer(&field_0xfc0) == 0) {
        switch (field_0xfc8) {
            case 7:
                field_0xfca = 2;
                break;
                
            case 1:
                field_0xfca = 6;
                break;
            
            case 6:
                field_0xfca = 1;
                break;

            case 2:
                field_0xfca = 7;
                break;

            default:
                field_0xfca = 0;
                break;
        }
    }
}

/* 809543F8-80954744 002D58 034C+00 2/2 0/0 0/0 .text            duck__11daNpc_Aru_cFi */
int daNpc_Aru_c::duck(int param_1) {
    // NONMATCHING
    int iVar1 = daNpc_Aru_Param_c::m.avoid_time;
    fopAc_ac_c* cow_p = (fopAc_ac_c*)getCowP(param_1);

    if (cow_p != NULL) {
        if (field_0xfc4 == 0) {
            mFaceMotionSeqMngr.setNo(0xC, -1.0f, FALSE, 0);
            mMotionSeqMngr.setNo(0xA, -1.0f, FALSE, 0);
        }

        field_0xfc4 = cLib_getRndValue(iVar1 * 0.5f, iVar1 * 1.5f);
        if (mActorMngrs[2].getActorP() == NULL || (mActorMngrs[2].getActorP() != NULL && cow_p != mActorMngrs[2].getActorP())) {
            mActorMngrs[2].entry(cow_p);
        }
    }

    if (field_0xfc4 != 0) {
        if (cLib_calcTimer(&field_0xfc4) != 0) {
            cow_p = mActorMngrs[2].getActorP();
            if (cow_p != NULL) {
                field_0xfc8 = srchActorDirection(cow_p);
            }

            adjustMoveDir();
            s16 sVar1 = current.angle.y;

            switch (field_0xfca) {
                case 1:
                    sVar1 -= 0x1000;
                    break;

                case 7:
                    sVar1 += 0x1000;
                    break;
                
                case 2:
                    sVar1 -= 0x4000;
                    break;
                
                case 6:
                    sVar1 += 0x4000;
                    break;
            }

            mJntAnm.lookActor(cow_p, 0.0f, 0);
            cLib_addCalcAngleS2(&current.angle.y, sVar1, MREG_S(0) + 6, MREG_S(1) + 0x800);
            shape_angle.y = current.angle.y;
            mCurAngle.y = shape_angle.y;
            cLib_chaseF(&speedF, daNpc_Aru_Param_c::m.run_speed, 1.5f);
            speedF *= cM_scos(mGroundAngle);

            if (mGroundAngle < 0) {
                speedF *= 0.85f;
            }

            mCcStts.SetWeight(37);
            return 1;
        }

        mFaceMotionSeqMngr.setNo(0xC, -1.0f, FALSE, 0);
        mMotionSeqMngr.setNo(0, -1.0f, FALSE, 0);
        speedF = 0.0f;
    }

    return 0;
}

/* 80954744-80954894 0030A4 0150+00 3/3 0/0 0/0 .text            lookround__11daNpc_Aru_cFs */
int daNpc_Aru_c::lookround(s16 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8095781C-8095781C 00014C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809578E4 = "prm";
#pragma pop

/* 80954894-80954A5C 0031F4 01C8+00 1/0 0/0 0/0 .text            cutRideOnHorse__11daNpc_Aru_cFi */
int daNpc_Aru_c::cutRideOnHorse(int param_1) {
    // NONMATCHING
}

/* 80954A5C-80954C0C 0033BC 01B0+00 1/0 0/0 0/0 .text cutGotoBullRunningStage__11daNpc_Aru_cFi */
int daNpc_Aru_c::cutGotoBullRunningStage(int param_1) {
    // NONMATCHING
}

/* 80954C0C-80954F4C 00356C 0340+00 1/0 0/0 0/0 .text            cutEndBullRunning__11daNpc_Aru_cFi
 */
int daNpc_Aru_c::cutEndBullRunning(int param_1) {
    // NONMATCHING
}

/* 80954F4C-80955080 0038AC 0134+00 1/0 0/0 0/0 .text cutGotoSkipFenceStage__11daNpc_Aru_cFi */
int daNpc_Aru_c::cutGotoSkipFenceStage(int param_1) {
    // NONMATCHING
}

/* 80955080-8095533C 0039E0 02BC+00 1/0 0/0 0/0 .text            cutSpeakTo__11daNpc_Aru_cFi */
int daNpc_Aru_c::cutSpeakTo(int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80957818-8095781C 000148 0004+00 0/1 0/0 0/0 .rodata          @5926 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5926 = 500.0f;
COMPILER_STRIP_GATE(0x80957818, &lit_5926);
#pragma pop

/* 8095533C-80955608 003C9C 02CC+00 1/0 0/0 0/0 .text            cutNoEntrance__11daNpc_Aru_cFi */
int daNpc_Aru_c::cutNoEntrance(int param_1) {
    // NONMATCHING
}

/* 80955608-80955B48 003F68 0540+00 4/0 0/0 0/0 .text            wait__11daNpc_Aru_cFPv */
int daNpc_Aru_c::wait(void* param_1) {
    // NONMATCHING
}

/* 80955B48-80955DE8 0044A8 02A0+00 3/0 0/0 0/0 .text            bullRunning__11daNpc_Aru_cFPv */
int daNpc_Aru_c::bullRunning(void* param_1) {
    // NONMATCHING
}

/* 80955DE8-80955F98 004748 01B0+00 2/0 0/0 0/0 .text            skipFence__11daNpc_Aru_cFPv */
int daNpc_Aru_c::skipFence(void* param_1) {
    // NONMATCHING
}

/* 80955F98-809562C0 0048F8 0328+00 3/0 0/0 0/0 .text            talk__11daNpc_Aru_cFPv */
int daNpc_Aru_c::talk(void* param_1) {
    // NONMATCHING
}

#ifdef DEBUG
int daNpc_Aru_c::test(void* param_1) {

}
#endif

/* 809562C0-809562E0 004C20 0020+00 1/0 0/0 0/0 .text            daNpc_Aru_Create__FPv */
static void daNpc_Aru_Create(void* param_1) {
    // NONMATCHING
}

/* 809562E0-80956300 004C40 0020+00 1/0 0/0 0/0 .text            daNpc_Aru_Delete__FPv */
static void daNpc_Aru_Delete(void* param_1) {
    // NONMATCHING
}

/* 80956300-80956320 004C60 0020+00 1/0 0/0 0/0 .text            daNpc_Aru_Execute__FPv */
static void daNpc_Aru_Execute(void* param_1) {
    // NONMATCHING
}

/* 80956320-80956340 004C80 0020+00 1/0 0/0 0/0 .text            daNpc_Aru_Draw__FPv */
static void daNpc_Aru_Draw(void* param_1) {
    // NONMATCHING
}

/* 80956340-80956348 004CA0 0008+00 1/0 0/0 0/0 .text            daNpc_Aru_IsDelete__FPv */
static bool daNpc_Aru_IsDelete(void* param_1) {
    return true;
}

/* 80956348-80956378 004CA8 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_1) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80956378-809563C0 004CD8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 809563C0-80956748 004D20 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80956748-80956784 0050A8 003C+00 4/4 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80956784-809567C0 0050E4 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 809567C0-80956808 005120 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80956808-80956844 005168 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80956844-8095688C 0051A4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 8095688C-809568D4 0051EC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 809568D4-80956CD8 005234 0404+00 1/1 0/0 0/0 .text
 * __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
// daNpcT_c::daNpcT_c(daNpcT_faceMotionAnmData_c const* param_1,
//                        daNpcT_motionAnmData_c const* param_1,
//                        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
//                        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
//                        daNpcT_evtData_c const* param_6, char** param_7) {
extern "C" void __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc() {
    // NONMATCHING
}

/* 80956CD8-80956CDC 005638 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80956CDC-80956DD8 00563C 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80956DD8-80956DDC 005738 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80956DDC-80956E24 00573C 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80956E24-80956E94 005784 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80956E94-80956EF0 0057F4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80956EF0-80956F60 005850 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80956F60-80956FA8 0058C0 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80956FA8-809570C4 005908 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_1, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 809570C4-809572CC 005A24 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_1, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 809572CC-809572D0 005C2C 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_1) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 809572D0-809572D8 005C30 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 809572D8-809572E0 005C38 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 809572E0-809572E8 005C40 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 809572E8-809572EC 005C48 0004+00 1/0 0/0 0/0 .text            afterMoved__8daNpcT_cFv */
// void daNpcT_c::afterMoved() {
extern "C" void afterMoved__8daNpcT_cFv() {
    /* empty function */
}

/* 809572EC-809572F4 005C4C 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 809572F4-8095730C 005C54 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 8095730C-80957310 005C6C 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80957310-80957314 005C70 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80957314-8095731C 005C74 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_1, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 8095731C-80957324 005C7C 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_1, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80957324-80957354 005C84 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_1) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80957354-80957384 005CB4 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_1) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80957384-80957388 005CE4 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_1, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80957388-8095738C 005CE8 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_1, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 8095738C-80957390 005CEC 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_1, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80957390-80957394 005CF0 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_1, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80957394-809573B0 005CF4 001C+00 3/3 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80957394(void* _this, int* param_1) {
    // NONMATCHING
}

/* 809573B0-809573EC 005D10 003C+00 1/1 0/0 0/0 .text            cLib_getRndValue<f>__Fff */
extern "C" void func_809573B0(void* _this, f32 param_1, f32 param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80958108-80958114 000820 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_Aru_Param_c */
SECTION_DATA extern void* __vt__17daNpc_Aru_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_Aru_Param_cFv,
};

/* 809573EC-809574E8 005D4C 00FC+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_aru_cpp */
void __sinit_d_a_npc_aru_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x809573EC, __sinit_d_a_npc_aru_cpp);
#pragma pop

/* 809575B4-809575BC 005F14 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__11daNpc_Aru_cFv */
u16 daNpc_Aru_c::getEyeballMaterialNo() {
    return 2;
}

/* 809575BC-809575C4 005F1C 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__11daNpc_Aru_cFv */
s32 daNpc_Aru_c::getHeadJointNo() {
    return 4;
}

/* 809575C4-809575CC 005F24 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__11daNpc_Aru_cFv */
s32 daNpc_Aru_c::getNeckJointNo() {
    return 3;
}

/* 809575CC-809575D4 005F2C 0008+00 1/0 0/0 0/0 .text            getBackboneJointNo__11daNpc_Aru_cFv
 */
s32 daNpc_Aru_c::getBackboneJointNo() {
    return 1;
}

/* 809575D4-809575E4 005F34 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__11daNpc_Aru_cFi
 */
BOOL daNpc_Aru_c::checkChangeJoint(int param_1) {
    // NONMATCHING
}

/* 809575E4-809575F4 005F44 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__11daNpc_Aru_cFi
 */
BOOL daNpc_Aru_c::checkRemoveJoint(int param_1) {
    // NONMATCHING
}

/* 809575F4-809575FC 005F54 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__11daNpc_Aru_cFv */
s32 daNpc_Aru_c::getFootLJointNo() {
    return 26;
}

/* 809575FC-80957604 005F5C 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__11daNpc_Aru_cFv */
s32 daNpc_Aru_c::getFootRJointNo() {
    return 30;
}

// /* 80957604-8095764C 005F64 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_Aru_Param_cFv */
// daNpc_Aru_Param_c::~daNpc_Aru_Param_c() {
//     // NONMATCHING
// }

/* 8095765C-809576BC 005FBC 0060+00 1/1 0/0 0/0 .text chkPointInArea__15daTag_EvtArea_cF4cXyz */
// void daTag_EvtArea_c::chkPointInArea(cXyz param_1) {
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz() {
    // NONMATCHING
}

AUDIO_INSTANCES;

/* 80957F4C-80957F6C -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Aru_MethodTable */
static actor_method_class daNpc_Aru_MethodTable = {
    (process_method_func)daNpc_Aru_Create,
    (process_method_func)daNpc_Aru_Delete,
    (process_method_func)daNpc_Aru_Execute,
    (process_method_func)daNpc_Aru_IsDelete,
    (process_method_func)daNpc_Aru_Draw,
};

/* 80957F6C-80957F9C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_ARU */
extern actor_process_profile_definition g_profile_NPC_ARU = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_ARU,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpc_Aru_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  321,                    // mPriority
  &daNpc_Aru_MethodTable, // sub_method
  0x00040107,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
