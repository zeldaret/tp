/**
 * @file d_a_npc_pachi_besu.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_pachi_besu.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__18daNpc_Pachi_Besu_cFv();
extern "C" void create__18daNpc_Pachi_Besu_cFv();
extern "C" void CreateHeap__18daNpc_Pachi_Besu_cFv();
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
extern "C" void Delete__18daNpc_Pachi_Besu_cFv();
extern "C" void Execute__18daNpc_Pachi_Besu_cFv();
extern "C" void Draw__18daNpc_Pachi_Besu_cFv();
extern "C" void createHeapCallBack__18daNpc_Pachi_Besu_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__18daNpc_Pachi_Besu_cFP8J3DJointi();
extern "C" void getType__18daNpc_Pachi_Besu_cFv();
extern "C" void isDelete__18daNpc_Pachi_Besu_cFv();
extern "C" void reset__18daNpc_Pachi_Besu_cFv();
extern "C" void afterJntAnm__18daNpc_Pachi_Besu_cFi();
extern "C" void setParam__18daNpc_Pachi_Besu_cFv();
extern "C" void afterMoved__18daNpc_Pachi_Besu_cFv();
extern "C" bool checkChangeEvt__18daNpc_Pachi_Besu_cFv();
extern "C" void setAfterTalkMotion__18daNpc_Pachi_Besu_cFv();
extern "C" void srchActors__18daNpc_Pachi_Besu_cFv();
extern "C" void evtTalk__18daNpc_Pachi_Besu_cFv();
extern "C" void evtCutProc__18daNpc_Pachi_Besu_cFv();
extern "C" void action__18daNpc_Pachi_Besu_cFv();
extern "C" void beforeMove__18daNpc_Pachi_Besu_cFv();
extern "C" void setAttnPos__18daNpc_Pachi_Besu_cFv();
extern "C" void setCollision__18daNpc_Pachi_Besu_cFv();
extern "C" bool drawDbgInfo__18daNpc_Pachi_Besu_cFv();
extern "C" void selectAction__18daNpc_Pachi_Besu_cFv();
extern "C" void chkAction__18daNpc_Pachi_Besu_cFM18daNpc_Pachi_Besu_cFPCvPvPv_i();
extern "C" void setAction__18daNpc_Pachi_Besu_cFM18daNpc_Pachi_Besu_cFPCvPvPv_i();
extern "C" void wait__18daNpc_Pachi_Besu_cFPv();
extern "C" void talk__18daNpc_Pachi_Besu_cFPv();
extern "C" void _turn_to_link__18daNpc_Pachi_Besu_cFs();
extern "C" void _turn_pos__18daNpc_Pachi_Besu_cFRC4cXyzs();
extern "C" void _turn_pos__18daNpc_Pachi_Besu_cFRC4cXyz();
extern "C" void cutTutrialBegin__18daNpc_Pachi_Besu_cFi();
extern "C" bool _cutTutrialBegin_Init__18daNpc_Pachi_Besu_cFRCi();
extern "C" bool _cutTutrialBegin_Main__18daNpc_Pachi_Besu_cFRCi();
extern "C" void cutTutrialBegin_Skip__18daNpc_Pachi_Besu_cFi();
extern "C" bool _cutTutrialBegin_Skip_Init__18daNpc_Pachi_Besu_cFRCi();
extern "C" bool _cutTutrialBegin_Skip_Main__18daNpc_Pachi_Besu_cFRCi();
extern "C" void cutTutrialClear__18daNpc_Pachi_Besu_cFi();
extern "C" void _cutTutrialClear_Init__18daNpc_Pachi_Besu_cFRCi();
extern "C" void _cutTutrialClear_Main__18daNpc_Pachi_Besu_cFRCi();
extern "C" void cutTalk__18daNpc_Pachi_Besu_cFi();
extern "C" bool _cutTalk_Init__18daNpc_Pachi_Besu_cFRCi();
extern "C" void _cutTalk_Main__18daNpc_Pachi_Besu_cFRCi();
extern "C" void cutTalk2__18daNpc_Pachi_Besu_cFi();
extern "C" bool _cutTalk2_Init__18daNpc_Pachi_Besu_cFRCi();
extern "C" void _cutTalk2_Main__18daNpc_Pachi_Besu_cFRCi();
extern "C" void cut1stHit_KakasiBody__18daNpc_Pachi_Besu_cFi();
extern "C" void _cut1stHit_KakasiBody_Init__18daNpc_Pachi_Besu_cFRCi();
extern "C" void _cut1stHit_KakasiBody_Main__18daNpc_Pachi_Besu_cFRCi();
extern "C" void cutTutrialSelectGiveUp__18daNpc_Pachi_Besu_cFi();
extern "C" bool _cutTutrialSelectGiveUp_Init__18daNpc_Pachi_Besu_cFRCi();
extern "C" void _cutTutrialSelectGiveUp_Main__18daNpc_Pachi_Besu_cFRCi();
extern "C" void cutTutrialGiveUp__18daNpc_Pachi_Besu_cFi();
extern "C" bool _cutTutrialGiveUp_Init__18daNpc_Pachi_Besu_cFRCi();
extern "C" void _cutTutrialGiveUp_Main__18daNpc_Pachi_Besu_cFRCi();
extern "C" void cutTutrialContinue__18daNpc_Pachi_Besu_cFi();
extern "C" bool _cutTutrialContinue_Init__18daNpc_Pachi_Besu_cFRCi();
extern "C" void _cutTutrialContinue_Main__18daNpc_Pachi_Besu_cFRCi();
extern "C" void cutTutrialCaution__18daNpc_Pachi_Besu_cFi();
extern "C" bool _cutTutrialCaution_Init__18daNpc_Pachi_Besu_cFRCi();
extern "C" void _cutTutrialCaution_Main__18daNpc_Pachi_Besu_cFRCi();
extern "C" static void daNpc_Pachi_Besu_Create__FPv();
extern "C" static void daNpc_Pachi_Besu_Delete__FPv();
extern "C" static void daNpc_Pachi_Besu_Execute__FPv();
extern "C" static void daNpc_Pachi_Besu_Draw__FPv();
extern "C" static bool daNpc_Pachi_Besu_IsDelete__FPv();
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
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c();
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c();
extern "C" void changeAnm__8daNpcT_cFPiPi();
extern "C" void changeBck__8daNpcT_cFPiPi();
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void __sinit_d_a_npc_pachi_besu_cpp();
extern "C" void
__ct__18daNpc_Pachi_Besu_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__18daNpc_Pachi_Besu_cFv();
extern "C" s32 getHeadJointNo__18daNpc_Pachi_Besu_cFv();
extern "C" s32 getNeckJointNo__18daNpc_Pachi_Besu_cFv();
extern "C" bool getBackboneJointNo__18daNpc_Pachi_Besu_cFv();
extern "C" void checkChangeJoint__18daNpc_Pachi_Besu_cFi();
extern "C" void checkRemoveJoint__18daNpc_Pachi_Besu_cFi();
extern "C" void __dt__24daNpc_Pachi_Besu_Param_cFv();
extern "C" static void func_80A96A48();
extern "C" static void func_80A96A50();
extern "C" u8 const m__24daNpc_Pachi_Besu_Param_c[140];
extern "C" extern char const* const d_a_npc_pachi_besu__stringBase0;
extern "C" void* mCutNameList__18daNpc_Pachi_Besu_c[11];
extern "C" u8 mCutList__18daNpc_Pachi_Besu_c[132];

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
/* 80A96B60-80A96B60 0000F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A96B60 = "";
SECTION_DEAD static char const* const stringBase_80A96B61 = "TUTRIAL_TALK2";
SECTION_DEAD static char const* const stringBase_80A96B6F = "Besu";
SECTION_DEAD static char const* const stringBase_80A96B74 = "Besu_TW";
SECTION_DEAD static char const* const stringBase_80A96B7C = "Besu0";
SECTION_DEAD static char const* const stringBase_80A96B82 = "Besu1";
SECTION_DEAD static char const* const stringBase_80A96B88 = "Besu2";
SECTION_DEAD static char const* const stringBase_80A96B8E = "Besu3";
SECTION_DEAD static char const* const stringBase_80A96B94 = "evt_pachi";
SECTION_DEAD static char const* const stringBase_80A96B9E = "TUTRIAL_BEGIN";
SECTION_DEAD static char const* const stringBase_80A96BAC = "TUTRIAL_BEGIN_SKIP";
SECTION_DEAD static char const* const stringBase_80A96BBF = "TUTRIAL_CLEAR";
SECTION_DEAD static char const* const stringBase_80A96BCD = "TUTRIAL_TALK";
SECTION_DEAD static char const* const stringBase_80A96BDA = "HIT_KAKASI_BODY";
SECTION_DEAD static char const* const stringBase_80A96BEA = "TUTRIAL_SELECT_GIVEUP";
SECTION_DEAD static char const* const stringBase_80A96C00 = "TUTRIAL_GIVEUP";
SECTION_DEAD static char const* const stringBase_80A96C0F = "TUTRIAL_CONTINUE";
SECTION_DEAD static char const* const stringBase_80A96C20 = "TUTRIAL_CAUTION";
#pragma pop

/* 80A96C60-80A96C90 000020 0030+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[48] = {
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x27, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x05,
};

/* 80A96C90-80A96CA0 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[4] = {
    (void*)&d_a_npc_pachi_besu__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_pachi_besu__stringBase0) + 0x1),
    (void*)0x00000007,
};
#pragma pop

/* 80A96CA0-80A96CC0 -00001 0020+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[8] = {
    (void*)&d_a_npc_pachi_besu__stringBase0,
    (void*)(((char*)&d_a_npc_pachi_besu__stringBase0) + 0xF),
    (void*)(((char*)&d_a_npc_pachi_besu__stringBase0) + 0x14),
    (void*)(((char*)&d_a_npc_pachi_besu__stringBase0) + 0x1C),
    (void*)(((char*)&d_a_npc_pachi_besu__stringBase0) + 0x22),
    (void*)(((char*)&d_a_npc_pachi_besu__stringBase0) + 0x28),
    (void*)(((char*)&d_a_npc_pachi_besu__stringBase0) + 0x2E),
    (void*)(((char*)&d_a_npc_pachi_besu__stringBase0) + 0x34),
};

/* 80A96CC0-80A96CC8 000080 0006+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u8 l_loadResPtrn0[6 + 2 /* padding */] = {
    0x01,
    0x03,
    0x05,
    0x04,
    0x07,
    0xFF,
    /* padding */
    0x00,
    0x00,
};

