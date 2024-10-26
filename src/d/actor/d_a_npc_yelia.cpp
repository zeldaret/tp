/**
 * @file d_a_npc_yelia.cpp
 * 
*/

#include "d/actor/d_a_npc_yelia.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__13daNpc_Yelia_cFv();
extern "C" void create__13daNpc_Yelia_cFv();
extern "C" void CreateHeap__13daNpc_Yelia_cFv();
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
extern "C" void Delete__13daNpc_Yelia_cFv();
extern "C" void Execute__13daNpc_Yelia_cFv();
extern "C" void Draw__13daNpc_Yelia_cFv();
extern "C" void createHeapCallBack__13daNpc_Yelia_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__13daNpc_Yelia_cFP8J3DJointi();
extern "C" void getType__13daNpc_Yelia_cFv();
extern "C" void isDelete__13daNpc_Yelia_cFv();
extern "C" void reset__13daNpc_Yelia_cFv();
extern "C" void afterJntAnm__13daNpc_Yelia_cFi();
extern "C" void setParam__13daNpc_Yelia_cFv();
extern "C" void checkChangeEvt__13daNpc_Yelia_cFv();
extern "C" void setAfterTalkMotion__13daNpc_Yelia_cFv();
extern "C" void srchActors__13daNpc_Yelia_cFv();
extern "C" void evtTalk__13daNpc_Yelia_cFv();
extern "C" void evtCutProc__13daNpc_Yelia_cFv();
extern "C" void action__13daNpc_Yelia_cFv();
extern "C" void beforeMove__13daNpc_Yelia_cFv();
extern "C" void setAttnPos__13daNpc_Yelia_cFv();
extern "C" void setCollision__13daNpc_Yelia_cFv();
extern "C" bool drawDbgInfo__13daNpc_Yelia_cFv();
extern "C" void selectAction__13daNpc_Yelia_cFv();
extern "C" void chkAction__13daNpc_Yelia_cFM13daNpc_Yelia_cFPCvPvPv_i();
extern "C" void setAction__13daNpc_Yelia_cFM13daNpc_Yelia_cFPCvPvPv_i();
extern "C" void cutConversationAboutLoopHole__13daNpc_Yelia_cFi();
extern "C" void cutTWResistance__13daNpc_Yelia_cFi();
extern "C" void cutTakeWoodStatue__13daNpc_Yelia_cFi();
extern "C" void cutClothTry__13daNpc_Yelia_cFi();
extern "C" void cutThankYou__13daNpc_Yelia_cFi();
extern "C" void wait__13daNpc_Yelia_cFPv();
extern "C" void horseWait__13daNpc_Yelia_cFPv();
extern "C" void reminiscence__13daNpc_Yelia_cFPv();
extern "C" void talk__13daNpc_Yelia_cFPv();
extern "C" static void daNpc_Yelia_Create__FPv();
extern "C" static void daNpc_Yelia_Delete__FPv();
extern "C" static void daNpc_Yelia_Execute__FPv();
extern "C" static void daNpc_Yelia_Draw__FPv();
extern "C" static bool daNpc_Yelia_IsDelete__FPv();
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
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
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
extern "C" void func_80B52004(void* _this, int*);
extern "C" void __sinit_d_a_npc_yelia_cpp();
extern "C" void
__ct__13daNpc_Yelia_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" s32 getEyeballMaterialNo__13daNpc_Yelia_cFv();
extern "C" s32 getHeadJointNo__13daNpc_Yelia_cFv();
extern "C" s32 getNeckJointNo__13daNpc_Yelia_cFv();
extern "C" bool getBackboneJointNo__13daNpc_Yelia_cFv();
extern "C" void checkChangeJoint__13daNpc_Yelia_cFi();
extern "C" void checkRemoveJoint__13daNpc_Yelia_cFi();
extern "C" bool chkXYItems__13daNpc_Yelia_cFv();
extern "C" void __dt__19daNpc_Yelia_Param_cFv();
extern "C" static void func_80B52274();
extern "C" static void func_80B5227C();
extern "C" void setOffsetPos__9daDitem_cF4cXyz();
extern "C" u8 const m__19daNpc_Yelia_Param_c[140];
extern "C" extern char const* const d_a_npc_yelia__stringBase0;
extern "C" void* mCutNameList__13daNpc_Yelia_c[6];
extern "C" u8 mCutList__13daNpc_Yelia_c[72];

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
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz();
extern "C" void fpcEx_IsExist__FUi();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void getLayerNo__14dComIfG_play_cFi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void setWarashibeItem__17dSv_player_item_cFUc();
extern "C" void onSwitch__12dSv_memBit_cFi();
extern "C" void hide__12daItemBase_cFv();
extern "C" void show__12daItemBase_cFv();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setSkipZev__14dEvt_control_cFPvPc();
extern "C" void onSkipFade__14dEvt_control_cFv();
extern "C" void setPtT__14dEvt_control_cFPv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void setGoal__16dEvent_manager_cFP4cXyz();
extern "C" void getRunEventName__16dEvent_manager_cFv();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
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
extern "C" void initialize__13daNpcT_Path_cFv();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz();
extern "C" void calcJntRad__15daNpcT_JntAnm_cFfff();
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
extern "C" void setAngle__8daNpcT_cFs();
extern "C" void hitChk__8daNpcT_cFP12dCcD_GObjInfUl();
extern "C" void chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_onEvtBit__FUl();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void remove__10dMsgFlow_cFv();
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
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
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
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80B52408-80B52408 000154 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B52408 = "";
SECTION_DEAD static char const* const stringBase_80B52409 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80B52415 = "TW_RESISTANCE1";
SECTION_DEAD static char const* const stringBase_80B52424 = "TW_RESISTANCE2";
SECTION_DEAD static char const* const stringBase_80B52433 = "TAKE_WOODSTATUE";
SECTION_DEAD static char const* const stringBase_80B52443 = "THANK_YOU";
SECTION_DEAD static char const* const stringBase_80B5244D = "Yelia";
SECTION_DEAD static char const* const stringBase_80B52453 = "Yelia0";
SECTION_DEAD static char const* const stringBase_80B5245A = "Yelia1";
SECTION_DEAD static char const* const stringBase_80B52461 = "Yelia2";
SECTION_DEAD static char const* const stringBase_80B52468 = "Yelia3";
SECTION_DEAD static char const* const stringBase_80B5246F = "Yelia4";
SECTION_DEAD static char const* const stringBase_80B52476 = "yelB_TW";
SECTION_DEAD static char const* const stringBase_80B5247E = "CONVERSATION_ABOUT_LOOPHOLE";
SECTION_DEAD static char const* const stringBase_80B5249A = "TW_RESISTANCE";
SECTION_DEAD static char const* const stringBase_80B524A8 = "CLOTH_TRY";
#pragma pop

