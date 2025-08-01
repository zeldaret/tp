/**
 * @file d_a_npc_kolin.cpp
 * 
*/

#include "d/actor/d_a_npc_kolin.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__13daNpc_Kolin_cFv();
extern "C" void create__13daNpc_Kolin_cFv();
extern "C" void CreateHeap__13daNpc_Kolin_cFv();
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
extern "C" void Delete__13daNpc_Kolin_cFv();
extern "C" void Execute__13daNpc_Kolin_cFv();
extern "C" void Draw__13daNpc_Kolin_cFv();
extern "C" void createHeapCallBack__13daNpc_Kolin_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__13daNpc_Kolin_cFP8J3DJointi();
extern "C" void getType__13daNpc_Kolin_cFv();
extern "C" void isDelete__13daNpc_Kolin_cFv();
extern "C" void reset__13daNpc_Kolin_cFv();
extern "C" void afterJntAnm__13daNpc_Kolin_cFi();
extern "C" void setParam__13daNpc_Kolin_cFv();
extern "C" void checkChangeEvt__13daNpc_Kolin_cFv();
extern "C" void setAfterTalkMotion__13daNpc_Kolin_cFv();
extern "C" void srchActors__13daNpc_Kolin_cFv();
extern "C" void evtTalk__13daNpc_Kolin_cFv();
extern "C" void evtCutProc__13daNpc_Kolin_cFv();
extern "C" void action__13daNpc_Kolin_cFv();
extern "C" void beforeMove__13daNpc_Kolin_cFv();
extern "C" void setAttnPos__13daNpc_Kolin_cFv();
extern "C" void setCollision__13daNpc_Kolin_cFv();
extern "C" bool drawDbgInfo__13daNpc_Kolin_cFv();
extern "C" void drawOtherMdl__13daNpc_Kolin_cFv();
extern "C" void changeAnm__13daNpc_Kolin_cFPiPi();
extern "C" void changeBck__13daNpc_Kolin_cFPiPi();
extern "C" void selectAction__13daNpc_Kolin_cFv();
extern "C" void chkAction__13daNpc_Kolin_cFM13daNpc_Kolin_cFPCvPvPv_i();
extern "C" void setAction__13daNpc_Kolin_cFM13daNpc_Kolin_cFPCvPvPv_i();
extern "C" void calcFollowSpeedAndAngle__13daNpc_Kolin_cFP10fopAc_ac_cii();
extern "C" void followPlayer__13daNpc_Kolin_cFi();
extern "C" void getDistTable__12dAttention_cFi();
extern "C" void lookup__13daNpc_Kolin_cFUc();
extern "C" void cutNoRide__13daNpc_Kolin_cFi();
extern "C" void cutHail__13daNpc_Kolin_cFi();
extern "C" void cutGiveMeWoodSwd__13daNpc_Kolin_cFi();
extern "C" void cutGetWoodSwd__13daNpc_Kolin_cFi();
extern "C" void cutConversationAboutLoopHole__13daNpc_Kolin_cFi();
extern "C" void cutCacaricoConversation__13daNpc_Kolin_cFi();
extern "C" void cutConversationAboutDeathMt__13daNpc_Kolin_cFi();
extern "C" void cutConversationAboutGoron__13daNpc_Kolin_cFi();
extern "C" void cutClothTry__13daNpc_Kolin_cFi();
extern "C" void cutThankYou__13daNpc_Kolin_cFi();
extern "C" void wait__13daNpc_Kolin_cFPv();
extern "C" void timidWalk__13daNpc_Kolin_cFPv();
extern "C" void follow__13daNpc_Kolin_cFPv();
extern "C" void clothWait__13daNpc_Kolin_cFPv();
extern "C" void talk__13daNpc_Kolin_cFPv();
extern "C" static void daNpc_Kolin_Create__FPv();
extern "C" static void daNpc_Kolin_Delete__FPv();
extern "C" static void daNpc_Kolin_Execute__FPv();
extern "C" static void daNpc_Kolin_Draw__FPv();
extern "C" static bool daNpc_Kolin_IsDelete__FPv();
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
extern "C" u16 getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" u16 getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" void afterMoved__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_8055A1C4(void* _this, int*);
extern "C" void func_8055A1E0(void* _this, int, int);
extern "C" void __sinit_d_a_npc_kolin_cpp();
extern "C" void
__ct__13daNpc_Kolin_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__13daNpc_Kolin_cFv();
extern "C" s32 getHeadJointNo__13daNpc_Kolin_cFv();
extern "C" s32 getNeckJointNo__13daNpc_Kolin_cFv();
extern "C" bool getBackboneJointNo__13daNpc_Kolin_cFv();
extern "C" void checkChangeJoint__13daNpc_Kolin_cFi();
extern "C" void checkRemoveJoint__13daNpc_Kolin_cFi();
extern "C" s32 getFootLJointNo__13daNpc_Kolin_cFv();
extern "C" s32 getFootRJointNo__13daNpc_Kolin_cFv();
extern "C" void __dt__19daNpc_Kolin_Param_cFv();
extern "C" static void func_8055A530();
extern "C" static void func_8055A538();
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz();
extern "C" u8 const m__19daNpc_Kolin_Param_c[160];
extern "C" extern char const* const d_a_npc_kolin__stringBase0;
extern "C" void* mCutNameList__13daNpc_Kolin_c[11];
extern "C" u8 mCutList__13daNpc_Kolin_c[132];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
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
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
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
extern "C" void getEvtAreaTagP__8daNpcT_cFii();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_onEvtBit__FUl();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
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
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
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
extern "C" void _savegpr_22();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
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
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz();
extern "C" void __register_global_object();
extern "C" void checkStartDemo13StbEvt__11daNpc_Len_cFP10fopAc_ac_cfffffff();

//
// Declarations:
//

