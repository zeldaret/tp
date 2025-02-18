/**
 * @file d_a_npc_bou.cpp
 * 
*/

#include "d/actor/d_a_npc_bou.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__11daNpc_Bou_cFv();
extern "C" void create__11daNpc_Bou_cFv();
extern "C" void CreateHeap__11daNpc_Bou_cFv();
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
extern "C" void Delete__11daNpc_Bou_cFv();
extern "C" void Execute__11daNpc_Bou_cFv();
extern "C" void Draw__11daNpc_Bou_cFv();
extern "C" void createHeapCallBack__11daNpc_Bou_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_Bou_cFP8J3DJointi();
extern "C" void srchCow__11daNpc_Bou_cFPvPv();
extern "C" void getCowP__11daNpc_Bou_cFv();
extern "C" void getType__11daNpc_Bou_cFv();
extern "C" void isDelete__11daNpc_Bou_cFv();
extern "C" void reset__11daNpc_Bou_cFv();
extern "C" void afterJntAnm__11daNpc_Bou_cFi();
extern "C" void setParam__11daNpc_Bou_cFv();
extern "C" void checkChangeEvt__11daNpc_Bou_cFv();
extern "C" void setAfterTalkMotion__11daNpc_Bou_cFv();
extern "C" void srchActors__11daNpc_Bou_cFv();
extern "C" void evtTalk__11daNpc_Bou_cFv();
extern "C" bool evtEndProc__11daNpc_Bou_cFv();
extern "C" void evtCutProc__11daNpc_Bou_cFv();
extern "C" void action__11daNpc_Bou_cFv();
extern "C" void beforeMove__11daNpc_Bou_cFv();
extern "C" void setAttnPos__11daNpc_Bou_cFv();
extern "C" void setCollision__11daNpc_Bou_cFv();
extern "C" bool drawDbgInfo__11daNpc_Bou_cFv();
extern "C" void changeAnm__11daNpc_Bou_cFPiPi();
extern "C" void selectAction__11daNpc_Bou_cFv();
extern "C" void chkAction__11daNpc_Bou_cFM11daNpc_Bou_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_Bou_cFM11daNpc_Bou_cFPCvPvPv_i();
extern "C" void cutWildGoat__11daNpc_Bou_cFi();
extern "C" void cutWildGoatSuccess__11daNpc_Bou_cFi();
extern "C" void cutWildGoatFailure__11daNpc_Bou_cFi();
extern "C" void cutSpeakTo__11daNpc_Bou_cFi();
extern "C" void cutConversationWithBou__11daNpc_Bou_cFi();
extern "C" void cutConfidentialConversation__11daNpc_Bou_cFi();
extern "C" void cutFindWolf__11daNpc_Bou_cFi();
extern "C" void cutMeetingAgain__11daNpc_Bou_cFi();
extern "C" void wait__11daNpc_Bou_cFPv();
extern "C" void talkwithJagar__11daNpc_Bou_cFPv();
extern "C" void talk__11daNpc_Bou_cFPv();
extern "C" static void daNpc_Bou_Create__FPv();
extern "C" static void daNpc_Bou_Delete__FPv();
extern "C" static void daNpc_Bou_Execute__FPv();
extern "C" static void daNpc_Bou_Draw__FPv();
extern "C" static bool daNpc_Bou_IsDelete__FPv();
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
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawOtherMdl__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_8097258C(void* _this, int*);
extern "C" void __sinit_d_a_npc_bou_cpp();
extern "C" void
__ct__11daNpc_Bou_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" s32 getEyeballMaterialNo__11daNpc_Bou_cFv();
extern "C" s32 getHeadJointNo__11daNpc_Bou_cFv();
extern "C" s32 getNeckJointNo__11daNpc_Bou_cFv();
extern "C" bool getBackboneJointNo__11daNpc_Bou_cFv();
extern "C" void checkChangeJoint__11daNpc_Bou_cFi();
extern "C" void checkRemoveJoint__11daNpc_Bou_cFi();
extern "C" void __dt__17daNpc_Bou_Param_cFv();
extern "C" static void func_8097283C();
extern "C" static void func_80972844();
extern "C" u8 const m__17daNpc_Bou_Param_c[156];
extern "C" extern char const* const d_a_npc_bou__stringBase0;
extern "C" void* mCutNameList__11daNpc_Bou_c[9];
extern "C" u8 mCutList__11daNpc_Bou_c[108];

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
extern "C" void fpcEx_IsExist__FUi();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void getLayerNo__14dComIfG_play_cFi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void isCollect__20dSv_player_collect_cCFiUc();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setPt2__14dEvt_control_cFPv();
extern "C" void setPtT__14dEvt_control_cFPv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void setGoal__16dEvent_manager_cFP4cXyz();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
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
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void initialize__18daNpcT_ActorMngr_cFv();
extern "C" void entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcT_ActorMngr_cFv();
extern "C" void getActorP__18daNpcT_ActorMngr_cFv();
extern "C" void initialize__15daNpcT_MatAnm_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__13daNpcT_Path_cFv();
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
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void getActorDistance__8daNpcT_cFP10fopAc_ac_cii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_onTmpBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
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
extern "C" void cLib_chaseS__FPsss();
extern "C" void cLib_chaseF__FPfff();
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
extern "C" extern u8 g_meter2_info[248];
extern "C" u8 mFindCount__8daNpcT_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();
extern "C" void getType__13daNpc_Jagar_cFv();

