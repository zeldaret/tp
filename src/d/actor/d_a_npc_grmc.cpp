/**
 * @file d_a_npc_grmc.cpp
 * 
*/

#include "d/actor/d_a_npc_grmc.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__12daNpc_grMC_cFv();
extern "C" void create__12daNpc_grMC_cFv();
extern "C" void CreateHeap__12daNpc_grMC_cFv();
extern "C" void Delete__12daNpc_grMC_cFv();
extern "C" void Execute__12daNpc_grMC_cFv();
extern "C" void Draw__12daNpc_grMC_cFv();
extern "C" void createHeapCallBack__12daNpc_grMC_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__12daNpc_grMC_cFP8J3DJointi();
extern "C" bool getType__12daNpc_grMC_cFv();
extern "C" void getFlowNodeNo__12daNpc_grMC_cFv();
extern "C" void getMaxNumItem__12daNpc_grMC_cFv();
extern "C" void isDelete__12daNpc_grMC_cFv();
extern "C" void reset__12daNpc_grMC_cFv();
extern "C" void afterJntAnm__12daNpc_grMC_cFi();
extern "C" void setParam__12daNpc_grMC_cFv();
extern "C" void setAfterTalkMotion__12daNpc_grMC_cFv();
extern "C" void srchActors__12daNpc_grMC_cFv();
extern "C" void evtTalk__12daNpc_grMC_cFv();
extern "C" void evtCutProc__12daNpc_grMC_cFv();
extern "C" void action__12daNpc_grMC_cFv();
extern "C" void beforeMove__12daNpc_grMC_cFv();
extern "C" void setAttnPos__12daNpc_grMC_cFv();
extern "C" void setCollision__12daNpc_grMC_cFv();
extern "C" bool drawDbgInfo__12daNpc_grMC_cFv();
extern "C" void drawOtherMdl__12daNpc_grMC_cFv();
extern "C" void selectAction__12daNpc_grMC_cFv();
extern "C" void chkAction__12daNpc_grMC_cFM12daNpc_grMC_cFPCvPvPv_i();
extern "C" void setAction__12daNpc_grMC_cFM12daNpc_grMC_cFPCvPvPv_i();
extern "C" void tend__12daNpc_grMC_cFPv();
extern "C" void talk__12daNpc_grMC_cFPv();
extern "C" void shop__12daNpc_grMC_cFPv();
extern "C" static void daNpc_grMC_Create__FPv();
extern "C" static void daNpc_grMC_Delete__FPv();
extern "C" static void daNpc_grMC_Execute__FPv();
extern "C" static void daNpc_grMC_Draw__FPv();
extern "C" static bool daNpc_grMC_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void
__ct__12daNpc_grMC_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__4cXyzFv();
extern "C" s32 getHeadJointNo__12daNpc_grMC_cFv();
extern "C" s32 getNeckJointNo__12daNpc_grMC_cFv();
extern "C" bool getBackboneJointNo__12daNpc_grMC_cFv();
extern "C" void checkChangeJoint__12daNpc_grMC_cFi();
extern "C" void checkRemoveJoint__12daNpc_grMC_cFi();
extern "C" s32 getEyeballMaterialNo__12daNpc_grMC_cFv();
extern "C" void __dt__18daNpc_grMC_Param_cFv();
extern "C" static void func_809D905C();
extern "C" static void func_809D9064();
extern "C" void
__ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" bool getResName2__13dShopSystem_cFi();
extern "C" bool beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci();
extern "C" bool beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci();
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
extern "C" void __sinit_d_a_npc_grmc_cpp();
extern "C" u8 const m__18daNpc_grMC_Param_c[140];
extern "C" extern char const* const d_a_npc_grmc__stringBase0;
extern "C" void* mCutNameList__12daNpc_grMC_c;
extern "C" u8 mCutList__12daNpc_grMC_c[12];

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
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
extern "C" void clrParam__8daNpcT_cFv();
extern "C" void setFaceMotionAnm__8daNpcT_cFib();
extern "C" void setMotionAnm__8daNpcT_cFifi();
extern "C" void setAngle__8daNpcT_cFs();
extern "C" void hitChk__8daNpcT_cFP12dCcD_GObjInfUl();
extern "C" void setDamage__8daNpcT_cFiii();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void shop_cam_action_init__16ShopCam_action_cFv();
extern "C" void Save__16ShopCam_action_cFv();
extern "C" void EventRecoverNotime__16ShopCam_action_cFv();
extern "C" void Reset__16ShopCam_action_cFv();
extern "C" void move__16ShopCam_action_cFv();
extern "C" void __ct__15dShopItemCtrl_cFv();
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
extern "C" extern void* __vt__13dShopSystem_c[52 + 1 /* padding */];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 809D9E68-809D9E68 0000F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809D9E68 = "";
SECTION_DEAD static char const* const stringBase_809D9E69 = "DEFAULT_GETITEM";
SECTION_DEAD static char const* const stringBase_809D9E79 = "grC";
SECTION_DEAD static char const* const stringBase_809D9E7D = "grC_Mdl";
#pragma pop

