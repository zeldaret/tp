/**
 * @file d_a_npc_grm.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_grm.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__11daNpc_grM_cFv();
extern "C" void create__11daNpc_grM_cFv();
extern "C" void CreateHeap__11daNpc_grM_cFv();
extern "C" void Delete__11daNpc_grM_cFv();
extern "C" void Execute__11daNpc_grM_cFv();
extern "C" void Draw__11daNpc_grM_cFv();
extern "C" void createHeapCallBack__11daNpc_grM_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_grM_cFP8J3DJointi();
extern "C" bool getType__11daNpc_grM_cFv();
extern "C" void getFlowNodeNo__11daNpc_grM_cFv();
extern "C" void getMaxNumItem__11daNpc_grM_cFv();
extern "C" void isDelete__11daNpc_grM_cFv();
extern "C" void reset__11daNpc_grM_cFv();
extern "C" void afterJntAnm__11daNpc_grM_cFi();
extern "C" void setParam__11daNpc_grM_cFv();
extern "C" void setAfterTalkMotion__11daNpc_grM_cFv();
extern "C" void srchActors__11daNpc_grM_cFv();
extern "C" void evtProc__11daNpc_grM_cFv();
extern "C" void evtTalk__11daNpc_grM_cFv();
extern "C" void evtCutProc__11daNpc_grM_cFv();
extern "C" void action__11daNpc_grM_cFv();
extern "C" void beforeMove__11daNpc_grM_cFv();
extern "C" void setAttnPos__11daNpc_grM_cFv();
extern "C" void setCollision__11daNpc_grM_cFv();
extern "C" bool drawDbgInfo__11daNpc_grM_cFv();
extern "C" void drawOtherMdl__11daNpc_grM_cFv();
extern "C" void selectAction__11daNpc_grM_cFv();
extern "C" void chkAction__11daNpc_grM_cFM11daNpc_grM_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_grM_cFM11daNpc_grM_cFPCvPvPv_i();
extern "C" void cutTalkSpa__11daNpc_grM_cFi();
extern "C" void tend__11daNpc_grM_cFPv();
extern "C" void talk__11daNpc_grM_cFPv();
extern "C" void shop__11daNpc_grM_cFPv();
extern "C" static void daNpc_grM_Create__FPv();
extern "C" static void daNpc_grM_Delete__FPv();
extern "C" static void daNpc_grM_Execute__FPv();
extern "C" static void daNpc_grM_Draw__FPv();
extern "C" static bool daNpc_grM_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void
__ct__11daNpc_grM_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__4cXyzFv();
extern "C" u16 getEyeballMaterialNo__11daNpc_grM_cFv();
extern "C" s32 getHeadJointNo__11daNpc_grM_cFv();
extern "C" s32 getNeckJointNo__11daNpc_grM_cFv();
extern "C" bool getBackboneJointNo__11daNpc_grM_cFv();
extern "C" void checkChangeJoint__11daNpc_grM_cFi();
extern "C" void checkRemoveJoint__11daNpc_grM_cFi();
extern "C" void __dt__17daNpc_grM_Param_cFv();
extern "C" static void func_809D6020();
extern "C" static void func_809D6028();
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
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" bool checkChangeEvt__8daNpcT_cFv();
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
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_809D6CB8(void* _this, int*);
extern "C" void __sinit_d_a_npc_grm_cpp();
extern "C" u8 const m__17daNpc_grM_Param_c[140];
extern "C" extern char const* const d_a_npc_grm__stringBase0;
extern "C" void* mCutNameList__11daNpc_grM_c[2];
extern "C" u8 mCutList__11daNpc_grM_c[24];

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
extern "C" void setPtT__14dEvt_control_cFPv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void getRunEventName__16dEvent_manager_cFv();
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
extern "C" void ctrlMsgAnm__8daNpcT_cFPiPiP10fopAc_ac_ci();
extern "C" void ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel();
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
extern "C" void daNpcT_chkEvtBit__FUl();
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
/* 809D6E60-809D6E60 0000F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809D6E60 = "";
SECTION_DEAD static char const* const stringBase_809D6E61 = "DEFAULT_GETITEM";
SECTION_DEAD static char const* const stringBase_809D6E71 = "grA_base";
SECTION_DEAD static char const* const stringBase_809D6E7A = "grA_mdl";
SECTION_DEAD static char const* const stringBase_809D6E82 = "TALK_SPA";
#pragma pop

/* 809D6EB4-809D6EBC 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02,
};

/* 809D6EBC-809D6ED4 -00001 0018+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[6] = {
    (void*)&d_a_npc_grm__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_grm__stringBase0) + 0x1),
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};
#pragma pop

/* 809D6ED4-809D6EE0 -00001 000C+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[3] = {
    (void*)&d_a_npc_grm__stringBase0,
    (void*)(((char*)&d_a_npc_grm__stringBase0) + 0x11),
    (void*)(((char*)&d_a_npc_grm__stringBase0) + 0x1A),
};

/* 809D6EE0-809D6EE4 00004C 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u8 l_loadResPtrn0[3 + 1 /* padding */] = {
    0x02,
    0x01,
    0xFF,
    /* padding */
    0x00,
};

