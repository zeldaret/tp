/**
 * @file d_a_npc_shaman.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_shaman.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__11daNpc_Sha_cFv();
extern "C" void create__11daNpc_Sha_cFv();
extern "C" void CreateHeap__11daNpc_Sha_cFv();
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
extern "C" void Delete__11daNpc_Sha_cFv();
extern "C" void Execute__11daNpc_Sha_cFv();
extern "C" void Draw__11daNpc_Sha_cFv();
extern "C" void createHeapCallBack__11daNpc_Sha_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_Sha_cFP8J3DJointi();
extern "C" void getType__11daNpc_Sha_cFv();
extern "C" void isDelete__11daNpc_Sha_cFv();
extern "C" void reset__11daNpc_Sha_cFv();
extern "C" void afterJntAnm__11daNpc_Sha_cFi();
extern "C" void setParam__11daNpc_Sha_cFv();
extern "C" void checkChangeEvt__11daNpc_Sha_cFv();
extern "C" void setAfterTalkMotion__11daNpc_Sha_cFv();
extern "C" void srchActors__11daNpc_Sha_cFv();
extern "C" void evtTalk__11daNpc_Sha_cFv();
extern "C" void evtCutProc__11daNpc_Sha_cFv();
extern "C" void action__11daNpc_Sha_cFv();
extern "C" void beforeMove__11daNpc_Sha_cFv();
extern "C" void setAttnPos__11daNpc_Sha_cFv();
extern "C" void setCollision__11daNpc_Sha_cFv();
extern "C" bool drawDbgInfo__11daNpc_Sha_cFv();
extern "C" void selectAction__11daNpc_Sha_cFv();
extern "C" void chkAction__11daNpc_Sha_cFM11daNpc_Sha_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_Sha_cFM11daNpc_Sha_cFPCvPvPv_i();
extern "C" void getSceneChangeNoTableIx__11daNpc_Sha_cFv();
extern "C" void setTempBit__11daNpc_Sha_cFi();
extern "C" void cutPerformAugury__11daNpc_Sha_cFi();
extern "C" void wait__11daNpc_Sha_cFPv();
extern "C" void talk__11daNpc_Sha_cFPv();
extern "C" void query265__11daNpc_Sha_cFv();
extern "C" void query268__11daNpc_Sha_cFv();
extern "C" void query267__11daNpc_Sha_cFv();
extern "C" void query078__11daNpc_Sha_cFv();
extern "C" void query264__11daNpc_Sha_cFv();
extern "C" void query266__11daNpc_Sha_cFv();
extern "C" void query542__11daNpc_Sha_cFv();
extern "C" void query461__11daNpc_Sha_cFv();
extern "C" void query288__11daNpc_Sha_cFv();
extern "C" bool query000__11daNpc_Sha_cFv();
extern "C" bool query999__11daNpc_Sha_cFv();
extern "C" static void daNpc_Sha_Create__FPv();
extern "C" static void daNpc_Sha_Delete__FPv();
extern "C" static void daNpc_Sha_Execute__FPv();
extern "C" static void daNpc_Sha_Draw__FPv();
extern "C" static bool daNpc_Sha_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__8daNpcT_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__5csXyzFv();
extern "C" void
__ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__15daNpcT_JntAnm_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
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
extern "C" void func_80AE6438(void* _this, int*);
extern "C" void func_80AE6454(void* _this, int, int);
extern "C" void __sinit_d_a_npc_shaman_cpp();
extern "C" void
__ct__11daNpc_Sha_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" u16 getEyeballMaterialNo__11daNpc_Sha_cFv();
extern "C" s32 getHeadJointNo__11daNpc_Sha_cFv();
extern "C" s32 getNeckJointNo__11daNpc_Sha_cFv();
extern "C" bool getBackboneJointNo__11daNpc_Sha_cFv();
extern "C" void checkChangeJoint__11daNpc_Sha_cFi();
extern "C" void checkRemoveJoint__11daNpc_Sha_cFi();
extern "C" void __dt__17daNpc_Sha_Param_cFv();
extern "C" static void func_80AE6BA4();
extern "C" static void func_80AE6BAC();
extern "C" u8 const m__17daNpc_Sha_Param_c[140];
extern "C" extern char const* const d_a_npc_shaman__stringBase0;
extern "C" void* mCutNameList__11daNpc_Sha_c[2];
extern "C" u8 mCutList__11daNpc_Sha_c[24];
extern "C" u8 mEvtBitLabels__11daNpc_Sha_c[12];
extern "C" u8 mTmpBitLabels__11daNpc_Sha_c[12];
extern "C" u8 mSceneChangeNoTable__11daNpc_Sha_c[192];
extern "C" u8 mQueries__11daNpc_Sha_c[576];

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
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void onEventBit__11dSv_event_cFUs();
extern "C" void offEventBit__11dSv_event_cFUs();
extern "C" void setEventReg__11dSv_event_cFUsUc();
extern "C" void getEventReg__11dSv_event_cCFUs();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
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
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
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
extern "C" void setAngle__8daNpcT_cF5csXyz();
extern "C" void setAngle__8daNpcT_cFs();
extern "C" void hitChk__8daNpcT_cFP12dCcD_GObjInfUl();
extern "C" void setDamage__8daNpcT_cFiii();
extern "C" void chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
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
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
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
extern "C" void _savegpr_15();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_15();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
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
/* 80AE6CCC-80AE6CCC 000104 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AE6CCC = "";
SECTION_DEAD static char const* const stringBase_80AE6CCD = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80AE6CD9 = "PERFORM_AUGURY";
SECTION_DEAD static char const* const stringBase_80AE6CE8 = "ALLGET";
SECTION_DEAD static char const* const stringBase_80AE6CEF = "NOLOOK";
SECTION_DEAD static char const* const stringBase_80AE6CF6 = "RETURN";
SECTION_DEAD static char const* const stringBase_80AE6CFD = "Sha";
#pragma pop

/* 80AE6D38-80AE6D40 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x01,
};

/* 80AE6D40-80AE6D70 -00001 0030+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[12] = {
    (void*)&d_a_npc_shaman__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_shaman__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_shaman__stringBase0) + 0xD),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_shaman__stringBase0) + 0x1C),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_shaman__stringBase0) + 0x23),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_shaman__stringBase0) + 0x2A),
    (void*)0x00000001,
};
#pragma pop

/* 80AE6D70-80AE6D78 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_npc_shaman__stringBase0,
    (void*)(((char*)&d_a_npc_shaman__stringBase0) + 0x31),
};

/* 80AE6D78-80AE6D7C 000060 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80AE6D7C-80AE6D88 -00001 000C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[3] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
};

/* 80AE6D88-80AE6EA0 000070 0118+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[280] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x21,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x27,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80AE6EA0-80AE6F80 000188 00E0+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[224] = {
    0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80AE6F80-80AE7020 000268 00A0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[160] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x07, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0x00, 0x01, 0x00, 0x08, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x04, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x09, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80AE7020-80AE70A0 000308 0080+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[128] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x03, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0x00, 0x01, 0x00, 0x06, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80AE70A0-80AE70A8 -00001 0008+00 1/1 0/0 0/0 .data            mCutNameList__11daNpc_Sha_c */