/* 80B524DC-80B524E8 000000 000C+00 4/4 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B524E8-80B524FC 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80B524FC-80B52514 000020 0018+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[24] = {
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x07,
};

/* 80B52514-80B52544 -00001 0030+00 1/2 0/0 0/0 .data            l_evtList */
SECTION_DATA static void* l_evtList[12] = {
    (void*)&d_a_npc_yelia__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_yelia__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_yelia__stringBase0) + 0xD),
    (void*)0x00000007,
    (void*)(((char*)&d_a_npc_yelia__stringBase0) + 0x1C),
    (void*)0x00000007,
    (void*)(((char*)&d_a_npc_yelia__stringBase0) + 0x2B),
    (void*)0x00000006,
    (void*)(((char*)&d_a_npc_yelia__stringBase0) + 0x3B),
    (void*)0x00000006,
};

/* 80B52544-80B52564 -00001 0020+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[8] = {
    (void*)&d_a_npc_yelia__stringBase0,
    (void*)(((char*)&d_a_npc_yelia__stringBase0) + 0x45),
    (void*)(((char*)&d_a_npc_yelia__stringBase0) + 0x4B),
    (void*)(((char*)&d_a_npc_yelia__stringBase0) + 0x52),
    (void*)(((char*)&d_a_npc_yelia__stringBase0) + 0x59),
    (void*)(((char*)&d_a_npc_yelia__stringBase0) + 0x60),
    (void*)(((char*)&d_a_npc_yelia__stringBase0) + 0x67),
    (void*)(((char*)&d_a_npc_yelia__stringBase0) + 0x6E),
};

/* 80B52564-80B52568 000088 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u32 l_loadResPtrn0 = 0x010203FF;

/* 80B52568-80B5256C 00008C 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u8 l_loadResPtrn1[3 + 1 /* padding */] = {
    0x02,
    0x04,
    0xFF,
    /* padding */
    0x00,
};

/* 80B5256C-80B52570 000090 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn2 */
SECTION_DATA static u32 l_loadResPtrn2 = 0x010205FF;

/* 80B52570-80B52574 000094 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn3 */
SECTION_DATA static u32 l_loadResPtrn3 = 0x020406FF;

/* 80B52574-80B52578 000098 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn4 */
SECTION_DATA static u32 l_loadResPtrn4 = 0x020706FF;

/* 80B52578-80B52580 00009C 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn5 */
SECTION_DATA static u8 l_loadResPtrn5[5 + 3 /* padding */] = {
    0x02,
    0x04,
    0x07,
    0x06,
    0xFF,
    /* padding */
    0x00,
    0x00,
    0x00,
};

/* 80B52580-80B52588 0000A4 0008+00 1/0 0/0 0/0 .data            l_loadResPtrn9 */
SECTION_DATA static u8 l_loadResPtrn9[8] = {
    0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0xFF,
};