//
// Declarations:
//

/* ############################################################################################## */
/* 8097299C-8097299C 00013C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8097299C = "";
SECTION_DEAD static char const* const stringBase_8097299D = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_809729A9 = "WILDGOAT";
SECTION_DEAD static char const* const stringBase_809729B2 = "WILDGOAT_SUCCESS";
SECTION_DEAD static char const* const stringBase_809729C3 = "WILDGOAT_FAILURE";
SECTION_DEAD static char const* const stringBase_809729D4 = "SPEAKTO";
SECTION_DEAD static char const* const stringBase_809729DC = "CONFIDENTIAL_CONVERSATION";
SECTION_DEAD static char const* const stringBase_809729F6 = "FIND_WOLF";
SECTION_DEAD static char const* const stringBase_80972A00 = "MEETING_AGAIN";
SECTION_DEAD static char const* const stringBase_80972A0E = "MEETING_AGAIN_PLAYER_ON_HORSE";
SECTION_DEAD static char const* const stringBase_80972A2C = "MEETING_AGAIN_NEAR";
SECTION_DEAD static char const* const stringBase_80972A3F = "Bou";
SECTION_DEAD static char const* const stringBase_80972A43 = "Bou1";
SECTION_DEAD static char const* const stringBase_80972A48 = "Bou2";
SECTION_DEAD static char const* const stringBase_80972A4D = "Bou4";
SECTION_DEAD static char const* const stringBase_80972A52 = "Bou_p1";
SECTION_DEAD static char const* const stringBase_80972A59 = "Jagar2";
SECTION_DEAD static char const* const stringBase_80972A60 = "CONVERSATION_WITH_BOU";
#pragma pop

/* 80972A90-80972A9C 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80972A9C-80972AB0 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80972AB0-80972AB8 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x01,
};

/* 80972AB8-80972B10 -00001 0058+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[22] = {
    (void*)&d_a_npc_bou__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0xD),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0x16),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0x27),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0x38),
    (void*)0x00000002,
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0x40),
    (void*)0x00000006,
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0x5A),
    (void*)0x00000006,
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0x64),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0x72),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0x90),
    (void*)0x00000004,
};
#pragma pop

/* 80972B10-80972B2C -00001 001C+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[7] = {
    (void*)&d_a_npc_bou__stringBase0,
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0xA3),
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0xA7),
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0xAC),
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0xB1),
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0xB6),
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0xBD),
};

/* 80972B2C-80972B30 00009C 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u32 l_loadResPtrn0 = 0x010204FF;

/* 80972B30-80972B34 0000A0 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u8 l_loadResPtrn1[3 + 1 /* padding */] = {
    0x01,
    0x03,
    0xFF,
    /* padding */
    0x00,
};

/* 80972B34-80972B38 0000A4 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn2 */
SECTION_DATA static u8 l_loadResPtrn2[3 + 1 /* padding */] = {
    0x01,
    0x04,
    0xFF,
    /* padding */
    0x00,
};

/* 80972B38-80972B3C 0000A8 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn3 */
SECTION_DATA static u8 l_loadResPtrn3[3 + 1 /* padding */] = {
    0x01,
    0x05,
    0xFF,
    /* padding */
    0x00,
};

/* 80972B3C-80972B44 0000AC 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn9 */
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

/* 80972B44-80972B5C -00001 0018+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[6] = {
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn1, (void*)&l_loadResPtrn2,
    (void*)&l_loadResPtrn3, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn9,
};

/* 80972B5C-80972C90 0000CC 0134+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[308] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x1C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 80972C90-80972F14 000200 0284+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[644] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80972F14-80972FC4 000484 00B0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[176] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0x00, 0x01, 0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x07, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x01, 0x00, 0x08, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80972FC4-80973124 000534 0160+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[352] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0x00, 0x01, 0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x01, 0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x01, 0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x01, 0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x01, 0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x01, 0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x01, 0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x01, 0x00, 0x14, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x15, 0xFF, 0x01, 0x00, 0x16, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x16, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80973124-80973148 -00001 0024+00 1/1 0/0 0/0 .data            mCutNameList__11daNpc_Bou_c */
SECTION_DATA void* daNpc_Bou_c::mCutNameList[9] = {
    (void*)&d_a_npc_bou__stringBase0,
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0xD),
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0x16),
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0x27),
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0x38),
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0xC4),
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0x40),
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0x5A),
    (void*)(((char*)&d_a_npc_bou__stringBase0) + 0x64),
};

