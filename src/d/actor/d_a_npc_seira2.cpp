/**
 * @file d_a_npc_seira2.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_seira2.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__14daNpc_Seira2_cFv();
extern "C" void create__14daNpc_Seira2_cFv();
extern "C" void CreateHeap__14daNpc_Seira2_cFv();
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
extern "C" void Delete__14daNpc_Seira2_cFv();
extern "C" void Execute__14daNpc_Seira2_cFv();
extern "C" void Draw__14daNpc_Seira2_cFv();
extern "C" void createHeapCallBack__14daNpc_Seira2_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__14daNpc_Seira2_cFP8J3DJointi();
extern "C" void getType__14daNpc_Seira2_cFv();
extern "C" void getFlowNodeNo__14daNpc_Seira2_cFv();
extern "C" void getMaxNumItem__14daNpc_Seira2_cFv();
extern "C" void checkBottle__14daNpc_Seira2_cFv();
extern "C" bool isDelete__14daNpc_Seira2_cFv();
extern "C" void reset__14daNpc_Seira2_cFv();
extern "C" void afterJntAnm__14daNpc_Seira2_cFi();
extern "C" void setParam__14daNpc_Seira2_cFv();
extern "C" void setAfterTalkMotion__14daNpc_Seira2_cFv();
extern "C" void srchActors__14daNpc_Seira2_cFv();
extern "C" void evtTalk__14daNpc_Seira2_cFv();
extern "C" void evtCutProc__14daNpc_Seira2_cFv();
extern "C" void action__14daNpc_Seira2_cFv();
extern "C" void beforeMove__14daNpc_Seira2_cFv();
extern "C" void setAttnPos__14daNpc_Seira2_cFv();
extern "C" void setCollision__14daNpc_Seira2_cFv();
extern "C" bool drawDbgInfo__14daNpc_Seira2_cFv();
extern "C" void drawOtherMdl__14daNpc_Seira2_cFv();
extern "C" void setBottleAnm__14daNpc_Seira2_cFiifb();
extern "C" void afterSetMotionAnm__14daNpc_Seira2_cFiifi();
extern "C" void selectAction__14daNpc_Seira2_cFv();
extern "C" void chkAction__14daNpc_Seira2_cFM14daNpc_Seira2_cFPCvPvPv_i();
extern "C" void setAction__14daNpc_Seira2_cFM14daNpc_Seira2_cFPCvPvPv_i();
extern "C" void checkStageIsSeira2sShop__14daNpc_Seira2_cFv();
extern "C" void wait__14daNpc_Seira2_cFPv();
extern "C" void sit__14daNpc_Seira2_cFPv();
extern "C" void happy__14daNpc_Seira2_cFPv();
extern "C" void worry__14daNpc_Seira2_cFPv();
extern "C" void sad__14daNpc_Seira2_cFPv();
extern "C" void lookaround__14daNpc_Seira2_cFPv();
extern "C" void smile__14daNpc_Seira2_cFPv();
extern "C" void talk__14daNpc_Seira2_cFPv();
extern "C" void shop__14daNpc_Seira2_cFPv();
extern "C" static void daNpc_Seira2_Create__FPv();
extern "C" static void daNpc_Seira2_Delete__FPv();
extern "C" static void daNpc_Seira2_Execute__FPv();
extern "C" static void daNpc_Seira2_Draw__FPv();
extern "C" static bool daNpc_Seira2_IsDelete__FPv();
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
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_80AD46B8(void* _this, int*);
extern "C" void func_80AD46D4(void* _this, int, int);
extern "C" void __sinit_d_a_npc_seira2_cpp();
extern "C" void
__ct__14daNpc_Seira2_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__14daNpc_Seira2_cFv();
extern "C" s32 getHeadJointNo__14daNpc_Seira2_cFv();
extern "C" s32 getNeckJointNo__14daNpc_Seira2_cFv();
extern "C" bool getBackboneJointNo__14daNpc_Seira2_cFv();
extern "C" void checkChangeJoint__14daNpc_Seira2_cFi();
extern "C" void checkRemoveJoint__14daNpc_Seira2_cFi();
extern "C" void __dt__20daNpc_Seira2_Param_cFv();
extern "C" static void func_80AD490C();
extern "C" static void func_80AD4914();
extern "C" void
__ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" bool getResName2__13dShopSystem_cFi();
extern "C" bool beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci();
extern "C" bool beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci();
extern "C" u8 const m__20daNpc_Seira2_Param_c[140];
extern "C" extern char const* const d_a_npc_seira2__stringBase0;
extern "C" void* mCutNameList__14daNpc_Seira2_c;
extern "C" u8 mCutList__14daNpc_Seira2_c[12];

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void getLayerNo__14dComIfG_play_cFi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void isDarkClearLV__21dSv_player_status_b_cCFi();
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
extern "C" void setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs();
extern "C" void calc__19daNpcT_DmgStagger_cFi();
extern "C" void tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void getTrnsfrmKeyAnmP__8daNpcT_cFPCci();
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
extern "C" void getNearestActorP__8daNpcT_cFs();
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
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
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
extern "C" void hide__13J3DShapeTableFv();
extern "C" void show__13J3DShapeTableFv();
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
/* 80AD4B5C-80AD4B5C 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AD4B5C = "";
SECTION_DEAD static char const* const stringBase_80AD4B5D = "DEFAULT_GETITEM";
SECTION_DEAD static char const* const stringBase_80AD4B6D = "Seira";
SECTION_DEAD static char const* const stringBase_80AD4B73 = "SeraBtl";
SECTION_DEAD static char const* const stringBase_80AD4B7B = "Sera";
#pragma pop

/* 80AD4BB0-80AD4BC0 000020 0010+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[16] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02,
};

/* 80AD4BC0-80AD4BD0 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[4] = {
    (void*)&d_a_npc_seira2__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_seira2__stringBase0) + 0x1),
    (void*)NULL,
};
#pragma pop

/* 80AD4BD0-80AD4BE0 -00001 0010+00 3/4 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[4] = {
    (void*)&d_a_npc_seira2__stringBase0,
    (void*)(((char*)&d_a_npc_seira2__stringBase0) + 0x11),
    (void*)(((char*)&d_a_npc_seira2__stringBase0) + 0x17),
    (void*)(((char*)&d_a_npc_seira2__stringBase0) + 0x1F),
};

/* 80AD4BE0-80AD4BE4 000050 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u32 l_loadResPtrn0 = 0x030102FF;

/* 80AD4BE4-80AD4C00 -00001 001C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[7] = {
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0,
};

/* 80AD4C00-80AD4D88 000070 0188+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[392] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x43,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x4B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x45, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x4E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x44, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x4F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x47, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x4A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x4C, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x4D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x51, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80AD4D88-80AD5044 0001F8 02BC+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[700] = {
    0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x25,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x37, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x37, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x37,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x23,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x31,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x14,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x3A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x34,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x35, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x36,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x21,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x0C,
};
#pragma pop

/* 80AD5044-80AD5124 0004B4 00E0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[224] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x01, 0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x01, 0x00, 0x0D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80AD5124-80AD52B4 000594 0190+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[400] = {
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x01, 0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x01, 0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x01, 0x00, 0x0F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x01, 0x00, 0x17, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x16, 0xFF, 0x01, 0x00, 0x17, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x01, 0x00, 0x0F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x17, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x01, 0x00, 0x15, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x15, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x18, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80AD52B4-80AD52B8 -00001 0004+00 1/1 0/0 0/0 .data            mCutNameList__14daNpc_Seira2_c */
SECTION_DATA void* daNpc_Seira2_c::mCutNameList = (void*)&d_a_npc_seira2__stringBase0;