/* 80A96CC8-80A96CCC 000088 0003+01 0/0 0/0 0/0 .data            l_loadResPtrn1 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_loadResPtrn1[3 + 1 /* padding */] = {
    0x03,
    0x02,
    0xFF,
    /* padding */
    0x00,
};
#pragma pop

/* 80A96CCC-80A96CD0 00008C 0003+01 0/0 0/0 0/0 .data            l_loadResPtrn2 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_loadResPtrn2[3 + 1 /* padding */] = {
    0x05,
    0x03,
    0xFF,
    /* padding */
    0x00,
};
#pragma pop

/* 80A96CD0-80A96CD4 000090 0003+01 0/0 0/0 0/0 .data            l_loadResPtrn3 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_loadResPtrn3[3 + 1 /* padding */] = {
    0x03,
    0x06,
    0xFF,
    /* padding */
    0x00,
};
#pragma pop

/* 80A96CD4-80A96CDC 000094 0007+01 1/0 0/0 0/0 .data            l_loadResPtrn4 */
SECTION_DATA static u8 l_loadResPtrn4[7 + 1 /* padding */] = {
    0x01,
    0x02,
    0x03,
    0x04,
    0x05,
    0x06,
    0xFF,
    /* padding */
    0x00,
};

/* 80A96CDC-80A96CE4 -00001 0008+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[2] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn4,
};

/* 80A96CE4-80A9702C 0000A4 0348+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[840] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x12,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x1A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x33,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x35, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x36, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x37, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x2F,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x17,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x2B,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x30,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A9702C-80A973C8 0003EC 039C+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[924] = {
    0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80A973C8-80A97598 000788 01D0+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[464] = {
    0x00, 0x03, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x01, 0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x01, 0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0x00, 0x01, 0x00, 0x0B, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x01, 0x00, 0x14, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x15, 0xFF, 0x01, 0x00, 0x16, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x17, 0xFF, 0x01, 0x00, 0x18, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x19, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x16, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A97598-80A97778 000958 01E0+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[480] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x03, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1C, 0xFF, 0x01, 0x00, 0x1D, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1E, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1F, 0xFF, 0x01, 0x00, 0x20, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0x00, 0x01, 0x00, 0x0D, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0x00, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x15, 0xFF, 0x01, 0x00, 0x16, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x17, 0xFF, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x18, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x19, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0x04, 0x01, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A97778-80A977A4 -00001 002C+00 1/1 0/0 0/0 .data            mCutNameList__18daNpc_Pachi_Besu_c
 */