/* 809D6EE4-809D6EE8 -00001 0004+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList = (void*)&l_loadResPtrn0;

/* 809D6EE8-809D6FC8 000054 00E0+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[224] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 809D6FC8-809D701C 000134 0054+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[84] = {
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 809D701C-809D706C 000188 0050+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[80] = {
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 809D706C-809D70BC 0001D8 0050+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[80] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 809D70BC-809D70C4 -00001 0008+00 1/1 0/0 0/0 .data            mCutNameList__11daNpc_grM_c */
SECTION_DATA void* daNpc_grM_c::mCutNameList[2] = {
    (void*)&d_a_npc_grm__stringBase0,
    (void*)(((char*)&d_a_npc_grm__stringBase0) + 0x22),
};

/* 809D70C4-809D70D0 -00001 000C+00 1/1 0/0 0/0 .data            @3831 */
SECTION_DATA static void* lit_3831[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTalkSpa__11daNpc_grM_cFi,
};

/* 809D70D0-809D70E8 00023C 0018+00 2/2 0/0 0/0 .data            mCutList__11daNpc_grM_c */
SECTION_DATA u8 daNpc_grM_c::mCutList[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 809D70E8-809D70F4 -00001 000C+00 0/1 0/0 0/0 .data            @4645 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4645[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__11daNpc_grM_cFPv,
};
#pragma pop

/* 809D70F4-809D7100 -00001 000C+00 0/1 0/0 0/0 .data            @4653 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4653[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__11daNpc_grM_cFPv,
};
#pragma pop

/* 809D7100-809D710C -00001 000C+00 0/1 0/0 0/0 .data            @4656 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4656[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_grM_cFPv,
};
#pragma pop

/* 809D710C-809D7118 -00001 000C+00 0/1 0/0 0/0 .data            @4664 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4664[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_grM_cFPv,
};
#pragma pop

/* 809D7118-809D7124 -00001 000C+00 1/1 0/0 0/0 .data            @4920 */
SECTION_DATA static void* lit_4920[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tend__11daNpc_grM_cFPv,
};

/* 809D7124-809D7130 -00001 000C+00 1/1 0/0 0/0 .data            @5076 */
SECTION_DATA static void* lit_5076[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tend__11daNpc_grM_cFPv,
};

/* 809D7130-809D7150 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_grM_MethodTable */
static actor_method_class daNpc_grM_MethodTable = {
    (process_method_func)daNpc_grM_Create__FPv,
    (process_method_func)daNpc_grM_Delete__FPv,
    (process_method_func)daNpc_grM_Execute__FPv,
    (process_method_func)daNpc_grM_IsDelete__FPv,
    (process_method_func)daNpc_grM_Draw__FPv,
};

/* 809D7150-809D7180 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_GRM */
extern actor_process_profile_definition g_profile_NPC_GRM = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_GRM,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpc_grM_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  309,                    // mPriority
  &daNpc_grM_MethodTable, // sub_method
  0x00044107,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 809D7180-809D718C 0002EC 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 809D718C-809D71B0 0002F8 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809D6028,
    (void*)NULL,
    (void*)NULL,
    (void*)func_809D6020,
};