/* 80AD52B8-80AD52C4 000728 000C+00 2/2 0/0 0/0 .data            mCutList__14daNpc_Seira2_c */
SECTION_DATA u8 daNpc_Seira2_c::mCutList[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AD52C4-80AD52D0 -00001 000C+00 0/1 0/0 0/0 .data            @4677 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4677[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__14daNpc_Seira2_cFPv,
};
#pragma pop

/* 80AD52D0-80AD52DC -00001 000C+00 0/1 0/0 0/0 .data            @4685 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4685[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__14daNpc_Seira2_cFPv,
};
#pragma pop

/* 80AD52DC-80AD52E8 -00001 000C+00 0/1 0/0 0/0 .data            @4688 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4688[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__14daNpc_Seira2_cFPv,
};
#pragma pop

/* 80AD52E8-80AD52F4 -00001 000C+00 0/1 0/0 0/0 .data            @4696 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4696[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__14daNpc_Seira2_cFPv,
};
#pragma pop

/* 80AD52F4-80AD5300 -00001 000C+00 0/1 0/0 0/0 .data            @4937 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4937[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sit__14daNpc_Seira2_cFPv,
};
#pragma pop

/* 80AD5300-80AD530C -00001 000C+00 0/1 0/0 0/0 .data            @4938 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4938[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)happy__14daNpc_Seira2_cFPv,
};
#pragma pop

/* 80AD530C-80AD5318 -00001 000C+00 0/1 0/0 0/0 .data            @4939 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4939[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)worry__14daNpc_Seira2_cFPv,
};
#pragma pop

/* 80AD5318-80AD53F0 000788 00D8+00 1/1 0/0 0/0 .data            bottlAnmData$5021 */
SECTION_DATA static u8 bottlAnmData[216] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02,
};

