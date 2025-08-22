/**
 * @file d_a_npc_bans.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_bans.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void __dt__12daNpc_Bans_cFv();
extern "C" void create__12daNpc_Bans_cFv();
extern "C" void CreateHeap__12daNpc_Bans_cFv();
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
extern "C" void Delete__12daNpc_Bans_cFv();
extern "C" void Execute__12daNpc_Bans_cFv();
extern "C" void Draw__12daNpc_Bans_cFv();
extern "C" void createHeapCallBack__12daNpc_Bans_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__12daNpc_Bans_cFP8J3DJointi();
extern "C" void getType__12daNpc_Bans_cFv();
extern "C" void isDelete__12daNpc_Bans_cFv();
extern "C" void reset__12daNpc_Bans_cFv();
extern "C" void afterJntAnm__12daNpc_Bans_cFi();
extern "C" void setParam__12daNpc_Bans_cFv();
extern "C" void checkChangeEvt__12daNpc_Bans_cFv();
extern "C" void setAfterTalkMotion__12daNpc_Bans_cFv();
extern "C" void srchActors__12daNpc_Bans_cFv();
extern "C" void evtTalk__12daNpc_Bans_cFv();
extern "C" void evtCutProc__12daNpc_Bans_cFv();
extern "C" void action__12daNpc_Bans_cFv();
extern "C" void beforeMove__12daNpc_Bans_cFv();
extern "C" void setAttnPos__12daNpc_Bans_cFv();
extern "C" void setCollision__12daNpc_Bans_cFv();
extern "C" bool drawDbgInfo__12daNpc_Bans_cFv();
extern "C" void drawOtherMdl__12daNpc_Bans_cFv();
extern "C" void setScoopAnm__12daNpc_Bans_cFiif();
extern "C" void afterSetMotionAnm__12daNpc_Bans_cFiifi();
extern "C" void selectAction__12daNpc_Bans_cFv();
extern "C" void chkAction__12daNpc_Bans_cFM12daNpc_Bans_cFPCvPvPv_i();
extern "C" void setAction__12daNpc_Bans_cFM12daNpc_Bans_cFPCvPvPv_i();
extern "C" void checkPlayerIn2ndFloorOfBombShop__12daNpc_Bans_cFv();
extern "C" void orderAngerEvt__12daNpc_Bans_cFv();
extern "C" void getKMsgTagP__12daNpc_Bans_cFv();
extern "C" void setPrtcls__12daNpc_Bans_cFv();
extern "C" void cutAnger__12daNpc_Bans_cFi();
extern "C" void cutPurchase__12daNpc_Bans_cFi();
extern "C" void wait__12daNpc_Bans_cFPv();
extern "C" void tend__12daNpc_Bans_cFPv();
extern "C" void getDistTable__12dAttention_cFi();
extern "C" void talk__12daNpc_Bans_cFPv();
extern "C" void shop__12daNpc_Bans_cFPv();
extern "C" static void daNpc_Bans_Create__FPv();
extern "C" static void daNpc_Bans_Delete__FPv();
extern "C" static void daNpc_Bans_Execute__FPv();
extern "C" static void daNpc_Bans_Draw__FPv();
extern "C" static bool daNpc_Bans_IsDelete__FPv();
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
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_809679D8(void* _this, int*);
extern "C" void func_809679F4(void* _this, u8*);
extern "C" void __sinit_d_a_npc_bans_cpp();
extern "C" void
__ct__12daNpc_Bans_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__12daNpc_Bans_cFv();
extern "C" s32 getHeadJointNo__12daNpc_Bans_cFv();
extern "C" s32 getNeckJointNo__12daNpc_Bans_cFv();
extern "C" bool getBackboneJointNo__12daNpc_Bans_cFv();
extern "C" void checkChangeJoint__12daNpc_Bans_cFi();
extern "C" void checkRemoveJoint__12daNpc_Bans_cFi();
extern "C" void __dt__18daNpc_Bans_Param_cFv();
extern "C" static void func_80967C6C();
extern "C" static void func_80967C74();
extern "C" void
__ct__13dShopSystem_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" bool getResName2__13dShopSystem_cFi();
extern "C" bool beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci();
extern "C" bool beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci();
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz();
extern "C" u8 const m__18daNpc_Bans_Param_c[144];
extern "C" extern char const* const d_a_npc_bans__stringBase0;
extern "C" void* mCutNameList__12daNpc_Bans_c[4];
extern "C" u8 mCutList__12daNpc_Bans_c[48];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void StartShock__12dVibration_cFii4cXyz();
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
extern "C" void srchActor__8daNpcT_cFPvPv();
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
extern "C" void setAngle__8daNpcT_cF5csXyz();
extern "C" void setAngle__8daNpcT_cFs();
extern "C" void hitChk__8daNpcT_cFP12dCcD_GObjInfUl();
extern "C" void setDamage__8daNpcT_cFiii();
extern "C" void chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs();
extern "C" void chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void getAttnPos__8daNpcT_cFP10fopAc_ac_c();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void getEvtAreaTagP__8daNpcT_cFii();
extern "C" void getShopItemTagP__8daNpcT_cFv();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_onTmpBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
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
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
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
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void getTexNo__16J3DAnmTexPatternCFUsPUs();
extern "C" void initialize__14J3DMaterialAnmFv();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void __ptmf_test();
extern "C" void __ptmf_cmpr();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" u8 dist_table__12dAttention_c[6552];
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
extern "C" u8 mFindActorPtrs__8daNpcT_c[200];
extern "C" u8 mSrchName__8daNpcT_c[2 + 2 /* padding */];
extern "C" u8 mFindCount__8daNpcT_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz();
extern "C" void __register_global_object();
extern "C" void checkStartDemo13StbEvt__11daNpc_Len_cFP10fopAc_ac_cfffffff();

