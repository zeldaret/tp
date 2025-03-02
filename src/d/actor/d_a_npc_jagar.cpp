/**
 * d_a_npc_jagar.cpp
 * NPC - Jaggle
 */

#include "d/actor/d_a_npc_jagar.h"
#include "Z2AudioLib/Z2Instances.h"
#include "d/actor/d_a_npc_bou.h"
#include "dol2asm.h"
#include "d/d_meter2_info.h"
#include "d/actor/d_a_tag_push.h"

//
// Forward References:
//

extern "C" void __dt__13daNpc_Jagar_cFv();
extern "C" void create__13daNpc_Jagar_cFv();
extern "C" void CreateHeap__13daNpc_Jagar_cFv();
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
extern "C" void Delete__13daNpc_Jagar_cFv();
extern "C" void Execute__13daNpc_Jagar_cFv();
extern "C" void Draw__13daNpc_Jagar_cFv();
extern "C" void createHeapCallBack__13daNpc_Jagar_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__13daNpc_Jagar_cFP8J3DJointi();
extern "C" void getType__13daNpc_Jagar_cFv();
extern "C" void isDelete__13daNpc_Jagar_cFv();
extern "C" void reset__13daNpc_Jagar_cFv();
extern "C" void afterJntAnm__13daNpc_Jagar_cFi();
extern "C" void setParam__13daNpc_Jagar_cFv();
extern "C" void checkChangeEvt__13daNpc_Jagar_cFv();
extern "C" void setAfterTalkMotion__13daNpc_Jagar_cFv();
extern "C" void srchActors__13daNpc_Jagar_cFv();
extern "C" void evtTalk__13daNpc_Jagar_cFv();
extern "C" void evtCutProc__13daNpc_Jagar_cFv();
extern "C" void action__13daNpc_Jagar_cFv();
extern "C" void beforeMove__13daNpc_Jagar_cFv();
extern "C" void setAttnPos__13daNpc_Jagar_cFv();
extern "C" void setCollision__13daNpc_Jagar_cFv();
extern "C" bool drawDbgInfo__13daNpc_Jagar_cFv();
extern "C" void changeBtp__13daNpc_Jagar_cFPiPi();
extern "C" void selectAction__13daNpc_Jagar_cFv();
extern "C" void chkAction__13daNpc_Jagar_cFM13daNpc_Jagar_cFPCvPvPv_i();
extern "C" void setAction__13daNpc_Jagar_cFM13daNpc_Jagar_cFPCvPvPv_i();
extern "C" void cutClimbUp__13daNpc_Jagar_cFi();
extern "C" void cutNeedYourHelp__13daNpc_Jagar_cFi();
extern "C" void cutAnger__13daNpc_Jagar_cFi();
extern "C" void cutConversationWithBou__13daNpc_Jagar_cFi();
extern "C" void cutConfidentialConversation__13daNpc_Jagar_cFi();
extern "C" void cutFindWolf__13daNpc_Jagar_cFi();
extern "C" void chkSitMotion__13daNpc_Jagar_cFv();
extern "C" void chkSitMotion2__13daNpc_Jagar_cFv();
extern "C" void chkChuMotion__13daNpc_Jagar_cFv();
extern "C" void chkToMotion__13daNpc_Jagar_cFv();
extern "C" void wait__13daNpc_Jagar_cFPv();
extern "C" void talkwithBou__13daNpc_Jagar_cFPv();
extern "C" void talk__13daNpc_Jagar_cFPv();
extern "C" static void daNpc_Jagar_Create__FPv();
extern "C" static void daNpc_Jagar_Delete__FPv();
extern "C" static void daNpc_Jagar_Execute__FPv();
extern "C" static void daNpc_Jagar_Draw__FPv();
extern "C" static bool daNpc_Jagar_IsDelete__FPv();
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
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawOtherMdl__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi();
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_80A1A040(void* _this, int*);
extern "C" void func_80A1A05C(void* _this, f32, f32);
extern "C" void __sinit_d_a_npc_jagar_cpp();
extern "C" void
__ct__13daNpc_Jagar_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" s32 getEyeballMaterialNo__13daNpc_Jagar_cFv();
extern "C" s32 getHeadJointNo__13daNpc_Jagar_cFv();
extern "C" s32 getNeckJointNo__13daNpc_Jagar_cFv();
extern "C" bool getBackboneJointNo__13daNpc_Jagar_cFv();
extern "C" void checkChangeJoint__13daNpc_Jagar_cFi();
extern "C" void checkRemoveJoint__13daNpc_Jagar_cFi();
extern "C" s32 getFootLJointNo__13daNpc_Jagar_cFv();
extern "C" s32 getFootRJointNo__13daNpc_Jagar_cFv();
extern "C" void __dt__19daNpc_Jagar_Param_cFv();
extern "C" static void func_80A1A30C();
extern "C" static void func_80A1A314();
extern "C" u8 const m__19daNpc_Jagar_Param_c[160];
extern "C" extern char const* const d_a_npc_jagar__stringBase0;
extern "C" void* mCutNameList__13daNpc_Jagar_c[7];
extern "C" u8 mCutList__13daNpc_Jagar_c[84];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void isCollect__20dSv_player_collect_cCFiUc();
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
extern "C" void StartShock__12dVibration_cFii4cXyz();
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
extern "C" void initialize__13daNpcT_Path_cFv();
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
extern "C" void chkPointInArea__8daNpcT_cF4cXyz4cXyz4cXyzs();
extern "C" void chkFindWolf__8daNpcT_cFsiiffffi();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void getActorDistance__8daNpcT_cFP10fopAc_ac_cii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_onEvtBit__FUl();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_onTmpBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
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
extern "C" void cLib_chaseS__FPsss();
extern "C" void cLib_chaseF__FPfff();
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
extern "C" extern dMeter2Info_c g_meter2_info;
extern "C" void getType__11daNpc_Bou_cFv();
extern "C" u8 const m__17daNpc_Bou_Param_c[156];
extern "C" void __register_global_object();

UNK_REL_BSS;
//
// Declarations:
//

/* ############################################################################################## */

/* 80A1A548-80A1A554 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A1A554-80A1A568 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80A1A568-80A1A570 000020 0008+00 1/1 0/0 0/0 .data            l_bmdData */
static int l_bmdData[1][2] = {
    {13, 1},
};

/* 80A1A570-80A1A5B8 -00001 0048+00 0/1 0/0 0/0 .data            l_evtList */
SECTION_DATA static daNpcT_evtData_c l_evtList[9] = {
    {"", 0},
    {"NO_RESPONSE", 0},
    {"CLIMBUP", 2},
    {"NEED_YOUR_HELP", 2},
    {"ANGER", 2},
    {"CONVERSATION_WITH_BOU", 3},
    {"CONFIDENTIAL_CONVERSATION", 3},
    {"FIND_WOLF", 3},
    {"FIND_WOLF_VER2", 3},
};

/* 80A1A5B8-80A1A5CC -00001 0014+00 2/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[5] = {
    "",
    "Jagar",
    "Jagar1",
    "Jagar2",
    "Jagar3",
};

/* 80A1A5CC-80A1A5D0 000084 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn0 */
// SECTION_DATA static u32 l_loadResPtrn0 = 0x010204FF;
static s8 l_loadResPtrn0[4] = {
    1, 2, 4, -1,
};

/* 80A1A5D0-80A1A5D4 000088 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
static s8 l_loadResPtrn1[3] = {
    1, 3, -1
};

/* 80A1A5D4-80A1A5DC 00008C 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn9 */
static s8 l_loadResPtrn9[5] = {
    1, 2, 3, 4, -1
};

/* 80A1A5DC-80A1A5EC -00001 0010+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
static s8* l_loadResPtrnList[4] = {
    l_loadResPtrn0,
    l_loadResPtrn1,
    l_loadResPtrn9,
    l_loadResPtrn9,
};

/* 80A1A5EC-80A1A704 0000A4 0118+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
static daNpcT_faceMotionAnmData_c l_faceMotionAnmData[10] = {
    {-1, 0, 0, 19, 2, 1, 1},
    {6, 0, 1, 20, 0, 1, 0},
    {6, 0, 2, 19, 2, 1, 1},
    {4, 0, 4, 9, 0, 4, 0},
    {7, 0, 3, 20, 0, 3, 0},
    {5, 2, 4, 10, 2, 4, 0},
    {-1, 0, 0, -1, 0, 0, 0},
    {7, 2, 1, 21, 2, 1, 0},
    {5, 0, 3, 18, 0, 3, 0},
    {6, 2, 3, 19, 2, 3, 0},
};

/* 80A1A704-80A1A8FC 0001BC 01F8+00 0/1 0/0 0/0 .data            l_motionAnmData */
daNpcT_motionAnmData_c l_motionAnmData[18] = {
    {10, 2, 1, 16, 0, 1, 1, 0},
    {4, 2, 2, 16, 0, 1, 1, 0},
    {7, 2, 2, 16, 0, 1, 1, 0},
    {10, 2, 2, 16, 0, 1, 1, 0},
    {8, 0, 2, 16, 0, 1, 1, 0},
    {9, 0, 2, 16, 0, 1, 1, 0},
    {5, 0, 2, 16, 0, 1, 1, 0},
    {11, 0, 2, 16, 0, 1, 1, 0},
    {6, 0, 4, 16, 0, 1, 1, 0},
    {9, 0, 1, 16, 0, 1, 1, 0},
    {8, 0, 1, 16, 0, 1, 1, 0},
    {8, 2, 3, 16, 0, 1, 1, 0},
    {13, 2, 3, 16, 0, 1, 1, 0},
    {12, 0, 3, 16, 0, 1, 1, 0},
    {14, 2, 3, 16, 0, 1, 1, 0},
    {9, 0, 3, 16, 0, 1, 1, 0},
    {11, 0, 3, 16, 0, 1, 1, 0},
    {10, 2, 3, 16, 0, 1, 1, 0},
};