/* 809D9E8C-809D9E98 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 809D9E98-809D9EAC 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 809D9EAC-809D9EB4 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02,
};

/* 809D9EB4-809D9EC4 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[4] = {
    (void*)&d_a_npc_grmc__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_grmc__stringBase0) + 0x1),
    (void*)NULL,
};
#pragma pop

/* 809D9EC4-809D9ED0 -00001 000C+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[3] = {
    (void*)&d_a_npc_grmc__stringBase0,
    (void*)(((char*)&d_a_npc_grmc__stringBase0) + 0x11),
    (void*)(((char*)&d_a_npc_grmc__stringBase0) + 0x15),
};

/* 809D9ED0-809D9ED4 000044 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u8 l_loadResPtrn0[3 + 1 /* padding */] = {
    0x01,
    0x02,
    0xFF,
    /* padding */
    0x00,
};

/* 809D9ED4-809D9ED8 -00001 0004+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList = (void*)&l_loadResPtrn0;

/* 809D9ED8-809D9FD4 00004C 00FC+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[252] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x21,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1F,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 809D9FD4-809DA0D0 000148 00FC+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[252] = {
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 809DA0D0-809DA1B0 000244 00E0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[224] = {
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 809DA1B0-809DA240 000324 0090+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[144] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 809DA240-809DA244 -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_grMC_c */
SECTION_DATA void* daNpc_grMC_c::mCutNameList = (void*)&d_a_npc_grmc__stringBase0;

