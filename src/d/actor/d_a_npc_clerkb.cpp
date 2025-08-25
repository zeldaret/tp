/**
 * @file d_a_npc_clerkb.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_clerkb.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__14daNpc_clerkB_cFv();
extern "C" void create__14daNpc_clerkB_cFv();
extern "C" void CreateHeap__14daNpc_clerkB_cFv();
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
extern "C" void Delete__14daNpc_clerkB_cFv();
extern "C" void Execute__14daNpc_clerkB_cFv();
extern "C" void Draw__14daNpc_clerkB_cFv();
extern "C" void createHeapCallBack__14daNpc_clerkB_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__14daNpc_clerkB_cFP8J3DJointi();
extern "C" void getType__14daNpc_clerkB_cFv();
extern "C" void beforeStartSeqAction__14daNpc_clerkB_cFP10dMsgFlow_ci();
extern "C" void beforeSelectSeqAction__14daNpc_clerkB_cFP10dMsgFlow_ci();
extern "C" void isDelete__14daNpc_clerkB_cFv();
extern "C" void reset__14daNpc_clerkB_cFv();
extern "C" void afterJntAnm__14daNpc_clerkB_cFi();
extern "C" void setParam__14daNpc_clerkB_cFv();
extern "C" void setAfterTalkMotion__14daNpc_clerkB_cFv();
extern "C" void srchActors__14daNpc_clerkB_cFv();
extern "C" void evtTalk__14daNpc_clerkB_cFv();
extern "C" void evtCutProc__14daNpc_clerkB_cFv();
extern "C" void action__14daNpc_clerkB_cFv();
extern "C" void beforeMove__14daNpc_clerkB_cFv();
extern "C" void setAttnPos__14daNpc_clerkB_cFv();
extern "C" void setCollision__14daNpc_clerkB_cFv();
extern "C" bool drawDbgInfo__14daNpc_clerkB_cFv();
extern "C" void drawOtherMdl__14daNpc_clerkB_cFv();
extern "C" void drawGhost__14daNpc_clerkB_cFv();
extern "C" void selectAction__14daNpc_clerkB_cFv();
extern "C" void chkAction__14daNpc_clerkB_cFM14daNpc_clerkB_cFPCvPvPv_i();
extern "C" void setAction__14daNpc_clerkB_cFM14daNpc_clerkB_cFPCvPvPv_i();
extern "C" void setSe__14daNpc_clerkB_cFv();
extern "C" void wait__14daNpc_clerkB_cFPv();
extern "C" void tend__14daNpc_clerkB_cFPv();
extern "C" void talk__14daNpc_clerkB_cFPv();
extern "C" void shop__14daNpc_clerkB_cFPv();
extern "C" static void daNpc_clerkB_Create__FPv();
extern "C" static void daNpc_clerkB_Delete__FPv();
extern "C" static void daNpc_clerkB_Execute__FPv();
extern "C" static void daNpc_clerkB_Draw__FPv();
extern "C" static bool daNpc_clerkB_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
extern "C" void __ct__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void
__ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__15daNpcT_JntAnm_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
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
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_809995FC(void* _this, int*);
extern "C" void __sinit_d_a_npc_clerkb_cpp();
extern "C" void
__ct__14daNpc_clerkB_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __dt__5csXyzFv();
extern "C" u16 getEyeballMaterialNo__14daNpc_clerkB_cFv();
extern "C" s32 getHeadJointNo__14daNpc_clerkB_cFv();
extern "C" s32 getNeckJointNo__14daNpc_clerkB_cFv();
extern "C" bool getBackboneJointNo__14daNpc_clerkB_cFv();
extern "C" void checkChangeJoint__14daNpc_clerkB_cFi();
extern "C" void checkRemoveJoint__14daNpc_clerkB_cFi();
extern "C" void __dt__20daNpc_clerkB_Param_cFv();
extern "C" static void func_80999834();
extern "C" static void func_8099983C();
extern "C" void
__ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" bool getResName2__13dShopSystem_cFi();
extern "C" u8 const m__20daNpc_clerkB_Param_c[148];
extern "C" extern char const* const d_a_npc_clerkb__stringBase0;
extern "C" void* mCutNameList__14daNpc_clerkB_c;
extern "C" u8 mCutList__14daNpc_clerkB_c[12];

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_bpkAnmFP16J3DMaterialTableP11J3DAnmColoriifss();
extern "C" void entry__13mDoExt_bpkAnmFP16J3DMaterialTablef();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
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
extern "C" void evtChange__8daNpcT_cFv();
extern "C" void clrParam__8daNpcT_cFv();
extern "C" void setFaceMotionAnm__8daNpcT_cFib();
extern "C" void setMotionAnm__8daNpcT_cFifi();
extern "C" void setPos__8daNpcT_cF4cXyz();
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
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void setStatus__12dMsgObject_cFUs();
extern "C" void getStatus__12dMsgObject_cFv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_chaseF__FPfff();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void getTexNo__16J3DAnmTexPatternCFUsPUs();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void removeMatColorAnimator__16J3DMaterialTableFP11J3DAnmColor();
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
/* 80999A8C-80999A8C 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80999A8C = "";
SECTION_DEAD static char const* const stringBase_80999A8D = "DEFAULT_GETITEM";
SECTION_DEAD static char const* const stringBase_80999A9D = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80999AA9 = "clerkB";
#pragma pop

/* 80999AD0-80999AD8 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x01,
};

/* 80999AD8-80999AF0 -00001 0018+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[6] = {
    (void*)&d_a_npc_clerkb__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_clerkb__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_clerkb__stringBase0) + 0x11),
    (void*)NULL,
};
#pragma pop

/* 80999AF0-80999AF8 -00001 0008+00 3/4 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[2] = {
    (void*)&d_a_npc_clerkb__stringBase0,
    (void*)(((char*)&d_a_npc_clerkb__stringBase0) + 0x1D),
};

/* 80999AF8-80999AFC 000048 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80999AFC-80999B04 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[2] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
};

/* 80999B04-80999C00 000054 00FC+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[252] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x23,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x27,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x23,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 80999C00-80999CFC 000150 00FC+00 1/2 0/0 0/0 .data            l_motionAnmData */
SECTION_DATA static u8 l_motionAnmData[252] = {
    0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x20,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x20,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x20,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
};

