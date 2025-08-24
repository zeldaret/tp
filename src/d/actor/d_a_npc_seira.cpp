/**
 * @file d_a_npc_seira.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_seira.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__13daNpc_Seira_cFv();
extern "C" void create__13daNpc_Seira_cFv();
extern "C" void CreateHeap__13daNpc_Seira_cFv();
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
extern "C" void Delete__13daNpc_Seira_cFv();
extern "C" void Execute__13daNpc_Seira_cFv();
extern "C" void Draw__13daNpc_Seira_cFv();
extern "C" void createHeapCallBack__13daNpc_Seira_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__13daNpc_Seira_cFP8J3DJointi();
extern "C" void getType__13daNpc_Seira_cFv();
extern "C" void getFlowNodeNo__13daNpc_Seira_cFv();
extern "C" void checkBottle__13daNpc_Seira_cFv();
extern "C" void getNpcType__13daNpc_Seira_cFv();
extern "C" bool isDelete__13daNpc_Seira_cFv();
extern "C" void reset__13daNpc_Seira_cFv();
extern "C" void afterJntAnm__13daNpc_Seira_cFi();
extern "C" void setParam__13daNpc_Seira_cFv();
extern "C" void checkChangeEvt__13daNpc_Seira_cFv();
extern "C" void setAfterTalkMotion__13daNpc_Seira_cFv();
extern "C" void srchActors__13daNpc_Seira_cFv();
extern "C" void evtTalk__13daNpc_Seira_cFv();
extern "C" void evtCutProc__13daNpc_Seira_cFv();
extern "C" void action__13daNpc_Seira_cFv();
extern "C" void beforeMove__13daNpc_Seira_cFv();
extern "C" void setAttnPos__13daNpc_Seira_cFv();
extern "C" void setCollision__13daNpc_Seira_cFv();
extern "C" bool drawDbgInfo__13daNpc_Seira_cFv();
extern "C" void drawOtherMdl__13daNpc_Seira_cFv();
extern "C" void setBottleAnm__13daNpc_Seira_cFiifb();
extern "C" void afterSetMotionAnm__13daNpc_Seira_cFiifi();
extern "C" void changeAnm__13daNpc_Seira_cFPiPi();
extern "C" void changeBck__13daNpc_Seira_cFPiPi();
extern "C" void changeBtp__13daNpc_Seira_cFPiPi();
extern "C" void changeBtk__13daNpc_Seira_cFPiPi();
extern "C" void selectAction__13daNpc_Seira_cFv();
extern "C" void chkAction__13daNpc_Seira_cFM13daNpc_Seira_cFPCvPvPv_i();
extern "C" void setAction__13daNpc_Seira_cFM13daNpc_Seira_cFPCvPvPv_i();
extern "C" void cutConversationAboutSaru__13daNpc_Seira_cFi();
extern "C" void checkStageIsSeirasShop__13daNpc_Seira_cFv();
extern "C" void getShopItemType__13daNpc_Seira_cFv();
extern "C" void wait__13daNpc_Seira_cFPv();
extern "C" void sit__13daNpc_Seira_cFPv();
extern "C" void happy__13daNpc_Seira_cFPv();
extern "C" void worry__13daNpc_Seira_cFPv();
extern "C" void sad__13daNpc_Seira_cFPv();
extern "C" void lookaround__13daNpc_Seira_cFPv();
extern "C" void lookaround_wait__13daNpc_Seira_cFPv();
extern "C" void smile__13daNpc_Seira_cFPv();
extern "C" void talk__13daNpc_Seira_cFPv();
extern "C" void shop__13daNpc_Seira_cFPv();
extern "C" static void daNpc_Seira_Create__FPv();
extern "C" static void daNpc_Seira_Delete__FPv();
extern "C" static void daNpc_Seira_Execute__FPv();
extern "C" static void daNpc_Seira_Draw__FPv();
extern "C" static bool daNpc_Seira_IsDelete__FPv();
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
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void func_80ACFA28(void* _this, int*);
extern "C" void func_80ACFA44(void* _this, int, int);
extern "C" void __sinit_d_a_npc_seira_cpp();
extern "C" void
__ct__13daNpc_Seira_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__13daNpc_Seira_cFv();
extern "C" s32 getHeadJointNo__13daNpc_Seira_cFv();
extern "C" s32 getNeckJointNo__13daNpc_Seira_cFv();
extern "C" bool getBackboneJointNo__13daNpc_Seira_cFv();
extern "C" void checkChangeJoint__13daNpc_Seira_cFi();
extern "C" void checkRemoveJoint__13daNpc_Seira_cFi();
extern "C" void __dt__19daNpc_Seira_Param_cFv();
extern "C" static void func_80ACFC9C();
extern "C" static void func_80ACFCA4();
extern "C" void
__ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" bool getResName2__13dShopSystem_cFi();
extern "C" bool beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci();
extern "C" bool beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci();
extern "C" u8 const m__19daNpc_Seira_Param_c[140];
extern "C" extern char const* const d_a_npc_seira__stringBase0;
extern "C" void* mCutNameList__13daNpc_Seira_c[2];
extern "C" u8 mCutList__13daNpc_Seira_c[24];

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
extern "C" void __ct__11dBgS_LinChkFv();
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
extern "C" void evtChange__8daNpcT_cFv();
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
extern "C" void daNpcT_offTmpBit__FUl();
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
extern "C" void createShopItem__13dShopSystem_cFi();
extern "C" void deleteObject__13dShopSystem_cFv();
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
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_25();
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
extern "C" extern u8 g_cursorHIO[68 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80ACFF04-80ACFF04 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80ACFF04 = "";
SECTION_DEAD static char const* const stringBase_80ACFF05 = "DEFAULT_GETITEM";
SECTION_DEAD static char const* const stringBase_80ACFF15 = "CONVERSATION_ABOUT_SARU01";
SECTION_DEAD static char const* const stringBase_80ACFF2F = "CONVERSATION_ABOUT_SARU02";
SECTION_DEAD static char const* const stringBase_80ACFF49 = "Seira";
SECTION_DEAD static char const* const stringBase_80ACFF4F = "SeraBtl";
SECTION_DEAD static char const* const stringBase_80ACFF57 = "Sera";
SECTION_DEAD static char const* const stringBase_80ACFF5C = "Seira_p1";
SECTION_DEAD static char const* const stringBase_80ACFF65 = "CONVERSATION_ABOUT_SARU";
#pragma pop

/* 80ACFFB0-80ACFFC0 000020 0010+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[16] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02,
};

/* 80ACFFC0-80ACFFE0 -00001 0020+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[8] = {
    (void*)&d_a_npc_seira__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_seira__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_seira__stringBase0) + 0x11),
    (void*)0x00000003,
    (void*)(((char*)&d_a_npc_seira__stringBase0) + 0x2B),
    (void*)0x00000003,
};
#pragma pop

/* 80ACFFE0-80ACFFF4 -00001 0014+00 3/4 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[5] = {
    (void*)&d_a_npc_seira__stringBase0,
    (void*)(((char*)&d_a_npc_seira__stringBase0) + 0x45),
    (void*)(((char*)&d_a_npc_seira__stringBase0) + 0x4B),
    (void*)(((char*)&d_a_npc_seira__stringBase0) + 0x53),
    (void*)(((char*)&d_a_npc_seira__stringBase0) + 0x58),
};

/* 80ACFFF4-80ACFFF8 000064 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u32 l_loadResPtrn0 = 0x030102FF;

/* 80ACFFF8-80ACFFFC 000068 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u8 l_loadResPtrn1[3 + 1 /* padding */] = {
    0x03,
    0x04,
    0xFF,
    /* padding */
    0x00,
};