/* 80A1A8FC-80A1A98C 0003B4 0090+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_faceMotionSequenceData[36] = {
    {1, -1, 1}, {7, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {8, -1, 1}, {9, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {2, -1, 1}, {6, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {3, -1, 1}, {5, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, -1, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {5, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {7, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {6, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80A1A98C-80A1AABC 000444 0130+00 0/1 0/0 0/0 .data            l_motionSequenceData */
static daNpcT_MotionSeqMngr_c::sequenceStepData_c l_motionSequenceData[76] = {
    {0, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {8, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {1, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {2, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {9, -1, 1}, {3, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {12, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {13, -1, 1}, {12, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {15, -1, 1}, {17, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {16, -1, 1}, {12, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {17, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {4, -1, 1}, {0, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {5, -1, 1}, {1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {6, -1, 1}, {2, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {7, -1, 1}, {2, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {10, 4, 1}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {11, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {14, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0}, {3, -1, 0}, {-1, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
    {13, -1, 1}, {12, 0, 0}, {-1, 0, 0}, {-1, 0, 0},
};

/* 80A1AABC-80A1AAD8 -00001 001C+00 1/1 0/0 0/0 .data            mCutNameList__13daNpc_Jagar_c */
SECTION_DATA char* daNpc_Jagar_c::mCutNameList[7] = {
    "",
    "CLIMBUP",
    "NEED_YOUR_HELP",
    "ANGER",
    "CONVERSATION_WITH_BOU",
    "CONFIDENTIAL_CONVERSATION",
    "FIND_WOLF",
};

/* 80A1AB20-80A1AB74 0005D8 0054+00 1/2 0/0 0/0 .data            mCutList__13daNpc_Jagar_c */
daNpc_Jagar_c::cutFunc daNpc_Jagar_c::mCutList[7] = {
    &daNpc_Jagar_c::cutClimbUp,
    &daNpc_Jagar_c::cutNeedYourHelp,
    &daNpc_Jagar_c::cutAnger,
    &daNpc_Jagar_c::cutConversationWithBou,
    &daNpc_Jagar_c::cutConfidentialConversation,
    &daNpc_Jagar_c::cutFindWolf,
    NULL,
};

// /* 80A1ABB0-80A1ABE0 -00001 0030+00 1/1 0/0 0/0 .data            @5661 */
// SECTION_DATA static void* lit_5661[12] = {
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x304),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x370),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x3B0),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x440),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x4A4),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x4A4),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x4A4),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x4A4),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x4A4),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x4A4),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x47C),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x490),
// };

/* 80A1ABE0-80A1AC10 -00001 0030+00 1/1 0/0 0/0 .data            @5660 */
// SECTION_DATA static void* lit_5660[12] = {
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0xBC),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x2E4),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x194),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x22C),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x2E4),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x2E4),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x2E4),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x2E4),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x2E4),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x2E4),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x2E4),
//     (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x2E0),
// };

/* 80A1470C-80A14858 0000EC 014C+00 1/0 0/0 0/0 .text            __dt__13daNpc_Jagar_cFv */
daNpc_Jagar_c::~daNpc_Jagar_c() {
    if (mpMorf[0] != 0) {
        mpMorf[0]->stopZelAnime();
    }
    deleteRes(l_loadResPtrnList[mType], (char const**)l_resNameList);
}

/* ############################################################################################## */
/* 80A1A330-80A1A3D0 000000 00A0+00 13/13 0/0 1/1 .rodata          m__19daNpc_Jagar_Param_c */
daNpc_Jagar_Param_c::param const daNpc_Jagar_Param_c::m = {
    170.0f, -3.0f, 1.0f, 400.0f, 255.0f, 160.0f,
    35.0f, 30.0f, 0.0f, 0.0f, 10.0f, -10.0f,
    30.0f, -10.0f, 45.0f, -45.0f, 0.6f, 12.0f,
    3, 6, 5, 6, 110.0f, 500.0f, 300.0f, -300.0f,
    60, 8, 0.0f, 0.0f, 4.0f, 0.0f, 0.0f,
    0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1400.0f,
    200.0f, -800.0f, 16.0f, 1800.0f,
};

/* 80A1A3D0-80A1A3E0 0000A0 0010+00 0/1 0/0 0/0 .rodata          heapSize$4099 */
static int const heapSize[4] = {
    0x3850, 0x3870, 0x3870, 0
};

/* 80A14858-80A14B20 000238 02C8+00 1/1 0/0 0/0 .text            create__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::create() {
    fopAcM_SetupActor2(this, daNpc_Jagar_c, l_faceMotionAnmData,
        (const daNpcT_motionAnmData_c *)l_motionAnmData, (const daNpcT_MotionSeqMngr_c::sequenceStepData_c *) l_faceMotionSequenceData, 4,
        (const daNpcT_MotionSeqMngr_c::sequenceStepData_c *)l_motionSequenceData, 4, (const daNpcT_evtData_c *)l_evtList, (char **)l_resNameList
    );
    mType = getType();
    mFlowNodeNo = getFlowNodeNo();
    mTwilight = 0; /* WIP */
    int rv = loadRes(l_loadResPtrnList[mType], (const char**)l_resNameList);
    if (rv == cPhs_COMPLEATE_e) {
    //     OS_REPORT("\t(%s:%d) flowNo:%d, PathID:%02x<%08x> ", fopAcM_getProcNameString(this), (uint)mType,
    //                           field_0xa7c, getPathID(), fopAcM_GetParam(this));
        if (isDelete()) {
            return cPhs_ERROR_e;
        }
    //     OS_REPORT("\n");
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, heapSize[mType])) {
            OS_REPORT("===>isDelete:TRUE\n");
            return cPhs_ERROR_e;
        }
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf[0]->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -200.0f, -100.0f, -200.0f, 200.0f, 300.0f, 200.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);
        field_0x9c0.init(&mAcch, 0.0f, 0.0f);
        reset();
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1,
                        &mAcchCir, fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this),
                        fopAcM_GetShapeAngle_p(this));
        mCcStts.Init(daNpc_Jagar_Param_c::m.field_0x10, 0, this);
        mCyl1.Set(mCcDCyl);
        mCyl1.SetStts(&mCcStts);
        mCyl1.SetTgHitCallback(tgHitCallBack);
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        if (mGroundH != -1000000000.0f) {
            setEnvTevColor();
            setRoomNo();
        }
        mCreating = 1;
        Execute();
        mCreating = 0;
    }
    return rv;
}

/* 80A14B20-80A14D90 000500 0270+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::CreateHeap() {
    J3DModelData* modelData = static_cast<J3DModelData*>(dComIfG_getObjectRes(
        l_resNameList[l_bmdData[0][1]], l_bmdData[0][0]));
    if (modelData == NULL) {
        return 0;
    }
    mpMorf[0] = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mSound,
        0x80000, 0x11020284);
    if (mpMorf[0] == NULL || mpMorf[0]->getModel() == NULL) {
        return 0;
    }
    J3DModel* model = mpMorf[0]->getModel();
    for (u16 i = 0; i < modelData->getJointNum(); i++) {
        modelData->getJointNodePointer(i)->setCallBack(ctrlJointCallBack);
    }
    model->setUserArea((u32)this);
    mpMatAnm = new daNpcT_MatAnm_c();
    if (mpMatAnm == NULL) {
        return 0;
    }

    if (setFaceMotionAnm(1, false) && setMotionAnm(0, 0.0f, 0))
    {
        return 1;
    }
    return 0;
}

/* 80A14F4C-80A14F80 00092C 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::Delete() {
    fopAcM_GetID(this);
    this->~daNpc_Jagar_c();
    return 1;
}

/* 80A14F80-80A14FA0 000960 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::Execute() {
    return daNpcT_c::execute();
}

/* 80A14FA0-80A15034 000980 0094+00 1/1 0/0 0/0 .text            Draw__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::Draw() {
    if (mpMatAnm != NULL) {
        J3DModelData* modelData = mpMorf[0]->getModel()->getModelData();
        modelData->getMaterialNodePointer(getEyeballMaterialNo())->setMaterialAnm(mpMatAnm);
    }
    return daNpcT_c::draw(0, 0, field_0xde8, NULL, 100.0f, 0, 0, 0);
}

/* 80A15034-80A15054 000A14 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_Jagar_cFP10fopAc_ac_c            */
int daNpc_Jagar_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpc_Jagar_c*>(i_this)->CreateHeap();
}

