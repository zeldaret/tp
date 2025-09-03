/**
 * @file d_a_npc_toby.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_toby.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__12daNpc_Toby_cFv();
extern "C" void create__12daNpc_Toby_cFv();
extern "C" void CreateHeap__12daNpc_Toby_cFv();
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
extern "C" void Delete__12daNpc_Toby_cFv();
extern "C" void Execute__12daNpc_Toby_cFv();
extern "C" void Draw__12daNpc_Toby_cFv();
extern "C" void createHeapCallBack__12daNpc_Toby_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__12daNpc_Toby_cFP8J3DJointi();
extern "C" void srchToby__12daNpc_Toby_cFPvPv();
extern "C" void getOtherTobyP__12daNpc_Toby_cFi();
extern "C" void getType__12daNpc_Toby_cFv();
extern "C" void isDelete__12daNpc_Toby_cFv();
extern "C" void reset__12daNpc_Toby_cFv();
extern "C" void afterJntAnm__12daNpc_Toby_cFi();
extern "C" void setParam__12daNpc_Toby_cFv();
extern "C" void checkChangeEvt__12daNpc_Toby_cFv();
extern "C" void setAfterTalkMotion__12daNpc_Toby_cFv();
extern "C" void srchActors__12daNpc_Toby_cFv();
extern "C" void evtTalk__12daNpc_Toby_cFv();
extern "C" void evtCutProc__12daNpc_Toby_cFv();
extern "C" void action__12daNpc_Toby_cFv();
extern "C" void beforeMove__12daNpc_Toby_cFv();
extern "C" void setAttnPos__12daNpc_Toby_cFv();
extern "C" void setCollision__12daNpc_Toby_cFv();
extern "C" bool drawDbgInfo__12daNpc_Toby_cFv();
extern "C" void drawOtherMdl__12daNpc_Toby_cFv();
extern "C" void afterSetFaceMotionAnm__12daNpc_Toby_cFiifi();
extern "C" void afterSetMotionAnm__12daNpc_Toby_cFiifi();
extern "C" void selectAction__12daNpc_Toby_cFv();
extern "C" void chkAction__12daNpc_Toby_cFM12daNpc_Toby_cFPCvPvPv_i();
extern "C" void setAction__12daNpc_Toby_cFM12daNpc_Toby_cFPCvPvPv_i();
extern "C" void cutTobyHouseFire__12daNpc_Toby_cFi();
extern "C" void cutTalkToOneself__12daNpc_Toby_cFi();
extern "C" void cutRepairSCannon__12daNpc_Toby_cFi();
extern "C" void cutSCannon__12daNpc_Toby_cFi();
extern "C" void cutConversationAboutSCannon__12daNpc_Toby_cFi();
extern "C" void cutConversationAboutZra__12daNpc_Toby_cFi();
extern "C" void chkAttnZra__12daNpc_Toby_cFv();
extern "C" void wait__12daNpc_Toby_cFPv();
extern "C" void walk__12daNpc_Toby_cFPv();
extern "C" void play__12daNpc_Toby_cFPv();
extern "C" void talk__12daNpc_Toby_cFPv();
extern "C" static void daNpc_Toby_Create__FPv();
extern "C" static void daNpc_Toby_Delete__FPv();
extern "C" static void daNpc_Toby_Execute__FPv();
extern "C" static void daNpc_Toby_Draw__FPv();
extern "C" static bool daNpc_Toby_IsDelete__FPv();
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
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_80B24728(void* _this, int*);
extern "C" void __sinit_d_a_npc_toby_cpp();
extern "C" void
__ct__12daNpc_Toby_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__12daNpc_Toby_cFv();
extern "C" s32 getHeadJointNo__12daNpc_Toby_cFv();
extern "C" s32 getNeckJointNo__12daNpc_Toby_cFv();
extern "C" bool getBackboneJointNo__12daNpc_Toby_cFv();
extern "C" void checkChangeJoint__12daNpc_Toby_cFi();
extern "C" void checkRemoveJoint__12daNpc_Toby_cFi();
extern "C" s32 getFootLJointNo__12daNpc_Toby_cFv();
extern "C" s32 getFootRJointNo__12daNpc_Toby_cFv();
extern "C" bool chkXYItems__12daNpc_Toby_cFv();
extern "C" void __dt__18daNpc_Toby_Param_cFv();
extern "C" static void func_80B249C0();
extern "C" static void func_80B249C8();
extern "C" u8 const m__18daNpc_Toby_Param_c[156];
extern "C" extern char const* const d_a_npc_toby__stringBase0;
extern "C" void* mCutNameList__12daNpc_Toby_c[7];
extern "C" u8 mCutList__12daNpc_Toby_c[84];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fpcEx_IsExist__FUi();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void getLayerNo__14dComIfG_play_cFi();
extern "C" void dComIfGs_sense_type_change_Set__FSc();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void isSwitch__12dSv_memBit_cCFi();
extern "C" void offSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setPt2__14dEvt_control_cFPv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void setGoal__16dEvent_manager_cFP4cXyz();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
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
extern "C" void checkEndSequence__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__13daNpcT_Path_cFv();
extern "C" void setPathInfo__13daNpcT_Path_cFUcScUc();
extern "C" void setNextIdx__13daNpcT_Path_cFi();
extern "C" void getDstPosH__13daNpcT_Path_cF4cXyzP4cXyzii();
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
extern "C" void setPos__8daNpcT_cF4cXyz();
extern "C" void setAngle__8daNpcT_cF5csXyz();
extern "C" void setAngle__8daNpcT_cFs();
extern "C" void hitChk__8daNpcT_cFP12dCcD_GObjInfUl();
extern "C" void setDamage__8daNpcT_cFiii();
extern "C" void chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs();
extern "C" void chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void getAttnPos__8daNpcT_cFP10fopAc_ac_c();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void calcSpeedAndAngle__8daNpcT_cF4cXyziss();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_onEvtBit__FUl();
extern "C" void daNpcT_offEvtBit__FUl();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void getStatus__12dMsgObject_cFv();
extern "C" void isMsgSendControl__12dMsgObject_cFv();
extern "C" void onMsgSend__12dMsgObject_cFv();
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
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_addCalcAngleS2__FPssss();
extern "C" void cLib_chaseS__FPsss();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void bgmStreamPrepare__8Z2SeqMgrFUl();
extern "C" void bgmStreamPlay__8Z2SeqMgrFv();
extern "C" void bgmStreamStop__8Z2SeqMgrFUl();
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
extern "C" void __cvt_fp2unsigned();
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
extern "C" u8 mFindActorPtrs__8daNpcT_c[200];
extern "C" u8 mFindCount__8daNpcT_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();
extern "C" void setAnm__16daObj_AutoMata_cFib();
extern "C" void setCannonRepair__11daSCannon_cFv();

//
// Declarations:
//

/* ############################################################################################## */
/* 80B24B8C-80B24B8C 0001A8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B24B8C = "";
SECTION_DEAD static char const* const stringBase_80B24B8D = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80B24B99 = "TALKTO_ONESELF";
SECTION_DEAD static char const* const stringBase_80B24BA8 = "REPAIR_SCANNON";
SECTION_DEAD static char const* const stringBase_80B24BB7 = "SCANNON";
SECTION_DEAD static char const* const stringBase_80B24BBF = "CONVERSATION_ABOUT_SCANNON";
SECTION_DEAD static char const* const stringBase_80B24BDA = "CONVERSATION_ABOUT_ZRA";
SECTION_DEAD static char const* const stringBase_80B24BF1 = "Toby";
SECTION_DEAD static char const* const stringBase_80B24BF6 = "Toby_TW";
SECTION_DEAD static char const* const stringBase_80B24BFE = "Toby0";
SECTION_DEAD static char const* const stringBase_80B24C04 = "Toby1";
SECTION_DEAD static char const* const stringBase_80B24C0A = "Toby2";
SECTION_DEAD static char const* const stringBase_80B24C10 = "Toby3";
SECTION_DEAD static char const* const stringBase_80B24C16 = "Toby4";
SECTION_DEAD static char const* const stringBase_80B24C1C = "Toby5";
SECTION_DEAD static char const* const stringBase_80B24C22 = "TOBY_HOUSE_FIRE";
#pragma pop

/* 80B24C68-80B24C80 000020 0018+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[24] = {
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x06,
};

/* 80B24C80-80B24CB8 -00001 0038+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[14] = {
    (void*)&d_a_npc_toby__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_toby__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_toby__stringBase0) + 0xD),
    (void*)0x00000005,
    (void*)(((char*)&d_a_npc_toby__stringBase0) + 0x1C),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_toby__stringBase0) + 0x2B),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_toby__stringBase0) + 0x33),
    (void*)0x00000004,
    (void*)(((char*)&d_a_npc_toby__stringBase0) + 0x4E),
    (void*)0x00000004,
};
#pragma pop

/* 80B24CB8-80B24CDC -00001 0024+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[9] = {
    (void*)&d_a_npc_toby__stringBase0,
    (void*)(((char*)&d_a_npc_toby__stringBase0) + 0x65),
    (void*)(((char*)&d_a_npc_toby__stringBase0) + 0x6A),
    (void*)(((char*)&d_a_npc_toby__stringBase0) + 0x72),
    (void*)(((char*)&d_a_npc_toby__stringBase0) + 0x78),
    (void*)(((char*)&d_a_npc_toby__stringBase0) + 0x7E),
    (void*)(((char*)&d_a_npc_toby__stringBase0) + 0x84),
    (void*)(((char*)&d_a_npc_toby__stringBase0) + 0x8A),
    (void*)(((char*)&d_a_npc_toby__stringBase0) + 0x90),
};

/* 80B24CDC-80B24CE4 000094 0006+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u8 l_loadResPtrn0[6 + 2 /* padding */] = {
    0x01,
    0x03,
    0x04,
    0x07,
    0x08,
    0xFF,
    /* padding */
    0x00,
    0x00,
};