/* 80999CFC-80999D8C 00024C 0090+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[144] = {
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x06, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x07, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x08, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80999D8C-80999E1C 0002DC 0090+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[144] = {
    0x00, 0x00, 0xF7, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xF7, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0x00, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80999E1C-80999E20 -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__14daNpc_clerkB_c */
SECTION_DATA void* daNpc_clerkB_c::mCutNameList = (void*)&d_a_npc_clerkb__stringBase0;

/* 80999E20-80999E2C 000370 000C+00 2/2 0/0 0/0 .data            mCutList__14daNpc_clerkB_c */
SECTION_DATA u8 daNpc_clerkB_c::mCutList[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80999E2C-80999E38 -00001 000C+00 0/1 0/0 0/0 .data            @4889 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4889[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__14daNpc_clerkB_cFPv,
};
#pragma pop

/* 80999E38-80999E44 -00001 000C+00 0/1 0/0 0/0 .data            @4899 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4899[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__14daNpc_clerkB_cFPv,
};
#pragma pop

/* 80999E44-80999E50 -00001 000C+00 0/1 0/0 0/0 .data            @4902 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4902[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__14daNpc_clerkB_cFPv,
};
#pragma pop

/* 80999E50-80999E5C -00001 000C+00 0/1 0/0 0/0 .data            @4912 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4912[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__14daNpc_clerkB_cFPv,
};
#pragma pop

/* 80999E5C-80999E68 -00001 000C+00 1/1 0/0 0/0 .data            @5165 */
SECTION_DATA static void* lit_5165[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tend__14daNpc_clerkB_cFPv,
};

/* 80999E68-80999E74 -00001 000C+00 1/1 0/0 0/0 .data            @5167 */
SECTION_DATA static void* lit_5167[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__14daNpc_clerkB_cFPv,
};

/* 80999E74-80999E94 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_clerkB_MethodTable */
static actor_method_class daNpc_clerkB_MethodTable = {
    (process_method_func)daNpc_clerkB_Create__FPv,
    (process_method_func)daNpc_clerkB_Delete__FPv,
    (process_method_func)daNpc_clerkB_Execute__FPv,
    (process_method_func)daNpc_clerkB_IsDelete__FPv,
    (process_method_func)daNpc_clerkB_Draw__FPv,
};

/* 80999E94-80999EC4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_CLERKB */
extern actor_process_profile_definition g_profile_NPC_CLERKB = {
  fpcLy_CURRENT_e,           // mLayerID
  7,                         // mListID
  fpcPi_CURRENT_e,           // mListPrio
  PROC_NPC_CLERKB,           // mProcName
  &g_fpcLf_Method.base,     // sub_method
  sizeof(daNpc_clerkB_c),    // mSize
  0,                         // mSizeOther
  0,                         // mParameters
  &g_fopAc_Method.base,      // sub_method
  327,                       // mPriority
  &daNpc_clerkB_MethodTable, // sub_method
  0x00044107,                // mStatus
  fopAc_NPC_e,               // mActorType
  fopAc_CULLBOX_CUSTOM_e,    // cullType
};

/* 80999EC4-80999ED0 000414 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80999ED0-80999EF4 000420 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8099983C,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80999834,
};

/* 80999EF4-80999F00 000444 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80999F00-80999F0C 000450 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80999F0C-80999F18 00045C 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80999F18-80999F24 000468 000C+00 2/2 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80999F24-80999F30 000474 000C+00 2/2 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80999F30-80999F3C 000480 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80999F3C-80999F48 00048C 000C+00 4/4 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80999F48-80999F54 000498 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80999F54-80999F60 0004A4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80999F60-8099A030 0004B0 00D0+00 2/2 0/0 0/0 .data            __vt__14daNpc_clerkB_c */
SECTION_DATA extern void* __vt__14daNpc_clerkB_c[52] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daNpc_clerkB_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__14daNpc_clerkB_cFi,
    (void*)checkRemoveJoint__14daNpc_clerkB_cFi,
    (void*)getBackboneJointNo__14daNpc_clerkB_cFv,
    (void*)getNeckJointNo__14daNpc_clerkB_cFv,
    (void*)getHeadJointNo__14daNpc_clerkB_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__14daNpc_clerkB_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__14daNpc_clerkB_cFi,
    (void*)setParam__14daNpc_clerkB_cFv,
    (void*)checkChangeEvt__8daNpcT_cFv,
    (void*)evtTalk__14daNpc_clerkB_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__14daNpc_clerkB_cFv,
    (void*)setAfterTalkMotion__14daNpc_clerkB_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__14daNpc_clerkB_cFv,
    (void*)beforeMove__14daNpc_clerkB_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__14daNpc_clerkB_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__14daNpc_clerkB_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__14daNpc_clerkB_cFv,
    (void*)drawOtherMdl__14daNpc_clerkB_cFv,
    (void*)drawGhost__14daNpc_clerkB_cFv,
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
    (void*)beforeStartSeqAction__14daNpc_clerkB_cFP10dMsgFlow_ci,
    (void*)beforeSelectSeqAction__14daNpc_clerkB_cFP10dMsgFlow_ci,
};