/* ############################################################################################## */
/* 8055A77C-8055A77C 0001C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8055A77C = "";
SECTION_DEAD static char const* const stringBase_8055A77D = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_8055A789 = "NO_RIDE_L";
SECTION_DEAD static char const* const stringBase_8055A793 = "NO_RIDE_R";
SECTION_DEAD static char const* const stringBase_8055A79D = "HAIL";
SECTION_DEAD static char const* const stringBase_8055A7A2 = "CONVERSATION_ABOUT_LOOPHOLE1";
SECTION_DEAD static char const* const stringBase_8055A7BF = "CONVERSATION_ABOUT_LOOPHOLE2";
SECTION_DEAD static char const* const stringBase_8055A7DC = "DEMO13_STB";
SECTION_DEAD static char const* const stringBase_8055A7E7 = "CLOTH_TRY";
SECTION_DEAD static char const* const stringBase_8055A7F1 = "Kolin";
SECTION_DEAD static char const* const stringBase_8055A7F7 = "Kolin_TW";
SECTION_DEAD static char const* const stringBase_8055A800 = "Kolin1";
SECTION_DEAD static char const* const stringBase_8055A807 = "Kolin2";
SECTION_DEAD static char const* const stringBase_8055A80E = "Kolin_p1";
SECTION_DEAD static char const* const stringBase_8055A817 = "Len1";
SECTION_DEAD static char const* const stringBase_8055A81C = "Taro1";
SECTION_DEAD static char const* const stringBase_8055A822 = "NO_RIDE";
SECTION_DEAD static char const* const stringBase_8055A82A = "GIVEME_WOODSWD";
SECTION_DEAD static char const* const stringBase_8055A839 = "GET_WOODSWD";
SECTION_DEAD static char const* const stringBase_8055A845 = "CONVERSATION_ABOUT_LOOPHOLE";
SECTION_DEAD static char const* const stringBase_8055A861 = "CACARICO_CONVERSATION";
SECTION_DEAD static char const* const stringBase_8055A877 = "CONVERSATION_ABOUT_DEATHMT";
SECTION_DEAD static char const* const stringBase_8055A892 = "CONVERSATION_ABOUT_GORON";
SECTION_DEAD static char const* const stringBase_8055A8AB = "THANK_YOU";
#pragma pop

/* 8055A8C8-8055A8D4 000000 000C+00 3/3 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8055A8D4-8055A8E8 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 8055A8E8-8055A900 000020 0018+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[24] = {
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x04,
};

/* 8055A900-8055A948 -00001 0048+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[18] = {
    (void*)&d_a_npc_kolin__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0xD),
    (void*)0x00000003,
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0x17),
    (void*)0x00000003,
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0x21),
    (void*)0x00000003,
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0x26),
    (void*)0x00000003,
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0x43),
    (void*)0x00000003,
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0x60),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0x6B),
    (void*)0x00000003,
};
#pragma pop

/* 8055A948-8055A968 -00001 0020+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[8] = {
    (void*)&d_a_npc_kolin__stringBase0,
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0x75),
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0x7B),
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0x84),
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0x8B),
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0x92),
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0x9B),
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0xA0),
};

/* 8055A968-8055A96C 0000A0 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u8 l_loadResPtrn0[3 + 1 /* padding */] = {
    0x01,
    0x03,
    0xFF,
    /* padding */
    0x00,
};

/* 8055A96C-8055A970 0000A4 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u8 l_loadResPtrn1[3 + 1 /* padding */] = {
    0x01,
    0x02,
    0xFF,
    /* padding */
    0x00,
};

/* 8055A970-8055A974 0000A8 0003+01 0/0 0/0 0/0 .data            l_loadResPtrn2 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_loadResPtrn2[3 + 1 /* padding */] = {
    0x01,
    0x04,
    0xFF,
    /* padding */
    0x00,
};
#pragma pop

/* 8055A974-8055A97C 0000AC 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn3 */
SECTION_DATA static u8 l_loadResPtrn3[5 + 3 /* padding */] = {
    0x01,
    0x03,
    0x04,
    0x02,
    0xFF,
    /* padding */
    0x00,
    0x00,
    0x00,
};

/* 8055A97C-8055A980 0000B4 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn4 */
SECTION_DATA static u8 l_loadResPtrn4[3 + 1 /* padding */] = {
    0x01,
    0x05,
    0xFF,
    /* padding */
    0x00,
};

/* 8055A980-8055A988 0000B8 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn9 */
SECTION_DATA static u8 l_loadResPtrn9[5 + 3 /* padding */] = {
    0x01,
    0x03,
    0x04,
    0x02,
    0xFF,
    /* padding */
    0x00,
    0x00,
    0x00,
};

/* 8055A988-8055A9C4 -00001 003C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[15] = {
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn1, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn3, (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn4, (void*)&l_loadResPtrn9,
};

/* 8055A9C4-8055AB4C 0000FC 0188+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[392] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x27,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 8055AB4C-8055AD98 000284 024C+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[588] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x23,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 8055AD98-8055AE78 0004D0 00E0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[224] = {
    0x00, 0x0A, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x01, 0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 8055AE78-8055AFB8 0005B0 0140+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[320] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x01, 0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0x03, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 8055AFB8-8055AFE4 -00001 002C+00 1/1 0/0 0/0 .data            mCutNameList__13daNpc_Kolin_c */
SECTION_DATA void* daNpc_Kolin_c::mCutNameList[11] = {
    (void*)&d_a_npc_kolin__stringBase0,
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0xA6),
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0x21),
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0xAE),
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0xBD),
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0xC9),
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0xE5),
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0xFB),
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0x116),
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0x6B),
    (void*)(((char*)&d_a_npc_kolin__stringBase0) + 0x12F),
};