/* 80B24CE4-80B24CEC 00009C 0006+02 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u8 l_loadResPtrn1[6 + 2 /* padding */] = {
    0x02,
    0x03,
    0x05,
    0x07,
    0x08,
    0xFF,
    /* padding */
    0x00,
    0x00,
};

/* 80B24CEC-80B24CF4 0000A4 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn2 */
SECTION_DATA static u8 l_loadResPtrn2[5 + 3 /* padding */] = {
    0x01,
    0x03,
    0x06,
    0x07,
    0xFF,
    /* padding */
    0x00,
    0x00,
    0x00,
};

/* 80B24CF4-80B24CFC 0000AC 0008+00 1/0 0/0 0/0 .data            l_loadResPtrn3 */
SECTION_DATA static u8 l_loadResPtrn3[8] = {
    0x01, 0x02, 0x03, 0x04, 0x05, 0x07, 0x08, 0xFF,
};

/* 80B24CFC-80B24D18 -00001 001C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[7] = {
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn1, (void*)&l_loadResPtrn1, (void*)&l_loadResPtrn2,
    (void*)&l_loadResPtrn2, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn3,
};

/* 80B24D18-80B24ED8 0000D0 01C0+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[448] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x1E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x15,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80B24ED8-80B25194 000290 02BC+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[700] = {
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80B25194-80B252A4 00054C 0110+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[272] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0x00, 0x0F, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x01, 0x00, 0x0D, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x01, 0x00, 0x0C, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0x00, 0x0E, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x03, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x01, 0x00, 0x0E, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80B252A4-80B25434 00065C 0190+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[400] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x01, 0x00, 0x0F, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x01, 0x00, 0x11, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x01, 0x00, 0x13, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xF7, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x15, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x16, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x17, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x18, 0x02, 0x01, 0x00, 0x11, 0xFF, 0x01, 0x00, 0x12, 0xFF, 0x01, 0x00, 0x13, 0x00, 0x00,
};
#pragma pop

/* 80B25434-80B25450 -00001 001C+00 1/1 0/0 0/0 .data            mCutNameList__12daNpc_Toby_c */
SECTION_DATA void* daNpc_Toby_c::mCutNameList[7] = {
    (void*)&d_a_npc_toby__stringBase0,
    (void*)(((char*)&d_a_npc_toby__stringBase0) + 0x96),
    (void*)(((char*)&d_a_npc_toby__stringBase0) + 0xD),
    (void*)(((char*)&d_a_npc_toby__stringBase0) + 0x1C),
    (void*)(((char*)&d_a_npc_toby__stringBase0) + 0x2B),
    (void*)(((char*)&d_a_npc_toby__stringBase0) + 0x33),
    (void*)(((char*)&d_a_npc_toby__stringBase0) + 0x4E),
};