/* 80995F2C-80996090 0000EC 0164+00 1/0 0/0 0/0 .text            __dt__14daNpc_clerkB_cFv */
daNpc_clerkB_c::~daNpc_clerkB_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80999978-80999A0C 000000 0094+00 10/10 0/0 0/0 .rodata          m__20daNpc_clerkB_Param_c */
SECTION_RODATA u8 const daNpc_clerkB_Param_c::m[148] = {
    0x43, 0x5C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xFA, 0x00,
    0x00, 0x43, 0x7F, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1,
    0x20, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00,
    0xC2, 0x34, 0x00, 0x00, 0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00,
    0x06, 0x00, 0x05, 0x00, 0x06, 0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0xC1, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xC1, 0xA0, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00, 0x41, 0xA0, 0x00,
    0x00, 0x42, 0xDC, 0x00, 0x00, 0x43, 0x2A, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80999978, &daNpc_clerkB_Param_c::m);

/* 80999A0C-80999A10 000094 0004+00 0/1 0/0 0/0 .rodata          @4035 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4035 = -300.0f;
COMPILER_STRIP_GATE(0x80999A0C, &lit_4035);
#pragma pop

/* 80999A10-80999A14 000098 0004+00 0/1 0/0 0/0 .rodata          @4036 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4036 = -50.0f;
COMPILER_STRIP_GATE(0x80999A10, &lit_4036);
#pragma pop

/* 80999A14-80999A18 00009C 0004+00 0/1 0/0 0/0 .rodata          @4037 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4037 = 300.0f;
COMPILER_STRIP_GATE(0x80999A14, &lit_4037);
#pragma pop

/* 80999A18-80999A1C 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4038 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4038 = 450.0f;
COMPILER_STRIP_GATE(0x80999A18, &lit_4038);
#pragma pop

/* 80999A1C-80999A20 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4039 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4039 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80999A1C, &lit_4039);
#pragma pop

/* 80996090-80996338 000250 02A8+00 1/1 0/0 0/0 .text            create__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80999A20-80999A24 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4149 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4149 = 0.25f;
COMPILER_STRIP_GATE(0x80999A20, &lit_4149);
#pragma pop

/* 80999A24-80999A28 0000AC 0004+00 0/2 0/0 0/0 .rodata          @4150 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4150 = 20.0f;
COMPILER_STRIP_GATE(0x80999A24, &lit_4150);
#pragma pop

/* 80999A28-80999A2C 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4151 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4151 = 5.0f;
COMPILER_STRIP_GATE(0x80999A28, &lit_4151);
#pragma pop

/* 80999A2C-80999A30 0000B4 0004+00 7/14 0/0 0/0 .rodata          @4152 */
SECTION_RODATA static u8 const lit_4152[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80999A2C, &lit_4152);

