/**
 * @file d_a_npc_hoz.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_hoz.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void __dt__11daNpc_Hoz_cFv();
extern "C" void create__11daNpc_Hoz_cFv();
extern "C" void CreateHeap__11daNpc_Hoz_cFv();
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
extern "C" void Delete__11daNpc_Hoz_cFv();
extern "C" void Execute__11daNpc_Hoz_cFv();
extern "C" void Draw__11daNpc_Hoz_cFv();
extern "C" void createHeapCallBack__11daNpc_Hoz_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpc_Hoz_cFP8J3DJointi();
extern "C" static void s_sub__FPvPv();
extern "C" static void s_subCanoe__FPvPv();
extern "C" void getType__11daNpc_Hoz_cFv();
extern "C" void getFlowNodeNo__11daNpc_Hoz_cFv();
extern "C" bool isDelete__11daNpc_Hoz_cFv();
extern "C" void reset__11daNpc_Hoz_cFv();
extern "C" static void s_subBomb__FPvPv();
extern "C" void setParam__11daNpc_Hoz_cFv();
extern "C" void setAfterTalkMotion__11daNpc_Hoz_cFv();
extern "C" void srchActors__11daNpc_Hoz_cFv();
extern "C" void checkChangeEvt__11daNpc_Hoz_cFv();
extern "C" void evtTalk__11daNpc_Hoz_cFv();
extern "C" void evtEndProc__11daNpc_Hoz_cFv();
extern "C" void evtCutProc__11daNpc_Hoz_cFv();
extern "C" void evtProc__11daNpc_Hoz_cFv();
extern "C" void action__11daNpc_Hoz_cFv();
extern "C" void beforeMove__11daNpc_Hoz_cFv();
extern "C" void setAttnPos__11daNpc_Hoz_cFv();
extern "C" void setCollision__11daNpc_Hoz_cFv();
extern "C" void evtOrder__11daNpc_Hoz_cFv();
extern "C" bool drawDbgInfo__11daNpc_Hoz_cFv();
extern "C" void selectAction__11daNpc_Hoz_cFv();
extern "C" void chkAction__11daNpc_Hoz_cFM11daNpc_Hoz_cFPCvPvPv_i();
extern "C" void setAction__11daNpc_Hoz_cFM11daNpc_Hoz_cFPCvPvPv_i();
extern "C" void wait__11daNpc_Hoz_cFPv();
extern "C" void waitBattle__11daNpc_Hoz_cFPv();
extern "C" void waitTwilightBattle__11daNpc_Hoz_cFPv();
extern "C" void waitBoat__11daNpc_Hoz_cFPv();
extern "C" void waitBoat2__11daNpc_Hoz_cFPv();
extern "C" void waitBoat1_5__11daNpc_Hoz_cFPv();
extern "C" void waitTw__11daNpc_Hoz_cFPv();
extern "C" void talk__11daNpc_Hoz_cFPv();
extern "C" void ECut_boatRace__11daNpc_Hoz_cFi();
extern "C" void ECut_beforeBattle__11daNpc_Hoz_cFi();
extern "C" void ECut_afterBattle__11daNpc_Hoz_cFi();
extern "C" void ECut_beforeBlast__11daNpc_Hoz_cFi();
extern "C" void ECut_afterBlast__11daNpc_Hoz_cFi();
extern "C" void ECut_yMushi__11daNpc_Hoz_cFi();
extern "C" void ECut_talkBreak__11daNpc_Hoz_cFi();
extern "C" static void daNpc_Hoz_Create__FPv();
extern "C" static void daNpc_Hoz_Delete__FPv();
extern "C" static void daNpc_Hoz_Execute__FPv();
extern "C" static void daNpc_Hoz_Draw__FPv();
extern "C" static bool daNpc_Hoz_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__8daNpcT_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__18daNpcT_ActorMngr_cFv();
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
extern "C" bool chkXYItems__8daNpcT_cFv();
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi();
extern "C" s32 getFootLJointNo__8daNpcT_cFv();
extern "C" s32 getFootRJointNo__8daNpcT_cFv();
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv();
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv();
extern "C" void afterJntAnm__8daNpcT_cFi();
extern "C" void afterMoved__8daNpcT_cFv();
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
extern "C" void func_80A063B4(void* _this, int*);
extern "C" void __sinit_d_a_npc_hoz_cpp();
extern "C" void
__ct__11daNpc_Hoz_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc();
extern "C" u16 getEyeballMaterialNo__11daNpc_Hoz_cFv();
extern "C" s32 getHeadJointNo__11daNpc_Hoz_cFv();
extern "C" s32 getNeckJointNo__11daNpc_Hoz_cFv();
extern "C" bool getBackboneJointNo__11daNpc_Hoz_cFv();
extern "C" void checkChangeJoint__11daNpc_Hoz_cFi();
extern "C" void checkRemoveJoint__11daNpc_Hoz_cFi();
extern "C" void __dt__17daNpc_Hoz_Param_cFv();
extern "C" static void func_80A0662C();
extern "C" static void func_80A06634();
extern "C" u8 const m__17daNpc_Hoz_Param_c[144];
extern "C" extern char const* const d_a_npc_hoz__stringBase0;
extern "C" void* mCutNameList__11daNpc_Hoz_c[8];
extern "C" u8 mCutList__11daNpc_Hoz_c[96];

//
// External References:
//

extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs();
extern "C" void fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfGs_wolfeye_effect_check__Fv();
extern "C" void isSwitch__12dSv_danBit_cCFi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setPtT__14dEvt_control_cFPv();
extern "C" void setPtI_Id__14dEvt_control_cFUi();
extern "C" void setObjectArchive__16dEvent_manager_cFPc();
extern "C" void getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyActIdx__16dEvent_manager_cFiPCPCciii();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void getRunEventName__16dEvent_manager_cFv();
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
extern "C" void tgHitCallBack__8daNpcT_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf();
extern "C" void loadRes__8daNpcT_cFPCScPPCc();
extern "C" void deleteRes__8daNpcT_cFPCScPPCc();
extern "C" void execute__8daNpcT_cFv();
extern "C" void draw__8daNpcT_cFiifP11_GXColorS10fiii();
extern "C" void setEnvTevColor__8daNpcT_cFv();
extern "C" void setRoomNo__8daNpcT_cFv();
extern "C" void ctrlBtk__8daNpcT_cFv();
extern "C" void setMtx__8daNpcT_cFv();
extern "C" void ctrlMsgAnm__8daNpcT_cFPiPiP10fopAc_ac_ci();
extern "C" void ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel();
extern "C" void setFootPos__8daNpcT_cFv();
extern "C" void setFootPrtcl__8daNpcT_cFP4cXyzff();
extern "C" bool checkCullDraw__8daNpcT_cFv();
extern "C" void twilight__8daNpcT_cFv();
extern "C" void evtChange__8daNpcT_cFv();
extern "C" void clrParam__8daNpcT_cFv();
extern "C" void setFaceMotionAnm__8daNpcT_cFib();
extern "C" void setMotionAnm__8daNpcT_cFifi();
extern "C" void setPos__8daNpcT_cF4cXyz();
extern "C" void setAngle__8daNpcT_cFs();
extern "C" void srchPlayerActor__8daNpcT_cFv();
extern "C" void step__8daNpcT_cFsiiii();
extern "C" void initTalk__8daNpcT_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci();
extern "C" void daNpcT_getDistTableIdx__Fii();
extern "C" void daNpcT_chkEvtBit__FUl();
extern "C" void daNpcT_offTmpBit__FUl();
extern "C" void daNpcT_chkTmpBit__FUl();
extern "C" void daNpcF_chkEvtBit__FUl();
extern "C" void checkNowWolfEyeUp__9daPy_py_cFv();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void setMiniGameItem__13dMeter2Info_cFUc();
extern "C" void resetMiniGameItem__13dMeter2Info_cFb();
extern "C" void setMiniGameCount__13dMeter2Info_cFSc();
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
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
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
extern "C" void __register_global_object();
extern "C" void readyStartTimer__16daStartAndGoal_cFv();
extern "C" void isStartCheck__16daStartAndGoal_cFv();

//
// Declarations:
//

/* ############################################################################################## */
/* 80A06764-80A06764 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A06764 = "";
SECTION_DEAD static char const* const stringBase_80A06765 = "BOAT_RACE";
SECTION_DEAD static char const* const stringBase_80A0676F = "BOAT_RACE_RETURN";
SECTION_DEAD static char const* const stringBase_80A06780 = "BEFORE_BATTLE";
SECTION_DEAD static char const* const stringBase_80A0678E = "AFTER_BATTLE";
SECTION_DEAD static char const* const stringBase_80A0679B = "BEFORE_BLAST";
SECTION_DEAD static char const* const stringBase_80A067A8 = "AFTER_BLAST";
SECTION_DEAD static char const* const stringBase_80A067B4 = "Y_MUSHI";
SECTION_DEAD static char const* const stringBase_80A067BC = "TALK_BREAK";
SECTION_DEAD static char const* const stringBase_80A067C7 = "Hoz";
SECTION_DEAD static char const* const stringBase_80A067CB = "Hoz_TW";
SECTION_DEAD static char const* const stringBase_80A067D2 = "Hoz1";
SECTION_DEAD static char const* const stringBase_80A067D7 = "Hoz2";
SECTION_DEAD static char const* const stringBase_80A067DC = "Hoz3";
SECTION_DEAD static char const* const stringBase_80A067E1 = "Hoz2_3";
#pragma pop

/* 80A06824-80A06834 000020 0010+00 1/1 0/0 0/0 .data            l_bmdData */
SECTION_DATA static u8 l_bmdData[16] = {
    0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x02,
};