/* 80B25450-80B2545C -00001 000C+00 0/1 0/0 0/0 .data            @3927 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3927[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTobyHouseFire__12daNpc_Toby_cFi,
};
#pragma pop

/* 80B2545C-80B25468 -00001 000C+00 0/1 0/0 0/0 .data            @3928 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3928[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTalkToOneself__12daNpc_Toby_cFi,
};
#pragma pop

/* 80B25468-80B25474 -00001 000C+00 0/1 0/0 0/0 .data            @3929 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3929[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutRepairSCannon__12daNpc_Toby_cFi,
};
#pragma pop

/* 80B25474-80B25480 -00001 000C+00 0/1 0/0 0/0 .data            @3930 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3930[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutSCannon__12daNpc_Toby_cFi,
};
#pragma pop

/* 80B25480-80B2548C -00001 000C+00 0/1 0/0 0/0 .data            @3931 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3931[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutSCannon__12daNpc_Toby_cFi,
};
#pragma pop

/* 80B2548C-80B25498 -00001 000C+00 0/1 0/0 0/0 .data            @3932 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3932[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutZra__12daNpc_Toby_cFi,
};
#pragma pop

/* 80B25498-80B254EC 000850 0054+00 1/2 0/0 0/0 .data            mCutList__12daNpc_Toby_c */
SECTION_DATA u8 daNpc_Toby_c::mCutList[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80B254EC-80B254F8 -00001 000C+00 1/1 0/0 0/0 .data            @4706 */
SECTION_DATA static void* lit_4706[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)play__12daNpc_Toby_cFPv,
};

/* 80B254F8-80B25504 -00001 000C+00 1/1 0/0 0/0 .data            @4740 */
SECTION_DATA static void* lit_4740[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Toby_cFPv,
};

/* 80B25504-80B25510 -00001 000C+00 1/1 0/0 0/0 .data            @4828 */
SECTION_DATA static void* lit_4828[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Toby_cFPv,
};

/* 80B25510-80B2551C -00001 000C+00 1/1 0/0 0/0 .data            @4833 */
SECTION_DATA static void* lit_4833[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__12daNpc_Toby_cFPv,
};

/* 80B2551C-80B25528 -00001 000C+00 1/1 0/0 0/0 .data            @5075 */
SECTION_DATA static void* lit_5075[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)play__12daNpc_Toby_cFPv,
};

/* 80B25528-80B25534 -00001 000C+00 0/1 0/0 0/0 .data            @5198 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5198[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)play__12daNpc_Toby_cFPv,
};
#pragma pop

/* 80B25534-80B25540 -00001 000C+00 0/1 0/0 0/0 .data            @5204 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5204[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk__12daNpc_Toby_cFPv,
};
#pragma pop

/* 80B25540-80B2554C -00001 000C+00 0/1 0/0 0/0 .data            @5206 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5206[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_Toby_cFPv,
};
#pragma pop

/* 80B2554C-80B25558 -00001 000C+00 0/1 0/0 0/0 .data            @5208 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5208[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__12daNpc_Toby_cFPv,
};
#pragma pop

/* 80B25558-80B25590 -00001 0038+00 1/1 0/0 0/0 .data            @5478 */
SECTION_DATA static void* lit_5478[14] = {
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x258),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x294),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x2AC),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x2F4),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x2F4),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x384),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x3EC),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x3EC),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x2F4),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x49C),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x4D0),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x384),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x384),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x4F0),
};

/* 80B25590-80B255C8 -00001 0038+00 1/1 0/0 0/0 .data            @5477 */
SECTION_DATA static void* lit_5477[14] = {
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0xEC),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x110),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x170),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x18C),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x228),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x194),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x19C),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x1B4),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x228),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x228),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x228),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x1C0),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x194),
    (void*)(((char*)cutTalkToOneself__12daNpc_Toby_cFi) + 0x220),
};

/* 80B255C8-80B2561C -00001 0054+00 1/1 0/0 0/0 .data            @6040 */
SECTION_DATA static void* lit_6040[21] = {
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x498),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x504),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x5E0),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x660),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x6CC),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x8F4),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x8F4),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x944),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x7B8),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0xA24),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x7B8),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0xA24),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0xA24),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0xA24),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0xA24),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0xA24),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0xA24),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0xA24),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0xA24),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0xA24),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0xA10),
};

/* 80B2561C-80B25670 -00001 0054+00 1/1 0/0 0/0 .data            @6039 */
SECTION_DATA static void* lit_6039[21] = {
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x118),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x13C),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x144),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x468),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x158),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x468),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x468),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x30C),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x328),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x3D0),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x458),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x468),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x468),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x468),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x468),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x468),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x468),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x468),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x468),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x468),
    (void*)(((char*)cutConversationAboutSCannon__12daNpc_Toby_cFi) + 0x464),
};

/* 80B25670-80B25690 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Toby_MethodTable */
static actor_method_class daNpc_Toby_MethodTable = {
    (process_method_func)daNpc_Toby_Create__FPv,
    (process_method_func)daNpc_Toby_Delete__FPv,
    (process_method_func)daNpc_Toby_Execute__FPv,
    (process_method_func)daNpc_Toby_IsDelete__FPv,
    (process_method_func)daNpc_Toby_Draw__FPv,
};

/* 80B25690-80B256C0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_TOBY */
extern actor_process_profile_definition g_profile_NPC_TOBY = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_NPC_TOBY,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daNpc_Toby_c),    // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  377,                     // mPriority
  &daNpc_Toby_MethodTable, // sub_method
  0x00040107,              // mStatus
  fopAc_NPC_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80B256C0-80B256CC 000A78 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80B256CC-80B256D8 000A84 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80B256D8-80B256FC 000A90 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B249C8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B249C0,
};

