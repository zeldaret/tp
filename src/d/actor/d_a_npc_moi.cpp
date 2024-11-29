/**
 * @file d_a_npc_moi.cpp
 * 
*/

#include "d/actor/d_a_npc_moi.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__11daNpc_Moi_cFv();
extern "C" void create__11daNpc_Moi_cFv();
extern "C" void CreateHeap__11daNpc_Moi_cFv();
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
extern "C" void Delete__11daNpc_Moi_cFv();
extern "C" void Execute__11daNpc_Moi_cFv();
extern "C" void Draw__11daNpc_Moi_cFv();
extern "C" void createHeapCallBack__11daNpc_Moi_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_Moi_cFP8J3DJointi();
extern "C" void getType__11daNpc_Moi_cFv();
extern "C" void isDelete__11daNpc_Moi_cFv();
extern "C" void reset__11daNpc_Moi_cFv();
extern "C" void chkMoiN__11daNpc_Moi_cFv();
extern "C" void afterJntAnm__11daNpc_Moi_cFi();
extern "C" void setParam__11daNpc_Moi_cFv();
extern "C" void checkChangeEvt__11daNpc_Moi_cFv();
extern "C" void setAfterTalkMotion__11daNpc_Moi_cFv();
extern "C" void srchActors__11daNpc_Moi_cFv();
extern "C" void evtTalk__11daNpc_Moi_cFv();
extern "C" void evtCutProc__11daNpc_Moi_cFv();
extern "C" void action__11daNpc_Moi_cFv();
extern "C" void beforeMove__11daNpc_Moi_cFv();
extern "C" void setAttnPos__11daNpc_Moi_cFv();
extern "C" void setCollision__11daNpc_Moi_cFv();
extern "C" bool drawDbgInfo__11daNpc_Moi_cFv();
extern "C" void drawOtherMdl__11daNpc_Moi_cFv();
extern "C" void afterSetMotionAnm__11daNpc_Moi_cFiifi();
extern "C" void changeAnm__11daNpc_Moi_cFPiPi();
extern "C" void changeBck__11daNpc_Moi_cFPiPi();
extern "C" void changeBtp__11daNpc_Moi_cFPiPi();
extern "C" void changeBtk__11daNpc_Moi_cFPiPi();
extern "C" void selectAction__11daNpc_Moi_cFv();
extern "C" void chkAction__11daNpc_Moi_cFM11daNpc_Moi_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_Moi_cFM11daNpc_Moi_cFPCvPvPv_i();
extern "C" void chkPlayerGetWoodShield__11daNpc_Moi_cFv();
extern "C" void setSSlash__11daNpc_Moi_cFi();
extern "C" void chkPullOutSw__11daNpc_Moi_cFv();
extern "C" void pullOutSw__11daNpc_Moi_cFv();
extern "C" void chkSetInSw__11daNpc_Moi_cFv();
extern "C" void setInSw__11daNpc_Moi_cFv();
extern "C" void setSwAT__11daNpc_Moi_cFv();
extern "C" void torch__11daNpc_Moi_cFv();
extern "C" void injuryCheck__11daNpc_Moi_cFv();
extern "C" void injuryTurn__11daNpc_Moi_cF4cXyz();
extern "C" void injuryWalk__11daNpc_Moi_cFv();
extern "C" void poise__11daNpc_Moi_cFv();
extern "C" void getDistTable__12dAttention_cFi();
extern "C" void cutDeliveredSw__11daNpc_Moi_cFi();
extern "C" void cutAppearanceMoi__11daNpc_Moi_cFi();
extern "C" void cutConversationWithUri__11daNpc_Moi_cFi();
extern "C" void cutFindWolf__11daNpc_Moi_cFi();
extern "C" void wait__11daNpc_Moi_cFPv();
extern "C" void walk__11daNpc_Moi_cFPv();
extern "C" void walkOnEggshell__11daNpc_Moi_cFPv();
extern "C" void rest__11daNpc_Moi_cFPv();
extern "C" void talk__11daNpc_Moi_cFPv();
extern "C" static void daNpc_Moi_Create__FPv();
extern "C" static void daNpc_Moi_Delete__FPv();
extern "C" static void daNpc_Moi_Execute__FPv();
extern "C" static void daNpc_Moi_Draw__FPv();
extern "C" static bool daNpc_Moi_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__8daNpcT_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__13daNpcT_Path_cFv();
extern "C" void __ct__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void
__ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
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
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void func_80A7AB64(void* _this, int*);
extern "C" void func_80A7AB80(void* _this, f32, f32);
extern "C" void __sinit_d_a_npc_moi_cpp();
extern "C" void
__ct__11daNpc_Moi_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __ct__5csXyzFv();
extern "C" void getEyeballMaterialNo__11daNpc_Moi_cFv();
extern "C" s32 getHeadJointNo__11daNpc_Moi_cFv();
extern "C" s32 getNeckJointNo__11daNpc_Moi_cFv();
extern "C" bool getBackboneJointNo__11daNpc_Moi_cFv();
extern "C" void checkChangeJoint__11daNpc_Moi_cFi();
extern "C" void checkRemoveJoint__11daNpc_Moi_cFi();
extern "C" s32 getFootLJointNo__11daNpc_Moi_cFv();
extern "C" s32 getFootRJointNo__11daNpc_Moi_cFv();
extern "C" void __dt__17daNpc_Moi_Param_cFv();
extern "C" static void func_80A7AECC();
extern "C" static void func_80A7AED4();
extern "C" u8 const m__17daNpc_Moi_Param_c[188];
extern "C" extern char const* const d_a_npc_moi__stringBase0;
extern "C" void* mCutNameList__11daNpc_Moi_c[5];
extern "C" u8 mCutList__11daNpc_Moi_c[60];

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
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_SearchByID__FUiPP10fopAc_ac_c();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void isFirstBit__21dSv_player_get_item_cCFUc();
extern "C" void offEventBit__11dSv_event_cFUs();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setPt2__14dEvt_control_cFPv();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void init__7dPaPo_cFP9dBgS_Acchff();
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
extern "C" void GetAc__22dCcD_GAtTgCoCommonBaseFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void initialize__18daNpcT_ActorMngr_cFv();
extern "C" void entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcT_ActorMngr_cFv();
extern "C" void getActorP__18daNpcT_ActorMngr_cFv();
extern "C" void initialize__15daNpcT_MatAnm_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void checkEndSequence__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__13daNpcT_Path_cFv();
extern "C" void setPathInfo__13daNpcT_Path_cFUcScUc();
extern "C" void reverse__13daNpcT_Path_cFv();
extern "C" void setNextIdx__13daNpcT_Path_cFi();
extern "C" void getDstPosH__13daNpcT_Path_cF4cXyzP4cXyzii();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
extern "C" void setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz();
extern "C" void calcJntRad__15daNpcT_JntAnm_cFfff();
extern "C" void setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs();
extern "C" void calc__19daNpcT_DmgStagger_cFi();
extern "C" void tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void getTrnsfrmAnmP__8daNpcT_cFPCci();
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
extern "C" void turn__8daNpcT_cFsii();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void calcSpeedAndAngle__8daNpcT_cF4cXyziss();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_onEvtBit__FUl();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_onTmpBit__FUl();
extern "C" void daNpcF_onTmpBit__FUl();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_plight_cut__FP15LIGHT_INFLUENCE();
extern "C" void dKy_BossLight_set__FP4cXyzP8_GXColorfUc();
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
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
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
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" u8 dist_table__12dAttention_c[6552];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcT_c[68];
extern "C" u8 mCcDSph__8daNpcT_c[64];
extern "C" extern void* __vt__8daNpcT_c[49];
extern "C" extern void* __vt__15daNpcT_MatAnm_c[4 + 1 /* padding */];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" extern u8 g_Counter[12 + 4 /* padding */];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80A7B0D8-80A7B0D8 0001E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A7B0D8 = "";
SECTION_DEAD static char const* const stringBase_80A7B0D9 = "DEFAULT_GETITEM";
SECTION_DEAD static char const* const stringBase_80A7B0E9 = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80A7B0F5 = "DELIVERED_SW";
SECTION_DEAD static char const* const stringBase_80A7B102 = "Moi";
SECTION_DEAD static char const* const stringBase_80A7B106 = "Moi1";
SECTION_DEAD static char const* const stringBase_80A7B10B = "Moi2";
SECTION_DEAD static char const* const stringBase_80A7B110 = "Moi3";
SECTION_DEAD static char const* const stringBase_80A7B115 = "Moi_p1";
SECTION_DEAD static char const* const stringBase_80A7B11C = "APPEARANCE_MOI";
SECTION_DEAD static char const* const stringBase_80A7B12B = "CONVERSATION_WITH_URI";
SECTION_DEAD static char const* const stringBase_80A7B141 = "FIND_WOLF";
#pragma pop