//
// Declarations:
//

/* ############################################################################################## */
/* 80967F6C-80967F6C 00014C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80967F6C = "";
SECTION_DEAD static char const* const stringBase_80967F6D = "DEFAULT_GETITEM";
SECTION_DEAD static char const* const stringBase_80967F7D = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80967F89 = "DEMO13_STB";
SECTION_DEAD static char const* const stringBase_80967F94 = "ANGER";
SECTION_DEAD static char const* const stringBase_80967F9A = "ANGER2";
SECTION_DEAD static char const* const stringBase_80967FA1 = "ANGER_NEAR";
SECTION_DEAD static char const* const stringBase_80967FAC = "ANGER_NEAR2";
SECTION_DEAD static char const* const stringBase_80967FB8 = "GOBACK";
SECTION_DEAD static char const* const stringBase_80967FBF = "Bans";
SECTION_DEAD static char const* const stringBase_80967FC4 = "Bans_TW";
SECTION_DEAD static char const* const stringBase_80967FCC = "Bans1";
SECTION_DEAD static char const* const stringBase_80967FD2 = "Bans2";
SECTION_DEAD static char const* const stringBase_80967FD8 = "Len1";
SECTION_DEAD static char const* const stringBase_80967FDD = "PURCHASE";
SECTION_DEAD static char const* const stringBase_80967FE6 = "GO_BACK";
#pragma pop

/* 80968020-80968040 000020 0020+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[32] = {
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x04,
};

/* 80968040-80968088 -00001 0048+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[18] = {
    (void*)&d_a_npc_bans__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_bans__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_bans__stringBase0) + 0x11),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_bans__stringBase0) + 0x1D),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_bans__stringBase0) + 0x28),
    (void*)0x00000003,
    (void*)(((char*)&d_a_npc_bans__stringBase0) + 0x2E),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_bans__stringBase0) + 0x35),
    (void*)0x00000003,
    (void*)(((char*)&d_a_npc_bans__stringBase0) + 0x40),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_bans__stringBase0) + 0x4C),
    (void*)0x00000003,
};
#pragma pop

/* 80968088-809680A0 -00001 0018+00 3/4 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[6] = {
    (void*)&d_a_npc_bans__stringBase0,
    (void*)(((char*)&d_a_npc_bans__stringBase0) + 0x53),
    (void*)(((char*)&d_a_npc_bans__stringBase0) + 0x58),
    (void*)(((char*)&d_a_npc_bans__stringBase0) + 0x60),
    (void*)(((char*)&d_a_npc_bans__stringBase0) + 0x66),
    (void*)(((char*)&d_a_npc_bans__stringBase0) + 0x6C),
};

/* 809680A0-809680A4 0000A0 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u8 l_loadResPtrn0[3 + 1 /* padding */] = {
    0x01,
    0x03,
    0xFF,
    /* padding */
    0x00,
};

/* 809680A4-809680A8 0000A4 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u8 l_loadResPtrn1[3 + 1 /* padding */] = {
    0x01,
    0x04,
    0xFF,
    /* padding */
    0x00,
};

/* 809680A8-809680AC 0000A8 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn2 */
SECTION_DATA static u16 l_loadResPtrn2[1 + 1 /* padding */] = {
    0x02FF,
    /* padding */
    0x0000,
};

/* 809680AC-809680B0 0000AC 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn3 */
SECTION_DATA static u32 l_loadResPtrn3 = 0x010304FF;

