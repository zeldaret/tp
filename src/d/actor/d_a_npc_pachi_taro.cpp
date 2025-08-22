/**
 * @file d_a_npc_pachi_taro.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_pachi_taro.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__18daNpc_Pachi_Taro_cFv();
extern "C" void create__18daNpc_Pachi_Taro_cFv();
extern "C" void CreateHeap__18daNpc_Pachi_Taro_cFv();
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
extern "C" void Delete__18daNpc_Pachi_Taro_cFv();
extern "C" void Execute__18daNpc_Pachi_Taro_cFv();
extern "C" void Draw__18daNpc_Pachi_Taro_cFv();
extern "C" void createHeapCallBack__18daNpc_Pachi_Taro_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__18daNpc_Pachi_Taro_cFP8J3DJointi();
extern "C" bool getType__18daNpc_Pachi_Taro_cFv();
extern "C" void isDelete__18daNpc_Pachi_Taro_cFv();
extern "C" void reset__18daNpc_Pachi_Taro_cFv();
extern "C" void afterJntAnm__18daNpc_Pachi_Taro_cFi();
extern "C" void setParam__18daNpc_Pachi_Taro_cFv();
extern "C" bool checkChangeEvt__18daNpc_Pachi_Taro_cFv();
extern "C" void setAfterTalkMotion__18daNpc_Pachi_Taro_cFv();
extern "C" void srchActors__18daNpc_Pachi_Taro_cFv();
extern "C" void srchDistTag1__18daNpc_Pachi_Taro_cFv();
extern "C" void _srch_DistTag1_main__18daNpc_Pachi_Taro_cFPvPv();
extern "C" void srchDistTag2__18daNpc_Pachi_Taro_cFv();
extern "C" void _srch_DistTag2_main__18daNpc_Pachi_Taro_cFPvPv();
extern "C" void srchEscapeTag1__18daNpc_Pachi_Taro_cFv();
extern "C" void _srch_EscapeTag1_main__18daNpc_Pachi_Taro_cFPvPv();
extern "C" void srchEscapeTag2__18daNpc_Pachi_Taro_cFv();
extern "C" void _srch_EscapeTag2_main__18daNpc_Pachi_Taro_cFPvPv();
extern "C" void evtTalk__18daNpc_Pachi_Taro_cFv();
extern "C" void evtCutProc__18daNpc_Pachi_Taro_cFv();
extern "C" void action__18daNpc_Pachi_Taro_cFv();
extern "C" void beforeMove__18daNpc_Pachi_Taro_cFv();
extern "C" void setAttnPos__18daNpc_Pachi_Taro_cFv();
extern "C" void setCollision__18daNpc_Pachi_Taro_cFv();
extern "C" bool drawDbgInfo__18daNpc_Pachi_Taro_cFv();
extern "C" void drawOtherMdl__18daNpc_Pachi_Taro_cFv();
extern "C" void selectAction__18daNpc_Pachi_Taro_cFv();
extern "C" void chkAction__18daNpc_Pachi_Taro_cFM18daNpc_Pachi_Taro_cFPCvPvPv_i();
extern "C" void setAction__18daNpc_Pachi_Taro_cFM18daNpc_Pachi_Taro_cFPCvPvPv_i();
extern "C" void wait__18daNpc_Pachi_Taro_cFPv();
extern "C" void setMesPat__18daNpc_Pachi_Taro_cFv();
extern "C" void _turn_to_link__18daNpc_Pachi_Taro_cFs();
extern "C" void _turn_pos__18daNpc_Pachi_Taro_cFRC4cXyzs();
extern "C" void _turn_pos__18daNpc_Pachi_Taro_cFRC4cXyz();
extern "C" void talk_cancel__18daNpc_Pachi_Taro_cFv();
extern "C" void watch_tutrial__18daNpc_Pachi_Taro_cFv();
extern "C" void chkDistTag__18daNpc_Pachi_Taro_cFv();
extern "C" void chkEscapeTag__18daNpc_Pachi_Taro_cFv();
extern "C" void chkTarget__18daNpc_Pachi_Taro_cFv();
extern "C" void clr_tagHit__18daNpc_Pachi_Taro_cFv();
extern "C" void allTagPosSet__18daNpc_Pachi_Taro_cFRC4cXyz();
extern "C" void allLookPosSet__18daNpc_Pachi_Taro_cFRC4cXyz();
extern "C" void talk__18daNpc_Pachi_Taro_cFPv();
extern "C" void evtEndProc__18daNpc_Pachi_Taro_cFv();
extern "C" void cutTutrialBegin__18daNpc_Pachi_Taro_cFi();
extern "C" void _cutTutrialBegin_Init__18daNpc_Pachi_Taro_cFRCi();
extern "C" void _cutTutrialBegin_Main__18daNpc_Pachi_Taro_cFRCi();
extern "C" void cutTutrialBegin_Skip__18daNpc_Pachi_Taro_cFi();
extern "C" void _cutTutrialBegin_Skip_Init__18daNpc_Pachi_Taro_cFRCi();
extern "C" void _cutTutrialBegin_Skip_Main__18daNpc_Pachi_Taro_cFRCi();
extern "C" void cutTutrialClear__18daNpc_Pachi_Taro_cFi();
extern "C" void _cutTutrialClear_Init__18daNpc_Pachi_Taro_cFRCi();
extern "C" void _cutTutrialClear_Main__18daNpc_Pachi_Taro_cFRCi();
extern "C" void cutTalk__18daNpc_Pachi_Taro_cFi();
extern "C" void _cutTalk_Init__18daNpc_Pachi_Taro_cFRCi();
extern "C" void _cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi();
extern "C" void cutTalk2__18daNpc_Pachi_Taro_cFi();
extern "C" void _cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi();
extern "C" void _cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi();
extern "C" void cut1stHit_KakasiBody__18daNpc_Pachi_Taro_cFi();
extern "C" void _cut1stHit_KakasiBody_Init__18daNpc_Pachi_Taro_cFRCi();
extern "C" void _cut1stHit_KakasiBody_Main__18daNpc_Pachi_Taro_cFRCi();
extern "C" void cutTutrialSelectGiveUp__18daNpc_Pachi_Taro_cFi();
extern "C" void _cutTutrialSelectGiveUp_Init__18daNpc_Pachi_Taro_cFRCi();
extern "C" void _cutTutrialSelectGiveUp_Main__18daNpc_Pachi_Taro_cFRCi();
extern "C" void cutTutrialGiveUp__18daNpc_Pachi_Taro_cFi();
extern "C" void _cutTutrialGiveUp_Init__18daNpc_Pachi_Taro_cFRCi();
extern "C" void _cutTutrialGiveUp_Main__18daNpc_Pachi_Taro_cFRCi();
extern "C" void cutTutrialCaution__18daNpc_Pachi_Taro_cFi();
extern "C" void _cutTutrialCaution_Init__18daNpc_Pachi_Taro_cFRCi();
extern "C" void _cutTutrialCaution_Main__18daNpc_Pachi_Taro_cFRCi();
extern "C" void cutTutrialContinue__18daNpc_Pachi_Taro_cFi();
extern "C" bool _cutTutrialContinue_Init__18daNpc_Pachi_Taro_cFRCi();
extern "C" void _cutTutrialContinue_Main__18daNpc_Pachi_Taro_cFRCi();
extern "C" static void daNpc_Pachi_Taro_Create__FPv();
extern "C" static void daNpc_Pachi_Taro_Delete__FPv();
extern "C" static void daNpc_Pachi_Taro_Execute__FPv();
extern "C" static void daNpc_Pachi_Taro_Draw__FPv();
extern "C" static bool daNpc_Pachi_Taro_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__8daNpcT_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
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
extern "C" void __sinit_d_a_npc_pachi_taro_cpp();
extern "C" void
__ct__18daNpc_Pachi_Taro_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__18daNpc_Pachi_Taro_cFv();
extern "C" s32 getHeadJointNo__18daNpc_Pachi_Taro_cFv();
extern "C" s32 getNeckJointNo__18daNpc_Pachi_Taro_cFv();
extern "C" bool getBackboneJointNo__18daNpc_Pachi_Taro_cFv();
extern "C" void checkChangeJoint__18daNpc_Pachi_Taro_cFi();
extern "C" void checkRemoveJoint__18daNpc_Pachi_Taro_cFi();
extern "C" void __dt__24daNpc_Pachi_Taro_Param_cFv();
extern "C" static void func_80AA15E0();
extern "C" static void func_80AA15E8();
extern "C" u8 const m__24daNpc_Pachi_Taro_Param_c[140];
extern "C" extern char const* const d_a_npc_pachi_taro__stringBase0;
extern "C" void* mCutNameList__18daNpc_Pachi_Taro_c[11];
extern "C" u8 mCutList__18daNpc_Pachi_Taro_c[132];

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void setEventReg__11dSv_event_cFUsUc();
extern "C" void getEventReg__11dSv_event_cCFUs();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void dEv_defaultSkipProc__FPvi();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void setSkipZev__14dEvt_control_cFPvPc();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
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
extern "C" void chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_onEvtBit__FUl();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcF_offTmpBit__FUl();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void getNowMsgNo__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_chaseAngleS__FPsss();
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
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80AA1814-80AA1814 000210 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AA1814 = "";
SECTION_DEAD static char const* const stringBase_80AA1815 = "TUTRIAL_BEGIN";
SECTION_DEAD static char const* const stringBase_80AA1823 = "TUTRIAL_BEGIN_SKIP";
SECTION_DEAD static char const* const stringBase_80AA1836 = "TUTRIAL_CLEAR";
SECTION_DEAD static char const* const stringBase_80AA1844 = "TUTRIAL_TALK";
SECTION_DEAD static char const* const stringBase_80AA1851 = "TUTRIAL_TALK2";
SECTION_DEAD static char const* const stringBase_80AA185F = "HIT_KAKASI_BODY";
SECTION_DEAD static char const* const stringBase_80AA186F = "TUTRIAL_SELECT_GIVEUP";
SECTION_DEAD static char const* const stringBase_80AA1885 = "TUTRIAL_CONTINUE";
SECTION_DEAD static char const* const stringBase_80AA1896 = "TUTRIAL_GIVEUP";
SECTION_DEAD static char const* const stringBase_80AA18A5 = "TUTRIAL_CAUTION";
SECTION_DEAD static char const* const stringBase_80AA18B5 = "Taro";
SECTION_DEAD static char const* const stringBase_80AA18BA = "Taro_TW";
SECTION_DEAD static char const* const stringBase_80AA18C2 = "Taro0";
SECTION_DEAD static char const* const stringBase_80AA18C8 = "Taro1";
SECTION_DEAD static char const* const stringBase_80AA18CE = "Taro2";
SECTION_DEAD static char const* const stringBase_80AA18D4 = "Taro3";
SECTION_DEAD static char const* const stringBase_80AA18DA = "Taro4";
SECTION_DEAD static char const* const stringBase_80AA18E0 = "Taro5";
SECTION_DEAD static char const* const stringBase_80AA18E6 = "TaroB";
SECTION_DEAD static char const* const stringBase_80AA18EC = "Len1";
SECTION_DEAD static char const* const stringBase_80AA18F1 = "evt_pachi";
#pragma pop

/* 80AA194C-80AA1974 000020 0028+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[40] = {
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00,
    0x00, 0x04, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x09,
};

/* 80AA1974-80AA19CC -00001 0058+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[22] = {
    (void*)&d_a_npc_pachi_taro__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x1),
    (void*)0x0000000B,
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0xF),
    (void*)0x0000000B,
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x22),
    (void*)0x0000000B,
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x30),
    (void*)0x0000000B,
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x3D),
    (void*)0x0000000B,
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x4B),
    (void*)0x0000000B,
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x5B),
    (void*)0x0000000B,
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x71),
    (void*)0x0000000B,
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x82),
    (void*)0x0000000B,
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x91),
    (void*)0x0000000B,
};
#pragma pop

/* 80AA19CC-80AA19FC -00001 0030+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[12] = {
    (void*)&d_a_npc_pachi_taro__stringBase0,
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0xA1),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0xA6),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0xAE),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0xB4),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0xBA),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0xC0),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0xC6),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0xCC),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0xD2),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0xD8),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0xDD),
};

/* 80AA19FC-80AA1A04 0000D0 0007+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u8 l_loadResPtrn0[7 + 1 /* padding */] = {
    0x01,
    0x03,
    0x04,
    0x05,
    0x06,
    0x0B,
    0xFF,
    /* padding */
    0x00,
};