/* 80ACFFFC-80AD0018 -00001 001C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[7] = {
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn1, (void*)&l_loadResPtrn0,
};

/* 80AD0018-80AD01A0 000088 0188+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
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

/* 80AD01A0-80AD0478 000210 02D8+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[728] = {
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
    0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3F,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x15,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3A,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x18,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x35,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x1A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x36, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x38,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x20,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x40,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x26,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x0C,
};
#pragma pop

/* 80AD0478-80AD0558 0004E8 00E0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
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

/* 80AD0558-80AD06F8 0005C8 01A0+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[416] = {
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x01, 0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x01, 0x00, 0x10, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x01, 0x00, 0x18, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x17, 0xFF, 0x01, 0x00, 0x18, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x01, 0x00, 0x10, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x18, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x15, 0xFF, 0x01, 0x00, 0x16, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x16, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x19, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80AD06F8-80AD0700 -00001 0008+00 1/1 0/0 0/0 .data            mCutNameList__13daNpc_Seira_c */
SECTION_DATA void* daNpc_Seira_c::mCutNameList[2] = {
    (void*)&d_a_npc_seira__stringBase0,
    (void*)(((char*)&d_a_npc_seira__stringBase0) + 0x61),
};

/* 80AD0700-80AD070C -00001 000C+00 1/1 0/0 0/0 .data            @3871 */
SECTION_DATA static void* lit_3871[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutSaru__13daNpc_Seira_cFi,
};