/* 80AD53F0-80AD53FC -00001 000C+00 0/1 0/0 0/0 .data            @5048 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5048[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sit__14daNpc_Seira2_cFPv,
};
#pragma pop

/* 80AD53FC-80AD5408 -00001 000C+00 0/1 0/0 0/0 .data            @5050 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5050[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)happy__14daNpc_Seira2_cFPv,
};
#pragma pop

/* 80AD5408-80AD5414 -00001 000C+00 0/1 0/0 0/0 .data            @5052 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5052[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)worry__14daNpc_Seira2_cFPv,
};
#pragma pop

/* 80AD5414-80AD5420 -00001 000C+00 0/1 0/0 0/0 .data            @5054 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5054[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sad__14daNpc_Seira2_cFPv,
};
#pragma pop

/* 80AD5420-80AD542C -00001 000C+00 0/1 0/0 0/0 .data            @5056 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5056[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)smile__14daNpc_Seira2_cFPv,
};
#pragma pop

/* 80AD542C-80AD5438 -00001 000C+00 0/1 0/0 0/0 .data            @5058 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5058[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)lookaround__14daNpc_Seira2_cFPv,
};
#pragma pop

/* 80AD5438-80AD5444 -00001 000C+00 0/1 0/0 0/0 .data            @5060 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5060[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__14daNpc_Seira2_cFPv,
};
#pragma pop

/* 80AD5444-80AD5464 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Seira2_MethodTable */
static actor_method_class daNpc_Seira2_MethodTable = {
    (process_method_func)daNpc_Seira2_Create__FPv,
    (process_method_func)daNpc_Seira2_Delete__FPv,
    (process_method_func)daNpc_Seira2_Execute__FPv,
    (process_method_func)daNpc_Seira2_IsDelete__FPv,
    (process_method_func)daNpc_Seira2_Draw__FPv,
};

/* 80AD5464-80AD5494 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SERA2 */
extern actor_process_profile_definition g_profile_NPC_SERA2 = {
  fpcLy_CURRENT_e,           // mLayerID
  7,                         // mListID
  fpcPi_CURRENT_e,           // mListPrio
  PROC_NPC_SERA2,            // mProcName
  &g_fpcLf_Method.base,     // sub_method
  sizeof(daNpc_Seira2_c),    // mSize
  0,                         // mSizeOther
  0,                         // mParameters
  &g_fopAc_Method.base,      // sub_method
  362,                       // mPriority
  &daNpc_Seira2_MethodTable, // sub_method
  0x00044108,                // mStatus
  fopAc_NPC_e,               // mActorType
  fopAc_CULLBOX_CUSTOM_e,    // cullType
};