/* 80999A30-80999A34 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4153 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4153 = 100.0f;
COMPILER_STRIP_GATE(0x80999A30, &lit_4153);
#pragma pop

/* 80999A34-80999A38 0000BC 0004+00 0/2 0/0 0/0 .rodata          @4154 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4154 = 60.0f;
COMPILER_STRIP_GATE(0x80999A34, &lit_4154);
#pragma pop

/* 80999A38-80999A3C 0000C0 0004+00 0/2 0/0 0/0 .rodata          @4373 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4373 = 65536.0f;
COMPILER_STRIP_GATE(0x80999A38, &lit_4373);
#pragma pop

/* 80999A3C-80999A40 0000C4 0004+00 0/3 0/0 0/0 .rodata          @4374 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4374 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80999A3C, &lit_4374);
#pragma pop

/* 80999A40-80999A44 0000C8 0004+00 2/4 0/0 0/0 .rodata          @4513 */
SECTION_RODATA static f32 const lit_4513 = 1.0f;
COMPILER_STRIP_GATE(0x80999A40, &lit_4513);

/* 80996338-80996608 0004F8 02D0+00 1/1 0/0 0/0 .text            CreateHeap__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::CreateHeap() {
    // NONMATCHING
}

/* 80996608-80996644 0007C8 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80996644-8099665C 000804 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 8099665C-80996698 00081C 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80996698-809966B0 000858 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 809966B0-809966F8 000870 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 809966F8-8099671C 0008B8 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 8099671C-80996758 0008DC 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80996758-80996770 000918 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80996770-809967AC 000930 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 809967AC-809967C4 00096C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 809967C4-809967F8 000984 0034+00 1/1 0/0 0/0 .text            Delete__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::Delete() {
    // NONMATCHING
}

/* 809967F8-809968D0 0009B8 00D8+00 2/2 0/0 0/0 .text            Execute__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::Execute() {
    // NONMATCHING
}

/* 809968D0-80996964 000A90 0094+00 1/1 0/0 0/0 .text            Draw__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::Draw() {
    // NONMATCHING
}

/* 80996964-80996984 000B24 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__14daNpc_clerkB_cFP10fopAc_ac_c           */
void daNpc_clerkB_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80996984-809969DC 000B44 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__14daNpc_clerkB_cFP8J3DJointi              */
void daNpc_clerkB_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 809969DC-809969FC 000B9C 0020+00 1/1 0/0 0/0 .text            getType__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::getType() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80999A44-80999A48 0000CC 0004+00 3/5 0/0 0/0 .rodata          @4683 */
SECTION_RODATA static f32 const lit_4683 = -1.0f;
COMPILER_STRIP_GATE(0x80999A44, &lit_4683);