SECTION_DATA void* daNpc_Sha_c::mCutNameList[2] = {
    (void*)&d_a_npc_shaman__stringBase0,
    (void*)(((char*)&d_a_npc_shaman__stringBase0) + 0xD),
};

/* 80AE70A8-80AE70B4 -00001 000C+00 0/1 0/0 0/0 .data            @3812 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3812[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutPerformAugury__11daNpc_Sha_cFi,
};
#pragma pop

/* 80AE70B4-80AE70CC 00039C 0018+00 1/2 0/0 0/0 .data            mCutList__11daNpc_Sha_c */
SECTION_DATA u8 daNpc_Sha_c::mCutList[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AE70CC-80AE70D8 -00001 000C+00 1/1 0/0 0/0 .data            @4497 */
SECTION_DATA static void* lit_4497[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Sha_cFPv,
};

/* 80AE70D8-80AE70E4 -00001 000C+00 1/1 0/0 0/0 .data            @4549 */
SECTION_DATA static void* lit_4549[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Sha_cFPv,
};

/* 80AE70E4-80AE70F0 -00001 000C+00 1/1 0/0 0/0 .data            @4559 */
SECTION_DATA static void* lit_4559[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Sha_cFPv,
};

/* 80AE70F0-80AE70FC -00001 000C+00 1/1 0/0 0/0 .data            @4823 */
SECTION_DATA static void* lit_4823[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_Sha_cFPv,
};

/* 80AE70FC-80AE711C -00001 0020+00 1/1 0/0 0/0 .data            @5097 */
SECTION_DATA static void* lit_5097[8] = {
    (void*)(((char*)cutPerformAugury__11daNpc_Sha_cFi) + 0x10C),
    (void*)(((char*)cutPerformAugury__11daNpc_Sha_cFi) + 0x200),
    (void*)(((char*)cutPerformAugury__11daNpc_Sha_cFi) + 0x138),
    (void*)(((char*)cutPerformAugury__11daNpc_Sha_cFi) + 0x140),
    (void*)(((char*)cutPerformAugury__11daNpc_Sha_cFi) + 0x160),
    (void*)(((char*)cutPerformAugury__11daNpc_Sha_cFi) + 0x180),
    (void*)(((char*)cutPerformAugury__11daNpc_Sha_cFi) + 0x1A0),
    (void*)(((char*)cutPerformAugury__11daNpc_Sha_cFi) + 0x1F4),
};

/* 80AE711C-80AE7128 000404 000C+00 1/1 0/0 0/0 .data            mEvtBitLabels__11daNpc_Sha_c */
SECTION_DATA u8 daNpc_Sha_c::mEvtBitLabels[12] = {
    0xF0, 0xFF, 0xEF, 0xFF, 0xEE, 0xFF, 0xED, 0xFF, 0xEC, 0xFF, 0xEB, 0xFF,
};

/* 80AE7128-80AE7134 000410 000C+00 2/2 0/0 0/0 .data            mTmpBitLabels__11daNpc_Sha_c */
SECTION_DATA u8 daNpc_Sha_c::mTmpBitLabels[12] = {
    0xFA, 0xFF, 0xF9, 0xFF, 0xF8, 0xFF, 0xF7, 0xFF, 0xF6, 0xFF, 0xF5, 0xFF,
};

/* 80AE7134-80AE71F4 00041C 00C0+00 1/1 0/0 0/0 .data            mSceneChangeNoTable__11daNpc_Sha_c
 */
SECTION_DATA u8 daNpc_Sha_c::mSceneChangeNoTable[192] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x14,
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x18,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x1C,
    0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x20,
    0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x24,
    0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x28,
    0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x2C,
    0x00, 0x00, 0x00, 0x2D, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};