/* 80AD5494-80AD54A0 000904 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80AD54A0-80AD54AC 000910 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80AD54AC-80AD54D0 00091C 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AD4914,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AD490C,
};

/* 80AD54D0-80AD54DC 000940 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80AD54DC-80AD54E8 00094C 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80AD54E8-80AD54F4 000958 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80AD54F4-80AD5500 000964 000C+00 2/2 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80AD5500-80AD550C 000970 000C+00 2/2 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80AD550C-80AD5518 00097C 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80AD5518-80AD5524 000988 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80AD5524-80AD5530 000994 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80AD5530-80AD5600 0009A0 00D0+00 2/2 0/0 0/0 .data            __vt__14daNpc_Seira2_c */
SECTION_DATA extern void* __vt__14daNpc_Seira2_c[52] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daNpc_Seira2_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__14daNpc_Seira2_cFi,
    (void*)checkRemoveJoint__14daNpc_Seira2_cFi,
    (void*)getBackboneJointNo__14daNpc_Seira2_cFv,
    (void*)getNeckJointNo__14daNpc_Seira2_cFv,
    (void*)getHeadJointNo__14daNpc_Seira2_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__14daNpc_Seira2_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__14daNpc_Seira2_cFi,
    (void*)setParam__14daNpc_Seira2_cFv,
    (void*)checkChangeEvt__8daNpcT_cFv,
    (void*)evtTalk__14daNpc_Seira2_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__14daNpc_Seira2_cFv,
    (void*)setAfterTalkMotion__14daNpc_Seira2_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__14daNpc_Seira2_cFv,
    (void*)beforeMove__14daNpc_Seira2_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__14daNpc_Seira2_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__14daNpc_Seira2_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__14daNpc_Seira2_cFv,
    (void*)drawOtherMdl__14daNpc_Seira2_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__14daNpc_Seira2_cFiifi,
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

/* 80AD0C0C-80AD0D58 0000EC 014C+00 1/0 0/0 0/0 .text            __dt__14daNpc_Seira2_cFv */
daNpc_Seira2_c::~daNpc_Seira2_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AD4A60-80AD4AEC 000000 008C+00 9/9 0/0 0/0 .rodata          m__20daNpc_Seira2_Param_c */
SECTION_RODATA u8 const daNpc_Seira2_Param_c::m[140] = {
    0x43, 0x52, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00, 0xC2, 0x70, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x05, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AD4A60, &daNpc_Seira2_Param_c::m);

/* 80AD4AEC-80AD4AF0 00008C 0004+00 0/1 0/0 0/0 .rodata          @3960 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3960 = -300.0f;
COMPILER_STRIP_GATE(0x80AD4AEC, &lit_3960);
#pragma pop

/* 80AD4AF0-80AD4AF4 000090 0004+00 0/1 0/0 0/0 .rodata          @3961 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3961 = -50.0f;
COMPILER_STRIP_GATE(0x80AD4AF0, &lit_3961);
#pragma pop

/* 80AD4AF4-80AD4AF8 000094 0004+00 0/1 0/0 0/0 .rodata          @3962 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3962 = 300.0f;
COMPILER_STRIP_GATE(0x80AD4AF4, &lit_3962);
#pragma pop

/* 80AD4AF8-80AD4AFC 000098 0004+00 0/1 0/0 0/0 .rodata          @3963 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3963 = 450.0f;
COMPILER_STRIP_GATE(0x80AD4AF8, &lit_3963);
#pragma pop

/* 80AD0D58-80AD0FF8 000238 02A0+00 1/1 0/0 0/0 .text            create__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AD4AFC-80AD4B00 00009C 0004+00 0/1 0/0 0/0 .rodata          @4052 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4052 = 0.25f;
COMPILER_STRIP_GATE(0x80AD4AFC, &lit_4052);
#pragma pop

/* 80AD4B00-80AD4B04 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4053 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4053 = 20.0f;
COMPILER_STRIP_GATE(0x80AD4B00, &lit_4053);
#pragma pop

/* 80AD4B04-80AD4B08 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4054 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4054 = 5.0f;
COMPILER_STRIP_GATE(0x80AD4B04, &lit_4054);
#pragma pop

/* 80AD4B08-80AD4B0C 0000A8 0004+00 11/18 0/0 0/0 .rodata          @4055 */
SECTION_RODATA static u8 const lit_4055[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AD4B08, &lit_4055);

/* 80AD4B0C-80AD4B10 0000AC 0004+00 1/2 0/0 0/0 .rodata          @4056 */
SECTION_RODATA static f32 const lit_4056 = 100.0f;
COMPILER_STRIP_GATE(0x80AD4B0C, &lit_4056);

/* 80AD4B10-80AD4B14 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4057 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4057 = 60.0f;
COMPILER_STRIP_GATE(0x80AD4B10, &lit_4057);
#pragma pop

/* 80AD4B14-80AD4B18 0000B4 0004+00 0/2 0/0 0/0 .rodata          @4278 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4278 = 65536.0f;
COMPILER_STRIP_GATE(0x80AD4B14, &lit_4278);
#pragma pop

/* 80AD4B18-80AD4B1C 0000B8 0004+00 0/3 0/0 0/0 .rodata          @4279 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4279 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80AD4B18, &lit_4279);
#pragma pop

/* 80AD4B1C-80AD4B20 0000BC 0004+00 2/5 0/0 0/0 .rodata          @4443 */
SECTION_RODATA static f32 const lit_4443 = 1.0f;
COMPILER_STRIP_GATE(0x80AD4B1C, &lit_4443);