/* 80973148-80973154 -00001 000C+00 0/1 0/0 0/0 .data            @3934 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3934[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutWildGoat__11daNpc_Bou_cFi,
};
#pragma pop

/* 80973154-80973160 -00001 000C+00 0/1 0/0 0/0 .data            @3935 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3935[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutWildGoatSuccess__11daNpc_Bou_cFi,
};
#pragma pop

/* 80973160-8097316C -00001 000C+00 0/1 0/0 0/0 .data            @3936 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3936[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutWildGoatFailure__11daNpc_Bou_cFi,
};
#pragma pop

/* 8097316C-80973178 -00001 000C+00 0/1 0/0 0/0 .data            @3937 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3937[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutSpeakTo__11daNpc_Bou_cFi,
};
#pragma pop

/* 80973178-80973184 -00001 000C+00 0/1 0/0 0/0 .data            @3938 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3938[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationWithBou__11daNpc_Bou_cFi,
};
#pragma pop

/* 80973184-80973190 -00001 000C+00 0/1 0/0 0/0 .data            @3939 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3939[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConfidentialConversation__11daNpc_Bou_cFi,
};
#pragma pop

/* 80973190-8097319C -00001 000C+00 0/1 0/0 0/0 .data            @3940 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3940[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutFindWolf__11daNpc_Bou_cFi,
};
#pragma pop

/* 8097319C-809731A8 -00001 000C+00 0/1 0/0 0/0 .data            @3941 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3941[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutMeetingAgain__11daNpc_Bou_cFi,
};
#pragma pop

/* 809731A8-80973214 000718 006C+00 1/2 0/0 0/0 .data            mCutList__11daNpc_Bou_c */
SECTION_DATA u8 daNpc_Bou_c::mCutList[108] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80973214-80973220 -00001 000C+00 1/1 0/0 0/0 .data            @4712 */
SECTION_DATA static void* lit_4712[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Bou_cFPv,
};

/* 80973220-8097322C -00001 000C+00 1/1 0/0 0/0 .data            @4781 */
SECTION_DATA static void* lit_4781[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Bou_cFPv,
};

/* 8097322C-80973238 -00001 000C+00 1/1 0/0 0/0 .data            @4786 */
SECTION_DATA static void* lit_4786[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Bou_cFPv,
};

/* 80973238-80973244 -00001 000C+00 1/1 0/0 0/0 .data            @5136 */
SECTION_DATA static void* lit_5136[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkwithJagar__11daNpc_Bou_cFPv,
};

/* 80973244-80973250 -00001 000C+00 1/1 0/0 0/0 .data            @5138 */
SECTION_DATA static void* lit_5138[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_Bou_cFPv,
};

/* 80973250-80973274 -00001 0024+00 1/1 0/0 0/0 .data            @5286 */
SECTION_DATA static void* lit_5286[9] = {
    (void*)(((char*)cutWildGoat__11daNpc_Bou_cFi) + 0xE0),
    (void*)(((char*)cutWildGoat__11daNpc_Bou_cFi) + 0x1EC),
    (void*)(((char*)cutWildGoat__11daNpc_Bou_cFi) + 0x110),
    (void*)(((char*)cutWildGoat__11daNpc_Bou_cFi) + 0x1EC),
    (void*)(((char*)cutWildGoat__11daNpc_Bou_cFi) + 0x1EC),
    (void*)(((char*)cutWildGoat__11daNpc_Bou_cFi) + 0x144),
    (void*)(((char*)cutWildGoat__11daNpc_Bou_cFi) + 0x15C),
    (void*)(((char*)cutWildGoat__11daNpc_Bou_cFi) + 0x1D8),
    (void*)(((char*)cutWildGoat__11daNpc_Bou_cFi) + 0x1EC),
};

/* 80973274-80973294 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Bou_MethodTable */
static actor_method_class daNpc_Bou_MethodTable = {
    (process_method_func)daNpc_Bou_Create__FPv,
    (process_method_func)daNpc_Bou_Delete__FPv,
    (process_method_func)daNpc_Bou_Execute__FPv,
    (process_method_func)daNpc_Bou_IsDelete__FPv,
    (process_method_func)daNpc_Bou_Draw__FPv,
};

