/**
 * @file d_a_npc_aru.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_aru.h"
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

//
// Declarations:
//

/* ############################################################################################## */
/* 8095781C-8095781C 00014C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8095781C = "";
SECTION_DEAD static char const* const stringBase_8095781D = "DEFAULT_GETITEM";
SECTION_DEAD static char const* const stringBase_8095782D = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80957839 = "RIDEON_HORSE";
SECTION_DEAD static char const* const stringBase_80957846 = "GOTO_BULLRUNNING_STAGE";
SECTION_DEAD static char const* const stringBase_8095785D = "GOTO_BULLRUNNING_STAGE_VER2";
SECTION_DEAD static char const* const stringBase_80957879 = "END_BULLRUNNING";
SECTION_DEAD static char const* const stringBase_80957889 = "END_BULLRUNNING2";
SECTION_DEAD static char const* const stringBase_8095789A = "END_BULLRUNNING3";
SECTION_DEAD static char const* const stringBase_809578AB = "GOTO_SKIPFENCE_STAGE";
SECTION_DEAD static char const* const stringBase_809578C0 = "SPEAKTO";
SECTION_DEAD static char const* const stringBase_809578C8 = "NO_ENTRANCE";
SECTION_DEAD static char const* const stringBase_809578D4 = "Aru";
SECTION_DEAD static char const* const stringBase_809578D8 = "Aru1";
#pragma pop

/* 80957908-80957910 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x01,
};

/* 80957910-80957970 -00001 0060+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[24] = {
    (void*)&d_a_npc_aru__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_aru__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_aru__stringBase0) + 0x11),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_aru__stringBase0) + 0x1D),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_aru__stringBase0) + 0x2A),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_aru__stringBase0) + 0x41),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_aru__stringBase0) + 0x5D),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_aru__stringBase0) + 0x6D),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_aru__stringBase0) + 0x7E),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_aru__stringBase0) + 0x8F),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_aru__stringBase0) + 0xA4),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_aru__stringBase0) + 0xAC),
    (void*)0x00000002,
};
#pragma pop

/* 80957970-8095797C -00001 000C+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[3] = {
    (void*)&d_a_npc_aru__stringBase0,
    (void*)(((char*)&d_a_npc_aru__stringBase0) + 0xB8),
    (void*)(((char*)&d_a_npc_aru__stringBase0) + 0xBC),
};

/* 8095797C-80957980 000094 0002+02 0/0 0/0 0/0 .data            l_loadResPtrn0 */
#pragma push
#pragma force_active on
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};
#pragma pop

/* 80957980-80957984 000098 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn9 */
SECTION_DATA static u8 l_loadResPtrn9[3 + 1 /* padding */] = {
    0x01,
    0x02,
    0xFF,
    /* padding */
    0x00,
};

/* 80957984-8095799C -00001 0018+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[6] = {
    (void*)&l_loadResPtrn9, (void*)&l_loadResPtrn9, (void*)&l_loadResPtrn9,
    (void*)&l_loadResPtrn9, (void*)&l_loadResPtrn9, (void*)&l_loadResPtrn9,
};

/* 8095799C-80957B08 0000B4 016C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[364] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x23,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x2C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80957B08-80957C74 000220 016C+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[364] = {
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x1F,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80957C74-80957D44 00038C 00D0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[208] = {
    0x00, 0x01, 0xFF, 0x01, 0x00, 0x0C, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x07, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x08, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x09, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x0B, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x0A, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80957D44-80957E04 00045C 00C0+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[192] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x01, 0x00, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80957E04-80957E20 -00001 001C+00 1/1 0/0 0/0 .data            mCutNameList__11daNpc_Aru_c */
SECTION_DATA void* daNpc_Aru_c::mCutNameList[7] = {
    (void*)&d_a_npc_aru__stringBase0,
    (void*)(((char*)&d_a_npc_aru__stringBase0) + 0x1D),
    (void*)(((char*)&d_a_npc_aru__stringBase0) + 0x2A),
    (void*)(((char*)&d_a_npc_aru__stringBase0) + 0x5D),
    (void*)(((char*)&d_a_npc_aru__stringBase0) + 0x8F),
    (void*)(((char*)&d_a_npc_aru__stringBase0) + 0xA4),
    (void*)(((char*)&d_a_npc_aru__stringBase0) + 0xAC),
};