/* 809680B0-809680B8 0000B0 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn4 */
SECTION_DATA static u8 l_loadResPtrn4[5 + 3 /* padding */] = {
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

/* 809680B8-809680D0 -00001 0018+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[6] = {
    (void*)&l_loadResPtrn3, (void*)&l_loadResPtrn2, (void*)&l_loadResPtrn1,
    (void*)&l_loadResPtrn1, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn4,
};

/* 809680D0-8096815C 0000D0 008C+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[140] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0xFF, 0xFF,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x12,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 8096815C-8096838C 00015C 0230+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[560] = {
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 8096838C-809683DC 00038C 0050+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[80] = {
    0x00, 0x02, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x04, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 809683DC-8096852C 0003DC 0150+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[336] = {
    0x00, 0x00, 0xF7, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xF7, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0x00, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xF7, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xF7, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x01, 0x00, 0x03, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0x00, 0x03, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xF7, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xF7, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xF7, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0x00, 0x0C, 0x00, 0x01, 0x00, 0x03, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xF7, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xF7, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 8096852C-8096853C -00001 0010+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_Bans_c */
SECTION_DATA void* daNpc_Bans_c::mCutNameList[4] = {
    (void*)&d_a_npc_bans__stringBase0,
    (void*)(((char*)&d_a_npc_bans__stringBase0) + 0x28),
    (void*)(((char*)&d_a_npc_bans__stringBase0) + 0x71),
    (void*)(((char*)&d_a_npc_bans__stringBase0) + 0x7A),
};

/* 8096853C-80968548 -00001 000C+00 0/1 0/0 0/0 .data            @3870 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3870[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutAnger__12daNpc_Bans_cFi,
};
#pragma pop

/* 80968548-80968554 -00001 000C+00 0/1 0/0 0/0 .data            @3871 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3871[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutPurchase__12daNpc_Bans_cFi,
};
#pragma pop

/* 80968554-80968560 -00001 000C+00 0/1 0/0 0/0 .data            @3872 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3872[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutPurchase__12daNpc_Bans_cFi,
};
#pragma pop

/* 80968560-80968590 000560 0030+00 1/2 0/0 0/0 .data            mCutList__12daNpc_Bans_c */
SECTION_DATA u8 daNpc_Bans_c::mCutList[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80968590-8096859C -00001 000C+00 1/1 0/0 0/0 .data            @4728 */
SECTION_DATA static void* lit_4728[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Bans_cFPv,
};

/* 8096859C-809685A8 -00001 000C+00 0/1 0/0 0/0 .data            @4816 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4816[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__12daNpc_Bans_cFPv,
};
#pragma pop

/* 809685A8-809685B4 -00001 000C+00 0/1 0/0 0/0 .data            @4823 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4823[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)shop__12daNpc_Bans_cFPv,
};
#pragma pop

/* 809685B4-809685C0 -00001 000C+00 0/1 0/0 0/0 .data            @4826 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4826[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Bans_cFPv,
};
#pragma pop

/* 809685C0-809685CC -00001 000C+00 0/1 0/0 0/0 .data            @4831 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4831[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Bans_cFPv,
};
#pragma pop

/* 809685CC-8096866C 0005CC 00A0+00 1/1 0/0 0/0 .data            scoopAnmData$5227 */
SECTION_DATA static u8 scoopAnmData[160] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x04,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x04,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
};

/* 8096866C-80968678 -00001 000C+00 1/1 0/0 0/0 .data            @5249 */
SECTION_DATA static void* lit_5249[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)tend__12daNpc_Bans_cFPv,
};

/* 80968678-80968684 -00001 000C+00 1/1 0/0 0/0 .data            @5251 */
SECTION_DATA static void* lit_5251[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_Bans_cFPv,
};

/* 80968684-809686A4 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Bans_MethodTable */
static actor_method_class daNpc_Bans_MethodTable = {
    (process_method_func)daNpc_Bans_Create__FPv,
    (process_method_func)daNpc_Bans_Delete__FPv,
    (process_method_func)daNpc_Bans_Execute__FPv,
    (process_method_func)daNpc_Bans_IsDelete__FPv,
    (process_method_func)daNpc_Bans_Draw__FPv,
};

/* 809686A4-809686D4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_BANS */
extern actor_process_profile_definition g_profile_NPC_BANS = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_BANS,            // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_Bans_c),     // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  322,                      // mPriority
  &daNpc_Bans_MethodTable,  // sub_method
  0x00040107,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 809686D4-809686E0 0006D4 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 809686E0-809686EC 0006E0 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 809686EC-80968710 0006EC 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80967C74,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80967C6C,
};

/* 80968710-8096871C 000710 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8096871C-80968728 00071C 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80968728-80968734 000728 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80968734-80968740 000734 000C+00 2/2 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80968740-8096874C 000740 000C+00 2/2 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 8096874C-80968758 00074C 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80968758-80968764 000758 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80968764-80968770 000764 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80968770-80968840 000770 00D0+00 2/2 0/0 0/0 .data            __vt__12daNpc_Bans_c */
SECTION_DATA extern void* __vt__12daNpc_Bans_c[52] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daNpc_Bans_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__12daNpc_Bans_cFi,
    (void*)checkRemoveJoint__12daNpc_Bans_cFi,
    (void*)getBackboneJointNo__12daNpc_Bans_cFv,
    (void*)getNeckJointNo__12daNpc_Bans_cFv,
    (void*)getHeadJointNo__12daNpc_Bans_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__12daNpc_Bans_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__12daNpc_Bans_cFi,
    (void*)setParam__12daNpc_Bans_cFv,
    (void*)checkChangeEvt__12daNpc_Bans_cFv,
    (void*)evtTalk__12daNpc_Bans_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__12daNpc_Bans_cFv,
    (void*)setAfterTalkMotion__12daNpc_Bans_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__12daNpc_Bans_cFv,
    (void*)beforeMove__12daNpc_Bans_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__12daNpc_Bans_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__12daNpc_Bans_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__12daNpc_Bans_cFv,
    (void*)drawOtherMdl__12daNpc_Bans_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__12daNpc_Bans_cFiifi,
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

