/**
 * @file d_a_npc_kolinb.cpp
 * 
*/

#include "d/actor/d_a_npc_kolinb.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __dt__14daNpc_Kolinb_cFv();
extern "C" void create__14daNpc_Kolinb_cFv();
extern "C" void CreateHeap__14daNpc_Kolinb_cFv();
extern "C" void Delete__14daNpc_Kolinb_cFv();
extern "C" void Execute__14daNpc_Kolinb_cFv();
extern "C" void Draw__14daNpc_Kolinb_cFv();
extern "C" void createHeapCallBack__14daNpc_Kolinb_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__14daNpc_Kolinb_cFP8J3DJointi();
extern "C" void getType__14daNpc_Kolinb_cFv();
extern "C" void isDelete__14daNpc_Kolinb_cFv();
extern "C" void reset__14daNpc_Kolinb_cFv();
extern "C" void setParam__14daNpc_Kolinb_cFv();
extern "C" void checkChangeEvt__14daNpc_Kolinb_cFv();
extern "C" void setAfterTalkMotion__14daNpc_Kolinb_cFv();
extern "C" void srchActors__14daNpc_Kolinb_cFv();
extern "C" void evtTalk__14daNpc_Kolinb_cFv();
extern "C" void evtCutProc__14daNpc_Kolinb_cFv();
extern "C" void action__14daNpc_Kolinb_cFv();
extern "C" void beforeMove__14daNpc_Kolinb_cFv();
extern "C" void setAttnPos__14daNpc_Kolinb_cFv();
extern "C" void setCollision__14daNpc_Kolinb_cFv();
extern "C" bool drawDbgInfo__14daNpc_Kolinb_cFv();
extern "C" void selectAction__14daNpc_Kolinb_cFv();
extern "C" void chkAction__14daNpc_Kolinb_cFM14daNpc_Kolinb_cFPCvPvPv_i();
extern "C" void setAction__14daNpc_Kolinb_cFM14daNpc_Kolinb_cFPCvPvPv_i();
extern "C" void cutConversationInHotel__14daNpc_Kolinb_cFi();
extern "C" void cutConversationAboutDeathMt__14daNpc_Kolinb_cFi();
extern "C" void cutConversationAboutGoron__14daNpc_Kolinb_cFi();
extern "C" void cutNurse__14daNpc_Kolinb_cFi();
extern "C" void cutClothTry__14daNpc_Kolinb_cFi();
extern "C" void cutThankYou__14daNpc_Kolinb_cFi();
extern "C" void wait__14daNpc_Kolinb_cFPv();
extern "C" void talk__14daNpc_Kolinb_cFPv();
extern "C" static void daNpc_Kolinb_Create__FPv();
extern "C" static void daNpc_Kolinb_Delete__FPv();
extern "C" static void daNpc_Kolinb_Execute__FPv();
extern "C" static void daNpc_Kolinb_Draw__FPv();
extern "C" static bool daNpc_Kolinb_IsDelete__FPv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__8daNpcT_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__13daNpcT_Path_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void
__ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__15daNpcT_JntAnm_cFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" bool getEyeballMaterialNo__8daNpcT_cFv();
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi();
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" void afterJntAnm__8daNpcT_cFi();
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
extern "C" void changeBtp__8daNpcT_cFPiPi();
extern "C" void changeBtk__8daNpcT_cFPiPi();
extern "C" void func_80A48434(void* _this, int*);
extern "C" void __sinit_d_a_npc_kolinb_cpp();
extern "C" void
__ct__14daNpc_Kolinb_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" void getHeadJointNo__14daNpc_Kolinb_cFv();
extern "C" void checkChangeJoint__14daNpc_Kolinb_cFi();
extern "C" void checkRemoveJoint__14daNpc_Kolinb_cFi();
extern "C" void getBackboneJointNo__14daNpc_Kolinb_cFv();
extern "C" void getNeckJointNo__14daNpc_Kolinb_cFv();
extern "C" void __dt__20daNpc_Kolinb_Param_cFv();
extern "C" static void func_80A486EC();
extern "C" static void func_80A486F4();
extern "C" u8 const m__20daNpc_Kolinb_Param_c[140];
extern "C" extern char const* const d_a_npc_kolinb__stringBase0;
extern "C" void* mCutNameList__14daNpc_Kolinb_c[7];
extern "C" u8 mCutList__14daNpc_Kolinb_c[84];

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
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
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c();
extern "C" void dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
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
extern "C" void Set__4cBgWFP6cBgD_tUlPA3_A4_f();
extern "C" void __ct__4dBgWFv();
extern "C" void Move__4dBgWFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void initialize__18daNpcT_ActorMngr_cFv();
extern "C" void entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c();
extern "C" void initialize__15daNpcT_MatAnm_cFv();
extern "C" void initialize__22daNpcT_MotionSeqMngr_cFv();
extern "C" void initialize__13daNpcT_Path_cFv();
extern "C" void initialize__15daNpcT_JntAnm_cFv();
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
extern "C" void setAngle__8daNpcT_cF5csXyz();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void cM_rndF__Ff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void __ct__10Z2CreatureFv();
extern "C" void __dt__10Z2CreatureFv();
extern "C" void init__10Z2CreatureFP3VecP3VecUcUc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
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
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 80A487DC-80A487DC 0000CC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A487DC = "";
SECTION_DEAD static char const* const stringBase_80A487DD = "Kolinb";
SECTION_DEAD static char const* const stringBase_80A487E4 = "zrCb";
SECTION_DEAD static char const* const stringBase_80A487E9 = "CONVERSATION_IN_HOTEL";
SECTION_DEAD static char const* const stringBase_80A487FF = "CONVERSATION_ABOUT_DEATHMT";
SECTION_DEAD static char const* const stringBase_80A4881A = "CONVERSATION_ABOUT_GORON";
SECTION_DEAD static char const* const stringBase_80A48833 = "NURSE";
SECTION_DEAD static char const* const stringBase_80A48839 = "CLOTH_TRY";
SECTION_DEAD static char const* const stringBase_80A48843 = "THANK_YOU";
#pragma pop