/* 8055AFE4-8055AFF0 -00001 000C+00 0/1 0/0 0/0 .data            @3870 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3870[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutNoRide__13daNpc_Kolin_cFi,
};
#pragma pop

/* 8055AFF0-8055AFFC -00001 000C+00 0/1 0/0 0/0 .data            @3871 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3871[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutHail__13daNpc_Kolin_cFi,
};
#pragma pop

/* 8055AFFC-8055B008 -00001 000C+00 0/1 0/0 0/0 .data            @3872 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3872[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutGiveMeWoodSwd__13daNpc_Kolin_cFi,
};
#pragma pop

/* 8055B008-8055B014 -00001 000C+00 0/1 0/0 0/0 .data            @3873 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3873[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutGetWoodSwd__13daNpc_Kolin_cFi,
};
#pragma pop

/* 8055B014-8055B020 -00001 000C+00 0/1 0/0 0/0 .data            @3874 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3874[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutLoopHole__13daNpc_Kolin_cFi,
};
#pragma pop

/* 8055B020-8055B02C -00001 000C+00 0/1 0/0 0/0 .data            @3875 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3875[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutCacaricoConversation__13daNpc_Kolin_cFi,
};
#pragma pop

/* 8055B02C-8055B038 -00001 000C+00 0/1 0/0 0/0 .data            @3876 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3876[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutDeathMt__13daNpc_Kolin_cFi,
};
#pragma pop

/* 8055B038-8055B044 -00001 000C+00 0/1 0/0 0/0 .data            @3877 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3877[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutGoron__13daNpc_Kolin_cFi,
};
#pragma pop

/* 8055B044-8055B050 -00001 000C+00 0/1 0/0 0/0 .data            @3878 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3878[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutClothTry__13daNpc_Kolin_cFi,
};
#pragma pop

/* 8055B050-8055B05C -00001 000C+00 0/1 0/0 0/0 .data            @3879 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3879[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutThankYou__13daNpc_Kolin_cFi,
};
#pragma pop

/* 8055B05C-8055B0E0 000794 0084+00 1/2 0/0 0/0 .data            mCutList__13daNpc_Kolin_c */
SECTION_DATA u8 daNpc_Kolin_c::mCutList[132] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8055B0E0-8055B118 -00001 0038+00 1/1 0/0 0/0 .data            @4528 */
SECTION_DATA static void* lit_4528[14] = {
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x28),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x30),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x38),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x40),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x48),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x50),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x58),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x60),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x68),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x70),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x78),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x80),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x88),
    (void*)(((char*)getType__13daNpc_Kolin_cFv) + 0x90),
};

/* 8055B118-8055B150 -00001 0038+00 1/1 0/0 0/0 .data            @4557 */
SECTION_DATA static void* lit_4557[14] = {
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x34),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x40),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x70),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x78),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x84),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x8C),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0xBC),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0xEC),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x100),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x108),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x110),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x140),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x14C),
    (void*)(((char*)isDelete__13daNpc_Kolin_cFv) + 0x160),
};

/* 8055B150-8055B15C -00001 000C+00 1/1 0/0 0/0 .data            @4641 */
SECTION_DATA static void* lit_4641[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)follow__13daNpc_Kolin_cFPv,
};

/* 8055B15C-8055B168 -00001 000C+00 1/1 0/0 0/0 .data            @4652 */
SECTION_DATA static void* lit_4652[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)follow__13daNpc_Kolin_cFPv,
};

/* 8055B168-8055B174 -00001 000C+00 1/1 0/0 0/0 .data            @4691 */
SECTION_DATA static void* lit_4691[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Kolin_cFPv,
};

/* 8055B174-8055B180 -00001 000C+00 1/1 0/0 0/0 .data            @4777 */
SECTION_DATA static void* lit_4777[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Kolin_cFPv,
};

/* 8055B180-8055B18C -00001 000C+00 1/1 0/0 0/0 .data            @4782 */
SECTION_DATA static void* lit_4782[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Kolin_cFPv,
};

/* 8055B18C-8055B198 -00001 000C+00 0/1 0/0 0/0 .data            @5117 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5117[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)timidWalk__13daNpc_Kolin_cFPv,
};
#pragma pop

/* 8055B198-8055B1A4 -00001 000C+00 0/1 0/0 0/0 .data            @5120 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5120[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)follow__13daNpc_Kolin_cFPv,
};
#pragma pop

/* 8055B1A4-8055B1B0 -00001 000C+00 0/1 0/0 0/0 .data            @5122 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5122[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)clothWait__13daNpc_Kolin_cFPv,
};
#pragma pop

/* 8055B1B0-8055B1BC -00001 000C+00 0/1 0/0 0/0 .data            @5124 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5124[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_Kolin_cFPv,
};
#pragma pop

/* 8055B1BC-8055B1DC -00001 0020+00 1/1 0/0 0/0 .data            @5842 */
SECTION_DATA static void* lit_5842[8] = {
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x384),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x3A0),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x3A8),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x3C0),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x3C8),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x448),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x648),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x3C8),
};

/* 8055B1DC-8055B1FC -00001 0020+00 1/1 0/0 0/0 .data            @5841 */
SECTION_DATA static void* lit_5841[8] = {
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x34C),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0xE8),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x1DC),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x1E4),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x29C),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x2B0),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x330),
    (void*)(((char*)cutGetWoodSwd__13daNpc_Kolin_cFi) + 0x34C),
};

/* 8055B1FC-8055B21C -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Kolin_MethodTable */
static actor_method_class daNpc_Kolin_MethodTable = {
    (process_method_func)daNpc_Kolin_Create__FPv,
    (process_method_func)daNpc_Kolin_Delete__FPv,
    (process_method_func)daNpc_Kolin_Execute__FPv,
    (process_method_func)daNpc_Kolin_IsDelete__FPv,
    (process_method_func)daNpc_Kolin_Draw__FPv,
};

/* 8055B21C-8055B24C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_KOLIN */
extern actor_process_profile_definition g_profile_NPC_KOLIN = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_KOLIN,           // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_Kolin_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  350,                      // mPriority
  &daNpc_Kolin_MethodTable, // sub_method
  0x00040107,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 8055B24C-8055B258 000984 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 8055B258-8055B264 000990 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 8055B264-8055B288 00099C 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8055A538,
    (void*)NULL,
    (void*)NULL,
    (void*)func_8055A530,
};