/* 80A06834-80A0687C -00001 0048+00 0/1 0/0 0/0 .data            l_evtList */
#pragma push
#pragma force_active on
SECTION_DATA static void* l_evtList[18] = {
    (void*)&d_a_npc_hoz__stringBase0,
    (void*)NULL,
    (void*)(((char*)&d_a_npc_hoz__stringBase0) + 0x1),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_hoz__stringBase0) + 0xB),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_hoz__stringBase0) + 0x1C),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_hoz__stringBase0) + 0x2A),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_hoz__stringBase0) + 0x37),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_hoz__stringBase0) + 0x44),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_hoz__stringBase0) + 0x50),
    (void*)0x00000001,
    (void*)(((char*)&d_a_npc_hoz__stringBase0) + 0x58),
    (void*)0x00000001,
};
#pragma pop

/* 80A0687C-80A06898 -00001 001C+00 2/3 0/0 0/0 .data            l_resNameList */
SECTION_DATA static void* l_resNameList[7] = {
    (void*)&d_a_npc_hoz__stringBase0,
    (void*)(((char*)&d_a_npc_hoz__stringBase0) + 0x63),
    (void*)(((char*)&d_a_npc_hoz__stringBase0) + 0x67),
    (void*)(((char*)&d_a_npc_hoz__stringBase0) + 0x6E),
    (void*)(((char*)&d_a_npc_hoz__stringBase0) + 0x73),
    (void*)(((char*)&d_a_npc_hoz__stringBase0) + 0x78),
    (void*)(((char*)&d_a_npc_hoz__stringBase0) + 0x7D),
};

/* 80A06898-80A0689C 000094 0003+01 1/0 0/0 0/0 .data            l_loadResPtrn0 */
SECTION_DATA static u8 l_loadResPtrn0[3 + 1 /* padding */] = {
    0x01,
    0x02,
    0xFF,
    /* padding */
    0x00,
};

/* 80A0689C-80A068A0 000098 0004+00 1/0 0/0 0/0 .data            l_loadResPtrnTW */
SECTION_DATA static u32 l_loadResPtrnTW = 0x010203FF;

/* 80A068A0-80A068A4 00009C 0004+00 1/0 0/0 0/0 .data            l_loadResPtrn1 */
SECTION_DATA static u32 l_loadResPtrn1 = 0x010406FF;

/* 80A068A4-80A068AC 0000A0 0005+03 1/0 0/0 0/0 .data            l_loadResPtrnBattle */
SECTION_DATA static u8 l_loadResPtrnBattle[5 + 3 /* padding */] = {
    0x01,
    0x04,
    0x05,
    0x06,
    0xFF,
    /* padding */
    0x00,
    0x00,
    0x00,
};

/* 80A068AC-80A068C8 -00001 001C+00 1/2 0/0 0/0 .data            l_loadResPtrnList */
SECTION_DATA static void* l_loadResPtrnList[7] = {
    (void*)&l_loadResPtrn0,      (void*)&l_loadResPtrn1,  (void*)&l_loadResPtrn1,
    (void*)&l_loadResPtrnBattle, (void*)&l_loadResPtrnTW, (void*)&l_loadResPtrn1,
    (void*)&l_loadResPtrnTW,
};

