/**
 * @file d_a_npc_clerkt.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_clerkt.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__13daNpcClerkT_cFv();
extern "C" void create__13daNpcClerkT_cFv();
extern "C" void CreateHeap__13daNpcClerkT_cFv();
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
extern "C" void Delete__13daNpcClerkT_cFv();
extern "C" void Execute__13daNpcClerkT_cFv();
extern "C" void Draw__13daNpcClerkT_cFv();
extern "C" void createHeapCallBack__13daNpcClerkT_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__13daNpcClerkT_cFP8J3DJointi();
extern "C" void isDelete__13daNpcClerkT_cFv();
extern "C" void reset__13daNpcClerkT_cFv();
extern "C" void afterJntAnm__13daNpcClerkT_cFi();
extern "C" void evtTalk__13daNpcClerkT_cFv();
extern "C" void evtCutProc__13daNpcClerkT_cFv();
extern "C" void action__13daNpcClerkT_cFv();
extern "C" bool drawDbgInfo__13daNpcClerkT_cFv();
extern "C" void drawOtherMdl__13daNpcClerkT_cFv();
extern "C" void selectAction__13daNpcClerkT_cFv();
extern "C" void chkAction__13daNpcClerkT_cFM13daNpcClerkT_cFPCvPvPv_i();
extern "C" void setAction__13daNpcClerkT_cFM13daNpcClerkT_cFPCvPvPv_i();
extern "C" void wait__13daNpcClerkT_cFPv();
extern "C" void tend__13daNpcClerkT_cFPv();
extern "C" void talk__13daNpcClerkT_cFPv();
extern "C" void shop__13daNpcClerkT_cFPv();
extern "C" static void daNpcClerkt_Create__FPv();
extern "C" static void daNpcClerkt_Delete__FPv();
extern "C" static void daNpcClerkt_Execute__FPv();
extern "C" static void daNpcClerkt_Draw__FPv();
extern "C" static bool daNpcClerkt_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void setParam__13daNpcClerkT_cFv();
extern "C" void setAfterTalkMotion__13daNpcClerkT_cFv();
extern "C" void beforeMove__13daNpcClerkT_cFv();
extern "C" void setAttnPos__13daNpcClerkT_cFv();
extern "C" void setCollision__13daNpcClerkT_cFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
extern "C" void __ct__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__5csXyzFv();
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
extern "C" bool checkChangeEvt__8daNpcT_cFv();
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
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
extern "C" void __sinit_d_a_npc_clerkt_cpp();
extern "C" void
__ct__13daNpcClerkT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__13daNpcClerkT_cFv();
extern "C" void checkChangeJoint__13daNpcClerkT_cFi();
extern "C" void checkRemoveJoint__13daNpcClerkT_cFi();
extern "C" s32 getBackboneJointNo__13daNpcClerkT_cFv();
extern "C" s32 getNeckJointNo__13daNpcClerkT_cFv();
extern "C" s32 getHeadJointNo__13daNpcClerkT_cFv();
extern "C" void __dt__19daNpcClerkt_Param_cFv();
extern "C" static void func_8099D0F0();
extern "C" static void func_8099D0F8();
extern "C" void
__ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" bool getResName2__13dShopSystem_cFi();
extern "C" bool beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci();
extern "C" bool beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci();
extern "C" u8 const m__19daNpcClerkt_Param_c[140];
extern "C" extern char const* const d_a_npc_clerkt__stringBase0;
extern "C" void* mCutNameList__13daNpcClerkT_c;
extern "C" u8 mCutList__13daNpcClerkT_c[12];

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
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __ct__11dBgS_LinChkFv();
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
extern "C" void clrParam__8daNpcT_cFv();
extern "C" void setFaceMotionAnm__8daNpcT_cFib();
extern "C" void setMotionAnm__8daNpcT_cFifi();
extern "C" void setAngle__8daNpcT_cFs();
extern "C" void chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getShopItemTagP__8daNpcT_cFv();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void shop_cam_action_init__16ShopCam_action_cFv();
extern "C" void Save__16ShopCam_action_cFv();
extern "C" void EventRecoverNotime__16ShopCam_action_cFv();
extern "C" void Reset__16ShopCam_action_cFv();
extern "C" void move__16ShopCam_action_cFv();
extern "C" void setMasterCamCtrPos__16ShopCam_action_cFP4cXyz();
extern "C" void __ct__15dShopItemCtrl_cFv();
extern "C" void getCurrentPos__15dShopItemCtrl_cFi();
extern "C" void initShopSystem__13dShopSystem_cFv();
extern "C" void __dt__13dShopSystem_cFv();
extern "C" void drawCursor__13dShopSystem_cFv();
extern "C" void itemRotate__13dShopSystem_cFv();
extern "C" void itemZoom__13dShopSystem_cFP4cXyz();
extern "C" void shop_init__13dShopSystem_cFb();
extern "C" void shop_process__13dShopSystem_cFP10fopAc_ac_cP10dMsgFlow_c();
extern "C" void deleteObject__13dShopSystem_cFv();
extern "C" void searchItemActor__13dShopSystem_cFv();
extern "C" void setSellItemMax__13dShopSystem_cFUc();
extern "C" void checkShopOpen__13dShopSystem_cFv();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void getStatus__12dMsgObject_cFv();
extern "C" void isMouthCheck__12dMsgObject_cFv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void __ct__10Z2CreatureFv();
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
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcT_c[68];
extern "C" extern void* __vt__8daNpcT_c[49];
extern "C" extern void* __vt__15daNpcT_MatAnm_c[4 + 1 /* padding */];
extern "C" extern void* __vt__13dShopSystem_c[52 + 1 /* padding */];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 8099D33C-8099D33C 0000F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8099D33C = "";
SECTION_DEAD static char const* const stringBase_8099D33D = "DEFAULT_GETITEM";
SECTION_DEAD static char const* const stringBase_8099D34D = "Tkj";
#pragma pop