/* 80A7B15C-80A7B168 000000 000C+00 3/3 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A7B168-80A7B17C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80A7B17C-80A7B1BC 000020 0040+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[64] = {
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x03,
};

/* 80A7B1BC-80A7B1DC -00001 0020+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[8] = {
    (void*)&d_a_npc_moi__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_moi__stringBase0) + 0x1),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_moi__stringBase0) + 0x11),
    (void*)NULL,
    (void*)(((char*)&d_a_npc_moi__stringBase0) + 0x1D),
    (void*)0x00000002,
};
#pragma pop

/* 80A7B1DC-80A7B1F4 -00001 0018+00 5/6 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[6] = {
    (void*)&d_a_npc_moi__stringBase0,
    (void*)(((char*)&d_a_npc_moi__stringBase0) + 0x2A),
    (void*)(((char*)&d_a_npc_moi__stringBase0) + 0x2E),
    (void*)(((char*)&d_a_npc_moi__stringBase0) + 0x33),
    (void*)(((char*)&d_a_npc_moi__stringBase0) + 0x38),
    (void*)(((char*)&d_a_npc_moi__stringBase0) + 0x3D),
};

/* 80A7B1F4-80A7B1F8 000098 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u8 l_loadResPtrn0[3 + 1 /* padding */] = {
    0x01,
    0x02,
    0xFF,
    /* padding */
    0x00,
};

/* 80A7B1F8-80A7B1FC 00009C 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u8 l_loadResPtrn1[3 + 1 /* padding */] = {
    0x01,
    0x03,
    0xFF,
    /* padding */
    0x00,
};

/* 80A7B1FC-80A7B200 0000A0 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn3 */
SECTION_DATA static u32 l_loadResPtrn3 = 0x010304FF;

/* 80A7B200-80A7B204 0000A4 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn4 */
SECTION_DATA static u8 l_loadResPtrn4[3 + 1 /* padding */] = {
    0x01,
    0x05,
    0xFF,
    /* padding */
    0x00,
};

/* 80A7B204-80A7B20C 0000A8 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn9 */
SECTION_DATA static u8 l_loadResPtrn9[5 + 3 /* padding */] = {
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

/* 80A7B20C-80A7B228 -00001 001C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[7] = {
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn4, (void*)&l_loadResPtrn1, (void*)&l_loadResPtrn3,
    (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn0, (void*)&l_loadResPtrn9,
};

/* 80A7B228-80A7B458 0000CC 0230+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[560] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x28,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x29,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x2E,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x2C,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A7B458-80A7B82C 0002FC 03D4+00 3/4 0/0 0/0 .data            l_motionAnmData */
SECTION_DATA static u8 l_motionAnmData[980] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x23,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00,
};

/* 80A7B82C-80A7B98C 0006D0 0160+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[352] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x0C, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x0D, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x0E, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x09, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x0A, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0x00, 0x10, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A7B98C-80A7BC9C 000830 0310+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[784] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0x00, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x01, 0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x01, 0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0x00, 0x05, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x16, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x19, 0xFF, 0x01, 0x00, 0x16, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1B, 0x00, 0x01, 0x00, 0x1D, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x01, 0x00, 0x0E, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x17, 0xFF, 0x01, 0x00, 0x16, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x01, 0x00, 0x0E, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x01, 0x00, 0x0E, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x21, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1F, 0xFF, 0x01, 0x00, 0x20, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x20, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x15, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1A, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x19, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x18, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1E, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0x04, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A7BC9C-80A7BCB0 -00001 0014+00 1/1 0/0 0/0 .data            mCutNameList__11daNpc_Moi_c */
SECTION_DATA void* daNpc_Moi_c::mCutNameList[5] = {
    (void*)&d_a_npc_moi__stringBase0,
    (void*)(((char*)&d_a_npc_moi__stringBase0) + 0x1D),
    (void*)(((char*)&d_a_npc_moi__stringBase0) + 0x44),
    (void*)(((char*)&d_a_npc_moi__stringBase0) + 0x53),
    (void*)(((char*)&d_a_npc_moi__stringBase0) + 0x69),
};

/* 80A7BCB0-80A7BCBC -00001 000C+00 0/1 0/0 0/0 .data            @3835 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3835[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutDeliveredSw__11daNpc_Moi_cFi,
};
#pragma pop

/* 80A7BCBC-80A7BCC8 -00001 000C+00 0/1 0/0 0/0 .data            @3836 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3836[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutAppearanceMoi__11daNpc_Moi_cFi,
};
#pragma pop

/* 80A7BCC8-80A7BCD4 -00001 000C+00 0/1 0/0 0/0 .data            @3837 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3837[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationWithUri__11daNpc_Moi_cFi,
};
#pragma pop

/* 80A7BCD4-80A7BCE0 -00001 000C+00 0/1 0/0 0/0 .data            @3838 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3838[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutFindWolf__11daNpc_Moi_cFi,
};
#pragma pop

/* 80A7BCE0-80A7BD1C 000B84 003C+00 1/2 0/0 0/0 .data            mCutList__11daNpc_Moi_c */
SECTION_DATA u8 daNpc_Moi_c::mCutList[60] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A7BD1C-80A7BD28 -00001 000C+00 1/1 0/0 0/0 .data            @4818 */
SECTION_DATA static void* lit_4818[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Moi_cFPv,
};