/* 80A068C8-80A06D0C 0000C4 0444+00 0/1 0/0 0/0 .data            l_faceMotionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionAnmData[1092] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x08,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x2E,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x2F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x34,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x35, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x36, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x37, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x13,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x27,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x2C,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x2D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x2A,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x11,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x00, 0x00, 0x01,
};
#pragma pop

/* 80A06D0C-80A07150 000508 0444+00 0/1 0/0 0/0 .data            l_motionAnmData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionAnmData[1092] = {
    0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x22, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x25,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1D,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19,
    0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x22,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x21, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04,
    0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x02,
    0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
    0x00, 0x01, 0x00, 0x00,
};
#pragma pop

/* 80A07150-80A07380 00094C 0230+00 0/1 0/0 0/0 .data            l_faceMotionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_faceMotionSequenceData[560] = {
    0x00, 0x01, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x04, 0xFF, 0x01, 0x00, 0x03, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x01, 0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x01, 0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x01, 0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x01, 0x00, 0x0F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1A, 0xFF, 0x01, 0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1B, 0xFF, 0x01, 0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1C, 0xFF, 0x01, 0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1D, 0xFF, 0x01, 0x00, 0x1F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x20, 0xFF, 0x01, 0x00, 0x21, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x22, 0xFF, 0x01, 0x00, 0x23, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x24, 0xFF, 0x01, 0x00, 0x23, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x01, 0x00, 0x15, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x16, 0xFF, 0x01, 0x00, 0x17, 0xFF, 0x01, 0x00, 0x18, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x17, 0xFF, 0x01, 0x00, 0x18, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x15, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x25, 0xFF, 0x01, 0x00, 0x26, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1E, 0xFF, 0x01, 0x00, 0x1F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x19, 0xFF, 0x01, 0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x01, 0x00, 0x12, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x01, 0x00, 0x12, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x01, 0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x18, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x23, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x21, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A07380-80A075C0 000B7C 0240+00 0/1 0/0 0/0 .data            l_motionSequenceData */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_motionSequenceData[576] = {
    0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x01, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x03, 0xFF, 0x01, 0x00, 0x02, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x05, 0xFF, 0x01, 0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x06, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x07, 0xFF, 0x01, 0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x08, 0xFF, 0x01, 0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0A, 0xFF, 0x01, 0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0B, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0C, 0xFF, 0x01, 0x00, 0x0D, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x15, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x16, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x17, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x18, 0xFF, 0x01, 0x00, 0x19, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1B, 0xFF, 0x01, 0x00, 0x1C, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x19, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x21, 0xFF, 0x01, 0x00, 0x22, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x22, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x11, 0xFF, 0x01, 0x00, 0x12, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x13, 0xFF, 0x01, 0x00, 0x14, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x14, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x12, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x23, 0xFF, 0x01, 0x00, 0x24, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x24, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x25, 0xFF, 0x01, 0x00, 0x26, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x26, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x23, 0xFF, 0x01, 0x00, 0x25, 0xFF, 0x01, 0x00, 0x26, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1E, 0xFF, 0x01, 0x00, 0x1F, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0F, 0xFF, 0x01, 0x00, 0x10, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x10, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x20, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x0E, 0xFF, 0x01, 0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1A, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x1D, 0xFF, 0x01, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
    0x00, 0x09, 0xFF, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00,
};
#pragma pop

/* 80A075C0-80A075E0 -00001 0020+00 1/1 0/0 0/0 .data            mCutNameList__11daNpc_Hoz_c */
SECTION_DATA void* daNpc_Hoz_c::mCutNameList[8] = {
    (void*)&d_a_npc_hoz__stringBase0,
    (void*)(((char*)&d_a_npc_hoz__stringBase0) + 0x1),
    (void*)(((char*)&d_a_npc_hoz__stringBase0) + 0x1C),
    (void*)(((char*)&d_a_npc_hoz__stringBase0) + 0x2A),
    (void*)(((char*)&d_a_npc_hoz__stringBase0) + 0x37),
    (void*)(((char*)&d_a_npc_hoz__stringBase0) + 0x44),
    (void*)(((char*)&d_a_npc_hoz__stringBase0) + 0x50),
    (void*)(((char*)&d_a_npc_hoz__stringBase0) + 0x58),
};

/* 80A075E0-80A075EC -00001 000C+00 0/1 0/0 0/0 .data            @3957 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3957[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_boatRace__11daNpc_Hoz_cFi,
};
#pragma pop

/* 80A075EC-80A075F8 -00001 000C+00 0/1 0/0 0/0 .data            @3958 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3958[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_beforeBattle__11daNpc_Hoz_cFi,
};
#pragma pop

/* 80A075F8-80A07604 -00001 000C+00 0/1 0/0 0/0 .data            @3959 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3959[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_afterBattle__11daNpc_Hoz_cFi,
};
#pragma pop

/* 80A07604-80A07610 -00001 000C+00 0/1 0/0 0/0 .data            @3960 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3960[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_beforeBlast__11daNpc_Hoz_cFi,
};
#pragma pop

/* 80A07610-80A0761C -00001 000C+00 0/1 0/0 0/0 .data            @3961 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3961[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_afterBlast__11daNpc_Hoz_cFi,
};
#pragma pop

/* 80A0761C-80A07628 -00001 000C+00 0/1 0/0 0/0 .data            @3962 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3962[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_yMushi__11daNpc_Hoz_cFi,
};
#pragma pop

/* 80A07628-80A07634 -00001 000C+00 0/1 0/0 0/0 .data            @3963 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3963[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)ECut_talkBreak__11daNpc_Hoz_cFi,
};
#pragma pop

/* 80A07634-80A07694 000E30 0060+00 1/2 0/0 0/0 .data            mCutList__11daNpc_Hoz_c */
SECTION_DATA u8 daNpc_Hoz_c::mCutList[96] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80A07694-80A076A0 -00001 000C+00 1/1 0/0 0/0 .data            @4712 */
SECTION_DATA static void* lit_4712[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Hoz_cFPv,
};

/* 80A076A0-80A076AC -00001 000C+00 1/1 0/0 0/0 .data            @4720 */
SECTION_DATA static void* lit_4720[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpc_Hoz_cFPv,
};

/* 80A076AC-80A076D0 -00001 0024+00 1/1 0/0 0/0 .data            @4755 */
SECTION_DATA static void* lit_4755[9] = {
    (void*)(((char*)evtEndProc__11daNpc_Hoz_cFv) + 0x118),
    (void*)(((char*)evtEndProc__11daNpc_Hoz_cFv) + 0xE4),
    (void*)(((char*)evtEndProc__11daNpc_Hoz_cFv) + 0x118),
    (void*)(((char*)evtEndProc__11daNpc_Hoz_cFv) + 0x38),
    (void*)(((char*)evtEndProc__11daNpc_Hoz_cFv) + 0x4C),
    (void*)(((char*)evtEndProc__11daNpc_Hoz_cFv) + 0x60),
    (void*)(((char*)evtEndProc__11daNpc_Hoz_cFv) + 0xA4),
    (void*)(((char*)evtEndProc__11daNpc_Hoz_cFv) + 0x118),
    (void*)(((char*)evtEndProc__11daNpc_Hoz_cFv) + 0xF4),
};

/* 80A076D0-80A076DC -00001 000C+00 0/1 0/0 0/0 .data            @5073 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5073[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitBoat__11daNpc_Hoz_cFPv,
};
#pragma pop

/* 80A076DC-80A076E8 -00001 000C+00 0/1 0/0 0/0 .data            @5075 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5075[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitBoat2__11daNpc_Hoz_cFPv,
};
#pragma pop

/* 80A076E8-80A076F4 -00001 000C+00 0/1 0/0 0/0 .data            @5077 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5077[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitBattle__11daNpc_Hoz_cFPv,
};
#pragma pop

/* 80A076F4-80A07700 -00001 000C+00 0/1 0/0 0/0 .data            @5079 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5079[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitTwilightBattle__11daNpc_Hoz_cFPv,
};
#pragma pop

/* 80A07700-80A0770C -00001 000C+00 0/1 0/0 0/0 .data            @5081 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5081[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitBoat1_5__11daNpc_Hoz_cFPv,
};
#pragma pop

/* 80A0770C-80A07718 -00001 000C+00 0/1 0/0 0/0 .data            @5083 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5083[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)waitTw__11daNpc_Hoz_cFPv,
};
#pragma pop

/* 80A07718-80A07724 -00001 000C+00 0/1 0/0 0/0 .data            @5085 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_5085[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpc_Hoz_cFPv,
};
#pragma pop

/* 80A07724-80A07744 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Hoz_MethodTable */
static actor_method_class daNpc_Hoz_MethodTable = {
    (process_method_func)daNpc_Hoz_Create__FPv,
    (process_method_func)daNpc_Hoz_Delete__FPv,
    (process_method_func)daNpc_Hoz_Execute__FPv,
    (process_method_func)daNpc_Hoz_IsDelete__FPv,
    (process_method_func)daNpc_Hoz_Draw__FPv,
};