/* 8099D378-8099D380 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x01,
};

/* 8099D380-8099D390 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[4] = {
    (void*)&d_a_npc_clerkt__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_clerkt__stringBase0) + 0x1),
    (void*)NULL,
};
#pragma pop

/* 8099D390-8099D398 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_npc_clerkt__stringBase0,
    (void*)(((char*)&d_a_npc_clerkt__stringBase0) + 0x11),
};

/* 8099D398-8099D39C 000040 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 8099D39C-8099D3A4 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[2] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
};

/* 8099D3A4-8099D3DC 00004C 0038+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[56] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 8099D3DC-8099D3F8 000084 001C+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[28] = {
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 8099D3F8-8099D418 0000A0 0020+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[32] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 8099D418-8099D428 0000C0 0010+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[16] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 8099D428-8099D42C -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__13daNpcClerkT_c */
SECTION_DATA void* daNpcClerkT_c::mCutNameList = (void*)&d_a_npc_clerkt__stringBase0;

/* 8099D42C-8099D438 0000D4 000C+00 2/2 0/0 0/0 .data            mCutList__13daNpcClerkT_c */
SECTION_DATA u8 daNpcClerkT_c::mCutList[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8099D438-8099D444 -00001 000C+00 0/1 0/0 0/0 .data            @4638 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4638[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__13daNpcClerkT_cFPv,
};
#pragma pop

/* 8099D444-8099D450 -00001 000C+00 0/1 0/0 0/0 .data            @4646 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4646[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__13daNpcClerkT_cFPv,
};
#pragma pop

/* 8099D450-8099D45C -00001 000C+00 0/1 0/0 0/0 .data            @4649 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4649[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpcClerkT_cFPv,
};
#pragma pop

/* 8099D45C-8099D468 -00001 000C+00 0/1 0/0 0/0 .data            @4657 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4657[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpcClerkT_cFPv,
};
#pragma pop

/* 8099D468-8099D474 -00001 000C+00 1/1 0/0 0/0 .data            @4749 */
SECTION_DATA static void* lit_4749[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tend__13daNpcClerkT_cFPv,
};

/* 8099D474-8099D480 -00001 000C+00 1/1 0/0 0/0 .data            @4751 */
SECTION_DATA static void* lit_4751[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpcClerkT_cFPv,
};

/* 8099D480-8099D4A0 -00001 0020+00 1/0 0/0 0/0 .data            daNpcClerkt_MethodTable */
static actor_method_class daNpcClerkt_MethodTable = {
    (process_method_func)daNpcClerkt_Create__FPv,
    (process_method_func)daNpcClerkt_Delete__FPv,
    (process_method_func)daNpcClerkt_Execute__FPv,
    (process_method_func)daNpcClerkt_IsDelete__FPv,
    (process_method_func)daNpcClerkt_Draw__FPv,
};

/* 8099D4A0-8099D4D0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_CLERKT */
extern actor_process_profile_definition g_profile_NPC_CLERKT = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_CLERKT,          // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpcClerkT_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  328,                      // mPriority
  &daNpcClerkt_MethodTable, // sub_method
  0x08044107,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 8099D4D0-8099D4DC 000178 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 8099D4DC-8099D4E8 000184 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8099D4E8-8099D50C 000190 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8099D0F8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8099D0F0,
};