/* 80A48854-80A48860 000000 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A48860-80A48874 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
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

/* 80A48874-80A48884 000020 0010+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[16] = {
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02,
};

/* 80A48884-80A48894 -00001 0010+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[4] = {
    (void*)&d_a_npc_kolinb__stringBase0,
    (void*)NULL,
    (void*)&d_a_npc_kolinb__stringBase0,
    (void*)NULL,
};
#pragma pop

/* 80A48894-80A488A0 -00001 000C+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[3] = {
    (void*)&d_a_npc_kolinb__stringBase0,
    (void*)(((char*)&d_a_npc_kolinb__stringBase0) + 0x1),
    (void*)(((char*)&d_a_npc_kolinb__stringBase0) + 0x8),
};

/* 80A488A0-80A488A4 00004C 0002+02 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u16 l_loadResPtrn0[1 + 1 /* padding */] = {
    0x01FF,
    /* padding */
    0x0000,
};

/* 80A488A4-80A488A8 000050 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u8 l_loadResPtrn1[3 + 1 /* padding */] = {
    0x01,
    0x02,
    0xFF,
    /* padding */
    0x00,
};

/* 80A488A8-80A488B8 -00001 0010+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[4] = {
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn0,
    (void*)&l_loadResPtrn1,
    (void*)NULL,
};

/* 80A488B8-80A489D0 000064 0118+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[280] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1F,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A489D0-80A48ACC 00017C 00FC+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[252] = {
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x18,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02,
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80A48ACC-80A48B5C 000278 0090+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[144] = {
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x06, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A48B5C-80A48BDC 000308 0080+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[128] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x05, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A48BDC-80A48BF8 -00001 001C+00 1/1 0/0 0/0 .data            mCutNameList__14daNpc_Kolinb_c */
SECTION_DATA void* daNpc_Kolinb_c::mCutNameList[7] = {
    (void*)&d_a_npc_kolinb__stringBase0,
    (void*)(((char*)&d_a_npc_kolinb__stringBase0) + 0xD),
    (void*)(((char*)&d_a_npc_kolinb__stringBase0) + 0x23),
    (void*)(((char*)&d_a_npc_kolinb__stringBase0) + 0x3E),
    (void*)(((char*)&d_a_npc_kolinb__stringBase0) + 0x57),
    (void*)(((char*)&d_a_npc_kolinb__stringBase0) + 0x5D),
    (void*)(((char*)&d_a_npc_kolinb__stringBase0) + 0x67),
};