/* 80AA1A04-80AA1A0C 0000D8 0008+00 1/0 0/0 0/0 .data            l_loadResPtrn4 */
SECTION_DATA static u8 l_loadResPtrn4[8] = {
    0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0xFF,
};

/* 80AA1A0C-80AA1A14 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[2] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn4,
};

/* 80AA1A14-80AA1D5C 0000E8 0348+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[840] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x2D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x2F,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x20,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x1C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x1C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x1B,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80AA1D5C-80AA21D8 000430 047C+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[1148] = {
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80AA21D8-80AA23D8 0008AC 0200+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[512] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x15, 0xFF, 0x01, 0x00, 0x16, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x18, 0xFF, 0x01, 0x00, 0x19, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1A, 0xFF, 0x01, 0x00, 0x1B, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x16, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x17, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x19, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1C, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x18, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80AA23D8-80AA2668 000AAC 0290+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[656] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x15, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x16, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x18, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x19, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1A, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1B, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1C, 0xFF, 0x01, 0x00, 0x1D, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1E, 0x0A, 0x01, 0x00, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x20, 0xFF, 0x01, 0x00, 0x1F, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x23, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x24, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x25, 0xFF, 0x01, 0x00, 0x24, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x26, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x27, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x01, 0x00, 0x12, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x01, 0x00, 0x12, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x17, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x21, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x22, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x28, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80AA2668-80AA2694 -00001 002C+00 1/1 0/0 0/0 .data            mCutNameList__18daNpc_Pachi_Taro_c
 */
SECTION_DATA void* daNpc_Pachi_Taro_c::mCutNameList[11] = {
    (void*)&d_a_npc_pachi_taro__stringBase0,
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x1),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0xF),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x22),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x30),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x3D),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x4B),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x5B),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x71),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x82),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x91),
};

/* 80AA2694-80AA26A0 -00001 000C+00 0/1 0/0 0/0 .data            @3979 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3979[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTutrialBegin__18daNpc_Pachi_Taro_cFi,
};
#pragma pop

/* 80AA26A0-80AA26AC -00001 000C+00 0/1 0/0 0/0 .data            @3980 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3980[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTutrialBegin_Skip__18daNpc_Pachi_Taro_cFi,
};
#pragma pop

/* 80AA26AC-80AA26B8 -00001 000C+00 0/1 0/0 0/0 .data            @3981 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3981[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTutrialClear__18daNpc_Pachi_Taro_cFi,
};
#pragma pop

/* 80AA26B8-80AA26C4 -00001 000C+00 0/1 0/0 0/0 .data            @3982 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3982[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTalk__18daNpc_Pachi_Taro_cFi,
};
#pragma pop

/* 80AA26C4-80AA26D0 -00001 000C+00 0/1 0/0 0/0 .data            @3983 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3983[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTalk2__18daNpc_Pachi_Taro_cFi,
};
#pragma pop

/* 80AA26D0-80AA26DC -00001 000C+00 0/1 0/0 0/0 .data            @3984 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3984[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cut1stHit_KakasiBody__18daNpc_Pachi_Taro_cFi,
};
#pragma pop

/* 80AA26DC-80AA26E8 -00001 000C+00 0/1 0/0 0/0 .data            @3985 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3985[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTutrialSelectGiveUp__18daNpc_Pachi_Taro_cFi,
};
#pragma pop

/* 80AA26E8-80AA26F4 -00001 000C+00 0/1 0/0 0/0 .data            @3986 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3986[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTutrialContinue__18daNpc_Pachi_Taro_cFi,
};
#pragma pop

/* 80AA26F4-80AA2700 -00001 000C+00 0/1 0/0 0/0 .data            @3987 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3987[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTutrialGiveUp__18daNpc_Pachi_Taro_cFi,
};
#pragma pop

/* 80AA2700-80AA270C -00001 000C+00 0/1 0/0 0/0 .data            @3988 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3988[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTutrialCaution__18daNpc_Pachi_Taro_cFi,
};
#pragma pop

/* 80AA270C-80AA2790 000DE0 0084+00 1/2 0/0 0/0 .data            mCutList__18daNpc_Pachi_Taro_c */
SECTION_DATA u8 daNpc_Pachi_Taro_c::mCutList[132] = {
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

/* 80AA2790-80AA27CC -00001 003C+00 1/1 0/0 0/0 .data            @4732 */
SECTION_DATA static void* lit_4732[15] = {
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Taro_cFv) + 0x7C),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Taro_cFv) + 0x40),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Taro_cFv) + 0x48),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Taro_cFv) + 0x50),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Taro_cFv) + 0x58),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Taro_cFv) + 0x60),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Taro_cFv) + 0x7C),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Taro_cFv) + 0x7C),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Taro_cFv) + 0x7C),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Taro_cFv) + 0x7C),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Taro_cFv) + 0x7C),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Taro_cFv) + 0x7C),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Taro_cFv) + 0x68),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Taro_cFv) + 0x70),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Taro_cFv) + 0x78),
};