/* 80A7BD28-80A7BD50 -00001 0028+00 1/1 0/0 0/0 .data            @4863 */
SECTION_DATA static void* lit_4863[10] = {
    (void*)(((char*)setAfterTalkMotion__11daNpc_Moi_cFv) + 0x6C),
    (void*)(((char*)setAfterTalkMotion__11daNpc_Moi_cFv) + 0x40),
    (void*)(((char*)setAfterTalkMotion__11daNpc_Moi_cFv) + 0x48),
    (void*)(((char*)setAfterTalkMotion__11daNpc_Moi_cFv) + 0x50),
    (void*)(((char*)setAfterTalkMotion__11daNpc_Moi_cFv) + 0x58),
    (void*)(((char*)setAfterTalkMotion__11daNpc_Moi_cFv) + 0x60),
    (void*)(((char*)setAfterTalkMotion__11daNpc_Moi_cFv) + 0x6C),
    (void*)(((char*)setAfterTalkMotion__11daNpc_Moi_cFv) + 0x6C),
    (void*)(((char*)setAfterTalkMotion__11daNpc_Moi_cFv) + 0x6C),
    (void*)(((char*)setAfterTalkMotion__11daNpc_Moi_cFv) + 0x68),
};

/* 80A7BD50-80A7BD5C -00001 000C+00 1/1 0/0 0/0 .data            @4883 */
SECTION_DATA static void* lit_4883[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Moi_cFPv,
};

/* 80A7BD5C-80A7BD68 -00001 000C+00 1/1 0/0 0/0 .data            @4888 */
SECTION_DATA static void* lit_4888[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Moi_cFPv,
};

/* 80A7BD68-80A7BD74 -00001 000C+00 1/1 0/0 0/0 .data            @5142 */
SECTION_DATA static void* lit_5142[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rest__11daNpc_Moi_cFPv,
};

/* 80A7BD74-80A7BD80 -00001 000C+00 0/1 0/0 0/0 .data            @5368 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5368[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walkOnEggshell__11daNpc_Moi_cFPv,
};
#pragma pop

/* 80A7BD80-80A7BD8C -00001 000C+00 0/1 0/0 0/0 .data            @5370 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5370[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_Moi_cFPv,
};
#pragma pop

/* 80A7BD8C-80A7BD98 -00001 000C+00 0/1 0/0 0/0 .data            @5372 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5372[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)rest__11daNpc_Moi_cFPv,
};
#pragma pop

/* 80A7BD98-80A7BDA4 -00001 000C+00 0/1 0/0 0/0 .data            @5374 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5374[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)walk__11daNpc_Moi_cFPv,
};
#pragma pop

/* 80A7BDA4-80A7BDB0 -00001 000C+00 0/1 0/0 0/0 .data            @5376 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5376[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_Moi_cFPv,
};
#pragma pop

/* 80A7BDB0-80A7BDCC -00001 001C+00 1/1 0/0 0/0 .data            @6275 */
SECTION_DATA static void* lit_6275[7] = {
    (void*)(((char*)cutAppearanceMoi__11daNpc_Moi_cFi) + 0x2CC),
    (void*)(((char*)cutAppearanceMoi__11daNpc_Moi_cFi) + 0x13C),
    (void*)(((char*)cutAppearanceMoi__11daNpc_Moi_cFi) + 0x164),
    (void*)(((char*)cutAppearanceMoi__11daNpc_Moi_cFi) + 0x1D0),
    (void*)(((char*)cutAppearanceMoi__11daNpc_Moi_cFi) + 0x258),
    (void*)(((char*)cutAppearanceMoi__11daNpc_Moi_cFi) + 0x2CC),
    (void*)(((char*)cutAppearanceMoi__11daNpc_Moi_cFi) + 0x2C4),
};

/* 80A7BDCC-80A7BDEC -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Moi_MethodTable */
static actor_method_class daNpc_Moi_MethodTable = {
    (process_method_func)daNpc_Moi_Create__FPv,
    (process_method_func)daNpc_Moi_Delete__FPv,
    (process_method_func)daNpc_Moi_Execute__FPv,
    (process_method_func)daNpc_Moi_IsDelete__FPv,
    (process_method_func)daNpc_Moi_Draw__FPv,
};

/* 80A7BDEC-80A7BE1C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_MOI */
extern actor_process_profile_definition g_profile_NPC_MOI = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_MOI,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpc_Moi_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  355,                    // mPriority
  &daNpc_Moi_MethodTable, // sub_method
  0x00040107,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80A7BE1C-80A7BE28 000CC0 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80A7BE28-80A7BE34 000CCC 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80A7BE34-80A7BE58 000CD8 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A7AED4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A7AECC,
};

/* 80A7BE58-80A7BE64 000CFC 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80A7BE64-80A7BE70 000D08 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80A7BE70-80A7BE7C 000D14 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80A7BE7C-80A7BE88 000D20 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80A7BE88-80A7BE94 000D2C 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80A7BE94-80A7BEA0 000D38 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80A7BEA0-80A7BEAC 000D44 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80A7BEAC-80A7BEB8 000D50 000C+00 5/5 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80A7BEB8-80A7BEC4 000D5C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80A7BEC4-80A7BED0 000D68 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80A7BED0-80A7BF94 000D74 00C4+00 2/2 0/0 0/0 .data            __vt__11daNpc_Moi_c */
SECTION_DATA extern void* __vt__11daNpc_Moi_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_Moi_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__11daNpc_Moi_cFi,
    (void*)checkRemoveJoint__11daNpc_Moi_cFi,
    (void*)getBackboneJointNo__11daNpc_Moi_cFv,
    (void*)getNeckJointNo__11daNpc_Moi_cFv,
    (void*)getHeadJointNo__11daNpc_Moi_cFv,
    (void*)getFootLJointNo__11daNpc_Moi_cFv,
    (void*)getFootRJointNo__11daNpc_Moi_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__11daNpc_Moi_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__11daNpc_Moi_cFi,
    (void*)setParam__11daNpc_Moi_cFv,
    (void*)checkChangeEvt__11daNpc_Moi_cFv,
    (void*)evtTalk__11daNpc_Moi_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__11daNpc_Moi_cFv,
    (void*)setAfterTalkMotion__11daNpc_Moi_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__11daNpc_Moi_cFv,
    (void*)beforeMove__11daNpc_Moi_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__11daNpc_Moi_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__11daNpc_Moi_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__11daNpc_Moi_cFv,
    (void*)drawOtherMdl__11daNpc_Moi_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__11daNpc_Moi_cFiifi,
    (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__11daNpc_Moi_cFPiPi,
    (void*)changeBck__11daNpc_Moi_cFPiPi,
    (void*)changeBtp__11daNpc_Moi_cFPiPi,
    (void*)changeBtk__11daNpc_Moi_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
};