/* 80AD070C-80AD0724 00077C 0018+00 2/2 0/0 0/0 .data            mCutList__13daNpc_Seira_c */
SECTION_DATA u8 daNpc_Seira_c::mCutList[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80AD0724-80AD0730 -00001 000C+00 1/1 0/0 0/0 .data            @4679 */
SECTION_DATA static void* lit_4679[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Seira_cFPv,
};

/* 80AD0730-80AD073C -00001 000C+00 0/1 0/0 0/0 .data            @4737 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4737[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD073C-80AD0748 -00001 000C+00 0/1 0/0 0/0 .data            @4745 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4745[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD0748-80AD0754 -00001 000C+00 0/1 0/0 0/0 .data            @4748 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4748[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD0754-80AD0760 -00001 000C+00 0/1 0/0 0/0 .data            @4756 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4756[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD0760-80AD076C -00001 000C+00 0/1 0/0 0/0 .data            @5003 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5003[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sit__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD076C-80AD0778 -00001 000C+00 0/1 0/0 0/0 .data            @5004 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5004[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)happy__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD0778-80AD0784 -00001 000C+00 0/1 0/0 0/0 .data            @5005 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5005[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)worry__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD0784-80AD0864 0007F4 00E0+00 1/1 0/0 0/0 .data            bottlAnmData$5085 */
SECTION_DATA static u8 bottlAnmData[224] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02,
};

/* 80AD0864-80AD0890 -00001 002C+00 1/1 0/0 0/0 .data            @5133 */
SECTION_DATA static void* lit_5133[11] = {
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0x34),
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0x48),
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0xA8),
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0xA8),
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0xA8),
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0x5C),
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0xA8),
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0x70),
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0x84),
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0xA8),
    (void*)(((char*)changeBck__13daNpc_Seira_cFPiPi) + 0x98),
};

/* 80AD0890-80AD08C8 -00001 0038+00 1/1 0/0 0/0 .data            @5147 */
SECTION_DATA static void* lit_5147[14] = {
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x34),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x94),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x48),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x94),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x94),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x94),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x94),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x94),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x94),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x5C),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x94),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x70),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x94),
    (void*)(((char*)changeBtp__13daNpc_Seira_cFPiPi) + 0x84),
};

/* 80AD08C8-80AD08D4 -00001 000C+00 0/1 0/0 0/0 .data            @5162 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5162[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sit__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD08D4-80AD08E0 -00001 000C+00 0/1 0/0 0/0 .data            @5164 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5164[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)happy__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD08E0-80AD08EC -00001 000C+00 0/1 0/0 0/0 .data            @5166 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5166[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)worry__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD08EC-80AD08F8 -00001 000C+00 0/1 0/0 0/0 .data            @5168 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5168[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)sad__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD08F8-80AD0904 -00001 000C+00 0/1 0/0 0/0 .data            @5170 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5170[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)smile__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD0904-80AD0910 -00001 000C+00 0/1 0/0 0/0 .data            @5174 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5174[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)lookaround_wait__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD0910-80AD091C -00001 000C+00 0/1 0/0 0/0 .data            @5176 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5176[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)lookaround__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD091C-80AD0928 -00001 000C+00 0/1 0/0 0/0 .data            @5178 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5178[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_Seira_cFPv,
};
#pragma pop

/* 80AD0928-80AD0948 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Seira_MethodTable */
static actor_method_class daNpc_Seira_MethodTable = {
    (process_method_func)daNpc_Seira_Create__FPv,
    (process_method_func)daNpc_Seira_Delete__FPv,
    (process_method_func)daNpc_Seira_Execute__FPv,
    (process_method_func)daNpc_Seira_IsDelete__FPv,
    (process_method_func)daNpc_Seira_Draw__FPv,
};

/* 80AD0948-80AD0978 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SEIRA */
extern actor_process_profile_definition g_profile_NPC_SEIRA = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_SEIRA,           // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_Seira_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  361,                      // mPriority
  &daNpc_Seira_MethodTable, // sub_method
  0x00044108,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80AD0978-80AD0984 0009E8 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80AD0984-80AD0990 0009F4 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80AD0990-80AD09B4 000A00 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80ACFCA4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80ACFC9C,
};

/* 80AD09B4-80AD09C0 000A24 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80AD09C0-80AD09CC 000A30 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80AD09CC-80AD09D8 000A3C 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80AD09D8-80AD09E4 000A48 000C+00 2/2 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80AD09E4-80AD09F0 000A54 000C+00 2/2 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80AD09F0-80AD09FC 000A60 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80AD09FC-80AD0A08 000A6C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80AD0A08-80AD0A14 000A78 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80AD0A14-80AD0AE4 000A84 00D0+00 2/2 0/0 0/0 .data            __vt__13daNpc_Seira_c */
SECTION_DATA extern void* __vt__13daNpc_Seira_c[52] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpc_Seira_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__13daNpc_Seira_cFi,
    (void*)checkRemoveJoint__13daNpc_Seira_cFi,
    (void*)getBackboneJointNo__13daNpc_Seira_cFv,
    (void*)getNeckJointNo__13daNpc_Seira_cFv,
    (void*)getHeadJointNo__13daNpc_Seira_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__13daNpc_Seira_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__13daNpc_Seira_cFi,
    (void*)setParam__13daNpc_Seira_cFv,
    (void*)checkChangeEvt__13daNpc_Seira_cFv,
    (void*)evtTalk__13daNpc_Seira_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__13daNpc_Seira_cFv,
    (void*)setAfterTalkMotion__13daNpc_Seira_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__13daNpc_Seira_cFv,
    (void*)beforeMove__13daNpc_Seira_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__13daNpc_Seira_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__13daNpc_Seira_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__13daNpc_Seira_cFv,
    (void*)drawOtherMdl__13daNpc_Seira_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__13daNpc_Seira_cFiifi,
    (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__13daNpc_Seira_cFPiPi,
    (void*)changeBck__13daNpc_Seira_cFPiPi,
    (void*)changeBtp__13daNpc_Seira_cFPiPi,
    (void*)changeBtk__13daNpc_Seira_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
    (void*)getResName2__13dShopSystem_cFi,
    (void*)beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci,
    (void*)beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci,
};