/* 809628CC-80962AA0 0000EC 01D4+00 1/0 0/0 0/0 .text            __dt__12daNpc_Bans_cFv */
daNpc_Bans_c::~daNpc_Bans_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80967E20-80967EB0 000000 0090+00 12/12 0/0 0/0 .rodata          m__18daNpc_Bans_Param_c */
SECTION_RODATA u8 const daNpc_Bans_Param_c::m[144] = {
    0x43, 0x48, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x3E, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0xC1, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0xA0, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
    0x42, 0x20, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x42, 0xDC, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80967E20, &daNpc_Bans_Param_c::m);

/* 80967EB0-80967EC8 000090 0018+00 0/1 0/0 0/0 .rodata          heapSize$3924 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[24] = {
    0x00, 0x00, 0x6C, 0x50, 0x00, 0x00, 0x4B, 0x40, 0x00, 0x00, 0x6C, 0x50,
    0x00, 0x00, 0x75, 0x80, 0x00, 0x00, 0x64, 0x60, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80967EB0, &heapSize);
#pragma pop

/* 80967EC8-80967ECC 0000A8 0004+00 0/1 0/0 0/0 .rodata          @3991 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3991 = -200.0f;
COMPILER_STRIP_GATE(0x80967EC8, &lit_3991);
#pragma pop

/* 80967ECC-80967ED0 0000AC 0004+00 0/1 0/0 0/0 .rodata          @3992 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3992 = -100.0f;
COMPILER_STRIP_GATE(0x80967ECC, &lit_3992);
#pragma pop

/* 80967ED0-80967ED4 0000B0 0004+00 0/1 0/0 0/0 .rodata          @3993 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3993 = 200.0f;
COMPILER_STRIP_GATE(0x80967ED0, &lit_3993);
#pragma pop

/* 80967ED4-80967ED8 0000B4 0004+00 1/2 0/0 0/0 .rodata          @3994 */
SECTION_RODATA static f32 const lit_3994 = 300.0f;
COMPILER_STRIP_GATE(0x80967ED4, &lit_3994);

/* 80967ED8-80967EDC 0000B8 0004+00 0/1 0/0 0/0 .rodata          @3995 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3995 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80967ED8, &lit_3995);
#pragma pop

/* 80962AA0-80962D6C 0002C0 02CC+00 1/1 0/0 0/0 .text            create__12daNpc_Bans_cFv */
void daNpc_Bans_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80967EDC-80967EE0 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4100 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4100 = 0.25f;
COMPILER_STRIP_GATE(0x80967EDC, &lit_4100);
#pragma pop

/* 80967EE0-80967EE4 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4101 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4101 = 20.0f;
COMPILER_STRIP_GATE(0x80967EE0, &lit_4101);
#pragma pop

/* 80967EE4-80967EE8 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4102 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4102 = 5.0f;
COMPILER_STRIP_GATE(0x80967EE4, &lit_4102);
#pragma pop

/* 80967EE8-80967EEC 0000C8 0004+00 8/18 0/0 0/0 .rodata          @4103 */
SECTION_RODATA static u8 const lit_4103[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80967EE8, &lit_4103);

/* 80967EEC-80967EF0 0000CC 0004+00 1/3 0/0 0/0 .rodata          @4104 */
SECTION_RODATA static f32 const lit_4104 = 100.0f;
COMPILER_STRIP_GATE(0x80967EEC, &lit_4104);

/* 80967EF0-80967EF4 0000D0 0004+00 0/1 0/0 0/0 .rodata          @4105 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4105 = 60.0f;
COMPILER_STRIP_GATE(0x80967EF0, &lit_4105);
#pragma pop

/* 80967EF4-80967EF8 0000D4 0004+00 0/2 0/0 0/0 .rodata          @4326 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4326 = 65536.0f;
COMPILER_STRIP_GATE(0x80967EF4, &lit_4326);
#pragma pop

/* 80967EF8-80967EFC 0000D8 0004+00 0/3 0/0 0/0 .rodata          @4327 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4327 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80967EF8, &lit_4327);
#pragma pop

/* 80967EFC-80967F00 0000DC 0004+00 3/7 0/0 0/0 .rodata          @4514 */
SECTION_RODATA static f32 const lit_4514 = 1.0f;
COMPILER_STRIP_GATE(0x80967EFC, &lit_4514);