/* 80A07744-80A07774 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_HOZ */
extern actor_process_profile_definition g_profile_NPC_HOZ = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_HOZ,             // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daNpc_Hoz_c),      // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  344,                      // mPriority
  &daNpc_Hoz_MethodTable,   // sub_method
  0x00044108,               // mStatus
  fopAc_NPC_e,              // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80A07774-80A07780 000F70 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80A07780-80A0778C 000F7C 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80A0778C-80A077B0 000F88 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A06634,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80A0662C,
};

/* 80A077B0-80A077BC 000FAC 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80A077BC-80A077C8 000FB8 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80A077C8-80A077D4 000FC4 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80A077D4-80A077E0 000FD0 000C+00 3/3 0/0 0/0 .data            __vt__22daNpcT_MotionSeqMngr_c */
SECTION_DATA extern void* __vt__22daNpcT_MotionSeqMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__22daNpcT_MotionSeqMngr_cFv,
};

/* 80A077E0-80A077EC 000FDC 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcT_JntAnm_c */
SECTION_DATA extern void* __vt__15daNpcT_JntAnm_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcT_JntAnm_cFv,
};

/* 80A077EC-80A077F8 000FE8 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80A077F8-80A07804 000FF4 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80A07804-80A07810 001000 000C+00 6/6 0/0 0/0 .data            __vt__18daNpcT_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcT_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcT_ActorMngr_cFv,
};

/* 80A07810-80A078D4 00100C 00C4+00 2/2 0/0 0/0 .data            __vt__11daNpc_Hoz_c */
SECTION_DATA extern void* __vt__11daNpc_Hoz_c[49] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpc_Hoz_cFv,
    (void*)ctrlBtk__8daNpcT_cFv,
    (void*)ctrlSubFaceMotion__8daNpcT_cFi,
    (void*)checkChangeJoint__11daNpc_Hoz_cFi,
    (void*)checkRemoveJoint__11daNpc_Hoz_cFi,
    (void*)getBackboneJointNo__11daNpc_Hoz_cFv,
    (void*)getNeckJointNo__11daNpc_Hoz_cFv,
    (void*)getHeadJointNo__11daNpc_Hoz_cFv,
    (void*)getFootLJointNo__8daNpcT_cFv,
    (void*)getFootRJointNo__8daNpcT_cFv,
    (void*)getEyeballLMaterialNo__8daNpcT_cFv,
    (void*)getEyeballRMaterialNo__8daNpcT_cFv,
    (void*)getEyeballMaterialNo__11daNpc_Hoz_cFv,
    (void*)ctrlJoint__8daNpcT_cFP8J3DJointP8J3DModel,
    (void*)afterJntAnm__8daNpcT_cFi,
    (void*)setParam__11daNpc_Hoz_cFv,
    (void*)checkChangeEvt__11daNpc_Hoz_cFv,
    (void*)evtTalk__11daNpc_Hoz_cFv,
    (void*)evtEndProc__11daNpc_Hoz_cFv,
    (void*)evtCutProc__11daNpc_Hoz_cFv,
    (void*)setAfterTalkMotion__11daNpc_Hoz_cFv,
    (void*)evtProc__11daNpc_Hoz_cFv,
    (void*)action__11daNpc_Hoz_cFv,
    (void*)beforeMove__11daNpc_Hoz_cFv,
    (void*)afterMoved__8daNpcT_cFv,
    (void*)setAttnPos__11daNpc_Hoz_cFv,
    (void*)setFootPos__8daNpcT_cFv,
    (void*)setCollision__11daNpc_Hoz_cFv,
    (void*)setFootPrtcl__8daNpcT_cFP4cXyzff,
    (void*)checkCullDraw__8daNpcT_cFv,
    (void*)twilight__8daNpcT_cFv,
    (void*)chkXYItems__8daNpcT_cFv,
    (void*)evtOrder__11daNpc_Hoz_cFv,
    (void*)decTmr__8daNpcT_cFv,
    (void*)clrParam__8daNpcT_cFv,
    (void*)drawDbgInfo__11daNpc_Hoz_cFv,
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

/* 80A0150C-80A01658 0000EC 014C+00 1/0 0/0 0/0 .text            __dt__11daNpc_Hoz_cFv */
// daNpc_Hoz_c::~daNpc_Hoz_c() {
extern "C" void __dt__11daNpc_Hoz_cFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A06650-80A066E0 000000 0090+00 10/10 0/0 0/0 .rodata          m__17daNpc_Hoz_Param_c */
SECTION_RODATA u8 const daNpc_Hoz_Param_c::m[144] = {
    0x42, 0x70, 0x00, 0x00, 0xC0, 0x40, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x43, 0xFA, 0x00, 0x00,
    0x43, 0x7F, 0x00, 0x00, 0x43, 0x52, 0x00, 0x00, 0x42, 0x0C, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xF0, 0x00, 0x00, 0xC1, 0xF0, 0x00, 0x00,
    0x41, 0xF0, 0x00, 0x00, 0xC1, 0x20, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00, 0xC2, 0x34, 0x00, 0x00,
    0x3F, 0x19, 0x99, 0x9A, 0x41, 0x40, 0x00, 0x00, 0x00, 0x04, 0x00, 0x06, 0x00, 0x04, 0x00, 0x06,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x3C, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00,
    0xC1, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC1, 0xA0, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00,
    0x42, 0x20, 0x00, 0x00, 0x41, 0xA0, 0x00, 0x00, 0x42, 0xDC, 0x00, 0x00, 0x44, 0x16, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A06650, &daNpc_Hoz_Param_c::m);

/* 80A066E0-80A066FC 000090 001C+00 0/1 0/0 0/0 .rodata          heapSize$4117 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const heapSize[28] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3F, 0x70, 0x00, 0x00, 0x3F, 0x70, 0x00, 0x00,
    0x3F, 0x80, 0x00, 0x00, 0x3E, 0xC0, 0x00, 0x00, 0x3F, 0x70, 0x00, 0x00, 0x3E, 0xB0,
};
COMPILER_STRIP_GATE(0x80A066E0, &heapSize);
#pragma pop

/* 80A066FC-80A06700 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4176 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4176 = -300.0f;
COMPILER_STRIP_GATE(0x80A066FC, &lit_4176);
#pragma pop

/* 80A06700-80A06704 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4177 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4177 = -50.0f;
COMPILER_STRIP_GATE(0x80A06700, &lit_4177);
#pragma pop

/* 80A06704-80A06708 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4178 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4178 = 300.0f;
COMPILER_STRIP_GATE(0x80A06704, &lit_4178);
#pragma pop

/* 80A06708-80A0670C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4179 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4179 = 450.0f;
COMPILER_STRIP_GATE(0x80A06708, &lit_4179);
#pragma pop

/* 80A01658-80A01904 000238 02AC+00 1/1 0/0 0/0 .text            create__11daNpc_Hoz_cFv */
void daNpc_Hoz_c::create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A0670C-80A06710 0000BC 0004+00 9/15 0/0 0/0 .rodata          @4337 */
SECTION_RODATA static u8 const lit_4337[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80A0670C, &lit_4337);