/* 80A73F4C-80A74150 0000EC 0204+00 1/0 0/0 0/0 .text            __dt__11daNpc_Moi_cFv */
daNpc_Moi_c::~daNpc_Moi_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A7AEF0-80A7AFAC 000000 00BC+00 19/19 0/0 0/0 .rodata          m__17daNpc_Moi_Param_c */
SECTION_RODATA u8 const daNpc_Moi_Param_c::m[188] = {
    0x43, 0x48, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x34, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x43, 0xAF, 0x00, 0x00,
    0x43, 0x96, 0x00, 0x00, 0xC2, 0xC8, 0x00, 0x00, 0x00, 0x5A, 0x00, 0xC8, 0x00, 0xEB, 0x00, 0x7D,
    0x00, 0x00, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x44, 0x7A, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00,
    0xC3, 0x96, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0x42, 0x70, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A7AEF0, &daNpc_Moi_Param_c::m);

/* 80A7AFAC-80A7AFC8 0000BC 001C+00 0/1 0/0 0/0 .rodata          heapSize$4027 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[28] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5C, 0x70, 0x00, 0x00, 0x7C, 0xB0, 0x00, 0x00,
    0x7C, 0xA0, 0x00, 0x00, 0x5C, 0x70, 0x00, 0x00, 0x5C, 0x80, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A7AFAC, &heapSize);
#pragma pop

/* 80A7AFC8-80A7AFCC 0000D8 0004+00 0/1 0/0 0/0 .rodata          @4111 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4111 = -200.0f;
COMPILER_STRIP_GATE(0x80A7AFC8, &lit_4111);
#pragma pop

/* 80A7AFCC-80A7AFD0 0000DC 0004+00 0/1 0/0 0/0 .rodata          @4112 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4112 = -100.0f;
COMPILER_STRIP_GATE(0x80A7AFCC, &lit_4112);
#pragma pop

/* 80A7AFD0-80A7AFD4 0000E0 0004+00 0/1 0/0 0/0 .rodata          @4113 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4113 = 200.0f;
COMPILER_STRIP_GATE(0x80A7AFD0, &lit_4113);
#pragma pop

/* 80A7AFD4-80A7AFD8 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4114 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4114 = 300.0f;
COMPILER_STRIP_GATE(0x80A7AFD4, &lit_4114);
#pragma pop

/* 80A7AFD8-80A7AFDC 0000E8 0004+00 5/21 0/0 0/0 .rodata          @4115 */
SECTION_RODATA static u8 const lit_4115[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A7AFD8, &lit_4115);

/* 80A7AFDC-80A7AFE0 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4116 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4116 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80A7AFDC, &lit_4116);
#pragma pop

/* 80A74150-80A74474 0002F0 0324+00 1/1 0/0 0/0 .text            create__11daNpc_Moi_cFv */
void daNpc_Moi_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A7AFE0-80A7AFE4 0000F0 0004+00 0/2 0/0 0/0 .rodata          @4323 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4323 = 65536.0f;
COMPILER_STRIP_GATE(0x80A7AFE0, &lit_4323);
#pragma pop

/* 80A7AFE4-80A7AFE8 0000F4 0004+00 0/3 0/0 0/0 .rodata          @4324 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4324 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A7AFE4, &lit_4324);
#pragma pop

/* 80A7AFE8-80A7B000 0000F8 0018+00 0/1 0/0 0/0 .rodata          bmdTypeList$4435 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const bmdTypeList[24] = {
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x05,
};
COMPILER_STRIP_GATE(0x80A7AFE8, &bmdTypeList);
#pragma pop

/* 80A7B000-80A7B004 000110 0004+00 1/4 0/0 0/0 .rodata          @4511 */
SECTION_RODATA static f32 const lit_4511 = 1.0f;
COMPILER_STRIP_GATE(0x80A7B000, &lit_4511);

/* 80A74474-80A7483C 000614 03C8+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_Moi_cFv */
void daNpc_Moi_c::CreateHeap() {
    // NONMATCHING
}

/* 80A7483C-80A74878 0009DC 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A74878-80A74890 000A18 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A74890-80A748CC 000A30 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A748CC-80A748E4 000A6C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A748E4-80A7492C 000A84 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A7492C-80A74950 000ACC 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A74950-80A7498C 000AF0 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A7498C-80A749A4 000B2C 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A749A4-80A749E0 000B44 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A749E0-80A749F8 000B80 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A749F8-80A74A2C 000B98 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_Moi_cFv */
void daNpc_Moi_c::Delete() {
    // NONMATCHING
}

/* 80A74A2C-80A74A4C 000BCC 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_Moi_cFv */
void daNpc_Moi_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A7B004-80A7B008 000114 0004+00 1/1 0/0 0/0 .rodata          @4573 */
SECTION_RODATA static f32 const lit_4573 = 100.0f;
COMPILER_STRIP_GATE(0x80A7B004, &lit_4573);

/* 80A74A4C-80A74B80 000BEC 0134+00 1/1 0/0 0/0 .text            Draw__11daNpc_Moi_cFv */
void daNpc_Moi_c::Draw() {
    // NONMATCHING
}

/* 80A74B80-80A74BA0 000D20 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_Moi_cFP10fopAc_ac_c              */
void daNpc_Moi_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A74BA0-80A74BF8 000D40 0058+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpc_Moi_cFP8J3DJointi
 */
void daNpc_Moi_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80A74BF8-80A74C6C 000D98 0074+00 1/1 0/0 0/0 .text            getType__11daNpc_Moi_cFv */
void daNpc_Moi_c::getType() {
    // NONMATCHING
}

/* 80A74C6C-80A74D8C 000E0C 0120+00 1/1 0/0 0/0 .text            isDelete__11daNpc_Moi_cFv */
void daNpc_Moi_c::isDelete() {
    // NONMATCHING
}

/* 80A74D8C-80A7513C 000F2C 03B0+00 1/1 0/0 0/0 .text            reset__11daNpc_Moi_cFv */
void daNpc_Moi_c::reset() {
    // NONMATCHING
}

/* 80A7513C-80A75160 0012DC 0024+00 4/4 0/0 0/0 .text            chkMoiN__11daNpc_Moi_cFv */
void daNpc_Moi_c::chkMoiN() {
    // NONMATCHING
}

/* 80A75160-80A751E4 001300 0084+00 1/0 0/0 0/0 .text            afterJntAnm__11daNpc_Moi_cFi */
void daNpc_Moi_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A7B008-80A7B00C 000118 0004+00 0/1 0/0 0/0 .rodata          @4809 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4809 = 135.0f;
COMPILER_STRIP_GATE(0x80A7B008, &lit_4809);
#pragma pop