/* 80AA27CC-80AA27D8 -00001 000C+00 1/1 0/0 0/0 .data            @4815 */
SECTION_DATA static void* lit_4815[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__18daNpc_Pachi_Taro_cFPv,
};

/* 80AA27D8-80AA27E4 -00001 000C+00 1/1 0/0 0/0 .data            @4825 */
SECTION_DATA static void* lit_4825[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__18daNpc_Pachi_Taro_cFPv,
};

/* 80AA27E4-80AA27F0 -00001 000C+00 1/1 0/0 0/0 .data            @5097 */
SECTION_DATA static void* lit_5097[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__18daNpc_Pachi_Taro_cFPv,
};

/* 80AA27F0-80AA27FC -00001 000C+00 1/1 0/0 0/0 .data            @5099 */
SECTION_DATA static void* lit_5099[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__18daNpc_Pachi_Taro_cFPv,
};

/* 80AA27FC-80AA2824 -00001 0028+00 1/1 0/0 0/0 .data            @5480 */
SECTION_DATA static void* lit_5480[10] = {
    (void*)(((char*)evtEndProc__18daNpc_Pachi_Taro_cFv) + 0xAC),
    (void*)(((char*)evtEndProc__18daNpc_Pachi_Taro_cFv) + 0xA4),
    (void*)(((char*)evtEndProc__18daNpc_Pachi_Taro_cFv) + 0xAC),
    (void*)(((char*)evtEndProc__18daNpc_Pachi_Taro_cFv) + 0xAC),
    (void*)(((char*)evtEndProc__18daNpc_Pachi_Taro_cFv) + 0x98),
    (void*)(((char*)evtEndProc__18daNpc_Pachi_Taro_cFv) + 0xAC),
    (void*)(((char*)evtEndProc__18daNpc_Pachi_Taro_cFv) + 0x98),
    (void*)(((char*)evtEndProc__18daNpc_Pachi_Taro_cFv) + 0x58),
    (void*)(((char*)evtEndProc__18daNpc_Pachi_Taro_cFv) + 0xAC),
    (void*)(((char*)evtEndProc__18daNpc_Pachi_Taro_cFv) + 0x98),
};

/* 80AA2824-80AA288C -00001 0068+00 1/1 0/0 0/0 .data            @5643 */
SECTION_DATA static void* lit_5643[26] = {
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x80),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
};

/* 80AA288C-80AA28F4 -00001 0068+00 1/1 0/0 0/0 .data            @5675 */
SECTION_DATA static void* lit_5675[26] = {
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0xB4),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0xD0),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x100),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x130),
};

/* 80AA28F4-80AA295C -00001 0068+00 1/1 0/0 0/0 .data            @5709 */
SECTION_DATA static void* lit_5709[26] = {
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x80),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
    (void*)(((char*)_cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi) + 0x90),
};

/* 80AA295C-80AA29C4 -00001 0068+00 1/1 0/0 0/0 .data            @5741 */
SECTION_DATA static void* lit_5741[26] = {
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0xB4),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0xD0),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x100),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x17C),
    (void*)(((char*)_cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi) + 0x130),
};

/* 80AA29C4-80AA29E4 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Pachi_Taro_MethodTable */
static actor_method_class daNpc_Pachi_Taro_MethodTable = {
    (process_method_func)daNpc_Pachi_Taro_Create__FPv,
    (process_method_func)daNpc_Pachi_Taro_Delete__FPv,
    (process_method_func)daNpc_Pachi_Taro_Execute__FPv,
    (process_method_func)daNpc_Pachi_Taro_IsDelete__FPv,
    (process_method_func)daNpc_Pachi_Taro_Draw__FPv,
};

/* 80AA29E4-80AA2A14 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_PACHI_TARO */
extern actor_process_profile_definition g_profile_NPC_PACHI_TARO = {
  fpcLy_CURRENT_e,               // mLayerID
  7,                             // mListID
  fpcPi_CURRENT_e,               // mListPrio
  PROC_NPC_PACHI_TARO,           // mProcName
  &g_fpcLf_Method.base,         // sub_method
  sizeof(daNpc_Pachi_Taro_c),    // mSize
  0,                             // mSizeOther
  0,                             // mParameters
  &g_fopAc_Method.base,          // sub_method
  369,                           // mPriority
  &daNpc_Pachi_Taro_MethodTable, // sub_method
  0x00044107,                    // mStatus
  fopAc_NPC_e,                   // mActorType
  fopAc_CULLBOX_CUSTOM_e,        // cullType
};

/* 80AA2A14-80AA2A20 0010E8 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80AA2A20-80AA2A2C 0010F4 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80AA2A2C-80AA2A50 001100 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AA15E8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80AA15E0,
};

/* 80AA2A50-80AA2A5C 001124 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80AA2A5C-80AA2A68 001130 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80AA2A68-80AA2A74 00113C 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80AA2A74-80AA2A80 001148 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80AA2A80-80AA2A8C 001154 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80AA2A8C-80AA2A98 001160 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80AA2A98-80AA2AA4 00116C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80AA2AA4-80AA2AB0 001178 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80AA2AB0-80AA2B74 001184 00C4+00 2/2 0/0 0/0 .data            __vt__18daNpc_Pachi_Taro_c */
SECTION_DATA extern void* __vt__18daNpc_Pachi_Taro_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpc_Pachi_Taro_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__18daNpc_Pachi_Taro_cFi,
    (void*)checkRemoveJoint__18daNpc_Pachi_Taro_cFi,
    (void*)getBackboneJointNo__18daNpc_Pachi_Taro_cFv,
    (void*)getNeckJointNo__18daNpc_Pachi_Taro_cFv,
    (void*)getHeadJointNo__18daNpc_Pachi_Taro_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__18daNpc_Pachi_Taro_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__18daNpc_Pachi_Taro_cFi,
    (void*)setParam__18daNpc_Pachi_Taro_cFv,
    (void*)checkChangeEvt__18daNpc_Pachi_Taro_cFv,
    (void*)evtTalk__18daNpc_Pachi_Taro_cFv,
    (void*)evtEndProc__18daNpc_Pachi_Taro_cFv,
    (void*)evtCutProc__18daNpc_Pachi_Taro_cFv,
    (void*)setAfterTalkMotion__18daNpc_Pachi_Taro_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__18daNpc_Pachi_Taro_cFv,
    (void*)beforeMove__18daNpc_Pachi_Taro_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__18daNpc_Pachi_Taro_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__18daNpc_Pachi_Taro_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__18daNpc_Pachi_Taro_cFv,
    (void*)drawOtherMdl__18daNpc_Pachi_Taro_cFv,
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
};