/* 80ACB7CC-80ACB918 0000EC 014C+00 1/0 0/0 0/0 .text            __dt__13daNpc_Seira_cFv */
daNpc_Seira_c::~daNpc_Seira_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ACFDF0-80ACFE7C 000000 008C+00 9/9 0/0 0/0 .rodata          m__19daNpc_Seira_Param_c */
SECTION_RODATA u8 const daNpc_Seira_Param_c::m[140] = {
    0x43, 0x52, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00, 0xC2, 0x70, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ACFDF0, &daNpc_Seira_Param_c::m);

/* 80ACFE7C-80ACFE80 00008C 0004+00 0/1 0/0 0/0 .rodata          @3968 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3968 = -300.0f;
COMPILER_STRIP_GATE(0x80ACFE7C, &lit_3968);
#pragma pop

/* 80ACFE80-80ACFE84 000090 0004+00 0/1 0/0 0/0 .rodata          @3969 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3969 = -50.0f;
COMPILER_STRIP_GATE(0x80ACFE80, &lit_3969);
#pragma pop

/* 80ACFE84-80ACFE88 000094 0004+00 0/1 0/0 0/0 .rodata          @3970 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3970 = 300.0f;
COMPILER_STRIP_GATE(0x80ACFE84, &lit_3970);
#pragma pop

/* 80ACFE88-80ACFE8C 000098 0004+00 0/1 0/0 0/0 .rodata          @3971 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3971 = 450.0f;
COMPILER_STRIP_GATE(0x80ACFE88, &lit_3971);
#pragma pop

/* 80ACB918-80ACBBD4 000238 02BC+00 1/1 0/0 0/0 .text            create__13daNpc_Seira_cFv */
void daNpc_Seira_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ACFE8C-80ACFE90 00009C 0004+00 0/1 0/0 0/0 .rodata          @4060 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4060 = 0.25f;
COMPILER_STRIP_GATE(0x80ACFE8C, &lit_4060);
#pragma pop

/* 80ACFE90-80ACFE94 0000A0 0004+00 0/2 0/0 0/0 .rodata          @4061 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4061 = 20.0f;
COMPILER_STRIP_GATE(0x80ACFE90, &lit_4061);
#pragma pop

/* 80ACFE94-80ACFE98 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4062 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4062 = 5.0f;
COMPILER_STRIP_GATE(0x80ACFE94, &lit_4062);
#pragma pop

/* 80ACFE98-80ACFE9C 0000A8 0004+00 13/20 0/0 0/0 .rodata          @4063 */
SECTION_RODATA static u8 const lit_4063[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80ACFE98, &lit_4063);

/* 80ACFE9C-80ACFEA0 0000AC 0004+00 1/2 0/0 0/0 .rodata          @4064 */
SECTION_RODATA static f32 const lit_4064 = 100.0f;
COMPILER_STRIP_GATE(0x80ACFE9C, &lit_4064);

/* 80ACFEA0-80ACFEA4 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4065 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4065 = 60.0f;
COMPILER_STRIP_GATE(0x80ACFEA0, &lit_4065);
#pragma pop

/* 80ACFEA4-80ACFEA8 0000B4 0004+00 0/2 0/0 0/0 .rodata          @4286 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4286 = 65536.0f;
COMPILER_STRIP_GATE(0x80ACFEA4, &lit_4286);
#pragma pop

/* 80ACFEA8-80ACFEAC 0000B8 0004+00 0/3 0/0 0/0 .rodata          @4287 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4287 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80ACFEA8, &lit_4287);
#pragma pop

/* 80ACFEAC-80ACFEB0 0000BC 0004+00 2/5 0/0 0/0 .rodata          @4455 */
SECTION_RODATA static f32 const lit_4455 = 1.0f;
COMPILER_STRIP_GATE(0x80ACFEAC, &lit_4455);

/* 80ACBBD4-80ACBF40 0004F4 036C+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_Seira_cFv */
void daNpc_Seira_c::CreateHeap() {
    // NONMATCHING
}