/* 80973294-809732C4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_BOU */
extern actor_process_profile_definition g_profile_NPC_BOU = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_BOU,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpc_Bou_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  324,                    // mPriority
  &daNpc_Bou_MethodTable, // sub_method
  0x00040107,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 809732C4-809732D0 000834 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 809732D0-809732DC 000840 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 809732DC-80973300 00084C 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80972844,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8097283C,
};

/* 80973300-8097330C 000870 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8097330C-80973318 00087C 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80973318-80973324 000888 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80973324-80973330 000894 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80973330-8097333C 0008A0 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 8097333C-80973348 0008AC 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80973348-80973354 0008B8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80973354-80973360 0008C4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80973360-8097336C 0008D0 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 8097336C-80973430 0008DC 00C4+00 2/2 0/0 0/0 .data            __vt__11daNpc_Bou_c */
SECTION_DATA extern void* __vt__11daNpc_Bou_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_Bou_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__11daNpc_Bou_cFi,
    (void*)checkRemoveJoint__11daNpc_Bou_cFi,
    (void*)getBackboneJointNo__11daNpc_Bou_cFv,
    (void*)getNeckJointNo__11daNpc_Bou_cFv,
    (void*)getHeadJointNo__11daNpc_Bou_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__11daNpc_Bou_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__11daNpc_Bou_cFi,
    (void*)setParam__11daNpc_Bou_cFv,
    (void*)checkChangeEvt__11daNpc_Bou_cFv,
    (void*)evtTalk__11daNpc_Bou_cFv,
    (void*)evtEndProc__11daNpc_Bou_cFv,
    (void*)evtCutProc__11daNpc_Bou_cFv,
    (void*)setAfterTalkMotion__11daNpc_Bou_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__11daNpc_Bou_cFv,
    (void*)beforeMove__11daNpc_Bou_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__11daNpc_Bou_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__11daNpc_Bou_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__11daNpc_Bou_cFv,
    (void*)drawOtherMdl__8daNpcT_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__8daNpcT_cFiifi,
    (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__11daNpc_Bou_cFPiPi,
    (void*)changeBck__8daNpcT_cFPiPi,
    (void*)changeBtp__8daNpcT_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
};

/* 8096CF8C-8096D0D8 0000EC 014C+00 1/0 0/0 0/0 .text            __dt__11daNpc_Bou_cFv */
daNpc_Bou_c::~daNpc_Bou_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80972860-809728FC 000000 009C+00 13/13 0/0 1/1 .rodata          m__17daNpc_Bou_Param_c */
SECTION_RODATA u8 const daNpc_Bou_Param_c::m[156] = {
    0x43, 0x52, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x44, 0x16, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x80, 0x00, 0x00,
    0x44, 0x7A, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0xC3, 0xFA, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80972860, &daNpc_Bou_Param_c::m);

/* 809728FC-80972914 00009C 0018+00 0/1 0/0 0/0 .rodata          heapSize$4096 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[24] = {
    0x00, 0x00, 0x3D, 0x50, 0x00, 0x00, 0x3D, 0x50, 0x00, 0x00, 0x3D, 0x50,
    0x00, 0x00, 0x3D, 0x50, 0x00, 0x00, 0x3D, 0x50, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809728FC, &heapSize);
#pragma pop

/* 80972914-80972918 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4162 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4162 = -200.0f;
COMPILER_STRIP_GATE(0x80972914, &lit_4162);
#pragma pop

/* 80972918-8097291C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4163 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4163 = -100.0f;
COMPILER_STRIP_GATE(0x80972918, &lit_4163);
#pragma pop

/* 8097291C-80972920 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4164 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4164 = 200.0f;
COMPILER_STRIP_GATE(0x8097291C, &lit_4164);
#pragma pop

/* 80972920-80972924 0000C0 0004+00 0/2 0/0 0/0 .rodata          @4165 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4165 = 300.0f;
COMPILER_STRIP_GATE(0x80972920, &lit_4165);
#pragma pop

/* 80972924-80972928 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4166 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4166 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80972924, &lit_4166);
#pragma pop

/* 8096D0D8-8096D38C 000238 02B4+00 1/1 0/0 0/0 .text            create__11daNpc_Bou_cFv */
void daNpc_Bou_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80972928-8097292C 0000C8 0004+00 7/18 0/0 0/0 .rodata          @4328 */
SECTION_RODATA static u8 const lit_4328[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80972928, &lit_4328);