/* 80AE71F4-80AE7200 -00001 000C+00 0/1 0/0 0/0 .data            @5232 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5232[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query000__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7200-80AE720C -00001 000C+00 0/1 0/0 0/0 .data            @5233 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5233[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query265__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE720C-80AE7218 -00001 000C+00 0/1 0/0 0/0 .data            @5234 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5234[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query000__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7218-80AE7224 -00001 000C+00 0/1 0/0 0/0 .data            @5235 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5235[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query267__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7224-80AE7230 -00001 000C+00 0/1 0/0 0/0 .data            @5236 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5236[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query000__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7230-80AE723C -00001 000C+00 0/1 0/0 0/0 .data            @5237 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5237[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query000__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE723C-80AE7248 -00001 000C+00 0/1 0/0 0/0 .data            @5238 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5238[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query078__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7248-80AE7254 -00001 000C+00 0/1 0/0 0/0 .data            @5239 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5239[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query268__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7254-80AE7260 -00001 000C+00 0/1 0/0 0/0 .data            @5240 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5240[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query265__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7260-80AE726C -00001 000C+00 0/1 0/0 0/0 .data            @5241 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5241[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query265__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE726C-80AE7278 -00001 000C+00 0/1 0/0 0/0 .data            @5242 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5242[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query078__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7278-80AE7284 -00001 000C+00 0/1 0/0 0/0 .data            @5243 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5243[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query000__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7284-80AE7290 -00001 000C+00 0/1 0/0 0/0 .data            @5244 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5244[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query000__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7290-80AE729C -00001 000C+00 0/1 0/0 0/0 .data            @5245 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5245[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query264__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE729C-80AE72A8 -00001 000C+00 0/1 0/0 0/0 .data            @5246 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5246[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query000__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE72A8-80AE72B4 -00001 000C+00 0/1 0/0 0/0 .data            @5247 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5247[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query000__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE72B4-80AE72C0 -00001 000C+00 0/1 0/0 0/0 .data            @5248 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5248[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query000__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE72C0-80AE72CC -00001 000C+00 0/1 0/0 0/0 .data            @5249 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5249[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query000__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE72CC-80AE72D8 -00001 000C+00 0/1 0/0 0/0 .data            @5250 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5250[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query078__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE72D8-80AE72E4 -00001 000C+00 0/1 0/0 0/0 .data            @5251 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5251[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query078__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE72E4-80AE72F0 -00001 000C+00 0/1 0/0 0/0 .data            @5252 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5252[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query265__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE72F0-80AE72FC -00001 000C+00 0/1 0/0 0/0 .data            @5253 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5253[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query265__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE72FC-80AE7308 -00001 000C+00 0/1 0/0 0/0 .data            @5254 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5254[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query266__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7308-80AE7314 -00001 000C+00 0/1 0/0 0/0 .data            @5255 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5255[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query266__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7314-80AE7320 -00001 000C+00 0/1 0/0 0/0 .data            @5256 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5256[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query267__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7320-80AE732C -00001 000C+00 0/1 0/0 0/0 .data            @5257 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5257[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query267__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE732C-80AE7338 -00001 000C+00 0/1 0/0 0/0 .data            @5258 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5258[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query268__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7338-80AE7344 -00001 000C+00 0/1 0/0 0/0 .data            @5259 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5259[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query268__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7344-80AE7350 -00001 000C+00 0/1 0/0 0/0 .data            @5260 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5260[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query542__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7350-80AE735C -00001 000C+00 0/1 0/0 0/0 .data            @5261 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5261[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query542__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE735C-80AE7368 -00001 000C+00 0/1 0/0 0/0 .data            @5262 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5262[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query267__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7368-80AE7374 -00001 000C+00 0/1 0/0 0/0 .data            @5263 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5263[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query288__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7374-80AE7380 -00001 000C+00 0/1 0/0 0/0 .data            @5264 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5264[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query266__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7380-80AE738C -00001 000C+00 0/1 0/0 0/0 .data            @5265 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5265[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query000__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE738C-80AE7398 -00001 000C+00 0/1 0/0 0/0 .data            @5266 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5266[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query000__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7398-80AE73A4 -00001 000C+00 0/1 0/0 0/0 .data            @5267 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5267[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query000__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE73A4-80AE73B0 -00001 000C+00 0/1 0/0 0/0 .data            @5268 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5268[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query264__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE73B0-80AE73BC -00001 000C+00 0/1 0/0 0/0 .data            @5269 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5269[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query267__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE73BC-80AE73C8 -00001 000C+00 0/1 0/0 0/0 .data            @5270 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5270[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query461__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE73C8-80AE73D4 -00001 000C+00 0/1 0/0 0/0 .data            @5271 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5271[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query264__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE73D4-80AE73E0 -00001 000C+00 0/1 0/0 0/0 .data            @5272 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5272[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query264__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE73E0-80AE73EC -00001 000C+00 0/1 0/0 0/0 .data            @5273 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5273[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query264__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE73EC-80AE73F8 -00001 000C+00 0/1 0/0 0/0 .data            @5274 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5274[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query266__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE73F8-80AE7404 -00001 000C+00 0/1 0/0 0/0 .data            @5275 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5275[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query267__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7404-80AE7410 -00001 000C+00 0/1 0/0 0/0 .data            @5276 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5276[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query264__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7410-80AE741C -00001 000C+00 0/1 0/0 0/0 .data            @5277 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5277[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query999__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE741C-80AE7428 -00001 000C+00 0/1 0/0 0/0 .data            @5278 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5278[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query999__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7428-80AE7434 -00001 000C+00 0/1 0/0 0/0 .data            @5279 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5279[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)query999__11daNpc_Sha_cFv,
};
#pragma pop

/* 80AE7434-80AE7674 00071C 0240+00 1/2 0/0 0/0 .data            mQueries__11daNpc_Sha_c */
SECTION_DATA u8 daNpc_Sha_c::mQueries[576] = {
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
};