/* 809D71B0-809D71BC 00031C 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 809D71BC-809D71C8 000328 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 809D71C8-809D71D4 000334 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 809D71D4-809D71E0 000340 000C+00 2/2 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 809D71E0-809D71EC 00034C 000C+00 3/3 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 809D71EC-809D71F8 000358 000C+00 2/2 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 809D71F8-809D7204 000364 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 809D7204-809D7210 000370 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 809D7210-809D72E0 00037C 00D0+00 2/2 0/0 0/0 .data            __vt__11daNpc_grM_c */
SECTION_DATA extern void* __vt__11daNpc_grM_c[52] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_grM_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__11daNpc_grM_cFi,
    (void*)checkRemoveJoint__11daNpc_grM_cFi,
    (void*)getBackboneJointNo__11daNpc_grM_cFv,
    (void*)getNeckJointNo__11daNpc_grM_cFv,
    (void*)getHeadJointNo__11daNpc_grM_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__11daNpc_grM_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__11daNpc_grM_cFi,
    (void*)setParam__11daNpc_grM_cFv,
    (void*)checkChangeEvt__8daNpcT_cFv,
    (void*)evtTalk__11daNpc_grM_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__11daNpc_grM_cFv,
    (void*)setAfterTalkMotion__11daNpc_grM_cFv,
    (void*)evtProc__11daNpc_grM_cFv,
    (void*)action__11daNpc_grM_cFv,
    (void*)beforeMove__11daNpc_grM_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__11daNpc_grM_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__11daNpc_grM_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__11daNpc_grM_cFv,
    (void*)drawOtherMdl__11daNpc_grM_cFv,
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

/* 809D406C-809D4194 0000EC 0128+00 1/0 0/0 0/0 .text            __dt__11daNpc_grM_cFv */
daNpc_grM_c::~daNpc_grM_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D6D70-809D6DFC 000000 008C+00 7/7 0/0 0/0 .rodata          m__17daNpc_grM_Param_c */
SECTION_RODATA u8 const daNpc_grM_Param_c::m[140] = {
    0x43, 0x96, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x44, 0x16, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x82, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x8C, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0xC1, 0xA0, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x08, 0x00, 0x06, 0x00, 0x08, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0xC1, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0xA0, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
    0x42, 0x20, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x42, 0xDC, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D6D70, &daNpc_grM_Param_c::m);

/* 809D6DFC-809D6E00 00008C 0004+00 0/1 0/0 0/0 .rodata          @3915 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3915 = -300.0f;
COMPILER_STRIP_GATE(0x809D6DFC, &lit_3915);
#pragma pop

/* 809D6E00-809D6E04 000090 0004+00 0/1 0/0 0/0 .rodata          @3916 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3916 = -50.0f;
COMPILER_STRIP_GATE(0x809D6E00, &lit_3916);
#pragma pop

/* 809D6E04-809D6E08 000094 0004+00 0/1 0/0 0/0 .rodata          @3917 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3917 = 300.0f;
COMPILER_STRIP_GATE(0x809D6E04, &lit_3917);
#pragma pop

/* 809D6E08-809D6E0C 000098 0004+00 0/1 0/0 0/0 .rodata          @3918 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3918 = 450.0f;
COMPILER_STRIP_GATE(0x809D6E08, &lit_3918);
#pragma pop

/* 809D4194-809D441C 000214 0288+00 1/1 0/0 0/0 .text            create__11daNpc_grM_cFv */
void daNpc_grM_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D6E0C-809D6E10 00009C 0004+00 0/1 0/0 0/0 .rodata          @4006 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4006 = 0.25f;
COMPILER_STRIP_GATE(0x809D6E0C, &lit_4006);
#pragma pop