/* 80A7B00C-80A7B010 00011C 0004+00 0/1 0/0 0/0 .rodata          @4810 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4810 = 600.0f;
COMPILER_STRIP_GATE(0x80A7B00C, &lit_4810);
#pragma pop

/* 80A7B010-80A7B014 000120 0004+00 0/1 0/0 0/0 .rodata          @4811 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4811 = 800.0f;
COMPILER_STRIP_GATE(0x80A7B010, &lit_4811);
#pragma pop

/* 80A751E4-80A75460 001384 027C+00 1/0 0/0 0/0 .text            setParam__11daNpc_Moi_cFv */
void daNpc_Moi_c::setParam() {
    // NONMATCHING
}

/* 80A75460-80A75514 001600 00B4+00 1/0 0/0 0/0 .text            checkChangeEvt__11daNpc_Moi_cFv */
void daNpc_Moi_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A7B014-80A7B018 000124 0004+00 3/9 0/0 0/0 .rodata          @4862 */
SECTION_RODATA static f32 const lit_4862 = -1.0f;
COMPILER_STRIP_GATE(0x80A7B014, &lit_4862);

/* 80A75514-80A755C8 0016B4 00B4+00 2/0 0/0 0/0 .text            setAfterTalkMotion__11daNpc_Moi_cFv
 */
void daNpc_Moi_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80A755C8-80A75664 001768 009C+00 1/1 0/0 0/0 .text            srchActors__11daNpc_Moi_cFv */
void daNpc_Moi_c::srchActors() {
    // NONMATCHING
}

/* 80A75664-80A75704 001804 00A0+00 1/0 0/0 0/0 .text            evtTalk__11daNpc_Moi_cFv */
void daNpc_Moi_c::evtTalk() {
    // NONMATCHING
}

/* 80A75704-80A757CC 0018A4 00C8+00 1/0 0/0 0/0 .text            evtCutProc__11daNpc_Moi_cFv */
void daNpc_Moi_c::evtCutProc() {
    // NONMATCHING
}

/* 80A757CC-80A759F4 00196C 0228+00 1/0 0/0 0/0 .text            action__11daNpc_Moi_cFv */
void daNpc_Moi_c::action() {
    // NONMATCHING
}

/* 80A759F4-80A75AB8 001B94 00C4+00 1/0 0/0 0/0 .text            beforeMove__11daNpc_Moi_cFv */
void daNpc_Moi_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A7B018-80A7B01C 000128 0004+00 0/1 0/0 0/0 .rodata          @5053 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5053 = -30.0f;
COMPILER_STRIP_GATE(0x80A7B018, &lit_5053);
#pragma pop

/* 80A7B01C-80A7B020 00012C 0004+00 0/2 0/0 0/0 .rodata          @5054 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5054 = 10.0f;
COMPILER_STRIP_GATE(0x80A7B01C, &lit_5054);
#pragma pop

/* 80A7B020-80A7B024 000130 0004+00 0/1 0/0 0/0 .rodata          @5055 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5055 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80A7B020, &lit_5055);
#pragma pop

/* 80A7B024-80A7B028 000134 0004+00 0/1 0/0 0/0 .rodata          @5056 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5056 = 140.0f;
COMPILER_STRIP_GATE(0x80A7B024, &lit_5056);
#pragma pop

/* 80A7B028-80A7B02C 000138 0004+00 0/1 0/0 0/0 .rodata          @5057 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5057 = -60.0f;
COMPILER_STRIP_GATE(0x80A7B028, &lit_5057);
#pragma pop

/* 80A7B02C-80A7B030 00013C 0004+00 0/2 0/0 0/0 .rodata          @5058 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5058 = 40.0f;
COMPILER_STRIP_GATE(0x80A7B02C, &lit_5058);
#pragma pop

/* 80A7B030-80A7B038 000140 0004+04 0/1 0/0 0/0 .rodata          @5059 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5059[1 + 1 /* padding */] = {
    230.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80A7B030, &lit_5059);
#pragma pop

/* 80A7B038-80A7B040 000148 0008+00 1/6 0/0 0/0 .rodata          @5061 */
SECTION_RODATA static u8 const lit_5061[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A7B038, &lit_5061);

/* 80A75AB8-80A75E68 001C58 03B0+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_Moi_cFv */
void daNpc_Moi_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A7B040-80A7B048 000150 0008+00 0/2 0/0 0/0 .rodata          @5119 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5119[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A7B040, &lit_5119);
#pragma pop

/* 80A7B048-80A7B050 000158 0008+00 0/2 0/0 0/0 .rodata          @5120 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5120[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A7B048, &lit_5120);
#pragma pop

/* 80A7B050-80A7B058 000160 0008+00 0/3 0/0 0/0 .rodata          @5121 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5121[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A7B050, &lit_5121);
#pragma pop

/* 80A7B058-80A7B05C 000168 0004+00 0/1 0/0 0/0 .rodata          @5203 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5203 = 60.0f;
COMPILER_STRIP_GATE(0x80A7B058, &lit_5203);
#pragma pop

/* 80A7B05C-80A7B060 00016C 0004+00 0/1 0/0 0/0 .rodata          @5204 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5204 = 80.0f;
COMPILER_STRIP_GATE(0x80A7B05C, &lit_5204);
#pragma pop

/* 80A7B060-80A7B064 000170 0004+00 0/1 0/0 0/0 .rodata          @5205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5205 = 50.0f;
COMPILER_STRIP_GATE(0x80A7B060, &lit_5205);
#pragma pop

/* 80A7B064-80A7B068 000174 0004+00 0/1 0/0 0/0 .rodata          @5206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5206 = -70.0f;
COMPILER_STRIP_GATE(0x80A7B064, &lit_5206);
#pragma pop

/* 80A75E68-80A760E0 002008 0278+00 1/0 0/0 0/0 .text            setCollision__11daNpc_Moi_cFv */
void daNpc_Moi_c::setCollision() {
    // NONMATCHING
}

/* 80A760E0-80A760E8 002280 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_Moi_cFv */
bool daNpc_Moi_c::drawDbgInfo() {
    return false;
}

/* ############################################################################################## */
/* 80A7B068-80A7B080 000178 0018+00 1/1 0/0 0/0 .rodata          jointNo$5214 */
SECTION_RODATA static u8 const jointNo[24] = {
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x17,
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x0C,
};
COMPILER_STRIP_GATE(0x80A7B068, &jointNo);

/* 80A760E8-80A762A8 002288 01C0+00 1/0 0/0 0/0 .text            drawOtherMdl__11daNpc_Moi_cFv */
void daNpc_Moi_c::drawOtherMdl() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A7B080-80A7B084 000190 0004+00 1/1 0/0 0/0 .rodata          @5309 */
SECTION_RODATA static f32 const lit_5309 = 2.0f;
COMPILER_STRIP_GATE(0x80A7B080, &lit_5309);

/* 80A762A8-80A762CC 002448 0024+00 1/0 0/0 0/0 .text afterSetMotionAnm__11daNpc_Moi_cFiifi */
void daNpc_Moi_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
    // NONMATCHING
}

/* 80A762CC-80A7633C 00246C 0070+00 1/0 0/0 0/0 .text            changeAnm__11daNpc_Moi_cFPiPi */
void daNpc_Moi_c::changeAnm(int* param_0, int* param_1) {
    // NONMATCHING
}