/* 80AE7674-80AE7694 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Sha_MethodTable */
static actor_method_class daNpc_Sha_MethodTable = {
    (process_method_func)daNpc_Sha_Create__FPv,
    (process_method_func)daNpc_Sha_Delete__FPv,
    (process_method_func)daNpc_Sha_Execute__FPv,
    (process_method_func)daNpc_Sha_IsDelete__FPv,
    (process_method_func)daNpc_Sha_Draw__FPv,
};

/* 80AE7694-80AE76C4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SHAMAN */
extern actor_process_profile_definition g_profile_NPC_SHAMAN = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_SHAMAN,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpc_Sha_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  364,                    // mPriority
  &daNpc_Sha_MethodTable, // sub_method
  0x00040108,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80AE76C4-80AE76D0 0009AC 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80AE76D0-80AE76DC 0009B8 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80AE76DC-80AE7700 0009C4 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AE6BAC,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AE6BA4,
};

/* 80AE7700-80AE770C 0009E8 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80AE770C-80AE7718 0009F4 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80AE7718-80AE7724 000A00 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80AE7724-80AE7730 000A0C 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80AE7730-80AE773C 000A18 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80AE773C-80AE7748 000A24 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80AE7748-80AE7754 000A30 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80AE7754-80AE7760 000A3C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80AE7760-80AE7824 000A48 00C4+00 2/2 0/0 0/0 .data            __vt__11daNpc_Sha_c */
SECTION_DATA extern void* __vt__11daNpc_Sha_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_Sha_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__11daNpc_Sha_cFi,
    (void*)checkRemoveJoint__11daNpc_Sha_cFi,
    (void*)getBackboneJointNo__11daNpc_Sha_cFv,
    (void*)getNeckJointNo__11daNpc_Sha_cFv,
    (void*)getHeadJointNo__11daNpc_Sha_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__11daNpc_Sha_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__11daNpc_Sha_cFi,
    (void*)setParam__11daNpc_Sha_cFv,
    (void*)checkChangeEvt__11daNpc_Sha_cFv,
    (void*)evtTalk__11daNpc_Sha_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__11daNpc_Sha_cFv,
    (void*)setAfterTalkMotion__11daNpc_Sha_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__11daNpc_Sha_cFv,
    (void*)beforeMove__11daNpc_Sha_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__11daNpc_Sha_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__11daNpc_Sha_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__11daNpc_Sha_cFv,
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

/* 80AE2DCC-80AE2EEC 0000EC 0120+00 1/0 0/0 0/0 .text            __dt__11daNpc_Sha_cFv */
daNpc_Sha_c::~daNpc_Sha_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE6BC8-80AE6C54 000000 008C+00 6/6 0/0 0/0 .rodata          m__17daNpc_Sha_Param_c */
SECTION_RODATA u8 const daNpc_Sha_Param_c::m[140] = {
    0x43, 0x52, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x70, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0xC1, 0xA0, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE6BC8, &daNpc_Sha_Param_c::m);