/* 80957E20-80957E2C -00001 000C+00 0/1 0/0 0/0 .data            @3868 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3868[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutRideOnHorse__11daNpc_Aru_cFi,
};
#pragma pop

/* 80957E2C-80957E38 -00001 000C+00 0/1 0/0 0/0 .data            @3869 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3869[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutGotoBullRunningStage__11daNpc_Aru_cFi,
};
#pragma pop

/* 80957E38-80957E44 -00001 000C+00 0/1 0/0 0/0 .data            @3870 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3870[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutEndBullRunning__11daNpc_Aru_cFi,
};
#pragma pop

/* 80957E44-80957E50 -00001 000C+00 0/1 0/0 0/0 .data            @3871 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3871[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutGotoSkipFenceStage__11daNpc_Aru_cFi,
};
#pragma pop

/* 80957E50-80957E5C -00001 000C+00 0/1 0/0 0/0 .data            @3872 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3872[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutSpeakTo__11daNpc_Aru_cFi,
};
#pragma pop

/* 80957E5C-80957E68 -00001 000C+00 0/1 0/0 0/0 .data            @3873 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3873[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutNoEntrance__11daNpc_Aru_cFi,
};
#pragma pop

/* 80957E68-80957EBC 000580 0054+00 1/2 0/0 0/0 .data            mCutList__11daNpc_Aru_c */
SECTION_DATA u8 daNpc_Aru_c::mCutList[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
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

/* 80957F4C-80957F6C -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Aru_MethodTable */
static actor_method_class daNpc_Aru_MethodTable = {
    (process_method_func)daNpc_Aru_Create__FPv,
    (process_method_func)daNpc_Aru_Delete__FPv,
    (process_method_func)daNpc_Aru_Execute__FPv,
    (process_method_func)daNpc_Aru_IsDelete__FPv,
    (process_method_func)daNpc_Aru_Draw__FPv,
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

/* ############################################################################################## */
/* 809576D0-80957770 000000 00A0+00 12/12 0/0 0/0 .rodata          m__17daNpc_Aru_Param_c */
SECTION_RODATA u8 const daNpc_Aru_Param_c::m[160] = {
    0x43, 0x5C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x44, 0x16, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x52, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x06, 0x00, 0x06, 0x00, 0x09, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x44, 0xBB, 0x80, 0x00,
    0x41, 0xC0, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x14, 0x42, 0x34, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809576D0, &daNpc_Aru_Param_c::m);

/* 80957770-80957788 0000A0 0018+00 0/1 0/0 0/0 .rodata          heapSize$4024 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[24] = {
    0x00, 0x00, 0x3D, 0x50, 0x00, 0x00, 0x3D, 0x50, 0x00, 0x00, 0x3D, 0x50,
    0x00, 0x00, 0x3D, 0x50, 0x00, 0x00, 0x3D, 0x50, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80957770, &heapSize);
#pragma pop

/* 80957788-8095778C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4096 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4096 = -200.0f;
COMPILER_STRIP_GATE(0x80957788, &lit_4096);
#pragma pop

/* 8095778C-80957790 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4097 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4097 = -100.0f;
COMPILER_STRIP_GATE(0x8095778C, &lit_4097);
#pragma pop

/* 80957790-80957794 0000C0 0004+00 0/2 0/0 0/0 .rodata          @4098 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4098 = 200.0f;
COMPILER_STRIP_GATE(0x80957790, &lit_4098);
#pragma pop

/* 80957794-80957798 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4099 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4099 = 300.0f;
COMPILER_STRIP_GATE(0x80957794, &lit_4099);
#pragma pop

/* 80957798-8095779C 0000C8 0004+00 13/21 0/0 0/0 .rodata          @4100 */
SECTION_RODATA static u8 const lit_4100[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80957798, &lit_4100);

/* 8095779C-809577A0 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4101 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4101 = -1000000000.0f;
COMPILER_STRIP_GATE(0x8095779C, &lit_4101);
#pragma pop

/* 809518C4-80951BB0 000224 02EC+00 1/1 0/0 0/0 .text            create__11daNpc_Aru_cFv */
void daNpc_Aru_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809577A0-809577A4 0000D0 0004+00 0/2 0/0 0/0 .rodata          @4256 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4256 = 65536.0f;
COMPILER_STRIP_GATE(0x809577A0, &lit_4256);
#pragma pop

/* 809577A4-809577A8 0000D4 0004+00 0/3 0/0 0/0 .rodata          @4257 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4257 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x809577A4, &lit_4257);
#pragma pop

/* 809577A8-809577AC 0000D8 0004+00 2/4 0/0 0/0 .rodata          @4399 */
SECTION_RODATA static f32 const lit_4399 = 1.0f;
COMPILER_STRIP_GATE(0x809577A8, &lit_4399);

/* 80951BB0-80951E20 000510 0270+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_Aru_cFv */
void daNpc_Aru_c::CreateHeap() {
    // NONMATCHING
}

/* 80951E20-80951E5C 000780 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80951E5C-80951E74 0007BC 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80951E74-80951EB0 0007D4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80951EB0-80951EC8 000810 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80951EC8-80951F10 000828 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80951F10-80951F34 000870 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80951F34-80951F70 000894 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80951F70-80951F88 0008D0 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80951F88-80951FC4 0008E8 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80951FC4-80951FDC 000924 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80951FDC-80952010 00093C 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_Aru_cFv */
void daNpc_Aru_c::Delete() {
    // NONMATCHING
}

/* 80952010-80952030 000970 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_Aru_cFv */
void daNpc_Aru_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809577AC-809577B0 0000DC 0004+00 1/2 0/0 0/0 .rodata          @4448 */
SECTION_RODATA static f32 const lit_4448 = 100.0f;
COMPILER_STRIP_GATE(0x809577AC, &lit_4448);

/* 80952030-809520C4 000990 0094+00 1/1 0/0 0/0 .text            Draw__11daNpc_Aru_cFv */
void daNpc_Aru_c::Draw() {
    // NONMATCHING
}

/* 809520C4-809520E4 000A24 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_Aru_cFP10fopAc_ac_c              */
void daNpc_Aru_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809520E4-8095213C 000A44 0058+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpc_Aru_cFP8J3DJointi
 */
void daNpc_Aru_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 8095213C-809521E4 000A9C 00A8+00 1/1 0/0 0/0 .text            srchCow__11daNpc_Aru_cFPvPv */
void daNpc_Aru_c::srchCow(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 809521E4-80952280 000B44 009C+00 2/2 0/0 0/0 .text            srchUDoor__11daNpc_Aru_cFPvPv */
void daNpc_Aru_c::srchUDoor(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80952280-80952400 000BE0 0180+00 1/1 0/0 0/0 .text chkThrust__11daNpc_Aru_cFP10fopAc_ac_c */
void daNpc_Aru_c::chkThrust(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80952400-8095253C 000D60 013C+00 1/1 0/0 0/0 .text            getCowP__11daNpc_Aru_cFi */
void daNpc_Aru_c::getCowP(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809577B0-809577B4 0000E0 0004+00 2/2 0/0 0/0 .rodata          @4591 */
SECTION_RODATA static f32 const lit_4591 = 1000000000.0f;
COMPILER_STRIP_GATE(0x809577B0, &lit_4591);

/* 8095253C-8095260C 000E9C 00D0+00 1/1 0/0 0/0 .text            getUDoor_l_P__11daNpc_Aru_cFv */
void daNpc_Aru_c::getUDoor_l_P() {
    // NONMATCHING
}

/* 8095260C-809526DC 000F6C 00D0+00 1/1 0/0 0/0 .text            getUDoor_r_P__11daNpc_Aru_cFv */
void daNpc_Aru_c::getUDoor_r_P() {
    // NONMATCHING
}

/* 809526DC-80952740 00103C 0064+00 1/1 0/0 0/0 .text            getType__11daNpc_Aru_cFv */
void daNpc_Aru_c::getType() {
    // NONMATCHING
}

/* 80952740-809527CC 0010A0 008C+00 1/1 0/0 0/0 .text            isDelete__11daNpc_Aru_cFv */
void daNpc_Aru_c::isDelete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8095781C-8095781C 00014C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809578DD = "F_SP00";
#pragma pop

/* 809527CC-80952B00 00112C 0334+00 1/1 0/0 0/0 .text            reset__11daNpc_Aru_cFv */
void daNpc_Aru_c::reset() {
    // NONMATCHING
}

/* 80952B00-80952B84 001460 0084+00 1/0 0/0 0/0 .text            afterJntAnm__11daNpc_Aru_cFi */
void daNpc_Aru_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 80952B84-80952CE8 0014E4 0164+00 1/0 0/0 0/0 .text            setParam__11daNpc_Aru_cFv */
void daNpc_Aru_c::setParam() {
    // NONMATCHING
}

/* 80952CE8-80952D9C 001648 00B4+00 1/0 0/0 0/0 .text            checkChangeEvt__11daNpc_Aru_cFv */
void daNpc_Aru_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809577B4-809577B8 0000E4 0004+00 8/9 0/0 0/0 .rodata          @4804 */
SECTION_RODATA static f32 const lit_4804 = -1.0f;
COMPILER_STRIP_GATE(0x809577B4, &lit_4804);

/* 80952D9C-80952E64 0016FC 00C8+00 1/0 0/0 0/0 .text            setAfterTalkMotion__11daNpc_Aru_cFv
 */
void daNpc_Aru_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809577B8-809577BC 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4844 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4844 = 210.0f;
COMPILER_STRIP_GATE(0x809577B8, &lit_4844);
#pragma pop

/* 809577BC-809577C0 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4845 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4845 = 410.0f;
COMPILER_STRIP_GATE(0x809577BC, &lit_4845);
#pragma pop

/* 809577C0-809577C4 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4846 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4846 = 32.0f;
COMPILER_STRIP_GATE(0x809577C0, &lit_4846);
#pragma pop

/* 809577C4-809577C8 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4847 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4847 = 419.0f;
COMPILER_STRIP_GATE(0x809577C4, &lit_4847);
#pragma pop

/* 80952E64-809530DC 0017C4 0278+00 1/1 0/0 0/0 .text            srchActors__11daNpc_Aru_cFv */
void daNpc_Aru_c::srchActors() {
    // NONMATCHING
}

/* 809530DC-8095317C 001A3C 00A0+00 1/0 0/0 0/0 .text            evtTalk__11daNpc_Aru_cFv */
void daNpc_Aru_c::evtTalk() {
    // NONMATCHING
}

/* 8095317C-80953244 001ADC 00C8+00 1/0 0/0 0/0 .text            evtCutProc__11daNpc_Aru_cFv */
void daNpc_Aru_c::evtCutProc() {
    // NONMATCHING
}

/* 80953244-809533D8 001BA4 0194+00 1/0 0/0 0/0 .text            action__11daNpc_Aru_cFv */
void daNpc_Aru_c::action() {
    // NONMATCHING
}

/* 809533D8-8095349C 001D38 00C4+00 1/0 0/0 0/0 .text            beforeMove__11daNpc_Aru_cFv */
void daNpc_Aru_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809577C8-809577CC 0000F8 0004+00 0/1 0/0 0/0 .rodata          @4990 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4990 = -30.0f;
COMPILER_STRIP_GATE(0x809577C8, &lit_4990);
#pragma pop

/* 809577CC-809577D0 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4991 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4991 = 10.0f;
COMPILER_STRIP_GATE(0x809577CC, &lit_4991);
#pragma pop

/* 809577D0-809577D4 000100 0004+00 0/1 0/0 0/0 .rodata          @4992 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4992 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x809577D0, &lit_4992);
#pragma pop

/* 809577D4-809577D8 000104 0004+00 0/1 0/0 0/0 .rodata          @4993 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4993 = 20.0f;
COMPILER_STRIP_GATE(0x809577D4, &lit_4993);
#pragma pop

/* 809577D8-809577E0 000108 0008+00 1/4 0/0 0/0 .rodata          @4995 */
SECTION_RODATA static u8 const lit_4995[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809577D8, &lit_4995);

/* 80958160-8095816C 000048 000C+00 1/1 0/0 0/0 .bss             @3874 */
static u8 lit_3874[12];

/* 8095816C-80958170 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80958170-80958180 000058 000C+04 0/1 0/0 0/0 .bss             @4931 */
#pragma push
#pragma force_active on
static u8 lit_4931[12 + 4 /* padding */];
#pragma pop

/* 80958180-8095818C 000068 000C+00 0/1 0/0 0/0 .bss             prtclScl$4930 */
#pragma push
#pragma force_active on
static u8 prtclScl[12];
#pragma pop

/* 8095349C-80953798 001DFC 02FC+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_Aru_cFv */
void daNpc_Aru_c::setAttnPos() {
    // NONMATCHING
}

/* 80953798-809538F0 0020F8 0158+00 1/0 0/0 0/0 .text            setCollision__11daNpc_Aru_cFv */
void daNpc_Aru_c::setCollision() {
    // NONMATCHING
}

/* 809538F0-809538F8 002250 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_Aru_cFv */
bool daNpc_Aru_c::drawDbgInfo() {
    return false;
}

/* 809538F8-80953AB8 002258 01C0+00 1/1 0/0 0/0 .text            selectAction__11daNpc_Aru_cFv */
void daNpc_Aru_c::selectAction() {
    // NONMATCHING
}

/* 80953AB8-80953AE4 002418 002C+00 2/2 0/0 0/0 .text
 * chkAction__11daNpc_Aru_cFM11daNpc_Aru_cFPCvPvPv_i            */
void daNpc_Aru_c::chkAction(int (daNpc_Aru_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80953AE4-80953B8C 002444 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_Aru_cFM11daNpc_Aru_cFPCvPvPv_i            */
void daNpc_Aru_c::setAction(int (daNpc_Aru_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80953B8C-80953C08 0024EC 007C+00 4/4 0/0 0/0 .text chkBullRunningStage__11daNpc_Aru_cFv */
void daNpc_Aru_c::chkBullRunningStage() {
    // NONMATCHING
}

/* 80953C08-80953C84 002568 007C+00 2/2 0/0 0/0 .text            chkSkipFenceStage__11daNpc_Aru_cFv
 */
void daNpc_Aru_c::chkSkipFenceStage() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809577E0-809577E8 000110 0008+00 0/2 0/0 0/0 .rodata          @5053 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5053[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809577E0, &lit_5053);
#pragma pop

/* 809577E8-809577F0 000118 0008+00 0/2 0/0 0/0 .rodata          @5054 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5054[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809577E8, &lit_5054);
#pragma pop

/* 809577F0-809577F8 000120 0008+00 0/2 0/0 0/0 .rodata          @5055 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5055[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809577F0, &lit_5055);
#pragma pop

/* 809577F8-809577FC 000128 0004+00 1/1 0/0 0/0 .rodata          @5185 */
SECTION_RODATA static u32 const lit_5185 = 0x43360B61;
COMPILER_STRIP_GATE(0x809577F8, &lit_5185);

/* 80953C84-80953D58 0025E4 00D4+00 1/1 0/0 0/0 .text
 * srchActorDirection__11daNpc_Aru_cFP10fopAc_ac_c              */
void daNpc_Aru_c::srchActorDirection(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809577FC-80957804 00012C 0006+02 0/1 0/0 0/0 .rodata          @5190 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5190[6 + 2 /* padding */] = {
    0x00,
    0x00,
    0xE0,
    0x00,
    0x20,
    0x00,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809577FC, &lit_5190);
#pragma pop

/* 80957804-80957808 000134 0004+00 0/1 0/0 0/0 .rodata          @5478 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5478 = 280.0f;
COMPILER_STRIP_GATE(0x80957804, &lit_5478);
#pragma pop

/* 80957808-8095780C 000138 0004+00 0/1 0/0 0/0 .rodata          @5479 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5479 = 400.0f;
COMPILER_STRIP_GATE(0x80957808, &lit_5479);
#pragma pop

/* 80953D58-809543B0 0026B8 0658+00 1/1 0/0 0/0 .text            adjustMoveDir__11daNpc_Aru_cFv */
void daNpc_Aru_c::adjustMoveDir() {
    // NONMATCHING
}

/* 809543B0-809543F8 002D10 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8095780C-80957810 00013C 0004+00 0/1 0/0 0/0 .rodata          @5553 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5553 = 0.5f;
COMPILER_STRIP_GATE(0x8095780C, &lit_5553);
#pragma pop

/* 80957810-80957814 000140 0004+00 0/1 0/0 0/0 .rodata          @5554 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5554 = 1.5f;
COMPILER_STRIP_GATE(0x80957810, &lit_5554);
#pragma pop

/* 80957814-80957818 000144 0004+00 0/1 0/0 0/0 .rodata          @5555 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5555 = 17.0f / 20.0f;
COMPILER_STRIP_GATE(0x80957814, &lit_5555);
#pragma pop

/* 809543F8-80954744 002D58 034C+00 2/2 0/0 0/0 .text            duck__11daNpc_Aru_cFi */
void daNpc_Aru_c::duck(int param_0) {
    // NONMATCHING
}

/* 80954744-80954894 0030A4 0150+00 3/3 0/0 0/0 .text            lookround__11daNpc_Aru_cFs */
void daNpc_Aru_c::lookround(s16 param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8095781C-8095781C 00014C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809578E4 = "prm";
#pragma pop

/* 80954894-80954A5C 0031F4 01C8+00 1/0 0/0 0/0 .text            cutRideOnHorse__11daNpc_Aru_cFi */
void daNpc_Aru_c::cutRideOnHorse(int param_0) {
    // NONMATCHING
}

/* 80954A5C-80954C0C 0033BC 01B0+00 1/0 0/0 0/0 .text cutGotoBullRunningStage__11daNpc_Aru_cFi */
void daNpc_Aru_c::cutGotoBullRunningStage(int param_0) {
    // NONMATCHING
}

/* 80954C0C-80954F4C 00356C 0340+00 1/0 0/0 0/0 .text            cutEndBullRunning__11daNpc_Aru_cFi
 */
void daNpc_Aru_c::cutEndBullRunning(int param_0) {
    // NONMATCHING
}

/* 80954F4C-80955080 0038AC 0134+00 1/0 0/0 0/0 .text cutGotoSkipFenceStage__11daNpc_Aru_cFi */
void daNpc_Aru_c::cutGotoSkipFenceStage(int param_0) {
    // NONMATCHING
}

/* 80955080-8095533C 0039E0 02BC+00 1/0 0/0 0/0 .text            cutSpeakTo__11daNpc_Aru_cFi */
void daNpc_Aru_c::cutSpeakTo(int param_0) {
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
void daNpc_Aru_c::cutNoEntrance(int param_0) {
    // NONMATCHING
}

/* 80955608-80955B48 003F68 0540+00 4/0 0/0 0/0 .text            wait__11daNpc_Aru_cFPv */
void daNpc_Aru_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80955B48-80955DE8 0044A8 02A0+00 3/0 0/0 0/0 .text            bullRunning__11daNpc_Aru_cFPv */
void daNpc_Aru_c::bullRunning(void* param_0) {
    // NONMATCHING
}

/* 80955DE8-80955F98 004748 01B0+00 2/0 0/0 0/0 .text            skipFence__11daNpc_Aru_cFPv */
void daNpc_Aru_c::skipFence(void* param_0) {
    // NONMATCHING
}

/* 80955F98-809562C0 0048F8 0328+00 3/0 0/0 0/0 .text            talk__11daNpc_Aru_cFPv */
void daNpc_Aru_c::talk(void* param_0) {
    // NONMATCHING
}

/* 809562C0-809562E0 004C20 0020+00 1/0 0/0 0/0 .text            daNpc_Aru_Create__FPv */
static void daNpc_Aru_Create(void* param_0) {
    // NONMATCHING
}

/* 809562E0-80956300 004C40 0020+00 1/0 0/0 0/0 .text            daNpc_Aru_Delete__FPv */
static void daNpc_Aru_Delete(void* param_0) {
    // NONMATCHING
}

/* 80956300-80956320 004C60 0020+00 1/0 0/0 0/0 .text            daNpc_Aru_Execute__FPv */
static void daNpc_Aru_Execute(void* param_0) {
    // NONMATCHING
}

/* 80956320-80956340 004C80 0020+00 1/0 0/0 0/0 .text            daNpc_Aru_Draw__FPv */
static void daNpc_Aru_Draw(void* param_0) {
    // NONMATCHING
}

/* 80956340-80956348 004CA0 0008+00 1/0 0/0 0/0 .text            daNpc_Aru_IsDelete__FPv */
static bool daNpc_Aru_IsDelete(void* param_0) {
    return true;
}

/* 80956348-80956378 004CA8 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
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
// daNpcT_c::daNpcT_c(daNpcT_faceMotionAnmData_c const* param_0,
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
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 809570C4-809572CC 005A24 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 809572CC-809572D0 005C2C 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
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
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 8095731C-80957324 005C7C 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80957324-80957354 005C84 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80957354-80957384 005CB4 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80957384-80957388 005CE4 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80957388-8095738C 005CE8 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 8095738C-80957390 005CEC 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80957390-80957394 005CF0 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80957394-809573B0 005CF4 001C+00 3/3 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80957394(void* _this, int* param_0) {
    // NONMATCHING
}

/* 809573B0-809573EC 005D10 003C+00 1/1 0/0 0/0 .text            cLib_getRndValue<f>__Fff */
extern "C" void func_809573B0(void* _this, f32 param_0, f32 param_1) {
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

/* 809574E8-809575B4 005E48 00CC+00 1/1 0/0 0/0 .text
 * __ct__11daNpc_Aru_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Aru_c::daNpc_Aru_c(daNpcT_faceMotionAnmData_c const* param_0,
                             daNpcT_motionAnmData_c const* param_1,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
                             daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

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
bool daNpc_Aru_c::getBackboneJointNo() {
    return true;
}

/* 809575D4-809575E4 005F34 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__11daNpc_Aru_cFi
 */
void daNpc_Aru_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 809575E4-809575F4 005F44 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__11daNpc_Aru_cFi
 */
void daNpc_Aru_c::checkRemoveJoint(int param_0) {
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

/* 80957604-8095764C 005F64 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_Aru_Param_cFv */
daNpc_Aru_Param_c::~daNpc_Aru_Param_c() {
    // NONMATCHING
}

/* 8095764C-80957654 005FAC 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8095764C() {
    // NONMATCHING
}

/* 80957654-8095765C 005FB4 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80957654() {
    // NONMATCHING
}

/* 8095765C-809576BC 005FBC 0060+00 1/1 0/0 0/0 .text chkPointInArea__15daTag_EvtArea_cF4cXyz */
// void daTag_EvtArea_c::chkPointInArea(cXyz param_0) {
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8095818C-80958190 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8095818C[4];
#pragma pop

/* 80958190-80958194 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80958190[4];
#pragma pop

/* 80958194-80958198 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80958194[4];
#pragma pop

/* 80958198-8095819C 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80958198[4];
#pragma pop

/* 8095819C-809581A0 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8095819C[4];
#pragma pop

/* 809581A0-809581A4 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809581A0[4];
#pragma pop

/* 809581A4-809581A8 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_809581A4[4];
#pragma pop

/* 809581A8-809581AC 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_809581A8[4];
#pragma pop

/* 809581AC-809581B0 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_809581AC[4];
#pragma pop

/* 809581B0-809581B4 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_809581B0[4];
#pragma pop

/* 809581B4-809581B8 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_809581B4[4];
#pragma pop

/* 809581B8-809581BC 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_809581B8[4];
#pragma pop

/* 809581BC-809581C0 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_809581BC[4];
#pragma pop

/* 809581C0-809581C4 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809581C0[4];
#pragma pop

/* 809581C4-809581C8 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_809581C4[4];
#pragma pop

/* 809581C8-809581CC 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_809581C8[4];
#pragma pop

/* 809581CC-809581D0 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_809581CC[4];
#pragma pop

/* 809581D0-809581D4 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_809581D0[4];
#pragma pop

/* 809581D4-809581D8 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_809581D4[4];
#pragma pop

/* 809581D8-809581DC 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_809581D8[4];
#pragma pop

/* 809581DC-809581E0 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_809581DC[4];
#pragma pop

/* 809581E0-809581E4 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809581E0[4];
#pragma pop

/* 809581E4-809581E8 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809581E4[4];
#pragma pop

/* 809581E8-809581EC 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_809581E8[4];
#pragma pop

/* 809581EC-809581F0 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_809581EC[4];
#pragma pop

/* 8095781C-8095781C 00014C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