/* 80AD0FF8-80AD134C 0004D8 0354+00 1/1 0/0 0/0 .text            CreateHeap__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::CreateHeap() {
    // NONMATCHING
}

/* 80AD134C-80AD1388 00082C 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80AD1388-80AD13A0 000868 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80AD13A0-80AD13DC 000880 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80AD13DC-80AD13F4 0008BC 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80AD13F4-80AD143C 0008D4 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80AD143C-80AD1460 00091C 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80AD1460-80AD149C 000940 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80AD149C-80AD14B4 00097C 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80AD14B4-80AD14F0 000994 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80AD14F0-80AD1508 0009D0 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80AD1508-80AD153C 0009E8 0034+00 1/1 0/0 0/0 .text            Delete__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::Delete() {
    // NONMATCHING
}

/* 80AD153C-80AD1610 000A1C 00D4+00 2/2 0/0 0/0 .text            Execute__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::Execute() {
    // NONMATCHING
}

/* 80AD1610-80AD16A4 000AF0 0094+00 1/1 0/0 0/0 .text            Draw__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::Draw() {
    // NONMATCHING
}

/* 80AD16A4-80AD16C4 000B84 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__14daNpc_Seira2_cFP10fopAc_ac_c           */
void daNpc_Seira2_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80AD16C4-80AD171C 000BA4 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__14daNpc_Seira2_cFP8J3DJointi              */
void daNpc_Seira2_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80AD171C-80AD179C 000BFC 0080+00 1/1 0/0 0/0 .text            getType__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::getType() {
    // NONMATCHING
}

/* 80AD179C-80AD17B8 000C7C 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__14daNpc_Seira2_cFv
 */
void daNpc_Seira2_c::getFlowNodeNo() {
    // NONMATCHING
}

/* 80AD17B8-80AD17C4 000C98 000C+00 1/1 0/0 0/0 .text            getMaxNumItem__14daNpc_Seira2_cFv
 */
void daNpc_Seira2_c::getMaxNumItem() {
    // NONMATCHING
}

/* 80AD17C4-80AD182C 000CA4 0068+00 1/1 0/0 0/0 .text            checkBottle__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::checkBottle() {
    // NONMATCHING
}

/* 80AD182C-80AD1834 000D0C 0008+00 1/1 0/0 0/0 .text            isDelete__14daNpc_Seira2_cFv */
bool daNpc_Seira2_c::isDelete() {
    return false;
}

/* 80AD1834-80AD1968 000D14 0134+00 1/1 0/0 0/0 .text            reset__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::reset() {
    // NONMATCHING
}

/* 80AD1968-80AD19EC 000E48 0084+00 1/0 0/0 0/0 .text            afterJntAnm__14daNpc_Seira2_cFi */
void daNpc_Seira2_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 80AD19EC-80AD1B38 000ECC 014C+00 1/0 0/0 0/0 .text            setParam__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::setParam() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AD4B20-80AD4B24 0000C0 0004+00 7/9 0/0 0/0 .rodata          @4661 */
SECTION_RODATA static f32 const lit_4661 = -1.0f;
COMPILER_STRIP_GATE(0x80AD4B20, &lit_4661);