/* 80B52588-80B525B0 -00001 0028+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[10] = {
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn1, (void*)&l_loadResPtrn2, (void*)&l_loadResPtrn3,
    (void*)&l_loadResPtrn4, (void*)&l_loadResPtrn5, (void*)&l_loadResPtrn3, (void*)&l_loadResPtrn3,
    (void*)&l_loadResPtrn9, (void*)&l_loadResPtrn0,
};

/* 80B525B0-80B528C0 0000D4 0310+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[784] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x12,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x32,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x38,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x35, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x37, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x2C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x36, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x14,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80B528C0-80B52C94 0003E4 03D4+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[980] = {
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x29,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80B52C94-80B52E44 0007B8 01B0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[432] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0x00, 0x09, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x01, 0x00, 0x10, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0x00, 0x11, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x01, 0x00, 0x11, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0x00, 0x12, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x01, 0x00, 0x13, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x01, 0x00, 0x12, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x01, 0x00, 0x15, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x18, 0xFF, 0x01, 0x00, 0x19, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1A, 0xFF, 0x01, 0x00, 0x1B, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x15, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x19, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x16, 0xFF, 0x00, 0x00, 0x17, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x17, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B52E44-80B53064 000968 0220+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[544] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0x00, 0x0E, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x01, 0x00, 0x13, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x01, 0x00, 0x15, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x15, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x16, 0xFF, 0x01, 0x00, 0x17, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x17, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x18, 0xFF, 0x01, 0x00, 0x19, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x19, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x21, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x22, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1C, 0xFF, 0x00, 0x00, 0x0F, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1A, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1E, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1F, 0xFF, 0x00, 0x00, 0x20, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x20, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B53064-80B5307C -00001 0018+00 1/1 0/0 0/0 .data            mCutNameList__13daNpc_Yelia_c */
SECTION_DATA void* daNpc_Yelia_c::mCutNameList[6] = {
    (void*)&d_a_npc_yelia__stringBase0,
    (void*)(((char*)&d_a_npc_yelia__stringBase0) + 0x76),
    (void*)(((char*)&d_a_npc_yelia__stringBase0) + 0x92),
    (void*)(((char*)&d_a_npc_yelia__stringBase0) + 0x2B),
    (void*)(((char*)&d_a_npc_yelia__stringBase0) + 0xA0),
    (void*)(((char*)&d_a_npc_yelia__stringBase0) + 0x3B),
};

/* 80B5307C-80B53088 -00001 000C+00 0/1 0/0 0/0 .data            @3926 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3926[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutLoopHole__13daNpc_Yelia_cFi,
};
#pragma pop

/* 80B53088-80B53094 -00001 000C+00 0/1 0/0 0/0 .data            @3927 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3927[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTWResistance__13daNpc_Yelia_cFi,
};
#pragma pop

/* 80B53094-80B530A0 -00001 000C+00 0/1 0/0 0/0 .data            @3928 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3928[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTakeWoodStatue__13daNpc_Yelia_cFi,
};
#pragma pop

/* 80B530A0-80B530AC -00001 000C+00 0/1 0/0 0/0 .data            @3929 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3929[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutClothTry__13daNpc_Yelia_cFi,
};
#pragma pop

/* 80B530AC-80B530B8 -00001 000C+00 0/1 0/0 0/0 .data            @3930 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3930[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutThankYou__13daNpc_Yelia_cFi,
};
#pragma pop

/* 80B530B8-80B53100 000BDC 0048+00 1/2 0/0 0/0 .data            mCutList__13daNpc_Yelia_c */
SECTION_DATA u8 daNpc_Yelia_c::mCutList[72] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B53100-80B53124 -00001 0024+00 1/1 0/0 0/0 .data            @4570 */
SECTION_DATA static void* lit_4570[9] = {
    (void*)(((char*)getType__13daNpc_Yelia_cFv) + 0x28),
    (void*)(((char*)getType__13daNpc_Yelia_cFv) + 0x30),
    (void*)(((char*)getType__13daNpc_Yelia_cFv) + 0x38),
    (void*)(((char*)getType__13daNpc_Yelia_cFv) + 0x40),
    (void*)(((char*)getType__13daNpc_Yelia_cFv) + 0x48),
    (void*)(((char*)getType__13daNpc_Yelia_cFv) + 0x50),
    (void*)(((char*)getType__13daNpc_Yelia_cFv) + 0x58),
    (void*)(((char*)getType__13daNpc_Yelia_cFv) + 0x60),
    (void*)(((char*)getType__13daNpc_Yelia_cFv) + 0x68),
};

/* 80B53124-80B53148 -00001 0024+00 1/1 0/0 0/0 .data            @4592 */
SECTION_DATA static void* lit_4592[9] = {
    (void*)(((char*)isDelete__13daNpc_Yelia_cFv) + 0x34),
    (void*)(((char*)isDelete__13daNpc_Yelia_cFv) + 0x3C),
    (void*)(((char*)isDelete__13daNpc_Yelia_cFv) + 0x44),
    (void*)(((char*)isDelete__13daNpc_Yelia_cFv) + 0x4C),
    (void*)(((char*)isDelete__13daNpc_Yelia_cFv) + 0x7C),
    (void*)(((char*)isDelete__13daNpc_Yelia_cFv) + 0x84),
    (void*)(((char*)isDelete__13daNpc_Yelia_cFv) + 0xB4),
    (void*)(((char*)isDelete__13daNpc_Yelia_cFv) + 0xE4),
    (void*)(((char*)isDelete__13daNpc_Yelia_cFv) + 0xF8),
};

/* 80B53148-80B53154 -00001 000C+00 1/1 0/0 0/0 .data            @4704 */
SECTION_DATA static void* lit_4704[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Yelia_cFPv,
};