/* 80962D6C-8096317C 00058C 0410+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_Bans_cFv */
void daNpc_Bans_c::CreateHeap() {
    // NONMATCHING
}

/* 8096317C-809631B8 00099C 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 809631B8-809631D0 0009D8 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 809631D0-8096320C 0009F0 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 8096320C-80963224 000A2C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80963224-8096326C 000A44 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 8096326C-80963290 000A8C 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80963290-809632CC 000AB0 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 809632CC-809632E4 000AEC 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 809632E4-80963320 000B04 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80963320-80963338 000B40 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80963338-8096336C 000B58 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_Bans_cFv */
void daNpc_Bans_c::Delete() {
    // NONMATCHING
}

/* 8096336C-80963444 000B8C 00D8+00 2/2 0/0 0/0 .text            Execute__12daNpc_Bans_cFv */
void daNpc_Bans_c::Execute() {
    // NONMATCHING
}

/* 80963444-809634E0 000C64 009C+00 1/1 0/0 0/0 .text            Draw__12daNpc_Bans_cFv */
void daNpc_Bans_c::Draw() {
    // NONMATCHING
}

/* 809634E0-80963500 000D00 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daNpc_Bans_cFP10fopAc_ac_c             */
void daNpc_Bans_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80963500-80963558 000D20 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__12daNpc_Bans_cFP8J3DJointi                */
void daNpc_Bans_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80963558-809635BC 000D78 0064+00 1/1 0/0 0/0 .text            getType__12daNpc_Bans_cFv */
void daNpc_Bans_c::getType() {
    // NONMATCHING
}

/* 809635BC-809636C0 000DDC 0104+00 1/1 0/0 0/0 .text            isDelete__12daNpc_Bans_cFv */
void daNpc_Bans_c::isDelete() {
    // NONMATCHING
}

/* 809636C0-80963840 000EE0 0180+00 1/1 0/0 0/0 .text            reset__12daNpc_Bans_cFv */
void daNpc_Bans_c::reset() {
    // NONMATCHING
}

/* 80963840-809638CC 001060 008C+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_Bans_cFi */
void daNpc_Bans_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 809638CC-80963A7C 0010EC 01B0+00 1/0 0/0 0/0 .text            setParam__12daNpc_Bans_cFv */
void daNpc_Bans_c::setParam() {
    // NONMATCHING
}

/* 80963A7C-80963B30 00129C 00B4+00 1/0 0/0 0/0 .text            checkChangeEvt__12daNpc_Bans_cFv */
void daNpc_Bans_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80967F00-80967F04 0000E0 0004+00 3/8 0/0 0/0 .rodata          @4761 */
SECTION_RODATA static f32 const lit_4761 = -1.0f;
COMPILER_STRIP_GATE(0x80967F00, &lit_4761);

/* 80963B30-80963BA8 001350 0078+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_Bans_cFv */
void daNpc_Bans_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80963BA8-80963DB0 0013C8 0208+00 1/1 0/0 0/0 .text            srchActors__12daNpc_Bans_cFv */
void daNpc_Bans_c::srchActors() {
    // NONMATCHING
}

/* 80963DB0-80963EDC 0015D0 012C+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_Bans_cFv */
void daNpc_Bans_c::evtTalk() {
    // NONMATCHING
}

/* 80963EDC-80963FA4 0016FC 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_Bans_cFv */
void daNpc_Bans_c::evtCutProc() {
    // NONMATCHING
}

/* 80963FA4-80964148 0017C4 01A4+00 1/0 0/0 0/0 .text            action__12daNpc_Bans_cFv */
void daNpc_Bans_c::action() {
    // NONMATCHING
}

/* 80964148-80964228 001968 00E0+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_Bans_cFv */
void daNpc_Bans_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80967F04-80967F08 0000E4 0004+00 0/1 0/0 0/0 .rodata          @5033 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5033 = 15.0f;
COMPILER_STRIP_GATE(0x80967F04, &lit_5033);
#pragma pop

/* 80967F08-80967F0C 0000E8 0004+00 0/1 0/0 0/0 .rodata          @5034 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5034 = 30.0f;
COMPILER_STRIP_GATE(0x80967F08, &lit_5034);
#pragma pop

/* 80967F0C-80967F10 0000EC 0004+00 0/1 0/0 0/0 .rodata          @5035 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5035 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80967F0C, &lit_5035);
#pragma pop

/* 80967F10-80967F14 0000F0 0004+00 0/2 0/0 0/0 .rodata          @5036 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5036 = 8.0f;
COMPILER_STRIP_GATE(0x80967F10, &lit_5036);
#pragma pop

/* 80967F14-80967F18 0000F4 0004+00 0/1 0/0 0/0 .rodata          @5037 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5037 = 34.0f;
COMPILER_STRIP_GATE(0x80967F14, &lit_5037);
#pragma pop

/* 80967F18-80967F1C 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5038 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5038 = 180.0f;
COMPILER_STRIP_GATE(0x80967F18, &lit_5038);
#pragma pop

/* 80967F1C-80967F20 0000FC 0004+00 0/2 0/0 0/0 .rodata          @5039 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5039 = 10.0f;
COMPILER_STRIP_GATE(0x80967F1C, &lit_5039);
#pragma pop

/* 80967F20-80967F28 000100 0004+04 0/1 0/0 0/0 .rodata          @5040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5040[1 + 1 /* padding */] = {
    70.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80967F20, &lit_5040);