/* 8055B288-8055B294 0009C0 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 8055B294-8055B2A0 0009CC 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 8055B2A0-8055B2AC 0009D8 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 8055B2AC-8055B2B8 0009E4 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 8055B2B8-8055B2C4 0009F0 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 8055B2C4-8055B2D0 0009FC 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 8055B2D0-8055B2DC 000A08 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8055B2DC-8055B2E8 000A14 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 8055B2E8-8055B2F4 000A20 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 8055B2F4-8055B3B8 000A2C 00C4+00 2/2 0/0 0/0 .data            __vt__13daNpc_Kolin_c */
SECTION_DATA extern void* __vt__13daNpc_Kolin_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpc_Kolin_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__13daNpc_Kolin_cFi,
    (void*)checkRemoveJoint__13daNpc_Kolin_cFi,
    (void*)getBackboneJointNo__13daNpc_Kolin_cFv,
    (void*)getNeckJointNo__13daNpc_Kolin_cFv,
    (void*)getHeadJointNo__13daNpc_Kolin_cFv,
    (void*)getFootLJointNo__13daNpc_Kolin_cFv,
    (void*)getFootRJointNo__13daNpc_Kolin_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__13daNpc_Kolin_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__13daNpc_Kolin_cFi,
    (void*)setParam__13daNpc_Kolin_cFv,
    (void*)checkChangeEvt__13daNpc_Kolin_cFv,
    (void*)evtTalk__13daNpc_Kolin_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__13daNpc_Kolin_cFv,
    (void*)setAfterTalkMotion__13daNpc_Kolin_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__13daNpc_Kolin_cFv,
    (void*)beforeMove__13daNpc_Kolin_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__13daNpc_Kolin_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__13daNpc_Kolin_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__13daNpc_Kolin_cFv,
    (void*)drawOtherMdl__13daNpc_Kolin_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__8daNpcT_cFiifi,
    (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__13daNpc_Kolin_cFPiPi,
    (void*)changeBck__13daNpc_Kolin_cFPiPi,
    (void*)changeBtp__8daNpcT_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
};

/* 80553FEC-80554138 0000EC 014C+00 1/0 0/0 0/0 .text            __dt__13daNpc_Kolin_cFv */
daNpc_Kolin_c::~daNpc_Kolin_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055A5B4-8055A654 000000 00A0+00 17/17 0/0 0/0 .rodata          m__19daNpc_Kolin_Param_c */
SECTION_RODATA u8 const daNpc_Kolin_Param_c::m[160] = {
    0x43, 0x0C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0xC1, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x70, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00,
    0x42, 0x20, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00, 0x43, 0x7A, 0x00, 0x00,
    0x43, 0x48, 0x00, 0x00, 0x41, 0x00, 0x00, 0x00, 0x01, 0x68, 0x00, 0xB4, 0x40, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8055A5B4, &daNpc_Kolin_Param_c::m);

/* 8055A654-8055A690 0000A0 003C+00 0/1 0/0 0/0 .rodata          heapSize$4036 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[60] = {
    0x00, 0x00, 0x39, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x39,
    0xC0, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x39, 0xD0, 0x00, 0x00, 0x39, 0xD0, 0x00, 0x00,
    0x39, 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x39, 0xC0, 0x00, 0x00, 0x41, 0xD0, 0x00,
    0x00, 0x39, 0xC0, 0x00, 0x00, 0x39, 0xC0, 0x00, 0x00, 0x39, 0xC0, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8055A654, &heapSize);
#pragma pop

/* 8055A690-8055A694 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4106 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4106 = -200.0f;
COMPILER_STRIP_GATE(0x8055A690, &lit_4106);
#pragma pop

/* 8055A694-8055A698 0000E0 0004+00 0/2 0/0 0/0 .rodata          @4107 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4107 = -100.0f;
COMPILER_STRIP_GATE(0x8055A694, &lit_4107);
#pragma pop

/* 8055A698-8055A69C 0000E4 0004+00 0/2 0/0 0/0 .rodata          @4108 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4108 = 200.0f;
COMPILER_STRIP_GATE(0x8055A698, &lit_4108);
#pragma pop

/* 8055A69C-8055A6A0 0000E8 0004+00 0/2 0/0 0/0 .rodata          @4109 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4109 = 300.0f;
COMPILER_STRIP_GATE(0x8055A69C, &lit_4109);
#pragma pop

/* 8055A6A0-8055A6A4 0000EC 0004+00 8/24 0/0 0/0 .rodata          @4110 */
SECTION_RODATA static u8 const lit_4110[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8055A6A0, &lit_4110);

/* 8055A6A4-8055A6A8 0000F0 0004+00 0/1 0/0 0/0 .rodata          @4111 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4111 = -1000000000.0f;
COMPILER_STRIP_GATE(0x8055A6A4, &lit_4111);
#pragma pop

/* 80554138-80554414 000238 02DC+00 1/1 0/0 0/0 .text            create__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055A6A8-8055A6AC 0000F4 0004+00 0/2 0/0 0/0 .rodata          @4274 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4274 = 65536.0f;
COMPILER_STRIP_GATE(0x8055A6A8, &lit_4274);
#pragma pop

/* 8055A6AC-8055A6B0 0000F8 0004+00 0/3 0/0 0/0 .rodata          @4275 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4275 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x8055A6AC, &lit_4275);
#pragma pop

/* 8055A6B0-8055A6B4 0000FC 0004+00 2/6 0/0 0/0 .rodata          @4442 */
SECTION_RODATA static f32 const lit_4442 = 1.0f;
COMPILER_STRIP_GATE(0x8055A6B0, &lit_4442);

/* 80554414-80554774 000514 0360+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::CreateHeap() {
    // NONMATCHING
}

/* 80554774-805547B0 000874 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 805547B0-805547C8 0008B0 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 805547C8-80554804 0008C8 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80554804-8055481C 000904 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 8055481C-80554864 00091C 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80554864-80554888 000964 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80554888-805548C4 000988 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 805548C4-805548DC 0009C4 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 805548DC-80554918 0009DC 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80554918-80554930 000A18 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80554930-80554964 000A30 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::Delete() {
    // NONMATCHING
}

/* 80554964-80554984 000A64 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055A6B4-8055A6B8 000100 0004+00 1/1 0/0 0/0 .rodata          @4491 */
SECTION_RODATA static f32 const lit_4491 = 100.0f;
COMPILER_STRIP_GATE(0x8055A6B4, &lit_4491);

/* 80554984-80554A18 000A84 0094+00 1/1 0/0 0/0 .text            Draw__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::Draw() {
    // NONMATCHING
}

/* 80554A18-80554A38 000B18 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_Kolin_cFP10fopAc_ac_c            */
void daNpc_Kolin_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80554A38-80554A90 000B38 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpc_Kolin_cFP8J3DJointi               */
void daNpc_Kolin_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80554A90-80554B30 000B90 00A0+00 2/1 0/0 0/0 .text            getType__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::getType() {
    // NONMATCHING
}

/* 80554B30-80554CB0 000C30 0180+00 2/1 0/0 0/0 .text            isDelete__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::isDelete() {
    // NONMATCHING
}

/* 80554CB0-80554EBC 000DB0 020C+00 1/1 0/0 0/0 .text            reset__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::reset() {
    // NONMATCHING
}

/* 80554EBC-80554F48 000FBC 008C+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpc_Kolin_cFi */
void daNpc_Kolin_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 80554F48-80555118 001048 01D0+00 1/0 0/0 0/0 .text            setParam__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::setParam() {
    // NONMATCHING
}