/* 80999A48-80999A4C 0000D0 0004+00 0/2 0/0 0/0 .rodata          @4684 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4684 = 0.75f;
COMPILER_STRIP_GATE(0x80999A48, &lit_4684);
#pragma pop

/* 80999A4C-80999A50 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4685 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4685 = 13.0f;
COMPILER_STRIP_GATE(0x80999A4C, &lit_4685);
#pragma pop

/* 80999A50-80999A58 0000D8 0004+04 0/1 0/0 0/0 .rodata          @4686 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4686[1 + 1 /* padding */] = {
    10.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80999A50, &lit_4686);
#pragma pop

/* 80999A58-80999A60 0000E0 0008+00 1/5 0/0 0/0 .rodata          @4688 */
SECTION_RODATA static u8 const lit_4688[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80999A58, &lit_4688);

/* 809969FC-80996CCC 000BBC 02D0+00 1/0 0/0 0/0 .text
 * beforeStartSeqAction__14daNpc_clerkB_cFP10dMsgFlow_ci        */
void daNpc_clerkB_c::beforeStartSeqAction(dMsgFlow_c* param_0, int param_1) {
    // NONMATCHING
}

/* 80996CCC-80996F7C 000E8C 02B0+00 1/0 0/0 0/0 .text
 * beforeSelectSeqAction__14daNpc_clerkB_cFP10dMsgFlow_ci       */
void daNpc_clerkB_c::beforeSelectSeqAction(dMsgFlow_c* param_0, int param_1) {
    // NONMATCHING
}

/* 80996F7C-80996FAC 00113C 0030+00 1/1 0/0 0/0 .text            isDelete__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::isDelete() {
    // NONMATCHING
}

/* 80996FAC-809970E0 00116C 0134+00 1/1 0/0 0/0 .text            reset__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::reset() {
    // NONMATCHING
}

/* 809970E0-80997188 0012A0 00A8+00 1/0 0/0 0/0 .text            afterJntAnm__14daNpc_clerkB_cFi */
void daNpc_clerkB_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 80997188-809972BC 001348 0134+00 1/0 0/0 0/0 .text            setParam__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::setParam() {
    // NONMATCHING
}

/* 809972BC-80997360 00147C 00A4+00 1/0 0/0 0/0 .text setAfterTalkMotion__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80997360-809973BC 001520 005C+00 1/1 0/0 0/0 .text            srchActors__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::srchActors() {
    // NONMATCHING
}

/* 809973BC-80997598 00157C 01DC+00 1/0 0/0 0/0 .text            evtTalk__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::evtTalk() {
    // NONMATCHING
}

/* 80997598-80997660 001758 00C8+00 1/0 0/0 0/0 .text            evtCutProc__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::evtCutProc() {
    // NONMATCHING
}

/* 80997660-8099774C 001820 00EC+00 1/0 0/0 0/0 .text            action__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::action() {
    // NONMATCHING
}

/* 8099774C-809977C4 00190C 0078+00 1/0 0/0 0/0 .text            beforeMove__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80999A60-80999A64 0000E8 0004+00 0/1 0/0 0/0 .rodata          @5029 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5029 = -30.0f;
COMPILER_STRIP_GATE(0x80999A60, &lit_5029);
#pragma pop

/* 80999A64-80999A68 0000EC 0004+00 0/1 0/0 0/0 .rodata          @5030 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5030 = 15.0f;
COMPILER_STRIP_GATE(0x80999A64, &lit_5030);
#pragma pop

/* 80999A68-80999A70 0000F0 0004+04 0/1 0/0 0/0 .rodata          @5031 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5031[1 + 1 /* padding */] = {
    0x38C90FDB,
    /* padding */
    0x00000000,
};
COMPILER_STRIP_GATE(0x80999A68, &lit_5031);
#pragma pop

/* 809977C4-80997A1C 001984 0258+00 1/0 0/0 0/0 .text            setAttnPos__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::setAttnPos() {
    // NONMATCHING
}

/* 80997A1C-80997B50 001BDC 0134+00 1/0 0/0 0/0 .text            setCollision__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::setCollision() {
    // NONMATCHING
}

/* 80997B50-80997B58 001D10 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__14daNpc_clerkB_cFv */
bool daNpc_clerkB_c::drawDbgInfo() {
    return false;
}