/* 8097292C-80972930 0000CC 0004+00 0/2 0/0 0/0 .rodata          @4329 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4329 = 65536.0f;
COMPILER_STRIP_GATE(0x8097292C, &lit_4329);
#pragma pop

/* 80972930-80972934 0000D0 0004+00 0/3 0/0 0/0 .rodata          @4330 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4330 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80972930, &lit_4330);
#pragma pop

/* 80972934-80972938 0000D4 0004+00 2/4 0/0 0/0 .rodata          @4472 */
SECTION_RODATA static f32 const lit_4472 = 1.0f;
COMPILER_STRIP_GATE(0x80972934, &lit_4472);

/* 8096D38C-8096D5FC 0004EC 0270+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_Bou_cFv */
void daNpc_Bou_c::CreateHeap() {
    // NONMATCHING
}

/* 8096D5FC-8096D638 00075C 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 8096D638-8096D650 000798 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 8096D650-8096D68C 0007B0 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 8096D68C-8096D6A4 0007EC 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 8096D6A4-8096D6EC 000804 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 8096D6EC-8096D710 00084C 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 8096D710-8096D74C 000870 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 8096D74C-8096D764 0008AC 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 8096D764-8096D7A0 0008C4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 8096D7A0-8096D7B8 000900 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 8096D7B8-8096D7EC 000918 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_Bou_cFv */
void daNpc_Bou_c::Delete() {
    // NONMATCHING
}

/* 8096D7EC-8096D80C 00094C 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_Bou_cFv */
void daNpc_Bou_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80972938-8097293C 0000D8 0004+00 1/1 0/0 0/0 .rodata          @4521 */
SECTION_RODATA static f32 const lit_4521 = 100.0f;
COMPILER_STRIP_GATE(0x80972938, &lit_4521);

/* 8096D80C-8096D8A0 00096C 0094+00 1/1 0/0 0/0 .text            Draw__11daNpc_Bou_cFv */
void daNpc_Bou_c::Draw() {
    // NONMATCHING
}

/* 8096D8A0-8096D8C0 000A00 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_Bou_cFP10fopAc_ac_c              */
void daNpc_Bou_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8096D8C0-8096D918 000A20 0058+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpc_Bou_cFP8J3DJointi
 */