/* 8099D50C-8099D518 0001B4 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8099D518-8099D524 0001C0 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8099D524-8099D530 0001CC 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8099D530-8099D53C 0001D8 000C+00 2/2 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 8099D53C-8099D548 0001E4 000C+00 2/2 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 8099D548-8099D554 0001F0 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 8099D554-8099D560 0001FC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8099D560-8099D56C 000208 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 8099D56C-8099D63C 000214 00D0+00 2/2 0/0 0/0 .data            __vt__13daNpcClerkT_c */
SECTION_DATA extern void* __vt__13daNpcClerkT_c[52] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcClerkT_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__13daNpcClerkT_cFi,
    (void*)checkRemoveJoint__13daNpcClerkT_cFi,
    (void*)getBackboneJointNo__13daNpcClerkT_cFv,
    (void*)getNeckJointNo__13daNpcClerkT_cFv,
    (void*)getHeadJointNo__13daNpcClerkT_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__13daNpcClerkT_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__13daNpcClerkT_cFi,
    (void*)setParam__13daNpcClerkT_cFv,
    (void*)checkChangeEvt__8daNpcT_cFv,
    (void*)evtTalk__13daNpcClerkT_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__13daNpcClerkT_cFv,
    (void*)setAfterTalkMotion__13daNpcClerkT_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__13daNpcClerkT_cFv,
    (void*)beforeMove__13daNpcClerkT_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__13daNpcClerkT_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__13daNpcClerkT_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__13daNpcClerkT_cFv,
    (void*)drawOtherMdl__13daNpcClerkT_cFv,
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
    (void*)getResName2__13dShopSystem_cFi,
    (void*)beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci,
    (void*)beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci,
};

/* 8099A14C-8099A28C 0000EC 0140+00 1/0 0/0 0/0 .text            __dt__13daNpcClerkT_cFv */
daNpcClerkT_c::~daNpcClerkT_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8099D244-8099D2D0 000000 008C+00 8/8 0/0 0/0 .rodata          m__19daNpcClerkt_Param_c */
SECTION_RODATA u8 const daNpcClerkt_Param_c::m[140] = {
    0x42, 0xF0, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x07, 0x00, 0x06, 0x00, 0x08, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0xC1, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0xA0, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
    0x42, 0x20, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x42, 0xDC, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8099D244, &daNpcClerkt_Param_c::m);

/* 8099D2D0-8099D2D4 00008C 0004+00 0/1 0/0 0/0 .rodata          @4027 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4027 = -300.0f;
COMPILER_STRIP_GATE(0x8099D2D0, &lit_4027);
#pragma pop

/* 8099D2D4-8099D2D8 000090 0004+00 0/1 0/0 0/0 .rodata          @4028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4028 = -50.0f;
COMPILER_STRIP_GATE(0x8099D2D4, &lit_4028);
#pragma pop

/* 8099D2D8-8099D2DC 000094 0004+00 0/1 0/0 0/0 .rodata          @4029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4029 = 300.0f;
COMPILER_STRIP_GATE(0x8099D2D8, &lit_4029);
#pragma pop

/* 8099D2DC-8099D2E0 000098 0004+00 0/1 0/0 0/0 .rodata          @4030 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4030 = 450.0f;
COMPILER_STRIP_GATE(0x8099D2DC, &lit_4030);
#pragma pop

/* 8099D2E0-8099D2E4 00009C 0004+00 0/1 0/0 0/0 .rodata          @4031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4031 = -1000000000.0f;
COMPILER_STRIP_GATE(0x8099D2E0, &lit_4031);
#pragma pop

/* 8099A28C-8099A530 00022C 02A4+00 1/1 0/0 0/0 .text            create__13daNpcClerkT_cFv */
void daNpcClerkT_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8099D2E4-8099D2E8 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4120 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4120 = 0.25f;
COMPILER_STRIP_GATE(0x8099D2E4, &lit_4120);
#pragma pop