/* 80555118-8055523C 001218 0124+00 1/0 0/0 0/0 .text            checkChangeEvt__13daNpc_Kolin_cFv
 */
BOOL daNpc_Kolin_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055A6B8-8055A6BC 000104 0004+00 4/9 0/0 0/0 .rodata          @4742 */
SECTION_RODATA static f32 const lit_4742 = -1.0f;
COMPILER_STRIP_GATE(0x8055A6B8, &lit_4742);

/* 8055523C-805552DC 00133C 00A0+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 805552DC-80555448 0013DC 016C+00 1/1 0/0 0/0 .text            srchActors__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::srchActors() {
    // NONMATCHING
}

/* 80555448-805554E8 001548 00A0+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_Kolin_cFv */
BOOL daNpc_Kolin_c::evtTalk() {
    // NONMATCHING
}

/* 805554E8-805555B0 0015E8 00C8+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_Kolin_cFv */
BOOL daNpc_Kolin_c::evtCutProc() {
    // NONMATCHING
}

/* 805555B0-8055574C 0016B0 019C+00 1/0 0/0 0/0 .text            action__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::action() {
    // NONMATCHING
}

/* 8055574C-80555810 00184C 00C4+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055A6BC-8055A6C0 000108 0004+00 0/1 0/0 0/0 .rodata          @4929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4929 = 5.0f;
COMPILER_STRIP_GATE(0x8055A6BC, &lit_4929);
#pragma pop

/* 8055A6C0-8055A6C4 00010C 0004+00 0/2 0/0 0/0 .rodata          @4930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4930 = 30.0f;
COMPILER_STRIP_GATE(0x8055A6C0, &lit_4930);
#pragma pop

/* 8055A6C4-8055A6C8 000110 0004+00 0/1 0/0 0/0 .rodata          @4931 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4931 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x8055A6C4, &lit_4931);
#pragma pop

/* 8055A6C8-8055A6CC 000114 0004+00 0/2 0/0 0/0 .rodata          @4932 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4932 = 0x41D451EC;
COMPILER_STRIP_GATE(0x8055A6C8, &lit_4932);
#pragma pop

/* 8055A6CC-8055A6D0 000118 0004+00 0/2 0/0 0/0 .rodata          @4933 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4933 = 0xC2C38A3D;
COMPILER_STRIP_GATE(0x8055A6CC, &lit_4933);
#pragma pop

/* 8055A6D0-8055A6D4 00011C 0004+00 0/1 0/0 0/0 .rodata          @4934 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4934 = 3.0f;
COMPILER_STRIP_GATE(0x8055A6D0, &lit_4934);
#pragma pop

/* 8055A6D4-8055A6DC 000120 0004+04 0/1 0/0 0/0 .rodata          @4935 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4935[1 + 1 /* padding */] = {
    9.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x8055A6D4, &lit_4935);
#pragma pop

/* 8055A6DC-8055A6E4 000128 0008+00 2/5 0/0 0/0 .rodata          @4937 */
SECTION_RODATA static u8 const lit_4937[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8055A6DC, &lit_4937);

/* 8055B3D0-8055B3D4 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 8055B3D4-8055B3D8 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 8055B3D8-8055B3DC 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 8055B3DC-8055B3E0 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 8055B3E0-8055B3E4 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 8055B3E4-8055B3E8 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 8055B3E8-8055B3EC 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 8055B3EC-8055B3F0 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 8055B3F0-8055B3F4 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 8055B3F4-8055B3F8 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 8055B3F8-8055B3FC 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 8055B3FC-8055B400 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 8055B400-8055B404 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 8055B404-8055B408 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 8055B408-8055B40C 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 8055B40C-8055B410 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 8055B410-8055B41C 000048 000C+00 1/1 0/0 0/0 .bss             @3880 */
static u8 lit_3880[12];

/* 8055B41C-8055B420 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 8055B420-8055B430 000058 000C+04 0/1 0/0 0/0 .bss             @4863 */
#pragma push
#pragma force_active on
static u8 lit_4863[12 + 4 /* padding */];
#pragma pop

/* 8055B430-8055B43C 000068 000C+00 0/1 0/0 0/0 .bss             prtclScl$4862 */
#pragma push
#pragma force_active on
static u8 prtclScl[12];
#pragma pop

/* 80555810-80555B48 001910 0338+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055A6E4-8055A6EC 000130 0008+00 0/2 0/0 0/0 .rodata          @4995 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4995[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8055A6E4, &lit_4995);
#pragma pop

/* 8055A6EC-8055A6F4 000138 0008+00 0/2 0/0 0/0 .rodata          @4996 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4996[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8055A6EC, &lit_4996);
#pragma pop

/* 8055A6F4-8055A6FC 000140 0008+00 0/2 0/0 0/0 .rodata          @4997 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4997[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8055A6F4, &lit_4997);
#pragma pop

/* 8055A6FC-8055A700 000148 0004+00 0/1 0/0 0/0 .rodata          @5045 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5045 = 0xC27DCCCD;
COMPILER_STRIP_GATE(0x8055A6FC, &lit_5045);
#pragma pop

/* 8055A700-8055A704 00014C 0004+00 0/1 0/0 0/0 .rodata          @5046 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5046 = 0x431D547B;
COMPILER_STRIP_GATE(0x8055A700, &lit_5046);
#pragma pop

/* 80555B48-80555CE4 001C48 019C+00 1/0 0/0 0/0 .text            setCollision__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::setCollision() {
    // NONMATCHING
}

/* 80555CE4-80555CEC 001DE4 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_Kolin_cFv */
int daNpc_Kolin_c::drawDbgInfo() {
    return false;
}

/* ############################################################################################## */
/* 8055A704-8055A708 000150 0004+00 1/1 0/0 0/0 .rodata          jointNo$5054 */
SECTION_RODATA static u8 const jointNo[4] = {
    0x00,
    0x00,
    0x00,
    0x12,
};
COMPILER_STRIP_GATE(0x8055A704, &jointNo);