#pragma pop

/* 80967F28-80967F30 000108 0008+00 1/3 0/0 0/0 .rodata          @5042 */
SECTION_RODATA static u8 const lit_5042[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80967F28, &lit_5042);

/* 80964228-809646E0 001A48 04B8+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_Bans_cFv */
void daNpc_Bans_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80967F30-80967F38 000110 0008+00 0/1 0/0 0/0 .rodata          @5100 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5100[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80967F30, &lit_5100);
#pragma pop

/* 80967F38-80967F40 000118 0008+00 0/1 0/0 0/0 .rodata          @5101 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5101[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80967F38, &lit_5101);
#pragma pop

/* 80967F40-80967F48 000120 0008+00 0/1 0/0 0/0 .rodata          @5102 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5102[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80967F40, &lit_5102);
#pragma pop

/* 80967F48-80967F4C 000128 0004+00 0/1 0/0 0/0 .rodata          @5164 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5164 = 50.0f;
COMPILER_STRIP_GATE(0x80967F48, &lit_5164);
#pragma pop

/* 80967F4C-80967F50 00012C 0004+00 0/1 0/0 0/0 .rodata          @5165 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5165 = -60.0f;
COMPILER_STRIP_GATE(0x80967F4C, &lit_5165);
#pragma pop

/* 80967F50-80967F54 000130 0004+00 0/1 0/0 0/0 .rodata          @5166 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5166 = 40.0f;
COMPILER_STRIP_GATE(0x80967F50, &lit_5166);
#pragma pop

/* 80967F54-80967F58 000134 0004+00 0/1 0/0 0/0 .rodata          @5167 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5167 = 110.0f;
COMPILER_STRIP_GATE(0x80967F54, &lit_5167);
#pragma pop

/* 809646E0-80964994 001F00 02B4+00 1/0 0/0 0/0 .text            setCollision__12daNpc_Bans_cFv */
void daNpc_Bans_c::setCollision() {
    // NONMATCHING
}

/* 80964994-8096499C 0021B4 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_Bans_cFv */
bool daNpc_Bans_c::drawDbgInfo() {
    return false;
}

/* 8096499C-80964AD8 0021BC 013C+00 1/0 0/0 0/0 .text            drawOtherMdl__12daNpc_Bans_cFv */
void daNpc_Bans_c::drawOtherMdl() {
    // NONMATCHING
}

/* 80964AD8-80964B9C 0022F8 00C4+00 1/1 0/0 0/0 .text            setScoopAnm__12daNpc_Bans_cFiif */
void daNpc_Bans_c::setScoopAnm(int param_0, int param_1, f32 param_2) {
    // NONMATCHING
}

/* 80964B9C-80964BD0 0023BC 0034+00 1/0 0/0 0/0 .text afterSetMotionAnm__12daNpc_Bans_cFiifi */
void daNpc_Bans_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    // NONMATCHING
}

/* 80964BD0-80964C4C 0023F0 007C+00 1/1 0/0 0/0 .text            selectAction__12daNpc_Bans_cFv */
void daNpc_Bans_c::selectAction() {
    // NONMATCHING
}

/* 80964C4C-80964C78 00246C 002C+00 2/2 0/0 0/0 .text
 * chkAction__12daNpc_Bans_cFM12daNpc_Bans_cFPCvPvPv_i          */