SECTION_DATA void* daNpc_Pachi_Besu_c::mCutNameList[11] = {
    (void*)&d_a_npc_pachi_besu__stringBase0,
    (void*)(((char*)&d_a_npc_pachi_besu__stringBase0) + 0x3E),
    (void*)(((char*)&d_a_npc_pachi_besu__stringBase0) + 0x4C),
    (void*)(((char*)&d_a_npc_pachi_besu__stringBase0) + 0x5F),
    (void*)(((char*)&d_a_npc_pachi_besu__stringBase0) + 0x6D),
    (void*)(((char*)&d_a_npc_pachi_besu__stringBase0) + 0x1),
    (void*)(((char*)&d_a_npc_pachi_besu__stringBase0) + 0x7A),
    (void*)(((char*)&d_a_npc_pachi_besu__stringBase0) + 0x8A),
    (void*)(((char*)&d_a_npc_pachi_besu__stringBase0) + 0xA0),
    (void*)(((char*)&d_a_npc_pachi_besu__stringBase0) + 0xAF),
    (void*)(((char*)&d_a_npc_pachi_besu__stringBase0) + 0xC0),
};

/* 80A977A4-80A977B0 -00001 000C+00 0/1 0/0 0/0 .data            @3953 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3953[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTutrialBegin__18daNpc_Pachi_Besu_cFi,
};
#pragma pop

/* 80A977B0-80A977BC -00001 000C+00 0/1 0/0 0/0 .data            @3954 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3954[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTutrialBegin_Skip__18daNpc_Pachi_Besu_cFi,
};
#pragma pop

/* 80A977BC-80A977C8 -00001 000C+00 0/1 0/0 0/0 .data            @3955 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3955[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTutrialClear__18daNpc_Pachi_Besu_cFi,
};
#pragma pop

/* 80A977C8-80A977D4 -00001 000C+00 0/1 0/0 0/0 .data            @3956 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3956[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTalk__18daNpc_Pachi_Besu_cFi,
};
#pragma pop

/* 80A977D4-80A977E0 -00001 000C+00 0/1 0/0 0/0 .data            @3957 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3957[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTalk2__18daNpc_Pachi_Besu_cFi,
};
#pragma pop

/* 80A977E0-80A977EC -00001 000C+00 0/1 0/0 0/0 .data            @3958 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3958[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cut1stHit_KakasiBody__18daNpc_Pachi_Besu_cFi,
};
#pragma pop

/* 80A977EC-80A977F8 -00001 000C+00 0/1 0/0 0/0 .data            @3959 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3959[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTutrialSelectGiveUp__18daNpc_Pachi_Besu_cFi,
};
#pragma pop

/* 80A977F8-80A97804 -00001 000C+00 0/1 0/0 0/0 .data            @3960 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3960[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTutrialGiveUp__18daNpc_Pachi_Besu_cFi,
};
#pragma pop

/* 80A97804-80A97810 -00001 000C+00 0/1 0/0 0/0 .data            @3961 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3961[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTutrialContinue__18daNpc_Pachi_Besu_cFi,
};
#pragma pop

/* 80A97810-80A9781C -00001 000C+00 0/1 0/0 0/0 .data            @3962 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3962[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutTutrialCaution__18daNpc_Pachi_Besu_cFi,
};
#pragma pop

/* 80A9781C-80A978A0 000BDC 0084+00 1/2 0/0 0/0 .data            mCutList__18daNpc_Pachi_Besu_c */
SECTION_DATA u8 daNpc_Pachi_Besu_c::mCutList[132] = {
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

/* 80A978A0-80A978D0 -00001 0030+00 1/1 0/0 0/0 .data            @4758 */
SECTION_DATA static void* lit_4758[12] = {
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Besu_cFv) + 0x64),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Besu_cFv) + 0x40),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Besu_cFv) + 0x48),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Besu_cFv) + 0x64),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Besu_cFv) + 0x64),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Besu_cFv) + 0x64),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Besu_cFv) + 0x64),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Besu_cFv) + 0x64),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Besu_cFv) + 0x50),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Besu_cFv) + 0x64),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Besu_cFv) + 0x58),
    (void*)(((char*)setAfterTalkMotion__18daNpc_Pachi_Besu_cFv) + 0x60),
};

/* 80A978D0-80A978DC -00001 000C+00 1/1 0/0 0/0 .data            @4773 */
SECTION_DATA static void* lit_4773[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__18daNpc_Pachi_Besu_cFPv,
};

/* 80A978DC-80A978E8 -00001 000C+00 1/1 0/0 0/0 .data            @4783 */
SECTION_DATA static void* lit_4783[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__18daNpc_Pachi_Besu_cFPv,
};

/* 80A978E8-80A978F4 -00001 000C+00 1/1 0/0 0/0 .data            @5020 */
SECTION_DATA static void* lit_5020[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__18daNpc_Pachi_Besu_cFPv,
};

/* 80A978F4-80A97900 -00001 000C+00 1/1 0/0 0/0 .data            @5022 */
SECTION_DATA static void* lit_5022[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__18daNpc_Pachi_Besu_cFPv,
};

/* 80A97900-80A97920 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Pachi_Besu_MethodTable */
static actor_method_class daNpc_Pachi_Besu_MethodTable = {
    (process_method_func)daNpc_Pachi_Besu_Create__FPv,
    (process_method_func)daNpc_Pachi_Besu_Delete__FPv,
    (process_method_func)daNpc_Pachi_Besu_Execute__FPv,
    (process_method_func)daNpc_Pachi_Besu_IsDelete__FPv,
    (process_method_func)daNpc_Pachi_Besu_Draw__FPv,
};

/* 80A97920-80A97950 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_PACHI_BESU */
extern actor_process_profile_definition g_profile_NPC_PACHI_BESU = {
  fpcLy_CURRENT_e,               // mLayerID
  7,                             // mListID
  fpcPi_CURRENT_e,               // mListPrio
  PROC_NPC_PACHI_BESU,           // mProcName
  &g_fpcLf_Method.base,         // sub_method
  sizeof(daNpc_Pachi_Besu_c),    // mSize
  0,                             // mSizeOther
  0,                             // mParameters
  &g_fopAc_Method.base,          // sub_method
  368,                           // mPriority
  &daNpc_Pachi_Besu_MethodTable, // sub_method
  0x00044108,                    // mStatus
  fopAc_NPC_e,                   // mActorType
  fopAc_CULLBOX_CUSTOM_e,        // cullType
};