/* 809DA244-809DA250 0003B8 000C+00 2/2 0/0 0/0 .data            mCutList__12daNpc_grMC_c */
SECTION_DATA u8 daNpc_grMC_c::mCutList[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 809DA250-809DA25C -00001 000C+00 0/1 0/0 0/0 .data            @4582 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4582[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__12daNpc_grMC_cFPv,
};
#pragma pop

/* 809DA25C-809DA268 -00001 000C+00 0/1 0/0 0/0 .data            @4590 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4590[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__12daNpc_grMC_cFPv,
};
#pragma pop

/* 809DA268-809DA274 -00001 000C+00 0/1 0/0 0/0 .data            @4593 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4593[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_grMC_cFPv,
};
#pragma pop

/* 809DA274-809DA280 -00001 000C+00 0/1 0/0 0/0 .data            @4601 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4601[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_grMC_cFPv,
};
#pragma pop

/* 809DA280-809DA28C -00001 000C+00 1/1 0/0 0/0 .data            @4858 */
SECTION_DATA static void* lit_4858[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tend__12daNpc_grMC_cFPv,
};

/* 809DA28C-809DA298 -00001 000C+00 1/1 0/0 0/0 .data            @4977 */
SECTION_DATA static void* lit_4977[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tend__12daNpc_grMC_cFPv,
};

/* 809DA298-809DA2B8 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_grMC_MethodTable */
static actor_method_class daNpc_grMC_MethodTable = {
    (process_method_func)daNpc_grMC_Create__FPv,
    (process_method_func)daNpc_grMC_Delete__FPv,
    (process_method_func)daNpc_grMC_Execute__FPv,
    (process_method_func)daNpc_grMC_IsDelete__FPv,
    (process_method_func)daNpc_grMC_Draw__FPv,
};

/* 809DA2B8-809DA2E8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_GRMC */
extern actor_process_profile_definition g_profile_NPC_GRMC = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_GRMC,           // mProcName
  &g_fpcLf_Method.mBase,   // sub_method
  sizeof(daNpc_grMC_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  310,                     // mPriority
  &daNpc_grMC_MethodTable, // sub_method
  0x00044107,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 809DA2E8-809DA2F4 00045C 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 809DA2F4-809DA318 000468 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809D9064,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809D905C,
};

/* 809DA318-809DA324 00048C 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 809DA324-809DA330 000498 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 809DA330-809DA33C 0004A4 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 809DA33C-809DA348 0004B0 000C+00 2/2 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 809DA348-809DA354 0004BC 000C+00 3/3 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 809DA354-809DA360 0004C8 000C+00 2/2 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 809DA360-809DA36C 0004D4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 809DA36C-809DA378 0004E0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 809DA378-809DA448 0004EC 00D0+00 2/2 0/0 0/0 .data            __vt__12daNpc_grMC_c */
SECTION_DATA extern void* __vt__12daNpc_grMC_c[52] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daNpc_grMC_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__12daNpc_grMC_cFi,
    (void*)checkRemoveJoint__12daNpc_grMC_cFi,
    (void*)getBackboneJointNo__12daNpc_grMC_cFv,
    (void*)getNeckJointNo__12daNpc_grMC_cFv,
    (void*)getHeadJointNo__12daNpc_grMC_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__12daNpc_grMC_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__12daNpc_grMC_cFi,
    (void*)setParam__12daNpc_grMC_cFv,
    (void*)checkChangeEvt__8daNpcT_cFv,
    (void*)evtTalk__12daNpc_grMC_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__12daNpc_grMC_cFv,
    (void*)setAfterTalkMotion__12daNpc_grMC_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__12daNpc_grMC_cFv,
    (void*)beforeMove__12daNpc_grMC_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__12daNpc_grMC_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__12daNpc_grMC_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__12daNpc_grMC_cFv,
    (void*)drawOtherMdl__12daNpc_grMC_cFv,
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

/* 809D740C-809D7534 0000EC 0128+00 1/0 0/0 0/0 .text            __dt__12daNpc_grMC_cFv */
daNpc_grMC_c::~daNpc_grMC_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D9D70-809D9DFC 000000 008C+00 8/8 0/0 0/0 .rodata          m__18daNpc_grMC_Param_c */
SECTION_RODATA u8 const daNpc_grMC_Param_c::m[140] = {
    0x43, 0x0C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x44, 0x16, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x0C, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x38, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x05, 0x00, 0x02, 0x00, 0x05, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0xC1, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0xA0, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
    0x42, 0x20, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x42, 0xDC, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D9D70, &daNpc_grMC_Param_c::m);

/* 809D9DFC-809D9E00 00008C 0004+00 0/1 0/0 0/0 .rodata          @3914 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3914 = -300.0f;
COMPILER_STRIP_GATE(0x809D9DFC, &lit_3914);
#pragma pop

/* 809D9E00-809D9E04 000090 0004+00 0/1 0/0 0/0 .rodata          @3915 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3915 = -50.0f;
COMPILER_STRIP_GATE(0x809D9E00, &lit_3915);
#pragma pop

/* 809D9E04-809D9E08 000094 0004+00 0/1 0/0 0/0 .rodata          @3916 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3916 = 300.0f;
COMPILER_STRIP_GATE(0x809D9E04, &lit_3916);
#pragma pop

/* 809D9E08-809D9E0C 000098 0004+00 0/1 0/0 0/0 .rodata          @3917 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3917 = 450.0f;
COMPILER_STRIP_GATE(0x809D9E08, &lit_3917);
#pragma pop

/* 809D7534-809D77BC 000214 0288+00 1/1 0/0 0/0 .text            create__12daNpc_grMC_cFv */
void daNpc_grMC_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D9E0C-809D9E10 00009C 0004+00 0/1 0/0 0/0 .rodata          @4005 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4005 = 0.25f;
COMPILER_STRIP_GATE(0x809D9E0C, &lit_4005);
#pragma pop

/* 809D9E10-809D9E14 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4006 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4006 = 20.0f;
COMPILER_STRIP_GATE(0x809D9E10, &lit_4006);
#pragma pop

/* 809D9E14-809D9E18 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4007 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4007 = 5.0f;
COMPILER_STRIP_GATE(0x809D9E14, &lit_4007);
#pragma pop

/* 809D9E18-809D9E1C 0000A8 0004+00 5/11 0/0 0/0 .rodata          @4008 */
SECTION_RODATA static u8 const lit_4008[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809D9E18, &lit_4008);

/* 809D9E1C-809D9E20 0000AC 0004+00 1/2 0/0 0/0 .rodata          @4009 */
SECTION_RODATA static f32 const lit_4009 = 100.0f;
COMPILER_STRIP_GATE(0x809D9E1C, &lit_4009);

/* 809D9E20-809D9E24 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4010 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4010 = 60.0f;
COMPILER_STRIP_GATE(0x809D9E20, &lit_4010);
#pragma pop

/* 809D9E24-809D9E28 0000B4 0004+00 0/2 0/0 0/0 .rodata          @4232 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4232 = 65536.0f;
COMPILER_STRIP_GATE(0x809D9E24, &lit_4232);
#pragma pop

/* 809D9E28-809D9E2C 0000B8 0004+00 0/3 0/0 0/0 .rodata          @4233 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4233 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x809D9E28, &lit_4233);
#pragma pop

/* 809D9E2C-809D9E30 0000BC 0004+00 1/4 0/0 0/0 .rodata          @4384 */
SECTION_RODATA static f32 const lit_4384 = 1.0f;
COMPILER_STRIP_GATE(0x809D9E2C, &lit_4384);

/* 809D9E30-809D9E34 0000C0 0004+00 2/3 0/0 0/0 .rodata          @4385 */
SECTION_RODATA static f32 const lit_4385 = -1.0f;
COMPILER_STRIP_GATE(0x809D9E30, &lit_4385);

/* 809D77BC-809D79BC 00049C 0200+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_grMC_cFv */
void daNpc_grMC_c::CreateHeap() {
    // NONMATCHING
}

/* 809D79BC-809D79F0 00069C 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_grMC_cFv */
void daNpc_grMC_c::Delete() {
    // NONMATCHING
}

/* 809D79F0-809D7AD4 0006D0 00E4+00 2/2 0/0 0/0 .text            Execute__12daNpc_grMC_cFv */
void daNpc_grMC_c::Execute() {
    // NONMATCHING
}

/* 809D7AD4-809D7B18 0007B4 0044+00 1/1 0/0 0/0 .text            Draw__12daNpc_grMC_cFv */
void daNpc_grMC_c::Draw() {
    // NONMATCHING
}

/* 809D7B18-809D7B38 0007F8 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daNpc_grMC_cFP10fopAc_ac_c             */
void daNpc_grMC_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809D7B38-809D7B90 000818 0058+00 2/2 0/0 0/0 .text
 * ctrlJointCallBack__12daNpc_grMC_cFP8J3DJointi                */
void daNpc_grMC_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 809D7B90-809D7B98 000870 0008+00 1/1 0/0 0/0 .text            getType__12daNpc_grMC_cFv */
bool daNpc_grMC_c::getType() {
    return false;
}

/* 809D7B98-809D7BB4 000878 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__12daNpc_grMC_cFv */
void daNpc_grMC_c::getFlowNodeNo() {
    // NONMATCHING
}

/* 809D7BB4-809D7BC0 000894 000C+00 1/1 0/0 0/0 .text            getMaxNumItem__12daNpc_grMC_cFv */
void daNpc_grMC_c::getMaxNumItem() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D9E34-809D9E38 0000C4 0004+00 1/1 0/0 0/0 .rodata          @4481 */
SECTION_RODATA static f32 const lit_4481 = 90.0f;
COMPILER_STRIP_GATE(0x809D9E34, &lit_4481);

/* 809D9E38-809D9E3C 0000C8 0004+00 1/1 0/0 0/0 .rodata          @4482 */
SECTION_RODATA static f32 const lit_4482 = 270.0f;
COMPILER_STRIP_GATE(0x809D9E38, &lit_4482);

/* 809D7BC0-809D7C34 0008A0 0074+00 1/1 0/0 0/0 .text            isDelete__12daNpc_grMC_cFv */
void daNpc_grMC_c::isDelete() {
    // NONMATCHING
}

/* 809D7C34-809D7D48 000914 0114+00 1/1 0/0 0/0 .text            reset__12daNpc_grMC_cFv */
void daNpc_grMC_c::reset() {
    // NONMATCHING
}

/* 809D7D48-809D7DD4 000A28 008C+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_grMC_cFi */
void daNpc_grMC_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 809D7DD4-809D7F28 000AB4 0154+00 1/0 0/0 0/0 .text            setParam__12daNpc_grMC_cFv */
void daNpc_grMC_c::setParam() {
    // NONMATCHING
}

/* 809D7F28-809D7FCC 000C08 00A4+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_grMC_cFv */
void daNpc_grMC_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 809D7FCC-809D7FD0 000CAC 0004+00 1/1 0/0 0/0 .text            srchActors__12daNpc_grMC_cFv */
void daNpc_grMC_c::srchActors() {
    /* empty function */
}

/* 809D7FD0-809D8174 000CB0 01A4+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_grMC_cFv */
void daNpc_grMC_c::evtTalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D9E68-809D9E68 0000F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809D9E85 = "grMC";
#pragma pop

/* 809D8174-809D823C 000E54 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_grMC_cFv */
void daNpc_grMC_c::evtCutProc() {
    // NONMATCHING
}

/* 809D823C-809D8398 000F1C 015C+00 1/0 0/0 0/0 .text            action__12daNpc_grMC_cFv */
void daNpc_grMC_c::action() {
    // NONMATCHING
}

/* 809D8398-809D8410 001078 0078+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_grMC_cFv */
void daNpc_grMC_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D9E3C-809D9E40 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4734 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4734 = 18.0f;
COMPILER_STRIP_GATE(0x809D9E3C, &lit_4734);
#pragma pop

/* 809D9E40-809D9E44 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4735 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4735 = 30.0f;
COMPILER_STRIP_GATE(0x809D9E40, &lit_4735);
#pragma pop

/* 809D9E44-809D9E48 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4736 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4736 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x809D9E44, &lit_4736);
#pragma pop

/* 809D9E48-809D9E50 0000D8 0008+00 1/3 0/0 0/0 .rodata          @4738 */
SECTION_RODATA static u8 const lit_4738[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D9E48, &lit_4738);

/* 809D8410-809D8670 0010F0 0260+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_grMC_cFv */
void daNpc_grMC_c::setAttnPos() {
    // NONMATCHING
}

/* 809D8670-809D87A0 001350 0130+00 1/0 0/0 0/0 .text            setCollision__12daNpc_grMC_cFv */
void daNpc_grMC_c::setCollision() {
    // NONMATCHING
}

/* 809D87A0-809D87A8 001480 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_grMC_cFv */
bool daNpc_grMC_c::drawDbgInfo() {
    return false;
}

/* 809D87A8-809D8808 001488 0060+00 1/0 0/0 0/0 .text            drawOtherMdl__12daNpc_grMC_cFv */
void daNpc_grMC_c::drawOtherMdl() {
    // NONMATCHING
}

/* 809D8808-809D8850 0014E8 0048+00 1/1 0/0 0/0 .text            selectAction__12daNpc_grMC_cFv */
void daNpc_grMC_c::selectAction() {
    // NONMATCHING
}

/* 809D8850-809D887C 001530 002C+00 1/1 0/0 0/0 .text
 * chkAction__12daNpc_grMC_cFM12daNpc_grMC_cFPCvPvPv_i          */
void daNpc_grMC_c::chkAction(int (daNpc_grMC_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809D887C-809D8924 00155C 00A8+00 2/2 0/0 0/0 .text
 * setAction__12daNpc_grMC_cFM12daNpc_grMC_cFPCvPvPv_i          */
void daNpc_grMC_c::setAction(int (daNpc_grMC_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809D8924-809D8AE8 001604 01C4+00 2/0 0/0 0/0 .text            tend__12daNpc_grMC_cFPv */
void daNpc_grMC_c::tend(void* param_0) {
    // NONMATCHING
}

/* 809D8AE8-809D8C6C 0017C8 0184+00 2/0 0/0 0/0 .text            talk__12daNpc_grMC_cFPv */
void daNpc_grMC_c::talk(void* param_0) {
    // NONMATCHING
}

/* 809D8C6C-809D8D8C 00194C 0120+00 2/0 0/0 0/0 .text            shop__12daNpc_grMC_cFPv */
void daNpc_grMC_c::shop(void* param_0) {
    // NONMATCHING
}

/* 809D8D8C-809D8DAC 001A6C 0020+00 1/0 0/0 0/0 .text            daNpc_grMC_Create__FPv */
static void daNpc_grMC_Create(void* param_0) {
    // NONMATCHING
}

/* 809D8DAC-809D8DCC 001A8C 0020+00 1/0 0/0 0/0 .text            daNpc_grMC_Delete__FPv */
static void daNpc_grMC_Delete(void* param_0) {
    // NONMATCHING
}

/* 809D8DCC-809D8DEC 001AAC 0020+00 1/0 0/0 0/0 .text            daNpc_grMC_Execute__FPv */
static void daNpc_grMC_Execute(void* param_0) {
    // NONMATCHING
}

/* 809D8DEC-809D8E0C 001ACC 0020+00 1/0 0/0 0/0 .text            daNpc_grMC_Draw__FPv */
static void daNpc_grMC_Draw(void* param_0) {
    // NONMATCHING
}

/* 809D8E0C-809D8E14 001AEC 0008+00 1/0 0/0 0/0 .text            daNpc_grMC_IsDelete__FPv */
static bool daNpc_grMC_IsDelete(void* param_0) {
    return true;
}

/* 809D8E14-809D8E5C 001AF4 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 809D8E5C-809D8F08 001B3C 00AC+00 1/1 0/0 0/0 .text
 * __ct__12daNpc_grMC_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_grMC_c::daNpc_grMC_c(daNpcT_faceMotionAnmData_c const* param_0,
                               daNpcT_motionAnmData_c const* param_1,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                               int param_3,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                               int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 809D8F08-809D8F50 001BE8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 809D8F50-809D8F98 001C30 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 809D8F98-809D8FD4 001C78 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 809D8FD4-809D8FDC 001CB4 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__12daNpc_grMC_cFv */
s32 daNpc_grMC_c::getHeadJointNo() {
    return 4;
}

/* 809D8FDC-809D8FE4 001CBC 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__12daNpc_grMC_cFv */
s32 daNpc_grMC_c::getNeckJointNo() {
    return 3;
}

/* 809D8FE4-809D8FEC 001CC4 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__12daNpc_grMC_cFv */
bool daNpc_grMC_c::getBackboneJointNo() {
    return true;
}

/* 809D8FEC-809D8FFC 001CCC 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__12daNpc_grMC_cFi
 */
void daNpc_grMC_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 809D8FFC-809D900C 001CDC 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__12daNpc_grMC_cFi
 */
void daNpc_grMC_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 809D900C-809D9014 001CEC 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__12daNpc_grMC_cFv */
s32 daNpc_grMC_c::getEyeballMaterialNo() {
    return true;
}

/* ############################################################################################## */
/* 809DA448-809DA454 0005BC 000C+00 2/2 0/0 0/0 .data            __vt__18daNpc_grMC_Param_c */
SECTION_DATA extern void* __vt__18daNpc_grMC_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpc_grMC_Param_cFv,
};

/* 809D9014-809D905C 001CF4 0048+00 2/1 0/0 0/0 .text            __dt__18daNpc_grMC_Param_cFv */
daNpc_grMC_Param_c::~daNpc_grMC_Param_c() {
    // NONMATCHING
}

/* 809D905C-809D9064 001D3C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809D905C() {
    // NONMATCHING
}

/* 809D9064-809D906C 001D44 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809D9064() {
    // NONMATCHING
}

/* 809D906C-809D9184 001D4C 0118+00 1/1 0/0 0/0 .text
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

/* 809D9184-809D918C 001E64 0008+00 1/0 0/0 0/0 .text            getResName2__13dShopSystem_cFi */
// bool dShopSystem_c::getResName2(int param_0) {
extern "C" bool getResName2__13dShopSystem_cFi() {
    return false;
}

/* 809D918C-809D9194 001E6C 0008+00 1/0 0/0 0/0 .text
 * beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci         */
// bool dShopSystem_c::beforeStartSeqAction(dMsgFlow_c* param_0, int param_1) {
extern "C" bool beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci() {
    return true;
}

/* 809D9194-809D919C 001E74 0008+00 1/0 0/0 0/0 .text
 * beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci        */
// bool dShopSystem_c::beforeSelectSeqAction(dMsgFlow_c* param_0, int param_1) {
extern "C" bool beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci() {
    return true;
}

/* 809D919C-809D91D8 001E7C 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 809D91D8-809D95DC 001EB8 0404+00 1/1 0/0 0/0 .text
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

/* 809D95DC-809D95E0 0022BC 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 809D95E0-809D96DC 0022C0 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 809D96DC-809D96E0 0023BC 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 809D96E0-809D9728 0023C0 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809D9728-809D9770 002408 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 809D9770-809D97E0 002450 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 809D97E0-809D983C 0024C0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 809D983C-809D98AC 00251C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809D98AC-809D98F4 00258C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 809D98F4-809D9A10 0025D4 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D9E50-809D9E58 0000E0 0008+00 0/1 0/0 0/0 .rodata          @4796 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4796[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D9E50, &lit_4796);
#pragma pop

/* 809D9E58-809D9E60 0000E8 0008+00 0/1 0/0 0/0 .rodata          @4797 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4797[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D9E58, &lit_4797);
#pragma pop

/* 809D9E60-809D9E68 0000F0 0008+00 0/1 0/0 0/0 .rodata          @4798 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4798[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D9E60, &lit_4798);
#pragma pop

/* 809D9A10-809D9C18 0026F0 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 809D9C18-809D9C1C 0028F8 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 809D9C1C-809D9C24 0028FC 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootLJointNo() {
    return -1;
}

/* 809D9C24-809D9C2C 002904 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootRJointNo() {
    return -1;
}

/* 809D9C2C-809D9C34 00290C 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 809D9C34-809D9C3C 002914 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 809D9C3C-809D9C44 00291C 0008+00 1/0 0/0 0/0 .text            checkChangeEvt__8daNpcT_cFv */
bool daNpcT_c::checkChangeEvt() {
    return false;
}

/* 809D9C44-809D9C4C 002924 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 809D9C4C-809D9C50 00292C 0004+00 1/0 0/0 0/0 .text            afterMoved__8daNpcT_cFv */
void daNpcT_c::afterMoved() {
    /* empty function */
}

/* 809D9C50-809D9C58 002930 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 809D9C58-809D9C70 002938 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 809D9C70-809D9C74 002950 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 809D9C74-809D9C7C 002954 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 809D9C7C-809D9C84 00295C 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 809D9C84-809D9CB4 002964 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 809D9CB4-809D9CE4 002994 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 809D9CE4-809D9CE8 0029C4 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809D9CE8-809D9CEC 0029C8 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809D9CEC-809D9CF0 0029CC 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809D9CF0-809D9CF4 0029D0 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 809DA460-809DA46C 000008 000C+00 1/1 0/0 0/0 .bss             @3831 */
static u8 lit_3831[12];

/* 809DA46C-809DA470 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 809D9CF4-809D9D5C 0029D4 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_grmc_cpp */
void __sinit_d_a_npc_grmc_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x809D9CF4, __sinit_d_a_npc_grmc_cpp);
#pragma pop

/* 809D9E68-809D9E68 0000F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