/* 80A48BF8-80A48C04 -00001 000C+00 0/1 0/0 0/0 .data            @3812 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3812[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationInHotel__14daNpc_Kolinb_cFi,
};
#pragma pop

/* 80A48C04-80A48C10 -00001 000C+00 0/1 0/0 0/0 .data            @3813 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3813[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutDeathMt__14daNpc_Kolinb_cFi,
};
#pragma pop

/* 80A48C10-80A48C1C -00001 000C+00 0/1 0/0 0/0 .data            @3814 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3814[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutConversationAboutGoron__14daNpc_Kolinb_cFi,
};
#pragma pop

/* 80A48C1C-80A48C28 -00001 000C+00 0/1 0/0 0/0 .data            @3815 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3815[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutNurse__14daNpc_Kolinb_cFi,
};
#pragma pop

/* 80A48C28-80A48C34 -00001 000C+00 0/1 0/0 0/0 .data            @3816 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3816[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutClothTry__14daNpc_Kolinb_cFi,
};
#pragma pop

/* 80A48C34-80A48C40 -00001 000C+00 0/1 0/0 0/0 .data            @3817 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3817[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)cutThankYou__14daNpc_Kolinb_cFi,
};
#pragma pop

/* 80A48C40-80A48C94 0003EC 0054+00 1/2 0/0 0/0 .data            mCutList__14daNpc_Kolinb_c */
SECTION_DATA u8 daNpc_Kolinb_c::mCutList[84] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A48C94-80A48CA0 -00001 000C+00 1/1 0/0 0/0 .data            @4507 */
SECTION_DATA static void* lit_4507[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__14daNpc_Kolinb_cFPv,
};

/* 80A48CA0-80A48CAC -00001 000C+00 1/1 0/0 0/0 .data            @4555 */
SECTION_DATA static void* lit_4555[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__14daNpc_Kolinb_cFPv,
};

/* 80A48CAC-80A48CB8 -00001 000C+00 1/1 0/0 0/0 .data            @4560 */
SECTION_DATA static void* lit_4560[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__14daNpc_Kolinb_cFPv,
};

/* 80A48CB8-80A48CC4 -00001 000C+00 1/1 0/0 0/0 .data            @4677 */
SECTION_DATA static void* lit_4677[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__14daNpc_Kolinb_cFPv,
};

/* 80A48CC4-80A48CE4 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Kolinb_MethodTable */
static actor_method_class daNpc_Kolinb_MethodTable = {
    (process_method_func)daNpc_Kolinb_Create__FPv,
    (process_method_func)daNpc_Kolinb_Delete__FPv,
    (process_method_func)daNpc_Kolinb_Execute__FPv,
    (process_method_func)daNpc_Kolinb_IsDelete__FPv,
    (process_method_func)daNpc_Kolinb_Draw__FPv,
};