/* 80A15054-80A150AC 000A34 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpc_Jagar_cFP8J3DJointi               */
int daNpc_Jagar_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    if (param_1 == 0) {
        J3DModel* model = j3dSys.getModel();
        daNpc_Jagar_c* i_this = reinterpret_cast<daNpc_Jagar_c*>(model->getUserArea());
        if (i_this != 0) {
            i_this->ctrlJoint(param_0, model);
        }
    }
    return 1;
}

/* 80A150AC-80A150F8 000A8C 004C+00 1/1 0/0 2/2 .text            getType__13daNpc_Jagar_cFv */
u8 daNpc_Jagar_c::getType() {
    switch ((u8)fopAcM_GetParam(this)) {
        case 0:
            return TYPE_0;
        case 1:
            return TYPE_1;
        case 2:
            return TYPE_2;
        default:
            return TYPE_3;
    }
}

/* 80A150F8-80A15198 000AD8 00A0+00 1/1 0/0 0/0 .text            isDelete__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::isDelete() {
    switch (mType) {
        case TYPE_0:
            return FALSE;
        case TYPE_1: {
            bool rv = true;
            if (!daNpcT_chkEvtBit(0xd3) && !dComIfGs_isCollectShield(0)) {
                rv = false;
            }
            return rv;
        }
        case TYPE_2:
            return FALSE;
        default:
            return FALSE;
        }
}

/* 80A15198-80A15364 000B78 01CC+00 1/1 0/0 0/0 .text            reset__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::reset() {
    csXyz acStack_20;
    int iVar1 = (u8*)&field_0x1008 - (u8*)&field_0xfd4;
    if (mpMatAnm != NULL) {
        mpMatAnm->initialize();
    }
    initialize();
    for (int i = 0; i < 5; i++) {
        mActorMngr[i].initialize();
    }
    memset(&field_0xfd4, 0, iVar1);
    acStack_20.setall(0);
    acStack_20.y = home.angle.y;
    switch (mType) {
        case TYPE_0:
            if (daNpcT_chkEvtBit(0x1c) != 0) {
                if (daNpcT_chkEvtBit(0x86) == 0) {
                    daNpcT_onEvtBit(0x86);
                }
                field_0x1001 = 1;
            }
        case TYPE_1:
        case TYPE_2:
        default:
            daNpcT_offTmpBit(0x1b);
            daNpcT_offTmpBit(0x10);
            setAngle(acStack_20);
    }
}

/* 80A15364-80A153E8 000D44 0084+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpc_Jagar_cFi */
void daNpc_Jagar_c::afterJntAnm(int param_1) {
    if (param_1 == 1) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(1));
        mDoMtx_stack_c::ZrotM(-mStagger.getAngleX(1));
    } else if (param_1 == 4) {
        mDoMtx_stack_c::YrotM(mStagger.getAngleZ(0));
        mDoMtx_stack_c::ZrotM(mStagger.getAngleX(0));
    }
}

/* 80A153E8-80A155E4 000DC8 01FC+00 1/0 0/0 0/0 .text            setParam__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::setParam() {
    selectAction();
    srchActors();
    u32 uVar7 = 10;
    s16 sVar10 = daNpc_Jagar_Param_c::m.field_0x48;
    s16 sVar9 = daNpc_Jagar_Param_c::m.field_0x4a;
    s16 sVar8 = daNpc_Jagar_Param_c::m.field_0x4c;
    s16 sVar7 = daNpc_Jagar_Param_c::m.field_0x4e;
    switch (mType) {
        case TYPE_0:
            sVar10 = 4;
            sVar9 = 6;
            sVar8 = 5;
            sVar7 = 6;
            break;
        case TYPE_1:
            field_0xff0 = 3;
            field_0xff4 = 6;
            sVar10 = 19;
            sVar9 = 6;
            sVar8 = 19;
            sVar7 = 6;
            break;
        case TYPE_2:
            sVar10 = 3;
            sVar9 = 6;
            sVar8 = 5;
            sVar7 = 6;
            break;
    }
    attention_info.distances[0] = daNpcT_getDistTableIdx(sVar8, sVar7);
    attention_info.distances[1] = attention_info.distances[0];
    attention_info.distances[3] = daNpcT_getDistTableIdx(sVar10, sVar9);
    if (mType == TYPE_1) {
        uVar7 |= (0x80 << 16);
        field_0xfec = getActorDistance(daPy_getPlayerActorClass(), 
                    daNpcT_getDistTableIdx(field_0xff0, field_0xff4), 
                    attention_info.distances[1]);
        if (field_0xfec < 4) {
            g_meter2_info.mBlinkButton |= 1;
        }
    } else {
        if (chkChuMotion() != 0) {
            attention_info.distances[0] = 20;
            attention_info.distances[1] = 20;
            attention_info.distances[3] = 20;
            uVar7 = 2;
        }
    }
    attention_info.flags = uVar7;
    scale.set(daNpc_Jagar_Param_c::m.field_0x08, daNpc_Jagar_Param_c::m.field_0x08,
            daNpc_Jagar_Param_c::m.field_0x08);
    mCcStts.SetWeight(daNpc_Jagar_Param_c::m.field_0x10);
    mCylH = daNpc_Jagar_Param_c::m.field_0x14;
    mWallR = daNpc_Jagar_Param_c::m.field_0x1c;
    mAttnFovY = daNpc_Jagar_Param_c::m.field_0x50;
    mAcchCir.SetWallR(mWallR);
    mAcchCir.SetWallH(daNpc_Jagar_Param_c::m.field_0x18);
    field_0xde8 = daNpc_Jagar_Param_c::m.field_0x0c;
    field_0xa80 = daNpc_Jagar_Param_c::m.field_0x6c;
    mMorfFrames = daNpc_Jagar_Param_c::m.field_0x44;
    gravity = daNpc_Jagar_Param_c::m.field_0x04;
}

/* 80A155E4-80A15714 000FC4 0130+00 1/0 0/0 0/0 .text            checkChangeEvt__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::checkChangeEvt() {
    if (!chkAction(&daNpc_Jagar_c::talk)) {
        mPreItemNo = 0;
        if (dComIfGp_event_chkTalkXY()) {
            if (dComIfGp_evmng_ChkPresentEnd()) {
                mEvtNo = 1;
                evtChange();
            }
            return true;
        }
        switch (mType) {
            case TYPE_0:
                if (daNpcT_chkEvtBit(0x1c) && chkChuMotion()) {
                    mEvtNo = 2;
                    evtChange();
                    return true;
                }
                break;
            case TYPE_1:
                if (field_0xfec < 4) {
                    mEvtNo = 6;
                    evtChange();
                    return true;
                }
            case TYPE_2:
                break;
        }
    }
    return false;
}

/* 80A15714-80A157B4 0010F4 00A0+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::setAfterTalkMotion() {
    int iVar2 = 8;
    switch(mFaceMotionSeqMngr.getNo()) {
        case 0:
            iVar2 = 6;
            break;
        case 1:
            break;
        case 2:
            iVar2 = 7;
            break;
        case 3:
            iVar2 = 5;
            break;
    }
    mFaceMotionSeqMngr.setNo(iVar2, -1.0f, 0, 0);
}

/* 80A157B4-80A158A0 001194 00EC+00 1/1 0/0 0/0 .text            srchActors__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::srchActors() {
    switch(mType) {
        case TYPE_0:
            if (!mActorMngr[1].getActorP()) {
                mActorMngr[1].entry(getNearestActorP(0x15a));
            }

            if (!mActorMngr[0].getActorP()) {
                mActorMngr[0].entry(getNearestActorP(0x10d));
            }
            break;
        case TYPE_1:
            if (!mActorMngr[1].getActorP()) {
                mActorMngr[1].entry(getNearestActorP(0x15a));
            }

            if (!mActorMngr[2].getActorP()) {
                mActorMngr[2].entry(getNearestActorP(0x246));
            }
        case TYPE_2:
            break;
    }
}

/* 80A158A0-80A15940 001280 00A0+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_Jagar_cFv */
BOOL daNpc_Jagar_c::evtTalk() {
    if (chkAction(&daNpc_Jagar_c::talk)) {
        (this->*field_0xfe0)(NULL);
    } else {
        setAction(&daNpc_Jagar_c::talk);
    }
    return 1;
}

/* 80A15940-80A15A08 001320 00C8+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_Jagar_cFv */
BOOL daNpc_Jagar_c::evtCutProc() {
    int staffId = dComIfGp_getEventManager().getMyStaffId("Jagar", this, -1);
    if (staffId != -1) {
        mStaffId = staffId;
        int actIdx = dComIfGp_getEventManager().getMyActIdx(mStaffId, (char**)mCutNameList, 7, 0, 0);
        if ((this->*(mCutList[actIdx]))(mStaffId) != 0) {
            dComIfGp_getEventManager().cutEnd(mStaffId);
        }
        return true;
    } 
    return false;
}