/* 8099D2E8-8099D2EC 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4121 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4121 = 20.0f;
COMPILER_STRIP_GATE(0x8099D2E8, &lit_4121);
#pragma pop

/* 8099D2EC-8099D2F0 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4122 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4122 = 5.0f;
COMPILER_STRIP_GATE(0x8099D2EC, &lit_4122);
#pragma pop

/* 8099D2F0-8099D2F4 0000AC 0004+00 6/12 0/0 0/0 .rodata          @4123 */
SECTION_RODATA static u8 const lit_4123[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8099D2F0, &lit_4123);

/* 8099D2F4-8099D2F8 0000B0 0004+00 1/3 0/0 0/0 .rodata          @4124 */
SECTION_RODATA static f32 const lit_4124 = 100.0f;
COMPILER_STRIP_GATE(0x8099D2F4, &lit_4124);

/* 8099D2F8-8099D2FC 0000B4 0004+00 0/2 0/0 0/0 .rodata          @4125 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4125 = 60.0f;
COMPILER_STRIP_GATE(0x8099D2F8, &lit_4125);
#pragma pop

/* 8099D2FC-8099D300 0000B8 0004+00 0/2 0/0 0/0 .rodata          @4346 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4346 = 65536.0f;
COMPILER_STRIP_GATE(0x8099D2FC, &lit_4346);
#pragma pop

/* 8099D300-8099D304 0000BC 0004+00 0/3 0/0 0/0 .rodata          @4347 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4347 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x8099D300, &lit_4347);
#pragma pop

/* 8099D304-8099D308 0000C0 0004+00 2/4 0/0 0/0 .rodata          @4490 */
SECTION_RODATA static f32 const lit_4490 = 1.0f;
COMPILER_STRIP_GATE(0x8099D304, &lit_4490);

/* 8099A530-8099A7B0 0004D0 0280+00 1/1 0/0 0/0 .text            CreateHeap__13daNpcClerkT_cFv */
void daNpcClerkT_c::CreateHeap() {
    // NONMATCHING
}

/* 8099A7B0-8099A7EC 000750 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 8099A7EC-8099A804 00078C 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 8099A804-8099A840 0007A4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 8099A840-8099A858 0007E0 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 8099A858-8099A8A0 0007F8 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 8099A8A0-8099A8C4 000840 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 8099A8C4-8099A900 000864 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 8099A900-8099A918 0008A0 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 8099A918-8099A954 0008B8 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 8099A954-8099A96C 0008F4 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 8099A96C-8099A9A0 00090C 0034+00 1/1 0/0 0/0 .text            Delete__13daNpcClerkT_cFv */
void daNpcClerkT_c::Delete() {
    // NONMATCHING
}

/* 8099A9A0-8099AA80 000940 00E0+00 2/2 0/0 0/0 .text            Execute__13daNpcClerkT_cFv */
void daNpcClerkT_c::Execute() {
    // NONMATCHING
}

/* 8099AA80-8099AB14 000A20 0094+00 1/1 0/0 0/0 .text            Draw__13daNpcClerkT_cFv */
void daNpcClerkT_c::Draw() {
    // NONMATCHING
}

/* 8099AB14-8099AB34 000AB4 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpcClerkT_cFP10fopAc_ac_c            */
void daNpcClerkT_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 8099AB34-8099AB8C 000AD4 0058+00 2/2 0/0 0/0 .text
 * ctrlJointCallBack__13daNpcClerkT_cFP8J3DJointi               */
void daNpcClerkT_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 8099AB8C-8099ABBC 000B2C 0030+00 1/1 0/0 0/0 .text            isDelete__13daNpcClerkT_cFv */
void daNpcClerkT_c::isDelete() {
    // NONMATCHING
}