/* 80B256FC-80B25708 000AB4 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80B25708-80B25714 000AC0 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80B25714-80B25720 000ACC 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80B25720-80B2572C 000AD8 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80B2572C-80B25738 000AE4 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80B25738-80B25744 000AF0 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80B25744-80B25750 000AFC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B25750-80B2575C 000B08 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80B2575C-80B25768 000B14 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80B25768-80B2582C 000B20 00C4+00 2/2 0/0 0/0 .data            __vt__12daNpc_Toby_c */
SECTION_DATA extern void* __vt__12daNpc_Toby_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daNpc_Toby_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__12daNpc_Toby_cFi,
    (void*)checkRemoveJoint__12daNpc_Toby_cFi,
    (void*)getBackboneJointNo__12daNpc_Toby_cFv,
    (void*)getNeckJointNo__12daNpc_Toby_cFv,
    (void*)getHeadJointNo__12daNpc_Toby_cFv,
    (void*)getFootLJointNo__12daNpc_Toby_cFv,
    (void*)getFootRJointNo__12daNpc_Toby_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__12daNpc_Toby_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__12daNpc_Toby_cFi,
    (void*)setParam__12daNpc_Toby_cFv,
    (void*)checkChangeEvt__12daNpc_Toby_cFv,
    (void*)evtTalk__12daNpc_Toby_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__12daNpc_Toby_cFv,
    (void*)setAfterTalkMotion__12daNpc_Toby_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__12daNpc_Toby_cFv,
    (void*)beforeMove__12daNpc_Toby_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__12daNpc_Toby_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__12daNpc_Toby_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__12daNpc_Toby_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__12daNpc_Toby_cFv,
    (void*)drawOtherMdl__12daNpc_Toby_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__12daNpc_Toby_cFiifi,
    (void*)afterSetMotionAnm__12daNpc_Toby_cFiifi,
    (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__8daNpcT_cFPiPi,
    (void*)changeBck__8daNpcT_cFPiPi,
    (void*)changeBtp__8daNpcT_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
};

/* 80B1E64C-80B1E798 0000EC 014C+00 1/0 0/0 0/0 .text            __dt__12daNpc_Toby_cFv */
daNpc_Toby_c::~daNpc_Toby_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B249E4-80B24A80 000000 009C+00 15/15 0/0 0/0 .rodata          m__18daNpc_Toby_Param_c */
SECTION_RODATA u8 const daNpc_Toby_Param_c::m[156] = {
    0x43, 0x20, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x20, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x40, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B249E4, &daNpc_Toby_Param_c::m);

/* 80B24A80-80B24A9C 00009C 001C+00 0/1 0/0 0/0 .rodata          heapSize$4089 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[28] = {
    0x00, 0x00, 0x3B, 0xC0, 0x00, 0x00, 0x3B, 0x10, 0x00, 0x00, 0x3B, 0x10, 0x00, 0x00,
    0x43, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3B, 0xD0, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B24A80, &heapSize);
#pragma pop

/* 80B24A9C-80B24AA0 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4155 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4155 = -200.0f;
COMPILER_STRIP_GATE(0x80B24A9C, &lit_4155);
#pragma pop

/* 80B24AA0-80B24AA4 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4156 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4156 = -100.0f;
COMPILER_STRIP_GATE(0x80B24AA0, &lit_4156);
#pragma pop

/* 80B24AA4-80B24AA8 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4157 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4157 = 200.0f;
COMPILER_STRIP_GATE(0x80B24AA4, &lit_4157);
#pragma pop

/* 80B24AA8-80B24AAC 0000C4 0004+00 0/2 0/0 0/0 .rodata          @4158 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4158 = 300.0f;
COMPILER_STRIP_GATE(0x80B24AA8, &lit_4158);
#pragma pop

/* 80B24AAC-80B24AB0 0000C8 0004+00 6/18 0/0 0/0 .rodata          @4159 */
SECTION_RODATA static u8 const lit_4159[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B24AAC, &lit_4159);

/* 80B24AB0-80B24AB4 0000CC 0004+00 0/1 0/0 0/0 .rodata          @4160 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4160 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80B24AB0, &lit_4160);
#pragma pop

/* 80B1E798-80B1EA60 000238 02C8+00 1/1 0/0 0/0 .text            create__12daNpc_Toby_cFv */
void daNpc_Toby_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B24AB4-80B24AB8 0000D0 0004+00 0/2 0/0 0/0 .rodata          @4323 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4323 = 65536.0f;
COMPILER_STRIP_GATE(0x80B24AB4, &lit_4323);
#pragma pop

/* 80B24AB8-80B24ABC 0000D4 0004+00 0/3 0/0 0/0 .rodata          @4324 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4324 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80B24AB8, &lit_4324);
#pragma pop

/* 80B24ABC-80B24AC0 0000D8 0004+00 0/1 0/0 0/0 .rodata          bmdTypeList$4437 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const bmdTypeList[4] = {
    0x00,
    0x00,
    0x00,
    0x02,
};
COMPILER_STRIP_GATE(0x80B24ABC, &bmdTypeList);
#pragma pop

/* 80B24AC0-80B24AC4 0000DC 0004+00 1/5 0/0 0/0 .rodata          @4495 */
SECTION_RODATA static f32 const lit_4495 = 1.0f;
COMPILER_STRIP_GATE(0x80B24AC0, &lit_4495);

/* 80B1EA60-80B1ED6C 000500 030C+00 1/1 0/0 0/0 .text            CreateHeap__12daNpc_Toby_cFv */
void daNpc_Toby_c::CreateHeap() {
    // NONMATCHING
}

/* 80B1ED6C-80B1EDA8 00080C 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80B1EDA8-80B1EDC0 000848 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80B1EDC0-80B1EDFC 000860 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80B1EDFC-80B1EE14 00089C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80B1EE14-80B1EE5C 0008B4 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80B1EE5C-80B1EE80 0008FC 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80B1EE80-80B1EEBC 000920 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80B1EEBC-80B1EED4 00095C 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80B1EED4-80B1EF10 000974 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80B1EF10-80B1EF28 0009B0 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80B1EF28-80B1EF5C 0009C8 0034+00 1/1 0/0 0/0 .text            Delete__12daNpc_Toby_cFv */
void daNpc_Toby_c::Delete() {
    // NONMATCHING
}