/* 80A15A08-80A15CA4 0013E8 029C+00 1/0 0/0 0/0 .text            action__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::action() {
    fopAc_ac_c* hitActor = hitChk(&mCyl1, 0xffffffff);
    if (hitActor && mCyl1.GetTgHitObj()->ChkAtType(AT_TYPE_THROW_OBJ)) {
        if (mType == TYPE_1) {
            daNpc_Bou_c *bo = (daNpc_Bou_c *)mActorMngr[2].getActorP();
            if (bo && bo->getType() == TYPE_1) {
                if (bo->mStagger.checkStagger() ? 0 : 1) {
                    bo->mFaceMotionSeqMngr.setNo(1, -1, 0, 0);
                    bo->mMotionSeqMngr.setNo(3, -1, 0, 0);
                    field_0xff8 = 0;
                    field_0x1000 = 1;
                }
            }
        }

        if (field_0x1003 != 2 && field_0x1004 != 2) {
            mStagger.setParam(this, hitActor, mCurAngle.y);
            setDamage(0, 8, 0);
            mDamageTimerStart = 0;
            mJntAnm.setMode(0, 0);
            mJntAnm.setDirect(1);
        }
    }

    if (mStagger.checkRebirth()) {
        mStagger.initialize();
        field_0x1003 = 0;
        mMode = 1;
    }

    if (field_0xfd4) {
        if (field_0xfe0 == field_0xfd4) {
            (this->*field_0xfe0)(NULL);
        } else {
            setAction(field_0xfd4);
        }
    }
    daTag_Push_c *uVar4 = (daTag_Push_c *)field_0xba0.getActorP();
    if (uVar4) {
        switch ((int)uVar4->getId()) {
            case 2:
                mEvtNo = 5;
                break;
            default:
                break;
        }
    }
}

/* 80A15CA4-80A15D68 001684 00C4+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::beforeMove() {
    fopAcM_OffStatus(this, 0x8000000);
    if (checkHide()) {
        fopAcM_OnStatus(this, 0x8000000);
    }
    
    if (checkHide() || mNoDraw != 0) {
        attention_info.flags = 0;
    }
}

/* ############################################################################################## */
// /* 80A1ADE0-80A1ADE4 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
// static u8 lit_1109[1 + 3 /* padding */];

/* 80A1ADE4-80A1ADE8 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
// #pragma push
// #pragma force_active on
// static u8 lit_1107[1 + 3 /* padding */];
// #pragma pop

// /* 80A1ADE8-80A1ADEC 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
// #pragma push
// #pragma force_active on
// static u8 lit_1105[1 + 3 /* padding */];
// #pragma pop

// /* 80A1ADEC-80A1ADF0 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
// #pragma push
// #pragma force_active on
// static u8 lit_1104[1 + 3 /* padding */];
// #pragma pop

// /* 80A1ADF0-80A1ADF4 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
// #pragma push
// #pragma force_active on
// static u8 lit_1099[1 + 3 /* padding */];
// #pragma pop

// /* 80A1ADF4-80A1ADF8 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
// #pragma push
// #pragma force_active on
// static u8 lit_1097[1 + 3 /* padding */];
// #pragma pop

// /* 80A1ADF8-80A1ADFC 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
// #pragma push
// #pragma force_active on
// static u8 lit_1095[1 + 3 /* padding */];
// #pragma pop

// /* 80A1ADFC-80A1AE00 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
// #pragma push
// #pragma force_active on
// static u8 lit_1094[1 + 3 /* padding */];
// #pragma pop

// /* 80A1AE00-80A1AE04 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
// #pragma push
// #pragma force_active on
// static u8 lit_1057[1 + 3 /* padding */];
// #pragma pop

// /* 80A1AE04-80A1AE08 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
// #pragma push
// #pragma force_active on
// static u8 lit_1055[1 + 3 /* padding */];
// #pragma pop

// /* 80A1AE08-80A1AE0C 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
// #pragma push
// #pragma force_active on
// static u8 lit_1053[1 + 3 /* padding */];
// #pragma pop

// /* 80A1AE0C-80A1AE10 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
// #pragma push
// #pragma force_active on
// static u8 lit_1052[1 + 3 /* padding */];
// #pragma pop

// /* 80A1AE10-80A1AE14 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
// #pragma push
// #pragma force_active on
// static u8 lit_1014[1 + 3 /* padding */];
// #pragma pop

// /* 80A1AE14-80A1AE18 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
// #pragma push
// #pragma force_active on
// static u8 lit_1012[1 + 3 /* padding */];
// #pragma pop

// /* 80A1AE18-80A1AE1C 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
// #pragma push
// #pragma force_active on
// static u8 lit_1010[1 + 3 /* padding */];
// #pragma pop

// /* 80A1AE1C-80A1AE20 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
// #pragma push
// #pragma force_active on
// static u8 lit_1009[1 + 3 /* padding */];
// #pragma pop

/* 80A1AE20-80A1AE2C 000048 000C+00 1/1 0/0 0/0 .bss             @3945 */
static u8 lit_3945[12];

/* 80A1AE2C-80A1AE30 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A1AE30-80A1AE40 000058 000C+04 0/1 0/0 0/0 .bss             @4873 */
// #pragma push
// #pragma force_active on
// static u8 lit_4873[12 + 4 /* padding */];
// #pragma pop

// /* 80A1AE40-80A1AE4C 000068 000C+00 0/1 0/0 0/0 .bss             prtclScl$4872 */
// #pragma push
// #pragma force_active on
// static u8 prtclScl[12];
// #pragma pop

/* 80A15D68-80A1607C 001748 0314+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::setAttnPos() {
    cXyz cStack_3c(-10.0f, 10.0f, 0.0f);
    mStagger.calc(0);
    f32 dVar8 = cM_s2rad(mCurAngle.y - field_0xd7e.y);
    J3DModel* model = mpMorf[0]->getModel();
    mJntAnm.setParam(this, model, &cStack_3c, getBackboneJointNo(), getNeckJointNo(),
        getHeadJointNo(), daNpc_Jagar_Param_c::m.field_0x24, daNpc_Jagar_Param_c::m.field_0x20,
        daNpc_Jagar_Param_c::m.field_0x2c, daNpc_Jagar_Param_c::m.field_0x28,
        daNpc_Jagar_Param_c::m.field_0x34, daNpc_Jagar_Param_c::m.field_0x30,
        daNpc_Jagar_Param_c::m.field_0x3c, daNpc_Jagar_Param_c::m.field_0x38,
        daNpc_Jagar_Param_c::m.field_0x40, dVar8, NULL);
    mJntAnm.calcJntRad(0.2f, 1.0f, dVar8);
    setMtx();
    mDoMtx_stack_c::copy(mpMorf[0]->getModel()->getAnmMtx(getHeadJointNo()));
    mDoMtx_stack_c::multVec(&cStack_3c, &eyePos);
    mJntAnm.setEyeAngleX(eyePos, 1.0f, -0x2800);
    mJntAnm.setEyeAngleY(eyePos, mCurAngle.y, 1, 1.0f, 0);
    cStack_3c.set(0.0f, 0.0f, 10.0f);
    cStack_3c.y = daNpc_Jagar_Param_c::m.field_0x00;
    if (field_0x1004 == 2) {
        cStack_3c.set(0.0f, 100.0f, -60.0f);
    }
    mDoMtx_stack_c::YrotS(mCurAngle.y);
    mDoMtx_stack_c::multVec(&cStack_3c, &cStack_3c);
    attention_info.position = current.pos + cStack_3c;
    static cXyz prtclScl(1.0f, 1.0f, 1.0f);
    setFootPos();
    if (3.0f < speedF) {
        setFootPrtcl(&prtclScl, 11.0f, 0);
    }
}

/* 80A1607C-80A161EC 001A5C 0170+00 1/0 0/0 0/0 .text            setCollision__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::setCollision() {
    cXyz cStack_48;
    if (mHide == 0) {
        u32 tgType = -0x27040201;
        u32 tgSPrm = 0x1f;
        if (mTwilight) {
            tgType = 0;
            tgSPrm = 0;
        } else {
            if (mStagger.checkStagger()) {
                tgType = 0;
                tgSPrm = 0;
            }
        }
        mCyl1.SetCoSPrm(0x79);
        mCyl1.SetTgType(tgType);
        mCyl1.SetTgSPrm(tgSPrm);
        mCyl1.OnTgNoHitMark();
        cStack_48.set(0.0f, 0.0f, 0.0f);
        f32 cylHeight = mCylH;
        f32 cylRadius = mWallR;
        if (field_0x1004 == 2) {
            cylHeight = 70.0f;
            cylRadius = 90.0f;
        }
        mDoMtx_stack_c::YrotS(mCurAngle.y);
        mDoMtx_stack_c::multVec(&cStack_48, &cStack_48);
        cStack_48 += current.pos;
        mCyl1.SetH(cylHeight);
        mCyl1.SetR(cylRadius);
        mCyl1.SetC(cStack_48);
        dComIfG_Ccsp()->Set(&mCyl1);
    }
    mCyl1.ClrCoHit();
    mCyl1.ClrTgHit();
}

/* 80A161EC-80A161F4 001BCC 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::drawDbgInfo() {
    return 0;
}

/* 80A161F4-80A16234 001BD4 0040+00 1/0 0/0 0/0 .text            changeBtp__13daNpc_Jagar_cFPiPi */
void daNpc_Jagar_c::changeBtp(int* param_0, int* param_1) {
    if (((mType == TYPE_1 || mType == TYPE_2) && *param_0 == 19) && *param_1 == 1) {
        *param_0 = 17;
        *param_1 = 3;
    }
    return;
}

/* 80A16234-80A162B0 001C14 007C+00 1/1 0/0 0/0 .text            selectAction__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::selectAction() {
    field_0xfd4 = NULL;
    switch (mType) {
        case TYPE_1:
            field_0xfd4 = &daNpc_Jagar_c::talkwithBou;
            break;
        default:
            field_0xfd4 = &daNpc_Jagar_c::wait;
            break;
    }
    return 1;
}

/* 80A162B0-80A162DC 001C90 002C+00 2/2 0/0 0/0 .text
 * chkAction__13daNpc_Jagar_cFM13daNpc_Jagar_cFPCvPvPv_i        */
int daNpc_Jagar_c::chkAction(int (daNpc_Jagar_c::*action)(void*)) {
    return field_0xfe0 == action;
}

/* 80A162DC-80A16384 001CBC 00A8+00 2/2 0/0 0/0 .text
 * setAction__13daNpc_Jagar_cFM13daNpc_Jagar_cFPCvPvPv_i        */
int daNpc_Jagar_c::setAction(int (daNpc_Jagar_c::*action)(void*)) {
    mMode = 3;
    if (field_0xfe0 != NULL) {
        (this->*field_0xfe0)(NULL);
    }
    mMode = 0;
    field_0xfe0 = action;
    if (field_0xfe0 != NULL) {
        (this->*field_0xfe0)(NULL);
    }
    return 1;
}

/* 80A16384-80A16544 001D64 01C0+00 1/0 0/0 0/0 .text            cutClimbUp__13daNpc_Jagar_cFi */
int daNpc_Jagar_c::cutClimbUp(int param_0) {
    int rv = 0;
    int iVar4 = -1;
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(param_0, "prm");
    if (piVar1) {
        iVar4 = *piVar1;
    }

    if (dComIfGp_getEventManager().getIsAddvance(param_0)) {
        switch (iVar4) {
            case 0:
                mFaceMotionSeqMngr.setNo(8, 0.0f, 0, 0);
                mMotionSeqMngr.setNo(2, 0.0f, 0, 0);
                mJntAnm.lookNone(1);
                field_0x1003 = 1;
                setAngle(home.angle.y);
                initTalk(mFlowNodeNo, NULL);
                break;
            case 2:
                break;
        }
    }
    switch (iVar4) {
        case 0:
            if (talkProc(NULL, 0, NULL, 0) && mFlow.checkEndFlow()) {
                rv = 1;
            }
            break;
        case 2:
            rv = 1;
            break;
    }
    return rv;
}

/* 80A16544-80A16CD8 001F24 0794+00 1/0 0/0 0/0 .text            cutNeedYourHelp__13daNpc_Jagar_cFi */
int daNpc_Jagar_c::cutNeedYourHelp(int param_1) {
    int rv = 0;
    int iVar12 = -1;
    int local_30 = 0;
    int local_34 = 0;
    int local_38 = 0;
    int* piVar5 = dComIfGp_evmng_getMyIntegerP(param_1, "prm");
    if (piVar5) {
        iVar12 = *piVar5;
    }
    piVar5 = dComIfGp_evmng_getMyIntegerP(param_1, "msgNo");
    if (piVar5) {
        local_30 = *piVar5;
    }
    piVar5 = dComIfGp_evmng_getMyIntegerP(param_1, "msgNo2");
    if (piVar5) {
        local_34 = *piVar5;
    }
    piVar5 = dComIfGp_evmng_getMyIntegerP(param_1, "send");
    if (piVar5) {
        local_38 = *piVar5;
    }
    if (dComIfGp_getEventManager().getIsAddvance(param_1)) {
        switch(iVar12) {
            case 0:
                dComIfGp_getEvent().setPt2(mActorMngr[0].getActorP());
                break;
            case 1:
                initTalk(mFlowNodeNo, NULL);
                break;
            case 7:
                fopAc_ac_c* iVar6 = mActorMngr[1].getActorP();
                if (iVar6) {
                    dComIfGp_getEvent().setPt2(iVar6);
                }
                break;
            case 8:
                field_0x1002 = 0;
                field_0x1003 = 0;
        }
    }   
    int local_2c[3] = {-1, -1, -1};
    switch (iVar12) {
        case 0:
            mJntAnm.lookNone(0);
            if (mMotionSeqMngr.getNo() == 10) {
                if (mMotionSeqMngr.getStepNo() <= 0) {
                    break;
                }
                mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
                return 1;
            }
            if (!mMotionSeqMngr.getNo()) {
                rv = 1;
                return rv;
            }
        case 1:
            mJntAnm.lookPlayer(0);
            if (mPlayerAngle == mCurAngle.y) {
                return 1;
            }
            step(mPlayerAngle,8,0xe,0xf,0);
            break;
        case 8:
            break;
        default:
            switch (iVar12) {
                case 3:
                case 4:
                case 5:
                    fopAc_ac_c* actor_p = mActorMngr[0].getActorP();
                    if (actor_p) {
                        field_0xd6c.setall(0.0f);
                        field_0xd6c.z = current.pos.absXZ(actor_p->current.pos);
                        mDoMtx_stack_c::YrotS(mCurAngle.y  + 0x4000);
                        mDoMtx_stack_c::multVec(&field_0xd6c, &field_0xd6c);
                        field_0xd6c += current.pos;
                        mJntAnm.lookPos(&field_0xd6c, 0);
                    }
                    break;
                case 7:
                    fopAc_ac_c* iVar6 = mActorMngr[1].getActorP();
                    if (iVar6) {
                        field_0xd6c.setall(0.0f);
                        field_0xd6c.z = current.pos.absXZ(actor_p->current.pos);
                        mDoMtx_stack_c::YrotS(mCurAngle.y  + -0x4000);
                        mDoMtx_stack_c::multVec(&field_0xd6c, &field_0xd6c);
                        field_0xd6c += current.pos;
                        mJntAnm.lookPos(&field_0xd6c, 0);
                    }
                    break;
                default:
                    mJntAnm.lookPlayer(0);
            }
            local_2c[0] = local_30;
            local_2c[1] = local_34;
            if (talkProc(local_2c, local_38, NULL, 0)) {
                if (!local_30 && !local_34) {
                    if (mFlow.checkEndFlow() == 1) {
                        rv = 1;
                    }
                } else {
                    rv = 1;
                }
            }
            if (iVar12 == 4) {
                rv = 1;
            }
    }

    return rv;
}

/* 80A16CD8-80A16EFC 0026B8 0224+00 1/0 0/0 0/0 .text            cutAnger__13daNpc_Jagar_cFi */
int daNpc_Jagar_c::cutAnger(int param_0) {
    int rv = 0;
    int local_b4 = -1;
    s16 sVar3;
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(param_0, "prm");
    if (piVar1 != NULL) {
        local_b4 = *piVar1;
    }
    if (dComIfGp_getEventManager().getIsAddvance(param_0)) {
        switch (local_b4) {
            case 0:
                mFaceMotionSeqMngr.setNo(8, 0.0f, 0, 0);
                mMotionSeqMngr.setNo(0, 0.0, 0, 0);
                field_0x1003 = 0;
                sVar3 = fopAcM_searchActorAngleY(this, dComIfGp_getPlayer(0));
                setAngle(sVar3);
                initTalk(mFlowNodeNo, NULL);
            case 1:
                break;
        }
    }
    switch (local_b4) {
        case 0:
            mJntAnm.lookPlayer(0);
            if (talkProc(NULL, 0, NULL, 0) && mFlow.checkEndFlow() == 1) {
                rv = 1;
            }
            break;
        case 1:
            mJntAnm.lookNone(0);
            if (home.angle.y == mCurAngle.y) {
                rv = 1;
            } else {
                step(home.angle.y, 8, 14, 15, 0);
            }
            break;
        default:
            break;
    }
    return rv;
}

/* 80A16EFC-80A1705C 0028DC 0160+00 1/0 0/0 0/0 .text cutConversationWithBou__13daNpc_Jagar_cFi */
int daNpc_Jagar_c::cutConversationWithBou(int param_0) {
    daTag_Push_c* this_00 = (daTag_Push_c*)field_0xba0.getActorP();
    int rv = 0;
    int iVar5 = -1;
    int* piVar2 = (int*)dComIfGp_evmng_getMyIntegerP(param_0, "prm");
    if (piVar2) {
        iVar5 = *piVar2;
    }
    fopAc_ac_c* actors[2] = {(fopAc_ac_c *) this, mActorMngr[2].getActorP()};
    dComIfGp_setMesgCameraInfoActor(actors[0], actors[1], 0, 0, 0, 0, 0, 0, 0, 0);
    if (dComIfGp_getEventManager().getIsAddvance(param_0)) {
        switch (iVar5) {
            case 0:
                initTalk(this_00->getFlowNodeNo(), &actors[0]);
        }
    }
    switch (iVar5) {
        case 0:
            iVar5 = talkProc(NULL, 0, &actors[0], 0);
            if (iVar5 && mFlow.checkEndFlow() == 1) {
                rv = 1;
            }
    }
    return rv;
}

/* 80A1705C-80A173D8 002A3C 037C+00 1/0 0/0 0/0 .text
 * cutConfidentialConversation__13daNpc_Jagar_cFi               */
int daNpc_Jagar_c::cutConfidentialConversation(int param_0) {
    int iVar7 = 0;
    int iVar8 = -1;
    int rv = 0;
    int* piVar2 = dComIfGp_evmng_getMyIntegerP(param_0, "prm");
    if(piVar2) {
        iVar8 = *piVar2;
    }
    piVar2 = dComIfGp_evmng_getMyIntegerP(param_0, "msgNo");
    if(piVar2) {
        iVar7 = *piVar2;
    }
    fopAc_ac_c* actors[2] = {(fopAc_ac_c *) this, mActorMngr[2].getActorP()};
    dComIfGp_setMesgCameraInfoActor(actors[0], actors[1], 0, 0, 0, 0, 0, 0, 0, 0);
    if (dComIfGp_getEventManager().getIsAddvance(param_0)) {
        switch (iVar8) {
            case 0:
                mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(5, -1.0f, 0, 0);
                initTalk(0xd7, &actors[0]);
                break;
            case 1:
                dComIfGp_getEvent().setPt2(mActorMngr[1].getActorP());
            case 2:
                break;
        }
    }
    int local_30[3] = {-1, -1, -1};
    if (iVar8 == 0 || iVar8 == 2) {
        mJntAnm.lookActor(mActorMngr[2].getActorP(), -40.0f, 0);
    } else if (iVar8 == 1) {
        fopAc_ac_c* pfVar3 = mActorMngr[1].getActorP();
        mJntAnm.lookActor(pfVar3, 0.0f, 0);
    }
    local_30[0] = iVar7;
    if (talkProc(&local_30[0], 0, &actors[0], 0)) {
        if (iVar7 == 0) {
            if (mFlow.checkEndFlow()) {
                rv = 1;
            }
        } else {
            rv = 1;
        }
    } else {
        mEvtNo = 7;
        evtChange();
    }
    return rv;
}

/* 80A173D8-80A17898 002DB8 04C0+00 3/0 0/0 0/0 .text            cutFindWolf__13daNpc_Jagar_cFi */
int daNpc_Jagar_c::cutFindWolf(int param_0) {
    int rv = 0;
    int uVar6 = -1;
    int iVar4 = 0;
    int* piVar1 = dComIfGp_evmng_getMyIntegerP(param_0, "prm");
    if (piVar1 != NULL) {
        uVar6 = *piVar1;
    }
    int* puVar2 = dComIfGp_evmng_getMyIntegerP(param_0, "timer");
    if (puVar2 != NULL) {
        iVar4 = *puVar2;
    }

    if (dComIfGp_getEventManager().getIsAddvance(param_0)) {
        switch (uVar6) {
            case 0:
                mFaceMotionSeqMngr.setNo(1, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(7, -1.0f, 0, 0);
                mSound.startCreatureVoice(Z2SE_JAGA_V_SURPRISE, -1);
                mPlayerAngle = fopAcM_searchActorAngleY(this, daPy_getPlayerActorClass());
                if (checkStep()) {
                    mStepMode = 0;
                }
                dComIfGp_getVibration().StartShock(9, 15, cXyz(0.0f, 1.0f, 0.0f));
                break;
            case 2:
                mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(15, -1.0f, 0, 0);
                current.angle.y = home.angle.y;
                if (home.angle.y - mPlayerAngle > 1) {
                    current.angle.y = current.angle.y + -0x4000;
                } else {
                    current.angle.y = current.angle.y + 0x4000;
                    
                }
                mEventTimer = iVar4;
                break;
            case 3:
                mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(5, -1.0f, 0, 0);
                setPos(cXyz(home.pos.x, home.pos.y, home.pos.z));
                setAngle(home.angle.y);
                speedF = 0;
                speed.setall(0.0f);
                mAcch.ClrWallNone();
                mHide = 1;
                break;
            case 11:
                mEventTimer = iVar4;
        }
    }
    switch (uVar6) {
        case 0:
            mJntAnm.lookPlayer(0);
            if (mPlayerAngle == mCurAngle.y) {
                rv = 1;
            } else {
                step(mPlayerAngle, -1, -1, 15, 0);
            }
            break;
        case 1:
            mJntAnm.lookPlayer(0);
            rv = 1;
            break;
        case 2:
            mJntAnm.lookPlayer(0);
            cLib_chaseS(&shape_angle.y, current.angle.y, 0x800);
            mCurAngle.y = shape_angle.y;
            field_0xd7e.y = mCurAngle.y;
            cLib_chaseF(&speedF, daNpc_Jagar_Param_c::m.field_0x98, 0.5f);
            mAcch.SetWallNone();
            if (cLib_calcTimer(&mEventTimer) == 0) {
                rv = 1;
            }
            break;
        case 3:
            mJntAnm.lookNone(0);
            rv = 1;
            break;
        case 10:
            if (mMotionSeqMngr.getStepNo() > 0) {
                rv = 1;
            }
            break;
        case 11:
            if (cLib_calcTimer(&mEventTimer) == 0) {
                rv = 1;
            }
    }
    return rv;
}

/* 80A17898-80A17924 003278 008C+00 1/1 0/0 0/0 .text            chkSitMotion__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::chkSitMotion() {
    if ((daNpcT_chkEvtBit(0x235) != 0)) {
        if (field_0x1002) {
            return 0;
        }
    } else if (daNpcT_chkEvtBit(0x1c) != 0) {
        if (daNpcT_chkEvtBit(0x87) != 0) {
            return 0;
        } else if (field_0x1002) {
            return 0;
        }
    }
    return 1;
}

/* 80A17924-80A17984 003304 0060+00 1/1 0/0 0/0 .text            chkSitMotion2__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::chkSitMotion2() {
    if (daNpcT_chkEvtBit(0x235) != 0) {
        if (daNpcT_chkEvtBit(0x224) != 0) {
            return 1;
        }
    } else {
        if (daNpcT_chkEvtBit(0x8a) != 0) {
            return 1;
        }
    }
    return 0;
}

/* 80A17984-80A179F8 003364 0074+00 3/3 0/0 0/0 .text            chkChuMotion__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::chkChuMotion() {
    if (daNpcT_chkEvtBit(0x235) == 0 && daNpcT_chkEvtBit(0x1c) != 0) {
        if (daNpcT_chkEvtBit(0x87) != 0) {
            return false;
        } else {
            return field_0x1001 == 0 ? 1 : 0;
        }
    }
    return false;
}

/* 80A179F8-80A17A2C 0033D8 0034+00 1/1 0/0 0/0 .text            chkToMotion__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::chkToMotion() {
    // The inline assembly was the only way I could find to get proper regalloc
    // asm {
    //     li r0, 0x0          // int rv = 0;
    //     lwz r3, 0xb7c(r3)   // Loads mMotionSeqMngr into register 3
    // }
    int rv = 0;
    if (mMotionSeqMngr.getNo() == 10 || mMotionSeqMngr.getNo() == 11 || mMotionSeqMngr.getNo() == 12 || mMotionSeqMngr.getNo() == 13) {
        // asm {
        //     li r0, 0x1      // rv = 1;
        // }
        rv = 1;
    }
    // asm {
    //     clrlwi r3, r0, 24   // return rv & ((1U << 8) - 1);
    // }
    return rv & ((1U << 8) - 1);
}

/* 80A17A2C-80A1856C 00340C 0B40+00 1/0 0/0 0/0 .text            wait__13daNpc_Jagar_cFPv */
int daNpc_Jagar_c::wait(void* param_0) {
    cXyz cStack_24;
    field_0x1004 = 0;
    if (mType == TYPE_0) {
        if(chkSitMotion2()) {
            field_0x1004 = 2;
        } else if (chkSitMotion()) {
            if (chkChuMotion()) {
                field_0x1004 = 1;
            }else {
                field_0x1004 = 2;
            }
        }
    }

    if (field_0x1004 != field_0x1003) {
        mMode = 1;
    }

    switch(mMode) {
        case 0:
        case 1:
            if (mCreating) {
                    switch (field_0x1004) {
                        case 0:
                            if (mType == TYPE_2) {
                                mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                mMotionSeqMngr.setNo(17, -1.0, 0, 0);
                            } else {
                                mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                mMotionSeqMngr.setNo(0, -1.0, 0, 0);
                            }
                            field_0x1003 = 0;
                            break;
                        case 1:
                            mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                            mMotionSeqMngr.setNo(2, -1.0, 0, 0);
                            field_0x1003 = 1;
                            break;
                        case 2:
                            mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                            mMotionSeqMngr.setNo(3, -1.0, 0, 0);
                            field_0x1003 = 2;
                    }
                    mMode = 2;
                
            } else {
                if (!mStagger.checkStagger()) {
                    switch (field_0x1004) {
                        case 0:
                            switch (field_0x1003) {
                                case 2:
                                    mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                    mMotionSeqMngr.setNo(10, -1.0, 0, 0);
                                    break;
                                default:
                                    if (mType == TYPE_2) {
                                        mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                        mMotionSeqMngr.setNo(17, -1.0, 0, 0);
                                    } else {
                                        mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                        mMotionSeqMngr.setNo(0, -1.0, 0, 0);
                                    }
                                    field_0x1003 = 0;
                            }
                            break;
                        case 1:
                            switch (field_0x1003) {
                                case 2:
                                    mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                    mMotionSeqMngr.setNo(11, -1.0, 0, 0);
                                    break;
                                default:
                                    mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                    mMotionSeqMngr.setNo(2, -1.0, 0, 0);
                                    field_0x1003 = 1;
                            }
                            break;
                        case 2:
                            if (home.angle.y == mCurAngle.y) {
                                switch (field_0x1003) {
                                    case 0:
                                        mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                        mMotionSeqMngr.setNo(13, -1.0, 0, 0);
                                        break;
                                    case 1:
                                        mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                        mMotionSeqMngr.setNo(12, -1.0, 0, 0);
                                }
                            }
                    }
                    mMode = 2;
                }
            }
        case 2:
            switch (mType) {
                case TYPE_0:
                    daNpcT_offTmpBit(0x10);
                    cStack_24.set(daNpc_Jagar_Param_c::m.field_0x54, 10.0f, daNpc_Jagar_Param_c::m.field_0x54);
                    if (chkPointInArea(daPy_getPlayerActorClass()->current.pos, current.pos,
                        cStack_24, 0)) {
                        if (daPy_getPlayerActorClass()->checkPlayerFly()) {
                            if (daPy_getPlayerActorClass()->checkClimbEndHang()) {
                                field_0x1002 = 1;
                            }
                        }
                        daNpcT_onTmpBit(0x10);
                    }
                    if (!daNpcT_chkEvtBit(0x235)) {
                        if (!daNpcT_chkEvtBit(0xae) && daNpcT_chkTmpBit(0x1b)) {
                            mEvtNo = 4;
                        } else {
                            if (chkSitMotion() || field_0x1002 != 0) {
                                if (!daNpcT_chkEvtBit(0x235) && !daNpcT_chkEvtBit(0x87) &&
                                daNpcT_chkTmpBit(0x10)) {
                                    if (daPy_getPlayerActorClass()->eventInfo.chkCondition(1) != 0 ? 1 : 0) {
                                        mEvtNo = 3;
                                    }
                                }
                            }
                        }
                    }
                    break;
                case TYPE_2:
                    if (!mHide) {
                        if (chkFindWolf(mCurAngle.y, daNpcT_getDistTableIdx(field_0xff0, field_0xff4),
                            field_0xfec, daNpc_Jagar_Param_c::m.field_0x54,
                            180.0f, daNpc_Jagar_Param_c::m.field_0x58, daNpc_Jagar_Param_c::m.field_0x5c, 1)) {
                                mEvtNo = 8;
                            }
                    }
            }

            if (!mStagger.checkStagger()) {
                if (chkToMotion()) {
                    if (mMotionSeqMngr.getStepNo() > 0) {
                        switch (field_0x1004) {
                            case 0:
                                mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                mMotionSeqMngr.setNo(0, -1.0f, 0, 0);
                                field_0x1003 = 0;
                                break;
                            case 1:
                                mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                mMotionSeqMngr.setNo(2, -1.0f, 0, 0);
                                field_0x1003 = 1;
                                break;
                            case 2:
                                mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                mMotionSeqMngr.setNo(3, -1.0f, 0, 0);
                                field_0x1003 = 2;
                        }
                    } else {
                        if (mMotionSeqMngr.getNo() != 11) {
                            attention_info.flags = 0;
                        }
                    }
                    mJntAnm.lookNone(0);
                    break;
                }
                if (field_0x1004 == 2) {
                    mPlayerActorMngr.remove();
                } else if (field_0x1004 == 1) {
                    mPlayerActorMngr.entry((fopAc_ac_c*)daPy_getPlayerActorClass());
                }

                if (mPlayerActorMngr.getActorP()) {
                    mJntAnm.lookPlayer(0);
                    if (!chkActorInSight(mPlayerActorMngr.getActorP(), mAttnFovY, mCurAngle.y)) {
                        mJntAnm.lookNone(0);
                    }

                    if (!srchPlayerActor()) {
                        if (home.angle.y == mCurAngle.y) {
                            mMode = 1;
                        }

                        if (field_0x1003 == 1) {
                            if (!daNpcT_chkEvtBit(0x86)) {
                                daNpcT_onEvtBit(0x86);
                            }
                            field_0x1001 = 1;
                        }
                    }
                } else {
                    mJntAnm.lookNone(0);
                    if (home.angle.y != mCurAngle.y) {
                        if (field_0xe34) {
                            if (step(home.angle.y, 8, 14, 15, 0)) {
                                mMode = 1;
                            } 
                        } else {
                            setAngle(home.angle.y);
                            mMode = 1;
                        }
                        attention_info.flags = 0;
                    } else {
                        srchPlayerActor();
                    }
                }
            }
            break;
        case 3:
            break;
    }
    return 1;
}

/* 80A1856C-80A18B74 003F4C 0608+00 1/0 0/0 0/0 .text            talkwithBou__13daNpc_Jagar_cFPv */
int daNpc_Jagar_c::talkwithBou(void* param_0) {
    bool bVar2;
    int uVar3;
    daNpc_Bou_c *bo = (daNpc_Bou_c *)mActorMngr[2].getActorP();
    u16 uVar1 = mMode;
    switch (mMode) {
        case 0:
        case 1:
            if (mStagger.checkStagger() == 0) {
                mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                mMotionSeqMngr.setNo(5, -1.0f, 0, 0);
                mMode = 2;
            }
        case 2:
        default:
            break;
    }
    if (mHide != 0 && daNpcT_chkEvtBit(0xd3) == 0 && 
        (fopAcM_searchActorDistanceXZ(this, daPy_getPlayerActorClass()) > daNpc_Jagar_Param_c::m.field_0x9c) && field_0xe34 != NULL) {
        if (bo) {
            bo->mHide = 0;
        }
        mHide = 0;
    }
    if (mHide != 0) {
        fopAcM_setCullSizeBox((fopAc_ac_c *)this, -300.0f, -50.0f, -200.0f, 300.0f, 300.0f, 400.0f);
        goto LAB_80a18a8c;
    }
        uVar3 = (int)daNpcT_getDistTableIdx(field_0xff0, field_0xff4);
        if (!chkFindWolf(mCurAngle.y, uVar3, field_0xfec, daNpc_Jagar_Param_c::m.field_0x54, daNpc_Jagar_Param_c::m.field_0x50, 
            daNpc_Jagar_Param_c::m.field_0x58, daNpc_Jagar_Param_c::m.field_0x5c, 1)) {
            if (bo) {
                if (bo->chkFindWolf()) {
                    goto LAB_80a18744;
                }
            }
        } else {
LAB_80a18744:
            mEvtNo = 7;
        }
        if (bo) {
            if (field_0x1005 == 0) {
                if (cLib_calcTimer(&field_0xff8) == 0) {
                    if (mStagger.checkStagger()) {
                        if (mMotionSeqMngr.getNo() == 7 ||
                            mMotionSeqMngr.getNo() == 6 ||
                            mMotionSeqMngr.getNo() == 8) {
                            if(mMotionSeqMngr.getStepNo() <= 1) goto LAB_80a187c4;
                            bVar2 = true;
                        } else if (mMotionSeqMngr.getNo() == 5) {
                            bVar2 = true;
                        } else {
LAB_80a187c4:
                            bVar2 = false;
                        }
                    } else {
                        bVar2 = false;
                    }
                    if (bVar2) {
                        if (mStagger.checkStagger()) {
                            if (mMotionSeqMngr.getNo() == 3 ||
                                mMotionSeqMngr.getNo() == 2 ||
                                mMotionSeqMngr.getNo() == 4) {
                                if(mMotionSeqMngr.getStepNo() <= 1) goto LAB_80a18824;
                                    bVar2 = true;
                            } else if (mMotionSeqMngr.getNo() == 1) {
                                bVar2 = true;
                            } else {
LAB_80a18824:
                                 bVar2 = false;
                            }
                        } 
                        if (bVar2) {
                            field_0xff8 = cLib_getRndValue(45.0f, 142.0f);
                            if ((field_0x1000 ^ 1) & 1 == 1) {
                                bo->mFaceMotionSeqMngr.setNo(10, -1.0f, 0, 0);
                                if (0.0f < 0.0f + (cM_rnd() - 0.5f)) {
                                    bo->mMotionSeqMngr.setNo(1, -1.0f, 0, 0);
                                } else {
                                    bo->mMotionSeqMngr.setNo(4, -1.0f, 0, 0);
                                    mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                    mMotionSeqMngr.setNo(6, -1.0f, 0, 0);
                                }
                            } else {
                                bo->mFaceMotionSeqMngr.setNo(10, -1.0f, 0, 0);
                                bo->mMotionSeqMngr.setNo(2, -1.0f, 0, 0);
                                mFaceMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                if ((cM_rnd() - 0.5f) + 0.0f < 0.0f) {
                                    mMotionSeqMngr.setNo(8, -1.0f, 0, 0);
                                } else {
                                    mMotionSeqMngr.setNo(5, -1.0f, 0, 0);
                                }
                            }
                        }
                    }
                }
            } else {
            field_0xff8 = 0;
            }
        }
        fopAcM_setCullSizeBox((fopAc_ac_c *)this,-300.0f,-50.0f,-300.0f,300.0f,450.0f,300.0f);
LAB_80a18a8c:
    if (bo) {
        mJntAnm.lookActor((fopAc_ac_c *)bo, -50.0f, 0);
    } else {
        mJntAnm.lookNone(0);
    }
    return 1;
}

/* REGALLOC ISSUE */
/* 80A18B74-80A18F28 004554 03B4+00 3/0 0/0 0/0 .text            talk__13daNpc_Jagar_cFPv */
int daNpc_Jagar_c::talk(void* param_0) {
    switch(mMode) {
        case 0:
        case 1:
        if (!mStagger.checkStagger()) {
            if (mType == TYPE_1) {
                daNpc_Bou_c *bo = (daNpc_Bou_c *)mActorMngr[2].getActorP();
                if (bo && bo->getType() == TYPE_1 && ((bo->mStagger.checkStagger()) ? 0 : 1)) {
                    mFaceMotionSeqMngr.setNo(10, -1.0f, 0, 0);
                    if (0.0f < -10.0f + (cM_rnd() - 0.5f)) {
                        mMotionSeqMngr.setNo(4, -1.0f, 0, 0);
                    } else {
                        mMotionSeqMngr.setNo(1, -1.0f, 0, 0);
                    }
                }
                switch (field_0xfec) {
                    case 4:
                        initTalk(0xd6, NULL); 
                        break;
                    default:
                        initTalk(0xd5, NULL);
                }
            } else {
                initTalk(mFlowNodeNo, NULL);
            }
            mMode = 2;
        }
        case 2:
            if (!mStagger.checkStagger()) {
                if (mTwilight != 0 || mPlayerAngle == mCurAngle.y || mType == TYPE_1 || field_0x1003 != 0) {
                    if (talkProc(NULL, 0, NULL, 0) && mFlow.checkEndFlow()) {
                        mPlayerActorMngr.entry(daPy_getPlayerActorClass());
                        dComIfGp_event_reset();
                        mMode = 3;
                    }

                    if (mType == TYPE_1) {
                        mJntAnm.lookActor(mActorMngr[2].getActorP(), -50.0f, 0);
                    } else {
                        mJntAnm.lookPlayer(0);
                        if (mTwilight != 0 || field_0x1003 == 2) {
                            mJntAnm.lookNone(0);
                        }
                    }
                } else {
                    mJntAnm.lookPlayer(0);
                    step(mPlayerAngle, 8, 14, 15, 0);
                }
            }
            break;
        case 3:
        default:
            break;
    }
    return 0;
}

/* 80A18F28-80A18F48 004908 0020+00 1/0 0/0 0/0 .text            daNpc_Jagar_Create__FPv */
static int daNpc_Jagar_Create(void* i_this) {
    return static_cast<daNpc_Jagar_c*>(i_this)->create();
}

/* 80A18F48-80A18F68 004928 0020+00 1/0 0/0 0/0 .text            daNpc_Jagar_Delete__FPv */
static int daNpc_Jagar_Delete(void* i_this) {
    return static_cast<daNpc_Jagar_c*>(i_this)->Delete();
}

/* 80A18F68-80A18F88 004948 0020+00 1/0 0/0 0/0 .text            daNpc_Jagar_Execute__FPv */
static int daNpc_Jagar_Execute(void* i_this) {
    return static_cast<daNpc_Jagar_c*>(i_this)->Execute();
}

/* 80A18F88-80A18FA8 004968 0020+00 1/0 0/0 0/0 .text            daNpc_Jagar_Draw__FPv */
static int daNpc_Jagar_Draw(void* i_this) {
    return static_cast<daNpc_Jagar_c*>(i_this)->Draw();
}

/* 80A18FA8-80A18FB0 004988 0008+00 1/0 0/0 0/0 .text            daNpc_Jagar_IsDelete__FPv */
static int daNpc_Jagar_IsDelete(void* i_this) {
    return 1;
}

/* 80A1A274-80A1A27C 005C54 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__13daNpc_Jagar_cFv */
s32 daNpc_Jagar_c::getEyeballMaterialNo() {
    return true;
}

/* 80A1A27C-80A1A284 005C5C 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__13daNpc_Jagar_cFv
 */
s32 daNpc_Jagar_c::getHeadJointNo() {
    return 4;
}

/* 80A1A284-80A1A28C 005C64 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__13daNpc_Jagar_cFv
 */
s32 daNpc_Jagar_c::getNeckJointNo() {
    return 3;
}

/* 80A1A28C-80A1A294 005C6C 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__13daNpc_Jagar_cFv */
long daNpc_Jagar_c::getBackboneJointNo() {
    return 1;
}

/* 80A1A2B4-80A1A2BC 005C94 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__13daNpc_Jagar_cFv
 */
s32 daNpc_Jagar_c::getFootLJointNo() {
    return 22;
}

/* 80A1A2BC-80A1A2C4 005C9C 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__13daNpc_Jagar_cFv
 */
s32 daNpc_Jagar_c::getFootRJointNo() {
    return 26;
}

// /* ############################################################################################## */
// /* 80A1AE4C-80A1AE50 000074 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AE4C[4];
// #pragma pop

// /* 80A1AE50-80A1AE54 000078 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__35JASGlobalInstance<14JASAudioThread>             */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AE50[4];
// #pragma pop

// /* 80A1AE54-80A1AE58 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AE54[4];
// #pragma pop

// /* 80A1AE58-80A1AE5C 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AE58[4];
// #pragma pop

// /* 80A1AE5C-80A1AE60 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
//  */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AE5C[4];
// #pragma pop

// /* 80A1AE60-80A1AE64 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
//  */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AE60[4];
// #pragma pop

// /* 80A1AE64-80A1AE68 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
//  */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AE64[4];
// #pragma pop

// /* 80A1AE68-80A1AE6C 000090 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AE68[4];
// #pragma pop

// /* 80A1AE6C-80A1AE70 000094 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AE6C[4];
// #pragma pop

// /* 80A1AE70-80A1AE74 000098 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AE70[4];
// #pragma pop

// /* 80A1AE74-80A1AE78 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AE74[4];
// #pragma pop

// /* 80A1AE78-80A1AE7C 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AE78[4];
// #pragma pop

// /* 80A1AE7C-80A1AE80 0000A4 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AE7C[4];
// #pragma pop

// /* 80A1AE80-80A1AE84 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
//  */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AE80[4];
// #pragma pop

// /* 80A1AE84-80A1AE88 0000AC 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AE84[4];
// #pragma pop

// /* 80A1AE88-80A1AE8C 0000B0 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AE88[4];
// #pragma pop

// /* 80A1AE8C-80A1AE90 0000B4 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AE8C[4];
// #pragma pop

// /* 80A1AE90-80A1AE94 0000B8 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AE90[4];
// #pragma pop

// /* 80A1AE94-80A1AE98 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
//  */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AE94[4];
// #pragma pop

// /* 80A1AE98-80A1AE9C 0000C0 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AE98[4];
// #pragma pop

// /* 80A1AE9C-80A1AEA0 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
//  */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AE9C[4];
// #pragma pop

// /* 80A1AEA0-80A1AEA4 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
//  */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AEA0[4];
// #pragma pop

// /* 80A1AEA4-80A1AEA8 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
//  */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AEA4[4];
// #pragma pop

// /* 80A1AEA8-80A1AEAC 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
//  */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AEA8[4];
// #pragma pop

// /* 80A1AEAC-80A1AEB0 0000D4 0004+00 0/0 0/0 0/0 .bss
//  * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
// #pragma push
// #pragma force_active on
// static u8 data_80A1AEAC[4];
// #pragma pop

/* 80A1AC10-80A1AC30 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Jagar_MethodTable */
static actor_method_class daNpc_Jagar_MethodTable = {
    (process_method_func)daNpc_Jagar_Create__FPv,
    (process_method_func)daNpc_Jagar_Delete__FPv,
    (process_method_func)daNpc_Jagar_Execute__FPv,
    (process_method_func)daNpc_Jagar_IsDelete__FPv,
    (process_method_func)daNpc_Jagar_Draw__FPv,
};

/* 80A1AC30-80A1AC60 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_JAGAR */
extern actor_process_profile_definition g_profile_NPC_JAGAR = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_JAGAR,           // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_Jagar_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  345,                      // mPriority
  &daNpc_Jagar_MethodTable, // sub_method
  0x00040107,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

// /* 80A1ACFC-80A1AD08 0007B4 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

AUDIO_INSTANCES;