void daNpc_Bou_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 8096D918-8096D9B4 000A78 009C+00 1/1 0/0 0/0 .text            srchCow__11daNpc_Bou_cFPvPv */
void daNpc_Bou_c::srchCow(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8097293C-80972940 0000DC 0004+00 1/1 0/0 0/0 .rodata          @4568 */
SECTION_RODATA static f32 const lit_4568 = 1000000000.0f;
COMPILER_STRIP_GATE(0x8097293C, &lit_4568);

/* 8096D9B4-8096DA78 000B14 00C4+00 1/1 0/0 0/0 .text            getCowP__11daNpc_Bou_cFv */
void daNpc_Bou_c::getCowP() {
    // NONMATCHING
}

/* 8096DA78-8096DADC 000BD8 0064+00 1/1 0/0 2/2 .text            getType__11daNpc_Bou_cFv */
u8 daNpc_Bou_c::getType() {
    switch ((u8)fopAcM_GetParam(this)) {
        case 0:
            return TYPE_0;
        case 1:
            return TYPE_1;
        case 2:
            return TYPE_2;
        case 3:
            return TYPE_3;
        case 4:
            return TYPE_4;
        default:
            return TYPE_5;
    }
}

/* 8096DADC-8096DBBC 000C3C 00E0+00 1/1 0/0 0/0 .text            isDelete__11daNpc_Bou_cFv */
void daNpc_Bou_c::isDelete() {
    // NONMATCHING
}

/* 8096DBBC-8096DD44 000D1C 0188+00 1/1 0/0 0/0 .text            reset__11daNpc_Bou_cFv */
void daNpc_Bou_c::reset() {
    // NONMATCHING
}

/* 8096DD44-8096DDC8 000EA4 0084+00 1/0 0/0 0/0 .text            afterJntAnm__11daNpc_Bou_cFi */
void daNpc_Bou_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 8096DDC8-8096DF9C 000F28 01D4+00 1/0 0/0 0/0 .text            setParam__11daNpc_Bou_cFv */
void daNpc_Bou_c::setParam() {
    // NONMATCHING
}

/* 8096DF9C-8096E0EC 0010FC 0150+00 1/0 0/0 0/0 .text            checkChangeEvt__11daNpc_Bou_cFv */
bool daNpc_Bou_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80972940-80972948 0000E0 0004+04 5/12 0/0 0/0 .rodata          @4758 */
SECTION_RODATA static f32 const lit_4758[1 + 1 /* padding */] = {
    -1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80972940, &lit_4758);

/* 8096E0EC-8096E18C 00124C 00A0+00 1/0 0/0 0/0 .text            setAfterTalkMotion__11daNpc_Bou_cFv
 */
void daNpc_Bou_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 8096E18C-8096E27C 0012EC 00F0+00 1/1 0/0 0/0 .text            srchActors__11daNpc_Bou_cFv */
void daNpc_Bou_c::srchActors() {
    // NONMATCHING
}

/* 8096E27C-8096E31C 0013DC 00A0+00 1/0 0/0 0/0 .text            evtTalk__11daNpc_Bou_cFv */
bool daNpc_Bou_c::evtTalk() {
    // NONMATCHING
}

/* 8096E31C-8096E324 00147C 0008+00 1/0 0/0 0/0 .text            evtEndProc__11daNpc_Bou_cFv */
bool daNpc_Bou_c::evtEndProc() {
    return true;
}

/* 8096E324-8096E3EC 001484 00C8+00 1/0 0/0 0/0 .text            evtCutProc__11daNpc_Bou_cFv */
bool daNpc_Bou_c::evtCutProc() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80972948-80972950 0000E8 0008+00 0/2 0/0 0/0 .rodata          @4940 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4940[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80972948, &lit_4940);
#pragma pop

/* 80972950-80972958 0000F0 0008+00 0/2 0/0 0/0 .rodata          @4941 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4941[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80972950, &lit_4941);
#pragma pop

/* 80972958-80972960 0000F8 0008+00 0/2 0/0 0/0 .rodata          @4942 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4942[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80972958, &lit_4942);
#pragma pop

/* 8096E3EC-8096E7E0 00154C 03F4+00 1/0 0/0 0/0 .text            action__11daNpc_Bou_cFv */
void daNpc_Bou_c::action() {
    // NONMATCHING
}

/* 8096E7E0-8096E8A4 001940 00C4+00 1/0 0/0 0/0 .text            beforeMove__11daNpc_Bou_cFv */
void daNpc_Bou_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80972960-80972964 000100 0004+00 0/1 0/0 0/0 .rodata          @5018 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5018 = -30.0f;
COMPILER_STRIP_GATE(0x80972960, &lit_5018);
#pragma pop

/* 80972964-80972968 000104 0004+00 0/1 0/0 0/0 .rodata          @5019 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5019 = 10.0f;
COMPILER_STRIP_GATE(0x80972964, &lit_5019);
#pragma pop

/* 80972968-80972970 000108 0004+04 0/1 0/0 0/0 .rodata          @5020 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5020[1 + 1 /* padding */] = {
    0x38C90FDB,
    /* padding */
    0x00000000,
};
COMPILER_STRIP_GATE(0x80972968, &lit_5020);
#pragma pop

/* 80972970-80972978 000110 0008+00 1/3 0/0 0/0 .rodata          @5022 */
SECTION_RODATA static u8 const lit_5022[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80972970, &lit_5022);

/* 8096E8A4-8096EB14 001A04 0270+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_Bou_cFv */
void daNpc_Bou_c::setAttnPos() {
    // NONMATCHING
}

/* 8096EB14-8096EC6C 001C74 0158+00 1/0 0/0 0/0 .text            setCollision__11daNpc_Bou_cFv */
void daNpc_Bou_c::setCollision() {
    // NONMATCHING
}

/* 8096EC6C-8096EC74 001DCC 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_Bou_cFv */
int daNpc_Bou_c::drawDbgInfo() {
    return false;
}

/* 8096EC74-8096ECC0 001DD4 004C+00 1/0 0/0 0/0 .text            changeAnm__11daNpc_Bou_cFPiPi */
void daNpc_Bou_c::changeAnm(int* param_0, int* param_1) {
    // NONMATCHING
}

/* 8096ECC0-8096ED3C 001E20 007C+00 1/1 0/0 0/0 .text            selectAction__11daNpc_Bou_cFv */
void daNpc_Bou_c::selectAction() {
    // NONMATCHING
}

/* 8096ED3C-8096ED68 001E9C 002C+00 2/2 0/0 0/0 .text
 * chkAction__11daNpc_Bou_cFM11daNpc_Bou_cFPCvPvPv_i            */