/* 80A97950-80A9795C 000D10 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80A9795C-80A97968 000D1C 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80A97968-80A9798C 000D28 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A96A50,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A96A48,
};

/* 80A9798C-80A97998 000D4C 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80A97998-80A979A4 000D58 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80A979A4-80A979B0 000D64 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80A979B0-80A979BC 000D70 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80A979BC-80A979C8 000D7C 000C+00 5/5 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80A979C8-80A979D4 000D88 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80A979D4-80A979E0 000D94 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80A979E0-80A979EC 000DA0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80A979EC-80A97AB0 000DAC 00C4+00 2/2 0/0 0/0 .data            __vt__18daNpc_Pachi_Besu_c */
SECTION_DATA extern void* __vt__18daNpc_Pachi_Besu_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpc_Pachi_Besu_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__18daNpc_Pachi_Besu_cFi,
    (void*)checkRemoveJoint__18daNpc_Pachi_Besu_cFi,
    (void*)getBackboneJointNo__18daNpc_Pachi_Besu_cFv,
    (void*)getNeckJointNo__18daNpc_Pachi_Besu_cFv,
    (void*)getHeadJointNo__18daNpc_Pachi_Besu_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__18daNpc_Pachi_Besu_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__18daNpc_Pachi_Besu_cFi,
    (void*)setParam__18daNpc_Pachi_Besu_cFv,
    (void*)checkChangeEvt__18daNpc_Pachi_Besu_cFv,
    (void*)evtTalk__18daNpc_Pachi_Besu_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__18daNpc_Pachi_Besu_cFv,
    (void*)setAfterTalkMotion__18daNpc_Pachi_Besu_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__18daNpc_Pachi_Besu_cFv,
    (void*)beforeMove__18daNpc_Pachi_Besu_cFv,
    (void*)afterMoved__18daNpc_Pachi_Besu_cFv,
    (void*)setAttnPos__18daNpc_Pachi_Besu_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__18daNpc_Pachi_Besu_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__18daNpc_Pachi_Besu_cFv,
    (void*)drawOtherMdl__8daNpcT_cFv,
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

/* 80A92D6C-80A92EA4 0000EC 0138+00 1/0 0/0 0/0 .text            __dt__18daNpc_Pachi_Besu_cFv */
daNpc_Pachi_Besu_c::~daNpc_Pachi_Besu_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A96A6C-80A96AF8 000000 008C+00 9/9 0/0 0/0 .rodata          m__24daNpc_Pachi_Besu_Param_c */
SECTION_RODATA u8 const daNpc_Pachi_Besu_Param_c::m[140] = {
    0x43, 0x20, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xC8, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x0C, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x04,
    0x42, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0xC1, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0x70, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0x41, 0x70, 0x00, 0x00, 0x42, 0x8C, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A96A6C, &daNpc_Pachi_Besu_Param_c::m);

/* 80A96AF8-80A96AFC 00008C 0004+00 0/1 0/0 0/0 .rodata          @4186 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4186 = -300.0f;
COMPILER_STRIP_GATE(0x80A96AF8, &lit_4186);
#pragma pop

/* 80A96AFC-80A96B00 000090 0004+00 0/1 0/0 0/0 .rodata          @4187 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4187 = -50.0f;
COMPILER_STRIP_GATE(0x80A96AFC, &lit_4187);
#pragma pop

/* 80A96B00-80A96B04 000094 0004+00 0/1 0/0 0/0 .rodata          @4188 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4188 = 300.0f;
COMPILER_STRIP_GATE(0x80A96B00, &lit_4188);
#pragma pop

/* 80A96B04-80A96B08 000098 0004+00 0/1 0/0 0/0 .rodata          @4189 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4189 = 450.0f;
COMPILER_STRIP_GATE(0x80A96B04, &lit_4189);
#pragma pop

/* 80A96B08-80A96B0C 00009C 0004+00 0/1 0/0 0/0 .rodata          @4190 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4190 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80A96B08, &lit_4190);
#pragma pop

/* 80A92EA4-80A9317C 000224 02D8+00 1/1 0/0 0/0 .text            create__18daNpc_Pachi_Besu_cFv */
void daNpc_Pachi_Besu_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A96B0C-80A96B10 0000A0 0004+00 7/12 0/0 0/0 .rodata          @4347 */
SECTION_RODATA static u8 const lit_4347[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A96B0C, &lit_4347);

/* 80A96B10-80A96B14 0000A4 0004+00 0/2 0/0 0/0 .rodata          @4348 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4348 = 65536.0f;
COMPILER_STRIP_GATE(0x80A96B10, &lit_4348);
#pragma pop

/* 80A96B14-80A96B18 0000A8 0004+00 0/3 0/0 0/0 .rodata          @4349 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4349 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A96B14, &lit_4349);
#pragma pop

/* 80A96B18-80A96B1C 0000AC 0004+00 2/4 0/0 0/0 .rodata          @4497 */
SECTION_RODATA static f32 const lit_4497 = 1.0f;
COMPILER_STRIP_GATE(0x80A96B18, &lit_4497);

/* 80A9317C-80A9344C 0004FC 02D0+00 1/1 0/0 0/0 .text            CreateHeap__18daNpc_Pachi_Besu_cFv
 */
void daNpc_Pachi_Besu_c::CreateHeap() {
    // NONMATCHING
}

/* 80A9344C-80A93488 0007CC 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A93488-80A934A0 000808 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A934A0-80A934DC 000820 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A934DC-80A934F4 00085C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A934F4-80A9353C 000874 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A9353C-80A93560 0008BC 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A93560-80A9359C 0008E0 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A9359C-80A935B4 00091C 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A935B4-80A935F0 000934 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A935F0-80A93608 000970 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A93608-80A9363C 000988 0034+00 1/1 0/0 0/0 .text            Delete__18daNpc_Pachi_Besu_cFv */
void daNpc_Pachi_Besu_c::Delete() {
    // NONMATCHING
}

/* 80A9363C-80A9365C 0009BC 0020+00 2/2 0/0 0/0 .text            Execute__18daNpc_Pachi_Besu_cFv */
void daNpc_Pachi_Besu_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A96B1C-80A96B20 0000B0 0004+00 1/2 0/0 0/0 .rodata          @4546 */
SECTION_RODATA static f32 const lit_4546 = 100.0f;
COMPILER_STRIP_GATE(0x80A96B1C, &lit_4546);

/* 80A9365C-80A936F0 0009DC 0094+00 1/1 0/0 0/0 .text            Draw__18daNpc_Pachi_Besu_cFv */
void daNpc_Pachi_Besu_c::Draw() {
    // NONMATCHING
}

/* 80A936F0-80A93710 000A70 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__18daNpc_Pachi_Besu_cFP10fopAc_ac_c       */
void daNpc_Pachi_Besu_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A93710-80A93768 000A90 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__18daNpc_Pachi_Besu_cFP8J3DJointi          */
void daNpc_Pachi_Besu_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80A93768-80A93788 000AE8 0020+00 1/1 0/0 0/0 .text            getType__18daNpc_Pachi_Besu_cFv */
void daNpc_Pachi_Besu_c::getType() {
    // NONMATCHING
}