/* 80A48CE4-80A48D14 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_KOLINB */
extern actor_process_profile_definition g_profile_NPC_KOLINB = {
  fpcLy_CURRENT_e,           // mLayerID
  7,                         // mListID
  fpcPi_CURRENT_e,           // mListPrio
  PROC_NPC_KOLINB,           // mProcName
  &g_fpcLf_Method.mBase,     // sub_method
  sizeof(daNpc_Kolinb_c),    // mSize
  0,                         // mSizeOther
  0,                         // mParameters
  &g_fopAc_Method.base,      // sub_method
  351,                       // mPriority
  &daNpc_Kolinb_MethodTable, // sub_method
  0x00040107,                // mStatus
  fopAc_NPC_e,               // mActorType
  fopAc_CULLBOX_CUSTOM_e,    // cullType
};

/* 80A48D14-80A48D20 0004C0 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80A48D20-80A48D44 0004CC 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A486F4,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A486EC,
};

/* 80A48D44-80A48D50 0004F0 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80A48D50-80A48D5C 0004FC 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80A48D5C-80A48D68 000508 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80A48D68-80A48D74 000514 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80A48D74-80A48D80 000520 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80A48D80-80A48D8C 00052C 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80A48D8C-80A48D98 000538 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80A48D98-80A48DA4 000544 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80A48DA4-80A48DB0 000550 000C+00 3/3 0/0 0/0 .data            __vt__13daNpcT_Path_c */
SECTION_DATA extern void* __vt__13daNpcT_Path_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__13daNpcT_Path_cFv,
};

/* 80A48DB0-80A48E74 00055C 00C4+00 2/2 0/0 0/0 .data            __vt__14daNpc_Kolinb_c */
SECTION_DATA extern void* __vt__14daNpc_Kolinb_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14daNpc_Kolinb_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__14daNpc_Kolinb_cFi,
    (void*)checkRemoveJoint__14daNpc_Kolinb_cFi,
    (void*)getBackboneJointNo__14daNpc_Kolinb_cFv,
    (void*)getNeckJointNo__14daNpc_Kolinb_cFv,
    (void*)getHeadJointNo__14daNpc_Kolinb_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__8daNpcT_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__8daNpcT_cFi,
    (void*)setParam__14daNpc_Kolinb_cFv,
    (void*)checkChangeEvt__14daNpc_Kolinb_cFv,
    (void*)evtTalk__14daNpc_Kolinb_cFv,
    (void*)evtEndProc__8daNpcT_cFv,
    (void*)evtCutProc__14daNpc_Kolinb_cFv,
    (void*)setAfterTalkMotion__14daNpc_Kolinb_cFv,
    (void*)evtProc__8daNpcT_cFv,
    (void*)action__14daNpc_Kolinb_cFv,
    (void*)beforeMove__14daNpc_Kolinb_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__14daNpc_Kolinb_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__14daNpc_Kolinb_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__8daNpcT_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__14daNpc_Kolinb_cFv,
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

/* 80A4598C-80A45ADC 0000EC 0150+00 1/0 0/0 0/0 .text            __dt__14daNpc_Kolinb_cFv */
daNpc_Kolinb_c::~daNpc_Kolinb_c() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A48710-80A4879C 000000 008C+00 5/5 0/0 0/0 .rodata          m__20daNpc_Kolinb_Param_c */
SECTION_RODATA u8 const daNpc_Kolinb_Param_c::m[140] = {
    0x42, 0xC8, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x20, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x03, 0x00, 0x06, 0x00, 0x05, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A48710, &daNpc_Kolinb_Param_c::m);