void daNpc_Bans_c::chkAction(int (daNpc_Bans_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80964C78-80964D20 002498 00A8+00 2/2 0/0 0/0 .text
 * setAction__12daNpc_Bans_cFM12daNpc_Bans_cFPCvPvPv_i          */
void daNpc_Bans_c::setAction(int (daNpc_Bans_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80967F6C-80967F6C 00014C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80967FEE = "R_SP109";
#pragma pop

/* 80964D20-80964DD0 002540 00B0+00 1/1 0/0 0/0 .text
 * checkPlayerIn2ndFloorOfBombShop__12daNpc_Bans_cFv            */
void daNpc_Bans_c::checkPlayerIn2ndFloorOfBombShop() {
    // NONMATCHING
}

/* 80964DD0-80964EB0 0025F0 00E0+00 2/2 0/0 0/0 .text            orderAngerEvt__12daNpc_Bans_cFv */
void daNpc_Bans_c::orderAngerEvt() {
    // NONMATCHING
}

/* 80964EB0-80964F48 0026D0 0098+00 1/1 0/0 0/0 .text            getKMsgTagP__12daNpc_Bans_cFv */
void daNpc_Bans_c::getKMsgTagP() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80967F58-80967F60 000138 0008+00 1/1 0/0 0/0 .rodata          id$5349 */
SECTION_RODATA static u8 const id[8] = {
    0x86, 0x2C, 0x86, 0xA3, 0x86, 0x2D, 0x86, 0x2E,
};
COMPILER_STRIP_GATE(0x80967F58, &id);

/* 80964F48-80964FEC 002768 00A4+00 1/1 0/0 0/0 .text            setPrtcls__12daNpc_Bans_cFv */
void daNpc_Bans_c::setPrtcls() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80967F60-80967F64 000140 0004+00 0/1 0/0 0/0 .rodata          @5654 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5654 = 450.0f;
COMPILER_STRIP_GATE(0x80967F60, &lit_5654);
#pragma pop

/* 80967F64-80967F68 000144 0004+00 0/1 0/0 0/0 .rodata          @5655 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5655 = 16.0f;
COMPILER_STRIP_GATE(0x80967F64, &lit_5655);
#pragma pop

/* 80967F68-80967F6C 000148 0004+00 0/1 0/0 0/0 .rodata          @5656 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5656 = 9.0f;
COMPILER_STRIP_GATE(0x80967F68, &lit_5656);
#pragma pop

/* 80967F6C-80967F6C 00014C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80967FF6 = "prm";
SECTION_DEAD static char const* const stringBase_80967FFA = "timer";
#pragma pop

/* 80964FEC-809658F8 00280C 090C+00 1/0 0/0 0/0 .text            cutAnger__12daNpc_Bans_cFi */
void daNpc_Bans_c::cutAnger(int param_0) {
    // NONMATCHING
}

/* 809658F8-80965CCC 003118 03D4+00 2/0 0/0 0/0 .text            cutPurchase__12daNpc_Bans_cFi */
void daNpc_Bans_c::cutPurchase(int param_0) {
    // NONMATCHING
}

/* 80965CCC-809661F0 0034EC 0524+00 1/0 0/0 0/0 .text            wait__12daNpc_Bans_cFPv */
void daNpc_Bans_c::wait(void* param_0) {
    // NONMATCHING
}

/* 809661F0-80966874 003A10 0684+00 1/0 0/0 0/0 .text            tend__12daNpc_Bans_cFPv */
void daNpc_Bans_c::tend(void* param_0) {
    // NONMATCHING
}

/* 80966874-80966888 004094 0014+00 1/1 0/0 0/0 .text            getDistTable__12dAttention_cFi */
// void dAttention_c::getDistTable(int param_0) {
extern "C" void getDistTable__12dAttention_cFi() {
    // NONMATCHING
}

/* 80966888-80966B24 0040A8 029C+00 3/0 0/0 0/0 .text            talk__12daNpc_Bans_cFPv */
void daNpc_Bans_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80966B24-80966C88 004344 0164+00 2/0 0/0 0/0 .text            shop__12daNpc_Bans_cFPv */
void daNpc_Bans_c::shop(void* param_0) {
    // NONMATCHING
}

/* 80966C88-80966CA8 0044A8 0020+00 1/0 0/0 0/0 .text            daNpc_Bans_Create__FPv */
static void daNpc_Bans_Create(void* param_0) {
    // NONMATCHING
}

/* 80966CA8-80966CC8 0044C8 0020+00 1/0 0/0 0/0 .text            daNpc_Bans_Delete__FPv */
static void daNpc_Bans_Delete(void* param_0) {
    // NONMATCHING
}

/* 80966CC8-80966CE8 0044E8 0020+00 1/0 0/0 0/0 .text            daNpc_Bans_Execute__FPv */
static void daNpc_Bans_Execute(void* param_0) {
    // NONMATCHING
}

/* 80966CE8-80966D08 004508 0020+00 1/0 0/0 0/0 .text            daNpc_Bans_Draw__FPv */
static void daNpc_Bans_Draw(void* param_0) {
    // NONMATCHING
}

/* 80966D08-80966D10 004528 0008+00 1/0 0/0 0/0 .text            daNpc_Bans_IsDelete__FPv */
static bool daNpc_Bans_IsDelete(void* param_0) {
    return true;
}

/* 80966D10-80966D40 004530 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80966D40-80966D88 004560 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80966D88-80966DD0 0045A8 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80966DD0-80966E0C 0045F0 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80966E0C-80966E54 00462C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80966E54-80966E9C 004674 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80966E9C-80966ED8 0046BC 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80966ED8-80966F14 0046F8 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80966F14-80967318 004734 0404+00 1/1 0/0 0/0 .text
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

/* 80967318-8096731C 004B38 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 8096731C-80967418 004B3C 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80967418-8096741C 004C38 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 8096741C-80967464 004C3C 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80967464-809674D4 004C84 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 809674D4-80967530 004CF4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80967530-809675A0 004D50 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 809675A0-809675E8 004DC0 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 809675E8-80967704 004E08 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80967704-8096790C 004F24 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 8096790C-80967910 00512C 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80967920-80967928 005140 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80967928-80967930 005148 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80967930-80967938 005150 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 8096793C-80967944 00515C 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80967944-8096795C 005164 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 8096795C-80967960 00517C 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80967960-80967968 005180 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80967968-80967998 005188 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80967998-809679C8 0051B8 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 809679C8-809679CC 0051E8 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809679CC-809679D0 0051EC 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809679D0-809679D4 0051F0 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809679D4-809679D8 0051F4 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 809679D8-809679F4 0051F8 001C+00 2/2 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_809679D8(void* _this, int* param_0) {
    // NONMATCHING
}

/* 809679F4-80967A10 005214 001C+00 1/1 0/0 0/0 .text            cLib_calcTimer<Uc>__FPUc */
extern "C" void func_809679F4(void* _this, u8* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80968840-8096884C 000840 000C+00 2/2 0/0 0/0 .data            __vt__18daNpc_Bans_Param_c */
SECTION_DATA extern void* __vt__18daNpc_Bans_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpc_Bans_Param_cFv,
};

/* 80968858-80968864 000008 000C+00 1/1 0/0 0/0 .bss             @3873 */
static u8 lit_3873[12];

/* 80968864-80968868 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80967A10-80967AC4 005230 00B4+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_bans_cpp */
void __sinit_d_a_npc_bans_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80967A10, __sinit_d_a_npc_bans_cpp);
#pragma pop

/* 80967AC4-80967BE4 0052E4 0120+00 1/1 0/0 0/0 .text
 * __ct__12daNpc_Bans_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Bans_c::daNpc_Bans_c(daNpcT_faceMotionAnmData_c const* param_0,
                               daNpcT_motionAnmData_c const* param_1,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                               int param_3,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                               int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80967BE4-80967BEC 005404 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__12daNpc_Bans_cFv */
u16 daNpc_Bans_c::getEyeballMaterialNo() {
    return 2;
}

/* 80967BEC-80967BF4 00540C 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__12daNpc_Bans_cFv */
s32 daNpc_Bans_c::getHeadJointNo() {
    return 6;
}

/* 80967BF4-80967BFC 005414 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__12daNpc_Bans_cFv */
s32 daNpc_Bans_c::getNeckJointNo() {
    return 5;
}

/* 80967BFC-80967C04 00541C 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__12daNpc_Bans_cFv */
bool daNpc_Bans_c::getBackboneJointNo() {
    return true;
}

/* 80967C04-80967C14 005424 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__12daNpc_Bans_cFi
 */
void daNpc_Bans_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80967C14-80967C24 005434 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__12daNpc_Bans_cFi
 */
void daNpc_Bans_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80967C24-80967C6C 005444 0048+00 2/1 0/0 0/0 .text            __dt__18daNpc_Bans_Param_cFv */
daNpc_Bans_Param_c::~daNpc_Bans_Param_c() {
    // NONMATCHING
}

/* 80967C6C-80967C74 00548C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80967C6C() {
    // NONMATCHING
}

/* 80967C74-80967C7C 005494 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80967C74() {
    // NONMATCHING
}

/* 80967C7C-80967D94 00549C 0118+00 1/1 0/0 0/0 .text
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

/* 80967D94-80967D9C 0055B4 0008+00 1/0 0/0 0/0 .text            getResName2__13dShopSystem_cFi */
// bool dShopSystem_c::getResName2(int param_0) {
extern "C" bool getResName2__13dShopSystem_cFi() {
    return false;
}

/* 80967D9C-80967DA4 0055BC 0008+00 1/0 0/0 0/0 .text
 * beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci         */
// bool dShopSystem_c::beforeStartSeqAction(dMsgFlow_c* param_0, int param_1) {
extern "C" bool beforeStartSeqAction__13dShopSystem_cFP10dMsgFlow_ci() {
    return true;
}

/* 80967DA4-80967DAC 0055C4 0008+00 1/0 0/0 0/0 .text
 * beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci        */
// bool dShopSystem_c::beforeSelectSeqAction(dMsgFlow_c* param_0, int param_1) {
extern "C" bool beforeSelectSeqAction__13dShopSystem_cFP10dMsgFlow_ci() {
    return true;
}

/* 80967DAC-80967E0C 0055CC 0060+00 1/1 0/0 0/0 .text chkPointInArea__15daTag_EvtArea_cF4cXyz */
// void daTag_EvtArea_c::chkPointInArea(cXyz param_0) {
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz() {
    // NONMATCHING
}

/* 80967F6C-80967F6C 00014C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