/* 80997B58-80997BB8 001D18 0060+00 1/0 0/0 0/0 .text            drawOtherMdl__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::drawOtherMdl() {
    // NONMATCHING
}

/* 80997BB8-80997C44 001D78 008C+00 1/0 0/0 0/0 .text            drawGhost__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::drawGhost() {
    // NONMATCHING
}

/* 80997C44-80997CC0 001E04 007C+00 1/1 0/0 0/0 .text            selectAction__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::selectAction() {
    // NONMATCHING
}

/* 80997CC0-80997CEC 001E80 002C+00 1/1 0/0 0/0 .text
 * chkAction__14daNpc_clerkB_cFM14daNpc_clerkB_cFPCvPvPv_i      */
void daNpc_clerkB_c::chkAction(int (daNpc_clerkB_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80997CEC-80997D94 001EAC 00A8+00 2/2 0/0 0/0 .text
 * setAction__14daNpc_clerkB_cFM14daNpc_clerkB_cFPCvPvPv_i      */
void daNpc_clerkB_c::setAction(int (daNpc_clerkB_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80997D94-80997E54 001F54 00C0+00 1/1 0/0 0/0 .text            setSe__14daNpc_clerkB_cFv */
void daNpc_clerkB_c::setSe() {
    // NONMATCHING
}

/* 80997E54-809980AC 002014 0258+00 1/0 0/0 0/0 .text            wait__14daNpc_clerkB_cFPv */
void daNpc_clerkB_c::wait(void* param_0) {
    // NONMATCHING
}

/* 809980AC-80998328 00226C 027C+00 1/0 0/0 0/0 .text            tend__14daNpc_clerkB_cFPv */
void daNpc_clerkB_c::tend(void* param_0) {
    // NONMATCHING
}

/* 80998328-80998520 0024E8 01F8+00 2/0 0/0 0/0 .text            talk__14daNpc_clerkB_cFPv */
void daNpc_clerkB_c::talk(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80999A70-80999A78 0000F8 0008+00 0/1 0/0 0/0 .rodata          @5090 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5090[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80999A70, &lit_5090);
#pragma pop

/* 80999A78-80999A80 000100 0008+00 0/1 0/0 0/0 .rodata          @5091 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5091[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80999A78, &lit_5091);
#pragma pop

/* 80999A80-80999A88 000108 0008+00 0/1 0/0 0/0 .rodata          @5092 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5092[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80999A80, &lit_5092);
#pragma pop

/* 80999A88-80999A8C 000110 0004+00 0/1 0/0 0/0 .rodata          @5506 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5506 = 150.0f;
COMPILER_STRIP_GATE(0x80999A88, &lit_5506);
#pragma pop

/* 80998520-809988DC 0026E0 03BC+00 2/0 0/0 0/0 .text            shop__14daNpc_clerkB_cFPv */
void daNpc_clerkB_c::shop(void* param_0) {
    // NONMATCHING
}

/* 809988DC-809988FC 002A9C 0020+00 1/0 0/0 0/0 .text            daNpc_clerkB_Create__FPv */
static void daNpc_clerkB_Create(void* param_0) {
    // NONMATCHING
}

/* 809988FC-8099891C 002ABC 0020+00 1/0 0/0 0/0 .text            daNpc_clerkB_Delete__FPv */
static void daNpc_clerkB_Delete(void* param_0) {
    // NONMATCHING
}

/* 8099891C-8099893C 002ADC 0020+00 1/0 0/0 0/0 .text            daNpc_clerkB_Execute__FPv */
static void daNpc_clerkB_Execute(void* param_0) {
    // NONMATCHING
}

/* 8099893C-8099895C 002AFC 0020+00 1/0 0/0 0/0 .text            daNpc_clerkB_Draw__FPv */
static void daNpc_clerkB_Draw(void* param_0) {
    // NONMATCHING
}

/* 8099895C-80998964 002B1C 0008+00 1/0 0/0 0/0 .text            daNpc_clerkB_IsDelete__FPv */
static bool daNpc_clerkB_IsDelete(void* param_0) {
    return true;
}

/* 80998964-80998994 002B24 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80998994-809989DC 002B54 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 809989DC-80998A24 002B9C 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80998A24-80998A60 002BE4 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80998A60-80998AA8 002C20 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80998AA8-80998AF0 002C68 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80998AF0-80998B2C 002CB0 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80998B2C-80998B74 002CEC 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80998B74-80998F78 002D34 0404+00 1/1 0/0 0/0 .text
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

/* 80998F78-80998F7C 003138 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80998F7C-80999078 00313C 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80999078-8099907C 003238 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 8099907C-809990C4 00323C 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 809990C4-80999134 003284 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80999134-80999190 0032F4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80999190-80999200 003350 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80999200-8099931C 0033C0 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 8099931C-80999524 0034DC 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80999524-80999528 0036E4 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80999538-80999540 0036F8 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80999540-80999548 003700 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80999550-80999558 003710 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 8099955C-80999564 00371C 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80999564-8099957C 003724 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 8099957C-80999584 00373C 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80999584-8099958C 003744 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 8099958C-809995BC 00374C 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 809995BC-809995EC 00377C 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 809995EC-809995F0 0037AC 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809995F0-809995F4 0037B0 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809995F4-809995F8 0037B4 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809995F8-809995FC 0037B8 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809995FC-80999618 0037BC 001C+00 2/2 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_809995FC(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8099A030-8099A03C 000580 000C+00 2/2 0/0 0/0 .data            __vt__20daNpc_clerkB_Param_c */
SECTION_DATA extern void* __vt__20daNpc_clerkB_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__20daNpc_clerkB_Param_cFv,
};

/* 8099A048-8099A054 000008 000C+00 1/1 0/0 0/0 .bss             @3931 */
static u8 lit_3931[12];

/* 8099A054-8099A058 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80999618-80999680 0037D8 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_clerkb_cpp */
void __sinit_d_a_npc_clerkb_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80999618, __sinit_d_a_npc_clerkb_cpp);
#pragma pop

/* 80999680-80999770 003840 00F0+00 1/1 0/0 0/0 .text
 * __ct__14daNpc_clerkB_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_clerkB_c::daNpc_clerkB_c(daNpcT_faceMotionAnmData_c const* param_0,
                                   daNpcT_motionAnmData_c const* param_1,
                                   daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                   int param_3,
                                   daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                   int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80999770-809997AC 003930 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 809997AC-809997B4 00396C 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__14daNpc_clerkB_cFv */
u16 daNpc_clerkB_c::getEyeballMaterialNo() {
    return 3;
}

/* 809997B4-809997BC 003974 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__14daNpc_clerkB_cFv
 */
s32 daNpc_clerkB_c::getHeadJointNo() {
    return 4;
}

/* 809997BC-809997C4 00397C 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__14daNpc_clerkB_cFv
 */
s32 daNpc_clerkB_c::getNeckJointNo() {
    return 3;
}

/* 809997C4-809997CC 003984 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__14daNpc_clerkB_cFv */
bool daNpc_clerkB_c::getBackboneJointNo() {
    return true;
}

/* 809997CC-809997DC 00398C 0010+00 1/0 0/0 0/0 .text checkChangeJoint__14daNpc_clerkB_cFi */
void daNpc_clerkB_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 809997DC-809997EC 00399C 0010+00 1/0 0/0 0/0 .text checkRemoveJoint__14daNpc_clerkB_cFi */
void daNpc_clerkB_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 809997EC-80999834 0039AC 0048+00 2/1 0/0 0/0 .text            __dt__20daNpc_clerkB_Param_cFv */
daNpc_clerkB_Param_c::~daNpc_clerkB_Param_c() {
    // NONMATCHING
}

/* 80999834-8099983C 0039F4 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80999834() {
    // NONMATCHING
}

/* 8099983C-80999844 0039FC 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8099983C() {
    // NONMATCHING
}

/* 80999844-8099995C 003A04 0118+00 1/1 0/0 0/0 .text
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

/* 8099995C-80999964 003B1C 0008+00 1/0 0/0 0/0 .text            getResName2__13dShopSystem_cFi */
// bool dShopSystem_c::getResName2(int param_0) {
extern "C" bool getResName2__13dShopSystem_cFi() {
    return false;
}

/* 80999A8C-80999A8C 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