/* 80A4879C-80A487AC 00008C 0010+00 0/1 0/0 0/0 .rodata          heapSize$3973 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[16] = {
    0x00, 0x00, 0x47, 0xA0, 0x00, 0x00, 0x47, 0x90, 0x00, 0x00, 0x47, 0x10, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A4879C, &heapSize);
#pragma pop

/* 80A487AC-80A487B0 00009C 0004+00 0/1 0/0 0/0 .rodata          @4048 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4048 = -200.0f;
COMPILER_STRIP_GATE(0x80A487AC, &lit_4048);
#pragma pop

/* 80A487B0-80A487B4 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4049 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4049 = -100.0f;
COMPILER_STRIP_GATE(0x80A487B0, &lit_4049);
#pragma pop

/* 80A487B4-80A487B8 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4050 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4050 = 200.0f;
COMPILER_STRIP_GATE(0x80A487B4, &lit_4050);
#pragma pop

/* 80A487B8-80A487BC 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4051 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4051 = -1000000000.0f;
COMPILER_STRIP_GATE(0x80A487B8, &lit_4051);
#pragma pop

/* 80A45ADC-80A45DC4 00023C 02E8+00 1/1 0/0 0/0 .text            create__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A487BC-80A487C0 0000AC 0004+00 2/5 0/0 0/0 .rodata          @4212 */
SECTION_RODATA static u8 const lit_4212[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A487BC, &lit_4212);

/* 80A487C0-80A487C4 0000B0 0004+00 0/2 0/0 0/0 .rodata          @4213 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4213 = 65536.0f;
COMPILER_STRIP_GATE(0x80A487C0, &lit_4213);
#pragma pop

/* 80A487C4-80A487C8 0000B4 0004+00 0/2 0/0 0/0 .rodata          @4214 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4214 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A487C4, &lit_4214);
#pragma pop

/* 80A487C8-80A487CC 0000B8 0004+00 1/1 0/0 0/0 .rodata          @4371 */
SECTION_RODATA static f32 const lit_4371 = 1.0f;
COMPILER_STRIP_GATE(0x80A487C8, &lit_4371);

/* 80A45DC4-80A4603C 000524 0278+00 1/1 0/0 0/0 .text            CreateHeap__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::CreateHeap() {
    // NONMATCHING
}

/* 80A4603C-80A46070 00079C 0034+00 1/1 0/0 0/0 .text            Delete__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::Delete() {
    // NONMATCHING
}

/* 80A46070-80A46090 0007D0 0020+00 2/2 0/0 0/0 .text            Execute__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A487CC-80A487D0 0000BC 0004+00 1/2 0/0 0/0 .rodata          @4403 */
SECTION_RODATA static f32 const lit_4403 = 100.0f;
COMPILER_STRIP_GATE(0x80A487CC, &lit_4403);

/* 80A46090-80A46124 0007F0 0094+00 1/1 0/0 0/0 .text            Draw__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::Draw() {
    // NONMATCHING
}

/* 80A46124-80A46144 000884 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__14daNpc_Kolinb_cFP10fopAc_ac_c           */
void daNpc_Kolinb_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A46144-80A4619C 0008A4 0058+00 1/1 0/0 0/0 .text
 * ctrlJointCallBack__14daNpc_Kolinb_cFP8J3DJointi              */
void daNpc_Kolinb_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80A4619C-80A461E8 0008FC 004C+00 1/1 0/0 0/0 .text            getType__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::getType() {
    // NONMATCHING
}

/* 80A461E8-80A462C8 000948 00E0+00 1/1 0/0 0/0 .text            isDelete__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::isDelete() {
    // NONMATCHING
}

/* 80A462C8-80A46420 000A28 0158+00 1/1 0/0 0/0 .text            reset__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::reset() {
    // NONMATCHING
}

/* 80A46420-80A4651C 000B80 00FC+00 1/0 0/0 0/0 .text            setParam__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::setParam() {
    // NONMATCHING
}

/* 80A4651C-80A465D0 000C7C 00B4+00 1/0 0/0 0/0 .text            checkChangeEvt__14daNpc_Kolinb_cFv
 */
void daNpc_Kolinb_c::checkChangeEvt() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A487D0-80A487D4 0000C0 0004+00 5/5 0/0 0/0 .rodata          @4542 */
SECTION_RODATA static f32 const lit_4542 = -1.0f;
COMPILER_STRIP_GATE(0x80A487D0, &lit_4542);

/* 80A465D0-80A46630 000D30 0060+00 1/0 0/0 0/0 .text setAfterTalkMotion__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::setAfterTalkMotion() {
    // NONMATCHING
}

/* 80A46630-80A46634 000D90 0004+00 1/1 0/0 0/0 .text            srchActors__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::srchActors() {
    /* empty function */
}