/* 80B1EF5C-80B1EF7C 0009FC 0020+00 2/2 0/0 0/0 .text            Execute__12daNpc_Toby_cFv */
void daNpc_Toby_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B24AC4-80B24AC8 0000E0 0004+00 1/2 0/0 0/0 .rodata          @4544 */
SECTION_RODATA static f32 const lit_4544 = 100.0f;
COMPILER_STRIP_GATE(0x80B24AC4, &lit_4544);

/* 80B1EF7C-80B1F010 000A1C 0094+00 1/1 0/0 0/0 .text            Draw__12daNpc_Toby_cFv */
void daNpc_Toby_c::Draw() {
    // NONMATCHING
}

/* 80B1F010-80B1F030 000AB0 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__12daNpc_Toby_cFP10fopAc_ac_c             */
void daNpc_Toby_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80B1F030-80B1F088 000AD0 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__12daNpc_Toby_cFP8J3DJointi                */
void daNpc_Toby_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80B1F088-80B1F124 000B28 009C+00 1/1 0/0 0/0 .text            srchToby__12daNpc_Toby_cFPvPv */
void daNpc_Toby_c::srchToby(void* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B24AC8-80B24ACC 0000E4 0004+00 1/1 0/0 0/0 .rodata          @4593 */
SECTION_RODATA static f32 const lit_4593 = 1000000000.0f;
COMPILER_STRIP_GATE(0x80B24AC8, &lit_4593);

/* 80B1F124-80B1F200 000BC4 00DC+00 1/1 0/0 0/0 .text            getOtherTobyP__12daNpc_Toby_cFi */
void daNpc_Toby_c::getOtherTobyP(int param_0) {
    // NONMATCHING
}

/* 80B1F200-80B1F274 000CA0 0074+00 2/2 0/0 0/0 .text            getType__12daNpc_Toby_cFv */
void daNpc_Toby_c::getType() {
    // NONMATCHING
}

/* 80B1F274-80B1F384 000D14 0110+00 1/1 0/0 0/0 .text            isDelete__12daNpc_Toby_cFv */
void daNpc_Toby_c::isDelete() {
    // NONMATCHING
}

/* 80B1F384-80B1F5AC 000E24 0228+00 1/1 0/0 0/0 .text            reset__12daNpc_Toby_cFv */
void daNpc_Toby_c::reset() {
    // NONMATCHING
}

/* 80B1F5AC-80B1F638 00104C 008C+00 1/0 0/0 0/0 .text            afterJntAnm__12daNpc_Toby_cFi */
void daNpc_Toby_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B24ACC-80B24AD0 0000E8 0004+00 1/1 0/0 0/0 .rodata          @4735 */
SECTION_RODATA static f32 const lit_4735 = 600.0f;
COMPILER_STRIP_GATE(0x80B24ACC, &lit_4735);

/* 80B1F638-80B1F784 0010D8 014C+00 1/0 0/0 0/0 .text            setParam__12daNpc_Toby_cFv */
void daNpc_Toby_c::setParam() {
    // NONMATCHING
}

/* 80B1F784-80B1F950 001224 01CC+00 1/0 0/0 0/0 .text            checkChangeEvt__12daNpc_Toby_cFv */
void daNpc_Toby_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B24AD0-80B24AD4 0000EC 0004+00 2/6 0/0 0/0 .rodata          @4802 */
SECTION_RODATA static f32 const lit_4802 = -1.0f;
COMPILER_STRIP_GATE(0x80B24AD0, &lit_4802);

/* 80B1F950-80B1FA08 0013F0 00B8+00 1/0 0/0 0/0 .text setAfterTalkMotion__12daNpc_Toby_cFv */
void daNpc_Toby_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80B1FA08-80B1FB34 0014A8 012C+00 1/1 0/0 0/0 .text            srchActors__12daNpc_Toby_cFv */
void daNpc_Toby_c::srchActors() {
    // NONMATCHING
}

/* 80B1FB34-80B1FBD4 0015D4 00A0+00 1/0 0/0 0/0 .text            evtTalk__12daNpc_Toby_cFv */
void daNpc_Toby_c::evtTalk() {
    // NONMATCHING
}

/* 80B1FBD4-80B1FC9C 001674 00C8+00 1/0 0/0 0/0 .text            evtCutProc__12daNpc_Toby_cFv */
void daNpc_Toby_c::evtCutProc() {
    // NONMATCHING
}

/* 80B1FC9C-80B1FE68 00173C 01CC+00 1/0 0/0 0/0 .text            action__12daNpc_Toby_cFv */
void daNpc_Toby_c::action() {
    // NONMATCHING
}

/* 80B1FE68-80B1FF2C 001908 00C4+00 1/0 0/0 0/0 .text            beforeMove__12daNpc_Toby_cFv */
void daNpc_Toby_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B24AD4-80B24AD8 0000F0 0004+00 0/2 0/0 0/0 .rodata          @4983 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4983 = 30.0f;
COMPILER_STRIP_GATE(0x80B24AD4, &lit_4983);
#pragma pop

/* 80B24AD8-80B24ADC 0000F4 0004+00 0/1 0/0 0/0 .rodata          @4984 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4984 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80B24AD8, &lit_4984);
#pragma pop

/* 80B24ADC-80B24AE0 0000F8 0004+00 0/2 0/0 0/0 .rodata          @4985 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4985 = 20.0f;
COMPILER_STRIP_GATE(0x80B24ADC, &lit_4985);
#pragma pop

/* 80B24AE0-80B24AE4 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4986 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4986 = 140.0f;
COMPILER_STRIP_GATE(0x80B24AE0, &lit_4986);
#pragma pop

/* 80B24AE4-80B24AE8 000100 0004+00 0/1 0/0 0/0 .rodata          @4987 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4987 = 120.0f;
COMPILER_STRIP_GATE(0x80B24AE4, &lit_4987);
#pragma pop

/* 80B24AE8-80B24AEC 000104 0004+00 0/1 0/0 0/0 .rodata          @4988 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4988 = 40.0f;
COMPILER_STRIP_GATE(0x80B24AE8, &lit_4988);
#pragma pop

/* 80B24AEC-80B24AF0 000108 0004+00 0/1 0/0 0/0 .rodata          @4989 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4989 = 3.0f;
COMPILER_STRIP_GATE(0x80B24AEC, &lit_4989);
#pragma pop

/* 80B24AF0-80B24AF4 00010C 0004+00 0/2 0/0 0/0 .rodata          @4990 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4990 = 10.0f;
COMPILER_STRIP_GATE(0x80B24AF0, &lit_4990);
#pragma pop

/* 80B24AF4-80B24AFC 000110 0008+00 1/4 0/0 0/0 .rodata          @4992 */
SECTION_RODATA static u8 const lit_4992[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B24AF4, &lit_4992);

/* 80B25880-80B2588C 000048 000C+00 1/1 0/0 0/0 .bss             @3933 */
static u8 lit_3933[12];

/* 80B2588C-80B25890 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80B25890-80B258A0 000058 000C+04 0/1 0/0 0/0 .bss             @4922 */
#pragma push
#pragma force_active on
static u8 lit_4922[12 + 4 /* padding */];
#pragma pop

/* 80B258A0-80B258AC 000068 000C+00 0/1 0/0 0/0 .bss             prtclScl$4921 */
#pragma push
#pragma force_active on
static u8 prtclScl[12];
#pragma pop

/* 80B1FF2C-80B20278 0019CC 034C+00 1/0 0/0 0/0 .text            setAttnPos__12daNpc_Toby_cFv */
void daNpc_Toby_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B24AFC-80B24B04 000118 0008+00 0/1 0/0 0/0 .rodata          @5050 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5050[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B24AFC, &lit_5050);
#pragma pop

/* 80B24B04-80B24B0C 000120 0008+00 0/1 0/0 0/0 .rodata          @5051 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5051[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B24B04, &lit_5051);
#pragma pop

/* 80B24B0C-80B24B14 000128 0008+00 0/1 0/0 0/0 .rodata          @5052 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5052[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B24B0C, &lit_5052);
#pragma pop

/* 80B24B14-80B24B18 000130 0004+00 0/1 0/0 0/0 .rodata          @5098 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5098 = 110.0f;
COMPILER_STRIP_GATE(0x80B24B14, &lit_5098);
#pragma pop

/* 80B24B18-80B24B1C 000134 0004+00 0/1 0/0 0/0 .rodata          @5099 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5099 = 64.0f;
COMPILER_STRIP_GATE(0x80B24B18, &lit_5099);
#pragma pop

/* 80B20278-80B2042C 001D18 01B4+00 1/0 0/0 0/0 .text            setCollision__12daNpc_Toby_cFv */
void daNpc_Toby_c::setCollision() {
    // NONMATCHING
}

/* 80B2042C-80B20434 001ECC 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__12daNpc_Toby_cFv */
bool daNpc_Toby_c::drawDbgInfo() {
    return false;
}

/* ############################################################################################## */
/* 80B24B1C-80B24B20 000138 0004+00 1/1 0/0 0/0 .rodata          jointNo$5107 */
SECTION_RODATA static u8 const jointNo[4] = {
    0x00,
    0x00,
    0x00,
    0x12,
};
COMPILER_STRIP_GATE(0x80B24B1C, &jointNo);

/* 80B20434-80B2050C 001ED4 00D8+00 1/0 0/0 0/0 .text            drawOtherMdl__12daNpc_Toby_cFv */
void daNpc_Toby_c::drawOtherMdl() {
    // NONMATCHING
}

/* 80B2050C-80B20568 001FAC 005C+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__12daNpc_Toby_cFiifi
 */
void daNpc_Toby_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    // NONMATCHING
}

