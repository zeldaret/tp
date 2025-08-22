/**
 * @file d_a_npc_pachi_maro.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_pachi_maro.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__18daNpc_Pachi_Maro_cFv();
extern "C" void create__18daNpc_Pachi_Maro_cFv();
extern "C" void CreateHeap__18daNpc_Pachi_Maro_cFv();
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
extern "C" void Delete__18daNpc_Pachi_Maro_cFv();
extern "C" void Execute__18daNpc_Pachi_Maro_cFv();
extern "C" void Draw__18daNpc_Pachi_Maro_cFv();
extern "C" void createHeapCallBack__18daNpc_Pachi_Maro_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__18daNpc_Pachi_Maro_cFP8J3DJointi();
extern "C" void getType__18daNpc_Pachi_Maro_cFv();
extern "C" void isDelete__18daNpc_Pachi_Maro_cFv();
extern "C" void reset__18daNpc_Pachi_Maro_cFv();
extern "C" void afterJntAnm__18daNpc_Pachi_Maro_cFi();
extern "C" void setParam__18daNpc_Pachi_Maro_cFv();
extern "C" bool checkChangeEvt__18daNpc_Pachi_Maro_cFv();
extern "C" void setAfterTalkMotion__18daNpc_Pachi_Maro_cFv();
extern "C" void srchActors__18daNpc_Pachi_Maro_cFv();
extern "C" void evtTalk__18daNpc_Pachi_Maro_cFv();
extern "C" void evtCutProc__18daNpc_Pachi_Maro_cFv();
extern "C" void action__18daNpc_Pachi_Maro_cFv();
extern "C" void beforeMove__18daNpc_Pachi_Maro_cFv();
extern "C" void afterMoved__18daNpc_Pachi_Maro_cFv();
extern "C" void setAttnPos__18daNpc_Pachi_Maro_cFv();
extern "C" void setCollision__18daNpc_Pachi_Maro_cFv();
extern "C" bool drawDbgInfo__18daNpc_Pachi_Maro_cFv();
extern "C" void getFaceMotionAnm__18daNpc_Pachi_Maro_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__18daNpc_Pachi_Maro_cF22daNpcT_motionAnmData_c();
extern "C" void selectAction__18daNpc_Pachi_Maro_cFv();
extern "C" void chkAction__18daNpc_Pachi_Maro_cFM18daNpc_Pachi_Maro_cFPCvPvPv_i();
extern "C" void setAction__18daNpc_Pachi_Maro_cFM18daNpc_Pachi_Maro_cFPCvPvPv_i();
extern "C" void wait__18daNpc_Pachi_Maro_cFPv();
extern "C" void talk__18daNpc_Pachi_Maro_cFPv();
extern "C" void _turn_to_link__18daNpc_Pachi_Maro_cFs();
extern "C" void _turn_pos__18daNpc_Pachi_Maro_cFRC4cXyzs();
extern "C" void _turn_pos__18daNpc_Pachi_Maro_cFRC4cXyz();
extern "C" void cutTutrialBegin__18daNpc_Pachi_Maro_cFi();
extern "C" bool _cutTutrialBegin_Init__18daNpc_Pachi_Maro_cFRCi();
extern "C" bool _cutTutrialBegin_Main__18daNpc_Pachi_Maro_cFRCi();
extern "C" void cutTutrialBegin_Skip__18daNpc_Pachi_Maro_cFi();
extern "C" bool _cutTutrialBegin_Skip_Init__18daNpc_Pachi_Maro_cFRCi();
extern "C" bool _cutTutrialBegin_Skip_Main__18daNpc_Pachi_Maro_cFRCi();
extern "C" void cutTutrialClear__18daNpc_Pachi_Maro_cFi();
extern "C" void _cutTutrialClear_Init__18daNpc_Pachi_Maro_cFRCi();
extern "C" void _cutTutrialClear_Main__18daNpc_Pachi_Maro_cFRCi();
extern "C" void cutTalk__18daNpc_Pachi_Maro_cFi();
extern "C" bool _cutTalk_Init__18daNpc_Pachi_Maro_cFRCi();
extern "C" void _cutTalk_Main__18daNpc_Pachi_Maro_cFRCi();
extern "C" void cutTalk2__18daNpc_Pachi_Maro_cFi();
extern "C" bool _cutTalk2_Init__18daNpc_Pachi_Maro_cFRCi();
extern "C" void _cutTalk2_Main__18daNpc_Pachi_Maro_cFRCi();
extern "C" void cut1stHit_KakasiBody__18daNpc_Pachi_Maro_cFi();
extern "C" void _cut1stHit_KakasiBody_Init__18daNpc_Pachi_Maro_cFRCi();
extern "C" void _cut1stHit_KakasiBody_Main__18daNpc_Pachi_Maro_cFRCi();
extern "C" void cutTutrialSelectGiveUp__18daNpc_Pachi_Maro_cFi();
extern "C" bool _cutTutrialSelectGiveUp_Init__18daNpc_Pachi_Maro_cFRCi();
extern "C" void _cutTutrialSelectGiveUp_Main__18daNpc_Pachi_Maro_cFRCi();
extern "C" void cutTutrialGiveUp__18daNpc_Pachi_Maro_cFi();
extern "C" bool _cutTutrialGiveUp_Init__18daNpc_Pachi_Maro_cFRCi();
extern "C" void _cutTutrialGiveUp_Main__18daNpc_Pachi_Maro_cFRCi();
extern "C" void cutTutrialContinue__18daNpc_Pachi_Maro_cFi();
extern "C" bool _cutTutrialContinue_Init__18daNpc_Pachi_Maro_cFRCi();
extern "C" void _cutTutrialContinue_Main__18daNpc_Pachi_Maro_cFRCi();
extern "C" void cutTutrialCaution__18daNpc_Pachi_Maro_cFi();
extern "C" bool _cutTutrialCaution_Init__18daNpc_Pachi_Maro_cFRCi();
extern "C" void _cutTutrialCaution_Main__18daNpc_Pachi_Maro_cFRCi();
extern "C" static void daNpc_Pachi_Maro_Create__FPv();
extern "C" static void daNpc_Pachi_Maro_Delete__FPv();
extern "C" static void daNpc_Pachi_Maro_Execute__FPv();
extern "C" static void daNpc_Pachi_Maro_Draw__FPv();
extern "C" static bool daNpc_Pachi_Maro_IsDelete__FPv();
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
extern "C" bool evtEndProc__8daNpcT_cFv();
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void decTmr__8daNpcT_cFv();
extern "C" void drawOtherMdl__8daNpcT_cFv();
extern "C" void drawGhost__8daNpcT_cFv();
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi();
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void __sinit_d_a_npc_pachi_maro_cpp();
extern "C" void
__ct__18daNpc_Pachi_Maro_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__18daNpc_Pachi_Maro_cFv();
extern "C" s32 getHeadJointNo__18daNpc_Pachi_Maro_cFv();
extern "C" s32 getNeckJointNo__18daNpc_Pachi_Maro_cFv();
extern "C" bool getBackboneJointNo__18daNpc_Pachi_Maro_cFv();
extern "C" void checkChangeJoint__18daNpc_Pachi_Maro_cFi();
extern "C" void checkRemoveJoint__18daNpc_Pachi_Maro_cFi();
extern "C" void __dt__24daNpc_Pachi_Maro_Param_cFv();
extern "C" static void func_80A9B868();
extern "C" static void func_80A9B870();
extern "C" u8 const m__24daNpc_Pachi_Maro_Param_c[144];
extern "C" extern char const* const d_a_npc_pachi_maro__stringBase0;
extern "C" void* mCutNameList__18daNpc_Pachi_Maro_c[11];
extern "C" u8 mCutList__18daNpc_Pachi_Maro_c[132];

//
// External References:
//

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
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
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
extern "C" void getNearestActorP__8daNpcT_cFs();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
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
/* 80A9B988-80A9B988 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A9B988 = "";
SECTION_DEAD static char const* const stringBase_80A9B989 = "TUTRIAL_TALK";
SECTION_DEAD static char const* const stringBase_80A9B996 = "Maro";
SECTION_DEAD static char const* const stringBase_80A9B99B = "Maro_TW";
SECTION_DEAD static char const* const stringBase_80A9B9A3 = "Maro1";
SECTION_DEAD static char const* const stringBase_80A9B9A9 = "Maro2";
SECTION_DEAD static char const* const stringBase_80A9B9AF = "Maro3";
SECTION_DEAD static char const* const stringBase_80A9B9B5 = "Taro1";
SECTION_DEAD static char const* const stringBase_80A9B9BB = "Taro2";
SECTION_DEAD static char const* const stringBase_80A9B9C1 = "Len1";
SECTION_DEAD static char const* const stringBase_80A9B9C6 = "Besu1";
SECTION_DEAD static char const* const stringBase_80A9B9CC = "evt_pachi";
SECTION_DEAD static char const* const stringBase_80A9B9D6 = "TUTRIAL_BEGIN";
SECTION_DEAD static char const* const stringBase_80A9B9E4 = "TUTRIAL_BEGIN_SKIP";
SECTION_DEAD static char const* const stringBase_80A9B9F7 = "TUTRIAL_CLEAR";
SECTION_DEAD static char const* const stringBase_80A9BA05 = "TUTRIAL_TALK2";
SECTION_DEAD static char const* const stringBase_80A9BA13 = "HIT_KAKASI_BODY";
SECTION_DEAD static char const* const stringBase_80A9BA23 = "TUTRIAL_SELECT_GIVEUP";
SECTION_DEAD static char const* const stringBase_80A9BA39 = "TUTRIAL_GIVEUP";
SECTION_DEAD static char const* const stringBase_80A9BA48 = "TUTRIAL_CONTINUE";
SECTION_DEAD static char const* const stringBase_80A9BA59 = "TUTRIAL_CAUTION";
#pragma pop

/* 80A9BA98-80A9BAA8 000020 0010+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[16] = {
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02,
};

/* 80A9BAA8-80A9BAB8 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[4] = {
    (void*)&d_a_npc_pachi_maro__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_pachi_maro__stringBase0) + 0x1),
    (void*)0x0000000A,
};
#pragma pop

/* 80A9BAB8-80A9BAE4 -00001 002C+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[11] = {
    (void*)&d_a_npc_pachi_maro__stringBase0,
    (void*)(((char*)&d_a_npc_pachi_maro__stringBase0) + 0xE),
    (void*)(((char*)&d_a_npc_pachi_maro__stringBase0) + 0x13),
    (void*)(((char*)&d_a_npc_pachi_maro__stringBase0) + 0x1B),
    (void*)(((char*)&d_a_npc_pachi_maro__stringBase0) + 0x21),
    (void*)(((char*)&d_a_npc_pachi_maro__stringBase0) + 0x27),
    (void*)(((char*)&d_a_npc_pachi_maro__stringBase0) + 0x2D),
    (void*)(((char*)&d_a_npc_pachi_maro__stringBase0) + 0x33),
    (void*)(((char*)&d_a_npc_pachi_maro__stringBase0) + 0x39),
    (void*)(((char*)&d_a_npc_pachi_maro__stringBase0) + 0x3E),
    (void*)(((char*)&d_a_npc_pachi_maro__stringBase0) + 0x44),
};

/* 80A9BAE4-80A9BAE8 00006C 0003+01 0/0 0/0 0/0 .data            l_loadResPtrn0 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_loadResPtrn0[3 + 1 /* padding */] = {
    0x01,
    0x03,
    0xFF,
    /* padding */
    0x00,
};
#pragma pop

/* 80A9BAE8-80A9BAEC 000070 0003+01 0/0 0/0 0/0 .data            l_loadResPtrn1 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_loadResPtrn1[3 + 1 /* padding */] = {
    0x01,
    0x02,
    0xFF,
    /* padding */
    0x00,
};
#pragma pop

/* 80A9BAEC-80A9BAF4 000074 0006+02 1/0 0/0 0/0 .data            l_loadResPtrn2 */
SECTION_DATA static u8 l_loadResPtrn2[6 + 2 /* padding */] = {
    0x01,
    0x03,
    0x04,
    0x05,
    0x0A,
    0xFF,
    /* padding */
    0x00,
    0x00,
};

/* 80A9BAF4-80A9BAFC 00007C 0005+03 1/0 0/0 0/0 .data            l_loadResPtrn3 */
SECTION_DATA static u8 l_loadResPtrn3[5 + 3 /* padding */] = {
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

/* 80A9BAFC-80A9BB04 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[2] = {
    (void*)&l_loadResPtrn2,
    (void*)&l_loadResPtrn3,
};

/* 80A9BB04-80A9BC1C 00008C 0118+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[280] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x15,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A9BC1C-80A9BD34 0001A4 0118+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[280] = {
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80A9BD34-80A9BDD4 0002BC 00A0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[160] = {
    0x00, 0x01, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x09, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A9BDD4-80A9BE64 00035C 0090+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[144] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0x00, 0x01, 0x00, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A9BE64-80A9BE90 -00001 002C+00 1/1 0/0 0/0 .data            mCutNameList__18daNpc_Pachi_Maro_c
 */
SECTION_DATA void* daNpc_Pachi_Maro_c::mCutNameList[11] = {
    (void*)&d_a_npc_pachi_maro__stringBase0,
    (void*)(((char*)&d_a_npc_pachi_maro__stringBase0) + 0x4E),
    (void*)(((char*)&d_a_npc_pachi_maro__stringBase0) + 0x5C),
    (void*)(((char*)&d_a_npc_pachi_maro__stringBase0) + 0x6F),
    (void*)(((char*)&d_a_npc_pachi_maro__stringBase0) + 0x1),
    (void*)(((char*)&d_a_npc_pachi_maro__stringBase0) + 0x7D),
    (void*)(((char*)&d_a_npc_pachi_maro__stringBase0) + 0x8B),
    (void*)(((char*)&d_a_npc_pachi_maro__stringBase0) + 0x9B),
    (void*)(((char*)&d_a_npc_pachi_maro__stringBase0) + 0xB1),
    (void*)(((char*)&d_a_npc_pachi_maro__stringBase0) + 0xC0),
    (void*)(((char*)&d_a_npc_pachi_maro__stringBase0) + 0xD1),
};

/* 80A9BE90-80A9BE9C -00001 000C+00 0/1 0/0 0/0 .data            @3952 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3952[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTutrialBegin__18daNpc_Pachi_Maro_cFi,
};
#pragma pop

/* 80A9BE9C-80A9BEA8 -00001 000C+00 0/1 0/0 0/0 .data            @3953 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3953[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTutrialBegin_Skip__18daNpc_Pachi_Maro_cFi,
};
#pragma pop

/* 80A9BEA8-80A9BEB4 -00001 000C+00 0/1 0/0 0/0 .data            @3954 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3954[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTutrialClear__18daNpc_Pachi_Maro_cFi,
};
#pragma pop

/* 80A9BEB4-80A9BEC0 -00001 000C+00 0/1 0/0 0/0 .data            @3955 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3955[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTalk__18daNpc_Pachi_Maro_cFi,
};
#pragma pop

/* 80A9BEC0-80A9BECC -00001 000C+00 0/1 0/0 0/0 .data            @3956 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3956[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTalk2__18daNpc_Pachi_Maro_cFi,
};
#pragma pop

/* 80A9BECC-80A9BED8 -00001 000C+00 0/1 0/0 0/0 .data            @3957 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3957[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cut1stHit_KakasiBody__18daNpc_Pachi_Maro_cFi,
};
#pragma pop

/* 80A9BED8-80A9BEE4 -00001 000C+00 0/1 0/0 0/0 .data            @3958 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3958[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTutrialSelectGiveUp__18daNpc_Pachi_Maro_cFi,
};
#pragma pop

/* 80A9BEE4-80A9BEF0 -00001 000C+00 0/1 0/0 0/0 .data            @3959 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3959[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTutrialGiveUp__18daNpc_Pachi_Maro_cFi,
};
#pragma pop

/* 80A9BEF0-80A9BEFC -00001 000C+00 0/1 0/0 0/0 .data            @3960 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3960[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTutrialContinue__18daNpc_Pachi_Maro_cFi,
};
#pragma pop

/* 80A9BEFC-80A9BF08 -00001 000C+00 0/1 0/0 0/0 .data            @3961 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3961[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTutrialCaution__18daNpc_Pachi_Maro_cFi,
};
#pragma pop

/* 80A9BF08-80A9BF8C 000490 0084+00 1/2 0/0 0/0 .data            mCutList__18daNpc_Pachi_Maro_c */
SECTION_DATA u8 daNpc_Pachi_Maro_c::mCutList[132] = {
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

/* 80A9BF8C-80A9BF98 -00001 000C+00 1/1 0/0 0/0 .data            @4688 */
SECTION_DATA static void* lit_4688[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__18daNpc_Pachi_Maro_cFPv,
};

/* 80A9BF98-80A9BFA4 -00001 000C+00 1/1 0/0 0/0 .data            @4698 */
SECTION_DATA static void* lit_4698[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__18daNpc_Pachi_Maro_cFPv,
};

/* 80A9BFA4-80A9BFB0 -00001 000C+00 1/1 0/0 0/0 .data            @4973 */
SECTION_DATA static void* lit_4973[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__18daNpc_Pachi_Maro_cFPv,
};

/* 80A9BFB0-80A9BFBC -00001 000C+00 1/1 0/0 0/0 .data            @4975 */
SECTION_DATA static void* lit_4975[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__18daNpc_Pachi_Maro_cFPv,
};

/* 80A9BFBC-80A9BFDC -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Pachi_Maro_MethodTable */
static actor_method_class daNpc_Pachi_Maro_MethodTable = {
    (process_method_func)daNpc_Pachi_Maro_Create__FPv,
    (process_method_func)daNpc_Pachi_Maro_Delete__FPv,
    (process_method_func)daNpc_Pachi_Maro_Execute__FPv,
    (process_method_func)daNpc_Pachi_Maro_IsDelete__FPv,
    (process_method_func)daNpc_Pachi_Maro_Draw__FPv,
};

/* 80A9BFDC-80A9C00C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_PACHI_MARO */
extern actor_process_profile_definition g_profile_NPC_PACHI_MARO = {
  fpcLy_CURRENT_e,               // mLayerID
  7,                             // mListID
  fpcPi_CURRENT_e,               // mListPrio
  PROC_NPC_PACHI_MARO,           // mProcName
  &g_fpcLf_Method.base,         // sub_method
  sizeof(daNpc_Pachi_Maro_c),    // mSize
  0,                             // mSizeOther
  0,                             // mParameters
  &g_fopAc_Method.base,          // sub_method
  370,                           // mPriority
  &daNpc_Pachi_Maro_MethodTable, // sub_method
  0x00044107,                    // mStatus
  fopAc_NPC_e,                   // mActorType
  fopAc_CULLBOX_CUSTOM_e,        // cullType
};

/* 80A9C00C-80A9C018 000594 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80A9C018-80A9C024 0005A0 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80A9C024-80A9C048 0005AC 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A9B870,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A9B868,
};

/* 80A9C048-80A9C054 0005D0 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80A9C054-80A9C060 0005DC 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80A9C060-80A9C06C 0005E8 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80A9C06C-80A9C078 0005F4 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80A9C078-80A9C084 000600 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80A9C084-80A9C090 00060C 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80A9C090-80A9C09C 000618 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80A9C09C-80A9C0A8 000624 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80A9C0A8-80A9C16C 000630 00C4+00 2/2 0/0 0/0 .data            __vt__18daNpc_Pachi_Maro_c */
SECTION_DATA extern void* __vt__18daNpc_Pachi_Maro_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpc_Pachi_Maro_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__18daNpc_Pachi_Maro_cFi,
    (void*)checkRemoveJoint__18daNpc_Pachi_Maro_cFi,
    (void*)getBackboneJointNo__18daNpc_Pachi_Maro_cFv,
    (void*)getNeckJointNo__18daNpc_Pachi_Maro_cFv,
    (void*)getHeadJointNo__18daNpc_Pachi_Maro_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__18daNpc_Pachi_Maro_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__18daNpc_Pachi_Maro_cFi,
    (void*)setParam__18daNpc_Pachi_Maro_cFv,
    (void*)checkChangeEvt__18daNpc_Pachi_Maro_cFv,
    (void*)evtTalk__18daNpc_Pachi_Maro_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__18daNpc_Pachi_Maro_cFv,
    (void*)setAfterTalkMotion__18daNpc_Pachi_Maro_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__18daNpc_Pachi_Maro_cFv,
    (void*)beforeMove__18daNpc_Pachi_Maro_cFv,
    (void*)afterMoved__18daNpc_Pachi_Maro_cFv,
    (void*)setAttnPos__18daNpc_Pachi_Maro_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__18daNpc_Pachi_Maro_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__18daNpc_Pachi_Maro_cFv,
    (void*)drawOtherMdl__8daNpcT_cFv,
    (void*)drawGhost__8daNpcT_cFv,
    (void*)afterSetFaceMotionAnm__8daNpcT_cFiifi,
    (void*)afterSetMotionAnm__8daNpcT_cFiifi,
    (void*)getFaceMotionAnm__18daNpc_Pachi_Maro_cF26daNpcT_faceMotionAnmData_c,
    (void*)getMotionAnm__18daNpc_Pachi_Maro_cF22daNpcT_motionAnmData_c,
    (void*)changeAnm__8daNpcT_cFPiPi,
    (void*)changeBck__8daNpcT_cFPiPi,
    (void*)changeBtp__8daNpcT_cFPiPi,
    (void*)changeBtk__8daNpcT_cFPiPi,
    (void*)setMotionAnm__8daNpcT_cFifi,
};

/* 80A97C8C-80A97DC4 0000EC 0138+00 1/0 0/0 0/0 .text            __dt__18daNpc_Pachi_Maro_cFv */
daNpc_Pachi_Maro_c::~daNpc_Pachi_Maro_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A9B88C-80A9B91C 000000 0090+00 8/8 0/0 0/0 .rodata          m__24daNpc_Pachi_Maro_Param_c */
SECTION_RODATA u8 const daNpc_Pachi_Maro_Param_c::m[144] = {
    0x42, 0xC8, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x42, 0xA0, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x04,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0xC1, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x70, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A9B88C, &daNpc_Pachi_Maro_Param_c::m);

/* 80A9B91C-80A9B920 000090 0004+00 0/1 0/0 0/0 .rodata          @4185 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4185 = -300.0f;
COMPILER_STRIP_GATE(0x80A9B91C, &lit_4185);
#pragma pop

/* 80A9B920-80A9B924 000094 0004+00 0/1 0/0 0/0 .rodata          @4186 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4186 = -50.0f;
COMPILER_STRIP_GATE(0x80A9B920, &lit_4186);
#pragma pop

/* 80A9B924-80A9B928 000098 0004+00 0/1 0/0 0/0 .rodata          @4187 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4187 = 300.0f;
COMPILER_STRIP_GATE(0x80A9B924, &lit_4187);
#pragma pop

/* 80A9B928-80A9B92C 00009C 0004+00 0/1 0/0 0/0 .rodata          @4188 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4188 = 450.0f;
COMPILER_STRIP_GATE(0x80A9B928, &lit_4188);
#pragma pop

/* 80A9B92C-80A9B930 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4189 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4189 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80A9B92C, &lit_4189);
#pragma pop

/* 80A97DC4-80A9809C 000224 02D8+00 1/1 0/0 0/0 .text            create__18daNpc_Pachi_Maro_cFv */
void daNpc_Pachi_Maro_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A9B930-80A9B934 0000A4 0004+00 7/11 0/0 0/0 .rodata          @4346 */
SECTION_RODATA static u8 const lit_4346[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A9B930, &lit_4346);

/* 80A9B934-80A9B938 0000A8 0004+00 0/2 0/0 0/0 .rodata          @4347 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4347 = 65536.0f;
COMPILER_STRIP_GATE(0x80A9B934, &lit_4347);
#pragma pop

/* 80A9B938-80A9B93C 0000AC 0004+00 0/3 0/0 0/0 .rodata          @4348 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4348 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A9B938, &lit_4348);
#pragma pop

/* 80A9B93C-80A9B940 0000B0 0004+00 2/4 0/0 0/0 .rodata          @4494 */
SECTION_RODATA static f32 const lit_4494 = 1.0f;
COMPILER_STRIP_GATE(0x80A9B93C, &lit_4494);

/* 80A9809C-80A98320 0004FC 0284+00 1/1 0/0 0/0 .text            CreateHeap__18daNpc_Pachi_Maro_cFv
 */
void daNpc_Pachi_Maro_c::CreateHeap() {
    // NONMATCHING
}

/* 80A98320-80A9835C 000780 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A9835C-80A98374 0007BC 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A98374-80A983B0 0007D4 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A983B0-80A983C8 000810 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A983C8-80A98410 000828 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A98410-80A98434 000870 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A98434-80A98470 000894 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A98470-80A98488 0008D0 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A98488-80A984C4 0008E8 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A984C4-80A984DC 000924 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A984DC-80A98510 00093C 0034+00 1/1 0/0 0/0 .text            Delete__18daNpc_Pachi_Maro_cFv */
void daNpc_Pachi_Maro_c::Delete() {
    // NONMATCHING
}

/* 80A98510-80A98530 000970 0020+00 2/2 0/0 0/0 .text            Execute__18daNpc_Pachi_Maro_cFv */
void daNpc_Pachi_Maro_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A9B940-80A9B944 0000B4 0004+00 1/1 0/0 0/0 .rodata          @4543 */
SECTION_RODATA static f32 const lit_4543 = 100.0f;
COMPILER_STRIP_GATE(0x80A9B940, &lit_4543);

/* 80A98530-80A985C4 000990 0094+00 1/1 0/0 0/0 .text            Draw__18daNpc_Pachi_Maro_cFv */
void daNpc_Pachi_Maro_c::Draw() {
    // NONMATCHING
}

/* 80A985C4-80A985E4 000A24 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__18daNpc_Pachi_Maro_cFP10fopAc_ac_c       */
void daNpc_Pachi_Maro_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A985E4-80A9863C 000A44 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__18daNpc_Pachi_Maro_cFP8J3DJointi          */
void daNpc_Pachi_Maro_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80A9863C-80A9865C 000A9C 0020+00 1/1 0/0 0/0 .text            getType__18daNpc_Pachi_Maro_cFv */
void daNpc_Pachi_Maro_c::getType() {
    // NONMATCHING
}

/* 80A9865C-80A9867C 000ABC 0020+00 1/1 0/0 0/0 .text            isDelete__18daNpc_Pachi_Maro_cFv */
void daNpc_Pachi_Maro_c::isDelete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A9B944-80A9B948 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4596 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4596 = 7.0f / 100.0f;
COMPILER_STRIP_GATE(0x80A9B944, &lit_4596);
#pragma pop

/* 80A9B948-80A9B94C 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4597 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4597 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80A9B948, &lit_4597);
#pragma pop

/* 80A9867C-80A987F4 000ADC 0178+00 1/1 0/0 0/0 .text            reset__18daNpc_Pachi_Maro_cFv */
void daNpc_Pachi_Maro_c::reset() {
    // NONMATCHING
}

/* 80A987F4-80A98870 000C54 007C+00 1/0 0/0 0/0 .text            afterJntAnm__18daNpc_Pachi_Maro_cFi
 */
void daNpc_Pachi_Maro_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 80A98870-80A9896C 000CD0 00FC+00 1/0 0/0 0/0 .text            setParam__18daNpc_Pachi_Maro_cFv */
void daNpc_Pachi_Maro_c::setParam() {
    // NONMATCHING
}

/* 80A9896C-80A98974 000DCC 0008+00 1/0 0/0 0/0 .text checkChangeEvt__18daNpc_Pachi_Maro_cFv */
bool daNpc_Pachi_Maro_c::checkChangeEvt() {
    return false;
}

/* ############################################################################################## */
/* 80A9B94C-80A9B950 0000C0 0004+00 3/3 0/0 0/0 .rodata          @4673 */
SECTION_RODATA static f32 const lit_4673 = -1.0f;
COMPILER_STRIP_GATE(0x80A9B94C, &lit_4673);

/* 80A98974-80A98A10 000DD4 009C+00 1/0 0/0 0/0 .text setAfterTalkMotion__18daNpc_Pachi_Maro_cFv
 */
void daNpc_Pachi_Maro_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80A98A10-80A98A98 000E70 0088+00 1/1 0/0 0/0 .text            srchActors__18daNpc_Pachi_Maro_cFv
 */
void daNpc_Pachi_Maro_c::srchActors() {
    // NONMATCHING
}

/* 80A98A98-80A98B9C 000EF8 0104+00 1/0 0/0 0/0 .text            evtTalk__18daNpc_Pachi_Maro_cFv */
void daNpc_Pachi_Maro_c::evtTalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A9B988-80A9B988 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A9BA69 = "PA_Maro";
#pragma pop

/* 80A98B9C-80A98C64 000FFC 00C8+00 1/0 0/0 0/0 .text            evtCutProc__18daNpc_Pachi_Maro_cFv
 */
void daNpc_Pachi_Maro_c::evtCutProc() {
    // NONMATCHING
}

/* 80A98C64-80A98DE8 0010C4 0184+00 1/0 0/0 0/0 .text            action__18daNpc_Pachi_Maro_cFv */
void daNpc_Pachi_Maro_c::action() {
    // NONMATCHING
}

/* 80A98DE8-80A98E60 001248 0078+00 1/0 0/0 0/0 .text            beforeMove__18daNpc_Pachi_Maro_cFv
 */
void daNpc_Pachi_Maro_c::beforeMove() {
    // NONMATCHING
}

/* 80A98E60-80A98FB4 0012C0 0154+00 1/0 0/0 0/0 .text            afterMoved__18daNpc_Pachi_Maro_cFv
 */
void daNpc_Pachi_Maro_c::afterMoved() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A9B950-80A9B954 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4850 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4850 = -30.0f;
COMPILER_STRIP_GATE(0x80A9B950, &lit_4850);
#pragma pop

/* 80A9B954-80A9B95C 0000C8 0004+04 0/1 0/0 0/0 .rodata          @4851 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4851[1 + 1 /* padding */] = {
    0x38C90FDB,
    /* padding */
    0x00000000,
};
COMPILER_STRIP_GATE(0x80A9B954, &lit_4851);
#pragma pop

/* 80A9B95C-80A9B964 0000D0 0008+00 1/3 0/0 0/0 .rodata          @4853 */
SECTION_RODATA static u8 const lit_4853[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A9B95C, &lit_4853);

/* 80A98FB4-80A9928C 001414 02D8+00 1/0 0/0 0/0 .text            setAttnPos__18daNpc_Pachi_Maro_cFv
 */
void daNpc_Pachi_Maro_c::setAttnPos() {
    // NONMATCHING
}

/* 80A9928C-80A99394 0016EC 0108+00 1/0 0/0 0/0 .text setCollision__18daNpc_Pachi_Maro_cFv */
void daNpc_Pachi_Maro_c::setCollision() {
    // NONMATCHING
}

/* 80A99394-80A9939C 0017F4 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__18daNpc_Pachi_Maro_cFv
 */
bool daNpc_Pachi_Maro_c::drawDbgInfo() {
    return false;
}

/* 80A9939C-80A99428 0017FC 008C+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__18daNpc_Pachi_Maro_cF26daNpcT_faceMotionAnmData_c */
void daNpc_Pachi_Maro_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
    // NONMATCHING
}

/* 80A99428-80A994B4 001888 008C+00 1/0 0/0 0/0 .text
 * getMotionAnm__18daNpc_Pachi_Maro_cF22daNpcT_motionAnmData_c  */
void daNpc_Pachi_Maro_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
    // NONMATCHING
}

/* 80A994B4-80A99530 001914 007C+00 1/1 0/0 0/0 .text selectAction__18daNpc_Pachi_Maro_cFv */
void daNpc_Pachi_Maro_c::selectAction() {
    // NONMATCHING
}

/* 80A99530-80A9955C 001990 002C+00 1/1 0/0 0/0 .text
 * chkAction__18daNpc_Pachi_Maro_cFM18daNpc_Pachi_Maro_cFPCvPvPv_i */
void daNpc_Pachi_Maro_c::chkAction(int (daNpc_Pachi_Maro_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80A9955C-80A99604 0019BC 00A8+00 2/2 0/0 0/0 .text
 * setAction__18daNpc_Pachi_Maro_cFM18daNpc_Pachi_Maro_cFPCvPvPv_i */
void daNpc_Pachi_Maro_c::setAction(int (daNpc_Pachi_Maro_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80A99604-80A9986C 001A64 0268+00 2/0 0/0 0/0 .text            wait__18daNpc_Pachi_Maro_cFPv */
void daNpc_Pachi_Maro_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80A9986C-80A998FC 001CCC 0090+00 2/0 0/0 0/0 .text            talk__18daNpc_Pachi_Maro_cFPv */
void daNpc_Pachi_Maro_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80A998FC-80A99948 001D5C 004C+00 3/3 0/0 0/0 .text _turn_to_link__18daNpc_Pachi_Maro_cFs */
void daNpc_Pachi_Maro_c::_turn_to_link(s16 param_0) {
    // NONMATCHING
}

/* 80A99948-80A999A4 001DA8 005C+00 4/4 0/0 0/0 .text _turn_pos__18daNpc_Pachi_Maro_cFRC4cXyzs */
void daNpc_Pachi_Maro_c::_turn_pos(cXyz const& param_0, s16 param_1) {
    // NONMATCHING
}

/* 80A999A4-80A999E4 001E04 0040+00 1/1 0/0 0/0 .text _turn_pos__18daNpc_Pachi_Maro_cFRC4cXyz */
void daNpc_Pachi_Maro_c::_turn_pos(cXyz const& param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A9B988-80A9B988 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A9BA71 = "cutId";
#pragma pop

/* 80A999E4-80A99A78 001E44 0094+00 1/0 0/0 0/0 .text cutTutrialBegin__18daNpc_Pachi_Maro_cFi */
void daNpc_Pachi_Maro_c::cutTutrialBegin(int param_0) {
    // NONMATCHING
}

/* 80A99A78-80A99A80 001ED8 0008+00 1/1 0/0 0/0 .text
 * _cutTutrialBegin_Init__18daNpc_Pachi_Maro_cFRCi              */
bool daNpc_Pachi_Maro_c::_cutTutrialBegin_Init(int const& param_0) {
    return true;
}

/* 80A99A80-80A99A88 001EE0 0008+00 1/1 0/0 0/0 .text
 * _cutTutrialBegin_Main__18daNpc_Pachi_Maro_cFRCi              */
bool daNpc_Pachi_Maro_c::_cutTutrialBegin_Main(int const& param_0) {
    return false;
}

/* 80A99A88-80A99B1C 001EE8 0094+00 1/0 0/0 0/0 .text cutTutrialBegin_Skip__18daNpc_Pachi_Maro_cFi
 */
void daNpc_Pachi_Maro_c::cutTutrialBegin_Skip(int param_0) {
    // NONMATCHING
}

/* 80A99B1C-80A99B24 001F7C 0008+00 1/1 0/0 0/0 .text
 * _cutTutrialBegin_Skip_Init__18daNpc_Pachi_Maro_cFRCi         */
bool daNpc_Pachi_Maro_c::_cutTutrialBegin_Skip_Init(int const& param_0) {
    return true;
}

/* 80A99B24-80A99B2C 001F84 0008+00 1/1 0/0 0/0 .text
 * _cutTutrialBegin_Skip_Main__18daNpc_Pachi_Maro_cFRCi         */
bool daNpc_Pachi_Maro_c::_cutTutrialBegin_Skip_Main(int const& param_0) {
    return false;
}

/* 80A99B2C-80A99BC0 001F8C 0094+00 1/0 0/0 0/0 .text cutTutrialClear__18daNpc_Pachi_Maro_cFi */
void daNpc_Pachi_Maro_c::cutTutrialClear(int param_0) {
    // NONMATCHING
}

/* 80A99BC0-80A99CB8 002020 00F8+00 1/1 0/0 0/0 .text
 * _cutTutrialClear_Init__18daNpc_Pachi_Maro_cFRCi              */
void daNpc_Pachi_Maro_c::_cutTutrialClear_Init(int const& param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A9B964-80A9B96C 0000D8 0008+00 0/1 0/0 0/0 .rodata          @4911 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4911[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A9B964, &lit_4911);
#pragma pop

/* 80A9B96C-80A9B974 0000E0 0008+00 0/1 0/0 0/0 .rodata          @4912 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4912[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A9B96C, &lit_4912);
#pragma pop

/* 80A9B974-80A9B97C 0000E8 0008+00 0/1 0/0 0/0 .rodata          @4913 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4913[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A9B974, &lit_4913);
#pragma pop

/* 80A9B97C-80A9B980 0000F0 0004+00 0/2 0/0 0/0 .rodata          @5222 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5222 = 0x445FBAA0;
COMPILER_STRIP_GATE(0x80A9B97C, &lit_5222);
#pragma pop

/* 80A9B980-80A9B984 0000F4 0004+00 0/2 0/0 0/0 .rodata          @5223 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5223 = 0x4461DA4E;
COMPILER_STRIP_GATE(0x80A9B980, &lit_5223);
#pragma pop

/* 80A9B984-80A9B988 0000F8 0004+00 0/2 0/0 0/0 .rodata          @5224 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5224 = 0xC4FF0B85;
COMPILER_STRIP_GATE(0x80A9B984, &lit_5224);
#pragma pop

/* 80A99CB8-80A99D4C 002118 0094+00 1/1 0/0 0/0 .text
 * _cutTutrialClear_Main__18daNpc_Pachi_Maro_cFRCi              */
void daNpc_Pachi_Maro_c::_cutTutrialClear_Main(int const& param_0) {
    // NONMATCHING
}

/* 80A99D4C-80A99DE0 0021AC 0094+00 1/0 0/0 0/0 .text            cutTalk__18daNpc_Pachi_Maro_cFi */
void daNpc_Pachi_Maro_c::cutTalk(int param_0) {
    // NONMATCHING
}

/* 80A99DE0-80A99DE8 002240 0008+00 1/1 0/0 0/0 .text _cutTalk_Init__18daNpc_Pachi_Maro_cFRCi */
bool daNpc_Pachi_Maro_c::_cutTalk_Init(int const& param_0) {
    return true;
}

/* 80A99DE8-80A99E44 002248 005C+00 1/1 0/0 0/0 .text _cutTalk_Main__18daNpc_Pachi_Maro_cFRCi */
void daNpc_Pachi_Maro_c::_cutTalk_Main(int const& param_0) {
    // NONMATCHING
}

/* 80A99E44-80A99ED8 0022A4 0094+00 1/0 0/0 0/0 .text            cutTalk2__18daNpc_Pachi_Maro_cFi */
void daNpc_Pachi_Maro_c::cutTalk2(int param_0) {
    // NONMATCHING
}

/* 80A99ED8-80A99EE0 002338 0008+00 1/1 0/0 0/0 .text _cutTalk2_Init__18daNpc_Pachi_Maro_cFRCi */
bool daNpc_Pachi_Maro_c::_cutTalk2_Init(int const& param_0) {
    return true;
}

/* 80A99EE0-80A99F3C 002340 005C+00 1/1 0/0 0/0 .text _cutTalk2_Main__18daNpc_Pachi_Maro_cFRCi */
void daNpc_Pachi_Maro_c::_cutTalk2_Main(int const& param_0) {
    // NONMATCHING
}

/* 80A99F3C-80A99FD0 00239C 0094+00 1/0 0/0 0/0 .text cut1stHit_KakasiBody__18daNpc_Pachi_Maro_cFi
 */
void daNpc_Pachi_Maro_c::cut1stHit_KakasiBody(int param_0) {
    // NONMATCHING
}

/* 80A99FD0-80A9A05C 002430 008C+00 1/1 0/0 0/0 .text
 * _cut1stHit_KakasiBody_Init__18daNpc_Pachi_Maro_cFRCi         */
void daNpc_Pachi_Maro_c::_cut1stHit_KakasiBody_Init(int const& param_0) {
    // NONMATCHING
}

/* 80A9A05C-80A9A0F0 0024BC 0094+00 1/1 0/0 0/0 .text
 * _cut1stHit_KakasiBody_Main__18daNpc_Pachi_Maro_cFRCi         */
void daNpc_Pachi_Maro_c::_cut1stHit_KakasiBody_Main(int const& param_0) {
    // NONMATCHING
}

/* 80A9A0F0-80A9A184 002550 0094+00 1/0 0/0 0/0 .text
 * cutTutrialSelectGiveUp__18daNpc_Pachi_Maro_cFi               */
void daNpc_Pachi_Maro_c::cutTutrialSelectGiveUp(int param_0) {
    // NONMATCHING
}

/* 80A9A184-80A9A18C 0025E4 0008+00 1/1 0/0 0/0 .text
 * _cutTutrialSelectGiveUp_Init__18daNpc_Pachi_Maro_cFRCi       */
bool daNpc_Pachi_Maro_c::_cutTutrialSelectGiveUp_Init(int const& param_0) {
    return true;
}

/* 80A9A18C-80A9A288 0025EC 00FC+00 1/1 0/0 0/0 .text
 * _cutTutrialSelectGiveUp_Main__18daNpc_Pachi_Maro_cFRCi       */
void daNpc_Pachi_Maro_c::_cutTutrialSelectGiveUp_Main(int const& param_0) {
    // NONMATCHING
}

/* 80A9A288-80A9A31C 0026E8 0094+00 1/0 0/0 0/0 .text cutTutrialGiveUp__18daNpc_Pachi_Maro_cFi */
void daNpc_Pachi_Maro_c::cutTutrialGiveUp(int param_0) {
    // NONMATCHING
}

/* 80A9A31C-80A9A324 00277C 0008+00 1/1 0/0 0/0 .text
 * _cutTutrialGiveUp_Init__18daNpc_Pachi_Maro_cFRCi             */
bool daNpc_Pachi_Maro_c::_cutTutrialGiveUp_Init(int const& param_0) {
    return true;
}

/* 80A9A324-80A9A360 002784 003C+00 1/1 0/0 0/0 .text
 * _cutTutrialGiveUp_Main__18daNpc_Pachi_Maro_cFRCi             */
void daNpc_Pachi_Maro_c::_cutTutrialGiveUp_Main(int const& param_0) {
    // NONMATCHING
}

/* 80A9A360-80A9A3F4 0027C0 0094+00 1/0 0/0 0/0 .text cutTutrialContinue__18daNpc_Pachi_Maro_cFi
 */
void daNpc_Pachi_Maro_c::cutTutrialContinue(int param_0) {
    // NONMATCHING
}

/* 80A9A3F4-80A9A3FC 002854 0008+00 1/1 0/0 0/0 .text
 * _cutTutrialContinue_Init__18daNpc_Pachi_Maro_cFRCi           */
bool daNpc_Pachi_Maro_c::_cutTutrialContinue_Init(int const& param_0) {
    return true;
}

/* 80A9A3FC-80A9A438 00285C 003C+00 1/1 0/0 0/0 .text
 * _cutTutrialContinue_Main__18daNpc_Pachi_Maro_cFRCi           */
void daNpc_Pachi_Maro_c::_cutTutrialContinue_Main(int const& param_0) {
    // NONMATCHING
}

/* 80A9A438-80A9A4CC 002898 0094+00 1/0 0/0 0/0 .text cutTutrialCaution__18daNpc_Pachi_Maro_cFi */
void daNpc_Pachi_Maro_c::cutTutrialCaution(int param_0) {
    // NONMATCHING
}

/* 80A9A4CC-80A9A4D4 00292C 0008+00 1/1 0/0 0/0 .text
 * _cutTutrialCaution_Init__18daNpc_Pachi_Maro_cFRCi            */
bool daNpc_Pachi_Maro_c::_cutTutrialCaution_Init(int const& param_0) {
    return true;
}

/* 80A9A4D4-80A9A538 002934 0064+00 1/1 0/0 0/0 .text
 * _cutTutrialCaution_Main__18daNpc_Pachi_Maro_cFRCi            */
void daNpc_Pachi_Maro_c::_cutTutrialCaution_Main(int const& param_0) {
    // NONMATCHING
}

/* 80A9A538-80A9A558 002998 0020+00 1/0 0/0 0/0 .text            daNpc_Pachi_Maro_Create__FPv */
static void daNpc_Pachi_Maro_Create(void* param_0) {
    // NONMATCHING
}

/* 80A9A558-80A9A578 0029B8 0020+00 1/0 0/0 0/0 .text            daNpc_Pachi_Maro_Delete__FPv */
static void daNpc_Pachi_Maro_Delete(void* param_0) {
    // NONMATCHING
}

/* 80A9A578-80A9A598 0029D8 0020+00 1/0 0/0 0/0 .text            daNpc_Pachi_Maro_Execute__FPv */
static void daNpc_Pachi_Maro_Execute(void* param_0) {
    // NONMATCHING
}

/* 80A9A598-80A9A5B8 0029F8 0020+00 1/0 0/0 0/0 .text            daNpc_Pachi_Maro_Draw__FPv */
static void daNpc_Pachi_Maro_Draw(void* param_0) {
    // NONMATCHING
}

/* 80A9A5B8-80A9A5C0 002A18 0008+00 1/0 0/0 0/0 .text            daNpc_Pachi_Maro_IsDelete__FPv */
static bool daNpc_Pachi_Maro_IsDelete(void* param_0) {
    return true;
}

/* 80A9A5C0-80A9A5F0 002A20 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80A9A5F0-80A9A638 002A50 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A9A638-80A9A9C0 002A98 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A9A9C0-80A9A9FC 002E20 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80A9A9FC-80A9AA38 002E5C 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80A9AA38-80A9AA80 002E98 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A9AA80-80A9AABC 002EE0 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A9AABC-80A9AB04 002F1C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80A9AB04-80A9AB4C 002F64 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80A9AB4C-80A9AF50 002FAC 0404+00 1/1 0/0 0/0 .text
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

/* 80A9AF50-80A9AF54 0033B0 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80A9AF54-80A9B050 0033B4 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80A9B050-80A9B054 0034B0 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80A9B054-80A9B09C 0034B4 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80A9B09C-80A9B10C 0034FC 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80A9B10C-80A9B168 00356C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A9B168-80A9B1D8 0035C8 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80A9B1D8-80A9B220 003638 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80A9B220-80A9B33C 003680 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80A9B33C-80A9B544 00379C 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80A9B544-80A9B548 0039A4 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80A9B558-80A9B560 0039B8 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80A9B560-80A9B568 0039C0 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80A9B568-80A9B570 0039C8 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80A9B570-80A9B578 0039D0 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80A9B578-80A9B590 0039D8 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A9B590-80A9B594 0039F0 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80A9B594-80A9B598 0039F4 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80A9B598-80A9B5A0 0039F8 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80A9B5A0-80A9B5A8 003A00 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80A9B5A8-80A9B5AC 003A08 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A9B5AC-80A9B5B0 003A0C 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A9B5B0-80A9B5B4 003A10 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A9B5B4-80A9B5B8 003A14 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 80A9C16C-80A9C178 0006F4 000C+00 2/2 0/0 0/0 .data            __vt__24daNpc_Pachi_Maro_Param_c */
SECTION_DATA extern void* __vt__24daNpc_Pachi_Maro_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__24daNpc_Pachi_Maro_Param_cFv,
};

/* 80A9C180-80A9C18C 000008 000C+00 1/1 0/0 0/0 .bss             @3962 */
static u8 lit_3962[12];

/* 80A9C18C-80A9C190 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A9B5B8-80A9B714 003A18 015C+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_pachi_maro_cpp */
void __sinit_d_a_npc_pachi_maro_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80A9B5B8, __sinit_d_a_npc_pachi_maro_cpp);
#pragma pop

/* 80A9B714-80A9B7E0 003B74 00CC+00 1/1 0/0 0/0 .text
 * __ct__18daNpc_Pachi_Maro_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Pachi_Maro_c::daNpc_Pachi_Maro_c(
    daNpcT_faceMotionAnmData_c const* param_0, daNpcT_motionAnmData_c const* param_1,
    daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
    daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
    daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80A9B7E0-80A9B7E8 003C40 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__18daNpc_Pachi_Maro_cFv
 */
u16 daNpc_Pachi_Maro_c::getEyeballMaterialNo() {
    return true;
}

/* 80A9B7E8-80A9B7F0 003C48 0008+00 1/0 0/0 0/0 .text getHeadJointNo__18daNpc_Pachi_Maro_cFv */
s32 daNpc_Pachi_Maro_c::getHeadJointNo() {
    return 4;
}

/* 80A9B7F0-80A9B7F8 003C50 0008+00 1/0 0/0 0/0 .text getNeckJointNo__18daNpc_Pachi_Maro_cFv */
s32 daNpc_Pachi_Maro_c::getNeckJointNo() {
    return 3;
}

/* 80A9B7F8-80A9B800 003C58 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__18daNpc_Pachi_Maro_cFv
 */
bool daNpc_Pachi_Maro_c::getBackboneJointNo() {
    return true;
}

/* 80A9B800-80A9B810 003C60 0010+00 1/0 0/0 0/0 .text checkChangeJoint__18daNpc_Pachi_Maro_cFi */
void daNpc_Pachi_Maro_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80A9B810-80A9B820 003C70 0010+00 1/0 0/0 0/0 .text checkRemoveJoint__18daNpc_Pachi_Maro_cFi */
void daNpc_Pachi_Maro_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80A9B820-80A9B868 003C80 0048+00 2/1 0/0 0/0 .text            __dt__24daNpc_Pachi_Maro_Param_cFv
 */
daNpc_Pachi_Maro_Param_c::~daNpc_Pachi_Maro_Param_c() {
    // NONMATCHING
}

/* 80A9B868-80A9B870 003CC8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80A9B868() {
    // NONMATCHING
}

/* 80A9B870-80A9B878 003CD0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80A9B870() {
    // NONMATCHING
}

/* 80A9B988-80A9B988 0000FC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