/* 80AD1B38-80AD1BF8 001018 00C0+00 1/0 0/0 0/0 .text setAfterTalkMotion__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80AD1BF8-80AD1C60 0010D8 0068+00 1/1 0/0 0/0 .text            srchActors__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::srchActors() {
    // NONMATCHING
}

/* 80AD1C60-80AD1E04 001140 01A4+00 1/0 0/0 0/0 .text            evtTalk__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::evtTalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AD4B5C-80AD4B5C 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AD4B80 = "Seira2";
#pragma pop

/* 80AD1E04-80AD1ED4 0012E4 00D0+00 1/0 0/0 0/0 .text            evtCutProc__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::evtCutProc() {
    // NONMATCHING
}

/* 80AD1ED4-80AD2030 0013B4 015C+00 1/0 0/0 0/0 .text            action__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::action() {
    // NONMATCHING
}

/* 80AD2030-80AD20A8 001510 0078+00 1/0 0/0 0/0 .text            beforeMove__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AD4B24-80AD4B28 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4854 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4854 = -30.0f;
COMPILER_STRIP_GATE(0x80AD4B24, &lit_4854);
#pragma pop

/* 80AD4B28-80AD4B2C 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4855 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4855 = 10.0f;
COMPILER_STRIP_GATE(0x80AD4B28, &lit_4855);
#pragma pop

/* 80AD4B2C-80AD4B30 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4856 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4856 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80AD4B2C, &lit_4856);
#pragma pop

/* 80AD4B30-80AD4B34 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4857 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4857 = 170.0f;
COMPILER_STRIP_GATE(0x80AD4B30, &lit_4857);
#pragma pop

/* 80AD4B34-80AD4B38 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4858 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4858 = 80.0f;
COMPILER_STRIP_GATE(0x80AD4B34, &lit_4858);
#pragma pop

/* 80AD4B38-80AD4B40 0000D8 0008+00 2/4 0/0 0/0 .rodata          @4860 */
SECTION_RODATA static u8 const lit_4860[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AD4B38, &lit_4860);

/* 80AD20A8-80AD23A8 001588 0300+00 1/0 0/0 0/0 .text            setAttnPos__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::setAttnPos() {
    // NONMATCHING
}

/* 80AD23A8-80AD2550 001888 01A8+00 1/0 0/0 0/0 .text            setCollision__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::setCollision() {
    // NONMATCHING
}

/* 80AD2550-80AD2558 001A30 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__14daNpc_Seira2_cFv */
bool daNpc_Seira2_c::drawDbgInfo() {
    return false;
}

/* 80AD2558-80AD2630 001A38 00D8+00 1/0 0/0 0/0 .text            drawOtherMdl__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::drawOtherMdl() {
    // NONMATCHING
}

/* 80AD2630-80AD2710 001B10 00E0+00 2/2 0/0 0/0 .text            setBottleAnm__14daNpc_Seira2_cFiifb
 */
void daNpc_Seira2_c::setBottleAnm(int param_0, int param_1, f32 param_2, bool param_3) {
    // NONMATCHING
}

/* 80AD2710-80AD2748 001BF0 0038+00 1/0 0/0 0/0 .text afterSetMotionAnm__14daNpc_Seira2_cFiifi */
void daNpc_Seira2_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    // NONMATCHING
}

/* 80AD2748-80AD2870 001C28 0128+00 1/1 0/0 0/0 .text            selectAction__14daNpc_Seira2_cFv */
void daNpc_Seira2_c::selectAction() {
    // NONMATCHING
}

/* 80AD2870-80AD289C 001D50 002C+00 1/1 0/0 0/0 .text
 * chkAction__14daNpc_Seira2_cFM14daNpc_Seira2_cFPCvPvPv_i      */