void daNpc_Bou_c::chkAction(int (daNpc_Bou_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 8096ED68-8096EE10 001EC8 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_Bou_cFM11daNpc_Bou_cFPCvPvPv_i            */
void daNpc_Bou_c::setAction(int (daNpc_Bou_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80972978-80972984 000118 000C+00 1/1 0/0 0/0 .rodata          @5178 */
SECTION_RODATA static u8 const lit_5178[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80972978, &lit_5178);

/* 8097299C-8097299C 00013C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80972A76 = "prm";
SECTION_DEAD static char const* const stringBase_80972A7A = "msgNo";
SECTION_DEAD static char const* const stringBase_80972A80 = "msgNo2";
#pragma pop

/* 8096EE10-8096F2E4 001F70 04D4+00 2/0 0/0 0/0 .text            cutWildGoat__11daNpc_Bou_cFi */
void daNpc_Bou_c::cutWildGoat(int param_0) {
    // NONMATCHING
}

/* 8096F2E4-8096F510 002444 022C+00 1/0 0/0 0/0 .text            cutWildGoatSuccess__11daNpc_Bou_cFi
 */
void daNpc_Bou_c::cutWildGoatSuccess(int param_0) {
    // NONMATCHING
}

/* 8096F510-8096F758 002670 0248+00 1/0 0/0 0/0 .text            cutWildGoatFailure__11daNpc_Bou_cFi
 */
void daNpc_Bou_c::cutWildGoatFailure(int param_0) {
    // NONMATCHING
}

/* 8096F758-8096F9A4 0028B8 024C+00 1/0 0/0 0/0 .text            cutSpeakTo__11daNpc_Bou_cFi */
void daNpc_Bou_c::cutSpeakTo(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80972984-80972988 000124 0004+00 0/4 0/0 0/0 .rodata          @5515 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5515 = -40.0f;
COMPILER_STRIP_GATE(0x80972984, &lit_5515);
#pragma pop

/* 8096F9A4-8096FB78 002B04 01D4+00 1/0 0/0 0/0 .text cutConversationWithBou__11daNpc_Bou_cFi */
void daNpc_Bou_c::cutConversationWithBou(int param_0) {
    // NONMATCHING
}

/* 8096FB78-8096FE40 002CD8 02C8+00 1/0 0/0 0/0 .text cutConfidentialConversation__11daNpc_Bou_cFi
 */
void daNpc_Bou_c::cutConfidentialConversation(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80972988-8097298C 000128 0004+00 0/2 0/0 0/0 .rodata          @5708 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5708 = 0.5f;
COMPILER_STRIP_GATE(0x80972988, &lit_5708);
#pragma pop

/* 8097299C-8097299C 00013C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80972A87 = "timer";
#pragma pop

/* 8096FE40-80970278 002FA0 0438+00 1/0 0/0 0/0 .text            cutFindWolf__11daNpc_Bou_cFi */
void daNpc_Bou_c::cutFindWolf(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8097298C-80972990 00012C 0004+00 0/1 0/0 0/0 .rodata          @5897 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5897 = 250.0f;
COMPILER_STRIP_GATE(0x8097298C, &lit_5897);
#pragma pop

/* 80972990-80972994 000130 0004+00 0/1 0/0 0/0 .rodata          @5898 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5898 = -250.0f;
COMPILER_STRIP_GATE(0x80972990, &lit_5898);
#pragma pop

/* 80972994-80972998 000134 0004+00 0/1 0/0 0/0 .rodata          @5899 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5899 = 150.0f;
COMPILER_STRIP_GATE(0x80972994, &lit_5899);
#pragma pop

/* 80970278-809709EC 0033D8 0774+00 1/0 0/0 0/0 .text            cutMeetingAgain__11daNpc_Bou_cFi */
void daNpc_Bou_c::cutMeetingAgain(int param_0) {
    // NONMATCHING
}

/* 809709EC-80970DFC 003B4C 0410+00 1/0 0/0 0/0 .text            wait__11daNpc_Bou_cFPv */
void daNpc_Bou_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80970DFC-80970F9C 003F5C 01A0+00 1/0 0/0 0/0 .text            talkwithJagar__11daNpc_Bou_cFPv */
void daNpc_Bou_c::talkwithJagar(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80972998-8097299C 000138 0004+00 0/1 0/0 0/0 .rodata          @6218 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6218 = -10.0f;
COMPILER_STRIP_GATE(0x80972998, &lit_6218);
#pragma pop

/* 80970F9C-8097146C 0040FC 04D0+00 3/0 0/0 0/0 .text            talk__11daNpc_Bou_cFPv */
void daNpc_Bou_c::talk(void* param_0) {
    // NONMATCHING
}

/* 8097146C-8097148C 0045CC 0020+00 1/0 0/0 0/0 .text            daNpc_Bou_Create__FPv */
static void daNpc_Bou_Create(void* param_0) {
    // NONMATCHING
}

/* 8097148C-809714AC 0045EC 0020+00 1/0 0/0 0/0 .text            daNpc_Bou_Delete__FPv */
static void daNpc_Bou_Delete(void* param_0) {
    // NONMATCHING
}

/* 809714AC-809714CC 00460C 0020+00 1/0 0/0 0/0 .text            daNpc_Bou_Execute__FPv */
static void daNpc_Bou_Execute(void* param_0) {
    // NONMATCHING
}

/* 809714CC-809714EC 00462C 0020+00 1/0 0/0 0/0 .text            daNpc_Bou_Draw__FPv */
static void daNpc_Bou_Draw(void* param_0) {
    // NONMATCHING
}

/* 809714EC-809714F4 00464C 0008+00 1/0 0/0 0/0 .text            daNpc_Bou_IsDelete__FPv */
static bool daNpc_Bou_IsDelete(void* param_0) {
    return true;
}

/* 809714F4-80971524 004654 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80971524-8097156C 004684 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 8097156C-809718F4 0046CC 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 809718F4-80971930 004A54 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80971930-8097196C 004A90 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 8097196C-809719B4 004ACC 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809719B4-809719FC 004B14 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 809719FC-80971A38 004B5C 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80971A38-80971A80 004B98 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80971A80-80971AC8 004BE0 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80971AC8-80971ECC 004C28 0404+00 1/1 0/0 0/0 .text
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

/* 80971ECC-80971ED0 00502C 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80971ED0-80971FCC 005030 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80971FCC-80971FD0 00512C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80971FD0-80972018 005130 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80972018-80972088 005178 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80972088-809720E4 0051E8 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 809720E4-80972154 005244 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80972154-8097219C 0052B4 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 8097219C-809722B8 0052FC 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 809722B8-809724C0 005418 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 809724C0-809724C4 005620 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 809724C4-809724CC 005624 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootLJointNo() {
    return -1;
}

/* 809724CC-809724D4 00562C 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootRJointNo() {
    return -1;
}

/* 809724D4-809724DC 005634 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 809724DC-809724E4 00563C 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 809724E4-809724E8 005644 0004+00 1/0 0/0 0/0 .text            afterMoved__8daNpcT_cFv */
void daNpcT_c::afterMoved() {
    /* empty function */
}

/* 809724E8-809724F0 005648 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 809724F0-80972508 005650 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80972508-8097250C 005668 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 8097250C-80972510 00566C 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80972510-80972518 005670 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80972518-80972520 005678 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80972520-80972550 005680 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80972550-80972580 0056B0 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80972580-80972584 0056E0 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80972584-80972588 0056E4 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80972588-8097258C 0056E8 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 8097258C-809725A8 0056EC 001C+00 2/2 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_8097258C(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80973430-8097343C 0009A0 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_Bou_Param_c */
SECTION_DATA extern void* __vt__17daNpc_Bou_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_Bou_Param_cFv,
};

/* 80973448-80973454 000008 000C+00 1/1 0/0 0/0 .bss             @3942 */
static u8 lit_3942[12];

/* 80973454-80973458 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 809725A8-809726D4 005708 012C+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_bou_cpp */
void __sinit_d_a_npc_bou_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x809725A8, __sinit_d_a_npc_bou_cpp);
#pragma pop

/* 809726D4-809727B4 005834 00E0+00 1/1 0/0 0/0 .text
 * __ct__11daNpc_Bou_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
/* daNpc_Bou_c::daNpc_Bou_c(daNpcT_faceMotionAnmData_c const* param_0,
                             daNpcT_motionAnmData_c const* param_1,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
                             daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
} */

/* 809727B4-809727BC 005914 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__11daNpc_Bou_cFv */
s32 daNpc_Bou_c::getEyeballMaterialNo() {
    return true;
}

/* 809727BC-809727C4 00591C 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__11daNpc_Bou_cFv */
s32 daNpc_Bou_c::getHeadJointNo() {
    return 4;
}

/* 809727C4-809727CC 005924 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__11daNpc_Bou_cFv */
s32 daNpc_Bou_c::getNeckJointNo() {
    return 3;
}

/* 809727CC-809727D4 00592C 0008+00 1/0 0/0 0/0 .text            getBackboneJointNo__11daNpc_Bou_cFv
 */
s32 daNpc_Bou_c::getBackboneJointNo() {
    return true;
}

/* 809727D4-809727E4 005934 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__11daNpc_Bou_cFi
 */
int daNpc_Bou_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 809727E4-809727F4 005944 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__11daNpc_Bou_cFi
 */
int daNpc_Bou_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 809727F4-8097283C 005954 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_Bou_Param_cFv */
daNpc_Bou_Param_c::~daNpc_Bou_Param_c() {
    // NONMATCHING
}

/* 8097283C-80972844 00599C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8097283C() {
    // NONMATCHING
}

/* 80972844-8097284C 0059A4 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80972844() {
    // NONMATCHING
}

/* 8097299C-8097299C 00013C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