/* 80A7633C-80A76384 0024DC 0048+00 1/0 0/0 0/0 .text            changeBck__11daNpc_Moi_cFPiPi */
void daNpc_Moi_c::changeBck(int* param_0, int* param_1) {
    // NONMATCHING
}

/* 80A76384-80A7643C 002524 00B8+00 1/0 0/0 0/0 .text            changeBtp__11daNpc_Moi_cFPiPi */
void daNpc_Moi_c::changeBtp(int* param_0, int* param_1) {
    // NONMATCHING
}

/* 80A7643C-80A764B0 0025DC 0074+00 1/0 0/0 0/0 .text            changeBtk__11daNpc_Moi_cFPiPi */
void daNpc_Moi_c::changeBtk(int* param_0, int* param_1) {
    // NONMATCHING
}

/* 80A764B0-80A765CC 002650 011C+00 1/1 0/0 0/0 .text            selectAction__11daNpc_Moi_cFv */
void daNpc_Moi_c::selectAction() {
    // NONMATCHING
}

/* 80A765CC-80A765F8 00276C 002C+00 2/2 0/0 0/0 .text
 * chkAction__11daNpc_Moi_cFM11daNpc_Moi_cFPCvPvPv_i            */
void daNpc_Moi_c::chkAction(int (daNpc_Moi_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80A765F8-80A766A0 002798 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_Moi_cFM11daNpc_Moi_cFPCvPvPv_i            */
void daNpc_Moi_c::setAction(int (daNpc_Moi_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80A766A0-80A766DC 002840 003C+00 1/1 0/0 0/0 .text chkPlayerGetWoodShield__11daNpc_Moi_cFv */
void daNpc_Moi_c::chkPlayerGetWoodShield() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A7B084-80A7B088 000194 0004+00 0/1 0/0 0/0 .rodata          @5448 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5448 = 0x43360B61;
COMPILER_STRIP_GATE(0x80A7B084, &lit_5448);
#pragma pop

/* 80A766DC-80A76888 00287C 01AC+00 2/2 0/0 0/0 .text            setSSlash__11daNpc_Moi_cFi */
void daNpc_Moi_c::setSSlash(int param_0) {
    // NONMATCHING
}

/* 80A76888-80A768FC 002A28 0074+00 1/1 0/0 0/0 .text            chkPullOutSw__11daNpc_Moi_cFv */
void daNpc_Moi_c::chkPullOutSw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A7B088-80A7B08C 000198 0004+00 2/4 0/0 0/0 .rodata          @5469 */
SECTION_RODATA static f32 const lit_5469 = 4.0f;
COMPILER_STRIP_GATE(0x80A7B088, &lit_5469);

/* 80A768FC-80A76954 002A9C 0058+00 1/1 0/0 0/0 .text            pullOutSw__11daNpc_Moi_cFv */
void daNpc_Moi_c::pullOutSw() {
    // NONMATCHING
}

/* 80A76954-80A769C8 002AF4 0074+00 1/1 0/0 0/0 .text            chkSetInSw__11daNpc_Moi_cFv */
void daNpc_Moi_c::chkSetInSw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A7B08C-80A7B090 00019C 0004+00 1/1 0/0 0/0 .rodata          @5488 */
SECTION_RODATA static f32 const lit_5488 = 6.0f;
COMPILER_STRIP_GATE(0x80A7B08C, &lit_5488);

/* 80A769C8-80A76A20 002B68 0058+00 1/1 0/0 0/0 .text            setInSw__11daNpc_Moi_cFv */
void daNpc_Moi_c::setInSw() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A7B090-80A7B094 0001A0 0004+00 0/1 0/0 0/0 .rodata          @5521 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5521 = 5.0f;
COMPILER_STRIP_GATE(0x80A7B090, &lit_5521);
#pragma pop

/* 80A7B094-80A7B098 0001A4 0004+00 0/1 0/0 0/0 .rodata          @5522 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5522 = 7.0f;
COMPILER_STRIP_GATE(0x80A7B094, &lit_5522);
#pragma pop

/* 80A7B098-80A7B09C 0001A8 0004+00 0/1 0/0 0/0 .rodata          @5523 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5523 = 20.0f;
COMPILER_STRIP_GATE(0x80A7B098, &lit_5523);
#pragma pop

/* 80A7B09C-80A7B0A0 0001AC 0004+00 0/1 0/0 0/0 .rodata          @5524 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5524 = 22.0f;
COMPILER_STRIP_GATE(0x80A7B09C, &lit_5524);
#pragma pop

/* 80A76A20-80A76AFC 002BC0 00DC+00 1/1 0/0 0/0 .text            setSwAT__11daNpc_Moi_cFv */
void daNpc_Moi_c::setSwAT() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A7BFA8-80A7BFAC 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80A7BFAC-80A7BFB0 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80A7BFB0-80A7BFB4 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80A7BFB4-80A7BFB8 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80A7BFB8-80A7BFBC 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80A7BFBC-80A7BFC0 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80A7BFC0-80A7BFC4 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80A7BFC4-80A7BFC8 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80A7BFC8-80A7BFCC 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80A7BFCC-80A7BFD0 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80A7BFD0-80A7BFD4 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80A7BFD4-80A7BFD8 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80A7BFD8-80A7BFDC 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80A7BFDC-80A7BFE0 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80A7BFE0-80A7BFE4 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80A7BFE4-80A7BFE8 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 80A7BFE8-80A7BFF4 000048 000C+00 1/1 0/0 0/0 .bss             @3839 */
static u8 lit_3839[12];

/* 80A7BFF4-80A7BFF8 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A7BFF8-80A7C008 000058 000C+04 0/1 0/0 0/0 .bss             @5529 */
#pragma push
#pragma force_active on
static u8 lit_5529[12 + 4 /* padding */];
#pragma pop

/* 80A7C008-80A7C014 000068 000C+00 0/1 0/0 0/0 .bss             lightOffset$5528 */
#pragma push
#pragma force_active on
static u8 lightOffset[12];
#pragma pop

/* 80A76AFC-80A76C7C 002C9C 0180+00 1/1 0/0 0/0 .text            torch__11daNpc_Moi_cFv */
void daNpc_Moi_c::torch() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A7B0A0-80A7B0A4 0001B0 0004+00 0/4 0/0 0/0 .rodata          @5623 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5623 = 0.5f;
COMPILER_STRIP_GATE(0x80A7B0A0, &lit_5623);
#pragma pop

/* 80A7B0A4-80A7B0A8 0001B4 0004+00 0/1 0/0 0/0 .rodata          @5624 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5624 = 0.25f;
COMPILER_STRIP_GATE(0x80A7B0A4, &lit_5624);
#pragma pop

/* 80A76C7C-80A76E10 002E1C 0194+00 1/1 0/0 0/0 .text            injuryCheck__11daNpc_Moi_cFv */
void daNpc_Moi_c::injuryCheck() {
    // NONMATCHING
}

/* 80A76E10-80A76F3C 002FB0 012C+00 1/1 0/0 0/0 .text            injuryTurn__11daNpc_Moi_cF4cXyz */
void daNpc_Moi_c::injuryTurn(cXyz param_0) {
    // NONMATCHING
}

/* 80A76F3C-80A770FC 0030DC 01C0+00 1/1 0/0 0/0 .text            injuryWalk__11daNpc_Moi_cFv */
void daNpc_Moi_c::injuryWalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A7B0A8-80A7B0AC 0001B8 0004+00 0/1 0/0 0/0 .rodata          @5888 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5888 = 150.0f;
COMPILER_STRIP_GATE(0x80A7B0A8, &lit_5888);
#pragma pop

/* 80A7B0AC-80A7B0B0 0001BC 0004+00 0/3 0/0 0/0 .rodata          @5889 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5889 = 1.5f;
COMPILER_STRIP_GATE(0x80A7B0AC, &lit_5889);
#pragma pop

/* 80A770FC-80A7772C 00329C 0630+00 2/2 0/0 0/0 .text            poise__11daNpc_Moi_cFv */
void daNpc_Moi_c::poise() {
    // NONMATCHING
}

/* 80A7772C-80A77740 0038CC 0014+00 1/1 0/0 0/0 .text            getDistTable__12dAttention_cFi */
// void dAttention_c::getDistTable(int param_0) {
extern "C" void getDistTable__12dAttention_cFi() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A7B0B0-80A7B0B4 0001C0 0004+00 0/2 0/0 0/0 .rodata          @6030 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6030 = 500.0f;
COMPILER_STRIP_GATE(0x80A7B0B0, &lit_6030);
#pragma pop

/* 80A7B0B4-80A7B0B8 0001C4 0004+00 0/2 0/0 0/0 .rodata          @6031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6031 = 2500.0f;
COMPILER_STRIP_GATE(0x80A7B0B4, &lit_6031);
#pragma pop

/* 80A7B0B8-80A7B0BC 0001C8 0004+00 0/2 0/0 0/0 .rodata          @6032 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6032 = 11.0f / 20.0f;
COMPILER_STRIP_GATE(0x80A7B0B8, &lit_6032);
#pragma pop

/* 80A7B0D8-80A7B0D8 0001E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A7B14B = "prm";
SECTION_DEAD static char const* const stringBase_80A7B14F = "timer";
#pragma pop

/* 80A77740-80A77BA0 0038E0 0460+00 1/0 0/0 0/0 .text            cutDeliveredSw__11daNpc_Moi_cFi */
void daNpc_Moi_c::cutDeliveredSw(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A7B0BC-80A7B0C4 0001CC 0008+00 0/1 0/0 0/0 .rodata          @6042 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6042[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A7B0BC, &lit_6042);
#pragma pop

/* 80A7B0C4-80A7B0CC 0001D4 0008+00 0/1 0/0 0/0 .rodata          @6054 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_6054[8] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80A7B0C4, &lit_6054);
#pragma pop

/* 80A7B0D8-80A7B0D8 0001E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A7B155 = "msgNo";
#pragma pop

/* 80A77BA0-80A7838C 003D40 07EC+00 2/0 0/0 0/0 .text            cutAppearanceMoi__11daNpc_Moi_cFi
 */
void daNpc_Moi_c::cutAppearanceMoi(int param_0) {
    // NONMATCHING
}

/* 80A7838C-80A785FC 00452C 0270+00 1/0 0/0 0/0 .text cutConversationWithUri__11daNpc_Moi_cFi */
void daNpc_Moi_c::cutConversationWithUri(int param_0) {
    // NONMATCHING
}

/* 80A785FC-80A789D8 00479C 03DC+00 1/0 0/0 0/0 .text            cutFindWolf__11daNpc_Moi_cFi */
void daNpc_Moi_c::cutFindWolf(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A7B0CC-80A7B0D0 0001DC 0004+00 0/1 0/0 0/0 .rodata          @6558 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6558 = 13.0f;
COMPILER_STRIP_GATE(0x80A7B0CC, &lit_6558);
#pragma pop

/* 80A7B0D0-80A7B0D4 0001E0 0004+00 0/1 0/0 0/0 .rodata          @6559 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6559 = 29.0f;
COMPILER_STRIP_GATE(0x80A7B0D0, &lit_6559);
#pragma pop

/* 80A7B0D4-80A7B0D8 0001E4 0004+00 0/1 0/0 0/0 .rodata          @6560 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6560 = 35.0f;
COMPILER_STRIP_GATE(0x80A7B0D4, &lit_6560);
#pragma pop

/* 80A789D8-80A78E0C 004B78 0434+00 2/0 0/0 0/0 .text            wait__11daNpc_Moi_cFPv */
void daNpc_Moi_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80A78E0C-80A78FF4 004FAC 01E8+00 1/0 0/0 0/0 .text            walk__11daNpc_Moi_cFPv */
void daNpc_Moi_c::walk(void* param_0) {
    // NONMATCHING
}

/* 80A78FF4-80A794C0 005194 04CC+00 1/0 0/0 0/0 .text            walkOnEggshell__11daNpc_Moi_cFPv */
void daNpc_Moi_c::walkOnEggshell(void* param_0) {
    // NONMATCHING
}

/* 80A794C0-80A79608 005660 0148+00 2/0 0/0 0/0 .text            rest__11daNpc_Moi_cFPv */
void daNpc_Moi_c::rest(void* param_0) {
    // NONMATCHING
}

/* 80A79608-80A798D0 0057A8 02C8+00 3/0 0/0 0/0 .text            talk__11daNpc_Moi_cFPv */
void daNpc_Moi_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80A798D0-80A798F0 005A70 0020+00 1/0 0/0 0/0 .text            daNpc_Moi_Create__FPv */
static void daNpc_Moi_Create(void* param_0) {
    // NONMATCHING
}

/* 80A798F0-80A79910 005A90 0020+00 1/0 0/0 0/0 .text            daNpc_Moi_Delete__FPv */
static void daNpc_Moi_Delete(void* param_0) {
    // NONMATCHING
}

/* 80A79910-80A79930 005AB0 0020+00 1/0 0/0 0/0 .text            daNpc_Moi_Execute__FPv */
static void daNpc_Moi_Execute(void* param_0) {
    // NONMATCHING
}

/* 80A79930-80A79950 005AD0 0020+00 1/0 0/0 0/0 .text            daNpc_Moi_Draw__FPv */
static void daNpc_Moi_Draw(void* param_0) {
    // NONMATCHING
}

/* 80A79950-80A79958 005AF0 0008+00 1/0 0/0 0/0 .text            daNpc_Moi_IsDelete__FPv */
static bool daNpc_Moi_IsDelete(void* param_0) {
    return true;
}

/* 80A79958-80A79988 005AF8 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80A79988-80A799D0 005B28 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A799D0-80A79D58 005B70 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A79D58-80A79D94 005EF8 003C+00 4/4 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80A79D94-80A79E60 005F34 00CC+00 2/2 0/0 0/0 .text            __dt__8dCcD_CylFv */
// dCcD_Cyl::~dCcD_Cyl() {
extern "C" void __dt__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80A79E60-80A79EA8 006000 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A79EA8-80A79EE4 006048 003C+00 4/4 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80A79EE4-80A79F2C 006084 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80A79F2C-80A79F68 0060CC 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A79F68-80A79FB0 006108 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80A79FB0-80A79FF8 006150 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80A79FF8-80A7A040 006198 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80A7A040-80A7A0C4 0061E0 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
// dCcD_Cyl::dCcD_Cyl() {
extern "C" void __ct__8dCcD_CylFv() {
    // NONMATCHING
}

/* 80A7A0C4-80A7A4C8 006264 0404+00 1/1 0/0 0/0 .text
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

/* 80A7A4C8-80A7A5C4 006668 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80A7A5C4-80A7A5C8 006764 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80A7A5C8-80A7A610 006768 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80A7A610-80A7A680 0067B0 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80A7A680-80A7A6DC 006820 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A7A6DC-80A7A74C 00687C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80A7A74C-80A7A794 0068EC 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80A7A794-80A7A8B0 006934 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80A7A8B0-80A7AAB8 006A50 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80A7AAB8-80A7AABC 006C58 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80A7AABC-80A7AAC4 006C5C 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80A7AAC4-80A7AACC 006C64 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80A7AACC-80A7AAD4 006C6C 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80A7AAD4-80A7AAD8 006C74 0004+00 1/0 0/0 0/0 .text            afterMoved__8daNpcT_cFv */
void daNpcT_c::afterMoved() {
    /* empty function */
}

/* 80A7AAD8-80A7AAE0 006C78 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80A7AAE0-80A7AAF8 006C80 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A7AAF8-80A7AAFC 006C98 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80A7AAFC-80A7AB04 006C9C 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80A7AB04-80A7AB34 006CA4 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80A7AB34-80A7AB64 006CD4 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80A7AB64-80A7AB80 006D04 001C+00 7/7 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80A7AB64(void* _this, int* param_0) {
    // NONMATCHING
}

/* 80A7AB80-80A7ABBC 006D20 003C+00 3/3 0/0 0/0 .text            cLib_getRndValue<f>__Fff */
extern "C" void func_80A7AB80(void* _this, f32 param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A7BF94-80A7BFA0 000E38 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_Moi_Param_c */
SECTION_DATA extern void* __vt__17daNpc_Moi_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_Moi_Param_cFv,
};

/* 80A7ABBC-80A7AC88 006D5C 00CC+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_moi_cpp */
void __sinit_d_a_npc_moi_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80A7ABBC, __sinit_d_a_npc_moi_cpp);
#pragma pop

/* 80A7AC88-80A7AE08 006E28 0180+00 1/1 0/0 0/0 .text
 * __ct__11daNpc_Moi_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Moi_c::daNpc_Moi_c(daNpcT_faceMotionAnmData_c const* param_0,
                             daNpcT_motionAnmData_c const* param_1,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
                             daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80A7AE08-80A7AE0C 006FA8 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80A7AE0C-80A7AE3C 006FAC 0030+00 1/0 0/0 0/0 .text getEyeballMaterialNo__11daNpc_Moi_cFv */
void daNpc_Moi_c::getEyeballMaterialNo() {
    // NONMATCHING
}

/* 80A7AE3C-80A7AE44 006FDC 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__11daNpc_Moi_cFv */
s32 daNpc_Moi_c::getHeadJointNo() {
    return 4;
}

/* 80A7AE44-80A7AE4C 006FE4 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__11daNpc_Moi_cFv */
s32 daNpc_Moi_c::getNeckJointNo() {
    return 3;
}

/* 80A7AE4C-80A7AE54 006FEC 0008+00 1/0 0/0 0/0 .text            getBackboneJointNo__11daNpc_Moi_cFv
 */
bool daNpc_Moi_c::getBackboneJointNo() {
    return true;
}

/* 80A7AE54-80A7AE64 006FF4 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__11daNpc_Moi_cFi
 */
void daNpc_Moi_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80A7AE64-80A7AE74 007004 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__11daNpc_Moi_cFi
 */
void daNpc_Moi_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80A7AE74-80A7AE7C 007014 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__11daNpc_Moi_cFv */
s32 daNpc_Moi_c::getFootLJointNo() {
    return 22;
}

/* 80A7AE7C-80A7AE84 00701C 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__11daNpc_Moi_cFv */
s32 daNpc_Moi_c::getFootRJointNo() {
    return 25;
}

/* 80A7AE84-80A7AECC 007024 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_Moi_Param_cFv */
daNpc_Moi_Param_c::~daNpc_Moi_Param_c() {
    // NONMATCHING
}

/* 80A7AECC-80A7AED4 00706C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80A7AECC() {
    // NONMATCHING
}

/* 80A7AED4-80A7AEDC 007074 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80A7AED4() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A7C014-80A7C018 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80A7C014[4];
#pragma pop

/* 80A7C018-80A7C01C 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80A7C018[4];
#pragma pop

/* 80A7C01C-80A7C020 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80A7C01C[4];
#pragma pop

/* 80A7C020-80A7C024 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80A7C020[4];
#pragma pop

/* 80A7C024-80A7C028 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A7C024[4];
#pragma pop

/* 80A7C028-80A7C02C 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A7C028[4];
#pragma pop

/* 80A7C02C-80A7C030 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80A7C02C[4];
#pragma pop

/* 80A7C030-80A7C034 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80A7C030[4];
#pragma pop

/* 80A7C034-80A7C038 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80A7C034[4];
#pragma pop

/* 80A7C038-80A7C03C 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80A7C038[4];
#pragma pop

/* 80A7C03C-80A7C040 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80A7C03C[4];
#pragma pop

/* 80A7C040-80A7C044 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80A7C040[4];
#pragma pop

/* 80A7C044-80A7C048 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80A7C044[4];
#pragma pop

/* 80A7C048-80A7C04C 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A7C048[4];
#pragma pop

/* 80A7C04C-80A7C050 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80A7C04C[4];
#pragma pop

/* 80A7C050-80A7C054 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80A7C050[4];
#pragma pop

/* 80A7C054-80A7C058 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80A7C054[4];
#pragma pop

/* 80A7C058-80A7C05C 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80A7C058[4];
#pragma pop

/* 80A7C05C-80A7C060 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80A7C05C[4];
#pragma pop

/* 80A7C060-80A7C064 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80A7C060[4];
#pragma pop

/* 80A7C064-80A7C068 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80A7C064[4];
#pragma pop

/* 80A7C068-80A7C06C 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A7C068[4];
#pragma pop

/* 80A7C06C-80A7C070 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A7C06C[4];
#pragma pop

/* 80A7C070-80A7C074 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A7C070[4];
#pragma pop

/* 80A7C074-80A7C078 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80A7C074[4];
#pragma pop

/* 80A7B0D8-80A7B0D8 0001E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
