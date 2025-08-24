/**
 * @file d_a_npc_clerka.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_clerka.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__14daNpc_clerkA_cFv();
extern "C" void create__14daNpc_clerkA_cFv();
extern "C" void CreateHeap__14daNpc_clerkA_cFv();
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
extern "C" void Delete__14daNpc_clerkA_cFv();
extern "C" void Execute__14daNpc_clerkA_cFv();
extern "C" void Draw__14daNpc_clerkA_cFv();
extern "C" void createHeapCallBack__14daNpc_clerkA_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__14daNpc_clerkA_cFP8J3DJointi();
extern "C" void getType__14daNpc_clerkA_cFv();
extern "C" void isDelete__14daNpc_clerkA_cFv();
extern "C" void reset__14daNpc_clerkA_cFv();
extern "C" void afterJntAnm__14daNpc_clerkA_cFi();
extern "C" void setParam__14daNpc_clerkA_cFv();
extern "C" void setAfterTalkMotion__14daNpc_clerkA_cFv();
extern "C" void srchActors__14daNpc_clerkA_cFv();
extern "C" void evtTalk__14daNpc_clerkA_cFv();
extern "C" void evtCutProc__14daNpc_clerkA_cFv();
extern "C" void action__14daNpc_clerkA_cFv();
extern "C" void beforeMove__14daNpc_clerkA_cFv();
extern "C" void setAttnPos__14daNpc_clerkA_cFv();
extern "C" void setCollision__14daNpc_clerkA_cFv();
extern "C" bool drawDbgInfo__14daNpc_clerkA_cFv();
extern "C" void drawOtherMdl__14daNpc_clerkA_cFv();
extern "C" void selectAction__14daNpc_clerkA_cFv();
extern "C" void chkAction__14daNpc_clerkA_cFM14daNpc_clerkA_cFPCvPvPv_i();
extern "C" void setAction__14daNpc_clerkA_cFM14daNpc_clerkA_cFPCvPvPv_i();
extern "C" void wait__14daNpc_clerkA_cFPv();
extern "C" void tend__14daNpc_clerkA_cFPv();
extern "C" void talk__14daNpc_clerkA_cFPv();
extern "C" void shop__14daNpc_clerkA_cFPv();
extern "C" static void daNpc_clerkA_Create__FPv();
extern "C" static void daNpc_clerkA_Delete__FPv();
extern "C" static void daNpc_clerkA_Execute__FPv();
extern "C" static void daNpc_clerkA_Draw__FPv();
extern "C" static bool daNpc_clerkA_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
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
extern "C" void func_80995544(void* _this, int*);
extern "C" void __sinit_d_a_npc_clerka_cpp();
extern "C" void
__ct__14daNpc_clerkA_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__14daNpc_clerkA_cFv();
extern "C" s32 getHeadJointNo__14daNpc_clerkA_cFv();
extern "C" s32 getNeckJointNo__14daNpc_clerkA_cFv();
extern "C" bool getBackboneJointNo__14daNpc_clerkA_cFv();
extern "C" void checkChangeJoint__14daNpc_clerkA_cFi();
extern "C" void checkRemoveJoint__14daNpc_clerkA_cFi();
extern "C" void __dt__20daNpc_clerkA_Param_cFv();
extern "C" static void func_8099571C();
extern "C" static void func_80995724();
extern "C" void
__ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" bool getResName2__13dShopSystem_cFi();
extern "C" bool beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci();
extern "C" bool beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci();
extern "C" u8 const m__20daNpc_clerkA_Param_c[144];
extern "C" extern char const* const d_a_npc_clerka__stringBase0;
extern "C" void* mCutNameList__14daNpc_clerkA_c;
extern "C" u8 mCutList__14daNpc_clerkA_c[12];

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
extern "C" void checkEndSequence__22daNpcT_MotionSeqMngr_cFv();
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
extern "C" void cM_rnd__Fv();
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
/* 80995970-80995970 000100 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80995970 = "";
SECTION_DEAD static char const* const stringBase_80995971 = "DEFAULT_GETITEM";
SECTION_DEAD static char const* const stringBase_80995981 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_8099598D = "clerkA";
#pragma pop

/* 809959B4-809959BC 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x01,
};

/* 809959BC-809959D4 -00001 0018+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[6] = {
    (void*)&d_a_npc_clerka__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_clerka__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_clerka__stringBase0) + 0x11),
    (void*)NULL,
};
#pragma pop

/* 809959D4-809959DC -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_npc_clerka__stringBase0,
    (void*)(((char*)&d_a_npc_clerka__stringBase0) + 0x1D),
};

/* 809959DC-809959E0 000048 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 809959E0-809959E8 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[2] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
};

/* 809959E8-80995A74 000054 008C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[140] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1D,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80995A74-80995B38 0000E0 00C4+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[196] = {
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80995B38-80995B88 0001A4 0050+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[80] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x04, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80995B88-80995BF8 0001F4 0070+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[112] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xF7, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80995BF8-80995BFC -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__14daNpc_clerkA_c */
SECTION_DATA void* daNpc_clerkA_c::mCutNameList = (void*)&d_a_npc_clerka__stringBase0;