/* 809D6E10-809D6E14 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4007 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4007 = 20.0f;
COMPILER_STRIP_GATE(0x809D6E10, &lit_4007);
#pragma pop

/* 809D6E14-809D6E18 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4008 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4008 = 5.0f;
COMPILER_STRIP_GATE(0x809D6E14, &lit_4008);
#pragma pop

/* 809D6E18-809D6E1C 0000A8 0004+00 7/12 0/0 0/0 .rodata          @4009 */
SECTION_RODATA static u8 const lit_4009[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x809D6E18, &lit_4009);

/* 809D6E1C-809D6E20 0000AC 0004+00 1/2 0/0 0/0 .rodata          @4010 */
SECTION_RODATA static f32 const lit_4010 = 100.0f;
COMPILER_STRIP_GATE(0x809D6E1C, &lit_4010);

/* 809D6E20-809D6E24 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4011 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4011 = 60.0f;
COMPILER_STRIP_GATE(0x809D6E20, &lit_4011);
#pragma pop

/* 809D6E24-809D6E28 0000B4 0004+00 0/2 0/0 0/0 .rodata          @4233 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4233 = 65536.0f;
COMPILER_STRIP_GATE(0x809D6E24, &lit_4233);
#pragma pop

/* 809D6E28-809D6E2C 0000B8 0004+00 0/3 0/0 0/0 .rodata          @4234 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4234 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x809D6E28, &lit_4234);
#pragma pop

/* 809D6E2C-809D6E30 0000BC 0004+00 2/4 0/0 0/0 .rodata          @4373 */
SECTION_RODATA static f32 const lit_4373 = 1.0f;
COMPILER_STRIP_GATE(0x809D6E2C, &lit_4373);

/* 809D441C-809D45C4 00049C 01A8+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_grM_cFv */
void daNpc_grM_c::CreateHeap() {
    // NONMATCHING
}

/* 809D45C4-809D45F8 000644 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_grM_cFv */
void daNpc_grM_c::Delete() {
    // NONMATCHING
}

/* 809D45F8-809D46D4 000678 00DC+00 2/2 0/0 0/0 .text            Execute__11daNpc_grM_cFv */
void daNpc_grM_c::Execute() {
    // NONMATCHING
}

/* 809D46D4-809D4768 000754 0094+00 1/1 0/0 0/0 .text            Draw__11daNpc_grM_cFv */
void daNpc_grM_c::Draw() {
    // NONMATCHING
}

/* 809D4768-809D4788 0007E8 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_grM_cFP10fopAc_ac_c              */
void daNpc_grM_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 809D4788-809D47E0 000808 0058+00 2/2 0/0 0/0 .text ctrlJointCallBack__11daNpc_grM_cFP8J3DJointi
 */
void daNpc_grM_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 809D47E0-809D47E8 000860 0008+00 1/1 0/0 0/0 .text            getType__11daNpc_grM_cFv */
bool daNpc_grM_c::getType() {
    return false;
}

/* 809D47E8-809D4804 000868 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__11daNpc_grM_cFv */
void daNpc_grM_c::getFlowNodeNo() {
    // NONMATCHING
}

/* 809D4804-809D4810 000884 000C+00 1/1 0/0 0/0 .text            getMaxNumItem__11daNpc_grM_cFv */
void daNpc_grM_c::getMaxNumItem() {
    // NONMATCHING
}

/* 809D4810-809D4820 000890 0010+00 1/1 0/0 0/0 .text            isDelete__11daNpc_grM_cFv */
void daNpc_grM_c::isDelete() {
    // NONMATCHING
}

/* 809D4820-809D4944 0008A0 0124+00 1/1 0/0 0/0 .text            reset__11daNpc_grM_cFv */
void daNpc_grM_c::reset() {
    // NONMATCHING
}