/* 80A9C28C-80A9C3C4 0000EC 0138+00 1/0 0/0 0/0 .text            __dt__18daNpc_Pachi_Taro_cFv */
daNpc_Pachi_Taro_c::~daNpc_Pachi_Taro_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA1604-80AA1690 000000 008C+00 11/11 0/0 0/0 .rodata          m__24daNpc_Pachi_Taro_Param_c */
SECTION_RODATA u8 const daNpc_Pachi_Taro_Param_c::m[140] = {
    0x43, 0x0C, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x42, 0xF0, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x04,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0xC1, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0x42, 0x5C, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA1604, &daNpc_Pachi_Taro_Param_c::m);

/* 80AA1690-80AA1694 00008C 0004+00 0/1 0/0 0/0 .rodata          @4212 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4212 = -300.0f;
COMPILER_STRIP_GATE(0x80AA1690, &lit_4212);
#pragma pop

/* 80AA1694-80AA1698 000090 0004+00 0/1 0/0 0/0 .rodata          @4213 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4213 = -50.0f;
COMPILER_STRIP_GATE(0x80AA1694, &lit_4213);
#pragma pop

/* 80AA1698-80AA169C 000094 0004+00 0/1 0/0 0/0 .rodata          @4214 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4214 = 300.0f;
COMPILER_STRIP_GATE(0x80AA1698, &lit_4214);
#pragma pop

/* 80AA169C-80AA16A0 000098 0004+00 0/1 0/0 0/0 .rodata          @4215 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4215 = 450.0f;
COMPILER_STRIP_GATE(0x80AA169C, &lit_4215);
#pragma pop

/* 80AA16A0-80AA16A4 00009C 0004+00 0/1 0/0 0/0 .rodata          @4216 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4216 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80AA16A0, &lit_4216);
#pragma pop

/* 80A9C3C4-80A9C69C 000224 02D8+00 1/1 0/0 0/0 .text            create__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA16A4-80AA16A8 0000A0 0004+00 4/10 0/0 0/0 .rodata          @4373 */
SECTION_RODATA static u8 const lit_4373[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80AA16A4, &lit_4373);

/* 80AA16A8-80AA16AC 0000A4 0004+00 0/2 0/0 0/0 .rodata          @4374 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4374 = 65536.0f;
COMPILER_STRIP_GATE(0x80AA16A8, &lit_4374);
#pragma pop

/* 80AA16AC-80AA16B0 0000A8 0004+00 0/3 0/0 0/0 .rodata          @4375 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4375 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80AA16AC, &lit_4375);
#pragma pop

/* 80AA16B0-80AA16B8 0000AC 0008+00 0/1 0/0 0/0 .rodata          bmdTypeList$4485 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const bmdTypeList[8] = {
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02,
};
COMPILER_STRIP_GATE(0x80AA16B0, &bmdTypeList);
#pragma pop

/* 80AA16B8-80AA16BC 0000B4 0004+00 1/4 0/0 0/0 .rodata          @4548 */
SECTION_RODATA static f32 const lit_4548 = 1.0f;
COMPILER_STRIP_GATE(0x80AA16B8, &lit_4548);

/* 80A9C69C-80A9CA1C 0004FC 0380+00 1/1 0/0 0/0 .text            CreateHeap__18daNpc_Pachi_Taro_cFv
 */
void daNpc_Pachi_Taro_c::CreateHeap() {
    // NONMATCHING
}

/* 80A9CA1C-80A9CA58 00087C 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A9CA58-80A9CA70 0008B8 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A9CA70-80A9CAAC 0008D0 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A9CAAC-80A9CAC4 00090C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A9CAC4-80A9CB0C 000924 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A9CB0C-80A9CB30 00096C 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A9CB30-80A9CB6C 000990 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A9CB6C-80A9CB84 0009CC 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A9CB84-80A9CBC0 0009E4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A9CBC0-80A9CBD8 000A20 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A9CBD8-80A9CC0C 000A38 0034+00 1/1 0/0 0/0 .text            Delete__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::Delete() {
    // NONMATCHING
}

/* 80A9CC0C-80A9CC2C 000A6C 0020+00 2/2 0/0 0/0 .text            Execute__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA16BC-80AA16C0 0000B8 0004+00 1/1 0/0 0/0 .rodata          @4597 */
SECTION_RODATA static f32 const lit_4597 = 100.0f;
COMPILER_STRIP_GATE(0x80AA16BC, &lit_4597);

/* 80A9CC2C-80A9CCC0 000A8C 0094+00 1/1 0/0 0/0 .text            Draw__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::Draw() {
    // NONMATCHING
}

/* 80A9CCC0-80A9CCE0 000B20 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__18daNpc_Pachi_Taro_cFP10fopAc_ac_c       */
void daNpc_Pachi_Taro_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A9CCE0-80A9CD38 000B40 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__18daNpc_Pachi_Taro_cFP8J3DJointi          */
void daNpc_Pachi_Taro_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80A9CD38-80A9CD40 000B98 0008+00 1/1 0/0 0/0 .text            getType__18daNpc_Pachi_Taro_cFv */
bool daNpc_Pachi_Taro_c::getType() {
    return false;
}

/* 80A9CD40-80A9CD60 000BA0 0020+00 1/1 0/0 0/0 .text            isDelete__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::isDelete() {
    // NONMATCHING
}

/* 80A9CD60-80A9CF10 000BC0 01B0+00 1/1 0/0 0/0 .text            reset__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::reset() {
    // NONMATCHING
}

/* 80A9CF10-80A9CF9C 000D70 008C+00 1/0 0/0 0/0 .text            afterJntAnm__18daNpc_Pachi_Taro_cFi
 */
void daNpc_Pachi_Taro_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 80A9CF9C-80A9D098 000DFC 00FC+00 1/0 0/0 0/0 .text            setParam__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::setParam() {
    // NONMATCHING
}

/* 80A9D098-80A9D0A0 000EF8 0008+00 1/0 0/0 0/0 .text checkChangeEvt__18daNpc_Pachi_Taro_cFv */
bool daNpc_Pachi_Taro_c::checkChangeEvt() {
    return false;
}

/* ############################################################################################## */
/* 80AA16C0-80AA16C4 0000BC 0004+00 2/2 0/0 0/0 .rodata          @4731 */
SECTION_RODATA static f32 const lit_4731 = -1.0f;
COMPILER_STRIP_GATE(0x80AA16C0, &lit_4731);

/* 80A9D0A0-80A9D164 000F00 00C4+00 2/0 0/0 0/0 .text setAfterTalkMotion__18daNpc_Pachi_Taro_cFv
 */
void daNpc_Pachi_Taro_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80A9D164-80A9D27C 000FC4 0118+00 1/1 0/0 0/0 .text            srchActors__18daNpc_Pachi_Taro_cFv
 */
void daNpc_Pachi_Taro_c::srchActors() {
    // NONMATCHING
}

/* 80A9D27C-80A9D2A8 0010DC 002C+00 1/1 0/0 0/0 .text srchDistTag1__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::srchDistTag1() {
    // NONMATCHING
}

/* 80A9D2A8-80A9D310 001108 0068+00 1/1 0/0 0/0 .text
 * _srch_DistTag1_main__18daNpc_Pachi_Taro_cFPvPv               */