/* 80A46634-80A466D4 000D94 00A0+00 1/0 0/0 0/0 .text            evtTalk__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::evtTalk() {
    // NONMATCHING
}

/* 80A466D4-80A4679C 000E34 00C8+00 1/0 0/0 0/0 .text            evtCutProc__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::evtCutProc() {
    // NONMATCHING
}

/* 80A4679C-80A46824 000EFC 0088+00 1/0 0/0 0/0 .text            action__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::action() {
    // NONMATCHING
}

/* 80A46824-80A468E8 000F84 00C4+00 1/0 0/0 0/0 .text            beforeMove__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A487D4-80A487D8 0000C4 0004+00 0/1 0/0 0/0 .rodata          @4658 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4658 = 10.0f;
COMPILER_STRIP_GATE(0x80A487D4, &lit_4658);
#pragma pop

/* 80A487D8-80A487DC 0000C8 0004+00 0/1 0/0 0/0 .rodata          @4659 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4659 = 30.0f;
COMPILER_STRIP_GATE(0x80A487D8, &lit_4659);
#pragma pop

/* 80A468E8-80A46A4C 001048 0164+00 1/0 0/0 0/0 .text            setAttnPos__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::setAttnPos() {
    // NONMATCHING
}

/* 80A46A4C-80A46A9C 0011AC 0050+00 1/0 0/0 0/0 .text            setCollision__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::setCollision() {
    // NONMATCHING
}

/* 80A46A9C-80A46AA4 0011FC 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__14daNpc_Kolinb_cFv */
bool daNpc_Kolinb_c::drawDbgInfo() {
    return false;
}

/* 80A46AA4-80A46AEC 001204 0048+00 1/1 0/0 0/0 .text            selectAction__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::selectAction() {
    // NONMATCHING
}

/* 80A46AEC-80A46B18 00124C 002C+00 2/2 0/0 0/0 .text
 * chkAction__14daNpc_Kolinb_cFM14daNpc_Kolinb_cFPCvPvPv_i      */