/* 80AE6C54-80AE6C60 00008C 000C+00 0/1 0/0 0/0 .rodata          heapSize$3961 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[12] = {
    0x00, 0x00, 0x3A, 0xF0, 0x00, 0x00, 0x3A, 0xF0, 0x00, 0x00, 0x3A, 0xF0,
};
COMPILER_STRIP_GATE(0x80AE6C54, &heapSize);
#pragma pop

/* 80AE6C60-80AE6C64 000098 0004+00 0/1 0/0 0/0 .rodata          @4027 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4027 = -200.0f;
COMPILER_STRIP_GATE(0x80AE6C60, &lit_4027);
#pragma pop

/* 80AE6C64-80AE6C68 00009C 0004+00 0/1 0/0 0/0 .rodata          @4028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4028 = -100.0f;
COMPILER_STRIP_GATE(0x80AE6C64, &lit_4028);
#pragma pop

/* 80AE6C68-80AE6C6C 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4029 = 200.0f;
COMPILER_STRIP_GATE(0x80AE6C68, &lit_4029);
#pragma pop

/* 80AE6C6C-80AE6C70 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4030 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4030 = 300.0f;
COMPILER_STRIP_GATE(0x80AE6C6C, &lit_4030);
#pragma pop

/* 80AE6C70-80AE6C74 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4031 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80AE6C70, &lit_4031);
#pragma pop

/* 80AE2EEC-80AE31A0 00020C 02B4+00 1/1 0/0 0/0 .text            create__11daNpc_Sha_cFv */
void daNpc_Sha_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE6C74-80AE6C78 0000AC 0004+00 6/10 0/0 0/0 .rodata          @4185 */
SECTION_RODATA static u8 const lit_4185[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AE6C74, &lit_4185);

/* 80AE6C78-80AE6C7C 0000B0 0004+00 0/2 0/0 0/0 .rodata          @4186 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4186 = 65536.0f;
COMPILER_STRIP_GATE(0x80AE6C78, &lit_4186);
#pragma pop

/* 80AE6C7C-80AE6C80 0000B4 0004+00 0/3 0/0 0/0 .rodata          @4187 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4187 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80AE6C7C, &lit_4187);
#pragma pop

/* 80AE6C80-80AE6C84 0000B8 0004+00 2/4 0/0 0/0 .rodata          @4331 */
SECTION_RODATA static f32 const lit_4331 = 1.0f;
COMPILER_STRIP_GATE(0x80AE6C80, &lit_4331);

/* 80AE31A0-80AE3410 0004C0 0270+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_Sha_cFv */
void daNpc_Sha_c::CreateHeap() {
    // NONMATCHING
}

/* 80AE3410-80AE344C 000730 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80AE344C-80AE3464 00076C 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80AE3464-80AE34A0 000784 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80AE34A0-80AE34B8 0007C0 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80AE34B8-80AE3500 0007D8 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80AE3500-80AE3524 000820 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80AE3524-80AE3560 000844 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80AE3560-80AE3578 000880 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80AE3578-80AE35B4 000898 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80AE35B4-80AE35CC 0008D4 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80AE35CC-80AE3600 0008EC 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_Sha_cFv */
void daNpc_Sha_c::Delete() {
    // NONMATCHING
}

/* 80AE3600-80AE3620 000920 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_Sha_cFv */
void daNpc_Sha_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE6C84-80AE6C88 0000BC 0004+00 1/1 0/0 0/0 .rodata          @4380 */
SECTION_RODATA static f32 const lit_4380 = 100.0f;
COMPILER_STRIP_GATE(0x80AE6C84, &lit_4380);

/* 80AE3620-80AE36B4 000940 0094+00 1/1 0/0 0/0 .text            Draw__11daNpc_Sha_cFv */
void daNpc_Sha_c::Draw() {
    // NONMATCHING
}

/* 80AE36B4-80AE36D4 0009D4 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_Sha_cFP10fopAc_ac_c              */
void daNpc_Sha_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80AE36D4-80AE372C 0009F4 0058+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpc_Sha_cFP8J3DJointi
 */
void daNpc_Sha_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80AE372C-80AE3764 000A4C 0038+00 1/1 0/0 0/0 .text            getType__11daNpc_Sha_cFv */
void daNpc_Sha_c::getType() {
    // NONMATCHING
}

/* 80AE3764-80AE3798 000A84 0034+00 1/1 0/0 0/0 .text            isDelete__11daNpc_Sha_cFv */
void daNpc_Sha_c::isDelete() {
    // NONMATCHING
}