/* 80A06710-80A06714 0000C0 0004+00 0/2 0/0 0/0 .rodata          @4338 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4338 = 65536.0f;
COMPILER_STRIP_GATE(0x80A06710, &lit_4338);
#pragma pop

/* 80A06714-80A06718 0000C4 0004+00 0/3 0/0 0/0 .rodata          @4339 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4339 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80A06714, &lit_4339);
#pragma pop

/* 80A06718-80A0671C 0000C8 0004+00 2/4 0/0 0/0 .rodata          @4486 */
SECTION_RODATA static f32 const lit_4486 = 1.0f;
COMPILER_STRIP_GATE(0x80A06718, &lit_4486);

/* 80A01904-80A01B98 0004E4 0294+00 1/1 0/0 0/0 .text            CreateHeap__11daNpc_Hoz_cFv */
void daNpc_Hoz_c::CreateHeap() {
    // NONMATCHING
}

/* 80A01B98-80A01BD4 000778 003C+00 1/1 0/0 0/0 .text            __dt__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::~J3DTevKColorAnm() {
extern "C" void __dt__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A01BD4-80A01BEC 0007B4 0018+00 1/1 0/0 0/0 .text            __ct__15J3DTevKColorAnmFv */
// J3DTevKColorAnm::J3DTevKColorAnm() {
extern "C" void __ct__15J3DTevKColorAnmFv() {
    // NONMATCHING
}

/* 80A01BEC-80A01C28 0007CC 003C+00 1/1 0/0 0/0 .text            __dt__14J3DTevColorAnmFv */
// J3DTevColorAnm::~J3DTevColorAnm() {
extern "C" void __dt__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A01C28-80A01C40 000808 0018+00 1/1 0/0 0/0 .text            __ct__14J3DTevColorAnmFv */
// J3DTevColorAnm::J3DTevColorAnm() {
extern "C" void __ct__14J3DTevColorAnmFv() {
    // NONMATCHING
}

/* 80A01C40-80A01C88 000820 0048+00 1/1 0/0 0/0 .text            __dt__11J3DTexNoAnmFv */
// J3DTexNoAnm::~J3DTexNoAnm() {
extern "C" void __dt__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A01C88-80A01CAC 000868 0024+00 1/1 0/0 0/0 .text            __ct__11J3DTexNoAnmFv */
// J3DTexNoAnm::J3DTexNoAnm() {
extern "C" void __ct__11J3DTexNoAnmFv() {
    // NONMATCHING
}

/* 80A01CAC-80A01CE8 00088C 003C+00 1/1 0/0 0/0 .text            __dt__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::~J3DTexMtxAnm() {
extern "C" void __dt__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A01CE8-80A01D00 0008C8 0018+00 1/1 0/0 0/0 .text            __ct__12J3DTexMtxAnmFv */
// J3DTexMtxAnm::J3DTexMtxAnm() {
extern "C" void __ct__12J3DTexMtxAnmFv() {
    // NONMATCHING
}

/* 80A01D00-80A01D3C 0008E0 003C+00 1/1 0/0 0/0 .text            __dt__14J3DMatColorAnmFv */
// J3DMatColorAnm::~J3DMatColorAnm() {
extern "C" void __dt__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A01D3C-80A01D54 00091C 0018+00 1/1 0/0 0/0 .text            __ct__14J3DMatColorAnmFv */
// J3DMatColorAnm::J3DMatColorAnm() {
extern "C" void __ct__14J3DMatColorAnmFv() {
    // NONMATCHING
}

/* 80A01D54-80A01D88 000934 0034+00 1/1 0/0 0/0 .text            Delete__11daNpc_Hoz_cFv */
void daNpc_Hoz_c::Delete() {
    // NONMATCHING
}

/* 80A01D88-80A01DA8 000968 0020+00 2/2 0/0 0/0 .text            Execute__11daNpc_Hoz_cFv */
void daNpc_Hoz_c::Execute() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A0671C-80A06720 0000CC 0004+00 1/1 0/0 0/0 .rodata          @4536 */
SECTION_RODATA static f32 const lit_4536 = 100.0f;
COMPILER_STRIP_GATE(0x80A0671C, &lit_4536);

/* 80A01DA8-80A01E44 000988 009C+00 1/1 0/0 0/0 .text            Draw__11daNpc_Hoz_cFv */
void daNpc_Hoz_c::Draw() {
    // NONMATCHING
}