/* 80B20568-80B205F4 002008 008C+00 1/0 0/0 0/0 .text afterSetMotionAnm__12daNpc_Toby_cFiifi */
void daNpc_Toby_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    // NONMATCHING
}

/* 80B205F4-80B20710 002094 011C+00 1/1 0/0 0/0 .text            selectAction__12daNpc_Toby_cFv */
void daNpc_Toby_c::selectAction() {
    // NONMATCHING
}

/* 80B20710-80B2073C 0021B0 002C+00 2/2 0/0 0/0 .text
 * chkAction__12daNpc_Toby_cFM12daNpc_Toby_cFPCvPvPv_i          */
void daNpc_Toby_c::chkAction(int (daNpc_Toby_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80B2073C-80B207E4 0021DC 00A8+00 2/2 0/0 0/0 .text
 * setAction__12daNpc_Toby_cFM12daNpc_Toby_cFPCvPvPv_i          */
void daNpc_Toby_c::setAction(int (daNpc_Toby_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B24B8C-80B24B8C 0001A8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B24C32 = "prm";
SECTION_DEAD static char const* const stringBase_80B24C36 = "timer";
#pragma pop

/* 80B207E4-80B20AB0 002284 02CC+00 1/0 0/0 0/0 .text            cutTobyHouseFire__12daNpc_Toby_cFi
 */
void daNpc_Toby_c::cutTobyHouseFire(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B24B20-80B24B28 00013C 0008+00 0/1 0/0 0/0 .rodata          @5345 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5345[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B24B20, &lit_5345);
#pragma pop

/* 80B24B8C-80B24B8C 0001A8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B24C3C = "msgNo";
#pragma pop

/* 80B20AB0-80B20FC0 002550 0510+00 3/0 0/0 0/0 .text            cutTalkToOneself__12daNpc_Toby_cFi
 */
void daNpc_Toby_c::cutTalkToOneself(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B24B28-80B24B30 000144 0008+00 0/0 0/0 0/0 .rodata          @5499 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5499[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B24B28, &lit_5499);
#pragma pop

/* 80B24B30-80B24B34 00014C 0004+00 0/1 0/0 0/0 .rodata          @5630 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5630 = 0x43360B61;
COMPILER_STRIP_GATE(0x80B24B30, &lit_5630);
#pragma pop

/* 80B24B34-80B24B38 000150 0004+00 0/2 0/0 0/0 .rodata          @5631 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5631 = 5.0f;
COMPILER_STRIP_GATE(0x80B24B34, &lit_5631);
#pragma pop

/* 80B24B38-80B24B3C 000154 0004+00 0/2 0/0 0/0 .rodata          @5632 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5632 = 4.0f;
COMPILER_STRIP_GATE(0x80B24B38, &lit_5632);
#pragma pop

/* 80B24B3C-80B24B44 000158 0004+04 0/1 0/0 0/0 .rodata          @5633 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5633[1 + 1 /* padding */] = {
    360.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80B24B3C, &lit_5633);
#pragma pop

/* 80B24B44-80B24B4C 000160 0008+00 0/1 0/0 0/0 .rodata          @5636 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5636[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B24B44, &lit_5636);
#pragma pop

/* 80B20FC0-80B215B4 002A60 05F4+00 1/0 0/0 0/0 .text            cutRepairSCannon__12daNpc_Toby_cFi
 */
void daNpc_Toby_c::cutRepairSCannon(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B24B4C-80B24B54 000168 0008+00 0/0 0/0 0/0 .rodata          @5658 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5658[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B24B4C, &lit_5658);
#pragma pop

/* 80B24B54-80B24B58 000170 0004+00 0/2 0/0 0/0 .rodata          @5751 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5751 = 1000.0f;
COMPILER_STRIP_GATE(0x80B24B54, &lit_5751);
#pragma pop

/* 80B24B58-80B24B5C 000174 0004+00 0/1 0/0 0/0 .rodata          @5752 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5752 = 1600.0f;
COMPILER_STRIP_GATE(0x80B24B58, &lit_5752);
#pragma pop

/* 80B24B5C-80B24B60 000178 0004+00 0/1 0/0 0/0 .rodata          @5753 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5753 = 11.0f / 20.0f;
COMPILER_STRIP_GATE(0x80B24B5C, &lit_5753);
#pragma pop

/* 80B215B4-80B219F4 003054 0440+00 1/0 0/0 0/0 .text            cutSCannon__12daNpc_Toby_cFi */
void daNpc_Toby_c::cutSCannon(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B24B60-80B24B68 00017C 0008+00 0/1 0/0 0/0 .rodata          @5783 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5783[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B24B60, &lit_5783);
#pragma pop

/* 80B24B8C-80B24B8C 0001A8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B24C42 = "send";
#pragma pop

/* 80B219F4-80B22434 003494 0A40+00 3/0 0/0 0/0 .text
 * cutConversationAboutSCannon__12daNpc_Toby_cFi                */
void daNpc_Toby_c::cutConversationAboutSCannon(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B24B68-80B24B6C 000184 0004+00 0/1 0/0 0/0 .rodata          @6037 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6037 = -300.0f;
COMPILER_STRIP_GATE(0x80B24B68, &lit_6037);
#pragma pop

/* 80B24B6C-80B24B70 000188 0004+00 0/0 0/0 0/0 .rodata          @6038 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6038 = -1000.0f;
COMPILER_STRIP_GATE(0x80B24B6C, &lit_6038);
#pragma pop

/* 80B24B70-80B24B78 00018C 0008+00 1/1 0/0 0/0 .rodata          @6056 */
SECTION_RODATA static u8 const lit_6056[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B24B70, &lit_6056);

/* 80B22434-80B22614 003ED4 01E0+00 1/0 0/0 0/0 .text cutConversationAboutZra__12daNpc_Toby_cFi */
void daNpc_Toby_c::cutConversationAboutZra(int param_0) {
    // NONMATCHING
}

/* 80B22614-80B226B0 0040B4 009C+00 5/5 0/0 0/0 .text            chkAttnZra__12daNpc_Toby_cFv */
void daNpc_Toby_c::chkAttnZra() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B24B78-80B24B7C 000194 0004+00 0/1 0/0 0/0 .rodata          @6337 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6337 = 2000.0f;
COMPILER_STRIP_GATE(0x80B24B78, &lit_6337);
#pragma pop

/* 80B24B7C-80B24B80 000198 0004+00 0/1 0/0 0/0 .rodata          @6338 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6338 = 90.0f;
COMPILER_STRIP_GATE(0x80B24B7C, &lit_6338);
#pragma pop

/* 80B226B0-80B22D98 004150 06E8+00 2/0 0/0 0/0 .text            wait__12daNpc_Toby_cFPv */
void daNpc_Toby_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80B22D98-80B22FAC 004838 0214+00 1/0 0/0 0/0 .text            walk__12daNpc_Toby_cFPv */
void daNpc_Toby_c::walk(void* param_0) {
    // NONMATCHING
}

/* 80B22FAC-80B23344 004A4C 0398+00 3/0 0/0 0/0 .text            play__12daNpc_Toby_cFPv */
void daNpc_Toby_c::play(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B24B80-80B24B8C 00019C 000C+00 0/1 0/0 0/0 .rodata          @6541 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6541[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80B24B80, &lit_6541);
#pragma pop

/* 80B23344-80B23628 004DE4 02E4+00 3/0 0/0 0/0 .text            talk__12daNpc_Toby_cFPv */
void daNpc_Toby_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80B23628-80B23648 0050C8 0020+00 1/0 0/0 0/0 .text            daNpc_Toby_Create__FPv */
static void daNpc_Toby_Create(void* param_0) {
    // NONMATCHING
}

/* 80B23648-80B23668 0050E8 0020+00 1/0 0/0 0/0 .text            daNpc_Toby_Delete__FPv */
static void daNpc_Toby_Delete(void* param_0) {
    // NONMATCHING
}

/* 80B23668-80B23688 005108 0020+00 1/0 0/0 0/0 .text            daNpc_Toby_Execute__FPv */
static void daNpc_Toby_Execute(void* param_0) {
    // NONMATCHING
}

/* 80B23688-80B236A8 005128 0020+00 1/0 0/0 0/0 .text            daNpc_Toby_Draw__FPv */
static void daNpc_Toby_Draw(void* param_0) {
    // NONMATCHING
}

/* 80B236A8-80B236B0 005148 0008+00 1/0 0/0 0/0 .text            daNpc_Toby_IsDelete__FPv */
static bool daNpc_Toby_IsDelete(void* param_0) {
    return true;
}

/* 80B236B0-80B236E0 005150 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80B236E0-80B23728 005180 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B23728-80B23AB0 0051C8 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B23AB0-80B23AEC 005550 003C+00 4/4 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80B23AEC-80B23B28 00558C 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80B23B28-80B23B70 0055C8 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B23B70-80B23BB8 005610 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80B23BB8-80B23BF4 005658 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B23BF4-80B23C3C 005694 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80B23C3C-80B23C84 0056DC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80B23C84-80B24088 005724 0404+00 1/1 0/0 0/0 .text
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

/* 80B24088-80B2408C 005B28 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80B2408C-80B24188 005B2C 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80B24188-80B2418C 005C28 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80B2418C-80B241D4 005C2C 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80B241D4-80B24244 005C74 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80B24244-80B242A0 005CE4 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B242A0-80B24310 005D40 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80B24310-80B24358 005DB0 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80B24358-80B24474 005DF8 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80B24474-80B2467C 005F14 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80B2467C-80B24680 00611C 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80B24680-80B24688 006120 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B24688-80B24690 006128 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80B24690-80B24698 006130 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80B2469C-80B246B4 00613C 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80B246B4-80B246B8 006154 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80B246B8-80B246E8 006158 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80B246E8-80B24718 006188 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80B24718-80B2471C 0061B8 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B2471C-80B24720 0061BC 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B24720-80B24724 0061C0 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B24724-80B24728 0061C4 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80B24728-80B24744 0061C8 001C+00 6/6 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80B24728(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B2582C-80B25838 000BE4 000C+00 2/2 0/0 0/0 .data            __vt__18daNpc_Toby_Param_c */
SECTION_DATA extern void* __vt__18daNpc_Toby_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpc_Toby_Param_cFv,
};

/* 80B24744-80B24840 0061E4 00FC+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_toby_cpp */
void __sinit_d_a_npc_toby_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80B24744, __sinit_d_a_npc_toby_cpp);
#pragma pop

/* 80B24840-80B24920 0062E0 00E0+00 1/1 0/0 0/0 .text
 * __ct__12daNpc_Toby_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Toby_c::daNpc_Toby_c(daNpcT_faceMotionAnmData_c const* param_0,
                               daNpcT_motionAnmData_c const* param_1,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                               int param_3,
                               daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                               int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80B24920-80B24928 0063C0 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__12daNpc_Toby_cFv */
u16 daNpc_Toby_c::getEyeballMaterialNo() {
    return 2;
}

/* 80B24928-80B24930 0063C8 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__12daNpc_Toby_cFv */
s32 daNpc_Toby_c::getHeadJointNo() {
    return 4;
}

/* 80B24930-80B24938 0063D0 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__12daNpc_Toby_cFv */
s32 daNpc_Toby_c::getNeckJointNo() {
    return 3;
}

/* 80B24938-80B24940 0063D8 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__12daNpc_Toby_cFv */
bool daNpc_Toby_c::getBackboneJointNo() {
    return true;
}

/* 80B24940-80B24950 0063E0 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__12daNpc_Toby_cFi
 */
void daNpc_Toby_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80B24950-80B24960 0063F0 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__12daNpc_Toby_cFi
 */
void daNpc_Toby_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80B24960-80B24968 006400 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__12daNpc_Toby_cFv
 */
s32 daNpc_Toby_c::getFootLJointNo() {
    return 24;
}

/* 80B24968-80B24970 006408 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__12daNpc_Toby_cFv
 */
s32 daNpc_Toby_c::getFootRJointNo() {
    return 27;
}

/* 80B24970-80B24978 006410 0008+00 1/0 0/0 0/0 .text            chkXYItems__12daNpc_Toby_cFv */
bool daNpc_Toby_c::chkXYItems() {
    return true;
}

/* 80B24978-80B249C0 006418 0048+00 2/1 0/0 0/0 .text            __dt__18daNpc_Toby_Param_cFv */
daNpc_Toby_Param_c::~daNpc_Toby_Param_c() {
    // NONMATCHING
}

/* 80B249C0-80B249C8 006460 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80B249C0() {
    // NONMATCHING
}

/* 80B249C8-80B249D0 006468 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80B249C8() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B258AC-80B258B0 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80B258AC[4];
#pragma pop

/* 80B258B0-80B258B4 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80B258B0[4];
#pragma pop

/* 80B258B4-80B258B8 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80B258B4[4];
#pragma pop

/* 80B258B8-80B258BC 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80B258B8[4];
#pragma pop

/* 80B258BC-80B258C0 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B258BC[4];
#pragma pop

/* 80B258C0-80B258C4 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B258C0[4];
#pragma pop

/* 80B258C4-80B258C8 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80B258C4[4];
#pragma pop

/* 80B258C8-80B258CC 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80B258C8[4];
#pragma pop

/* 80B258CC-80B258D0 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80B258CC[4];
#pragma pop

/* 80B258D0-80B258D4 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80B258D0[4];
#pragma pop

/* 80B258D4-80B258D8 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80B258D4[4];
#pragma pop

/* 80B258D8-80B258DC 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80B258D8[4];
#pragma pop

/* 80B258DC-80B258E0 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80B258DC[4];
#pragma pop

/* 80B258E0-80B258E4 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B258E0[4];
#pragma pop

/* 80B258E4-80B258E8 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80B258E4[4];
#pragma pop

/* 80B258E8-80B258EC 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80B258E8[4];
#pragma pop

/* 80B258EC-80B258F0 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80B258EC[4];
#pragma pop

/* 80B258F0-80B258F4 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80B258F0[4];
#pragma pop

/* 80B258F4-80B258F8 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80B258F4[4];
#pragma pop

/* 80B258F8-80B258FC 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80B258F8[4];
#pragma pop

/* 80B258FC-80B25900 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80B258FC[4];
#pragma pop

/* 80B25900-80B25904 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B25900[4];
#pragma pop

/* 80B25904-80B25908 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B25904[4];
#pragma pop

/* 80B25908-80B2590C 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80B25908[4];
#pragma pop

/* 80B2590C-80B25910 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80B2590C[4];
#pragma pop

/* 80B24B8C-80B24B8C 0001A8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