/* 809D4944-809D49D0 0009C4 008C+00 1/0 0/0 0/0 .text            afterJntAnm__11daNpc_grM_cFi */
void daNpc_grM_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 809D49D0-809D4B24 000A50 0154+00 1/0 0/0 0/0 .text            setParam__11daNpc_grM_cFv */
void daNpc_grM_c::setParam() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D6E30-809D6E34 0000C0 0004+00 3/3 0/0 0/0 .rodata          @4560 */
SECTION_RODATA static f32 const lit_4560 = -1.0f;
COMPILER_STRIP_GATE(0x809D6E30, &lit_4560);

/* 809D4B24-809D4BB8 000BA4 0094+00 1/0 0/0 0/0 .text            setAfterTalkMotion__11daNpc_grM_cFv
 */
void daNpc_grM_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 809D4BB8-809D4BBC 000C38 0004+00 1/1 0/0 0/0 .text            srchActors__11daNpc_grM_cFv */
void daNpc_grM_c::srchActors() {
    /* empty function */
}

/* 809D4BBC-809D4E2C 000C3C 0270+00 1/0 0/0 0/0 .text            evtProc__11daNpc_grM_cFv */
void daNpc_grM_c::evtProc() {
    // NONMATCHING
}

/* 809D4E2C-809D4FD0 000EAC 01A4+00 1/0 0/0 0/0 .text            evtTalk__11daNpc_grM_cFv */
void daNpc_grM_c::evtTalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D6E60-809D6E60 0000F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809D6E8B = "grM";
#pragma pop

/* 809D4FD0-809D5098 001050 00C8+00 1/0 0/0 0/0 .text            evtCutProc__11daNpc_grM_cFv */
void daNpc_grM_c::evtCutProc() {
    // NONMATCHING
}

/* 809D5098-809D51F4 001118 015C+00 1/0 0/0 0/0 .text            action__11daNpc_grM_cFv */
void daNpc_grM_c::action() {
    // NONMATCHING
}

/* 809D51F4-809D526C 001274 0078+00 1/0 0/0 0/0 .text            beforeMove__11daNpc_grM_cFv */
void daNpc_grM_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D6E34-809D6E38 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4797 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4797 = 30.0f;
COMPILER_STRIP_GATE(0x809D6E34, &lit_4797);
#pragma pop

/* 809D6E38-809D6E40 0000C8 0004+04 0/1 0/0 0/0 .rodata          @4798 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4798[1 + 1 /* padding */] = {
    0x38C90FDB,
    /* padding */
    0x00000000,
};
COMPILER_STRIP_GATE(0x809D6E38, &lit_4798);
#pragma pop

/* 809D6E40-809D6E48 0000D0 0008+00 1/3 0/0 0/0 .rodata          @4800 */
SECTION_RODATA static u8 const lit_4800[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D6E40, &lit_4800);

/* 809D526C-809D54C8 0012EC 025C+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_grM_cFv */
void daNpc_grM_c::setAttnPos() {
    // NONMATCHING
}

/* 809D54C8-809D55F8 001548 0130+00 1/0 0/0 0/0 .text            setCollision__11daNpc_grM_cFv */
void daNpc_grM_c::setCollision() {
    // NONMATCHING
}

/* 809D55F8-809D5600 001678 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_grM_cFv */
bool daNpc_grM_c::drawDbgInfo() {
    return false;
}

/* 809D5600-809D5660 001680 0060+00 1/0 0/0 0/0 .text            drawOtherMdl__11daNpc_grM_cFv */
void daNpc_grM_c::drawOtherMdl() {
    // NONMATCHING
}

/* 809D5660-809D56A8 0016E0 0048+00 1/1 0/0 0/0 .text            selectAction__11daNpc_grM_cFv */
void daNpc_grM_c::selectAction() {
    // NONMATCHING
}

/* 809D56A8-809D56D4 001728 002C+00 1/1 0/0 0/0 .text
 * chkAction__11daNpc_grM_cFM11daNpc_grM_cFPCvPvPv_i            */