void daNpc_Kolinb_c::chkAction(int (daNpc_Kolinb_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80A46B18-80A46BC0 001278 00A8+00 2/2 0/0 0/0 .text
 * setAction__14daNpc_Kolinb_cFM14daNpc_Kolinb_cFPCvPvPv_i      */
void daNpc_Kolinb_c::setAction(int (daNpc_Kolinb_c::*param_0)(void*)) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A487DC-80A487DC 0000CC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A4884D = "prm";
#pragma pop

/* 80A46BC0-80A46C48 001320 0088+00 1/0 0/0 0/0 .text cutConversationInHotel__14daNpc_Kolinb_cFi
 */
void daNpc_Kolinb_c::cutConversationInHotel(int param_0) {
    // NONMATCHING
}

/* 80A46C48-80A46EE4 0013A8 029C+00 1/0 0/0 0/0 .text
 * cutConversationAboutDeathMt__14daNpc_Kolinb_cFi              */
void daNpc_Kolinb_c::cutConversationAboutDeathMt(int param_0) {
    // NONMATCHING
}

/* 80A46EE4-80A47180 001644 029C+00 1/0 0/0 0/0 .text
 * cutConversationAboutGoron__14daNpc_Kolinb_cFi                */
void daNpc_Kolinb_c::cutConversationAboutGoron(int param_0) {
    // NONMATCHING
}

/* 80A47180-80A472EC 0018E0 016C+00 1/0 0/0 0/0 .text            cutNurse__14daNpc_Kolinb_cFi */
void daNpc_Kolinb_c::cutNurse(int param_0) {
    // NONMATCHING
}

/* 80A472EC-80A4738C 001A4C 00A0+00 1/0 0/0 0/0 .text            cutClothTry__14daNpc_Kolinb_cFi */
void daNpc_Kolinb_c::cutClothTry(int param_0) {
    // NONMATCHING
}

/* 80A4738C-80A4742C 001AEC 00A0+00 1/0 0/0 0/0 .text            cutThankYou__14daNpc_Kolinb_cFi */
void daNpc_Kolinb_c::cutThankYou(int param_0) {
    // NONMATCHING
}

/* 80A4742C-80A475D4 001B8C 01A8+00 1/0 0/0 0/0 .text            wait__14daNpc_Kolinb_cFPv */
void daNpc_Kolinb_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80A475D4-80A4768C 001D34 00B8+00 3/0 0/0 0/0 .text            talk__14daNpc_Kolinb_cFPv */
void daNpc_Kolinb_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80A4768C-80A476AC 001DEC 0020+00 1/0 0/0 0/0 .text            daNpc_Kolinb_Create__FPv */
static void daNpc_Kolinb_Create(void* param_0) {
    // NONMATCHING
}

/* 80A476AC-80A476CC 001E0C 0020+00 1/0 0/0 0/0 .text            daNpc_Kolinb_Delete__FPv */
static void daNpc_Kolinb_Delete(void* param_0) {
    // NONMATCHING
}

/* 80A476CC-80A476EC 001E2C 0020+00 1/0 0/0 0/0 .text            daNpc_Kolinb_Execute__FPv */
static void daNpc_Kolinb_Execute(void* param_0) {
    // NONMATCHING
}

/* 80A476EC-80A4770C 001E4C 0020+00 1/0 0/0 0/0 .text            daNpc_Kolinb_Draw__FPv */
static void daNpc_Kolinb_Draw(void* param_0) {
    // NONMATCHING
}

/* 80A4770C-80A47714 001E6C 0008+00 1/0 0/0 0/0 .text            daNpc_Kolinb_IsDelete__FPv */
static bool daNpc_Kolinb_IsDelete(void* param_0) {
    return true;
}

/* 80A47714-80A4775C 001E74 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A4775C-80A47AE4 001EBC 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A47AE4-80A47B20 002244 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80A47B20-80A47B5C 002280 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80A47B5C-80A47BA4 0022BC 0048+00 1/0 0/0 0/0 .text            __dt__13daNpcT_Path_cFv */
// daNpcT_Path_c::~daNpcT_Path_c() {
extern "C" void __dt__13daNpcT_Path_cFv() {
    // NONMATCHING
}

/* 80A47BA4-80A47BEC 002304 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80A47BEC-80A47C34 00234C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80A47C34-80A48038 002394 0404+00 1/1 0/0 0/0 .text
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

/* 80A48038-80A4803C 002798 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80A4803C-80A48138 00279C 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80A48138-80A4813C 002898 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80A4813C-80A48184 00289C 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A48184-80A481CC 0028E4 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80A481CC-80A4823C 00292C 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80A4823C-80A48298 00299C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A48298-80A48308 0029F8 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80A48308-80A48350 002A68 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80A48350-80A48358 002AB0 0008+00 1/0 0/0 0/0 .text            getEyeballMaterialNo__8daNpcT_cFv
 */
bool daNpcT_c::getEyeballMaterialNo() {
    return false;
}

/* 80A48358-80A4835C 002AB8 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80A4835C-80A48364 002ABC 0008+00 1/0 0/0 0/0 .text            getFootLJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootLJointNo() {
    return -1;
}

/* 80A48364-80A4836C 002AC4 0008+00 1/0 0/0 0/0 .text            getFootRJointNo__8daNpcT_cFv */
s32 daNpcT_c::getFootRJointNo() {
    return -1;
}

/* 80A4836C-80A48374 002ACC 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80A48374-80A4837C 002AD4 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80A4837C-80A48380 002ADC 0004+00 1/0 0/0 0/0 .text            afterJntAnm__8daNpcT_cFi */
void daNpcT_c::afterJntAnm(int param_0) {
    /* empty function */
}

/* 80A48380-80A48388 002AE0 0008+00 1/0 0/0 0/0 .text            evtEndProc__8daNpcT_cFv */
// bool daNpcT_c::evtEndProc() {
extern "C" bool evtEndProc__8daNpcT_cFv() {
    return true;
}

/* 80A48388-80A4838C 002AE8 0004+00 1/0 0/0 0/0 .text            afterMoved__8daNpcT_cFv */
void daNpcT_c::afterMoved() {
    /* empty function */
}

/* 80A4838C-80A48394 002AEC 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80A48394-80A483AC 002AF4 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A483AC-80A483B0 002B0C 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80A483B0-80A483B4 002B10 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80A483B4-80A483BC 002B14 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80A483BC-80A483C4 002B1C 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80A483C4-80A483F4 002B24 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80A483F4-80A48424 002B54 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80A48424-80A48428 002B84 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A48428-80A4842C 002B88 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A4842C-80A48430 002B8C 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A48430-80A48434 002B90 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A48434-80A48450 002B94 001C+00 2/2 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80A48434(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A48E74-80A48E80 000620 000C+00 2/2 0/0 0/0 .data            __vt__20daNpc_Kolinb_Param_c */
SECTION_DATA extern void* __vt__20daNpc_Kolinb_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__20daNpc_Kolinb_Param_cFv,
};

/* 80A48E88-80A48E94 000008 000C+00 1/1 0/0 0/0 .bss             @3818 */
static u8 lit_3818[12];

/* 80A48E94-80A48E98 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A48450-80A4854C 002BB0 00FC+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_kolinb_cpp */
void __sinit_d_a_npc_kolinb_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80A48450, __sinit_d_a_npc_kolinb_cpp);
#pragma pop