/* 80B53154-80B531B4 -00001 0060+00 1/1 0/0 0/0 .data            @4804 */
SECTION_DATA static void* lit_4804[24] = {
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x9C),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x40),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x48),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x50),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x58),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x60),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x68),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x70),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x78),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x80),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x88),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x98),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x9C),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x9C),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x9C),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x9C),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x9C),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x9C),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x9C),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x9C),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x9C),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x9C),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x9C),
    (void*)(((char*)setAfterTalkMotion__13daNpc_Yelia_cFv) + 0x90),
};

/* 80B531B4-80B531C0 -00001 000C+00 1/1 0/0 0/0 .data            @4833 */
SECTION_DATA static void* lit_4833[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Yelia_cFPv,
};

/* 80B531C0-80B531CC -00001 000C+00 1/1 0/0 0/0 .data            @4838 */
SECTION_DATA static void* lit_4838[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Yelia_cFPv,
};

/* 80B531CC-80B531D8 -00001 000C+00 0/1 0/0 0/0 .data            @5091 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5091[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)horseWait__13daNpc_Yelia_cFPv,
};
#pragma pop

/* 80B531D8-80B531E4 -00001 000C+00 0/1 0/0 0/0 .data            @5093 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5093[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)reminiscence__13daNpc_Yelia_cFPv,
};
#pragma pop

/* 80B531E4-80B531F0 -00001 000C+00 0/1 0/0 0/0 .data            @5095 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5095[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_Yelia_cFPv,
};
#pragma pop

/* 80B531F0-80B531FC -00001 000C+00 0/1 0/0 0/0 .data            @5906 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5906[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)horseWait__13daNpc_Yelia_cFPv,
};
#pragma pop

/* 80B531FC-80B53208 -00001 000C+00 0/1 0/0 0/0 .data            @5912 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5912[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)horseWait__13daNpc_Yelia_cFPv,
};
#pragma pop

/* 80B53208-80B53214 -00001 000C+00 0/1 0/0 0/0 .data            @5919 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5919[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)horseWait__13daNpc_Yelia_cFPv,
};
#pragma pop

/* 80B53214-80B53220 -00001 000C+00 0/1 0/0 0/0 .data            @5931 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5931[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)horseWait__13daNpc_Yelia_cFPv,
};
#pragma pop

/* 80B53220-80B53240 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Yelia_MethodTable */
static actor_method_class daNpc_Yelia_MethodTable = {
    (process_method_func)daNpc_Yelia_Create__FPv,
    (process_method_func)daNpc_Yelia_Delete__FPv,
    (process_method_func)daNpc_Yelia_Execute__FPv,
    (process_method_func)daNpc_Yelia_IsDelete__FPv,
    (process_method_func)daNpc_Yelia_Draw__FPv,
};

/* 80B53240-80B53270 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_YELIA */
extern actor_process_profile_definition g_profile_NPC_YELIA = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_YELIA,           // mProcName
  &g_fpcLf_Method.mBase,    // sub_method
  sizeof(daNpc_Yelia_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  379,                      // mPriority
  &daNpc_Yelia_MethodTable, // sub_method
  0x00040108,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80B53270-80B5327C 000D94 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80B5327C-80B53288 000DA0 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80B53288-80B532AC 000DAC 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B5227C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B52274,
};

/* 80B532AC-80B532B8 000DD0 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80B532B8-80B532C4 000DDC 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80B532C4-80B532D0 000DE8 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80B532D0-80B532DC 000DF4 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80B532DC-80B532E8 000E00 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80B532E8-80B532F4 000E0C 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80B532F4-80B53300 000E18 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B53300-80B5330C 000E24 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80B5330C-80B53318 000E30 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80B53318-80B533DC 000E3C 00C4+00 2/2 0/0 0/0 .data            __vt__13daNpc_Yelia_c */
SECTION_DATA extern void* __vt__13daNpc_Yelia_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpc_Yelia_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__13daNpc_Yelia_cFi,
    (void*)checkRemoveJoint__13daNpc_Yelia_cFi,
    (void*)getBackboneJointNo__13daNpc_Yelia_cFv,
    (void*)getNeckJointNo__13daNpc_Yelia_cFv,
    (void*)getHeadJointNo__13daNpc_Yelia_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__13daNpc_Yelia_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__13daNpc_Yelia_cFi,
    (void*)setParam__13daNpc_Yelia_cFv,
    (void*)checkChangeEvt__13daNpc_Yelia_cFv,
    (void*)evtTalk__13daNpc_Yelia_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__13daNpc_Yelia_cFv,
    (void*)setAfterTalkMotion__13daNpc_Yelia_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__13daNpc_Yelia_cFv,
    (void*)beforeMove__13daNpc_Yelia_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__13daNpc_Yelia_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__13daNpc_Yelia_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__13daNpc_Yelia_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__13daNpc_Yelia_cFv,
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