void daNpc_Pachi_Taro_c::_srch_DistTag1_main(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80A9D310-80A9D33C 001170 002C+00 1/1 0/0 0/0 .text srchDistTag2__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::srchDistTag2() {
    // NONMATCHING
}

/* 80A9D33C-80A9D3A4 00119C 0068+00 1/1 0/0 0/0 .text
 * _srch_DistTag2_main__18daNpc_Pachi_Taro_cFPvPv               */
void daNpc_Pachi_Taro_c::_srch_DistTag2_main(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80A9D3A4-80A9D3D0 001204 002C+00 1/1 0/0 0/0 .text srchEscapeTag1__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::srchEscapeTag1() {
    // NONMATCHING
}

/* 80A9D3D0-80A9D438 001230 0068+00 1/1 0/0 0/0 .text
 * _srch_EscapeTag1_main__18daNpc_Pachi_Taro_cFPvPv             */
void daNpc_Pachi_Taro_c::_srch_EscapeTag1_main(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80A9D438-80A9D464 001298 002C+00 1/1 0/0 0/0 .text srchEscapeTag2__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::srchEscapeTag2() {
    // NONMATCHING
}

/* 80A9D464-80A9D4CC 0012C4 0068+00 1/1 0/0 0/0 .text
 * _srch_EscapeTag2_main__18daNpc_Pachi_Taro_cFPvPv             */
void daNpc_Pachi_Taro_c::_srch_EscapeTag2_main(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80A9D4CC-80A9D5D0 00132C 0104+00 1/0 0/0 0/0 .text            evtTalk__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::evtTalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA1814-80AA1814 000210 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AA18FB = "PA_Taro";
#pragma pop

/* 80A9D5D0-80A9D698 001430 00C8+00 1/0 0/0 0/0 .text            evtCutProc__18daNpc_Pachi_Taro_cFv
 */
void daNpc_Pachi_Taro_c::evtCutProc() {
    // NONMATCHING
}

/* 80A9D698-80A9D840 0014F8 01A8+00 1/0 0/0 0/0 .text            action__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::action() {
    // NONMATCHING
}

/* 80A9D840-80A9D8B8 0016A0 0078+00 1/0 0/0 0/0 .text            beforeMove__18daNpc_Pachi_Taro_cFv
 */
void daNpc_Pachi_Taro_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA16C4-80AA16C8 0000C0 0004+00 0/1 0/0 0/0 .rodata          @4950 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4950 = 30.0f;
COMPILER_STRIP_GATE(0x80AA16C4, &lit_4950);
#pragma pop

/* 80AA16C8-80AA16CC 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4951 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4951 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80AA16C8, &lit_4951);
#pragma pop

/* 80AA16CC-80AA16D4 0000C8 0008+00 1/3 0/0 0/0 .rodata          @4953 */
SECTION_RODATA static u8 const lit_4953[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA16CC, &lit_4953);

/* 80A9D8B8-80A9DB0C 001718 0254+00 1/0 0/0 0/0 .text            setAttnPos__18daNpc_Pachi_Taro_cFv
 */
void daNpc_Pachi_Taro_c::setAttnPos() {
    // NONMATCHING
}

/* 80A9DB0C-80A9DC14 00196C 0108+00 1/0 0/0 0/0 .text setCollision__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::setCollision() {
    // NONMATCHING
}

/* 80A9DC14-80A9DC1C 001A74 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__18daNpc_Pachi_Taro_cFv
 */
bool daNpc_Pachi_Taro_c::drawDbgInfo() {
    return false;
}

/* ############################################################################################## */
/* 80AA16D4-80AA16DC 0000D0 0008+00 0/1 0/0 0/0 .rodata          @5011 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5011[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA16D4, &lit_5011);
#pragma pop

/* 80AA16DC-80AA16E4 0000D8 0008+00 0/1 0/0 0/0 .rodata          @5012 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5012[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA16DC, &lit_5012);
#pragma pop

/* 80AA16E4-80AA16EC 0000E0 0008+00 0/1 0/0 0/0 .rodata          @5013 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5013[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA16E4, &lit_5013);
#pragma pop

/* 80AA16EC-80AA16F4 0000E8 0008+00 1/1 0/0 0/0 .rodata          jointNo$5051 */
SECTION_RODATA static u8 const jointNo[8] = {
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x0F,
};
COMPILER_STRIP_GATE(0x80AA16EC, &jointNo);

/* 80A9DC1C-80A9DD24 001A7C 0108+00 1/0 0/0 0/0 .text drawOtherMdl__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::drawOtherMdl() {
    // NONMATCHING
}

/* 80A9DD24-80A9DDA0 001B84 007C+00 1/1 0/0 0/0 .text selectAction__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::selectAction() {
    // NONMATCHING
}

/* 80A9DDA0-80A9DDCC 001C00 002C+00 1/1 0/0 0/0 .text
 * chkAction__18daNpc_Pachi_Taro_cFM18daNpc_Pachi_Taro_cFPCvPvPv_i */
void daNpc_Pachi_Taro_c::chkAction(int (daNpc_Pachi_Taro_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80A9DDCC-80A9DE74 001C2C 00A8+00 2/2 0/0 0/0 .text
 * setAction__18daNpc_Pachi_Taro_cFM18daNpc_Pachi_Taro_cFPCvPvPv_i */
void daNpc_Pachi_Taro_c::setAction(int (daNpc_Pachi_Taro_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80A9DE74-80A9E154 001CD4 02E0+00 2/0 0/0 0/0 .text            wait__18daNpc_Pachi_Taro_cFPv */
void daNpc_Pachi_Taro_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80A9E154-80A9E224 001FB4 00D0+00 2/2 0/0 0/0 .text            setMesPat__18daNpc_Pachi_Taro_cFv
 */
void daNpc_Pachi_Taro_c::setMesPat() {
    // NONMATCHING
}

/* 80A9E224-80A9E270 002084 004C+00 3/3 0/0 0/0 .text _turn_to_link__18daNpc_Pachi_Taro_cFs */
void daNpc_Pachi_Taro_c::_turn_to_link(s16 param_0) {
    // NONMATCHING
}

/* 80A9E270-80A9E2CC 0020D0 005C+00 4/4 0/0 0/0 .text _turn_pos__18daNpc_Pachi_Taro_cFRC4cXyzs */
void daNpc_Pachi_Taro_c::_turn_pos(cXyz const& param_0, s16 param_1) {
    // NONMATCHING
}

/* 80A9E2CC-80A9E30C 00212C 0040+00 1/1 0/0 0/0 .text _turn_pos__18daNpc_Pachi_Taro_cFRC4cXyz */
void daNpc_Pachi_Taro_c::_turn_pos(cXyz const& param_0) {
    // NONMATCHING
}

/* 80A9E30C-80A9E364 00216C 0058+00 1/1 0/0 0/0 .text            talk_cancel__18daNpc_Pachi_Taro_cFv
 */
void daNpc_Pachi_Taro_c::talk_cancel() {
    // NONMATCHING
}

/* 80A9E364-80A9E3E4 0021C4 0080+00 1/1 0/0 0/0 .text watch_tutrial__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::watch_tutrial() {
    // NONMATCHING
}

/* 80A9E3E4-80A9E458 002244 0074+00 1/1 0/0 0/0 .text            chkDistTag__18daNpc_Pachi_Taro_cFv
 */
void daNpc_Pachi_Taro_c::chkDistTag() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA16F4-80AA16F8 0000F0 0004+00 0/1 0/0 0/0 .rodata          @5339 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5339 = 0xC3D62635;
COMPILER_STRIP_GATE(0x80AA16F4, &lit_5339);
#pragma pop

/* 80AA16F8-80AA16FC 0000F4 0004+00 0/1 0/0 0/0 .rodata          @5340 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5340 = 800.0f;
COMPILER_STRIP_GATE(0x80AA16F8, &lit_5340);
#pragma pop

/* 80AA16FC-80AA1700 0000F8 0004+00 0/1 0/0 0/0 .rodata          @5341 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5341 = 0xC4C8EB3B;
COMPILER_STRIP_GATE(0x80AA16FC, &lit_5341);
#pragma pop

/* 80AA1700-80AA1704 0000FC 0004+00 0/1 0/0 0/0 .rodata          @5342 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5342 = 0x442015ED;
COMPILER_STRIP_GATE(0x80AA1700, &lit_5342);
#pragma pop

/* 80AA1704-80AA1708 000100 0004+00 0/1 0/0 0/0 .rodata          @5343 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5343 = 900.0f;
COMPILER_STRIP_GATE(0x80AA1704, &lit_5343);
#pragma pop

/* 80AA1708-80AA170C 000104 0004+00 0/1 0/0 0/0 .rodata          @5344 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5344 = 0xC4DEEE5A;
COMPILER_STRIP_GATE(0x80AA1708, &lit_5344);
#pragma pop

/* 80AA170C-80AA1710 000108 0004+00 0/1 0/0 0/0 .rodata          @5345 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5345 = 0x44430AE1;
COMPILER_STRIP_GATE(0x80AA170C, &lit_5345);
#pragma pop

/* 80AA1710-80AA1714 00010C 0004+00 0/1 0/0 0/0 .rodata          @5346 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5346 = 0xC521DC6D;
COMPILER_STRIP_GATE(0x80AA1710, &lit_5346);
#pragma pop

/* 80AA1714-80AA1718 000110 0004+00 0/1 0/0 0/0 .rodata          @5347 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5347 = 0x44435FB2;
COMPILER_STRIP_GATE(0x80AA1714, &lit_5347);
#pragma pop

/* 80AA1718-80AA171C 000114 0004+00 0/1 0/0 0/0 .rodata          @5348 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5348 = 0xC503799A;
COMPILER_STRIP_GATE(0x80AA1718, &lit_5348);
#pragma pop

/* 80A9E458-80A9E56C 0022B8 0114+00 1/1 0/0 0/0 .text chkEscapeTag__18daNpc_Pachi_Taro_cFv */
void daNpc_Pachi_Taro_c::chkEscapeTag() {
    // NONMATCHING
}

/* 80A9E56C-80A9E700 0023CC 0194+00 1/1 0/0 0/0 .text            chkTarget__18daNpc_Pachi_Taro_cFv
 */
void daNpc_Pachi_Taro_c::chkTarget() {
    // NONMATCHING
}

/* 80A9E700-80A9E778 002560 0078+00 1/1 0/0 0/0 .text            clr_tagHit__18daNpc_Pachi_Taro_cFv
 */
void daNpc_Pachi_Taro_c::clr_tagHit() {
    // NONMATCHING
}

/* 80A9E778-80A9E80C 0025D8 0094+00 1/1 0/0 0/0 .text allTagPosSet__18daNpc_Pachi_Taro_cFRC4cXyz
 */
void daNpc_Pachi_Taro_c::allTagPosSet(cXyz const& param_0) {
    // NONMATCHING
}

/* 80A9E80C-80A9E8A0 00266C 0094+00 1/1 0/0 0/0 .text allLookPosSet__18daNpc_Pachi_Taro_cFRC4cXyz
 */
void daNpc_Pachi_Taro_c::allLookPosSet(cXyz const& param_0) {
    // NONMATCHING
}

/* 80A9E8A0-80A9E910 002700 0070+00 2/0 0/0 0/0 .text            talk__18daNpc_Pachi_Taro_cFPv */
void daNpc_Pachi_Taro_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80A9E910-80A9E9E8 002770 00D8+00 2/0 0/0 0/0 .text            evtEndProc__18daNpc_Pachi_Taro_cFv
 */
void daNpc_Pachi_Taro_c::evtEndProc() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA1814-80AA1814 000210 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AA1903 = "cutId";
#pragma pop

/* 80A9E9E8-80A9EAA0 002848 00B8+00 1/0 0/0 0/0 .text cutTutrialBegin__18daNpc_Pachi_Taro_cFi */
void daNpc_Pachi_Taro_c::cutTutrialBegin(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA171C-80AA1728 000118 000C+00 1/1 0/0 0/0 .rodata          @5498 */
SECTION_RODATA static u8 const lit_5498[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA171C, &lit_5498);

/* 80A9EAA0-80A9EB3C 002900 009C+00 1/1 0/0 0/0 .text
 * _cutTutrialBegin_Init__18daNpc_Pachi_Taro_cFRCi              */
void daNpc_Pachi_Taro_c::_cutTutrialBegin_Init(int const& param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA1728-80AA1734 000124 000C+00 1/1 0/0 0/0 .rodata          @5507 */
SECTION_RODATA static u8 const lit_5507[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA1728, &lit_5507);

/* 80A9EB3C-80A9EC5C 00299C 0120+00 1/1 0/0 0/0 .text
 * _cutTutrialBegin_Main__18daNpc_Pachi_Taro_cFRCi              */
void daNpc_Pachi_Taro_c::_cutTutrialBegin_Main(int const& param_0) {
    // NONMATCHING
}

/* 80A9EC5C-80A9ECF0 002ABC 0094+00 1/0 0/0 0/0 .text cutTutrialBegin_Skip__18daNpc_Pachi_Taro_cFi
 */
void daNpc_Pachi_Taro_c::cutTutrialBegin_Skip(int param_0) {
    // NONMATCHING
}

/* 80A9ECF0-80A9ED28 002B50 0038+00 1/1 0/0 0/0 .text
 * _cutTutrialBegin_Skip_Init__18daNpc_Pachi_Taro_cFRCi         */
void daNpc_Pachi_Taro_c::_cutTutrialBegin_Skip_Init(int const& param_0) {
    // NONMATCHING
}

/* 80A9ED28-80A9ED40 002B88 0018+00 1/1 0/0 0/0 .text
 * _cutTutrialBegin_Skip_Main__18daNpc_Pachi_Taro_cFRCi         */
void daNpc_Pachi_Taro_c::_cutTutrialBegin_Skip_Main(int const& param_0) {
    // NONMATCHING
}

/* 80A9ED40-80A9EDD4 002BA0 0094+00 1/0 0/0 0/0 .text cutTutrialClear__18daNpc_Pachi_Taro_cFi */
void daNpc_Pachi_Taro_c::cutTutrialClear(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA1734-80AA1740 000130 000C+00 1/1 0/0 0/0 .rodata          @5574 */
SECTION_RODATA static u8 const lit_5574[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA1734, &lit_5574);

/* 80A9EDD4-80A9EEBC 002C34 00E8+00 1/1 0/0 0/0 .text
 * _cutTutrialClear_Init__18daNpc_Pachi_Taro_cFRCi              */
void daNpc_Pachi_Taro_c::_cutTutrialClear_Init(int const& param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA1740-80AA174C 00013C 000C+00 0/1 0/0 0/0 .rodata          @5592 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5592[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA1740, &lit_5592);
#pragma pop

/* 80AA174C-80AA1750 000148 0004+00 0/2 0/0 0/0 .rodata          @5606 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5606 = 0x445FBAA0;
COMPILER_STRIP_GATE(0x80AA174C, &lit_5606);
#pragma pop

/* 80AA1750-80AA1754 00014C 0004+00 0/2 0/0 0/0 .rodata          @5607 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5607 = 0x4461DA4E;
COMPILER_STRIP_GATE(0x80AA1750, &lit_5607);
#pragma pop

/* 80AA1754-80AA1758 000150 0004+00 0/3 0/0 0/0 .rodata          @5608 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5608 = 0xC4FF0B85;
COMPILER_STRIP_GATE(0x80AA1754, &lit_5608);
#pragma pop

/* 80A9EEBC-80A9EFC0 002D1C 0104+00 1/1 0/0 0/0 .text
 * _cutTutrialClear_Main__18daNpc_Pachi_Taro_cFRCi              */
void daNpc_Pachi_Taro_c::_cutTutrialClear_Main(int const& param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA1909-80AA1910 000305 0007+00 2/0 0/0 0/0 .rodata          None */
extern "C" char const* const stringBase_80AA1909;

/* 80AA1910-80AA1917 00030C 0007+00 2/0 0/0 0/0 .rodata          None */
extern "C" char const* const stringBase_80AA1910;

/* 80AA1917-80AA191E 000313 0007+00 2/0 0/0 0/0 .rodata          None */
extern "C" char const* const stringBase_80AA1917;

/* 80AA191E-80AA1925 00031A 0007+00 2/0 0/0 0/0 .rodata          None */
extern "C" char const* const stringBase_80AA191E;

/* 80AA1925-80AA192C 000321 0007+00 2/0 0/0 0/0 .rodata          None */
extern "C" char const* const stringBase_80AA1925;

/* 80AA1758-80AA176C -00001 0014+00 1/1 0/0 0/0 .rodata          @5615 */
SECTION_RODATA static void* const lit_5615[5] = {
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0xF5),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0xFC),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x103),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x10A),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x111),
};
COMPILER_STRIP_GATE(0x80AA1758, &lit_5615);

/* 80AA1814-80AA1814 000210 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80AA1909 = "MesNo0";
SECTION_DEAD static char const* const stringBase_80AA1910 = "MesNo1";
SECTION_DEAD static char const* const stringBase_80AA1917 = "MesNo2";
SECTION_DEAD static char const* const stringBase_80AA191E = "MesNo3";
SECTION_DEAD static char const* const stringBase_80AA1925 = "MesNo4";
#pragma pop

/* 80A9EFC0-80A9F0DC 002E20 011C+00 1/0 0/0 0/0 .text            cutTalk__18daNpc_Pachi_Taro_cFi */
void daNpc_Pachi_Taro_c::cutTalk(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA176C-80AA1778 000168 000C+00 1/1 0/0 0/0 .rodata          @5634 */
SECTION_RODATA static u8 const lit_5634[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA176C, &lit_5634);

/* 80A9F0DC-80A9F188 002F3C 00AC+00 2/1 0/0 0/0 .text _cutTalk_Init__18daNpc_Pachi_Taro_cFRCi */
void daNpc_Pachi_Taro_c::_cutTalk_Init(int const& param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA1778-80AA1784 000174 000C+00 1/1 0/0 0/0 .rodata          @5647 */
SECTION_RODATA static u8 const lit_5647[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA1778, &lit_5647);

/* 80AA1784-80AA178C 000180 0008+00 1/1 0/0 0/0 .rodata          @5648 */
SECTION_RODATA static u8 const lit_5648[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80AA1784, &lit_5648);

/* 80A9F188-80A9F324 002FE8 019C+00 2/1 0/0 0/0 .text _cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi
 */
void daNpc_Pachi_Taro_c::_cutTalk_Main(int const& param_0, int const& param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA178C-80AA17A0 -00001 0014+00 1/1 0/0 0/0 .rodata          @5681 */
SECTION_RODATA static void* const lit_5681[5] = {
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0xF5),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0xFC),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x103),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x10A),
    (void*)(((char*)&d_a_npc_pachi_taro__stringBase0) + 0x111),
};
COMPILER_STRIP_GATE(0x80AA178C, &lit_5681);

/* 80A9F324-80A9F440 003184 011C+00 1/0 0/0 0/0 .text            cutTalk2__18daNpc_Pachi_Taro_cFi */
void daNpc_Pachi_Taro_c::cutTalk2(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA17A0-80AA17AC 00019C 000C+00 1/1 0/0 0/0 .rodata          @5700 */
SECTION_RODATA static u8 const lit_5700[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA17A0, &lit_5700);

/* 80A9F440-80A9F4EC 0032A0 00AC+00 2/1 0/0 0/0 .text _cutTalk2_Init__18daNpc_Pachi_Taro_cFRCi */
void daNpc_Pachi_Taro_c::_cutTalk2_Init(int const& param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA17AC-80AA17B8 0001A8 000C+00 1/1 0/0 0/0 .rodata          @5713 */
SECTION_RODATA static u8 const lit_5713[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA17AC, &lit_5713);

/* 80AA17B8-80AA17C0 0001B4 0008+00 1/1 0/0 0/0 .rodata          @5714 */
SECTION_RODATA static u8 const lit_5714[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80AA17B8, &lit_5714);

/* 80A9F4EC-80A9F688 00334C 019C+00 2/1 0/0 0/0 .text _cutTalk2_Main__18daNpc_Pachi_Taro_cFRCiRCi
 */
void daNpc_Pachi_Taro_c::_cutTalk2_Main(int const& param_0, int const& param_1) {
    // NONMATCHING
}

/* 80A9F688-80A9F71C 0034E8 0094+00 1/0 0/0 0/0 .text cut1stHit_KakasiBody__18daNpc_Pachi_Taro_cFi
 */
void daNpc_Pachi_Taro_c::cut1stHit_KakasiBody(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA17C0-80AA17CC 0001BC 000C+00 0/1 0/0 0/0 .rodata          @5757 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5757[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA17C0, &lit_5757);
#pragma pop

/* 80AA17CC-80AA17D8 0001C8 000C+00 0/1 0/0 0/0 .rodata          sHitMsg$5762 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const sHitMsg[12] = {
    0x00, 0x00, 0x00, 0x48, 0x00, 0x00, 0x00, 0x4A, 0x00, 0x00, 0x00, 0x49,
};
COMPILER_STRIP_GATE(0x80AA17CC, &sHitMsg);
#pragma pop

/* 80A9F71C-80A9F83C 00357C 0120+00 1/1 0/0 0/0 .text
 * _cut1stHit_KakasiBody_Init__18daNpc_Pachi_Taro_cFRCi         */
void daNpc_Pachi_Taro_c::_cut1stHit_KakasiBody_Init(int const& param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA17D8-80AA17E4 0001D4 000C+00 0/1 0/0 0/0 .rodata          @5779 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5779[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA17D8, &lit_5779);
#pragma pop

/* 80A9F83C-80A9F9C4 00369C 0188+00 1/1 0/0 0/0 .text
 * _cut1stHit_KakasiBody_Main__18daNpc_Pachi_Taro_cFRCi         */
void daNpc_Pachi_Taro_c::_cut1stHit_KakasiBody_Main(int const& param_0) {
    // NONMATCHING
}

/* 80A9F9C4-80A9FA58 003824 0094+00 1/0 0/0 0/0 .text
 * cutTutrialSelectGiveUp__18daNpc_Pachi_Taro_cFi               */
void daNpc_Pachi_Taro_c::cutTutrialSelectGiveUp(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA17E4-80AA17F0 0001E0 000C+00 1/1 0/0 0/0 .rodata          @5826 */
SECTION_RODATA static u8 const lit_5826[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA17E4, &lit_5826);

/* 80A9FA58-80A9FB08 0038B8 00B0+00 1/1 0/0 0/0 .text
 * _cutTutrialSelectGiveUp_Init__18daNpc_Pachi_Taro_cFRCi       */
void daNpc_Pachi_Taro_c::_cutTutrialSelectGiveUp_Init(int const& param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA17F0-80AA17FC 0001EC 000C+00 1/1 0/0 0/0 .rodata          @5837 */
SECTION_RODATA static u8 const lit_5837[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA17F0, &lit_5837);

/* 80A9FB08-80A9FCEC 003968 01E4+00 1/1 0/0 0/0 .text
 * _cutTutrialSelectGiveUp_Main__18daNpc_Pachi_Taro_cFRCi       */
void daNpc_Pachi_Taro_c::_cutTutrialSelectGiveUp_Main(int const& param_0) {
    // NONMATCHING
}

/* 80A9FCEC-80A9FD80 003B4C 0094+00 1/0 0/0 0/0 .text cutTutrialGiveUp__18daNpc_Pachi_Taro_cFi */
void daNpc_Pachi_Taro_c::cutTutrialGiveUp(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA17FC-80AA1808 0001F8 000C+00 1/1 0/0 0/0 .rodata          @5892 */
SECTION_RODATA static u8 const lit_5892[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA17FC, &lit_5892);

/* 80A9FD80-80A9FE34 003BE0 00B4+00 1/1 0/0 0/0 .text
 * _cutTutrialGiveUp_Init__18daNpc_Pachi_Taro_cFRCi             */
void daNpc_Pachi_Taro_c::_cutTutrialGiveUp_Init(int const& param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80AA1808-80AA1814 000204 000C+00 1/1 0/0 0/0 .rodata          @5903 */
SECTION_RODATA static u8 const lit_5903[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80AA1808, &lit_5903);

/* 80A9FE34-80A9FFAC 003C94 0178+00 1/1 0/0 0/0 .text
 * _cutTutrialGiveUp_Main__18daNpc_Pachi_Taro_cFRCi             */
void daNpc_Pachi_Taro_c::_cutTutrialGiveUp_Main(int const& param_0) {
    // NONMATCHING
}

/* 80A9FFAC-80AA0040 003E0C 0094+00 1/0 0/0 0/0 .text cutTutrialCaution__18daNpc_Pachi_Taro_cFi */
void daNpc_Pachi_Taro_c::cutTutrialCaution(int param_0) {
    // NONMATCHING
}

/* 80AA0040-80AA0088 003EA0 0048+00 1/1 0/0 0/0 .text
 * _cutTutrialCaution_Init__18daNpc_Pachi_Taro_cFRCi            */
void daNpc_Pachi_Taro_c::_cutTutrialCaution_Init(int const& param_0) {
    // NONMATCHING
}

/* 80AA0088-80AA0108 003EE8 0080+00 1/1 0/0 0/0 .text
 * _cutTutrialCaution_Main__18daNpc_Pachi_Taro_cFRCi            */
void daNpc_Pachi_Taro_c::_cutTutrialCaution_Main(int const& param_0) {
    // NONMATCHING
}

/* 80AA0108-80AA019C 003F68 0094+00 1/0 0/0 0/0 .text cutTutrialContinue__18daNpc_Pachi_Taro_cFi
 */
void daNpc_Pachi_Taro_c::cutTutrialContinue(int param_0) {
    // NONMATCHING
}

/* 80AA019C-80AA01A4 003FFC 0008+00 1/1 0/0 0/0 .text
 * _cutTutrialContinue_Init__18daNpc_Pachi_Taro_cFRCi           */
bool daNpc_Pachi_Taro_c::_cutTutrialContinue_Init(int const& param_0) {
    return true;
}

/* 80AA01A4-80AA0258 004004 00B4+00 1/1 0/0 0/0 .text
 * _cutTutrialContinue_Main__18daNpc_Pachi_Taro_cFRCi           */
void daNpc_Pachi_Taro_c::_cutTutrialContinue_Main(int const& param_0) {
    // NONMATCHING
}

/* 80AA0258-80AA0278 0040B8 0020+00 1/0 0/0 0/0 .text            daNpc_Pachi_Taro_Create__FPv */
static void daNpc_Pachi_Taro_Create(void* param_0) {
    // NONMATCHING
}

/* 80AA0278-80AA0298 0040D8 0020+00 1/0 0/0 0/0 .text            daNpc_Pachi_Taro_Delete__FPv */
static void daNpc_Pachi_Taro_Delete(void* param_0) {
    // NONMATCHING
}

/* 80AA0298-80AA02B8 0040F8 0020+00 1/0 0/0 0/0 .text            daNpc_Pachi_Taro_Execute__FPv */
static void daNpc_Pachi_Taro_Execute(void* param_0) {
    // NONMATCHING
}

/* 80AA02B8-80AA02D8 004118 0020+00 1/0 0/0 0/0 .text            daNpc_Pachi_Taro_Draw__FPv */
static void daNpc_Pachi_Taro_Draw(void* param_0) {
    // NONMATCHING
}

/* 80AA02D8-80AA02E0 004138 0008+00 1/0 0/0 0/0 .text            daNpc_Pachi_Taro_IsDelete__FPv */
static bool daNpc_Pachi_Taro_IsDelete(void* param_0) {
    return true;
}

/* 80AA02E0-80AA0310 004140 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80AA0310-80AA0358 004170 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AA0358-80AA06E0 0041B8 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80AA06E0-80AA071C 004540 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80AA071C-80AA0758 00457C 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80AA0758-80AA07A0 0045B8 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80AA07A0-80AA07DC 004600 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80AA07DC-80AA0824 00463C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80AA0824-80AA086C 004684 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80AA086C-80AA0C70 0046CC 0404+00 1/1 0/0 0/0 .text
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

/* 80AA0C70-80AA0C74 004AD0 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80AA0C74-80AA0D70 004AD4 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80AA0D70-80AA0D74 004BD0 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80AA0D74-80AA0DBC 004BD4 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80AA0DBC-80AA0E2C 004C1C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80AA0E2C-80AA0E88 004C8C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80AA0E88-80AA0EF8 004CE8 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80AA0EF8-80AA0F40 004D58 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80AA0F40-80AA105C 004DA0 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80AA105C-80AA1264 004EBC 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80AA1264-80AA1268 0050C4 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80AA1278-80AA1280 0050D8 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80AA1280-80AA1288 0050E0 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80AA128C-80AA1294 0050EC 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80AA1294-80AA12AC 0050F4 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80AA12AC-80AA12B0 00510C 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80AA12B0-80AA12B8 005110 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80AA12B8-80AA12C0 005118 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80AA12C0-80AA12F0 005120 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80AA12F0-80AA1320 005150 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80AA1320-80AA1324 005180 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AA1324-80AA1328 005184 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AA1328-80AA132C 005188 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80AA132C-80AA1330 00518C 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 80AA2B74-80AA2B80 001248 000C+00 2/2 0/0 0/0 .data            __vt__24daNpc_Pachi_Taro_Param_c */
SECTION_DATA extern void* __vt__24daNpc_Pachi_Taro_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__24daNpc_Pachi_Taro_Param_cFv,
};

/* 80AA2B88-80AA2B94 000008 000C+00 1/1 0/0 0/0 .bss             @3989 */
static u8 lit_3989[12];

/* 80AA2B94-80AA2B98 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80AA1330-80AA148C 005190 015C+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_pachi_taro_cpp */
void __sinit_d_a_npc_pachi_taro_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80AA1330, __sinit_d_a_npc_pachi_taro_cpp);
#pragma pop

/* 80AA148C-80AA1558 0052EC 00CC+00 1/1 0/0 0/0 .text
 * __ct__18daNpc_Pachi_Taro_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Pachi_Taro_c::daNpc_Pachi_Taro_c(
    daNpcT_faceMotionAnmData_c const* param_0, daNpcT_motionAnmData_c const* param_1,
    daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
    daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
    daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80AA1558-80AA1560 0053B8 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__18daNpc_Pachi_Taro_cFv
 */
u16 daNpc_Pachi_Taro_c::getEyeballMaterialNo() {
    return 2;
}

/* 80AA1560-80AA1568 0053C0 0008+00 1/0 0/0 0/0 .text getHeadJointNo__18daNpc_Pachi_Taro_cFv */
s32 daNpc_Pachi_Taro_c::getHeadJointNo() {
    return 4;
}

/* 80AA1568-80AA1570 0053C8 0008+00 1/0 0/0 0/0 .text getNeckJointNo__18daNpc_Pachi_Taro_cFv */
s32 daNpc_Pachi_Taro_c::getNeckJointNo() {
    return 3;
}

/* 80AA1570-80AA1578 0053D0 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__18daNpc_Pachi_Taro_cFv
 */
bool daNpc_Pachi_Taro_c::getBackboneJointNo() {
    return true;
}

/* 80AA1578-80AA1588 0053D8 0010+00 1/0 0/0 0/0 .text checkChangeJoint__18daNpc_Pachi_Taro_cFi */
void daNpc_Pachi_Taro_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80AA1588-80AA1598 0053E8 0010+00 1/0 0/0 0/0 .text checkRemoveJoint__18daNpc_Pachi_Taro_cFi */
void daNpc_Pachi_Taro_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80AA1598-80AA15E0 0053F8 0048+00 2/1 0/0 0/0 .text            __dt__24daNpc_Pachi_Taro_Param_cFv
 */
daNpc_Pachi_Taro_Param_c::~daNpc_Pachi_Taro_Param_c() {
    // NONMATCHING
}

/* 80AA15E0-80AA15E8 005440 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80AA15E0() {
    // NONMATCHING
}

/* 80AA15E8-80AA15F0 005448 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80AA15E8() {
    // NONMATCHING
}

/* 80AA1814-80AA1814 000210 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