/* 80995BFC-80995C08 000268 000C+00 2/2 0/0 0/0 .data            mCutList__14daNpc_clerkA_c */
SECTION_DATA u8 daNpc_clerkA_c::mCutList[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80995C08-80995C14 -00001 000C+00 0/1 0/0 0/0 .data            @4694 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4694[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__14daNpc_clerkA_cFPv,
};
#pragma pop

/* 80995C14-80995C20 -00001 000C+00 0/1 0/0 0/0 .data            @4704 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4704[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__14daNpc_clerkA_cFPv,
};
#pragma pop

/* 80995C20-80995C2C -00001 000C+00 0/1 0/0 0/0 .data            @4707 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4707[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__14daNpc_clerkA_cFPv,
};
#pragma pop

/* 80995C2C-80995C38 -00001 000C+00 0/1 0/0 0/0 .data            @4717 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4717[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__14daNpc_clerkA_cFPv,
};
#pragma pop

/* 80995C38-80995C44 -00001 000C+00 1/1 0/0 0/0 .data            @4961 */
SECTION_DATA static void* lit_4961[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tend__14daNpc_clerkA_cFPv,
};

/* 80995C44-80995C50 -00001 000C+00 1/1 0/0 0/0 .data            @4963 */
SECTION_DATA static void* lit_4963[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__14daNpc_clerkA_cFPv,
};

/* 80995C50-80995C70 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_clerkA_MethodTable */
static actor_method_class daNpc_clerkA_MethodTable = {
    (process_method_func)daNpc_clerkA_Create__FPv,
    (process_method_func)daNpc_clerkA_Delete__FPv,
    (process_method_func)daNpc_clerkA_Execute__FPv,
    (process_method_func)daNpc_clerkA_IsDelete__FPv,
    (process_method_func)daNpc_clerkA_Draw__FPv,
};

/* 80995C70-80995CA0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_CLERKA */
extern actor_process_profile_definition g_profile_NPC_CLERKA = {
  fpcLy_CURRENT_e,           // mLayerID
  7,                         // mListID
  fpcPi_CURRENT_e,           // mListPrio
  PROC_NPC_CLERKA,           // mProcName
  &g_fpcLf_Method.base,     // sub_method
  sizeof(daNpc_clerkA_c),    // mSize
  0,                         // mSizeOther
  0,                         // mParameters
  &g_fopAc_Method.base,      // sub_method
  326,                       // mPriority
  &daNpc_clerkA_MethodTable, // sub_method
  0x00044107,                // mStatus
  fopAc_NPC_e,               // mActorType
  fopAc_CULLBOX_CUSTOM_e,    // cullType
};

/* 80995CA0-80995CAC 00030C 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80995CAC-80995CB8 000318 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80995CB8-80995CDC 000324 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80995724,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8099571C,
};

/* 80995CDC-80995CE8 000348 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80995CE8-80995CF4 000354 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80995CF4-80995D00 000360 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80995D00-80995D0C 00036C 000C+00 2/2 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80995D0C-80995D18 000378 000C+00 2/2 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80995D18-80995D24 000384 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80995D24-80995D30 000390 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80995D30-80995D3C 00039C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80995D3C-80995E0C 0003A8 00D0+00 2/2 0/0 0/0 .data            __vt__14daNpc_clerkA_c */
SECTION_DATA extern void* __vt__14daNpc_clerkA_c[52] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daNpc_clerkA_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__14daNpc_clerkA_cFi,
    (void*)checkRemoveJoint__14daNpc_clerkA_cFi,
    (void*)getBackboneJointNo__14daNpc_clerkA_cFv,
    (void*)getNeckJointNo__14daNpc_clerkA_cFv,
    (void*)getHeadJointNo__14daNpc_clerkA_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__14daNpc_clerkA_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__14daNpc_clerkA_cFi,
    (void*)setParam__14daNpc_clerkA_cFv,
    (void*)checkChangeEvt__8daNpcT_cFv,
    (void*)evtTalk__14daNpc_clerkA_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__14daNpc_clerkA_cFv,
    (void*)setAfterTalkMotion__14daNpc_clerkA_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__14daNpc_clerkA_cFv,
    (void*)beforeMove__14daNpc_clerkA_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__14daNpc_clerkA_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__14daNpc_clerkA_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__14daNpc_clerkA_cFv,
    (void*)drawOtherMdl__14daNpc_clerkA_cFv,
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

/* 8099252C-8099266C 0000EC 0140+00 1/0 0/0 0/0 .text            __dt__14daNpc_clerkA_cFv */
daNpc_clerkA_c::~daNpc_clerkA_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80995870-80995900 000000 0090+00 9/9 0/0 0/0 .rodata          m__20daNpc_clerkA_Param_c */
SECTION_RODATA u8 const daNpc_clerkA_Param_c::m[144] = {
    0x43, 0x5C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00, 0xC2, 0x70, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0xC1, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0xA0, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
    0x42, 0x20, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x42, 0xDC, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80995870, &daNpc_clerkA_Param_c::m);

/* 80995900-80995904 000090 0004+00 0/1 0/0 0/0 .rodata          @4027 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4027 = -300.0f;
COMPILER_STRIP_GATE(0x80995900, &lit_4027);
#pragma pop

/* 80995904-80995908 000094 0004+00 0/1 0/0 0/0 .rodata          @4028 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4028 = -50.0f;
COMPILER_STRIP_GATE(0x80995904, &lit_4028);
#pragma pop

/* 80995908-8099590C 000098 0004+00 0/1 0/0 0/0 .rodata          @4029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4029 = 300.0f;
COMPILER_STRIP_GATE(0x80995908, &lit_4029);
#pragma pop

/* 8099590C-80995910 00009C 0004+00 0/1 0/0 0/0 .rodata          @4030 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4030 = 450.0f;
COMPILER_STRIP_GATE(0x8099590C, &lit_4030);
#pragma pop

/* 80995910-80995914 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4031 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80995910, &lit_4031);
#pragma pop

/* 8099266C-80992914 00022C 02A8+00 1/1 0/0 0/0 .text            create__14daNpc_clerkA_cFv */
void daNpc_clerkA_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80995914-80995918 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4120 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4120 = 0.25f;
COMPILER_STRIP_GATE(0x80995914, &lit_4120);
#pragma pop

/* 80995918-8099591C 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4121 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4121 = 20.0f;
COMPILER_STRIP_GATE(0x80995918, &lit_4121);
#pragma pop

/* 8099591C-80995920 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4122 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4122 = 5.0f;
COMPILER_STRIP_GATE(0x8099591C, &lit_4122);
#pragma pop

/* 80995920-80995924 0000B0 0004+00 5/12 0/0 0/0 .rodata          @4123 */
SECTION_RODATA static u8 const lit_4123[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80995920, &lit_4123);

/* 80995924-80995928 0000B4 0004+00 1/3 0/0 0/0 .rodata          @4124 */
SECTION_RODATA static f32 const lit_4124 = 100.0f;
COMPILER_STRIP_GATE(0x80995924, &lit_4124);

/* 80995928-8099592C 0000B8 0004+00 0/2 0/0 0/0 .rodata          @4125 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4125 = 60.0f;
COMPILER_STRIP_GATE(0x80995928, &lit_4125);
#pragma pop

/* 8099592C-80995930 0000BC 0004+00 0/2 0/0 0/0 .rodata          @4346 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4346 = 65536.0f;
COMPILER_STRIP_GATE(0x8099592C, &lit_4346);
#pragma pop

/* 80995930-80995934 0000C0 0004+00 0/3 0/0 0/0 .rodata          @4347 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4347 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80995930, &lit_4347);
#pragma pop

/* 80995934-80995938 0000C4 0004+00 2/4 0/0 0/0 .rodata          @4490 */
SECTION_RODATA static f32 const lit_4490 = 1.0f;
COMPILER_STRIP_GATE(0x80995934, &lit_4490);

/* 80992914-80992B94 0004D4 0280+00 1/1 0/0 0/0 .text            CreateHeap__14daNpc_clerkA_cFv */
void daNpc_clerkA_c::CreateHeap() {
    // NONMATCHING
}

/* 80992B94-80992BD0 000754 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80992BD0-80992BE8 000790 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80992BE8-80992C24 0007A8 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80992C24-80992C3C 0007E4 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80992C3C-80992C84 0007FC 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80992C84-80992CA8 000844 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80992CA8-80992CE4 000868 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80992CE4-80992CFC 0008A4 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80992CFC-80992D38 0008BC 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80992D38-80992D50 0008F8 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80992D50-80992D84 000910 0034+00 1/1 0/0 0/0 .text            Delete__14daNpc_clerkA_cFv */
void daNpc_clerkA_c::Delete() {
    // NONMATCHING
}

/* 80992D84-80992E5C 000944 00D8+00 2/2 0/0 0/0 .text            Execute__14daNpc_clerkA_cFv */
void daNpc_clerkA_c::Execute() {
    // NONMATCHING
}

/* 80992E5C-80992EF0 000A1C 0094+00 1/1 0/0 0/0 .text            Draw__14daNpc_clerkA_cFv */
void daNpc_clerkA_c::Draw() {
    // NONMATCHING
}

/* 80992EF0-80992F10 000AB0 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__14daNpc_clerkA_cFP10fopAc_ac_c           */
void daNpc_clerkA_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80992F10-80992F68 000AD0 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__14daNpc_clerkA_cFP8J3DJointi              */
void daNpc_clerkA_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80992F68-80992F88 000B28 0020+00 1/1 0/0 0/0 .text            getType__14daNpc_clerkA_cFv */
void daNpc_clerkA_c::getType() {
    // NONMATCHING
}

/* 80992F88-80992FB8 000B48 0030+00 1/1 0/0 0/0 .text            isDelete__14daNpc_clerkA_cFv */
void daNpc_clerkA_c::isDelete() {
    // NONMATCHING
}

/* 80992FB8-809930EC 000B78 0134+00 1/1 0/0 0/0 .text            reset__14daNpc_clerkA_cFv */
void daNpc_clerkA_c::reset() {
    // NONMATCHING
}

/* 809930EC-80993170 000CAC 0084+00 1/0 0/0 0/0 .text            afterJntAnm__14daNpc_clerkA_cFi */
void daNpc_clerkA_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 80993170-809932A4 000D30 0134+00 1/0 0/0 0/0 .text            setParam__14daNpc_clerkA_cFv */
void daNpc_clerkA_c::setParam() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80995938-8099593C 0000C8 0004+00 2/3 0/0 0/0 .rodata          @4679 */
SECTION_RODATA static f32 const lit_4679 = -1.0f;
COMPILER_STRIP_GATE(0x80995938, &lit_4679);

/* 809932A4-80993330 000E64 008C+00 1/0 0/0 0/0 .text setAfterTalkMotion__14daNpc_clerkA_cFv */
void daNpc_clerkA_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80993330-8099338C 000EF0 005C+00 1/1 0/0 0/0 .text            srchActors__14daNpc_clerkA_cFv */
void daNpc_clerkA_c::srchActors() {
    // NONMATCHING
}

/* 8099338C-80993568 000F4C 01DC+00 1/0 0/0 0/0 .text            evtTalk__14daNpc_clerkA_cFv */
void daNpc_clerkA_c::evtTalk() {
    // NONMATCHING
}

/* 80993568-80993630 001128 00C8+00 1/0 0/0 0/0 .text            evtCutProc__14daNpc_clerkA_cFv */
void daNpc_clerkA_c::evtCutProc() {
    // NONMATCHING
}

/* 80993630-8099371C 0011F0 00EC+00 1/0 0/0 0/0 .text            action__14daNpc_clerkA_cFv */
void daNpc_clerkA_c::action() {
    // NONMATCHING
}

/* 8099371C-80993794 0012DC 0078+00 1/0 0/0 0/0 .text            beforeMove__14daNpc_clerkA_cFv */
void daNpc_clerkA_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8099593C-80995940 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4842 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4842 = -30.0f;
COMPILER_STRIP_GATE(0x8099593C, &lit_4842);
#pragma pop

/* 80995940-80995944 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4843 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4843 = 15.0f;
COMPILER_STRIP_GATE(0x80995940, &lit_4843);
#pragma pop

/* 80995944-80995948 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4844 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4844 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80995944, &lit_4844);
#pragma pop

/* 80995948-80995950 0000D8 0008+00 1/4 0/0 0/0 .rodata          @4846 */
SECTION_RODATA static u8 const lit_4846[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80995948, &lit_4846);

/* 80993794-80993A40 001354 02AC+00 1/0 0/0 0/0 .text            setAttnPos__14daNpc_clerkA_cFv */
void daNpc_clerkA_c::setAttnPos() {
    // NONMATCHING
}

/* 80993A40-80993B74 001600 0134+00 1/0 0/0 0/0 .text            setCollision__14daNpc_clerkA_cFv */
void daNpc_clerkA_c::setCollision() {
    // NONMATCHING
}

/* 80993B74-80993B7C 001734 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__14daNpc_clerkA_cFv */
bool daNpc_clerkA_c::drawDbgInfo() {
    return false;
}

/* 80993B7C-80993BDC 00173C 0060+00 1/0 0/0 0/0 .text            drawOtherMdl__14daNpc_clerkA_cFv */
void daNpc_clerkA_c::drawOtherMdl() {
    // NONMATCHING
}

/* 80993BDC-80993C58 00179C 007C+00 1/1 0/0 0/0 .text            selectAction__14daNpc_clerkA_cFv */
void daNpc_clerkA_c::selectAction() {
    // NONMATCHING
}

/* 80993C58-80993C84 001818 002C+00 1/1 0/0 0/0 .text
 * chkAction__14daNpc_clerkA_cFM14daNpc_clerkA_cFPCvPvPv_i      */
void daNpc_clerkA_c::chkAction(int (daNpc_clerkA_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80993C84-80993D2C 001844 00A8+00 2/2 0/0 0/0 .text
 * setAction__14daNpc_clerkA_cFM14daNpc_clerkA_cFPCvPvPv_i      */
void daNpc_clerkA_c::setAction(int (daNpc_clerkA_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80993D2C-80993F84 0018EC 0258+00 1/0 0/0 0/0 .text            wait__14daNpc_clerkA_cFPv */
void daNpc_clerkA_c::wait(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80995950-80995958 0000E0 0008+00 0/1 0/0 0/0 .rodata          @4904 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4904[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80995950, &lit_4904);
#pragma pop

/* 80995958-80995960 0000E8 0008+00 0/1 0/0 0/0 .rodata          @4905 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4905[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80995958, &lit_4905);
#pragma pop

/* 80995960-80995968 0000F0 0008+00 0/1 0/0 0/0 .rodata          @4906 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4906[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80995960, &lit_4906);
#pragma pop

/* 80995968-8099596C 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5110 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5110 = 0.5f;
COMPILER_STRIP_GATE(0x80995968, &lit_5110);
#pragma pop

/* 80993F84-809941B8 001B44 0234+00 1/0 0/0 0/0 .text            tend__14daNpc_clerkA_cFPv */
void daNpc_clerkA_c::tend(void* param_0) {
    // NONMATCHING
}

/* 809941B8-809943B0 001D78 01F8+00 2/0 0/0 0/0 .text            talk__14daNpc_clerkA_cFPv */
void daNpc_clerkA_c::talk(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8099596C-80995970 0000FC 0004+00 0/1 0/0 0/0 .rodata          @5303 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5303 = -110.0f;
COMPILER_STRIP_GATE(0x8099596C, &lit_5303);
#pragma pop

/* 809943B0-809947E4 001F70 0434+00 2/0 0/0 0/0 .text            shop__14daNpc_clerkA_cFPv */
void daNpc_clerkA_c::shop(void* param_0) {
    // NONMATCHING
}

/* 809947E4-80994804 0023A4 0020+00 1/0 0/0 0/0 .text            daNpc_clerkA_Create__FPv */
static void daNpc_clerkA_Create(void* param_0) {
    // NONMATCHING
}

/* 80994804-80994824 0023C4 0020+00 1/0 0/0 0/0 .text            daNpc_clerkA_Delete__FPv */
static void daNpc_clerkA_Delete(void* param_0) {
    // NONMATCHING
}

/* 80994824-80994844 0023E4 0020+00 1/0 0/0 0/0 .text            daNpc_clerkA_Execute__FPv */
static void daNpc_clerkA_Execute(void* param_0) {
    // NONMATCHING
}

/* 80994844-80994864 002404 0020+00 1/0 0/0 0/0 .text            daNpc_clerkA_Draw__FPv */
static void daNpc_clerkA_Draw(void* param_0) {
    // NONMATCHING
}

/* 80994864-8099486C 002424 0008+00 1/0 0/0 0/0 .text            daNpc_clerkA_IsDelete__FPv */
static bool daNpc_clerkA_IsDelete(void* param_0) {
    return true;
}

/* 8099486C-8099489C 00242C 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 8099489C-809948E4 00245C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 809948E4-8099492C 0024A4 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 8099492C-80994968 0024EC 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80994968-809949B0 002528 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 809949B0-809949F8 002570 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 809949F8-80994A34 0025B8 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80994A34-80994A70 0025F4 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80994A70-80994E74 002630 0404+00 1/1 0/0 0/0 .text
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

/* 80994E74-80994E78 002A34 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80994E78-80994F74 002A38 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80994F74-80994F78 002B34 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80994F78-80994FC0 002B38 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80994FC0-80995030 002B80 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80995030-8099508C 002BF0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 8099508C-809950FC 002C4C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809950FC-80995144 002CBC 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80995144-80995260 002D04 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80995260-80995468 002E20 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80995468-8099546C 003028 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 8099547C-80995484 00303C 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80995484-8099548C 003044 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80995494-8099549C 003054 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 809954A0-809954A8 003060 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 809954A8-809954C0 003068 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 809954C0-809954C4 003080 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 809954C4-809954CC 003084 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 809954CC-809954D4 00308C 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 809954D4-80995504 003094 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80995504-80995534 0030C4 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80995534-80995538 0030F4 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80995538-8099553C 0030F8 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 8099553C-80995540 0030FC 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80995540-80995544 003100 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80995544-80995560 003104 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80995544(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80995E0C-80995E18 000478 000C+00 2/2 0/0 0/0 .data            __vt__20daNpc_clerkA_Param_c */
SECTION_DATA extern void* __vt__20daNpc_clerkA_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__20daNpc_clerkA_Param_cFv,
};

/* 80995E20-80995E2C 000008 000C+00 1/1 0/0 0/0 .bss             @3931 */
static u8 lit_3931[12];

/* 80995E2C-80995E30 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80995560-809955C8 003120 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_clerka_cpp */
void __sinit_d_a_npc_clerka_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80995560, __sinit_d_a_npc_clerka_cpp);
#pragma pop

/* 809955C8-80995694 003188 00CC+00 1/1 0/0 0/0 .text
 * __ct__14daNpc_clerkA_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_clerkA_c::daNpc_clerkA_c(daNpcT_faceMotionAnmData_c const* param_0,
                                   daNpcT_motionAnmData_c const* param_1,
                                   daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                   int param_3,
                                   daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                   int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80995694-8099569C 003254 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__14daNpc_clerkA_cFv */
u16 daNpc_clerkA_c::getEyeballMaterialNo() {
    return 3;
}

/* 8099569C-809956A4 00325C 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__14daNpc_clerkA_cFv
 */
s32 daNpc_clerkA_c::getHeadJointNo() {
    return 4;
}

/* 809956A4-809956AC 003264 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__14daNpc_clerkA_cFv
 */
s32 daNpc_clerkA_c::getNeckJointNo() {
    return 3;
}

/* 809956AC-809956B4 00326C 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__14daNpc_clerkA_cFv */
bool daNpc_clerkA_c::getBackboneJointNo() {
    return true;
}

/* 809956B4-809956C4 003274 0010+00 1/0 0/0 0/0 .text checkChangeJoint__14daNpc_clerkA_cFi */
void daNpc_clerkA_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 809956C4-809956D4 003284 0010+00 1/0 0/0 0/0 .text checkRemoveJoint__14daNpc_clerkA_cFi */
void daNpc_clerkA_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 809956D4-8099571C 003294 0048+00 2/1 0/0 0/0 .text            __dt__20daNpc_clerkA_Param_cFv */
daNpc_clerkA_Param_c::~daNpc_clerkA_Param_c() {
    // NONMATCHING
}

/* 8099571C-80995724 0032DC 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8099571C() {
    // NONMATCHING
}

/* 80995724-8099572C 0032E4 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80995724() {
    // NONMATCHING
}

/* 8099572C-80995844 0032EC 0118+00 1/1 0/0 0/0 .text
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

/* 80995844-8099584C 003404 0008+00 1/0 0/0 0/0 .text            getResName2__13dShopSystem_cFi */
// bool dShopSystem_c::getResName2(int param_0) {
extern "C" bool getResName2__13dShopSystem_cFi() {
    return false;
}

/* 8099584C-80995854 00340C 0008+00 1/0 0/0 0/0 .text
 * beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci         */
// bool dShopSystem_c::beforeStartSeqAction(dMsgFlow_c* param_0, int param_1) {
extern "C" bool beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci() {
    return true;
}

/* 80995854-8099585C 003414 0008+00 1/0 0/0 0/0 .text
 * beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci        */
// bool dShopSystem_c::beforeSelectSeqAction(dMsgFlow_c* param_0, int param_1) {
extern "C" bool beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci() {
    return true;
}

/* 80995970-80995970 000100 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