/* 80B4D30C-80B4D458 0000EC 014C+00 1/0 0/0 0/0 .text            __dt__13daNpc_Yelia_cFv */
daNpc_Yelia_c::~daNpc_Yelia_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B522B4-80B52340 000000 008C+00 7/7 0/0 0/0 .rodata          m__19daNpc_Yelia_Param_c */
SECTION_RODATA u8 const daNpc_Yelia_Param_c::m[140] = {
    0x43, 0x2A, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x20, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B522B4, &daNpc_Yelia_Param_c::m);

/* 80B52340-80B52368 00008C 0028+00 0/1 0/0 0/0 .rodata          heapSize$4085 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[40] = {
    0x00, 0x00, 0x44, 0xD0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x44, 0xD0, 0x00, 0x00,
    0x44, 0xD0, 0x00, 0x00, 0x44, 0x10, 0x00, 0x00, 0x44, 0xD0, 0x00, 0x00, 0x44, 0xD0,
    0x00, 0x00, 0x44, 0xD0, 0x00, 0x00, 0x44, 0xD0, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B52340, &heapSize);
#pragma pop

/* 80B52368-80B5236C 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4164 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4164 = -200.0f;
COMPILER_STRIP_GATE(0x80B52368, &lit_4164);
#pragma pop

/* 80B5236C-80B52370 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4165 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4165 = -100.0f;
COMPILER_STRIP_GATE(0x80B5236C, &lit_4165);
#pragma pop

/* 80B52370-80B52374 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4166 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4166 = 200.0f;
COMPILER_STRIP_GATE(0x80B52370, &lit_4166);
#pragma pop

/* 80B52374-80B52378 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4167 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4167 = 300.0f;
COMPILER_STRIP_GATE(0x80B52374, &lit_4167);
#pragma pop

/* 80B52378-80B5237C 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4168 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4168 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80B52378, &lit_4168);
#pragma pop

/* 80B4D458-80B4D754 000238 02FC+00 1/1 0/0 0/0 .text            create__13daNpc_Yelia_cFv */
void daNpc_Yelia_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5237C-80B52380 0000C8 0004+00 9/15 0/0 0/0 .rodata          @4330 */
SECTION_RODATA static u8 const lit_4330[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B5237C, &lit_4330);

/* 80B52380-80B52384 0000CC 0004+00 0/2 0/0 0/0 .rodata          @4331 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4331 = 65536.0f;
COMPILER_STRIP_GATE(0x80B52380, &lit_4331);
#pragma pop

/* 80B52384-80B52388 0000D0 0004+00 0/3 0/0 0/0 .rodata          @4332 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4332 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B52384, &lit_4332);
#pragma pop

/* 80B52388-80B5238C 0000D4 0004+00 2/5 0/0 0/0 .rodata          @4489 */
SECTION_RODATA static f32 const lit_4489 = 1.0f;
COMPILER_STRIP_GATE(0x80B52388, &lit_4489);

/* 80B4D754-80B4DA64 000534 0310+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_Yelia_cFv */
void daNpc_Yelia_c::CreateHeap() {
    // NONMATCHING
}

/* 80B4DA64-80B4DAA0 000844 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80B4DAA0-80B4DAB8 000880 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80B4DAB8-80B4DAF4 000898 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80B4DAF4-80B4DB0C 0008D4 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80B4DB0C-80B4DB54 0008EC 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80B4DB54-80B4DB78 000934 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80B4DB78-80B4DBB4 000958 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80B4DBB4-80B4DBCC 000994 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80B4DBCC-80B4DC08 0009AC 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80B4DC08-80B4DC20 0009E8 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80B4DC20-80B4DC54 000A00 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_Yelia_cFv */
void daNpc_Yelia_c::Delete() {
    // NONMATCHING
}

/* 80B4DC54-80B4DC74 000A34 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_Yelia_cFv */
void daNpc_Yelia_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B5238C-80B52390 0000D8 0004+00 1/1 0/0 0/0 .rodata          @4538 */
SECTION_RODATA static f32 const lit_4538 = 100.0f;
COMPILER_STRIP_GATE(0x80B5238C, &lit_4538);

/* 80B4DC74-80B4DD08 000A54 0094+00 1/1 0/0 0/0 .text            Draw__13daNpc_Yelia_cFv */
void daNpc_Yelia_c::Draw() {
    // NONMATCHING
}

/* 80B4DD08-80B4DD28 000AE8 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_Yelia_cFP10fopAc_ac_c            */
void daNpc_Yelia_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80B4DD28-80B4DD80 000B08 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpc_Yelia_cFP8J3DJointi               */
void daNpc_Yelia_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80B4DD80-80B4DDF8 000B60 0078+00 2/1 0/0 0/0 .text            getType__13daNpc_Yelia_cFv */
void daNpc_Yelia_c::getType() {
    // NONMATCHING
}

/* 80B4DDF8-80B4DF10 000BD8 0118+00 2/1 0/0 0/0 .text            isDelete__13daNpc_Yelia_cFv */
void daNpc_Yelia_c::isDelete() {
    // NONMATCHING
}

/* 80B4DF10-80B4E068 000CF0 0158+00 1/1 0/0 0/0 .text            reset__13daNpc_Yelia_cFv */
void daNpc_Yelia_c::reset() {
    // NONMATCHING
}