/* 8099ABBC-8099ACF0 000B5C 0134+00 1/1 0/0 0/0 .text            reset__13daNpcClerkT_cFv */
void daNpcClerkT_c::reset() {
    // NONMATCHING
}

/* 8099ACF0-8099AD74 000C90 0084+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpcClerkT_cFi */
void daNpcClerkT_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 8099AD74-8099AF18 000D14 01A4+00 1/0 0/0 0/0 .text            evtTalk__13daNpcClerkT_cFv */
void daNpcClerkT_c::evtTalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8099D33C-8099D33C 0000F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8099D351 = "clerkt";
#pragma pop

/* 8099AF18-8099AFE0 000EB8 00C8+00 1/0 0/0 0/0 .text            evtCutProc__13daNpcClerkT_cFv */
void daNpcClerkT_c::evtCutProc() {
    // NONMATCHING
}

/* 8099AFE0-8099B0CC 000F80 00EC+00 1/0 0/0 0/0 .text            action__13daNpcClerkT_cFv */
void daNpcClerkT_c::action() {
    // NONMATCHING
}

/* 8099B0CC-8099B0D4 00106C 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpcClerkT_cFv */
bool daNpcClerkT_c::drawDbgInfo() {
    return false;
}

/* 8099B0D4-8099B134 001074 0060+00 1/0 0/0 0/0 .text            drawOtherMdl__13daNpcClerkT_cFv */
void daNpcClerkT_c::drawOtherMdl() {
    // NONMATCHING
}

/* 8099B134-8099B1B0 0010D4 007C+00 1/1 0/0 0/0 .text            selectAction__13daNpcClerkT_cFv */
void daNpcClerkT_c::selectAction() {
    // NONMATCHING
}

/* 8099B1B0-8099B1DC 001150 002C+00 1/1 0/0 0/0 .text
 * chkAction__13daNpcClerkT_cFM13daNpcClerkT_cFPCvPvPv_i        */