/* 80AE3798-80AE38F0 000AB8 0158+00 1/1 0/0 0/0 .text            reset__11daNpc_Sha_cFv */
void daNpc_Sha_c::reset() {
    // NONMATCHING
}

/* 80AE38F0-80AE3974 000C10 0084+00 1/0 0/0 0/0 .text            afterJntAnm__11daNpc_Sha_cFi */
void daNpc_Sha_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 80AE3974-80AE3A8C 000C94 0118+00 1/0 0/0 0/0 .text            setParam__11daNpc_Sha_cFv */
void daNpc_Sha_c::setParam() {
    // NONMATCHING
}

/* 80AE3A8C-80AE3B78 000DAC 00EC+00 1/0 0/0 0/0 .text            checkChangeEvt__11daNpc_Sha_cFv */
void daNpc_Sha_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE6C88-80AE6C8C 0000C0 0004+00 2/3 0/0 0/0 .rodata          @4537 */
SECTION_RODATA static f32 const lit_4537 = -1.0f;
COMPILER_STRIP_GATE(0x80AE6C88, &lit_4537);

/* 80AE3B78-80AE3C24 000E98 00AC+00 1/0 0/0 0/0 .text            setAfterTalkMotion__11daNpc_Sha_cFv
 */
void daNpc_Sha_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80AE3C24-80AE3C28 000F44 0004+00 1/1 0/0 0/0 .text            srchActors__11daNpc_Sha_cFv */
void daNpc_Sha_c::srchActors() {
    /* empty function */
}

/* 80AE3C28-80AE3D28 000F48 0100+00 1/0 0/0 0/0 .text            evtTalk__11daNpc_Sha_cFv */
void daNpc_Sha_c::evtTalk() {
    // NONMATCHING
}

/* 80AE3D28-80AE3DF0 001048 00C8+00 1/0 0/0 0/0 .text            evtCutProc__11daNpc_Sha_cFv */
void daNpc_Sha_c::evtCutProc() {
    // NONMATCHING
}

/* 80AE3DF0-80AE3F80 001110 0190+00 1/0 0/0 0/0 .text            action__11daNpc_Sha_cFv */
void daNpc_Sha_c::action() {
    // NONMATCHING
}

/* 80AE3F80-80AE4044 0012A0 00C4+00 1/0 0/0 0/0 .text            beforeMove__11daNpc_Sha_cFv */
void daNpc_Sha_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE6C8C-80AE6C90 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4710 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4710 = -30.0f;
COMPILER_STRIP_GATE(0x80AE6C8C, &lit_4710);
#pragma pop

/* 80AE6C90-80AE6C94 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4711 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4711 = 10.0f;
COMPILER_STRIP_GATE(0x80AE6C90, &lit_4711);
#pragma pop

/* 80AE6C94-80AE6C98 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4712 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4712 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80AE6C94, &lit_4712);
#pragma pop

/* 80AE6C98-80AE6C9C 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4713 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4713 = 90.0f;
COMPILER_STRIP_GATE(0x80AE6C98, &lit_4713);
#pragma pop

/* 80AE6C9C-80AE6CA0 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4714 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4714 = 94.0f;
COMPILER_STRIP_GATE(0x80AE6C9C, &lit_4714);
#pragma pop

/* 80AE6CA0-80AE6CA8 0000D8 0008+00 2/4 0/0 0/0 .rodata          @4716 */
SECTION_RODATA static u8 const lit_4716[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE6CA0, &lit_4716);

/* 80AE4044-80AE4360 001364 031C+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_Sha_cFv */
void daNpc_Sha_c::setAttnPos() {
    // NONMATCHING
}

/* 80AE4360-80AE44B8 001680 0158+00 1/0 0/0 0/0 .text            setCollision__11daNpc_Sha_cFv */
void daNpc_Sha_c::setCollision() {
    // NONMATCHING
}

/* 80AE44B8-80AE44C0 0017D8 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_Sha_cFv */
bool daNpc_Sha_c::drawDbgInfo() {
    return false;
}

/* 80AE44C0-80AE4508 0017E0 0048+00 1/1 0/0 0/0 .text            selectAction__11daNpc_Sha_cFv */
void daNpc_Sha_c::selectAction() {
    // NONMATCHING
}

/* 80AE4508-80AE4534 001828 002C+00 2/2 0/0 0/0 .text
 * chkAction__11daNpc_Sha_cFM11daNpc_Sha_cFPCvPvPv_i            */