/* 80B4E068-80B4E0F4 000E48 008C+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpc_Yelia_cFi */
void daNpc_Yelia_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B52390-80B52394 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4697 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4697 = 135.0f;
COMPILER_STRIP_GATE(0x80B52390, &lit_4697);
#pragma pop

/* 80B4E0F4-80B4E2C0 000ED4 01CC+00 1/0 0/0 0/0 .text            setParam__13daNpc_Yelia_cFv */
void daNpc_Yelia_c::setParam() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B52394-80B52398 0000E0 0004+00 7/8 0/0 0/0 .rodata          @4778 */
SECTION_RODATA static f32 const lit_4778 = -1.0f;
COMPILER_STRIP_GATE(0x80B52394, &lit_4778);

/* 80B4E2C0-80B4E5BC 0010A0 02FC+00 1/0 0/0 0/0 .text            checkChangeEvt__13daNpc_Yelia_cFv
 */
void daNpc_Yelia_c::checkChangeEvt() {
    // NONMATCHING
}

/* 80B4E5BC-80B4E6A0 00139C 00E4+00 2/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_Yelia_cFv */
void daNpc_Yelia_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80B4E6A0-80B4E7C8 001480 0128+00 1/1 0/0 0/0 .text            srchActors__13daNpc_Yelia_cFv */
void daNpc_Yelia_c::srchActors() {
    // NONMATCHING
}

/* 80B4E7C8-80B4E868 0015A8 00A0+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_Yelia_cFv */
void daNpc_Yelia_c::evtTalk() {
    // NONMATCHING
}

/* 80B4E868-80B4E930 001648 00C8+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_Yelia_cFv */
void daNpc_Yelia_c::evtCutProc() {
    // NONMATCHING
}

/* 80B4E930-80B4EA28 001710 00F8+00 1/0 0/0 0/0 .text            action__13daNpc_Yelia_cFv */
void daNpc_Yelia_c::action() {
    // NONMATCHING
}

/* 80B4EA28-80B4EAEC 001808 00C4+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_Yelia_cFv */
void daNpc_Yelia_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B52398-80B5239C 0000E4 0004+00 0/2 0/0 0/0 .rodata          @4977 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4977 = 30.0f;
COMPILER_STRIP_GATE(0x80B52398, &lit_4977);
#pragma pop

/* 80B5239C-80B523A0 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4978 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4978 = -5.0f;
COMPILER_STRIP_GATE(0x80B5239C, &lit_4978);
#pragma pop

/* 80B523A0-80B523A4 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4979 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4979 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80B523A0, &lit_4979);
#pragma pop

/* 80B523A4-80B523A8 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4980 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4980 = 150.0f;
COMPILER_STRIP_GATE(0x80B523A4, &lit_4980);
#pragma pop

/* 80B523A8-80B523AC 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4981 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4981 = 20.0f;
COMPILER_STRIP_GATE(0x80B523A8, &lit_4981);
#pragma pop

/* 80B523AC-80B523B4 0000F8 0004+04 0/1 0/0 0/0 .rodata          @4982 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4982[1 + 1 /* padding */] = {
    10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80B523AC, &lit_4982);
#pragma pop

/* 80B523B4-80B523BC 000100 0008+00 1/3 0/0 0/0 .rodata          @4984 */
SECTION_RODATA static u8 const lit_4984[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B523B4, &lit_4984);

/* 80B4EAEC-80B4EE4C 0018CC 0360+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_Yelia_cFv */
void daNpc_Yelia_c::setAttnPos() {
    // NONMATCHING
}

/* 80B4EE4C-80B4EFA4 001C2C 0158+00 1/0 0/0 0/0 .text            setCollision__13daNpc_Yelia_cFv */
void daNpc_Yelia_c::setCollision() {
    // NONMATCHING
}

/* 80B4EFA4-80B4EFAC 001D84 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_Yelia_cFv */
bool daNpc_Yelia_c::drawDbgInfo() {
    return false;
}

/* 80B4EFAC-80B4F054 001D8C 00A8+00 1/1 0/0 0/0 .text            selectAction__13daNpc_Yelia_cFv */
void daNpc_Yelia_c::selectAction() {
    // NONMATCHING
}

/* 80B4F054-80B4F080 001E34 002C+00 2/2 0/0 0/0 .text
 * chkAction__13daNpc_Yelia_cFM13daNpc_Yelia_cFPCvPvPv_i        */