/* 80ACBF40-80ACBF7C 000860 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80ACBF7C-80ACBF94 00089C 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80ACBF94-80ACBFD0 0008B4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80ACBFD0-80ACBFE8 0008F0 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80ACBFE8-80ACC030 000908 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80ACC030-80ACC054 000950 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80ACC054-80ACC090 000974 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80ACC090-80ACC0A8 0009B0 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80ACC0A8-80ACC0E4 0009C8 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80ACC0E4-80ACC0FC 000A04 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80ACC0FC-80ACC130 000A1C 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_Seira_cFv */
void daNpc_Seira_c::Delete() {
    // NONMATCHING
}

/* 80ACC130-80ACC21C 000A50 00EC+00 2/2 0/0 0/0 .text            Execute__13daNpc_Seira_cFv */
void daNpc_Seira_c::Execute() {
    // NONMATCHING
}

/* 80ACC21C-80ACC2B0 000B3C 0094+00 1/1 0/0 0/0 .text            Draw__13daNpc_Seira_cFv */
void daNpc_Seira_c::Draw() {
    // NONMATCHING
}

/* 80ACC2B0-80ACC2D0 000BD0 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_Seira_cFP10fopAc_ac_c            */
void daNpc_Seira_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80ACC2D0-80ACC328 000BF0 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpc_Seira_cFP8J3DJointi               */
void daNpc_Seira_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80ACC328-80ACC424 000C48 00FC+00 1/1 0/0 0/0 .text            getType__13daNpc_Seira_cFv */
void daNpc_Seira_c::getType() {
    // NONMATCHING
}

/* 80ACC424-80ACC440 000D44 001C+00 1/1 0/0 0/0 .text            getFlowNodeNo__13daNpc_Seira_cFv */
void daNpc_Seira_c::getFlowNodeNo() {
    // NONMATCHING
}

/* 80ACC440-80ACC4A8 000D60 0068+00 1/1 0/0 0/0 .text            checkBottle__13daNpc_Seira_cFv */
void daNpc_Seira_c::checkBottle() {
    // NONMATCHING
}

/* 80ACC4A8-80ACC4C8 000DC8 0020+00 1/1 0/0 0/0 .text            getNpcType__13daNpc_Seira_cFv */
void daNpc_Seira_c::getNpcType() {
    // NONMATCHING
}

/* 80ACC4C8-80ACC4D0 000DE8 0008+00 1/1 0/0 0/0 .text            isDelete__13daNpc_Seira_cFv */
bool daNpc_Seira_c::isDelete() {
    return false;
}

/* 80ACC4D0-80ACC618 000DF0 0148+00 1/1 0/0 0/0 .text            reset__13daNpc_Seira_cFv */
void daNpc_Seira_c::reset() {
    // NONMATCHING
}

/* 80ACC618-80ACC69C 000F38 0084+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpc_Seira_cFi */
void daNpc_Seira_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 80ACC69C-80ACC818 000FBC 017C+00 1/0 0/0 0/0 .text            setParam__13daNpc_Seira_cFv */
void daNpc_Seira_c::setParam() {
    // NONMATCHING
}

/* 80ACC818-80ACC8C0 001138 00A8+00 1/0 0/0 0/0 .text            checkChangeEvt__13daNpc_Seira_cFv
 */
void daNpc_Seira_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ACFEB0-80ACFEB4 0000C0 0004+00 10/11 0/0 0/0 .rodata          @4716 */
SECTION_RODATA static f32 const lit_4716 = -1.0f;
COMPILER_STRIP_GATE(0x80ACFEB0, &lit_4716);

/* 80ACC8C0-80ACC980 0011E0 00C0+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_Seira_cFv */
void daNpc_Seira_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80ACC980-80ACCA48 0012A0 00C8+00 1/1 0/0 0/0 .text            srchActors__13daNpc_Seira_cFv */
void daNpc_Seira_c::srchActors() {
    // NONMATCHING
}

/* 80ACCA48-80ACCBEC 001368 01A4+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_Seira_cFv */
void daNpc_Seira_c::evtTalk() {
    // NONMATCHING
}

/* 80ACCBEC-80ACCCBC 00150C 00D0+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_Seira_cFv */
void daNpc_Seira_c::evtCutProc() {
    // NONMATCHING
}

/* 80ACCCBC-80ACCE58 0015DC 019C+00 1/0 0/0 0/0 .text            action__13daNpc_Seira_cFv */
void daNpc_Seira_c::action() {
    // NONMATCHING
}

/* 80ACCE58-80ACCED0 001778 0078+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_Seira_cFv */
void daNpc_Seira_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ACFEB4-80ACFEB8 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4920 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4920 = -30.0f;
COMPILER_STRIP_GATE(0x80ACFEB4, &lit_4920);
#pragma pop