void daNpc_grM_c::chkAction(int (daNpc_grM_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 809D56D4-809D577C 001754 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_grM_cFM11daNpc_grM_cFPCvPvPv_i            */
void daNpc_grM_c::setAction(int (daNpc_grM_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D6E60-809D6E60 0000F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_809D6E8F = "prm";
#pragma pop

/* 809D577C-809D58F4 0017FC 0178+00 1/0 0/0 0/0 .text            cutTalkSpa__11daNpc_grM_cFi */
void daNpc_grM_c::cutTalkSpa(int param_0) {
    // NONMATCHING
}

/* 809D58F4-809D5AAC 001974 01B8+00 2/0 0/0 0/0 .text            tend__11daNpc_grM_cFPv */
void daNpc_grM_c::tend(void* param_0) {
    // NONMATCHING
}

/* 809D5AAC-809D5C30 001B2C 0184+00 2/0 0/0 0/0 .text            talk__11daNpc_grM_cFPv */
void daNpc_grM_c::talk(void* param_0) {
    // NONMATCHING
}

/* 809D5C30-809D5D50 001CB0 0120+00 2/0 0/0 0/0 .text            shop__11daNpc_grM_cFPv */
void daNpc_grM_c::shop(void* param_0) {
    // NONMATCHING
}

/* 809D5D50-809D5D70 001DD0 0020+00 1/0 0/0 0/0 .text            daNpc_grM_Create__FPv */
static void daNpc_grM_Create(void* param_0) {
    // NONMATCHING
}

/* 809D5D70-809D5D90 001DF0 0020+00 1/0 0/0 0/0 .text            daNpc_grM_Delete__FPv */
static void daNpc_grM_Delete(void* param_0) {
    // NONMATCHING
}

/* 809D5D90-809D5DB0 001E10 0020+00 1/0 0/0 0/0 .text            daNpc_grM_Execute__FPv */
static void daNpc_grM_Execute(void* param_0) {
    // NONMATCHING
}

/* 809D5DB0-809D5DD0 001E30 0020+00 1/0 0/0 0/0 .text            daNpc_grM_Draw__FPv */
static void daNpc_grM_Draw(void* param_0) {
    // NONMATCHING
}

/* 809D5DD0-809D5DD8 001E50 0008+00 1/0 0/0 0/0 .text            daNpc_grM_IsDelete__FPv */
static bool daNpc_grM_IsDelete(void* param_0) {
    return true;
}

/* 809D5DD8-809D5E20 001E58 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 809D5E20-809D5ECC 001EA0 00AC+00 1/1 0/0 0/0 .text
 * __ct__11daNpc_grM_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_grM_c::daNpc_grM_c(daNpcT_faceMotionAnmData_c const* param_0,
                             daNpcT_motionAnmData_c const* param_1,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
                             daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 809D5ECC-809D5F14 001F4C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 809D5F14-809D5F5C 001F94 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 809D5F5C-809D5F98 001FDC 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 809D5F98-809D5FA0 002018 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__11daNpc_grM_cFv */
u16 daNpc_grM_c::getEyeballMaterialNo() {
    return true;
}

/* 809D5FA0-809D5FA8 002020 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__11daNpc_grM_cFv */
s32 daNpc_grM_c::getHeadJointNo() {
    return 4;
}

/* 809D5FA8-809D5FB0 002028 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__11daNpc_grM_cFv */
s32 daNpc_grM_c::getNeckJointNo() {
    return 3;
}

/* 809D5FB0-809D5FB8 002030 0008+00 1/0 0/0 0/0 .text            getBackboneJointNo__11daNpc_grM_cFv
 */
bool daNpc_grM_c::getBackboneJointNo() {
    return true;
}

/* 809D5FB8-809D5FC8 002038 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__11daNpc_grM_cFi
 */
void daNpc_grM_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 809D5FC8-809D5FD8 002048 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__11daNpc_grM_cFi
 */
void daNpc_grM_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D72E0-809D72EC 00044C 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_grM_Param_c */
SECTION_DATA extern void* __vt__17daNpc_grM_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_grM_Param_cFv,
};

/* 809D5FD8-809D6020 002058 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_grM_Param_cFv */
daNpc_grM_Param_c::~daNpc_grM_Param_c() {
    // NONMATCHING
}

/* 809D6020-809D6028 0020A0 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_809D6020() {
    // NONMATCHING
}

/* 809D6028-809D6030 0020A8 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_809D6028() {
    // NONMATCHING
}

/* 809D6030-809D6148 0020B0 0118+00 1/1 0/0 0/0 .text
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

/* 809D6148-809D6150 0021C8 0008+00 1/0 0/0 0/0 .text            getResName2__13dShopSystem_cFi */
// bool dShopSystem_c::getResName2(int param_0) {
extern "C" bool getResName2__13dShopSystem_cFi() {
    return false;
}

/* 809D6150-809D6158 0021D0 0008+00 1/0 0/0 0/0 .text
 * beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci         */
// bool dShopSystem_c::beforeStartSeqAction(dMsgFlow_c* param_0, int param_1) {
extern "C" bool beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci() {
    return true;
}

/* 809D6158-809D6160 0021D8 0008+00 1/0 0/0 0/0 .text
 * beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci        */
// bool dShopSystem_c::beforeSelectSeqAction(dMsgFlow_c* param_0, int param_1) {
extern "C" bool beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci() {
    return true;
}

/* 809D6160-809D619C 0021E0 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 809D619C-809D65A0 00221C 0404+00 1/1 0/0 0/0 .text
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

/* 809D65A0-809D65A4 002620 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 809D65A4-809D66A0 002624 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 809D66A0-809D66A4 002720 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 809D66A4-809D66EC 002724 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 809D66EC-809D6734 00276C 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 809D6734-809D67A4 0027B4 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 809D67A4-809D6800 002824 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 809D6800-809D6870 002880 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809D6870-809D68B8 0028F0 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 809D68B8-809D68C0 002938 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 809D68C8-809D69E4 002948 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D6E48-809D6E50 0000D8 0008+00 0/1 0/0 0/0 .rodata          @4858 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4858[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D6E48, &lit_4858);
#pragma pop

/* 809D6E50-809D6E58 0000E0 0008+00 0/1 0/0 0/0 .rodata          @4859 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4859[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D6E50, &lit_4859);
#pragma pop

/* 809D6E58-809D6E60 0000E8 0008+00 0/1 0/0 0/0 .rodata          @4860 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4860[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x809D6E58, &lit_4860);
#pragma pop

/* 809D69E4-809D6BEC 002A64 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 809D6BEC-809D6BF0 002C6C 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 809D6C00-809D6C08 002C80 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 809D6C08-809D6C10 002C88 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 809D6C14-809D6C1C 002C94 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 809D6C1C-809D6C34 002C9C 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 809D6C34-809D6C38 002CB4 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 809D6C38-809D6C40 002CB8 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 809D6C40-809D6C48 002CC0 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 809D6C48-809D6C78 002CC8 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 809D6C78-809D6CA8 002CF8 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 809D6CA8-809D6CAC 002D28 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809D6CAC-809D6CB0 002D2C 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809D6CB0-809D6CB4 002D30 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809D6CB4-809D6CB8 002D34 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809D6CB8-809D6CD4 002D38 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_809D6CB8(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 809D72F8-809D7304 000008 000C+00 1/1 0/0 0/0 .bss             @3832 */
static u8 lit_3832[12];

/* 809D7304-809D7308 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 809D6CD4-809D6D5C 002D54 0088+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_grm_cpp */
void __sinit_d_a_npc_grm_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x809D6CD4, __sinit_d_a_npc_grm_cpp);
#pragma pop

/* 809D6E60-809D6E60 0000F0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