void daNpc_Yelia_c::chkAction(int (daNpc_Yelia_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80B4F080-80B4F128 001E60 00A8+00 2/2 0/0 0/0 .text
 * setAction__13daNpc_Yelia_cFM13daNpc_Yelia_cFPCvPvPv_i        */
void daNpc_Yelia_c::setAction(int (daNpc_Yelia_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B52408-80B52408 000154 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B524B2 = "prm";
SECTION_DEAD static char const* const stringBase_80B524B6 = "msgNo";
#pragma pop

/* 80B4F128-80B4F3E0 001F08 02B8+00 1/0 0/0 0/0 .text
 * cutConversationAboutLoopHole__13daNpc_Yelia_cFi              */
void daNpc_Yelia_c::cutConversationAboutLoopHole(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B523BC-80B523C4 000108 0008+00 0/1 0/0 0/0 .rodata          @5042 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5042[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B523BC, &lit_5042);
#pragma pop

/* 80B523C4-80B523CC 000110 0008+00 0/1 0/0 0/0 .rodata          @5043 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5043[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B523C4, &lit_5043);
#pragma pop

/* 80B523CC-80B523D4 000118 0008+00 0/1 0/0 0/0 .rodata          @5044 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5044[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B523CC, &lit_5044);
#pragma pop

/* 80B523D4-80B523DC 000120 0008+00 1/1 0/0 0/0 .rodata          @5202 */
SECTION_RODATA static u8 const lit_5202[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B523D4, &lit_5202);

/* 80B4F3E0-80B4F534 0021C0 0154+00 1/0 0/0 0/0 .text            cutTWResistance__13daNpc_Yelia_cFi
 */
void daNpc_Yelia_c::cutTWResistance(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B523DC-80B523E4 000128 0008+00 0/1 0/0 0/0 .rodata          @5237 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5237[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B523DC, &lit_5237);
#pragma pop

/* 80B523E4-80B523EC 000130 0008+00 0/1 0/0 0/0 .rodata          @5277 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5277[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B523E4, &lit_5277);
#pragma pop

/* 80B523EC-80B523F0 000138 0004+00 0/1 0/0 0/0 .rodata          @5490 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5490 = 11.0f / 20.0f;
COMPILER_STRIP_GATE(0x80B523EC, &lit_5490);
#pragma pop

/* 80B523F0-80B523F4 00013C 0004+00 0/1 0/0 0/0 .rodata          @5491 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5491 = 110.0f;
COMPILER_STRIP_GATE(0x80B523F0, &lit_5491);
#pragma pop

/* 80B523F4-80B523FC 000140 0008+00 0/1 0/0 0/0 .rodata          @5493 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5493[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B523F4, &lit_5493);
#pragma pop

/* 80B52408-80B52408 000154 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B524BC = "timer";
SECTION_DEAD static char const* const stringBase_80B524C2 = "send";
SECTION_DEAD static char const* const stringBase_80B524C7 = "@";
#pragma pop

/* 80B4F534-80B4FDD8 002314 08A4+00 1/0 0/0 0/0 .text cutTakeWoodStatue__13daNpc_Yelia_cFi */
void daNpc_Yelia_c::cutTakeWoodStatue(int param_0) {
    // NONMATCHING
}

/* 80B4FDD8-80B4FE78 002BB8 00A0+00 1/0 0/0 0/0 .text            cutClothTry__13daNpc_Yelia_cFi */
void daNpc_Yelia_c::cutClothTry(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B523FC-80B52408 000148 000C+00 1/1 0/0 0/0 .rodata          @5534 */
SECTION_RODATA static u8 const lit_5534[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B523FC, &lit_5534);

/* 80B52408-80B52408 000154 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B524C9 = "msgNo2";
#pragma pop

/* 80B4FE78-80B50084 002C58 020C+00 1/0 0/0 0/0 .text            cutThankYou__13daNpc_Yelia_cFi */
void daNpc_Yelia_c::cutThankYou(int param_0) {
    // NONMATCHING
}

/* 80B50084-80B5080C 002E64 0788+00 1/0 0/0 0/0 .text            wait__13daNpc_Yelia_cFPv */
void daNpc_Yelia_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80B5080C-80B50A0C 0035EC 0200+00 5/0 0/0 0/0 .text            horseWait__13daNpc_Yelia_cFPv */
void daNpc_Yelia_c::horseWait(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B52408-80B52408 000154 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B524D0 = "SMELL_1st";
#pragma pop

/* 80B50A0C-80B50B60 0037EC 0154+00 1/0 0/0 0/0 .text            reminiscence__13daNpc_Yelia_cFPv */
void daNpc_Yelia_c::reminiscence(void* param_0) {
    // NONMATCHING
}

/* 80B50B60-80B50EE0 003940 0380+00 3/0 0/0 0/0 .text            talk__13daNpc_Yelia_cFPv */
void daNpc_Yelia_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80B50EE0-80B50F00 003CC0 0020+00 1/0 0/0 0/0 .text            daNpc_Yelia_Create__FPv */
static void daNpc_Yelia_Create(void* param_0) {
    // NONMATCHING
}

/* 80B50F00-80B50F20 003CE0 0020+00 1/0 0/0 0/0 .text            daNpc_Yelia_Delete__FPv */
static void daNpc_Yelia_Delete(void* param_0) {
    // NONMATCHING
}

/* 80B50F20-80B50F40 003D00 0020+00 1/0 0/0 0/0 .text            daNpc_Yelia_Execute__FPv */
static void daNpc_Yelia_Execute(void* param_0) {
    // NONMATCHING
}

/* 80B50F40-80B50F60 003D20 0020+00 1/0 0/0 0/0 .text            daNpc_Yelia_Draw__FPv */
static void daNpc_Yelia_Draw(void* param_0) {
    // NONMATCHING
}

/* 80B50F60-80B50F68 003D40 0008+00 1/0 0/0 0/0 .text            daNpc_Yelia_IsDelete__FPv */
static bool daNpc_Yelia_IsDelete(void* param_0) {
    return true;
}

/* 80B50F68-80B50F98 003D48 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80B50F98-80B50FE0 003D78 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B50FE0-80B51368 003DC0 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B51368-80B513A4 004148 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80B513A4-80B513E0 004184 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80B513E0-80B51428 0041C0 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B51428-80B51470 004208 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80B51470-80B514AC 004250 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B514AC-80B514F4 00428C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80B514F4-80B5153C 0042D4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80B5153C-80B51940 00431C 0404+00 1/1 0/0 0/0 .text
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

/* 80B51940-80B51944 004720 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80B51944-80B51A40 004724 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80B51A40-80B51A44 004820 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80B51A44-80B51A8C 004824 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80B51A8C-80B51AFC 00486C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80B51AFC-80B51B58 0048DC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B51B58-80B51BC8 004938 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80B51BC8-80B51C10 0049A8 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80B51C10-80B51D2C 0049F0 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80B51D2C-80B51F34 004B0C 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80B51F34-80B51F38 004D14 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80B51F38-80B51F40 004D18 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootLJointNo() {
    return -1;
}

/* 80B51F40-80B51F48 004D20 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootRJointNo() {
    return -1;
}

/* 80B51F48-80B51F50 004D28 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B51F50-80B51F58 004D30 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B51F58-80B51F60 004D38 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80B51F60-80B51F64 004D40 0004+00 1/0 0/0 0/0 .text            afterMoved__8daNpcT_cFv */
void daNpcT_c::afterMoved() {
    /* empty function */
}

/* 80B51F64-80B51F7C 004D44 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B51F7C-80B51F80 004D5C 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80B51F80-80B51F84 004D60 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80B51F84-80B51F8C 004D64 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B51F8C-80B51F94 004D6C 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80B51F94-80B51FC4 004D74 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80B51FC4-80B51FF4 004DA4 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80B51FF4-80B51FF8 004DD4 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B51FF8-80B51FFC 004DD8 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B51FFC-80B52000 004DDC 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B52000-80B52004 004DE0 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B52004-80B52020 004DE4 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80B52004(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B533DC-80B533E8 000F00 000C+00 2/2 0/0 0/0 .data            __vt__19daNpc_Yelia_Param_c */
SECTION_DATA extern void* __vt__19daNpc_Yelia_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daNpc_Yelia_Param_cFv,
};

/* 80B533F0-80B533FC 000008 000C+00 1/1 0/0 0/0 .bss             @3931 */
static u8 lit_3931[12];

/* 80B533FC-80B53400 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80B52020-80B52104 004E00 00E4+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_yelia_cpp */
void __sinit_d_a_npc_yelia_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80B52020, __sinit_d_a_npc_yelia_cpp);
#pragma pop

/* 80B52104-80B521E4 004EE4 00E0+00 1/1 0/0 0/0 .text
 * __ct__13daNpc_Yelia_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Yelia_c::daNpc_Yelia_c(daNpcT_faceMotionAnmData_c const* param_0,
                                 daNpcT_motionAnmData_c const* param_1,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                 int param_3,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                 int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80B521E4-80B521EC 004FC4 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__13daNpc_Yelia_cFv */
s32 daNpc_Yelia_c::getEyeballMaterialNo() {
    return true;
}

/* 80B521EC-80B521F4 004FCC 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__13daNpc_Yelia_cFv
 */
s32 daNpc_Yelia_c::getHeadJointNo() {
    return 4;
}

/* 80B521F4-80B521FC 004FD4 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__13daNpc_Yelia_cFv
 */
s32 daNpc_Yelia_c::getNeckJointNo() {
    return 3;
}

/* 80B521FC-80B52204 004FDC 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__13daNpc_Yelia_cFv */
bool daNpc_Yelia_c::getBackboneJointNo() {
    return true;
}

/* 80B52204-80B52214 004FE4 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__13daNpc_Yelia_cFi
 */
void daNpc_Yelia_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80B52214-80B52224 004FF4 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__13daNpc_Yelia_cFi
 */
void daNpc_Yelia_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80B52224-80B5222C 005004 0008+00 1/0 0/0 0/0 .text            chkXYItems__13daNpc_Yelia_cFv */
bool daNpc_Yelia_c::chkXYItems() {
    return true;
}

/* 80B5222C-80B52274 00500C 0048+00 2/1 0/0 0/0 .text            __dt__19daNpc_Yelia_Param_cFv */
daNpc_Yelia_Param_c::~daNpc_Yelia_Param_c() {
    // NONMATCHING
}

/* 80B52274-80B5227C 005054 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80B52274() {
    // NONMATCHING
}

/* 80B5227C-80B52284 00505C 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80B5227C() {
    // NONMATCHING
}

/* 80B52284-80B522A0 005064 001C+00 1/1 0/0 0/0 .text            setOffsetPos__9daDitem_cF4cXyz */
// void daDitem_c::setOffsetPos(cXyz param_0) {
extern "C" void setOffsetPos__9daDitem_cF4cXyz() {
    // NONMATCHING
}

/* 80B52408-80B52408 000154 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