/* 80ACFEB8-80ACFEBC 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4921 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4921 = 10.0f;
COMPILER_STRIP_GATE(0x80ACFEB8, &lit_4921);
#pragma pop

/* 80ACFEBC-80ACFEC0 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4922 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4922 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80ACFEBC, &lit_4922);
#pragma pop

/* 80ACFEC0-80ACFEC4 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4923 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4923 = 170.0f;
COMPILER_STRIP_GATE(0x80ACFEC0, &lit_4923);
#pragma pop

/* 80ACFEC4-80ACFEC8 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4924 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4924 = 80.0f;
COMPILER_STRIP_GATE(0x80ACFEC4, &lit_4924);
#pragma pop

/* 80ACFEC8-80ACFED0 0000D8 0008+00 2/4 0/0 0/0 .rodata          @4926 */
SECTION_RODATA static u8 const lit_4926[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ACFEC8, &lit_4926);

/* 80ACCED0-80ACD1D0 0017F0 0300+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_Seira_cFv */
void daNpc_Seira_c::setAttnPos() {
    // NONMATCHING
}

/* 80ACD1D0-80ACD378 001AF0 01A8+00 1/0 0/0 0/0 .text            setCollision__13daNpc_Seira_cFv */
void daNpc_Seira_c::setCollision() {
    // NONMATCHING
}

/* 80ACD378-80ACD380 001C98 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_Seira_cFv */
bool daNpc_Seira_c::drawDbgInfo() {
    return false;
}

/* 80ACD380-80ACD458 001CA0 00D8+00 1/0 0/0 0/0 .text            drawOtherMdl__13daNpc_Seira_cFv */
void daNpc_Seira_c::drawOtherMdl() {
    // NONMATCHING
}

/* 80ACD458-80ACD538 001D78 00E0+00 2/2 0/0 0/0 .text            setBottleAnm__13daNpc_Seira_cFiifb
 */
void daNpc_Seira_c::setBottleAnm(int param_0, int param_1, f32 param_2, bool param_3) {
    // NONMATCHING
}

/* 80ACD538-80ACD570 001E58 0038+00 1/0 0/0 0/0 .text afterSetMotionAnm__13daNpc_Seira_cFiifi */
void daNpc_Seira_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    // NONMATCHING
}

/* 80ACD570-80ACD600 001E90 0090+00 1/0 0/0 0/0 .text            changeAnm__13daNpc_Seira_cFPiPi */
void daNpc_Seira_c::changeAnm(int* param_0, int* param_1) {
    // NONMATCHING
}

/* 80ACD600-80ACD6AC 001F20 00AC+00 2/0 0/0 0/0 .text            changeBck__13daNpc_Seira_cFPiPi */
void daNpc_Seira_c::changeBck(int* param_0, int* param_1) {
    // NONMATCHING
}

/* 80ACD6AC-80ACD744 001FCC 0098+00 2/0 0/0 0/0 .text            changeBtp__13daNpc_Seira_cFPiPi */
void daNpc_Seira_c::changeBtp(int* param_0, int* param_1) {
    // NONMATCHING
}