/* 80A01E44-80A01E64 000A24 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__11daNpc_Hoz_cFP10fopAc_ac_c              */
void daNpc_Hoz_c::createHeapCallBack(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80A01E64-80A01EBC 000A44 0058+00 1/1 0/0 0/0 .text ctrlJointCallBack__11daNpc_Hoz_cFP8J3DJointi
 */
void daNpc_Hoz_c::ctrlJointCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80A01EBC-80A01F08 000A9C 004C+00 4/4 0/0 0/0 .text            s_sub__FPvPv */
static void s_sub(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80A01F08-80A01F54 000AE8 004C+00 4/4 0/0 0/0 .text            s_subCanoe__FPvPv */
static void s_subCanoe(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80A01F54-80A01FC8 000B34 0074+00 1/1 0/0 1/1 .text            getType__11daNpc_Hoz_cFv */
u8 daNpc_Hoz_c::getType() {
    // NONMATCHING
}

/* 80A01FC8-80A01FE4 000BA8 001C+00 2/2 0/0 0/0 .text            getFlowNodeNo__11daNpc_Hoz_cFv */
void daNpc_Hoz_c::getFlowNodeNo() {
    // NONMATCHING
}

/* 80A01FE4-80A01FEC 000BC4 0008+00 1/1 0/0 0/0 .text            isDelete__11daNpc_Hoz_cFv */
bool daNpc_Hoz_c::isDelete() {
    return false;
}

/* 80A01FEC-80A02184 000BCC 0198+00 1/1 0/0 0/0 .text            reset__11daNpc_Hoz_cFv */
void daNpc_Hoz_c::reset() {
    // NONMATCHING
}

/* 80A02184-80A021DC 000D64 0058+00 1/1 0/0 0/0 .text            s_subBomb__FPvPv */
static void s_subBomb(void* param_0, void* param_1) {
    // NONMATCHING
}

/* 80A021DC-80A0236C 000DBC 0190+00 1/0 0/0 0/0 .text            setParam__11daNpc_Hoz_cFv */
void daNpc_Hoz_c::setParam() {
    // NONMATCHING
}

/* 80A0236C-80A02370 000F4C 0004+00 1/0 0/0 0/0 .text            setAfterTalkMotion__11daNpc_Hoz_cFv
 */
void daNpc_Hoz_c::setAfterTalkMotion() {
    /* empty function */
}

/* 80A02370-80A02374 000F50 0004+00 1/1 0/0 0/0 .text            srchActors__11daNpc_Hoz_cFv */
void daNpc_Hoz_c::srchActors() {
    /* empty function */
}

/* 80A02374-80A023EC 000F54 0078+00 1/0 0/0 0/0 .text            checkChangeEvt__11daNpc_Hoz_cFv */
BOOL daNpc_Hoz_c::checkChangeEvt() {
    // NONMATCHING
}

/* 80A023EC-80A024D0 000FCC 00E4+00 1/0 0/0 0/0 .text            evtTalk__11daNpc_Hoz_cFv */
BOOL daNpc_Hoz_c::evtTalk() {
    // NONMATCHING
}

/* 80A024D0-80A0260C 0010B0 013C+00 2/0 0/0 0/0 .text            evtEndProc__11daNpc_Hoz_cFv */
BOOL daNpc_Hoz_c::evtEndProc() {
    // NONMATCHING
}

/* 80A0260C-80A026D4 0011EC 00C8+00 1/0 0/0 0/0 .text            evtCutProc__11daNpc_Hoz_cFv */
BOOL daNpc_Hoz_c::evtCutProc() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A06720-80A06724 0000D0 0004+00 7/9 0/0 0/0 .rodata          @4832 */
SECTION_RODATA static f32 const lit_4832 = -1.0f;
COMPILER_STRIP_GATE(0x80A06720, &lit_4832);

/* 80A06764-80A06764 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A067E8 = "DEFAULT_GETITEM";
#pragma pop

/* 80A026D4-80A02918 0012B4 0244+00 1/0 0/0 0/0 .text            evtProc__11daNpc_Hoz_cFv */
int daNpc_Hoz_c::evtProc() {
    // NONMATCHING
}

/* 80A02918-80A029A0 0014F8 0088+00 1/0 0/0 0/0 .text            action__11daNpc_Hoz_cFv */
void daNpc_Hoz_c::action() {
    // NONMATCHING
}

/* 80A029A0-80A02A18 001580 0078+00 1/0 0/0 0/0 .text            beforeMove__11daNpc_Hoz_cFv */
void daNpc_Hoz_c::beforeMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A06724-80A06728 0000D4 0004+00 0/1 0/0 0/0 .rodata          @4920 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4920 = -30.0f;
COMPILER_STRIP_GATE(0x80A06724, &lit_4920);
#pragma pop

/* 80A06728-80A06730 0000D8 0004+04 0/1 0/0 0/0 .rodata          @4921 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4921[1 + 1 /* padding */] = {
    0x38C90FDB,
    /* padding */
    0x00000000,
};
COMPILER_STRIP_GATE(0x80A06728, &lit_4921);
#pragma pop

/* 80A06730-80A06738 0000E0 0008+00 1/3 0/0 0/0 .rodata          @4923 */
SECTION_RODATA static u8 const lit_4923[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A06730, &lit_4923);

/* 80A02A18-80A02C50 0015F8 0238+00 1/0 0/0 0/0 .text            setAttnPos__11daNpc_Hoz_cFv */
void daNpc_Hoz_c::setAttnPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A06738-80A06740 0000E8 0008+00 0/2 0/0 0/0 .rodata          @4981 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4981[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A06738, &lit_4981);
#pragma pop

/* 80A06740-80A06748 0000F0 0008+00 0/2 0/0 0/0 .rodata          @4982 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4982[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A06740, &lit_4982);
#pragma pop

/* 80A06748-80A06750 0000F8 0008+00 0/2 0/0 0/0 .rodata          @4983 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4983[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80A06748, &lit_4983);
#pragma pop

/* 80A06750-80A06754 000100 0004+00 0/1 0/0 0/0 .rodata          @5031 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5031 = -15.0f;
COMPILER_STRIP_GATE(0x80A06750, &lit_5031);
#pragma pop

/* 80A06754-80A06758 000104 0004+00 0/1 0/0 0/0 .rodata          @5032 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5032 = 30.0f;
COMPILER_STRIP_GATE(0x80A06754, &lit_5032);
#pragma pop

/* 80A02C50-80A02DD4 001830 0184+00 1/0 0/0 0/0 .text            setCollision__11daNpc_Hoz_cFv */
void daNpc_Hoz_c::setCollision() {
    // NONMATCHING
}

/* 80A02DD4-80A02F78 0019B4 01A4+00 1/0 0/0 0/0 .text            evtOrder__11daNpc_Hoz_cFv */
void daNpc_Hoz_c::evtOrder() {
    // NONMATCHING
}

/* 80A02F78-80A02F80 001B58 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpc_Hoz_cFv */
BOOL daNpc_Hoz_c::drawDbgInfo() {
    return false;
}

/* 80A02F80-80A030A8 001B60 0128+00 1/1 0/0 0/0 .text            selectAction__11daNpc_Hoz_cFv */
void daNpc_Hoz_c::selectAction() {
    // NONMATCHING
}

/* 80A030A8-80A030D4 001C88 002C+00 1/1 0/0 0/0 .text
 * chkAction__11daNpc_Hoz_cFM11daNpc_Hoz_cFPCvPvPv_i            */
void daNpc_Hoz_c::chkAction(int (daNpc_Hoz_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80A030D4-80A0317C 001CB4 00A8+00 2/2 0/0 0/0 .text
 * setAction__11daNpc_Hoz_cFM11daNpc_Hoz_cFPCvPvPv_i            */
void daNpc_Hoz_c::setAction(int (daNpc_Hoz_c::*param_0)(void*)) {
    // NONMATCHING
}

/* 80A0317C-80A03304 001D5C 0188+00 1/0 0/0 0/0 .text            wait__11daNpc_Hoz_cFPv */
void daNpc_Hoz_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80A03304-80A03578 001EE4 0274+00 1/0 0/0 0/0 .text            waitBattle__11daNpc_Hoz_cFPv */
void daNpc_Hoz_c::waitBattle(void* param_0) {
    // NONMATCHING
}

/* 80A03578-80A037E4 002158 026C+00 1/0 0/0 0/0 .text waitTwilightBattle__11daNpc_Hoz_cFPv */
void daNpc_Hoz_c::waitTwilightBattle(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A06764-80A06764 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A067F8 = "F_SP112";
#pragma pop

/* 80A037E4-80A03BDC 0023C4 03F8+00 1/0 0/0 0/0 .text            waitBoat__11daNpc_Hoz_cFPv */
void daNpc_Hoz_c::waitBoat(void* param_0) {
    // NONMATCHING
}

/* 80A03BDC-80A03F8C 0027BC 03B0+00 1/0 0/0 0/0 .text            waitBoat2__11daNpc_Hoz_cFPv */
void daNpc_Hoz_c::waitBoat2(void* param_0) {
    // NONMATCHING
}

/* 80A03F8C-80A04400 002B6C 0474+00 1/0 0/0 0/0 .text            waitBoat1_5__11daNpc_Hoz_cFPv */
void daNpc_Hoz_c::waitBoat1_5(void* param_0) {
    // NONMATCHING
}

/* 80A04400-80A045FC 002FE0 01FC+00 1/0 0/0 0/0 .text            waitTw__11daNpc_Hoz_cFPv */
void daNpc_Hoz_c::waitTw(void* param_0) {
    // NONMATCHING
}

/* 80A045FC-80A0487C 0031DC 0280+00 2/0 0/0 0/0 .text            talk__11daNpc_Hoz_cFPv */
void daNpc_Hoz_c::talk(void* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A06758-80A0675C 000108 0004+00 0/1 0/0 0/0 .rodata          @5865 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5865 = 0xC59EDE14;
COMPILER_STRIP_GATE(0x80A06758, &lit_5865);
#pragma pop

/* 80A0675C-80A06760 00010C 0004+00 0/1 0/0 0/0 .rodata          @5866 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5866 = 17082.0f;
COMPILER_STRIP_GATE(0x80A0675C, &lit_5866);
#pragma pop

/* 80A06760-80A06764 000110 0004+00 0/1 0/0 0/0 .rodata          @5867 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5867 = -89740.0f;
COMPILER_STRIP_GATE(0x80A06760, &lit_5867);
#pragma pop

/* 80A06764-80A06764 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80A06800 = "prm";
#pragma pop

/* 80A0487C-80A04BE4 00345C 0368+00 1/0 0/0 0/0 .text            ECut_boatRace__11daNpc_Hoz_cFi */
void daNpc_Hoz_c::ECut_boatRace(int param_0) {
    // NONMATCHING
}

/* 80A04BE4-80A04CDC 0037C4 00F8+00 1/0 0/0 0/0 .text            ECut_beforeBattle__11daNpc_Hoz_cFi
 */
void daNpc_Hoz_c::ECut_beforeBattle(int param_0) {
    // NONMATCHING
}

/* 80A04CDC-80A04E24 0038BC 0148+00 1/0 0/0 0/0 .text            ECut_afterBattle__11daNpc_Hoz_cFi
 */
void daNpc_Hoz_c::ECut_afterBattle(int param_0) {
    // NONMATCHING
}

/* 80A04E24-80A04F6C 003A04 0148+00 1/0 0/0 0/0 .text            ECut_beforeBlast__11daNpc_Hoz_cFi
 */
void daNpc_Hoz_c::ECut_beforeBlast(int param_0) {
    // NONMATCHING
}

/* 80A04F6C-80A050B4 003B4C 0148+00 1/0 0/0 0/0 .text            ECut_afterBlast__11daNpc_Hoz_cFi */
void daNpc_Hoz_c::ECut_afterBlast(int param_0) {
    // NONMATCHING
}

/* 80A050B4-80A051C8 003C94 0114+00 1/0 0/0 0/0 .text            ECut_yMushi__11daNpc_Hoz_cFi */
void daNpc_Hoz_c::ECut_yMushi(int param_0) {
    // NONMATCHING
}

/* 80A051C8-80A05310 003DA8 0148+00 1/0 0/0 0/0 .text            ECut_talkBreak__11daNpc_Hoz_cFi */
void daNpc_Hoz_c::ECut_talkBreak(int param_0) {
    // NONMATCHING
}

/* 80A05310-80A05330 003EF0 0020+00 1/0 0/0 0/0 .text            daNpc_Hoz_Create__FPv */
static void daNpc_Hoz_Create(void* param_0) {
    // NONMATCHING
}

/* 80A05330-80A05350 003F10 0020+00 1/0 0/0 0/0 .text            daNpc_Hoz_Delete__FPv */
static void daNpc_Hoz_Delete(void* param_0) {
    // NONMATCHING
}

/* 80A05350-80A05370 003F30 0020+00 1/0 0/0 0/0 .text            daNpc_Hoz_Execute__FPv */
static void daNpc_Hoz_Execute(void* param_0) {
    // NONMATCHING
}

/* 80A05370-80A05390 003F50 0020+00 1/0 0/0 0/0 .text            daNpc_Hoz_Draw__FPv */
static void daNpc_Hoz_Draw(void* param_0) {
    // NONMATCHING
}

/* 80A05390-80A05398 003F70 0008+00 1/0 0/0 0/0 .text            daNpc_Hoz_IsDelete__FPv */
static bool daNpc_Hoz_IsDelete(void* param_0) {
    return true;
}

/* 80A05398-80A053C8 003F78 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80A053C8-80A05410 003FA8 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A05410-80A05798 003FF0 0388+00 1/1 0/0 0/0 .text            __dt__8daNpcT_cFv */
// daNpcT_c::~daNpcT_c() {
extern "C" void __dt__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A05798-80A057D4 004378 003C+00 3/3 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80A057D4-80A05810 0043B4 003C+00 2/2 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80A05810-80A05858 0043F0 0048+00 1/0 0/0 0/0 .text            __dt__18daNpcT_ActorMngr_cFv */
// daNpcT_ActorMngr_c::~daNpcT_ActorMngr_c() {
extern "C" void __dt__18daNpcT_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80A05858-80A058A0 004438 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80A058A0-80A058E8 004480 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80A058E8-80A05CEC 0044C8 0404+00 1/1 0/0 0/0 .text
 * __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
// daNpcT_c::daNpcT_c(daNpcT_faceMotionAnmData_c const* param_0,
//                        daNpcT_motionAnmData_c const* param_1,
//                        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_2, int param_3,
//                        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_4, int param_5,
//                        daNpcT_evtData_c const* param_6, char** param_7) {
extern "C" void __ct__8daNpcT_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc() {
    // NONMATCHING
}

/* 80A05CEC-80A05CF0 0048CC 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80A05CF0-80A05DEC 0048D0 00FC+00 1/0 0/0 0/0 .text            __dt__15daNpcT_JntAnm_cFv */
// daNpcT_JntAnm_c::~daNpcT_JntAnm_c() {
extern "C" void __dt__15daNpcT_JntAnm_cFv() {
    // NONMATCHING
}

/* 80A05DEC-80A05DF0 0049CC 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80A05DF0-80A05E38 0049D0 0048+00 1/0 0/0 0/0 .text            __dt__22daNpcT_MotionSeqMngr_cFv */
// daNpcT_MotionSeqMngr_c::~daNpcT_MotionSeqMngr_c() {
extern "C" void __dt__22daNpcT_MotionSeqMngr_cFv() {
    // NONMATCHING
}

/* 80A05E38-80A05EA8 004A18 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80A05EA8-80A05F04 004A88 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80A05F04-80A05F74 004AE4 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80A05F74-80A05FBC 004B54 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80A05FBC-80A060D8 004B9C 011C+00 1/1 0/0 0/0 .text setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs */
// void daNpcT_JntAnm_c::setEyeAngleY(cXyz param_0, s16 param_1, int param_2, f32 param_3,
//                                        s16 param_4) {
extern "C" void setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs() {
    // NONMATCHING
}

/* 80A060D8-80A062E0 004CB8 0208+00 1/1 0/0 0/0 .text setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs */
// void daNpcT_JntAnm_c::setEyeAngleX(cXyz param_0, f32 param_1, s16 param_2) {
extern "C" void setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs() {
    // NONMATCHING
}

/* 80A062E0-80A062E8 004EC0 0008+00 1/0 0/0 0/0 .text            chkXYItems__8daNpcT_cFv */
// bool daNpcT_c::chkXYItems() {
extern "C" bool chkXYItems__8daNpcT_cFv() {
    return false;
}

/* 80A062E8-80A062EC 004EC8 0004+00 1/0 0/0 0/0 .text            ctrlSubFaceMotion__8daNpcT_cFi */
// void daNpcT_c::ctrlSubFaceMotion(int param_0) {
extern "C" void ctrlSubFaceMotion__8daNpcT_cFi() {
    /* empty function */
}

/* 80A062FC-80A06304 004EDC 0008+00 1/0 0/0 0/0 .text            getEyeballLMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballLMaterialNo() {
extern "C" bool getEyeballLMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80A06304-80A0630C 004EE4 0008+00 1/0 0/0 0/0 .text            getEyeballRMaterialNo__8daNpcT_cFv
 */
// bool daNpcT_c::getEyeballRMaterialNo() {
extern "C" bool getEyeballRMaterialNo__8daNpcT_cFv() {
    return false;
}

/* 80A06314-80A0632C 004EF4 0018+00 1/0 0/0 0/0 .text            decTmr__8daNpcT_cFv */
// void daNpcT_c::decTmr() {
extern "C" void decTmr__8daNpcT_cFv() {
    // NONMATCHING
}

/* 80A0632C-80A06330 004F0C 0004+00 1/0 0/0 0/0 .text            drawOtherMdl__8daNpcT_cFv */
// void daNpcT_c::drawOtherMdl() {
extern "C" void drawOtherMdl__8daNpcT_cFv() {
    /* empty function */
}

/* 80A06330-80A06334 004F10 0004+00 1/0 0/0 0/0 .text            drawGhost__8daNpcT_cFv */
// void daNpcT_c::drawGhost() {
extern "C" void drawGhost__8daNpcT_cFv() {
    /* empty function */
}

/* 80A06334-80A0633C 004F14 0008+00 1/0 0/0 0/0 .text afterSetFaceMotionAnm__8daNpcT_cFiifi */
// bool daNpcT_c::afterSetFaceMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetFaceMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80A0633C-80A06344 004F1C 0008+00 1/0 0/0 0/0 .text            afterSetMotionAnm__8daNpcT_cFiifi
 */
// bool daNpcT_c::afterSetMotionAnm(int param_0, int param_1, f32 param_2, int param_3) {
extern "C" bool afterSetMotionAnm__8daNpcT_cFiifi() {
    return true;
}

/* 80A06344-80A06374 004F24 0030+00 1/0 0/0 0/0 .text
 * getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c     */
// void daNpcT_c::getFaceMotionAnm(daNpcT_faceMotionAnmData_c param_0) {
extern "C" void getFaceMotionAnm__8daNpcT_cF26daNpcT_faceMotionAnmData_c() {
    // NONMATCHING
}

/* 80A06374-80A063A4 004F54 0030+00 1/0 0/0 0/0 .text
 * getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c             */
// void daNpcT_c::getMotionAnm(daNpcT_motionAnmData_c param_0) {
extern "C" void getMotionAnm__8daNpcT_cF22daNpcT_motionAnmData_c() {
    // NONMATCHING
}

/* 80A063A4-80A063A8 004F84 0004+00 1/0 0/0 0/0 .text            changeAnm__8daNpcT_cFPiPi */
// void daNpcT_c::changeAnm(int* param_0, int* param_1) {
extern "C" void changeAnm__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A063A8-80A063AC 004F88 0004+00 1/0 0/0 0/0 .text            changeBck__8daNpcT_cFPiPi */
// void daNpcT_c::changeBck(int* param_0, int* param_1) {
extern "C" void changeBck__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A063AC-80A063B0 004F8C 0004+00 1/0 0/0 0/0 .text            changeBtp__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtp(int* param_0, int* param_1) {
extern "C" void changeBtp__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A063B0-80A063B4 004F90 0004+00 1/0 0/0 0/0 .text            changeBtk__8daNpcT_cFPiPi */
// void daNpcT_c::changeBtk(int* param_0, int* param_1) {
extern "C" void changeBtk__8daNpcT_cFPiPi() {
    /* empty function */
}

/* 80A063B4-80A063D0 004F94 001C+00 2/2 0/0 0/0 .text            cLib_calcTimer<i>__FPi */
extern "C" void func_80A063B4(void* _this, int* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80A078D4-80A078E0 0010D0 000C+00 2/2 0/0 0/0 .data            __vt__17daNpc_Hoz_Param_c */
SECTION_DATA extern void* __vt__17daNpc_Hoz_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpc_Hoz_Param_cFv,
};

/* 80A078E8-80A078F4 000008 000C+00 1/1 0/0 0/0 .bss             @3964 */
static u8 lit_3964[12];

/* 80A078F4-80A078F8 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80A063D0-80A064E4 004FB0 0114+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_hoz_cpp */
void __sinit_d_a_npc_hoz_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80A063D0, __sinit_d_a_npc_hoz_cpp);
#pragma pop

/* 80A064E4-80A065A4 0050C4 00C0+00 1/1 0/0 0/0 .text
 * __ct__11daNpc_Hoz_cFPC26daNpcT_faceMotionAnmData_cPC22daNpcT_motionAnmData_cPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPCQ222daNpcT_MotionSeqMngr_c18sequenceStepData_ciPC16daNpcT_evtData_cPPc
 */
daNpc_Hoz_c::daNpc_Hoz_c(daNpcT_faceMotionAnmData_c const* param_1,
                             daNpcT_motionAnmData_c const* param_2,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_3, int param_4,
                             daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_5, int param_6,
                             daNpcT_evtData_c const* param_7, char** param_8) :
                             daNpcT_c(param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8) {
    // NONMATCHING
}

/* 80A065A4-80A065AC 005184 0008+00 1/0 0/0 0/0 .text getEyeballMaterialNo__11daNpc_Hoz_cFv */
u16 daNpc_Hoz_c::getEyeballMaterialNo() {
    return true;
}

/* 80A065AC-80A065B4 00518C 0008+00 1/0 0/0 0/0 .text            getHeadJointNo__11daNpc_Hoz_cFv */
s32 daNpc_Hoz_c::getHeadJointNo() {
    return 4;
}

/* 80A065B4-80A065BC 005194 0008+00 1/0 0/0 0/0 .text            getNeckJointNo__11daNpc_Hoz_cFv */
s32 daNpc_Hoz_c::getNeckJointNo() {
    return 3;
}

/* 80A065BC-80A065C4 00519C 0008+00 1/0 0/0 0/0 .text            getBackboneJointNo__11daNpc_Hoz_cFv
 */
s32 daNpc_Hoz_c::getBackboneJointNo() {
    return true;
}

/* 80A065C4-80A065D4 0051A4 0010+00 1/0 0/0 0/0 .text            checkChangeJoint__11daNpc_Hoz_cFi
 */
int daNpc_Hoz_c::checkChangeJoint(int param_0) {
    // NONMATCHING
}

/* 80A065D4-80A065E4 0051B4 0010+00 1/0 0/0 0/0 .text            checkRemoveJoint__11daNpc_Hoz_cFi
 */
int daNpc_Hoz_c::checkRemoveJoint(int param_0) {
    // NONMATCHING
}

/* 80A065E4-80A0662C 0051C4 0048+00 2/1 0/0 0/0 .text            __dt__17daNpc_Hoz_Param_cFv */
// daNpc_Hoz_Param_c::~daNpc_Hoz_Param_c() {
extern "C" void __dt__17daNpc_Hoz_Param_cFv() {
    // NONMATCHING
}

/* 80A0662C-80A06634 00520C 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80A0662C() {
    // NONMATCHING
}

/* 80A06634-80A0663C 005214 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80A06634() {
    // NONMATCHING
}

/* 80A06764-80A06764 000114 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