void daNpc_Sha_c::chkAction(int (daNpc_Sha_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80AE4534-80AE45DC 001854 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_Sha_cFM11daNpc_Sha_cFPCvPvPv_i            */
void daNpc_Sha_c::setAction(int (daNpc_Sha_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80AE45DC-80AE48D0 0018FC 02F4+00 1/1 0/0 0/0 .text getSceneChangeNoTableIx__11daNpc_Sha_cFv */
void daNpc_Sha_c::getSceneChangeNoTableIx() {
    // NONMATCHING
}

/* 80AE48D0-80AE4974 001BF0 00A4+00 1/1 0/0 0/0 .text            setTempBit__11daNpc_Sha_cFi */
void daNpc_Sha_c::setTempBit(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE6CA8-80AE6CB0 0000E0 0008+00 0/1 0/0 0/0 .rodata          @4774 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4774[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE6CA8, &lit_4774);
#pragma pop

/* 80AE6CB0-80AE6CB8 0000E8 0008+00 0/1 0/0 0/0 .rodata          @4775 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4775[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE6CB0, &lit_4775);
#pragma pop

/* 80AE6CB8-80AE6CC0 0000F0 0008+00 0/1 0/0 0/0 .rodata          @4776 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4776[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AE6CB8, &lit_4776);
#pragma pop

/* 80AE6CC0-80AE6CCC 0000F8 000C+00 1/1 0/0 0/0 .rodata          @4995 */
SECTION_RODATA static u8 const lit_4995[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80AE6CC0, &lit_4995);

/* 80AE6CCC-80AE6CCC 000104 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AE6D01 = "prm";
SECTION_DEAD static char const* const stringBase_80AE6D05 = "msgNo";
SECTION_DEAD static char const* const stringBase_80AE6D0B = "msgNo2";
SECTION_DEAD static char const* const stringBase_80AE6D12 = "timer";
#pragma pop

/* 80AE4974-80AE4E24 001C94 04B0+00 2/0 0/0 0/0 .text            cutPerformAugury__11daNpc_Sha_cFi
 */
void daNpc_Sha_c::cutPerformAugury(int param_0) {
    // NONMATCHING
}

/* 80AE4E24-80AE50EC 002144 02C8+00 1/0 0/0 0/0 .text            wait__11daNpc_Sha_cFPv */
void daNpc_Sha_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80AE50EC-80AE52CC 00240C 01E0+00 3/0 0/0 0/0 .text            talk__11daNpc_Sha_cFPv */
void daNpc_Sha_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80AE52CC-80AE52F0 0025EC 0024+00 5/0 0/0 0/0 .text            query265__11daNpc_Sha_cFv */
void daNpc_Sha_c::query265() {
    // NONMATCHING
}

/* 80AE52F0-80AE5314 002610 0024+00 3/0 0/0 0/0 .text            query268__11daNpc_Sha_cFv */
void daNpc_Sha_c::query268() {
    // NONMATCHING
}

/* 80AE5314-80AE5338 002634 0024+00 6/0 0/0 0/0 .text            query267__11daNpc_Sha_cFv */
void daNpc_Sha_c::query267() {
    // NONMATCHING
}

/* 80AE5338-80AE535C 002658 0024+00 4/0 0/0 0/0 .text            query078__11daNpc_Sha_cFv */
void daNpc_Sha_c::query078() {
    // NONMATCHING
}

/* 80AE535C-80AE5380 00267C 0024+00 6/0 0/0 0/0 .text            query264__11daNpc_Sha_cFv */
void daNpc_Sha_c::query264() {
    // NONMATCHING
}

/* 80AE5380-80AE53A4 0026A0 0024+00 4/0 0/0 0/0 .text            query266__11daNpc_Sha_cFv */
void daNpc_Sha_c::query266() {
    // NONMATCHING
}

/* 80AE53A4-80AE53C8 0026C4 0024+00 2/0 0/0 0/0 .text            query542__11daNpc_Sha_cFv */
void daNpc_Sha_c::query542() {
    // NONMATCHING
}

/* 80AE53C8-80AE53EC 0026E8 0024+00 1/0 0/0 0/0 .text            query461__11daNpc_Sha_cFv */
void daNpc_Sha_c::query461() {
    // NONMATCHING
}

/* 80AE53EC-80AE5410 00270C 0024+00 1/0 0/0 0/0 .text            query288__11daNpc_Sha_cFv */
void daNpc_Sha_c::query288() {
    // NONMATCHING
}

/* 80AE5410-80AE5418 002730 0008+00 13/0 0/0 0/0 .text            query000__11daNpc_Sha_cFv */
bool daNpc_Sha_c::query000() {
    return true;
}

/* 80AE5418-80AE5420 002738 0008+00 3/0 0/0 0/0 .text            query999__11daNpc_Sha_cFv */
bool daNpc_Sha_c::query999() {
    return false;
}

/* 80AE5420-80AE5440 002740 0020+00 1/0 0/0 0/0 .text            daNpc_Sha_Create__FPv */
static void daNpc_Sha_Create(void* param_0) {
    // NONMATCHING
}

/* 80AE5440-80AE5460 002760 0020+00 1/0 0/0 0/0 .text            daNpc_Sha_Delete__FPv */
static void daNpc_Sha_Delete(void* param_0) {
    // NONMATCHING
}

/* 80AE5460-80AE5480 002780 0020+00 1/0 0/0 0/0 .text            daNpc_Sha_Execute__FPv */
static void daNpc_Sha_Execute(void* param_0) {
    // NONMATCHING
}

/* 80AE5480-80AE54A0 0027A0 0020+00 1/0 0/0 0/0 .text            daNpc_Sha_Draw__FPv */
static void daNpc_Sha_Draw(void* param_0) {
    // NONMATCHING
}

/* 80AE54A0-80AE54A8 0027C0 0008+00 1/0 0/0 0/0 .text            daNpc_Sha_IsDelete__FPv */
static bool daNpc_Sha_IsDelete(void* param_0) {
    return true;
}

/* 80AE54A8-80AE54D8 0027C8 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80AE54D8-80AE5520 0027F8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AE5520-80AE58A8 002840 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80AE58A8-80AE58E4 002BC8 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80AE58E4-80AE5920 002C04 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80AE5920-80AE5D24 002C40 0404+00 1/1 0/0 0/0 .text
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

/* 80AE5D24-80AE5D28 003044 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80AE5D28-80AE5E24 003048 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80AE5E24-80AE5E28 003144 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80AE5E28-80AE5E70 003148 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80AE5E70-80AE5EB8 003190 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80AE5EB8-80AE5F28 0031D8 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80AE5F28-80AE5F84 003248 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AE5F84-80AE5FF4 0032A4 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80AE5FF4-80AE603C 003314 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80AE603C-80AE6158 00335C 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80AE6158-80AE6360 003478 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80AE6360-80AE6364 003680 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80AE6374-80AE637C 003694 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80AE637C-80AE6384 00369C 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80AE6384-80AE638C 0036A4 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80AE6390-80AE6398 0036B0 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80AE6398-80AE63B0 0036B8 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80AE63B0-80AE63B4 0036D0 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80AE63B4-80AE63B8 0036D4 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80AE63B8-80AE63C0 0036D8 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80AE63C0-80AE63C8 0036E0 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80AE63C8-80AE63F8 0036E8 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80AE63F8-80AE6428 003718 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80AE6428-80AE642C 003748 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AE642C-80AE6430 00374C 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AE6430-80AE6434 003750 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AE6434-80AE6438 003754 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AE6438-80AE6454 003758 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80AE6438(void* _this, int* param_0) {
    // NONMATCHING
}

/* 80AE6454-80AE64D0 003774 007C+00 1/1 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
extern "C" void func_80AE6454(void* _this, int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AE7824-80AE7830 000B0C 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_Sha_Param_c */
SECTION_DATA extern void* __vt__17daNpc_Sha_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_Sha_Param_cFv,
};

/* 80AE7838-80AE7844 000008 000C+00 1/1 0/0 0/0 .bss             @3813 */
static u8 lit_3813[12];

/* 80AE7844-80AE7848 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80AE64D0-80AE69E0 0037F0 0510+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_shaman_cpp */
void __sinit_d_a_npc_shaman_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80AE64D0, __sinit_d_a_npc_shaman_cpp);
#pragma pop

/* 80AE69E0-80AE6A8C 003D00 00AC+00 1/1 0/0 0/0 .text
 * __ct__11daNpc_Sha_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Sha_c::daNpc_Sha_c(daNpcT_faceMotionAnmData_c const* param_0,
                             daNpcT_motionAnmData_c const* param_1,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
                             daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80AE6A8C-80AE6AD4 003DAC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80AE6AD4-80AE6B1C 003DF4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80AE6B1C-80AE6B24 003E3C 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__11daNpc_Sha_cFv */
u16 daNpc_Sha_c::getEyeballMaterialNo() {
    return true;
}

/* 80AE6B24-80AE6B2C 003E44 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__11daNpc_Sha_cFv */
s32 daNpc_Sha_c::getHeadJointNo() {
    return 4;
}

/* 80AE6B2C-80AE6B34 003E4C 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__11daNpc_Sha_cFv */
s32 daNpc_Sha_c::getNeckJointNo() {
    return 3;
}

/* 80AE6B34-80AE6B3C 003E54 0008+00 1/0 0/0 0/0 .text            getBackboneJointNo__11daNpc_Sha_cFv
 */
bool daNpc_Sha_c::getBackboneJointNo() {
    return true;
}

/* 80AE6B3C-80AE6B4C 003E5C 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__11daNpc_Sha_cFi
 */
void daNpc_Sha_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80AE6B4C-80AE6B5C 003E6C 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__11daNpc_Sha_cFi
 */
void daNpc_Sha_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80AE6B5C-80AE6BA4 003E7C 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_Sha_Param_cFv */
daNpc_Sha_Param_c::~daNpc_Sha_Param_c() {
    // NONMATCHING
}

/* 80AE6BA4-80AE6BAC 003EC4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80AE6BA4() {
    // NONMATCHING
}

/* 80AE6BAC-80AE6BB4 003ECC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80AE6BAC() {
    // NONMATCHING
}

/* 80AE6CCC-80AE6CCC 000104 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