/* 80A4854C-80A4860C 002CAC 00C0+00 1/1 0/0 0/0 .text
 * __ct__14daNpc_Kolinb_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Kolinb_c::daNpc_Kolinb_c(daNpcT_faceMotionAnmData_c const* param_0,
                                   daNpcT_motionAnmData_c const* param_1,
                                   daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2,
                                   int param_3,
                                   daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4,
                                   int param_5, daNpcT_evtData_c const* param_6, char** param_7) {
    // NONMATCHING
}

/* 80A4860C-80A48624 002D6C 0018+00 1/0 0/0 0/0 .text            getHeadJointNo__14daNpc_Kolinb_cFv
 */
void daNpc_Kolinb_c::getHeadJointNo() {
    // NONMATCHING
}

/* 80A48624-80A4864C 002D84 0028+00 1/0 0/0 0/0 .text checkChangeJoint__14daNpc_Kolinb_cFi */
void daNpc_Kolinb_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80A4864C-80A48674 002DAC 0028+00 1/0 0/0 0/0 .text checkRemoveJoint__14daNpc_Kolinb_cFi */
void daNpc_Kolinb_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80A48674-80A4868C 002DD4 0018+00 1/0 0/0 0/0 .text getBackboneJointNo__14daNpc_Kolinb_cFv */
void daNpc_Kolinb_c::getBackboneJointNo() {
    // NONMATCHING
}

/* 80A4868C-80A486A4 002DEC 0018+00 1/0 0/0 0/0 .text            getNeckJointNo__14daNpc_Kolinb_cFv
 */
void daNpc_Kolinb_c::getNeckJointNo() {
    // NONMATCHING
}

/* 80A486A4-80A486EC 002E04 0048+00 2/1 0/0 0/0 .text            __dt__20daNpc_Kolinb_Param_cFv */
daNpc_Kolinb_Param_c::~daNpc_Kolinb_Param_c() {
    // NONMATCHING
}

/* 80A486EC-80A486F4 002E4C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80A486EC() {
    // NONMATCHING
}

/* 80A486F4-80A486FC 002E54 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80A486F4() {
    // NONMATCHING
}

/* 80A487DC-80A487DC 0000CC 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */