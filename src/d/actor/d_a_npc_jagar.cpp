/**
 * @file d_a_npc_jagar.cpp
 * 
*/

#include "d/actor/d_a_npc_jagar.h"
#include "d/actor/d_a_npc.h"
#include "f_op/f_op_actor_mng.h"
#include "Z2AudioLib/Z2Creature.h"
#include "d/d_particle_copoly.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"

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
extern "C" extern u8 g_meter2_info[248];
extern "C" void getType__11daNpc_Bou_cFv();
extern "C" u8 const m__17daNpc_Bou_Param_c[156];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80A1A49C-80A1A49C 00016C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A1A49C = "";
SECTION_DEAD static char const* const stringBase_80A1A49D = "NO_RESPONSE";
SECTION_DEAD static char const* const stringBase_80A1A4A9 = "CLIMBUP";
SECTION_DEAD static char const* const stringBase_80A1A4B1 = "NEED_YOUR_HELP";
SECTION_DEAD static char const* const stringBase_80A1A4C0 = "ANGER";
SECTION_DEAD static char const* const stringBase_80A1A4C6 = "CONVERSATION_WITH_BOU";
SECTION_DEAD static char const* const stringBase_80A1A4DC = "CONFIDENTIAL_CONVERSATION";
SECTION_DEAD static char const* const stringBase_80A1A4F6 = "FIND_WOLF";
SECTION_DEAD static char const* const stringBase_80A1A500 = "FIND_WOLF_VER2";
SECTION_DEAD static char const* const stringBase_80A1A50F = "Jagar";
SECTION_DEAD static char const* const stringBase_80A1A515 = "Jagar1";
SECTION_DEAD static char const* const stringBase_80A1A51C = "Jagar2";
SECTION_DEAD static char const* const stringBase_80A1A523 = "Jagar3";
#pragma pop

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
SECTION_DATA static u8 l_bmdData[8] = {
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x01,
};

/* 80A1A570-80A1A5B8 -00001 0048+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static daNpcT_evtData_c l_evtList[18] = {
    {"", 0},
    {"NO_RESPONSE", 0},
    {"CLIMBUP", 2},
    {"NEED_YOUR_HELP", 2},
    {"ANGER", 2},
    {"CONVERSATION_WITH_BOU", 3},
    {"CONFIDENTIAL_CONVERSATION", 3},
    {"FIND_WOLF", 3},
    {"FIND_WOLF_VER2", 3},
    // (void*)(((char*)&d_a_npc_jagar__stringBase0) + 0x24),
    // (void*)0x00000002,
    // (void*)(((char*)&d_a_npc_jagar__stringBase0) + 0x2A),
    // (void*)0x00000003,
    // (void*)(((char*)&d_a_npc_jagar__stringBase0) + 0x40),
    // (void*)0x00000003,
    // (void*)(((char*)&d_a_npc_jagar__stringBase0) + 0x5A),
    // (void*)0x00000003,
    // (void*)(((char*)&d_a_npc_jagar__stringBase0) + 0x64),
    // (void*)0x00000003,
};
#pragma pop

/* 80A1A5B8-80A1A5CC -00001 0014+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[5] = {
    (void*)&d_a_npc_jagar__stringBase0,
    (void*)(((char*)&d_a_npc_jagar__stringBase0) + 0x73),
    (void*)(((char*)&d_a_npc_jagar__stringBase0) + 0x79),
    (void*)(((char*)&d_a_npc_jagar__stringBase0) + 0x80),
    (void*)(((char*)&d_a_npc_jagar__stringBase0) + 0x87),
};

/* 80A1A5CC-80A1A5D0 000084 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u32 l_loadResPtrn0 = 0x010204FF;

/* 80A1A5D0-80A1A5D4 000088 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u8 l_loadResPtrn1[3 + 1 /* padding */] = {
    0x01,
    0x03,
    0xFF,
    /* padding */
    0x00,
};

/* 80A1A5D4-80A1A5DC 00008C 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn9 */
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

/* 80A1A5DC-80A1A5EC -00001 0010+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[4] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn1,
    (void*)&l_loadResPtrn9,
    (void*)&l_loadResPtrn9,
};

/* 80A1A5EC-80A1A704 0000A4 0118+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[280] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x14,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x12,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A1A704-80A1A8FC 0001BC 01F8+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[504] = {
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80A1A8FC-80A1A98C 0003B4 0090+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[144] = {
    0x00, 0x01, 0xFF, 0x01, 0x00, 0x07, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0x00, 0x09, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x06, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x05, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A1A98C-80A1AABC 000444 0130+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[304] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x01, 0x00, 0x03, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0x00, 0x0C, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x01, 0x00, 0x11, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x01, 0x00, 0x0C, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0x00, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0x00, 0x0C, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A1AABC-80A1AAD8 -00001 001C+00 1/1 0/0 0/0 .data            mCutNameList__13daNpc_Jagar_c */
SECTION_DATA void* daNpc_Jagar_c::mCutNameList[7] = {
    (void*)&d_a_npc_jagar__stringBase0,
    (void*)(((char*)&d_a_npc_jagar__stringBase0) + 0xD),
    (void*)(((char*)&d_a_npc_jagar__stringBase0) + 0x15),
    (void*)(((char*)&d_a_npc_jagar__stringBase0) + 0x24),
    (void*)(((char*)&d_a_npc_jagar__stringBase0) + 0x2A),
    (void*)(((char*)&d_a_npc_jagar__stringBase0) + 0x40),
    (void*)(((char*)&d_a_npc_jagar__stringBase0) + 0x5A),
};

/* 80A1AAD8-80A1AAE4 -00001 000C+00 0/1 0/0 0/0 .data            @3939 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3939[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutClimbUp__13daNpc_Jagar_cFi,
};
#pragma pop

/* 80A1AAE4-80A1AAF0 -00001 000C+00 0/1 0/0 0/0 .data            @3940 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3940[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutNeedYourHelp__13daNpc_Jagar_cFi,
};
#pragma pop

/* 80A1AAF0-80A1AAFC -00001 000C+00 0/1 0/0 0/0 .data            @3941 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3941[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutAnger__13daNpc_Jagar_cFi,
};
#pragma pop

/* 80A1AAFC-80A1AB08 -00001 000C+00 0/1 0/0 0/0 .data            @3942 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3942[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationWithBou__13daNpc_Jagar_cFi,
};
#pragma pop

/* 80A1AB08-80A1AB14 -00001 000C+00 0/1 0/0 0/0 .data            @3943 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3943[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConfidentialConversation__13daNpc_Jagar_cFi,
};
#pragma pop

/* 80A1AB14-80A1AB20 -00001 000C+00 0/1 0/0 0/0 .data            @3944 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3944[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutFindWolf__13daNpc_Jagar_cFi,
};
#pragma pop

/* 80A1AB20-80A1AB74 0005D8 0054+00 1/2 0/0 0/0 .data            mCutList__13daNpc_Jagar_c */
SECTION_DATA u8 daNpc_Jagar_c::mCutList[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A1AB74-80A1AB80 -00001 000C+00 1/1 0/0 0/0 .data            @4674 */
SECTION_DATA static void* lit_4674[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Jagar_cFPv,
};

/* 80A1AB80-80A1AB8C -00001 000C+00 1/1 0/0 0/0 .data            @4739 */
SECTION_DATA static void* lit_4739[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Jagar_cFPv,
};

/* 80A1AB8C-80A1AB98 -00001 000C+00 1/1 0/0 0/0 .data            @4744 */
SECTION_DATA static void* lit_4744[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__13daNpc_Jagar_cFPv,
};

/* 80A1AB98-80A1ABA4 -00001 000C+00 1/1 0/0 0/0 .data            @5061 */
SECTION_DATA static void* lit_5061[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talkwithBou__13daNpc_Jagar_cFPv,
};

/* 80A1ABA4-80A1ABB0 -00001 000C+00 1/1 0/0 0/0 .data            @5063 */
SECTION_DATA static void* lit_5063[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__13daNpc_Jagar_cFPv,
};

/* 80A1ABB0-80A1ABE0 -00001 0030+00 1/1 0/0 0/0 .data            @5661 */
SECTION_DATA static void* lit_5661[12] = {
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x304),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x370),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x3B0),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x440),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x4A4),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x4A4),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x4A4),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x4A4),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x4A4),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x4A4),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x47C),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x490),
};

/* 80A1ABE0-80A1AC10 -00001 0030+00 1/1 0/0 0/0 .data            @5660 */
SECTION_DATA static void* lit_5660[12] = {
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0xBC),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x2E4),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x194),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x22C),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x2E4),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x2E4),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x2E4),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x2E4),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x2E4),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x2E4),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x2E4),
    (void*)(((char*)cutFindWolf__13daNpc_Jagar_cFi) + 0x2E0),
};

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

/* 80A1AC60-80A1AC6C 000718 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80A1AC6C-80A1AC78 000724 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80A1AC78-80A1AC9C 000730 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A1A314,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A1A30C,
};

/* 80A1AC9C-80A1ACA8 000754 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80A1ACA8-80A1ACB4 000760 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80A1ACB4-80A1ACC0 00076C 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80A1ACC0-80A1ACCC 000778 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80A1ACCC-80A1ACD8 000784 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80A1ACD8-80A1ACE4 000790 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80A1ACE4-80A1ACF0 00079C 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80A1ACF0-80A1ACFC 0007A8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80A1ACFC-80A1AD08 0007B4 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80A1AD08-80A1ADCC 0007C0 00C4+00 2/2 0/0 0/0 .data            __vt__13daNpc_Jagar_c */
SECTION_DATA extern void* __vt__13daNpc_Jagar_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpc_Jagar_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__13daNpc_Jagar_cFi,
    (void*)checkRemoveJoint__13daNpc_Jagar_cFi,
    (void*)getBackboneJointNo__13daNpc_Jagar_cFv,
    (void*)getNeckJointNo__13daNpc_Jagar_cFv,
    (void*)getHeadJointNo__13daNpc_Jagar_cFv,
    (void*)getFootLJointNo__13daNpc_Jagar_cFv,
    (void*)getFootRJointNo__13daNpc_Jagar_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__13daNpc_Jagar_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__13daNpc_Jagar_cFi,
    (void*)setParam__13daNpc_Jagar_cFv,
    (void*)checkChangeEvt__13daNpc_Jagar_cFv,
    (void*)evtTalk__13daNpc_Jagar_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__13daNpc_Jagar_cFv,
    (void*)setAfterTalkMotion__13daNpc_Jagar_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__13daNpc_Jagar_cFv,
    (void*)beforeMove__13daNpc_Jagar_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__13daNpc_Jagar_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__13daNpc_Jagar_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__13daNpc_Jagar_cFv,
    (void*)drawOtherMdl__8daNpcT_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__8daNpcT_cFiifi,
    (void*)getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__8daNpcT_cFPiPi,
    (void*)changeBck__8daNpcT_cFPiPi,
    (void*)changeBtp__13daNpc_Jagar_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
};

/* 80A1470C-80A14858 0000EC 014C+00 1/0 0/0 0/0 .text            __dt__13daNpc_Jagar_cFv */
daNpc_Jagar_c::~daNpc_Jagar_c() {
    short in_r4;
    if (this == NULL) return;

        // Assign pointer at offset 0xe3c
        *(void**)((char*)this + 0xe3c) = __vt__13daNpc_Jagar_c;

        // Stop animation if it exists
        mDoExt_McaMorfSO* animation = *(mDoExt_McaMorfSO**)((char*)this + 0x578);
        if (animation != NULL) {
            animation->stopZelAnime();
        }

        // Delete resources
        // void deleteRes(
        //     // reinterpret_cast<daNpcT_c*>(this),
        //     l_loadResPtrn9[*(unsigned int*)((char*)this + 0xf80)],
        //     (const char **)l_resNameList
        // );

        // Assign pointer at offset 0xfd0 (if not specific memory location)
        if (this != reinterpret_cast<daNpc_Jagar_c*>(0xfffff054)) {
            *(void**)((char*)this + 0xfd0) = __vt__13daNpcT_Path_c;
        }

        // Destroy an array of `daNpcT_ActorMngr_c` objects
        // __destroy_arr(
        //     (char*)this + 0xf84, 
        //     ~daNpcT_ActorMngr_c, 
        //     8, 5
        // );

        // Assign virtual tables and pointers for collision objects
        // if (this != reinterpret_cast<daNpc_Jagar_c*>(0xfffff1bc)) {
        //     *(void**)((char*)this + 0xe80) = &dCcD_Cyl::__vt;
        //     *(void**)((char*)this + 0xf64) = &PTR_803ac07c;
        //     *(void**)((char*)this + 0xf7c) = &PTR_803ac0d4;

        //     if (this != reinterpret_cast<daNpc_Jagar_c*>(0xfffff0b8)) {
        //         *(void**)((char*)this + 0xf64) = &cCcD_CylAttr::__vt;
        //         *(void**)((char*)this + 0xf7c) = &PTR_803c35fc;

        //         if (this != reinterpret_cast<daNpc_Jagar_c*>(0xfffff098)) {
        //             *(void**)((char*)this + 0xf7c) = &DAT_80a1acf0;
        //         }

        //         if (this != reinterpret_cast<daNpc_Jagar_c*>(0xfffff0b8)) {
        //             *(void**)((char*)this + 0xf64) = &cCcD_ShapeAttr::__vt;
                    
        //             if (this != reinterpret_cast<daNpc_Jagar_c*>(0xfffff0b8)) {
        //                 *(void**)((char*)this + 0xf60) = &DAT_80a1ace4;
        //             }
        //         }
        //     }
        // }

        // Destroy collision object
        reinterpret_cast<dCcD_GObjInf*>((char*)this + 0xe44)->~dCcD_GObjInf();

        // Call base class destructor
        reinterpret_cast<daNpcT_c*>(this)->~daNpcT_c();

        // Free memory if in_r4 > 0
        // if (in_r4 > 0) {
        //     JKernel::operator_delete(this);
        // }
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A1A330-80A1A3D0 000000 00A0+00 13/13 0/0 1/1 .rodata          m__19daNpc_Jagar_Param_c */
daNpc_Jagar_Param_c::param const daNpc_Jagar_Param_c::m = {
    160.0f, -3.0f, 1.0f, 400.0f, 255.0f, 160.0f,
    35.0f, 30.0f, 0.0f, 0.0f, 10.0f, -10.0f,
    30.0f, -10.0f, 45.0f, -45.0f, 0.6f, 12.0f,
    3, 6, 5, 6, 110.0f, 500.0f, 300.0f, -300.0f,
    60, 8, 0.0f, 0.0f, 0.0f, 4.0f, 0.0f, 0.0f,
    0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1400.0f,
    200.0f, -800.0f, 16.0f, 1800.0f
    // 0x43, 0x2A, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    // 0x43, 0x7F, 0x00, 0x00, 0x43, 0x20, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    // 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    // 0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    // 0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    // 0x42, 0xDC, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00, 0x43, 0x96, 0x00, 0x00, 0xC3, 0x96, 0x00, 0x00,
    // 0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    // 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    // 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x44, 0xAF, 0x00, 0x00,
    // 0x43, 0x48, 0x00, 0x00, 0xC4, 0x48, 0x00, 0x00, 0x41, 0x80, 0x00, 0x00, 0x44, 0xE1, 0x00, 0x00,
};
// COMPILER_STRIP_GATE(0x80A1A330, &daNpc_Jagar_Param_c::m);

/* 80A1A3D0-80A1A3E0 0000A0 0010+00 0/1 0/0 0/0 .rodata          heapSize$4099 */
// #pragma push
// #pragma force_active on
static int const heapSize[4] = {
    0x3850, 0x3870, 0x3870, 0
    // 0x00, 0x00, 0x38, 0x50, 
    // 0x00, 0x00, 0x38, 0x70, 
    // 0x00, 0x00, 0x38, 0x70, 
    // 0x00, 0x00, 0x00, 0x00,
};
// COMPILER_STRIP_GATE(0x80A1A3D0, &heapSize);
// #pragma pop

/* 80A1A3E0-80A1A3E4 0000B0 0004+00 0/2 0/0 0/0 .rodata          @4165 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4165 = -200.0f;
COMPILER_STRIP_GATE(0x80A1A3E0, &lit_4165);
#pragma pop

/* 80A1A3E4-80A1A3E8 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4166 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4166 = -100.0f;
COMPILER_STRIP_GATE(0x80A1A3E4, &lit_4166);
#pragma pop

/* 80A1A3E8-80A1A3EC 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4167 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4167 = 200.0f;
COMPILER_STRIP_GATE(0x80A1A3E8, &lit_4167);
#pragma pop

/* 80A1A3EC-80A1A3F0 0000BC 0004+00 0/2 0/0 0/0 .rodata          @4168 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4168 = 300.0f;
COMPILER_STRIP_GATE(0x80A1A3EC, &lit_4168);
#pragma pop

/* 80A1A3F0-80A1A3F4 0000C0 0004+00 4/15 0/0 0/0 .rodata          @4169 */
// SECTION_RODATA static u8 const lit_4169[4] = {
//     0x00,
//     0x00,
//     0x00,
//     0x00,
// };
// COMPILER_STRIP_GATE(0x80A1A3F0, &lit_4169);
static u8 const lit_4169[4] = {
    0x00, 0x00, 0x00, 0x00,
};

/* 80A1A3F4-80A1A3F8 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4170 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4170 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80A1A3F4, &lit_4170);
#pragma pop

/* 80A14858-80A14B20 000238 02C8+00 1/1 0/0 0/0 .text            create__13daNpc_Jagar_cFv */
int daNpc_Jagar_c::create() {
    // NONMATCHING
    fopAcM_SetupActor2(this, daNpc_Jagar_c, (const daNpcT_faceMotionAnmData_c *)l_faceMotionAnmData,
        (const daNpcT_motionAnmData_c *)l_motionAnmData, (const daNpcT_MotionSeqMngr_c::sequenceStepData_c *) l_faceMotionSequenceData, 4,
        (const daNpcT_MotionSeqMngr_c::sequenceStepData_c *)l_motionSequenceData, 4, (const daNpcT_evtData_c *)l_evtList, (char **)l_resNameList
    );
// daNpc_Jagar_c* self = this;
unsigned int uVar1;
// daNpc_Jagar_c dVar4;
// int iVar2;
// int iVar3;
// bool bVar5;

// extern daNpcT_faceMotionAnmData_c DAT_80a1a5ec;
// extern daNpcT_motionAnmData_c DAT_80a1a704;
// extern daNpcT_MotionSeqMngr_c::sequenceStepData_c DAT_80a1a8fc;
// extern daNpcT_MotionSeqMngr_c::sequenceStepData_c DAT_80a1a98c;
// extern daNpcT_evtData_c d_a_npc_jagar_l_bmdData;
// // extern char* PTR_6305_80a1a5b8;
// // l_resNameList;
// // void* base = (char*)l_resNameList - 0x70;
// // void* adjustedPointer = (char*)base + 0x70;

// if ((*(unsigned int *)(this + 0x4a0) & 8) == 0) {
//   if (this != (daNpc_Jagar_c *)0x0) {
//     new (this) daNpc_Jagar_c(
//         &DAT_80a1a5ec,  // Face Motion Animation Data
//         &DAT_80a1a704,  // Motion Animation Data
//         &DAT_80a1a8fc,  // Sequence Step Data
//         4,              // Integer Parameter
//         &DAT_80a1a98c,  // More Sequence Step Data
//         4,              // Another Integer Parameter
//         &d_a_npc_jagar_l_bmdData,  // Event Data
//         (char**)l_resNameList         // Pointer to additional data
//     );
//     // daNpc_Jagar_c(this,(daNpcT_faceMotionAnmData_c *)&DAT_80a1a5ec,
//     //               (daNpcT_motionAnmData_c *)&DAT_80a1a704,(sequenceStepData_c *)&DAT_80a1a8fc,4,
//     //               (sequenceStepData_c *)&DAT_80a1a98c,4,
//     //               (daNpcT_evtData_c *)&d_a_npc_jagar::l_bmdData,&PTR_@6305_80a1a5b8);
//   }
//   *(unsigned int *)(this + 0x4a0) = *(unsigned int *)(this + 0x4a0) | 8;
// }
// // dVar4 = (daNpc_Jagar_c)getType(this);
// // this[0xf80] = dVar4;
// uVar1 = 0xffffffff;
// if (*(unsigned short *)(this + 0x4b4) != 0xffff) {
//   uVar1 = (unsigned int)*(unsigned short *)(this + 0x4b4);
// }
// *(unsigned int *)(this + 0xa7c) = uVar1;
// *(unsigned char*)((char*)this + 0xa89) = 0;  // Set the byte at offset 0xA89 to 0
// iVar2 = ((daNpcT_c *)this)->loadRes((const signed char*)&l_loadResPtrn9[*(char*)(this + 0xf80)],(const char **)l_resNameList);
// if (iVar2 == 4) {
// //   iVar3 = isDelete(this);
//   if (iVar3 == 0) {
//     bVar5 = fopAcM_entrySolidHeap
//                       ((fopAc_ac_c *)this,createHeapCallBack,
//                       *(u32 *)(&heapSize + (unsigned int)(*(unsigned char*)(this + 0xf80)) * 4));
//     if (bVar5) {
//       *(int *)(this + 0x504) = *(int *)(*(int *)(this + 0x578) + 4) + 0x24;
//       fopAcM_setCullSizeBox
//                 ((fopAc_ac_c *)this,-200.0,-100.0,-200.0,200.0,300.0,200.0);
//                 ((Z2Creature *)(this + 0x580))->init((Vec *)(this + 0x4d0), (Vec *)(this + 0x538), '\x03', '\x01');
//                 ((dPaPo_c *)(this + 0x9c0))->init((dBgS_Acch *)(this + 0x68c),0.0f,0.0f);
//     (this)->reset();
//     ((dBgS_Acch *)(this + 0x68c))->Set((cXyz *)(this + 0x4d0),(cXyz *)(this + 0x4bc),
//                      (fopAc_ac_c *)this,1,(dBgS_AcchCir *)(this + 0x8a0),(cXyz *)(this + 0x4f8),
//                      (csXyz *)(this + 0x4dc),(csXyz *)(this + 0x4e4));
//     ((dCcD_Stts *)(this + 0x864))->Init(0xff,0,(fopAc_ac_c *)this);
//     ((dCcD_Cyl *)(this + 0xe44))->Set(daNpcT_c::mCcDCyl);
//     *(daNpc_Jagar_c **)(this + 0xe88) = this + 0x864;
//     *(void (**)(fopAc_ac_c*, dCcD_GObjInf*, fopAc_ac_c*, dCcD_GObjInf*))(this + 0xee8) = ::daNpcT_c::tgHitCallBack;
//     ((dBgS_Acch *)(this + 0x68c))->CrrPos(dComIfG_Bgsp())
//     ;
//       *(unsigned int *)(this + 0x930) = *(unsigned int *)(this + 0x768);
//       *(unsigned int *)(this + 0x934) = *(unsigned int *)(this + 0x76c);
//       *(unsigned int *)(this + 0x938) = *(unsigned int *)(this + 0x770);
//       this[0x93c] = this[0x774];
//       *(unsigned short *)(this + 0x944) = *(unsigned short *)(this + 0x77c);
//       *(unsigned short *)(this + 0x946) = *(unsigned short *)(this + 0x77e);
//       *(unsigned int *)(this + 0x948) = *(unsigned int *)(this + 0x780);
//       *(unsigned int *)(this + 0x94c) = *(unsigned int *)(this + 0x784);
//       *(unsigned int *)(this + 0x954) = *(unsigned int *)(this + 0x78c);
//       *(unsigned int *)(this + 0x958) = *(unsigned int *)(this + 0x790);
//       *(unsigned int *)(this + 0x95c) = *(unsigned int *)(this + 0x794);
//       *(unsigned int *)(this + 0x960) = *(unsigned int *)(this + 0x798);
//       *(unsigned int *)(this + 0x964) = *(unsigned int *)(this + 0x79c);
//       *(unsigned int *)(this + 0x968) = *(unsigned int *)(this + 0x7a0);
//       *(unsigned int *)(this + 0xdf4) = *(unsigned int *)(this + 0x724);
//       if (*(float *)(this + 0xdf4) != -1e+09) {
//         ((daNpcT_c *)this)->setEnvTevColor();
//         ((daNpcT_c *)this)->setRoomNo();
//       }
//       *(unsigned char *)(this + 0xa88) = 0x1;
//     //   Execute(this);
//     *(unsigned char *)(this + 0xa88) = 0x0;
//     }
//     else {
//       iVar2 = 5;
//     }
//   }
//   else {
//     iVar2 = 5;
//   }
// }
// return iVar2;
    return 0;
}

/* ############################################################################################## */
/* 80A1A3F8-80A1A3FC 0000C8 0004+00 0/2 0/0 0/0 .rodata          @4332 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4332 = 65536.0f;
COMPILER_STRIP_GATE(0x80A1A3F8, &lit_4332);
#pragma pop

/* 80A1A3FC-80A1A400 0000CC 0004+00 0/3 0/0 0/0 .rodata          @4333 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4333 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A1A3FC, &lit_4333);
#pragma pop

/* 80A1A400-80A1A404 0000D0 0004+00 2/5 0/0 0/0 .rodata          @4475 */
SECTION_RODATA static f32 const lit_4475 = 1.0f;
COMPILER_STRIP_GATE(0x80A1A400, &lit_4475);

/* 80A14B20-80A14D90 000500 0270+00 1/1 0/0 0/0 .text            CreateHeap__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::CreateHeap() {
    // NONMATCHING
}

/* 80A14D90-80A14DCC 000770 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A14DCC-80A14DE4 0007AC 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A14DE4-80A14E20 0007C4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A14E20-80A14E38 000800 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A14E38-80A14E80 000818 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A14E80-80A14EA4 000860 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A14EA4-80A14EE0 000884 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A14EE0-80A14EF8 0008C0 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A14EF8-80A14F34 0008D8 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A14F34-80A14F4C 000914 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A14F4C-80A14F80 00092C 0034+00 1/1 0/0 0/0 .text            Delete__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::Delete() {
    // NONMATCHING
}

/* 80A14F80-80A14FA0 000960 0020+00 2/2 0/0 0/0 .text            Execute__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A1A404-80A1A408 0000D4 0004+00 1/2 0/0 0/0 .rodata          @4524 */
SECTION_RODATA static f32 const lit_4524 = 100.0f;
COMPILER_STRIP_GATE(0x80A1A404, &lit_4524);

/* 80A14FA0-80A15034 000980 0094+00 1/1 0/0 0/0 .text            Draw__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::Draw() {
    // NONMATCHING
}

/* 80A15034-80A15054 000A14 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__13daNpc_Jagar_cFP10fopAc_ac_c            */
void daNpc_Jagar_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A15054-80A150AC 000A34 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__13daNpc_Jagar_cFP8J3DJointi               */
void daNpc_Jagar_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80A150AC-80A150F8 000A8C 004C+00 1/1 0/0 2/2 .text            getType__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::getType() {
    // NONMATCHING
}

/* 80A150F8-80A15198 000AD8 00A0+00 1/1 0/0 0/0 .text            isDelete__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::isDelete() {
    // NONMATCHING
}

/* 80A15198-80A15364 000B78 01CC+00 1/1 0/0 0/0 .text            reset__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::reset() {
    // NONMATCHING
}

/* 80A15364-80A153E8 000D44 0084+00 1/0 0/0 0/0 .text            afterJntAnm__13daNpc_Jagar_cFi */
void daNpc_Jagar_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 80A153E8-80A155E4 000DC8 01FC+00 1/0 0/0 0/0 .text            setParam__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::setParam() {
    // NONMATCHING
}

/* 80A155E4-80A15714 000FC4 0130+00 1/0 0/0 0/0 .text            checkChangeEvt__13daNpc_Jagar_cFv
 */
void daNpc_Jagar_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A1A408-80A1A40C 0000D8 0004+00 2/8 0/0 0/0 .rodata          @4718 */
SECTION_RODATA static f32 const lit_4718 = -1.0f;
COMPILER_STRIP_GATE(0x80A1A408, &lit_4718);

/* 80A15714-80A157B4 0010F4 00A0+00 1/0 0/0 0/0 .text setAfterTalkMotion__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80A157B4-80A158A0 001194 00EC+00 1/1 0/0 0/0 .text            srchActors__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::srchActors() {
    // NONMATCHING
}

/* 80A158A0-80A15940 001280 00A0+00 1/0 0/0 0/0 .text            evtTalk__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::evtTalk() {
    // NONMATCHING
}

/* 80A15940-80A15A08 001320 00C8+00 1/0 0/0 0/0 .text            evtCutProc__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::evtCutProc() {
    // NONMATCHING
}

/* 80A15A08-80A15CA4 0013E8 029C+00 1/0 0/0 0/0 .text            action__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::action() {
    // NONMATCHING
}

/* 80A15CA4-80A15D68 001684 00C4+00 1/0 0/0 0/0 .text            beforeMove__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A1A40C-80A1A410 0000DC 0004+00 0/2 0/0 0/0 .rodata          @4932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4932 = -10.0f;
COMPILER_STRIP_GATE(0x80A1A40C, &lit_4932);
#pragma pop

/* 80A1A410-80A1A414 0000E0 0004+00 0/2 0/0 0/0 .rodata          @4933 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4933 = 10.0f;
COMPILER_STRIP_GATE(0x80A1A410, &lit_4933);
#pragma pop

/* 80A1A414-80A1A418 0000E4 0004+00 0/1 0/0 0/0 .rodata          @4934 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4934 = 0x38C90FDB;
COMPILER_STRIP_GATE(0x80A1A414, &lit_4934);
#pragma pop

/* 80A1A418-80A1A41C 0000E8 0004+00 0/1 0/0 0/0 .rodata          @4935 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4935 = -60.0f;
COMPILER_STRIP_GATE(0x80A1A418, &lit_4935);
#pragma pop

/* 80A1A41C-80A1A420 0000EC 0004+00 0/1 0/0 0/0 .rodata          @4936 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4936 = 3.0f;
COMPILER_STRIP_GATE(0x80A1A41C, &lit_4936);
#pragma pop

/* 80A1A420-80A1A428 0000F0 0004+04 0/1 0/0 0/0 .rodata          @4937 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4937[1 + 1 /* padding */] = {
    11.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80A1A420, &lit_4937);
#pragma pop

/* 80A1A428-80A1A430 0000F8 0008+00 1/3 0/0 0/0 .rodata          @4939 */
SECTION_RODATA static u8 const lit_4939[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A1A428, &lit_4939);

/* 80A1ADE0-80A1ADE4 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80A1ADE4-80A1ADE8 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80A1ADE8-80A1ADEC 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80A1ADEC-80A1ADF0 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80A1ADF0-80A1ADF4 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80A1ADF4-80A1ADF8 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80A1ADF8-80A1ADFC 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80A1ADFC-80A1AE00 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80A1AE00-80A1AE04 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80A1AE04-80A1AE08 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80A1AE08-80A1AE0C 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80A1AE0C-80A1AE10 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80A1AE10-80A1AE14 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80A1AE14-80A1AE18 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80A1AE18-80A1AE1C 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80A1AE1C-80A1AE20 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 80A1AE20-80A1AE2C 000048 000C+00 1/1 0/0 0/0 .bss             @3945 */
static u8 lit_3945[12];

/* 80A1AE2C-80A1AE30 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A1AE30-80A1AE40 000058 000C+04 0/1 0/0 0/0 .bss             @4873 */
#pragma push
#pragma force_active on
static u8 lit_4873[12 + 4 /* padding */];
#pragma pop

/* 80A1AE40-80A1AE4C 000068 000C+00 0/1 0/0 0/0 .bss             prtclScl$4872 */
#pragma push
#pragma force_active on
static u8 prtclScl[12];
#pragma pop

/* 80A15D68-80A1607C 001748 0314+00 1/0 0/0 0/0 .text            setAttnPos__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A1A430-80A1A438 000100 0008+00 0/2 0/0 0/0 .rodata          @4997 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4997[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A1A430, &lit_4997);
#pragma pop

/* 80A1A438-80A1A440 000108 0008+00 0/2 0/0 0/0 .rodata          @4998 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4998[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A1A438, &lit_4998);
#pragma pop

/* 80A1A440-80A1A448 000110 0008+00 0/2 0/0 0/0 .rodata          @4999 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4999[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A1A440, &lit_4999);
#pragma pop

/* 80A1A448-80A1A44C 000118 0004+00 0/1 0/0 0/0 .rodata          @5039 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5039 = 70.0f;
COMPILER_STRIP_GATE(0x80A1A448, &lit_5039);
#pragma pop

/* 80A1A44C-80A1A450 00011C 0004+00 0/1 0/0 0/0 .rodata          @5040 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5040 = 90.0f;
COMPILER_STRIP_GATE(0x80A1A44C, &lit_5040);
#pragma pop

/* 80A1607C-80A161EC 001A5C 0170+00 1/0 0/0 0/0 .text            setCollision__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::setCollision() {
    // NONMATCHING
}

/* 80A161EC-80A161F4 001BCC 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__13daNpc_Jagar_cFv */
bool daNpc_Jagar_c::drawDbgInfo() {
    return false;
}

/* 80A161F4-80A16234 001BD4 0040+00 1/0 0/0 0/0 .text            changeBtp__13daNpc_Jagar_cFPiPi */
void daNpc_Jagar_c::changeBtp(int* param_0, int* param_1) {
    // NONMATCHING
}

/* 80A16234-80A162B0 001C14 007C+00 1/1 0/0 0/0 .text            selectAction__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::selectAction() {
    // NONMATCHING
}

/* 80A162B0-80A162DC 001C90 002C+00 2/2 0/0 0/0 .text
 * chkAction__13daNpc_Jagar_cFM13daNpc_Jagar_cFPCvPvPv_i        */
void daNpc_Jagar_c::chkAction(int (daNpc_Jagar_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80A162DC-80A16384 001CBC 00A8+00 2/2 0/0 0/0 .text
 * setAction__13daNpc_Jagar_cFM13daNpc_Jagar_cFPCvPvPv_i        */
void daNpc_Jagar_c::setAction(int (daNpc_Jagar_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A1A49C-80A1A49C 00016C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A1A52A = "prm";
#pragma pop

/* 80A16384-80A16544 001D64 01C0+00 1/0 0/0 0/0 .text            cutClimbUp__13daNpc_Jagar_cFi */
void daNpc_Jagar_c::cutClimbUp(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A1A450-80A1A45C 000120 000C+00 0/1 0/0 0/0 .rodata          @5148 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5148[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80A1A450, &lit_5148);
#pragma pop

/* 80A1A49C-80A1A49C 00016C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A1A52E = "msgNo";
SECTION_DEAD static char const* const stringBase_80A1A534 = "msgNo2";
SECTION_DEAD static char const* const stringBase_80A1A53B = "send";
#pragma pop

/* 80A16544-80A16CD8 001F24 0794+00 1/0 0/0 0/0 .text            cutNeedYourHelp__13daNpc_Jagar_cFi
 */
void daNpc_Jagar_c::cutNeedYourHelp(int param_0) {
    // NONMATCHING
}

/* 80A16CD8-80A16EFC 0026B8 0224+00 1/0 0/0 0/0 .text            cutAnger__13daNpc_Jagar_cFi */
void daNpc_Jagar_c::cutAnger(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A1A45C-80A1A464 00012C 0008+00 1/1 0/0 0/0 .rodata          @5412 */
SECTION_RODATA static u8 const lit_5412[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A1A45C, &lit_5412);

/* 80A16EFC-80A1705C 0028DC 0160+00 1/0 0/0 0/0 .text cutConversationWithBou__13daNpc_Jagar_cFi */
void daNpc_Jagar_c::cutConversationWithBou(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A1A464-80A1A46C 000134 0008+00 0/1 0/0 0/0 .rodata          @5445 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5445[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A1A464, &lit_5445);
#pragma pop

/* 80A1A46C-80A1A478 00013C 000C+00 0/1 0/0 0/0 .rodata          @5455 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_5455[12] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,
};
COMPILER_STRIP_GATE(0x80A1A46C, &lit_5455);
#pragma pop

/* 80A1705C-80A173D8 002A3C 037C+00 1/0 0/0 0/0 .text
 * cutConfidentialConversation__13daNpc_Jagar_cFi               */
void daNpc_Jagar_c::cutConfidentialConversation(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A1A49C-80A1A49C 00016C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A1A540 = "timer";
#pragma pop

/* 80A173D8-80A17898 002DB8 04C0+00 3/0 0/0 0/0 .text            cutFindWolf__13daNpc_Jagar_cFi */
void daNpc_Jagar_c::cutFindWolf(int param_0) {
    // NONMATCHING
}

/* 80A17898-80A17924 003278 008C+00 1/1 0/0 0/0 .text            chkSitMotion__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::chkSitMotion() {
    // NONMATCHING
}

/* 80A17924-80A17984 003304 0060+00 1/1 0/0 0/0 .text            chkSitMotion2__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::chkSitMotion2() {
    // NONMATCHING
}

/* 80A17984-80A179F8 003364 0074+00 3/3 0/0 0/0 .text            chkChuMotion__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::chkChuMotion() {
    // NONMATCHING
}

/* 80A179F8-80A17A2C 0033D8 0034+00 1/1 0/0 0/0 .text            chkToMotion__13daNpc_Jagar_cFv */
void daNpc_Jagar_c::chkToMotion() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A1A478-80A1A47C 000148 0004+00 0/2 0/0 0/0 .rodata          @5527 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5527 = -40.0f;
COMPILER_STRIP_GATE(0x80A1A478, &lit_5527);
#pragma pop

/* 80A1A47C-80A1A480 00014C 0004+00 0/2 0/0 0/0 .rodata          @5659 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5659 = 0.5f;
COMPILER_STRIP_GATE(0x80A1A47C, &lit_5659);
#pragma pop

/* 80A1A480-80A1A484 000150 0004+00 0/1 0/0 0/0 .rodata          @6101 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6101 = 180.0f;
COMPILER_STRIP_GATE(0x80A1A480, &lit_6101);
#pragma pop

/* 80A17A2C-80A1856C 00340C 0B40+00 1/0 0/0 0/0 .text            wait__13daNpc_Jagar_cFPv */
void daNpc_Jagar_c::wait(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A1A484-80A1A488 000154 0004+00 0/1 0/0 0/0 .rodata          @6301 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6301 = -300.0f;
COMPILER_STRIP_GATE(0x80A1A484, &lit_6301);
#pragma pop

/* 80A1A488-80A1A48C 000158 0004+00 0/1 0/0 0/0 .rodata          @6302 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6302 = -50.0f;
COMPILER_STRIP_GATE(0x80A1A488, &lit_6302);
#pragma pop

/* 80A1A48C-80A1A490 00015C 0004+00 0/1 0/0 0/0 .rodata          @6303 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6303 = 400.0f;
COMPILER_STRIP_GATE(0x80A1A48C, &lit_6303);
#pragma pop

/* 80A1A490-80A1A494 000160 0004+00 0/1 0/0 0/0 .rodata          @6304 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6304 = 45.0f;
COMPILER_STRIP_GATE(0x80A1A490, &lit_6304);
#pragma pop

/* 80A1A494-80A1A498 000164 0004+00 0/1 0/0 0/0 .rodata          @6305 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6305 = 135.0f;
COMPILER_STRIP_GATE(0x80A1A494, &lit_6305);
#pragma pop

/* 80A1A498-80A1A49C 000168 0004+00 0/1 0/0 0/0 .rodata          @6306 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6306 = 450.0f;
COMPILER_STRIP_GATE(0x80A1A498, &lit_6306);
#pragma pop

/* 80A1856C-80A18B74 003F4C 0608+00 1/0 0/0 0/0 .text            talkwithBou__13daNpc_Jagar_cFPv */
void daNpc_Jagar_c::talkwithBou(void* param_0) {
    // NONMATCHING
}

/* 80A18B74-80A18F28 004554 03B4+00 3/0 0/0 0/0 .text            talk__13daNpc_Jagar_cFPv */
void daNpc_Jagar_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80A18F28-80A18F48 004908 0020+00 1/0 0/0 0/0 .text            daNpc_Jagar_Create__FPv */
static void daNpc_Jagar_Create(void* param_0) {
    // NONMATCHING
}

/* 80A18F48-80A18F68 004928 0020+00 1/0 0/0 0/0 .text            daNpc_Jagar_Delete__FPv */
static void daNpc_Jagar_Delete(void* param_0) {
    // NONMATCHING
}

/* 80A18F68-80A18F88 004948 0020+00 1/0 0/0 0/0 .text            daNpc_Jagar_Execute__FPv */
static void daNpc_Jagar_Execute(void* param_0) {
    // NONMATCHING
}

/* 80A18F88-80A18FA8 004968 0020+00 1/0 0/0 0/0 .text            daNpc_Jagar_Draw__FPv */
static void daNpc_Jagar_Draw(void* param_0) {
    // NONMATCHING
}

/* 80A18FA8-80A18FB0 004988 0008+00 1/0 0/0 0/0 .text            daNpc_Jagar_IsDelete__FPv */
static bool daNpc_Jagar_IsDelete(void* param_0) {
    return true;
}

/* 80A18FB0-80A18FE0 004990 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80A18FE0-80A19028 0049C0 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A19028-80A193B0 004A08 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A193B0-80A193EC 004D90 003C+00 4/4 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80A193EC-80A19428 004DCC 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80A19428-80A19470 004E08 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A19470-80A194B8 004E50 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80A194B8-80A194F4 004E98 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A194F4-80A1953C 004ED4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80A1953C-80A19584 004F1C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80A19584-80A19988 004F64 0404+00 1/1 0/0 0/0 .text
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

/* 80A19988-80A1998C 005368 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80A1998C-80A19A88 00536C 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80A19A88-80A19A8C 005468 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80A19A8C-80A19AD4 00546C 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80A19AD4-80A19B44 0054B4 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80A19B44-80A19BA0 005524 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A19BA0-80A19C10 005580 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80A19C10-80A19C58 0055F0 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80A19C58-80A19D74 005638 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80A19D74-80A19F7C 005754 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80A19F7C-80A19F80 00595C 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80A19F80-80A19F88 005960 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80A19F88-80A19F90 005968 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80A19F90-80A19F98 005970 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80A19F98-80A19F9C 005978 0004+00 1/0 0/0 0/0 .text            afterMoved__8daNpcT_cFv */
void daNpcT_c::afterMoved() {
    /* empty function */
}

/* 80A19F9C-80A19FA4 00597C 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80A19FA4-80A19FBC 005984 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A19FBC-80A19FC0 00599C 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80A19FC0-80A19FC4 0059A0 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80A19FC4-80A19FCC 0059A4 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80A19FCC-80A19FD4 0059AC 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80A19FD4-80A1A004 0059B4 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80A1A004-80A1A034 0059E4 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80A1A034-80A1A038 005A14 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A1A038-80A1A03C 005A18 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A1A03C-80A1A040 005A1C 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A1A040-80A1A05C 005A20 001C+00 2/2 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80A1A040(void* _this, int* param_0) {
    // NONMATCHING
}

/* 80A1A05C-80A1A098 005A3C 003C+00 1/1 0/0 0/0 .text            cLib_getRndValue<f>__Fff */
extern "C" void func_80A1A05C(void* _this, f32 param_0, f32 param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A1ADCC-80A1ADD8 000884 000C+00 2/2 0/0 0/0 .data            __vt__19daNpc_Jagar_Param_c */
SECTION_DATA extern void* __vt__19daNpc_Jagar_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__19daNpc_Jagar_Param_cFv,
};

/* 80A1A098-80A1A194 005A78 00FC+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_jagar_cpp */
void __sinit_d_a_npc_jagar_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80A1A098, __sinit_d_a_npc_jagar_cpp);
#pragma pop

/* 80A1A194-80A1A274 005B74 00E0+00 1/1 0/0 0/0 .text
 * __ct__13daNpc_Jagar_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Jagar_c::daNpc_Jagar_c(daNpcT_faceMotionAnmData_c const* param_0,
                                 daNpcT_motionAnmData_c const* param_1,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                 int param_3,
                                 daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                 int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
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
bool daNpc_Jagar_c::getBackboneJointNo() {
    return true;
}

/* 80A1A294-80A1A2A4 005C74 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__13daNpc_Jagar_cFi
 */
void daNpc_Jagar_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80A1A2A4-80A1A2B4 005C84 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__13daNpc_Jagar_cFi
 */
void daNpc_Jagar_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
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

/* 80A1A2C4-80A1A30C 005CA4 0048+00 2/1 0/0 0/0 .text            __dt__19daNpc_Jagar_Param_cFv */
daNpc_Jagar_Param_c::~daNpc_Jagar_Param_c() {
    // NONMATCHING
}

/* 80A1A30C-80A1A314 005CEC 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80A1A30C() {
    // NONMATCHING
}

/* 80A1A314-80A1A31C 005CF4 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80A1A314() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A1AE4C-80A1AE50 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80A1AE4C[4];
#pragma pop

/* 80A1AE50-80A1AE54 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80A1AE50[4];
#pragma pop

/* 80A1AE54-80A1AE58 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80A1AE54[4];
#pragma pop

/* 80A1AE58-80A1AE5C 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80A1AE58[4];
#pragma pop

/* 80A1AE5C-80A1AE60 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A1AE5C[4];
#pragma pop

/* 80A1AE60-80A1AE64 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A1AE60[4];
#pragma pop

/* 80A1AE64-80A1AE68 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80A1AE64[4];
#pragma pop

/* 80A1AE68-80A1AE6C 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80A1AE68[4];
#pragma pop

/* 80A1AE6C-80A1AE70 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80A1AE6C[4];
#pragma pop

/* 80A1AE70-80A1AE74 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80A1AE70[4];
#pragma pop

/* 80A1AE74-80A1AE78 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80A1AE74[4];
#pragma pop

/* 80A1AE78-80A1AE7C 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80A1AE78[4];
#pragma pop

/* 80A1AE7C-80A1AE80 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80A1AE7C[4];
#pragma pop

/* 80A1AE80-80A1AE84 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A1AE80[4];
#pragma pop

/* 80A1AE84-80A1AE88 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80A1AE84[4];
#pragma pop

/* 80A1AE88-80A1AE8C 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80A1AE88[4];
#pragma pop

/* 80A1AE8C-80A1AE90 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80A1AE8C[4];
#pragma pop

/* 80A1AE90-80A1AE94 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80A1AE90[4];
#pragma pop

/* 80A1AE94-80A1AE98 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80A1AE94[4];
#pragma pop

/* 80A1AE98-80A1AE9C 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80A1AE98[4];
#pragma pop

/* 80A1AE9C-80A1AEA0 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80A1AE9C[4];
#pragma pop

/* 80A1AEA0-80A1AEA4 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A1AEA0[4];
#pragma pop

/* 80A1AEA4-80A1AEA8 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A1AEA4[4];
#pragma pop

/* 80A1AEA8-80A1AEAC 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A1AEA8[4];
#pragma pop

/* 80A1AEAC-80A1AEB0 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80A1AEAC[4];
#pragma pop

/* 80A1A49C-80A1A49C 00016C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