/* 80ACD744-80ACD770 002064 002C+00 1/0 0/0 0/0 .text            changeBtk__13daNpc_Seira_cFPiPi */
void daNpc_Seira_c::changeBtk(int* param_0, int* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ACFED0-80ACFED8 0000E0 0008+00 0/1 0/0 0/0 .rodata          @4984 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4984[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ACFED0, &lit_4984);
#pragma pop

/* 80ACFED8-80ACFEE0 0000E8 0008+00 0/1 0/0 0/0 .rodata          @4985 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4985[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ACFED8, &lit_4985);
#pragma pop

/* 80ACFEE0-80ACFEE8 0000F0 0008+00 0/1 0/0 0/0 .rodata          @4986 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4986[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ACFEE0, &lit_4986);
#pragma pop

/* 80ACFEE8-80ACFEEC 0000F8 0004+00 1/1 0/0 0/0 .rodata          @5182 */
SECTION_RODATA static f32 const lit_5182 = 200.0f;
COMPILER_STRIP_GATE(0x80ACFEE8, &lit_5182);

/* 80ACD770-80ACD900 002090 0190+00 1/1 0/0 0/0 .text            selectAction__13daNpc_Seira_cFv */
void daNpc_Seira_c::selectAction() {
    // NONMATCHING
}

/* 80ACD900-80ACD92C 002220 002C+00 2/2 0/0 0/0 .text
 * chkAction__13daNpc_Seira_cFM13daNpc_Seira_cFPCvPvPv_i        */
void daNpc_Seira_c::chkAction(int (daNpc_Seira_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80ACD92C-80ACD9D4 00224C 00A8+00 2/2 0/0 0/0 .text
 * setAction__13daNpc_Seira_cFM13daNpc_Seira_cFPCvPvPv_i        */
void daNpc_Seira_c::setAction(int (daNpc_Seira_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ACFEEC-80ACFEF8 0000FC 000C+00 0/1 0/0 0/0 .rodata          @5204 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5204[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80ACFEEC, &lit_5204);
#pragma pop

/* 80ACFEF8-80ACFF04 000108 000C+00 0/1 0/0 0/0 .rodata          @5212 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5212[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80ACFEF8, &lit_5212);
#pragma pop

/* 80ACFF04-80ACFF04 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80ACFF7D = "prm";
SECTION_DEAD static char const* const stringBase_80ACFF81 = "msgNo";
#pragma pop

/* 80ACD9D4-80ACDC6C 0022F4 0298+00 1/0 0/0 0/0 .text cutConversationAboutSaru__13daNpc_Seira_cFi
 */
void daNpc_Seira_c::cutConversationAboutSaru(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80ACFF04-80ACFF04 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80ACFF87 = "R_SP01";
#pragma pop

/* 80ACDC6C-80ACDCE4 00258C 0078+00 4/4 0/0 0/0 .text checkStageIsSeirasShop__13daNpc_Seira_cFv */
void daNpc_Seira_c::checkStageIsSeirasShop() {
    // NONMATCHING
}

/* 80ACDCE4-80ACDD24 002604 0040+00 1/1 0/0 0/0 .text            getShopItemType__13daNpc_Seira_cFv
 */
void daNpc_Seira_c::getShopItemType() {
    // NONMATCHING
}

/* 80ACDD24-80ACDE74 002644 0150+00 1/0 0/0 0/0 .text            wait__13daNpc_Seira_cFPv */
void daNpc_Seira_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80ACDE74-80ACE098 002794 0224+00 2/0 0/0 0/0 .text            sit__13daNpc_Seira_cFPv */
void daNpc_Seira_c::sit(void* param_0) {
    // NONMATCHING
}

/* 80ACE098-80ACE220 0029B8 0188+00 2/0 0/0 0/0 .text            happy__13daNpc_Seira_cFPv */
void daNpc_Seira_c::happy(void* param_0) {
    // NONMATCHING
}

/* 80ACE220-80ACE4FC 002B40 02DC+00 2/0 0/0 0/0 .text            worry__13daNpc_Seira_cFPv */
void daNpc_Seira_c::worry(void* param_0) {
    // NONMATCHING
}

/* 80ACE4FC-80ACE608 002E1C 010C+00 1/0 0/0 0/0 .text            sad__13daNpc_Seira_cFPv */
void daNpc_Seira_c::sad(void* param_0) {
    // NONMATCHING
}

/* 80ACE608-80ACE714 002F28 010C+00 1/0 0/0 0/0 .text            lookaround__13daNpc_Seira_cFPv */
void daNpc_Seira_c::lookaround(void* param_0) {
    // NONMATCHING
}

/* 80ACE714-80ACE828 003034 0114+00 1/0 0/0 0/0 .text            lookaround_wait__13daNpc_Seira_cFPv
 */
void daNpc_Seira_c::lookaround_wait(void* param_0) {
    // NONMATCHING
}

/* 80ACE828-80ACE934 003148 010C+00 1/0 0/0 0/0 .text            smile__13daNpc_Seira_cFPv */
void daNpc_Seira_c::smile(void* param_0) {
    // NONMATCHING
}

/* 80ACE934-80ACEAC4 003254 0190+00 3/0 0/0 0/0 .text            talk__13daNpc_Seira_cFPv */
void daNpc_Seira_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80ACEAC4-80ACECE8 0033E4 0224+00 2/0 0/0 0/0 .text            shop__13daNpc_Seira_cFPv */
void daNpc_Seira_c::shop(void* param_0) {
    // NONMATCHING
}

/* 80ACECE8-80ACED08 003608 0020+00 1/0 0/0 0/0 .text            daNpc_Seira_Create__FPv */
static void daNpc_Seira_Create(void* param_0) {
    // NONMATCHING
}

/* 80ACED08-80ACED28 003628 0020+00 1/0 0/0 0/0 .text            daNpc_Seira_Delete__FPv */
static void daNpc_Seira_Delete(void* param_0) {
    // NONMATCHING
}

/* 80ACED28-80ACED48 003648 0020+00 1/0 0/0 0/0 .text            daNpc_Seira_Execute__FPv */
static void daNpc_Seira_Execute(void* param_0) {
    // NONMATCHING
}

/* 80ACED48-80ACED68 003668 0020+00 1/0 0/0 0/0 .text            daNpc_Seira_Draw__FPv */
static void daNpc_Seira_Draw(void* param_0) {
    // NONMATCHING
}

/* 80ACED68-80ACED70 003688 0008+00 1/0 0/0 0/0 .text            daNpc_Seira_IsDelete__FPv */
static bool daNpc_Seira_IsDelete(void* param_0) {
    return true;
}

/* 80ACED70-80ACEDA0 003690 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80ACEDA0-80ACEDE8 0036C0 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80ACEDE8-80ACEE30 003708 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80ACEE30-80ACEE6C 003750 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80ACEE6C-80ACEEB4 00378C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80ACEEB4-80ACEEFC 0037D4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80ACEEFC-80ACEF38 00381C 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80ACEF38-80ACEF74 003858 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80ACEF74-80ACF378 003894 0404+00 1/1 0/0 0/0 .text
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

/* 80ACF378-80ACF37C 003C98 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80ACF37C-80ACF478 003C9C 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80ACF478-80ACF47C 003D98 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80ACF47C-80ACF4C4 003D9C 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80ACF4C4-80ACF534 003DE4 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80ACF534-80ACF590 003E54 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80ACF590-80ACF600 003EB0 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80ACF600-80ACF648 003F20 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80ACF648-80ACF764 003F68 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80ACF764-80ACF96C 004084 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80ACF96C-80ACF970 00428C 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80ACF980-80ACF988 0042A0 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80ACF988-80ACF990 0042A8 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80ACF990-80ACF998 0042B0 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80ACF99C-80ACF9A4 0042BC 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80ACF9A4-80ACF9BC 0042C4 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80ACF9BC-80ACF9C0 0042DC 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80ACF9C0-80ACF9C8 0042E0 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80ACF9C8-80ACF9F8 0042E8 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80ACF9F8-80ACFA28 004318 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80ACFA28-80ACFA44 004348 001C+00 2/2 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80ACFA28(void* _this, int* param_0) {
    // NONMATCHING
}

/* 80ACFA44-80ACFAC0 004364 007C+00 2/2 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
extern "C" void func_80ACFA44(void* _this, int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AD0AE4-80AD0AF0 000B54 000C+00 2/2 0/0 0/0 .data            __vt__19daNpc_Seira_Param_c */
SECTION_DATA extern void* __vt__19daNpc_Seira_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daNpc_Seira_Param_cFv,
};

/* 80AD0AF8-80AD0B04 000008 000C+00 1/1 0/0 0/0 .bss             @3872 */
static u8 lit_3872[12];

/* 80AD0B04-80AD0B08 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80ACFAC0-80ACFB48 0043E0 0088+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_seira_cpp */
void __sinit_d_a_npc_seira_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80ACFAC0, __sinit_d_a_npc_seira_cpp);
#pragma pop

/* 80ACFB48-80ACFC14 004468 00CC+00 1/1 0/0 0/0 .text
 * __ct__13daNpc_Seira_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Seira_c::daNpc_Seira_c(daNpcT_faceMotionAnmData_c const* param_0,
                                 daNpcT_motionAnmData_c const* param_1,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                 int param_3,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                 int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80ACFC14-80ACFC1C 004534 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__13daNpc_Seira_cFv */
u16 daNpc_Seira_c::getEyeballMaterialNo() {
    return 2;
}

/* 80ACFC1C-80ACFC24 00453C 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__13daNpc_Seira_cFv
 */
s32 daNpc_Seira_c::getHeadJointNo() {
    return 4;
}

/* 80ACFC24-80ACFC2C 004544 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__13daNpc_Seira_cFv
 */
s32 daNpc_Seira_c::getNeckJointNo() {
    return 3;
}

/* 80ACFC2C-80ACFC34 00454C 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__13daNpc_Seira_cFv */
bool daNpc_Seira_c::getBackboneJointNo() {
    return true;
}

/* 80ACFC34-80ACFC44 004554 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__13daNpc_Seira_cFi
 */
void daNpc_Seira_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80ACFC44-80ACFC54 004564 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__13daNpc_Seira_cFi
 */
void daNpc_Seira_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80ACFC54-80ACFC9C 004574 0048+00 2/1 0/0 0/0 .text            __dt__19daNpc_Seira_Param_cFv */
daNpc_Seira_Param_c::~daNpc_Seira_Param_c() {
    // NONMATCHING
}

/* 80ACFC9C-80ACFCA4 0045BC 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80ACFC9C() {
    // NONMATCHING
}

/* 80ACFCA4-80ACFCAC 0045C4 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80ACFCA4() {
    // NONMATCHING
}

/* 80ACFCAC-80ACFDC4 0045CC 0118+00 1/1 0/0 0/0 .text
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

/* 80ACFDC4-80ACFDCC 0046E4 0008+00 1/0 0/0 0/0 .text            getResName2__13dShopSystem_cFi */
// bool dShopSystem_c::getResName2(int param_0) {
extern "C" bool getResName2__13dShopSystem_cFi() {
    return false;
}

/* 80ACFDCC-80ACFDD4 0046EC 0008+00 1/0 0/0 0/0 .text
 * beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci         */
// bool dShopSystem_c::beforeStartSeqAction(dMsgFlow_c* param_0, int param_1) {
extern "C" bool beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci() {
    return true;
}

/* 80ACFDD4-80ACFDDC 0046F4 0008+00 1/0 0/0 0/0 .text
 * beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci        */
// bool dShopSystem_c::beforeSelectSeqAction(dMsgFlow_c* param_0, int param_1) {
extern "C" bool beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci() {
    return true;
}

/* 80ACFF04-80ACFF04 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