/* 80A93788-80A937A8 000B08 0020+00 1/1 0/0 0/0 .text            isDelete__18daNpc_Pachi_Besu_cFv */
void daNpc_Pachi_Besu_c::isDelete() {
    // NONMATCHING
}

/* 80A937A8-80A93910 000B28 0168+00 1/1 0/0 0/0 .text            reset__18daNpc_Pachi_Besu_cFv */
void daNpc_Pachi_Besu_c::reset() {
    // NONMATCHING
}

/* 80A93910-80A9398C 000C90 007C+00 1/0 0/0 0/0 .text            afterJntAnm__18daNpc_Pachi_Besu_cFi
 */
void daNpc_Pachi_Besu_c::afterJntAnm(int param_0) {
    // NONMATCHING
}

/* 80A9398C-80A93A88 000D0C 00FC+00 1/0 0/0 0/0 .text            setParam__18daNpc_Pachi_Besu_cFv */
void daNpc_Pachi_Besu_c::setParam() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A96B20-80A96B24 0000B4 0004+00 3/4 0/0 0/0 .rodata          @4732 */
SECTION_RODATA static f32 const lit_4732 = -1.0f;
COMPILER_STRIP_GATE(0x80A96B20, &lit_4732);

/* 80A97B08-80A97B14 000048 000C+00 1/1 0/0 0/0 .bss             @3963 */
static u8 lit_3963[12];

/* 80A97B14-80A97B18 000054 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A97B18-80A97B28 000058 000C+04 0/1 0/0 0/0 .bss             @4664 */
#pragma push
#pragma force_active on
static u8 lit_4664[12 + 4 /* padding */];
#pragma pop

/* 80A97B28-80A97B34 000068 000C+00 0/1 0/0 0/0 .bss             center$4663 */
#pragma push
#pragma force_active on
static u8 center[12];
#pragma pop

/* 80A93A88-80A93D70 000E08 02E8+00 1/0 0/0 0/0 .text            afterMoved__18daNpc_Pachi_Besu_cFv
 */
void daNpc_Pachi_Besu_c::afterMoved() {
    // NONMATCHING
}

/* 80A93D70-80A93D78 0010F0 0008+00 1/0 0/0 0/0 .text checkChangeEvt__18daNpc_Pachi_Besu_cFv */
bool daNpc_Pachi_Besu_c::checkChangeEvt() {
    return false;
}

/* 80A93D78-80A93E24 0010F8 00AC+00 2/0 0/0 0/0 .text setAfterTalkMotion__18daNpc_Pachi_Besu_cFv
 */
void daNpc_Pachi_Besu_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80A93E24-80A93EAC 0011A4 0088+00 1/1 0/0 0/0 .text            srchActors__18daNpc_Pachi_Besu_cFv
 */
void daNpc_Pachi_Besu_c::srchActors() {
    // NONMATCHING
}

/* 80A93EAC-80A93FB0 00122C 0104+00 1/0 0/0 0/0 .text            evtTalk__18daNpc_Pachi_Besu_cFv */
void daNpc_Pachi_Besu_c::evtTalk() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A96B60-80A96B60 0000F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A96C30 = "PA_Besu";
#pragma pop

/* 80A93FB0-80A94078 001330 00C8+00 1/0 0/0 0/0 .text            evtCutProc__18daNpc_Pachi_Besu_cFv
 */
void daNpc_Pachi_Besu_c::evtCutProc() {
    // NONMATCHING
}

/* 80A94078-80A94220 0013F8 01A8+00 1/0 0/0 0/0 .text            action__18daNpc_Pachi_Besu_cFv */
void daNpc_Pachi_Besu_c::action() {
    // NONMATCHING
}

/* 80A94220-80A94298 0015A0 0078+00 1/0 0/0 0/0 .text            beforeMove__18daNpc_Pachi_Besu_cFv
 */
void daNpc_Pachi_Besu_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A96B24-80A96B28 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4908 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4908 = 10.0f;
COMPILER_STRIP_GATE(0x80A96B24, &lit_4908);
#pragma pop

/* 80A96B28-80A96B2C 0000BC 0004+00 0/1 0/0 0/0 .rodata          @4909 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4909 = 30.0f;
COMPILER_STRIP_GATE(0x80A96B28, &lit_4909);
#pragma pop

/* 80A96B2C-80A96B34 0000C0 0004+04 0/1 0/0 0/0 .rodata          @4910 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4910[1 + 1 /* padding */] = {
    0x38C90FDB,
    /* padding */
    0x00000000,
};
COMPILER_STRIP_GATE(0x80A96B2C, &lit_4910);
#pragma pop

/* 80A96B34-80A96B3C 0000C8 0008+00 1/3 0/0 0/0 .rodata          @4912 */
SECTION_RODATA static u8 const lit_4912[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A96B34, &lit_4912);

/* 80A94298-80A944F0 001618 0258+00 1/0 0/0 0/0 .text            setAttnPos__18daNpc_Pachi_Besu_cFv
 */
void daNpc_Pachi_Besu_c::setAttnPos() {
    // NONMATCHING
}

/* 80A944F0-80A94620 001870 0130+00 1/0 0/0 0/0 .text setCollision__18daNpc_Pachi_Besu_cFv */
void daNpc_Pachi_Besu_c::setCollision() {
    // NONMATCHING
}

/* 80A94620-80A94628 0019A0 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__18daNpc_Pachi_Besu_cFv
 */
bool daNpc_Pachi_Besu_c::drawDbgInfo() {
    return false;
}

/* 80A94628-80A946A4 0019A8 007C+00 1/1 0/0 0/0 .text selectAction__18daNpc_Pachi_Besu_cFv */
void daNpc_Pachi_Besu_c::selectAction() {
    // NONMATCHING
}

/* 80A946A4-80A946D0 001A24 002C+00 1/1 0/0 0/0 .text
 * chkAction__18daNpc_Pachi_Besu_cFM18daNpc_Pachi_Besu_cFPCvPvPv_i */
void daNpc_Pachi_Besu_c::chkAction(int (daNpc_Pachi_Besu_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80A946D0-80A94778 001A50 00A8+00 2/2 0/0 0/0 .text
 * setAction__18daNpc_Pachi_Besu_cFM18daNpc_Pachi_Besu_cFPCvPvPv_i */
void daNpc_Pachi_Besu_c::setAction(int (daNpc_Pachi_Besu_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80A94778-80A949EC 001AF8 0274+00 2/0 0/0 0/0 .text            wait__18daNpc_Pachi_Besu_cFPv */
void daNpc_Pachi_Besu_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80A949EC-80A94A7C 001D6C 0090+00 2/0 0/0 0/0 .text            talk__18daNpc_Pachi_Besu_cFPv */
void daNpc_Pachi_Besu_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80A94A7C-80A94AC8 001DFC 004C+00 3/3 0/0 0/0 .text _turn_to_link__18daNpc_Pachi_Besu_cFs */
void daNpc_Pachi_Besu_c::_turn_to_link(s16 param_0) {
    // NONMATCHING
}

/* 80A94AC8-80A94B24 001E48 005C+00 4/4 0/0 0/0 .text _turn_pos__18daNpc_Pachi_Besu_cFRC4cXyzs */
void daNpc_Pachi_Besu_c::_turn_pos(cXyz const& param_0, s16 param_1) {
    // NONMATCHING
}

/* 80A94B24-80A94B64 001EA4 0040+00 1/1 0/0 0/0 .text _turn_pos__18daNpc_Pachi_Besu_cFRC4cXyz */
void daNpc_Pachi_Besu_c::_turn_pos(cXyz const& param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A96B60-80A96B60 0000F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A96C38 = "cutId";
#pragma pop

/* 80A94B64-80A94BF8 001EE4 0094+00 1/0 0/0 0/0 .text cutTutrialBegin__18daNpc_Pachi_Besu_cFi */
void daNpc_Pachi_Besu_c::cutTutrialBegin(int param_0) {
    // NONMATCHING
}

/* 80A94BF8-80A94C00 001F78 0008+00 1/1 0/0 0/0 .text
 * _cutTutrialBegin_Init__18daNpc_Pachi_Besu_cFRCi              */
bool daNpc_Pachi_Besu_c::_cutTutrialBegin_Init(int const& param_0) {
    return true;
}

/* 80A94C00-80A94C08 001F80 0008+00 1/1 0/0 0/0 .text
 * _cutTutrialBegin_Main__18daNpc_Pachi_Besu_cFRCi              */
bool daNpc_Pachi_Besu_c::_cutTutrialBegin_Main(int const& param_0) {
    return false;
}

/* 80A94C08-80A94C9C 001F88 0094+00 1/0 0/0 0/0 .text cutTutrialBegin_Skip__18daNpc_Pachi_Besu_cFi
 */
void daNpc_Pachi_Besu_c::cutTutrialBegin_Skip(int param_0) {
    // NONMATCHING
}

/* 80A94C9C-80A94CA4 00201C 0008+00 1/1 0/0 0/0 .text
 * _cutTutrialBegin_Skip_Init__18daNpc_Pachi_Besu_cFRCi         */
bool daNpc_Pachi_Besu_c::_cutTutrialBegin_Skip_Init(int const& param_0) {
    return true;
}

/* 80A94CA4-80A94CAC 002024 0008+00 1/1 0/0 0/0 .text
 * _cutTutrialBegin_Skip_Main__18daNpc_Pachi_Besu_cFRCi         */
bool daNpc_Pachi_Besu_c::_cutTutrialBegin_Skip_Main(int const& param_0) {
    return false;
}

/* 80A94CAC-80A94D40 00202C 0094+00 1/0 0/0 0/0 .text cutTutrialClear__18daNpc_Pachi_Besu_cFi */
void daNpc_Pachi_Besu_c::cutTutrialClear(int param_0) {
    // NONMATCHING
}

/* 80A94D40-80A94E38 0020C0 00F8+00 1/1 0/0 0/0 .text
 * _cutTutrialClear_Init__18daNpc_Pachi_Besu_cFRCi              */
void daNpc_Pachi_Besu_c::_cutTutrialClear_Init(int const& param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A96B3C-80A96B44 0000D0 0008+00 0/1 0/0 0/0 .rodata          @4970 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4970[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A96B3C, &lit_4970);
#pragma pop

/* 80A96B44-80A96B4C 0000D8 0008+00 0/1 0/0 0/0 .rodata          @4971 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4971[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A96B44, &lit_4971);
#pragma pop

/* 80A96B4C-80A96B54 0000E0 0008+00 0/1 0/0 0/0 .rodata          @4972 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4972[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A96B4C, &lit_4972);
#pragma pop

/* 80A96B54-80A96B58 0000E8 0004+00 0/2 0/0 0/0 .rodata          @5270 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5270 = 0x445FBAA0;
COMPILER_STRIP_GATE(0x80A96B54, &lit_5270);
#pragma pop

/* 80A96B58-80A96B5C 0000EC 0004+00 0/2 0/0 0/0 .rodata          @5271 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5271 = 0x4461DA4E;
COMPILER_STRIP_GATE(0x80A96B58, &lit_5271);
#pragma pop

/* 80A96B5C-80A96B60 0000F0 0004+00 0/2 0/0 0/0 .rodata          @5272 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5272 = 0xC4FF0B85;
COMPILER_STRIP_GATE(0x80A96B5C, &lit_5272);
#pragma pop

/* 80A94E38-80A94ECC 0021B8 0094+00 1/1 0/0 0/0 .text
 * _cutTutrialClear_Main__18daNpc_Pachi_Besu_cFRCi              */
void daNpc_Pachi_Besu_c::_cutTutrialClear_Main(int const& param_0) {
    // NONMATCHING
}

/* 80A94ECC-80A94F60 00224C 0094+00 1/0 0/0 0/0 .text            cutTalk__18daNpc_Pachi_Besu_cFi */
void daNpc_Pachi_Besu_c::cutTalk(int param_0) {
    // NONMATCHING
}

/* 80A94F60-80A94F68 0022E0 0008+00 1/1 0/0 0/0 .text _cutTalk_Init__18daNpc_Pachi_Besu_cFRCi */
bool daNpc_Pachi_Besu_c::_cutTalk_Init(int const& param_0) {
    return true;
}

/* 80A94F68-80A94FC4 0022E8 005C+00 1/1 0/0 0/0 .text _cutTalk_Main__18daNpc_Pachi_Besu_cFRCi */
void daNpc_Pachi_Besu_c::_cutTalk_Main(int const& param_0) {
    // NONMATCHING
}

/* 80A94FC4-80A95058 002344 0094+00 1/0 0/0 0/0 .text            cutTalk2__18daNpc_Pachi_Besu_cFi */
void daNpc_Pachi_Besu_c::cutTalk2(int param_0) {
    // NONMATCHING
}

/* 80A95058-80A95060 0023D8 0008+00 1/1 0/0 0/0 .text _cutTalk2_Init__18daNpc_Pachi_Besu_cFRCi */
bool daNpc_Pachi_Besu_c::_cutTalk2_Init(int const& param_0) {
    return true;
}

/* 80A95060-80A950BC 0023E0 005C+00 1/1 0/0 0/0 .text _cutTalk2_Main__18daNpc_Pachi_Besu_cFRCi */
void daNpc_Pachi_Besu_c::_cutTalk2_Main(int const& param_0) {
    // NONMATCHING
}

/* 80A950BC-80A95150 00243C 0094+00 1/0 0/0 0/0 .text cut1stHit_KakasiBody__18daNpc_Pachi_Besu_cFi
 */
void daNpc_Pachi_Besu_c::cut1stHit_KakasiBody(int param_0) {
    // NONMATCHING
}

/* 80A95150-80A951DC 0024D0 008C+00 1/1 0/0 0/0 .text
 * _cut1stHit_KakasiBody_Init__18daNpc_Pachi_Besu_cFRCi         */
void daNpc_Pachi_Besu_c::_cut1stHit_KakasiBody_Init(int const& param_0) {
    // NONMATCHING
}

/* 80A951DC-80A95270 00255C 0094+00 1/1 0/0 0/0 .text
 * _cut1stHit_KakasiBody_Main__18daNpc_Pachi_Besu_cFRCi         */
void daNpc_Pachi_Besu_c::_cut1stHit_KakasiBody_Main(int const& param_0) {
    // NONMATCHING
}

/* 80A95270-80A95304 0025F0 0094+00 1/0 0/0 0/0 .text
 * cutTutrialSelectGiveUp__18daNpc_Pachi_Besu_cFi               */
void daNpc_Pachi_Besu_c::cutTutrialSelectGiveUp(int param_0) {
    // NONMATCHING
}

/* 80A95304-80A9530C 002684 0008+00 1/1 0/0 0/0 .text
 * _cutTutrialSelectGiveUp_Init__18daNpc_Pachi_Besu_cFRCi       */
bool daNpc_Pachi_Besu_c::_cutTutrialSelectGiveUp_Init(int const& param_0) {
    return true;
}

/* 80A9530C-80A95408 00268C 00FC+00 1/1 0/0 0/0 .text
 * _cutTutrialSelectGiveUp_Main__18daNpc_Pachi_Besu_cFRCi       */
void daNpc_Pachi_Besu_c::_cutTutrialSelectGiveUp_Main(int const& param_0) {
    // NONMATCHING
}

/* 80A95408-80A9549C 002788 0094+00 1/0 0/0 0/0 .text cutTutrialGiveUp__18daNpc_Pachi_Besu_cFi */
void daNpc_Pachi_Besu_c::cutTutrialGiveUp(int param_0) {
    // NONMATCHING
}

/* 80A9549C-80A954A4 00281C 0008+00 1/1 0/0 0/0 .text
 * _cutTutrialGiveUp_Init__18daNpc_Pachi_Besu_cFRCi             */
bool daNpc_Pachi_Besu_c::_cutTutrialGiveUp_Init(int const& param_0) {
    return true;
}

/* 80A954A4-80A954E0 002824 003C+00 1/1 0/0 0/0 .text
 * _cutTutrialGiveUp_Main__18daNpc_Pachi_Besu_cFRCi             */
void daNpc_Pachi_Besu_c::_cutTutrialGiveUp_Main(int const& param_0) {
    // NONMATCHING
}

/* 80A954E0-80A95574 002860 0094+00 1/0 0/0 0/0 .text cutTutrialContinue__18daNpc_Pachi_Besu_cFi
 */
void daNpc_Pachi_Besu_c::cutTutrialContinue(int param_0) {
    // NONMATCHING
}

/* 80A95574-80A9557C 0028F4 0008+00 1/1 0/0 0/0 .text
 * _cutTutrialContinue_Init__18daNpc_Pachi_Besu_cFRCi           */
bool daNpc_Pachi_Besu_c::_cutTutrialContinue_Init(int const& param_0) {
    return true;
}

/* 80A9557C-80A955B8 0028FC 003C+00 1/1 0/0 0/0 .text
 * _cutTutrialContinue_Main__18daNpc_Pachi_Besu_cFRCi           */
void daNpc_Pachi_Besu_c::_cutTutrialContinue_Main(int const& param_0) {
    // NONMATCHING
}

/* 80A955B8-80A9564C 002938 0094+00 1/0 0/0 0/0 .text cutTutrialCaution__18daNpc_Pachi_Besu_cFi */
void daNpc_Pachi_Besu_c::cutTutrialCaution(int param_0) {
    // NONMATCHING
}

/* 80A9564C-80A95654 0029CC 0008+00 1/1 0/0 0/0 .text
 * _cutTutrialCaution_Init__18daNpc_Pachi_Besu_cFRCi            */
bool daNpc_Pachi_Besu_c::_cutTutrialCaution_Init(int const& param_0) {
    return true;
}

/* 80A95654-80A956B8 0029D4 0064+00 1/1 0/0 0/0 .text
 * _cutTutrialCaution_Main__18daNpc_Pachi_Besu_cFRCi            */
void daNpc_Pachi_Besu_c::_cutTutrialCaution_Main(int const& param_0) {
    // NONMATCHING
}

/* 80A956B8-80A956D8 002A38 0020+00 1/0 0/0 0/0 .text            daNpc_Pachi_Besu_Create__FPv */
static void daNpc_Pachi_Besu_Create(void* param_0) {
    // NONMATCHING
}

/* 80A956D8-80A956F8 002A58 0020+00 1/0 0/0 0/0 .text            daNpc_Pachi_Besu_Delete__FPv */
static void daNpc_Pachi_Besu_Delete(void* param_0) {
    // NONMATCHING
}

/* 80A956F8-80A95718 002A78 0020+00 1/0 0/0 0/0 .text            daNpc_Pachi_Besu_Execute__FPv */
static void daNpc_Pachi_Besu_Execute(void* param_0) {
    // NONMATCHING
}

/* 80A95718-80A95738 002A98 0020+00 1/0 0/0 0/0 .text            daNpc_Pachi_Besu_Draw__FPv */
static void daNpc_Pachi_Besu_Draw(void* param_0) {
    // NONMATCHING
}

/* 80A95738-80A95740 002AB8 0008+00 1/0 0/0 0/0 .text            daNpc_Pachi_Besu_IsDelete__FPv */
static bool daNpc_Pachi_Besu_IsDelete(void* param_0) {
    return true;
}

/* 80A95740-80A95770 002AC0 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80A95770-80A957B8 002AF0 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A957B8-80A95B40 002B38 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A95B40-80A95B7C 002EC0 003C+00 4/4 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80A95B7C-80A95BB8 002EFC 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80A95BB8-80A95C00 002F38 0048+00 3/2 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A95C00-80A95C3C 002F80 003C+00 1/1 0/0 0/0 .text            __ct__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::daNpcT_ActorMngr_c() {
extern "C" void __ct__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A95C3C-80A95C84 002FBC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80A95C84-80A95CCC 003004 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80A95CCC-80A960D0 00304C 0404+00 1/1 0/0 0/0 .text
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

/* 80A960D0-80A960D4 003450 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80A960D4-80A961D0 003454 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80A961D0-80A961D4 003550 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80A961D4-80A9621C 003554 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80A9621C-80A9628C 00359C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80A9628C-80A962E8 00360C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A962E8-80A96358 003668 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80A96358-80A963A0 0036D8 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80A963A0-80A964BC 003720 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                       s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80A964BC-80A966C4 00383C 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80A966C4-80A966C8 003A44 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80A966D8-80A966E0 003A58 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80A966E0-80A966E8 003A60 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80A966E8-80A966F0 003A68 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80A966F0-80A966F8 003A70 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80A966F8-80A96710 003A78 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A96710-80A96714 003A90 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80A96714-80A96718 003A94 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80A96718-80A96720 003A98 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80A96720-80A96728 003AA0 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80A96728-80A96758 003AA8 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80A96758-80A96788 003AD8 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80A96788-80A9678C 003B08 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A9678C-80A96790 003B0C 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A96790-80A96794 003B10 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A96794-80A96798 003B14 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* ############################################################################################## */
/* 80A97AB0-80A97ABC 000E70 000C+00 2/2 0/0 0/0 .data            __vt__24daNpc_Pachi_Besu_Param_c */
SECTION_DATA extern void* __vt__24daNpc_Pachi_Besu_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__24daNpc_Pachi_Besu_Param_cFv,
};

/* 80A96798-80A968F4 003B18 015C+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_pachi_besu_cpp */
void __sinit_d_a_npc_pachi_besu_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80A96798, __sinit_d_a_npc_pachi_besu_cpp);
#pragma pop

/* 80A968F4-80A969C0 003C74 00CC+00 1/1 0/0 0/0 .text
 * __ct__18daNpc_Pachi_Besu_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Pachi_Besu_c::daNpc_Pachi_Besu_c(
    daNpcT_faceMotionAnmData_c const* param_0, daNpcT_motionAnmData_c const* param_1,
    daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
    daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
    daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80A969C0-80A969C8 003D40 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__18daNpc_Pachi_Besu_cFv
 */
u16 daNpc_Pachi_Besu_c::getEyeballMaterialNo() {
    return 2;
}

/* 80A969C8-80A969D0 003D48 0008+00 1/0 0/0 0/0 .text getHeadJointNo__18daNpc_Pachi_Besu_cFv */
s32 daNpc_Pachi_Besu_c::getHeadJointNo() {
    return 4;
}

/* 80A969D0-80A969D8 003D50 0008+00 1/0 0/0 0/0 .text getNeckJointNo__18daNpc_Pachi_Besu_cFv */
s32 daNpc_Pachi_Besu_c::getNeckJointNo() {
    return 3;
}

/* 80A969D8-80A969E0 003D58 0008+00 1/0 0/0 0/0 .text getBackboneJointNo__18daNpc_Pachi_Besu_cFv
 */
bool daNpc_Pachi_Besu_c::getBackboneJointNo() {
    return true;
}

/* 80A969E0-80A969F0 003D60 0010+00 1/0 0/0 0/0 .text checkChangeJoint__18daNpc_Pachi_Besu_cFi */
void daNpc_Pachi_Besu_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80A969F0-80A96A00 003D70 0010+00 1/0 0/0 0/0 .text checkRemoveJoint__18daNpc_Pachi_Besu_cFi */
void daNpc_Pachi_Besu_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80A96A00-80A96A48 003D80 0048+00 2/1 0/0 0/0 .text            __dt__24daNpc_Pachi_Besu_Param_cFv
 */
daNpc_Pachi_Besu_Param_c::~daNpc_Pachi_Besu_Param_c() {
    // NONMATCHING
}

/* 80A96A48-80A96A50 003DC8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80A96A48() {
    // NONMATCHING
}

/* 80A96A50-80A96A58 003DD0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80A96A50() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A97B34-80A97B38 000074 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_80A97B34[4];
#pragma pop

/* 80A97B38-80A97B3C 000078 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_80A97B38[4];
#pragma pop

/* 80A97B3C-80A97B40 00007C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_80A97B3C[4];
#pragma pop

/* 80A97B40-80A97B44 000080 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80A97B40[4];
#pragma pop

/* 80A97B44-80A97B48 000084 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A97B44[4];
#pragma pop

/* 80A97B48-80A97B4C 000088 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A97B48[4];
#pragma pop

/* 80A97B4C-80A97B50 00008C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_80A97B4C[4];
#pragma pop

/* 80A97B50-80A97B54 000090 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_80A97B50[4];
#pragma pop

/* 80A97B54-80A97B58 000094 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_80A97B54[4];
#pragma pop

/* 80A97B58-80A97B5C 000098 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_80A97B58[4];
#pragma pop

/* 80A97B5C-80A97B60 00009C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_80A97B5C[4];
#pragma pop

/* 80A97B60-80A97B64 0000A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_80A97B60[4];
#pragma pop

/* 80A97B64-80A97B68 0000A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_80A97B64[4];
#pragma pop

/* 80A97B68-80A97B6C 0000A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A97B68[4];
#pragma pop

/* 80A97B6C-80A97B70 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80A97B6C[4];
#pragma pop

/* 80A97B70-80A97B74 0000B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_80A97B70[4];
#pragma pop

/* 80A97B74-80A97B78 0000B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_80A97B74[4];
#pragma pop

/* 80A97B78-80A97B7C 0000B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_80A97B78[4];
#pragma pop

/* 80A97B7C-80A97B80 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_80A97B7C[4];
#pragma pop

/* 80A97B80-80A97B84 0000C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_80A97B80[4];
#pragma pop

/* 80A97B84-80A97B88 0000C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_80A97B84[4];
#pragma pop

/* 80A97B88-80A97B8C 0000C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A97B88[4];
#pragma pop

/* 80A97B8C-80A97B90 0000CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A97B8C[4];
#pragma pop

/* 80A97B90-80A97B94 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_80A97B90[4];
#pragma pop

/* 80A97B94-80A97B98 0000D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_80A97B94[4];
#pragma pop

/* 80A96B60-80A96B60 0000F4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