void daNpcClerkT_c::chkAction(int (daNpcClerkT_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 8099B1DC-8099B284 00117C 00A8+00 2/2 0/0 0/0 .text
 * setAction__13daNpcClerkT_cFM13daNpcClerkT_cFPCvPvPv_i        */
void daNpcClerkT_c::setAction(int (daNpcClerkT_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8099D308-8099D30C 0000C4 0004+00 3/3 0/0 0/0 .rodata          @4829 */
SECTION_RODATA static f32 const lit_4829 = -1.0f;
COMPILER_STRIP_GATE(0x8099D308, &lit_4829);

/* 8099B284-8099B4DC 001224 0258+00 1/0 0/0 0/0 .text            wait__13daNpcClerkT_cFPv */
void daNpcClerkT_c::wait(void* param_0) {
    // NONMATCHING
}

/* 8099B4DC-8099B60C 00147C 0130+00 1/0 0/0 0/0 .text            tend__13daNpcClerkT_cFPv */
void daNpcClerkT_c::tend(void* param_0) {
    // NONMATCHING
}

/* 8099B60C-8099B804 0015AC 01F8+00 2/0 0/0 0/0 .text            talk__13daNpcClerkT_cFPv */
void daNpcClerkT_c::talk(void* param_0) {
    // NONMATCHING
}

/* 8099B804-8099BBE8 0017A4 03E4+00 2/0 0/0 0/0 .text            shop__13daNpcClerkT_cFPv */
void daNpcClerkT_c::shop(void* param_0) {
    // NONMATCHING
}

/* 8099BBE8-8099BC08 001B88 0020+00 1/0 0/0 0/0 .text            daNpcClerkt_Create__FPv */
static void daNpcClerkt_Create(void* param_0) {
    // NONMATCHING
}

/* 8099BC08-8099BC28 001BA8 0020+00 1/0 0/0 0/0 .text            daNpcClerkt_Delete__FPv */
static void daNpcClerkt_Delete(void* param_0) {
    // NONMATCHING
}

/* 8099BC28-8099BC48 001BC8 0020+00 1/0 0/0 0/0 .text            daNpcClerkt_Execute__FPv */
static void daNpcClerkt_Execute(void* param_0) {
    // NONMATCHING
}

/* 8099BC48-8099BC68 001BE8 0020+00 1/0 0/0 0/0 .text            daNpcClerkt_Draw__FPv */
static void daNpcClerkt_Draw(void* param_0) {
    // NONMATCHING
}

/* 8099BC68-8099BC70 001C08 0008+00 1/0 0/0 0/0 .text            daNpcClerkt_IsDelete__FPv */
static bool daNpcClerkt_IsDelete(void* param_0) {
    return true;
}

/* 8099BC70-8099BCA0 001C10 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 8099BCA0-8099BCE8 001C40 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 8099BCE8-8099BE48 001C88 0160+00 1/0 0/0 0/0 .text            setParam__13daNpcClerkT_cFv */
void daNpcClerkT_c::setParam() {
    // NONMATCHING
}

/* 8099BE48-8099BEA8 001DE8 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpcClerkT_cFv */
void daNpcClerkT_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 8099BEA8-8099BF20 001E48 0078+00 1/0 0/0 0/0 .text            beforeMove__13daNpcClerkT_cFv */
void daNpcClerkT_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8099D30C-8099D310 0000C8 0004+00 0/1 0/0 0/0 .rodata          @5176 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5176 = 10.0f;
COMPILER_STRIP_GATE(0x8099D30C, &lit_5176);
#pragma pop

/* 8099D310-8099D314 0000CC 0004+00 0/1 0/0 0/0 .rodata          @5177 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5177 = -15.0f;
COMPILER_STRIP_GATE(0x8099D310, &lit_5177);
#pragma pop

/* 8099D314-8099D318 0000D0 0004+00 0/1 0/0 0/0 .rodata          @5178 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5178 = 15.0f;
COMPILER_STRIP_GATE(0x8099D314, &lit_5178);
#pragma pop

/* 8099D318-8099D31C 0000D4 0004+00 0/1 0/0 0/0 .rodata          @5179 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5179 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x8099D318, &lit_5179);
#pragma pop

/* 8099D31C-8099D324 0000D8 0008+00 1/3 0/0 0/0 .rodata          @5181 */
SECTION_RODATA static u8 const lit_5181[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8099D31C, &lit_5181);

/* 8099BF20-8099C1A0 001EC0 0280+00 1/0 0/0 0/0 .text            setAttnPos__13daNpcClerkT_cFv */
void daNpcClerkT_c::setAttnPos() {
    // NONMATCHING
}

/* 8099C1A0-8099C2D4 002140 0134+00 1/0 0/0 0/0 .text            setCollision__13daNpcClerkT_cFv */
void daNpcClerkT_c::setCollision() {
    // NONMATCHING
}

/* 8099C2D4-8099C31C 002274 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 8099C31C-8099C358 0022BC 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 8099C358-8099C3A0 0022F8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 8099C3A0-8099C3E8 002340 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8099C3E8-8099C424 002388 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 8099C424-8099C460 0023C4 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 8099C460-8099C864 002400 0404+00 1/1 0/0 0/0 .text
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

/* 8099C864-8099C868 002804 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 8099C868-8099C964 002808 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 8099C964-8099C968 002904 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 8099C968-8099C9B0 002908 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 8099C9B0-8099CA20 002950 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 8099CA20-8099CA7C 0029C0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 8099CA7C-8099CAEC 002A1C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 8099CAEC-8099CB34 002A8C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 8099CB34-8099CC50 002AD4 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8099D324-8099D32C 0000E0 0008+00 0/1 0/0 0/0 .rodata          @5239 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5239[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8099D324, &lit_5239);
#pragma pop

/* 8099D32C-8099D334 0000E8 0008+00 0/1 0/0 0/0 .rodata          @5240 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5240[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8099D32C, &lit_5240);
#pragma pop

/* 8099D334-8099D33C 0000F0 0008+00 0/1 0/0 0/0 .rodata          @5241 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5241[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8099D334, &lit_5241);
#pragma pop

/* 8099CC50-8099CE58 002BF0 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 8099CE58-8099CE5C 002DF8 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 8099CE6C-8099CE74 002E0C 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 8099CE74-8099CE7C 002E14 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 8099CE84-8099CE8C 002E24 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 8099CE90-8099CE98 002E30 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 8099CE98-8099CEB0 002E38 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 8099CEB0-8099CEB4 002E50 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 8099CEB4-8099CEBC 002E54 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 8099CEBC-8099CEC4 002E5C 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 8099CEC4-8099CEF4 002E64 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 8099CEF4-8099CF24 002E94 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 8099CF24-8099CF28 002EC4 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 8099CF28-8099CF2C 002EC8 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 8099CF2C-8099CF30 002ECC 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 8099CF30-8099CF34 002ED0 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 8099D63C-8099D648 0002E4 000C+00 2/2 0/0 0/0 .data            __vt__19daNpcClerkt_Param_c */
SECTION_DATA extern void* __vt__19daNpcClerkt_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daNpcClerkt_Param_cFv,
};

/* 8099D650-8099D65C 000008 000C+00 1/1 0/0 0/0 .bss             @3931 */
static u8 lit_3931[12];

/* 8099D65C-8099D660 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 8099CF34-8099CF9C 002ED4 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_clerkt_cpp */
void __sinit_d_a_npc_clerkt_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8099CF34, __sinit_d_a_npc_clerkt_cpp);
#pragma pop

/* 8099CF9C-8099D068 002F3C 00CC+00 1/1 0/0 0/0 .text
 * __ct__13daNpcClerkT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpcClerkT_c::daNpcClerkT_c(daNpcT_faceMotionAnmData_c const* param_0,
                                 daNpcT_motionAnmData_c const* param_1,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                 int param_3,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                 int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 8099D068-8099D070 003008 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__13daNpcClerkT_cFv */
u16 daNpcClerkT_c::getEyeballMaterialNo() {
    return 2;
}

/* 8099D070-8099D080 003010 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__13daNpcClerkT_cFi
 */
void daNpcClerkT_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 8099D080-8099D090 003020 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__13daNpcClerkT_cFi
 */
void daNpcClerkT_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 8099D090-8099D098 003030 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__13daNpcClerkT_cFv */
s32 daNpcClerkT_c::getBackboneJointNo() {
    return 15;
}

/* 8099D098-8099D0A0 003038 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__13daNpcClerkT_cFv
 */
s32 daNpcClerkT_c::getNeckJointNo() {
    return 16;
}

/* 8099D0A0-8099D0A8 003040 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__13daNpcClerkT_cFv
 */
s32 daNpcClerkT_c::getHeadJointNo() {
    return 17;
}

/* 8099D0A8-8099D0F0 003048 0048+00 2/1 0/0 0/0 .text            __dt__19daNpcClerkt_Param_cFv */
daNpcClerkt_Param_c::~daNpcClerkt_Param_c() {
    // NONMATCHING
}

/* 8099D0F0-8099D0F8 003090 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8099D0F0() {
    // NONMATCHING
}

/* 8099D0F8-8099D100 003098 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8099D0F8() {
    // NONMATCHING
}

/* 8099D100-8099D218 0030A0 0118+00 1/1 0/0 0/0 .text
 * __ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
// dShopSystem_c::dShopSystem_c(daNpcT_faceMotionAnmData_c const* param_0,
//                                 daNpcT_motionAnmData_c const* param_1,
//                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
//                                 int param_3,
//                                daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
//                                 int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
extern "C" void __ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc() {
    // NONMATCHING
}

/* 8099D218-8099D220 0031B8 0008+00 1/0 0/0 0/0 .text            getResName2__13dShopSystem_cFi */
// bool dShopSystem_c::getResName2(int param_0) {
extern "C" bool getResName2__13dShopSystem_cFi() {
    return false;
}

/* 8099D220-8099D228 0031C0 0008+00 1/0 0/0 0/0 .text
 * beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci         */
// bool dShopSystem_c::beforeStartSeqAction(dMsgFlow_c* param_0, int param_1) {
extern "C" bool beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci() {
    return true;
}

/* 8099D228-8099D230 0031C8 0008+00 1/0 0/0 0/0 .text
 * beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci        */
// bool dShopSystem_c::beforeSelectSeqAction(dMsgFlow_c* param_0, int param_1) {
extern "C" bool beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci() {
    return true;
}

/* 8099D33C-8099D33C 0000F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