void daNpc_Seira2_c::chkAction(int (daNpc_Seira2_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80AD289C-80AD2944 001D7C 00A8+00 2/2 0/0 0/0 .text
 * setAction__14daNpc_Seira2_cFM14daNpc_Seira2_cFPCvPvPv_i      */
void daNpc_Seira2_c::setAction(int (daNpc_Seira2_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AD4B5C-80AD4B5C 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AD4B87 = "R_SP01";
#pragma pop

/* 80AD2944-80AD29BC 001E24 0078+00 2/2 0/0 0/0 .text checkStageIsSeira2sShop__14daNpc_Seira2_cFv
 */
void daNpc_Seira2_c::checkStageIsSeira2sShop() {
    // NONMATCHING
}

/* 80AD29BC-80AD2B68 001E9C 01AC+00 1/0 0/0 0/0 .text            wait__14daNpc_Seira2_cFPv */
void daNpc_Seira2_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80AD2B68-80AD2D8C 002048 0224+00 2/0 0/0 0/0 .text            sit__14daNpc_Seira2_cFPv */
void daNpc_Seira2_c::sit(void* param_0) {
    // NONMATCHING
}

/* 80AD2D8C-80AD2F14 00226C 0188+00 2/0 0/0 0/0 .text            happy__14daNpc_Seira2_cFPv */
void daNpc_Seira2_c::happy(void* param_0) {
    // NONMATCHING
}

/* 80AD2F14-80AD31F0 0023F4 02DC+00 2/0 0/0 0/0 .text            worry__14daNpc_Seira2_cFPv */
void daNpc_Seira2_c::worry(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AD4B40-80AD4B48 0000E0 0008+00 0/1 0/0 0/0 .rodata          @4918 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4918[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AD4B40, &lit_4918);
#pragma pop

/* 80AD4B48-80AD4B50 0000E8 0008+00 0/1 0/0 0/0 .rodata          @4919 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4919[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AD4B48, &lit_4919);
#pragma pop

/* 80AD4B50-80AD4B58 0000F0 0008+00 0/1 0/0 0/0 .rodata          @4920 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4920[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AD4B50, &lit_4920);
#pragma pop

/* 80AD4B58-80AD4B5C 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5421 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5421 = 350.0f;
COMPILER_STRIP_GATE(0x80AD4B58, &lit_5421);
#pragma pop

/* 80AD31F0-80AD3508 0026D0 0318+00 1/0 0/0 0/0 .text            sad__14daNpc_Seira2_cFPv */
void daNpc_Seira2_c::sad(void* param_0) {
    // NONMATCHING
}

/* 80AD3508-80AD3614 0029E8 010C+00 1/0 0/0 0/0 .text            lookaround__14daNpc_Seira2_cFPv */
void daNpc_Seira2_c::lookaround(void* param_0) {
    // NONMATCHING
}

/* 80AD3614-80AD3720 002AF4 010C+00 1/0 0/0 0/0 .text            smile__14daNpc_Seira2_cFPv */
void daNpc_Seira2_c::smile(void* param_0) {
    // NONMATCHING
}

/* 80AD3720-80AD3890 002C00 0170+00 2/0 0/0 0/0 .text            talk__14daNpc_Seira2_cFPv */
void daNpc_Seira2_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80AD3890-80AD3960 002D70 00D0+00 2/0 0/0 0/0 .text            shop__14daNpc_Seira2_cFPv */
void daNpc_Seira2_c::shop(void* param_0) {
    // NONMATCHING
}

/* 80AD3960-80AD3980 002E40 0020+00 1/0 0/0 0/0 .text            daNpc_Seira2_Create__FPv */
static void daNpc_Seira2_Create(void* param_0) {
    // NONMATCHING
}

/* 80AD3980-80AD39A0 002E60 0020+00 1/0 0/0 0/0 .text            daNpc_Seira2_Delete__FPv */
static void daNpc_Seira2_Delete(void* param_0) {
    // NONMATCHING
}

/* 80AD39A0-80AD39C0 002E80 0020+00 1/0 0/0 0/0 .text            daNpc_Seira2_Execute__FPv */
static void daNpc_Seira2_Execute(void* param_0) {
    // NONMATCHING
}

/* 80AD39C0-80AD39E0 002EA0 0020+00 1/0 0/0 0/0 .text            daNpc_Seira2_Draw__FPv */
static void daNpc_Seira2_Draw(void* param_0) {
    // NONMATCHING
}

/* 80AD39E0-80AD39E8 002EC0 0008+00 1/0 0/0 0/0 .text            daNpc_Seira2_IsDelete__FPv */
static bool daNpc_Seira2_IsDelete(void* param_0) {
    return true;
}

/* 80AD39E8-80AD3A18 002EC8 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80AD3A18-80AD3A60 002EF8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AD3A60-80AD3AA8 002F40 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80AD3AA8-80AD3AE4 002F88 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80AD3AE4-80AD3B2C 002FC4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80AD3B2C-80AD3B74 00300C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80AD3B74-80AD3BB0 003054 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80AD3BB0-80AD3BEC 003090 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80AD3BEC-80AD3FF0 0030CC 0404+00 1/1 0/0 0/0 .text
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

/* 80AD3FF0-80AD3FF4 0034D0 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80AD3FF4-80AD40F0 0034D4 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80AD40F0-80AD40F4 0035D0 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80AD40F4-80AD413C 0035D4 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80AD413C-80AD41AC 00361C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80AD41AC-80AD4208 00368C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AD4208-80AD4278 0036E8 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80AD4278-80AD42C0 003758 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80AD42C0-80AD43DC 0037A0 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80AD43DC-80AD45E4 0038BC 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80AD45E4-80AD45E8 003AC4 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80AD45F8-80AD4600 003AD8 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80AD4600-80AD4608 003AE0 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80AD4610-80AD4618 003AF0 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80AD461C-80AD4624 003AFC 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80AD4624-80AD463C 003B04 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80AD463C-80AD4640 003B1C 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80AD4640-80AD4648 003B20 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80AD4648-80AD4678 003B28 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80AD4678-80AD46A8 003B58 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80AD46A8-80AD46AC 003B88 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AD46AC-80AD46B0 003B8C 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AD46B0-80AD46B4 003B90 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AD46B4-80AD46B8 003B94 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AD46B8-80AD46D4 003B98 001C+00 2/2 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80AD46B8(void* _this, int* param_0) {
    // NONMATCHING
}

/* 80AD46D4-80AD4750 003BB4 007C+00 2/2 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
extern "C" void func_80AD46D4(void* _this, int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AD5600-80AD560C 000A70 000C+00 2/2 0/0 0/0 .data            __vt__20daNpc_Seira2_Param_c */
SECTION_DATA extern void* __vt__20daNpc_Seira2_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__20daNpc_Seira2_Param_cFv,
};

/* 80AD5618-80AD5624 000008 000C+00 1/1 0/0 0/0 .bss             @3870 */
static u8 lit_3870[12];

/* 80AD5624-80AD5628 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80AD4750-80AD47B8 003C30 0068+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_seira2_cpp */
void __sinit_d_a_npc_seira2_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80AD4750, __sinit_d_a_npc_seira2_cpp);
#pragma pop

/* 80AD47B8-80AD4884 003C98 00CC+00 1/1 0/0 0/0 .text
 * __ct__14daNpc_Seira2_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Seira2_c::daNpc_Seira2_c(daNpcT_faceMotionAnmData_c const* param_0,
                                   daNpcT_motionAnmData_c const* param_1,
                                   daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                   int param_3,
                                   daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                   int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80AD4884-80AD488C 003D64 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__14daNpc_Seira2_cFv */
u16 daNpc_Seira2_c::getEyeballMaterialNo() {
    return 2;
}

/* 80AD488C-80AD4894 003D6C 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__14daNpc_Seira2_cFv
 */
s32 daNpc_Seira2_c::getHeadJointNo() {
    return 4;
}

/* 80AD4894-80AD489C 003D74 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__14daNpc_Seira2_cFv
 */
s32 daNpc_Seira2_c::getNeckJointNo() {
    return 3;
}

/* 80AD489C-80AD48A4 003D7C 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__14daNpc_Seira2_cFv */
bool daNpc_Seira2_c::getBackboneJointNo() {
    return true;
}

/* 80AD48A4-80AD48B4 003D84 0010+00 1/0 0/0 0/0 .text checkChangeJoint__14daNpc_Seira2_cFi */
void daNpc_Seira2_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80AD48B4-80AD48C4 003D94 0010+00 1/0 0/0 0/0 .text checkRemoveJoint__14daNpc_Seira2_cFi */
void daNpc_Seira2_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80AD48C4-80AD490C 003DA4 0048+00 2/1 0/0 0/0 .text            __dt__20daNpc_Seira2_Param_cFv */
daNpc_Seira2_Param_c::~daNpc_Seira2_Param_c() {
    // NONMATCHING
}

/* 80AD490C-80AD4914 003DEC 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80AD490C() {
    // NONMATCHING
}

/* 80AD4914-80AD491C 003DF4 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80AD4914() {
    // NONMATCHING
}

/* 80AD491C-80AD4A34 003DFC 0118+00 1/1 0/0 0/0 .text
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

/* 80AD4A34-80AD4A3C 003F14 0008+00 1/0 0/0 0/0 .text            getResName2__13dShopSystem_cFi */
// bool dShopSystem_c::getResName2(int param_0) {
extern "C" bool getResName2__13dShopSystem_cFi() {
    return false;
}

/* 80AD4A3C-80AD4A44 003F1C 0008+00 1/0 0/0 0/0 .text
 * beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci         */
// bool dShopSystem_c::beforeStartSeqAction(dMsgFlow_c* param_0, int param_1) {
extern "C" bool beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci() {
    return true;
}

/* 80AD4A44-80AD4A4C 003F24 0008+00 1/0 0/0 0/0 .text
 * beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci        */
// bool dShopSystem_c::beforeSelectSeqAction(dMsgFlow_c* param_0, int param_1) {
extern "C" bool beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci() {
    return true;
}

/* 80AD4B5C-80AD4B5C 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