/* 80555CEC-80555DC4 001DEC 00D8+00 1/0 0/0 0/0 .text            drawOtherMdl__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::drawOtherMdl() {
    // NONMATCHING
}

/* 80555DC4-80555DEC 001EC4 0028+00 1/0 0/0 0/0 .text            changeAnm__13daNpc_Kolin_cFPiPi */
void daNpc_Kolin_c::changeAnm(int* param_0, int* param_1) {
    // NONMATCHING
}

/* 80555DEC-80555E38 001EEC 004C+00 1/0 0/0 0/0 .text            changeBck__13daNpc_Kolin_cFPiPi */
void daNpc_Kolin_c::changeBck(int* param_0, int* param_1) {
    // NONMATCHING
}

/* 80555E38-80555F28 001F38 00F0+00 1/1 0/0 0/0 .text            selectAction__13daNpc_Kolin_cFv */
void daNpc_Kolin_c::selectAction() {
    // NONMATCHING
}

/* 80555F28-80555F54 002028 002C+00 2/2 0/0 0/0 .text
 * chkAction__13daNpc_Kolin_cFM13daNpc_Kolin_cFPCvPvPv_i        */
void daNpc_Kolin_c::chkAction(int (daNpc_Kolin_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80555F54-80555FFC 002054 00A8+00 2/2 0/0 0/0 .text
 * setAction__13daNpc_Kolin_cFM13daNpc_Kolin_cFPCvPvPv_i        */
void daNpc_Kolin_c::setAction(int (daNpc_Kolin_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055A708-8055A70C 000154 0004+00 0/2 0/0 0/0 .rodata          @5243 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5243 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x8055A708, &lit_5243);
#pragma pop

/* 8055A70C-8055A710 000158 0004+00 0/2 0/0 0/0 .rodata          @5244 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5244 = 0.5f;
COMPILER_STRIP_GATE(0x8055A70C, &lit_5244);
#pragma pop

/* 80555FFC-805563BC 0020FC 03C0+00 1/1 0/0 0/0 .text
 * calcFollowSpeedAndAngle__13daNpc_Kolin_cFP10fopAc_ac_cii     */
void daNpc_Kolin_c::calcFollowSpeedAndAngle(fopAc_ac_c* param_0, int param_1, int param_2) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055A710-8055A714 00015C 0004+00 0/1 0/0 0/0 .rodata          @5385 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5385 = 50.0f;
COMPILER_STRIP_GATE(0x8055A710, &lit_5385);
#pragma pop

/* 8055A714-8055A718 000160 0004+00 0/1 0/0 0/0 .rodata          @5386 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5386 = 4.0f;
COMPILER_STRIP_GATE(0x8055A714, &lit_5386);
#pragma pop

/* 805563BC-80556798 0024BC 03DC+00 1/1 0/0 0/0 .text            followPlayer__13daNpc_Kolin_cFi */
void daNpc_Kolin_c::followPlayer(int param_0) {
    // NONMATCHING
}

/* 80556798-805567AC 002898 0014+00 1/1 0/0 0/0 .text            getDistTable__12dAttention_cFi */
// void dAttention_c::getDistTable(int param_0) {
extern "C" void getDistTable__12dAttention_cFi() {
    // NONMATCHING
}

/* 805567AC-805568AC 0028AC 0100+00 1/1 0/0 0/0 .text            lookup__13daNpc_Kolin_cFUc */
void daNpc_Kolin_c::lookup(u8 param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055A77C-8055A77C 0001C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8055A8B5 = "prm";
#pragma pop

/* 805568AC-80556A04 0029AC 0158+00 1/0 0/0 0/0 .text            cutNoRide__13daNpc_Kolin_cFi */
void daNpc_Kolin_c::cutNoRide(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055A718-8055A720 000164 0008+00 0/1 0/0 0/0 .rodata          @5479 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5479[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x8055A718, &lit_5479);
#pragma pop

/* 8055A720-8055A724 00016C 0004+00 0/1 0/0 0/0 .rodata          @5566 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5566 = 500.0f;
COMPILER_STRIP_GATE(0x8055A720, &lit_5566);
#pragma pop

/* 8055A724-8055A728 000170 0004+00 0/1 0/0 0/0 .rodata          @5567 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5567 = 150.0f;
COMPILER_STRIP_GATE(0x8055A724, &lit_5567);
#pragma pop

/* 8055A77C-8055A77C 0001C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8055A8B9 = "msgNo";
#pragma pop

/* 80556A04-80556DB4 002B04 03B0+00 1/0 0/0 0/0 .text            cutHail__13daNpc_Kolin_cFi */
void daNpc_Kolin_c::cutHail(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055A728-8055A72C 000174 0004+00 0/2 0/0 0/0 .rodata          @5652 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5652 = -613.0f;
COMPILER_STRIP_GATE(0x8055A728, &lit_5652);
#pragma pop

/* 8055A72C-8055A730 000178 0004+00 0/2 0/0 0/0 .rodata          @5653 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5653 = 1306.0f;
COMPILER_STRIP_GATE(0x8055A72C, &lit_5653);
#pragma pop

/* 8055A730-8055A734 00017C 0004+00 0/2 0/0 0/0 .rodata          @5654 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5654 = -2048.0f;
COMPILER_STRIP_GATE(0x8055A730, &lit_5654);
#pragma pop

/* 8055A734-8055A738 000180 0004+00 0/1 0/0 0/0 .rodata          @5655 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5655 = 153.0f;
COMPILER_STRIP_GATE(0x8055A734, &lit_5655);
#pragma pop

/* 8055A738-8055A73C 000184 0004+00 0/1 0/0 0/0 .rodata          @5656 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5656 = 1300.0f;
COMPILER_STRIP_GATE(0x8055A738, &lit_5656);
#pragma pop

/* 8055A73C-8055A740 000188 0004+00 0/1 0/0 0/0 .rodata          @5657 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5657 = -1278.0f;
COMPILER_STRIP_GATE(0x8055A73C, &lit_5657);
#pragma pop

/* 80556DB4-80557054 002EB4 02A0+00 1/0 0/0 0/0 .text            cutGiveMeWoodSwd__13daNpc_Kolin_cFi
 */
void daNpc_Kolin_c::cutGiveMeWoodSwd(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055A740-8055A74C 00018C 000C+00 0/1 0/0 0/0 .rodata          @5679 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5679[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x8055A740, &lit_5679);
#pragma pop

/* 8055A77C-8055A77C 0001C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8055A8BF = "timer";
#pragma pop

/* 80557054-805576C4 003154 0670+00 3/0 0/0 0/0 .text            cutGetWoodSwd__13daNpc_Kolin_cFi */
void daNpc_Kolin_c::cutGetWoodSwd(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055A74C-8055A750 000198 0004+00 0/0 0/0 0/0 .rodata          @5839 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5839 = 1600.0f;
COMPILER_STRIP_GATE(0x8055A74C, &lit_5839);
#pragma pop

/* 8055A750-8055A754 00019C 0004+00 0/0 0/0 0/0 .rodata          @5840 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5840 = 10.0f;
COMPILER_STRIP_GATE(0x8055A750, &lit_5840);
#pragma pop

/* 8055A754-8055A75C 0001A0 0008+00 0/1 0/0 0/0 .rodata          @5852 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5852[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8055A754, &lit_5852);
#pragma pop

/* 8055A75C-8055A768 0001A8 000C+00 0/1 0/0 0/0 .rodata          @5862 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5862[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x8055A75C, &lit_5862);
#pragma pop

/* 805576C4-805579DC 0037C4 0318+00 1/0 0/0 0/0 .text
 * cutConversationAboutLoopHole__13daNpc_Kolin_cFi              */
void daNpc_Kolin_c::cutConversationAboutLoopHole(int param_0) {
    // NONMATCHING
}

/* 805579DC-80557BD4 003ADC 01F8+00 1/0 0/0 0/0 .text cutCacaricoConversation__13daNpc_Kolin_cFi
 */
void daNpc_Kolin_c::cutCacaricoConversation(int param_0) {
    // NONMATCHING
}

/* 80557BD4-80557C6C 003CD4 0098+00 1/0 0/0 0/0 .text
 * cutConversationAboutDeathMt__13daNpc_Kolin_cFi               */
void daNpc_Kolin_c::cutConversationAboutDeathMt(int param_0) {
    // NONMATCHING
}

/* 80557C6C-80557D04 003D6C 0098+00 1/0 0/0 0/0 .text cutConversationAboutGoron__13daNpc_Kolin_cFi
 */
void daNpc_Kolin_c::cutConversationAboutGoron(int param_0) {
    // NONMATCHING
}

/* 80557D04-80557E38 003E04 0134+00 1/0 0/0 0/0 .text            cutClothTry__13daNpc_Kolin_cFi */
void daNpc_Kolin_c::cutClothTry(int param_0) {
    // NONMATCHING
}

/* 80557E38-80557ED8 003F38 00A0+00 1/0 0/0 0/0 .text            cutThankYou__13daNpc_Kolin_cFi */
void daNpc_Kolin_c::cutThankYou(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055A768-8055A770 0001B4 0008+00 0/0 0/0 0/0 .rodata          @5929 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5929[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x8055A768, &lit_5929);
#pragma pop

/* 8055A770-8055A774 0001BC 0004+00 0/1 0/0 0/0 .rodata          @6301 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6301 = 60.0f;
COMPILER_STRIP_GATE(0x8055A770, &lit_6301);
#pragma pop

/* 80557ED8-80558698 003FD8 07C0+00 1/0 0/0 0/0 .text            wait__13daNpc_Kolin_cFPv */
void daNpc_Kolin_c::wait(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055A774-8055A778 0001C0 0004+00 0/1 0/0 0/0 .rodata          @6437 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6437 = 8.0f;
COMPILER_STRIP_GATE(0x8055A774, &lit_6437);
#pragma pop

/* 8055A778-8055A77C 0001C4 0004+00 0/1 0/0 0/0 .rodata          @6438 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6438 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x8055A778, &lit_6438);
#pragma pop

/* 80558698-80558AF8 004798 0460+00 1/0 0/0 0/0 .text            timidWalk__13daNpc_Kolin_cFPv */
void daNpc_Kolin_c::timidWalk(void* param_0) {
    // NONMATCHING
}

/* 80558AF8-80558C4C 004BF8 0154+00 3/0 0/0 0/0 .text            follow__13daNpc_Kolin_cFPv */
void daNpc_Kolin_c::follow(void* param_0) {
    // NONMATCHING
}

/* 80558C4C-80558E90 004D4C 0244+00 1/0 0/0 0/0 .text            clothWait__13daNpc_Kolin_cFPv */
void daNpc_Kolin_c::clothWait(void* param_0) {
    // NONMATCHING
}

/* 80558E90-805590B4 004F90 0224+00 3/0 0/0 0/0 .text            talk__13daNpc_Kolin_cFPv */
void daNpc_Kolin_c::talk(void* param_0) {
    // NONMATCHING
}

/* 805590B4-805590D4 0051B4 0020+00 1/0 0/0 0/0 .text            daNpc_Kolin_Create__FPv */
static void daNpc_Kolin_Create(void* param_0) {
    // NONMATCHING
}

/* 805590D4-805590F4 0051D4 0020+00 1/0 0/0 0/0 .text            daNpc_Kolin_Delete__FPv */
static void daNpc_Kolin_Delete(void* param_0) {
    // NONMATCHING
}

/* 805590F4-80559114 0051F4 0020+00 1/0 0/0 0/0 .text            daNpc_Kolin_Execute__FPv */
static void daNpc_Kolin_Execute(void* param_0) {
    // NONMATCHING
}

/* 80559114-80559134 005214 0020+00 1/0 0/0 0/0 .text            daNpc_Kolin_Draw__FPv */
static void daNpc_Kolin_Draw(void* param_0) {
    // NONMATCHING
}

/* 80559134-8055913C 005234 0008+00 1/0 0/0 0/0 .text            daNpc_Kolin_IsDelete__FPv */
static bool daNpc_Kolin_IsDelete(void* param_0) {
    return true;
}

/* 8055913C-8055916C 00523C 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 8055916C-805591B4 00526C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 805591B4-8055953C 0052B4 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 8055953C-80559578 00563C 003C+00 4/4 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80559578-805595B4 005678 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 805595B4-805595FC 0056B4 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 805595FC-80559644 0056FC 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80559644-80559680 005744 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80559680-805596C8 005780 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 805596C8-80559710 0057C8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80559710-80559B14 005810 0404+00 1/1 0/0 0/0 .text
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

/* 80559B14-80559B18 005C14 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80559B18-80559C14 005C18 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80559C14-80559C18 005D14 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80559C18-80559C60 005D18 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80559C60-80559CD0 005D60 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80559CD0-80559D2C 005DD0 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80559D2C-80559D9C 005E2C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80559D9C-80559DE4 005E9C 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80559DE4-80559F00 005EE4 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80559F00-8055A108 006000 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 8055A108-8055A10C 006208 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 8055A10C-8055A114 00620C 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" u16 getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 8055A114-8055A11C 006214 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" u16 getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 8055A11C-8055A124 00621C 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 8055A128-8055A130 006228 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 8055A130-8055A148 006230 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 8055A148-8055A14C 006248 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 8055A14C-8055A154 00624C 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 8055A154-8055A15C 006254 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 8055A15C-8055A18C 00625C 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 8055A18C-8055A1BC 00628C 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 8055A1BC-8055A1C0 0062BC 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 8055A1C0-8055A1C4 0062C0 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 8055A1C4-8055A1E0 0062C4 001C+00 3/3 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_8055A1C4(void* _this, int* param_0) {
    // NONMATCHING
}

/* 8055A1E0-8055A25C 0062E0 007C+00 1/1 0/0 0/0 .text            cLib_getRndValue<i>__Fii */
extern "C" void func_8055A1E0(void* _this, int param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055B3B8-8055B3C4 000AF0 000C+00 2/2 0/0 0/0 .data            __vt__19daNpc_Kolin_Param_c */
SECTION_DATA extern void* __vt__19daNpc_Kolin_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daNpc_Kolin_Param_cFv,
};

/* 8055A25C-8055A3B8 00635C 015C+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_kolin_cpp */
void __sinit_d_a_npc_kolin_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x8055A25C, __sinit_d_a_npc_kolin_cpp);
#pragma pop

/* 8055A3B8-8055A498 0064B8 00E0+00 1/1 0/0 0/0 .text
 * __ct__13daNpc_Kolin_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
/* daNpc_Kolin_c::daNpc_Kolin_c(daNpcT_faceMotionAnmData_c const* param_0,
                                 daNpcT_motionAnmData_c const* param_1,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                 int param_3,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                 int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
} */

/* 8055A498-8055A4A0 006598 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__13daNpc_Kolin_cFv */
u16 daNpc_Kolin_c::getEyeballMaterialNo() {
    return 2;
}

/* 8055A4A0-8055A4A8 0065A0 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__13daNpc_Kolin_cFv
 */
s32 daNpc_Kolin_c::getHeadJointNo() {
    return 4;
}

/* 8055A4A8-8055A4B0 0065A8 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__13daNpc_Kolin_cFv
 */
s32 daNpc_Kolin_c::getNeckJointNo() {
    return 3;
}

/* 8055A4B0-8055A4B8 0065B0 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__13daNpc_Kolin_cFv */
s32 daNpc_Kolin_c::getBackboneJointNo() {
    return 1;
}

/* 8055A4B8-8055A4C8 0065B8 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__13daNpc_Kolin_cFi
 */
int daNpc_Kolin_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 8055A4C8-8055A4D8 0065C8 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__13daNpc_Kolin_cFi
 */
int daNpc_Kolin_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 8055A4D8-8055A4E0 0065D8 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__13daNpc_Kolin_cFv
 */
s32 daNpc_Kolin_c::getFootLJointNo() {
    return 22;
}

/* 8055A4E0-8055A4E8 0065E0 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__13daNpc_Kolin_cFv
 */
s32 daNpc_Kolin_c::getFootRJointNo() {
    return 25;
}

/* 8055A4E8-8055A530 0065E8 0048+00 2/1 0/0 0/0 .text            __dt__19daNpc_Kolin_Param_cFv */
daNpc_Kolin_Param_c::~daNpc_Kolin_Param_c() {
    // NONMATCHING
}

/* 8055A530-8055A538 006630 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_8055A530() {
    // NONMATCHING
}

/* 8055A538-8055A540 006638 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_8055A538() {
    // NONMATCHING
}

/* 8055A540-8055A5A0 006640 0060+00 1/1 0/0 0/0 .text chkPointInArea__15daTag_EvtArea_cF4cXyz */
// void daTag_EvtArea_c::chkPointInArea(cXyz param_0) {
extern "C" void chkPointInArea__15daTag_EvtArea_cF4cXyz() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8055B43C-8055B440 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8055B43C[4];
#pragma pop

/* 8055B440-8055B444 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8055B440[4];
#pragma pop

/* 8055B444-8055B448 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8055B444[4];
#pragma pop

/* 8055B448-8055B44C 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8055B448[4];
#pragma pop

/* 8055B44C-8055B450 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8055B44C[4];
#pragma pop

/* 8055B450-8055B454 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8055B450[4];
#pragma pop

/* 8055B454-8055B458 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8055B454[4];
#pragma pop

/* 8055B458-8055B45C 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8055B458[4];
#pragma pop

/* 8055B45C-8055B460 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8055B45C[4];
#pragma pop

/* 8055B460-8055B464 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8055B460[4];
#pragma pop

/* 8055B464-8055B468 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8055B464[4];
#pragma pop

/* 8055B468-8055B46C 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8055B468[4];
#pragma pop

/* 8055B46C-8055B470 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8055B46C[4];
#pragma pop

/* 8055B470-8055B474 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8055B470[4];
#pragma pop

/* 8055B474-8055B478 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8055B474[4];
#pragma pop

/* 8055B478-8055B47C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8055B478[4];
#pragma pop

/* 8055B47C-8055B480 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8055B47C[4];
#pragma pop

/* 8055B480-8055B484 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8055B480[4];
#pragma pop

/* 8055B484-8055B488 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8055B484[4];
#pragma pop

/* 8055B488-8055B48C 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8055B488[4];
#pragma pop

/* 8055B48C-8055B490 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8055B48C[4];
#pragma pop

/* 8055B490-8055B494 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8055B490[4];
#pragma pop

/* 8055B494-8055B498 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8055B494[4];
#pragma pop

/* 8055B498-8055B49C 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8055B498[4];
#pragma pop

/* 8055B49C-8055B4A0 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8055B49C[4];
#pragma pop

/* 8055A77C-8055A77C 0001C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
