/**
 * d_a_npc_theB.cpp
 * Telma B
 */

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_npc_theB.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void __ct__11daNpcTheB_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__11daNpcTheB_cFv();
extern "C" void create__11daNpcTheB_cFv();
extern "C" void CreateHeap__11daNpcTheB_cFv();
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
extern "C" void Delete__11daNpcTheB_cFv();
extern "C" void Execute__11daNpcTheB_cFv();
extern "C" void Draw__11daNpcTheB_cFv();
extern "C" void ctrlJoint__11daNpcTheB_cFP8J3DJointP8J3DModel();
extern "C" void createHeapCallBack__11daNpcTheB_cFP10fopAc_ac_c();
extern "C" void ctrlJointCallBack__11daNpcTheB_cFP8J3DJointi();
extern "C" void getHandPos1__11daNpcTheB_cFi();
extern "C" void getHandPos2__11daNpcTheB_cFi();
extern "C" void setHintEvent__11daNpcTheB_cFlUsi();
extern "C" void main__11daNpcTheB_cFv();
extern "C" void setParam__11daNpcTheB_cFv();
extern "C" void ctrlBtk__11daNpcTheB_cFv();
extern "C" void setAttnPos__11daNpcTheB_cFv();
extern "C" void setExpressionAnm__11daNpcTheB_cFib();
extern "C" void setExpressionBtp__11daNpcTheB_cFi();
extern "C" void setMotionAnm__11daNpcTheB_cFif();
extern "C" bool drawDbgInfo__11daNpcTheB_cFv();
extern "C" void reset__11daNpcTheB_cFv();
extern "C" void playExpression__11daNpcTheB_cFv();
extern "C" void playMotion__11daNpcTheB_cFv();
extern "C" void doNormalAction__11daNpcTheB_cFv();
extern "C" void doEvent__11daNpcTheB_cFv();
extern "C" void lookat__11daNpcTheB_cFv();
extern "C" void wait__11daNpcTheB_cFPv();
extern "C" void setMotion__11daNpcTheB_cFifi();
extern "C" void setExpression__11daNpcTheB_cFif();
extern "C" void talk__11daNpcTheB_cFPv();
extern "C" void EvCut_PersonalCombatIntro__11daNpcTheB_cFi();
extern "C" void EvCut_PersonalCombatRevenge__11daNpcTheB_cFi();
extern "C" void EvCut_PersonalCombatAfter__11daNpcTheB_cFv();
extern "C" void EvCut_AnnulationFieldRace__11daNpcTheB_cFi();
extern "C" void EvCut_TheBHint__11daNpcTheB_cFi();
extern "C" void EvCut_CoachGuardGameOver__11daNpcTheB_cFi();
extern "C" static void daNpcTheB_Create__FPv();
extern "C" static void daNpcTheB_Delete__FPv();
extern "C" static void daNpcTheB_Execute__FPv();
extern "C" static void daNpcTheB_Draw__FPv();
extern "C" static bool daNpcTheB_IsDelete__FPv();
extern "C" void calc__11J3DTexNoAnmCFPUs();
extern "C" void __dt__18daNpcF_ActorMngr_cFv();
extern "C" void __ct__18daNpcF_ActorMngr_cFv();
extern "C" void __dt__15daNpcF_Lookat_cFv();
extern "C" void __dt__5csXyzFv();
extern "C" void __ct__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __dt__8daNpcF_cFv();
extern "C" void __ct__8daNpcF_cFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" void adjustShapeAngle__8daNpcF_cFv();
extern "C" void setCollisions__8daNpcF_cFv();
extern "C" void drawOtherMdls__8daNpcF_cFv();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __sinit_d_a_npc_theB_cpp();
extern "C" void __dt__17daNpcTheB_Param_cFv();
extern "C" static void func_80B00D48();
extern "C" static void func_80B00D50();
extern "C" u8 const m__17daNpcTheB_Param_c[108];
extern "C" extern char const* const d_a_npc_theB__stringBase0;
extern "C" u8 mEvtSeqList__11daNpcTheB_c[72];

//
// External References:
//

extern "C" void mDoMtx_XYZrotM__FPA4_fsss();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_MtxToRot__FPA4_CfP5csXyz();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void stopZelAnime__16mDoExt_McaMorfSOFv();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_setStageLayer__FPv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcEx_SearchByID__FUi();
extern "C" void fpcLyIt_AllJudge__FPFPvPv_PvPv();
extern "C" void fpcSch_JudgeForPName__FPvPv();
extern "C" void fpcSch_JudgeByID__FPvPv();
extern "C" void getLayerNo__14dComIfG_play_cFi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_setNextStage__FPCcsScSc();
extern "C" void onSwitch__12dSv_danBit_cFi();
extern "C" void offSwitch__12dSv_danBit_cFi();
extern "C" void isSwitch__12dSv_danBit_cCFi();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void dEv_noFinishSkipProc__FPvi();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void onSkipFade__14dEvt_control_cFv();
extern "C" void endCheck__16dEvent_manager_cFs();
extern "C" void getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci();
extern "C" void getIsAddvance__16dEvent_manager_cFi();
extern "C" void getMyNowCutName__16dEvent_manager_cFi();
extern "C" void getMySubstanceP__16dEvent_manager_cFiPCci();
extern "C" void cutEnd__16dEvent_manager_cFi();
extern "C" void ChkPresentEnd__16dEvent_manager_cFv();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWallR__12dBgS_AcchCirFf();
extern "C" void SetWall__12dBgS_AcchCirFff();
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
extern "C" void initialize__18daNpcF_ActorMngr_cFv();
extern "C" void entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c();
extern "C" void remove__18daNpcF_ActorMngr_cFv();
extern "C" void getActorP__18daNpcF_ActorMngr_cFv();
extern "C" void initialize__15daNpcF_MatAnm_cFv();
extern "C" void initialize__15daNpcF_Lookat_cFv();
extern "C" void setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz();
extern "C" void calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii();
extern "C" void draw__8daNpcF_cFiifP11_GXColorS10i();
extern "C" void setMtx__8daNpcF_cFv();
extern "C" void setMtx2__8daNpcF_cFv();
extern "C" void initialize__8daNpcF_cFv();
extern "C" void getTrnsfrmKeyAnmP__8daNpcF_cFPci();
extern "C" void getTexPtrnAnmP__8daNpcF_cFPci();
extern "C" void getTexSRTKeyAnmP__8daNpcF_cFPci();
extern "C" void setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii();
extern "C" void setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib();
extern "C" void setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi();
extern "C" void setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi();
extern "C" void setEnvTevColor__8daNpcF_cFv();
extern "C" void setRoomNo__8daNpcF_cFv();
extern "C" void playAllAnm__8daNpcF_cFv();
extern "C" void playExpressionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData();
extern "C" void setLookatMtx__8daNpcF_cFiPif();
extern "C" void ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci();
extern "C" void orderEvent__8daNpcF_cFiPcUsUsUcUs();
extern "C" void initTalk__8daNpcF_cFiPP10fopAc_ac_c();
extern "C" void talkProc__8daNpcF_cFPiiPP10fopAc_ac_c();
extern "C" void getDistTableIdx__8daNpcF_cFii();
extern "C" void getEvtAreaTagP__8daNpcF_cFii();
extern "C" void chkFindPlayer2__8daNpcF_cFis();
extern "C" void daNpcF_getPlayerInfoFromPlayerList__FiiR4cXyzR5csXyz();
extern "C" void daNpcF_clearMessageTmpBit__Fv();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ct__5csXyzFsss();
extern "C" void cM_atan2s__Fff();
extern "C" void __ct__11cBgS_GndChkFv();
extern "C" void __dt__11cBgS_GndChkFv();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void bgmStart__8Z2SeqMgrFUlUll();
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
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern u8 const __ptmf_null[12 + 4 /* padding */];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" u8 mCcDCyl__8daNpcF_c[68];
extern "C" extern void* __vt__8daNpcF_c[18];
extern "C" extern void* __vt__15daNpcF_MatAnm_c[4 + 6 /* padding */];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" extern void* __vt__14J3DMaterialAnm[4];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void setPosAngle__12daNpcCoach_cFR4cXyzR5csXyz();
extern "C" void __register_global_object();
extern "C" void readyStartTimer__16daStartAndGoal_cFv();
extern "C" void isStartCheck__16daStartAndGoal_cFv();

/* 80B01048-80B0104C 000020 0004+00 0/0 0/0 0/0 .data            l_bmdGetParamList */
static u16 l_bmdGetParamList[1][2] = {
    {0, 0x26},
};

/* 80B0104C-80B010BC 000024 0070+00 2/3 0/0 0/0 .data            l_bckGetParamList */
static daNpc_GetParam1 l_bckGetParamList[14] = {
    {-1, J3DFrameCtrl::EMode_LOOP},
    {0x15, J3DFrameCtrl::EMode_NONE},
    {0x16, J3DFrameCtrl::EMode_NONE},
    {0x17, J3DFrameCtrl::EMode_NONE},
    {0x14, J3DFrameCtrl::EMode_NONE},
    {0x19, J3DFrameCtrl::EMode_LOOP},
    {0x1A, J3DFrameCtrl::EMode_LOOP},
    {0x18, J3DFrameCtrl::EMode_LOOP},
    {0x1B, J3DFrameCtrl::EMode_LOOP},
    {0x1C, J3DFrameCtrl::EMode_LOOP},
    {0x1D, J3DFrameCtrl::EMode_NONE},
    {0x1E, J3DFrameCtrl::EMode_NONE},
    {0x13, J3DFrameCtrl::EMode_LOOP},
    {0x12, J3DFrameCtrl::EMode_NONE},
};

/* 80B010BC-80B010C4 000094 0008+00 1/1 0/0 0/0 .data            l_btpGetParamList */
static daNpc_GetParam1 l_btpGetParamList[1] = {
    {0x2E, 2},
};

/* 80B010C4-80B010CC 00009C 0008+00 1/2 0/0 0/0 .data            l_btkGetParamList */
static daNpc_GetParam1 l_btkGetParamList[1] = {
    {0x2A, 2},
};

/* 80B010CC-80B010E4 -00001 0018+00 1/1 0/0 0/0 .data            l_evtNames */
static char* l_evtNames[6] = {
    NULL,
    "PERSONAL_COMBAT_INTRO",
    "PERSONAL_COMBAT_REVENGE",
    "ANNULATION_FIELD_RACE",
    "THEB_HINT",
    "COACH_GUARD_GAMEOVER",
};

/* 80B010E4-80B010E8 -00001 0004+00 8/9 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Coach";

/* 80B010E8-80B010EC -00001 0004+00 0/1 0/0 0/0 .data            l_myName */
static char* l_myName = "TheB";

/* 80B01128-80B01170 000100 0048+00 0/2 0/0 0/0 .data            mEvtSeqList__11daNpcTheB_c */
daNpcTheB_c::cutFunc daNpcTheB_c::mEvtSeqList[6] = {
    NULL,
    &daNpcTheB_c::EvCut_PersonalCombatIntro,
    &daNpcTheB_c::EvCut_PersonalCombatRevenge,
    &daNpcTheB_c::EvCut_AnnulationFieldRace,
    &daNpcTheB_c::EvCut_TheBHint,
    &daNpcTheB_c::EvCut_CoachGuardGameOver
};

/* 80B01170-80B01190 -00001 0020+00 1/1 0/0 0/0 .data            @4699 */
SECTION_DATA static void* lit_4699[8] = {
    (void*)(((char*)setExpressionAnm__11daNpcTheB_cFib) + 0x94),
    (void*)(((char*)setExpressionAnm__11daNpcTheB_cFib) + 0xB0),
    (void*)(((char*)setExpressionAnm__11daNpcTheB_cFib) + 0xCC),
    (void*)(((char*)setExpressionAnm__11daNpcTheB_cFib) + 0xE8),
    (void*)(((char*)setExpressionAnm__11daNpcTheB_cFib) + 0x104),
    (void*)(((char*)setExpressionAnm__11daNpcTheB_cFib) + 0x120),
    (void*)(((char*)setExpressionAnm__11daNpcTheB_cFib) + 0x13C),
    (void*)(((char*)setExpressionAnm__11daNpcTheB_cFib) + 0x158),
};

/* 80B01190-80B0119C -00001 000C+00 1/1 0/0 0/0 .data            @4770 */
SECTION_DATA static void* lit_4770[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait__11daNpcTheB_cFPv,
};

/* 80B0119C-80B011A8 -00001 000C+00 0/1 0/0 0/0 .data            @4861 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4861[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpcTheB_cFPv,
};
#pragma pop

/* 80B011A8-80B011B4 -00001 000C+00 0/1 0/0 0/0 .data            @4869 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_4869[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)talk__11daNpcTheB_cFPv,
};
#pragma pop

/* 80B011B4-80B011D4 -00001 0020+00 1/1 0/0 0/0 .data            @5334 */
SECTION_DATA static void* lit_5334[8] = {
    (void*)(((char*)EvCut_PersonalCombatAfter__11daNpcTheB_cFv) + 0x60),
    (void*)(((char*)EvCut_PersonalCombatAfter__11daNpcTheB_cFv) + 0x114),
    (void*)(((char*)EvCut_PersonalCombatAfter__11daNpcTheB_cFv) + 0x140),
    (void*)(((char*)EvCut_PersonalCombatAfter__11daNpcTheB_cFv) + 0x184),
    (void*)(((char*)EvCut_PersonalCombatAfter__11daNpcTheB_cFv) + 0x278),
    (void*)(((char*)EvCut_PersonalCombatAfter__11daNpcTheB_cFv) + 0x2C8),
    (void*)(((char*)EvCut_PersonalCombatAfter__11daNpcTheB_cFv) + 0x2F4),
    (void*)(((char*)EvCut_PersonalCombatAfter__11daNpcTheB_cFv) + 0x320),
};

/* 80B01224-80B01230 0001FC 000C+00 2/2 0/0 0/0 .data            __vt__11J3DTexNoAnm */
SECTION_DATA extern void* __vt__11J3DTexNoAnm[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)calc__11J3DTexNoAnmCFPUs,
};

/* 80B01230-80B01278 000208 0048+00 2/2 0/0 0/0 .data            __vt__11daNpcTheB_c */
SECTION_DATA extern void* __vt__11daNpcTheB_c[18] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__11daNpcTheB_cFv,
    (void*)setParam__11daNpcTheB_cFv,
    (void*)main__11daNpcTheB_cFv,
    (void*)ctrlBtk__11daNpcTheB_cFv,
    (void*)adjustShapeAngle__8daNpcF_cFv,
    (void*)setMtx__8daNpcF_cFv,
    (void*)setMtx2__8daNpcF_cFv,
    (void*)setAttnPos__11daNpcTheB_cFv,
    (void*)setCollisions__8daNpcF_cFv,
    (void*)setExpressionAnm__11daNpcTheB_cFib,
    (void*)setExpressionBtp__11daNpcTheB_cFi,
    (void*)setExpression__11daNpcTheB_cFif,
    (void*)setMotionAnm__11daNpcTheB_cFif,
    (void*)setMotion__11daNpcTheB_cFifi,
    (void*)drawDbgInfo__11daNpcTheB_cFv,
    (void*)drawOtherMdls__8daNpcF_cFv,
};

/* 80B01278-80B01284 000250 000C+00 3/3 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80B01284-80B012A8 00025C 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B00D50,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80B00D48,
};

/* 80B012A8-80B012B4 000280 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80B012B4-80B012C0 00028C 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80B012C0-80B012CC 000298 000C+00 2/2 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 80B012CC-80B012D8 0002A4 000C+00 4/4 0/0 0/0 .data            __vt__18daNpcF_ActorMngr_c */
SECTION_DATA extern void* __vt__18daNpcF_ActorMngr_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__18daNpcF_ActorMngr_cFv,
};

/* 80B012D8-80B012E4 0002B0 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80B012E4-80B012F0 0002BC 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80B012F0-80B012FC 0002C8 000C+00 3/3 0/0 0/0 .data            __vt__15daNpcF_Lookat_c */
SECTION_DATA extern void* __vt__15daNpcF_Lookat_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__15daNpcF_Lookat_cFv,
};

/* 80AFC76C-80AFC8F0 0000EC 0184+00 1/1 0/0 0/0 .text            __ct__11daNpcTheB_cFv */
daNpcTheB_c::daNpcTheB_c() {
    // NONMATCHING
}

/* 80AFC8F0-80AFC938 000270 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80AFC938-80AFC980 0002B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80AFC980-80AFCB44 000300 01C4+00 1/0 0/0 0/0 .text            __dt__11daNpcTheB_cFv */
daNpcTheB_c::~daNpcTheB_c() {
    // NONMATCHING
}

/* 80B00D6C-80B00DD8 000000 006C+00 10/10 0/0 0/0 .rodata          m__17daNpcTheB_Param_c */
daNpcTheB_HIOParam const daNpcTheB_Param_c::m = {
    115.0f,
    -3.0f,
    1.0f,
    400.0f,
    255.0f,
    115.0f,
    35.0f,
    40.0f,
    0.0f,
    0.0f,
    30.0f,
    -30.0f,
    45.0f,
    -20.0f,
    45.0f,
    -45.0f,
    0.6f,
    12.0f,
    0xB,
    3,
    0xF,
    3,
    90.0f,
    800.0f,
    600.0f,
    -400.0f,
    60,
    8,
    0,
    0,
    0,
    false,
    false,
};

/* 80B0131C-80B01320 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static NPC_THEB_HIO_CLASS l_HIO;

/* 80AFCB44-80AFCD98 0004C4 0254+00 1/1 0/0 0/0 .text            create__11daNpcTheB_cFv */
cPhs__Step daNpcTheB_c::create() {
    fopAcM_ct(this, daNpcTheB_c);

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x2CB0)) {
            return cPhs_ERROR_e;
        }

        if (getMessageNo() != 0xFFFF) {
            mMsgNo = getMessageNo();
        } else {
            mMsgNo = -1;
        }

        fopAcM_setStageLayer(this);

        J3DModelData* mdlData_p = mpMorf->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -50.0f, -60.0f, -50.0f, 50.0f, 130.0f, 70.0f);
        mSound.init(&current.pos, &eyePos, 3, 1);

        #if DEBUG
        mpHIO = &l_HIO;
        mpHIO->entryHIO("馬車テルマ");
        #endif

        mAcchCir.SetWall(mpHIO->m.common.width, mpHIO->m.common.knee_length);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        mCcStts.Init(mpHIO->m.common.weight, 0, this);
        mCyl.Set(mCcDCyl);
        mCyl.SetStts(&mCcStts);
        mCyl.SetH(mpHIO->m.common.height);
        mCyl.SetR(mpHIO->m.common.width);

        setEnvTevColor();
        setRoomNo();
        reset();
        Execute();

        return cPhs_COMPLEATE_e;
    }

    return phase;
    
}

/* 80AFCD98-80AFD040 000718 02A8+00 1/1 0/0 0/0 .text            CreateHeap__11daNpcTheB_cFv */
int daNpcTheB_c::CreateHeap() {
    J3DModelData* mdlData_p = NULL;
    int unused = 0;
    int unused2 = 0;

    mdlData_p = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 0x26);
    JUT_ASSERT(383, NULL != mdlData_p);

    mpMorf = new mDoExt_McaMorfSO(mdlData_p, NULL, NULL, (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 0x1B),
                                  2, 1.0f, 0, -1, &mSound, J3DMdlFlag_DifferedDLBuffer, 0x11020284);
    if (mpMorf != NULL && mpMorf->getModel() == NULL) {
        mpMorf->stopZelAnime();
        mpMorf = NULL;
    }

    if (mpMorf == NULL) {
        return 0;
    }

    mdlData_p->getJointNodePointer(0)->setCallBack(ctrlJointCallBack);
    mdlData_p->getJointNodePointer(1)->setCallBack(ctrlJointCallBack);
    mdlData_p->getJointNodePointer(9)->setCallBack(ctrlJointCallBack);
    mdlData_p->getJointNodePointer(0xA)->setCallBack(ctrlJointCallBack);
    mdlData_p->getJointNodePointer(0xD)->setCallBack(ctrlJointCallBack);
    mpMorf->getModel()->setUserArea((uintptr_t)this);

    mpMatAnm = new daNpcF_MatAnm_c();
    if (mpMatAnm == NULL) {
        return 0;
    }

    if (!setExpressionAnm(5, false)) {
        return 0;
    }

    setMotionAnm(8, 0.0f);

    return 1;
}

/* 80AFD1FC-80AFD230 000B7C 0034+00 1/1 0/0 0/0 .text            Delete__11daNpcTheB_cFv */
int daNpcTheB_c::Delete() {
    fpc_ProcID id = fopAcM_GetID(this);
    this->~daNpcTheB_c();
    return 1;
}

/* 80AFD230-80AFD250 000BB0 0020+00 2/2 0/0 0/0 .text            Execute__11daNpcTheB_cFv */
int daNpcTheB_c::Execute() {
    return daNpcTheB_c::main();
}

/* 80AFD250-80AFD2A8 000BD0 0058+00 1/1 0/0 0/0 .text            Draw__11daNpcTheB_cFv */
int daNpcTheB_c::Draw() {
    J3DModelData* mdlData_p = mpMorf->getModel()->getModelData();
    mdlData_p->getMaterialNodePointer(1)->setMaterialAnm(mpMatAnm);
    return draw(FALSE, FALSE, mpHIO->m.common.real_shadow_size, NULL, FALSE);
}

/* 80AFD2A8-80AFD49C 000C28 01F4+00 1/1 0/0 0/0 .text            ctrlJoint__11daNpcTheB_cFP8J3DJointP8J3DModel */
int daNpcTheB_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int jntNo = i_joint->getJntNo();

    if (jntNo == 0) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(1));
        mDoMtx_stack_c::multVecZero(&mLookatPos[0]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(9));
        mDoMtx_stack_c::multVecZero(&mLookatPos[1]);
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(10));
        mDoMtx_stack_c::multVecZero(&mLookatPos[2]);

        return 1;
    }

    int lookatJoints[3] = {1, 9, 10};

    switch (jntNo) {
        case 1:
        case 9:
        case 10:
            mDoMtx_stack_c::copy(i_model->getAnmMtx(jntNo));
            setLookatMtx(jntNo, lookatJoints, mpHIO->m.common.neck_rotation_ratio);

            if (jntNo == 1) {
                mDoMtx_stack_c::XYZrotM(field_0xe06, field_0xe08, field_0xe0a);
            }

            i_model->setAnmMtx(jntNo, mDoMtx_stack_c::get());

            MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
            break;
    }

    if ((jntNo == 10 || jntNo == 0xD) && (mAnmFlags & ANM_PLAY_BCK)) {
        J3DAnmTransform* anm = mBckAnm.getBckAnm();
        mBckAnm.changeBckOnly(mpMorf->getAnm());
        mpMorf->changeAnm(anm);
    }

    return 1;
}

/* 80AFD49C-80AFD4BC 000E1C 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__11daNpcTheB_cFP10fopAc_ac_c */
int daNpcTheB_c::createHeapCallBack(fopAc_ac_c* i_this) {
    daNpcTheB_c* actor = (daNpcTheB_c*)i_this;
    return actor->CreateHeap();
}

/* 80AFD4BC-80AFD508 000E3C 004C+00 1/1 0/0 0/0 .text            ctrlJointCallBack__11daNpcTheB_cFP8J3DJointi */
int daNpcTheB_c::ctrlJointCallBack(J3DJoint* i_joint, int param_2) {
    if (param_2 == 0) {
        J3DModel* mdl_p = j3dSys.getModel();
        daNpcTheB_c* actor = (daNpcTheB_c*)mdl_p->getUserArea();
        if (actor != NULL) {
            actor->ctrlJoint(i_joint, mdl_p);
        }
    }

    return 1;
}

/* 80AFD508-80AFD5F0 000E88 00E8+00 0/0 0/0 2/2 .text            getHandPos1__11daNpcTheB_cFi */
cXyz daNpcTheB_c::getHandPos1(int param_1) {
    int jntNo = param_1 != 0 ? 8 : 5;

    Vec sp38[2] = {
        6.5f, 0.0f, 0.0f,
        6.5f, 0.0f, 0.0f
    };
    Vec* pcVar1 = param_1 != 0 ? &sp38[0] : &sp38[1];
    cXyz handPos;
    mpMorf->modelCalc();
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jntNo));
    mDoMtx_stack_c::transM(pcVar1->x, pcVar1->y, pcVar1->z);
    mDoMtx_stack_c::multVecZero(&handPos);
    return handPos;
}

/* 80AFD5F0-80AFD6D8 000F70 00E8+00 0/0 0/0 2/2 .text            getHandPos2__11daNpcTheB_cFi */
cXyz daNpcTheB_c::getHandPos2(int param_1) {
    int jntNo = param_1 != 0 ? 8 : 5;

    Vec sp38[2] = {
        10.0f, -4.0f, -4.5f,
        10.0f, -4.0f, -4.5f
    };
    Vec* pcVar1 = param_1 != 0 ? &sp38[0] : &sp38[1];
    cXyz handPos;
    mpMorf->modelCalc();
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(jntNo));
    mDoMtx_stack_c::transM(pcVar1->x, pcVar1->y, pcVar1->z);
    mDoMtx_stack_c::multVecZero(&handPos);
    return handPos;
}

/* 80AFD6D8-80AFD6F0 001058 0018+00 0/0 0/0 1/1 .text            setHintEvent__11daNpcTheB_cFlUsi */
void daNpcTheB_c::setHintEvent(s32 param_1, u16 param_2, int param_3) {
    field_0xe0c = 1;
    field_0xdf8 = param_1;
    field_0xe04 = param_2;
    field_0xdf0 = param_3;
}

/* 80AFD6F0-80AFD938 001070 0248+00 2/1 0/0 0/0 .text            main__11daNpcTheB_cFv */
BOOL daNpcTheB_c::main() {
    setParam();

    if (!doEvent()) {
        doNormalAction();
    }

    if (field_0x9ee) {
        mExpressionMorfOverride = 0.0f;
        mMotionMorfOverride = 0.0f;
        field_0x9ee = false;
    }

    if (dComIfGp_event_runCheck() == FALSE || (mOrderNewEvt && dComIfGp_getEvent().isOrderOK())) {
        mOrderEvtNo = 0;

        if (strcmp(dComIfGp_getStartStageName(), "F_SP121") == 0) {
            if (dComIfG_play_c::getLayerNo(0) == 3) {
                if (field_0xe0e == 0) {
                    mOrderEvtNo = 1;
                    dComIfGs_offSaveDunSwitch(52);
                    dComIfGs_offSaveDunSwitch(53);
                    field_0xe0e = 1;
                } else {
                    fopAc_ac_c* actor_p = getEvtAreaTagP(5, 0);
                    if (actor_p != NULL) {
                        if (fopAcM_searchPlayerDistance(actor_p) < fopAcM_GetScale_p(actor_p)->x * 5.0f) {
                            mOrderEvtNo = 2;
                        }
                    }
                }
            } else if (field_0xe0c != 0) {
                mOrderEvtNo = 4;
            } else if (mGameOver != 0) {
                mOrderEvtNo = 5;
            }
        }

        if (mOrderEvtNo != 0) {
            eventInfo.setArchiveName(l_arcName);
        }

        orderEvent(mOrderSpeakEvt, l_evtNames[mOrderEvtNo], 0xFFFF, 4, 0xFF, 1);
    }

    playExpression();
    playMotion();
    playAllAnm();
    setAttnPos();
    mOldAngle = mCurAngle;

    return TRUE;
}

/* 80AFD938-80AFDAA4 0012B8 016C+00 1/0 0/0 0/0 .text            setParam__11daNpcTheB_cFv */
void daNpcTheB_c::setParam() {
    actionFunc action = mNextAction;
    s16 talk_distance = mpHIO->m.common.talk_distance;
    s16 talk_angle = mpHIO->m.common.talk_angle;
    s16 attention_distance = mpHIO->m.common.attention_distance;
    s16 attention_angle = mpHIO->m.common.attention_angle;

    if (mNextAction != action) {
        for (int i = 1; i < 1; i++) {
            mActorMngrs[i].initialize();
        }
    }

    field_0xde0 = 0;
    field_0xde4 = 0;

    attention_info.distances[fopAc_attn_LOCK_e] = getDistTableIdx(attention_distance, attention_angle);
    attention_info.distances[fopAc_attn_TALK_e] = attention_info.distances[fopAc_attn_LOCK_e];
    attention_info.distances[fopAc_attn_SPEAK_e] = getDistTableIdx(talk_distance, talk_angle);
    attention_info.distances[fopAc_attn_CHECK_e] = 0x22;
    attention_info.flags = 0;

    if (getCoachSpeed() > 0.0f) {
        attention_info.flags = fopAc_AttnFlag_CHECK_e;
    } else {
        if (mMsgNo > 0 && !dComIfGs_isSaveDunSwitch(55)) {
            attention_info.flags = fopAc_AttnFlag_SPEAK_e | fopAc_AttnFlag_TALK_e;
        }
    }

    mAcchCir.SetWallR(mpHIO->m.common.width);
    mAcchCir.SetWallH(mpHIO->m.common.knee_length);
    gravity = mpHIO->m.common.gravity;
}

/* 80AFDAA4-80AFDB70 001424 00CC+00 1/0 0/0 0/0 .text            ctrlBtk__11daNpcTheB_cFv */
BOOL daNpcTheB_c::ctrlBtk() {
    if (mpMatAnm != NULL) {
        int res = 0;
        J3DAnmTextureSRTKey* btk = NULL;

        if (l_btkGetParamList[0].fileIdx >= 0) {
            btk = getTexSRTKeyAnmP(l_arcName, l_btkGetParamList[0].fileIdx);
        }

        if (btk == mBtkAnm.getBtkAnm()) {
            mpMatAnm->setNowOffsetX(cM_ssin(mEyeAngle.y) * 0.2f);
            mpMatAnm->setNowOffsetY(cM_ssin(mEyeAngle.x) * 0.2f);
            mpMatAnm->onEyeMoveFlag();
            return TRUE;
        }

        mpMatAnm->offEyeMoveFlag();
    }

    return FALSE;
}

/* 80AFDB70-80AFDEC0 0014F0 0350+00 1/0 0/0 0/0 .text            setAttnPos__11daNpcTheB_cFv */
void daNpcTheB_c::setAttnPos() {
    J3DModel* model = mpMorf->getModel();
    mDoMtx_stack_c::copy(model->getBaseTRMtx());
    mDoMtx_stack_c::multVecZero(&current.pos);
    mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &mCurAngle);
    shape_angle = mCurAngle;
    current.angle = shape_angle;
    field_0xe08 = shape_angle.z;
    field_0xe0a = shape_angle.x;

    if ((mAnmFlags & ANM_PLAY_BCK)) {
        mBckAnm.getBckAnm()->setFrame(mBckAnm.getFrame());
        mpMorf->modelCalc();
    } else {
        mpMorf->modelCalc();
    }

    lookat();

    cXyz sp2c(-18.0f, 6.0f, 0.0f);
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(0xA));
    mDoMtx_stack_c::multVecZero(&mHeadPos);
    mDoMtx_stack_c::multVec(&sp2c, &eyePos);
    sp2c.x = 0.0f;
    mDoMtx_stack_c::multVec(&sp2c, &sp2c);
    mHeadAngle.x = cLib_targetAngleX(&mHeadPos, &sp2c);
    mHeadAngle.y = cLib_targetAngleY(&mHeadPos, &sp2c);

    cXyz* attnPos = mLookat.getAttnPos();
    if (attnPos != NULL) {
        cXyz sp38 = *attnPos - eyePos;
        mEyeAngle.y = -(mLookatAngle[2].y + mCurAngle.y);
        mEyeAngle.y += cM_atan2s(sp38.x, sp38.z);
        mEyeAngle.x = -cM_atan2s(sp38.y, sp38.absXZ());
    } else {
        mEyeAngle.y = 0;
        mEyeAngle.x = 0;
    }

    attention_info.position.set(current.pos.x, current.pos.y + mpHIO->m.common.attention_offset, current.pos.z);
    mCyl.SetC(current.pos);

    #if DEBUG
    mCyl.SetH(mpHIO->m.common.height);
    mCyl.SetR(mpHIO->m.common.width);
    #endif

    dComIfG_Ccsp()->Set(&mCyl);
}

/* 80AFDEC0-80AFE0BC 001840 01FC+00 2/0 0/0 0/0 .text            setExpressionAnm__11daNpcTheB_cFib */
bool daNpcTheB_c::setExpressionAnm(int i_idx, bool i_modify) {
    mAnmFlags &= ~ANM_EXPRESSION_FLAGS;

    J3DAnmTransform* anm = NULL;
    int attr = J3DFrameCtrl::EMode_NONE;

    if (l_bckGetParamList[i_idx].fileIdx >= 0) {
        anm = getTrnsfrmKeyAnmP(l_arcName, l_bckGetParamList[i_idx].fileIdx);
        attr = l_bckGetParamList[i_idx].arcIdx;
    }

    bool res = false;
    
    switch (i_idx) {
        case 0:
            res = setExpressionBtp(0);
            break;

        case 1:
            res = setExpressionBtp(0);
            break;

        case 2:
            res = setExpressionBtp(0);
            break;

        case 3:
            res = setExpressionBtp(0);
            break;

        case 4:
            res = setExpressionBtp(0);
            break;

        case 5:
            res = setExpressionBtp(0);
            break;

        case 6:
            res = setExpressionBtp(0);
            break;

        case 7:
            res = setExpressionBtp(0);
            break;

        default:
            anm = NULL;
            break;
    }

    if (!res) {
        return false;
    }

    if (anm == NULL) {
        return true;
    }

    if (setBckAnm(anm, 1.0f, attr, 0, -1, i_modify)) {
        mAnmFlags |= ANM_PAUSE_BCK | ANM_PLAY_BCK;
        mExpressionLoops = 0;
        OS_REPORT("%s: 表情Bckアニメーションを登録しました！\n", __FILE__);
        return true;
    }

    OS_REPORT("%s: 表情Bckアニメーションの登録に失敗しました！\n", __FILE__);
    return false;
}

/* 80AFE0BC-80AFE1BC 001A3C 0100+00 1/0 0/0 0/0 .text            setExpressionBtp__11daNpcTheB_cFi */
bool daNpcTheB_c::setExpressionBtp(int i_idx) {
    J3DAnmTexPattern* btp = NULL;
    int attr = J3DFrameCtrl::EMode_NONE;

    mAnmFlags &= ~(ANM_PAUSE_BTP | ANM_PLAY_BTP | ANM_FLAG_800);

    if (l_btpGetParamList[i_idx].fileIdx >= 0) {
        btp = getTexPtrnAnmP(l_arcName, l_btpGetParamList[i_idx].fileIdx);
        attr = l_btpGetParamList[i_idx].arcIdx;
    }

    switch (i_idx) {
        case 0:
            attr = J3DFrameCtrl::EMode_LOOP;
            break;

        default:
            btp = NULL;
            break;
    }

    if (btp == NULL) {
        return true;
    }

    if (setBtpAnm(btp, mpMorf->getModel()->getModelData(), 1.0f, attr)) {
        mAnmFlags |= ANM_PAUSE_BTP | ANM_PLAY_BTP;
        if (i_idx == 0) {
            mAnmFlags |= ANM_FLAG_800;
        }

        return true;
    }

    OS_REPORT("%s: 表情Btpアニメーションの登録に失敗しました！\n", __FILE__);

    return false;
}

/* 80AFE1BC-80AFE398 001B3C 01DC+00 1/0 0/0 0/0 .text            setMotionAnm__11daNpcTheB_cFif */
void daNpcTheB_c::setMotionAnm(int i_idx, f32 i_morf) {
    J3DAnmTransformKey* anm = NULL;
    int attr = J3DFrameCtrl::EMode_LOOP;

    mAnmFlags &= ~ANM_MOTION_FLAGS;

    if (l_bckGetParamList[i_idx].fileIdx >= 0) {
        anm = getTrnsfrmKeyAnmP(l_arcName, l_bckGetParamList[i_idx].fileIdx);
        attr = l_bckGetParamList[i_idx].arcIdx;
    }

    J3DAnmTextureSRTKey* btk = NULL;
    int btkAttr = J3DFrameCtrl::EMode_LOOP;

    switch (i_idx) {
        case 8:
        case 0xA:
        case 0xB:
            break;
            
        case 9:
            setExpressionAnm(5, true);
            break;
        
        case 0xC:
            setExpressionAnm(7, true);
            break;

        case 0xD:
            setExpressionAnm(4, true);
            break;

        default:
            anm = NULL;
            btk = NULL;
            break;
    }

    if (l_btkGetParamList[0].fileIdx >= 0) {
        btk = getTexSRTKeyAnmP(l_arcName, l_btkGetParamList[0].fileIdx);
        btkAttr = l_btkGetParamList[0].arcIdx;
    }

    if (btk != NULL) {
        if (setBtkAnm(btk, mpMorf->getModel()->getModelData(), 1.0f, btkAttr)) {
            mAnmFlags |= ANM_PLAY_BTK | ANM_PAUSE_BTK;
        }
    }

    if (anm != NULL && setMcaMorfAnm(anm, 1.0f, i_morf, attr, 0, -1)) {
        mAnmFlags |= ANM_PLAY_MORF | ANM_PAUSE_MORF;
        mMotionLoops = 0;
    }
}

/* 80AFE398-80AFE3A0 001D18 0008+00 1/0 0/0 0/0 .text            drawDbgInfo__11daNpcTheB_cFv */
BOOL daNpcTheB_c::drawDbgInfo() {
    return FALSE;
}

/* ############################################################################################## */
/* 80B00FA0-80B00FA0 000234 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B01016 = "F_SP123";
#pragma pop

/* 80AFE3A0-80AFE574 001D20 01D4+00 1/1 0/0 0/0 .text            reset__11daNpcTheB_cFv */
void daNpcTheB_c::reset() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B00E5C-80B00E68 0000F0 000C+00 0/1 0/0 0/0 .rodata          @4791 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4791[12] = {
    0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B00E5C, &lit_4791);
#pragma pop

/* 80B00E68-80B00E6C 0000FC 0004+00 0/1 0/0 0/0 .rodata          @4792 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4792[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B00E68, &lit_4792);
#pragma pop

/* 80B00E6C-80B00E78 000100 000C+00 0/1 0/0 0/0 .rodata          @4793 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4793[12] = {
    0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B00E6C, &lit_4793);
#pragma pop

/* 80B00E78-80B00E84 00010C 000C+00 0/1 0/0 0/0 .rodata          @4794 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4794[12] = {
    0x00, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B00E78, &lit_4794);
#pragma pop

/* 80B00E84-80B00E8C 000118 0008+00 0/1 0/0 0/0 .rodata          @4795 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4795[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B00E84, &lit_4795);
#pragma pop

/* 80B00E8C-80B00E98 000120 000C+00 0/1 0/0 0/0 .rodata          @4796 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4796[12] = {
    0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B00E8C, &lit_4796);
#pragma pop

/* 80B00E98-80B00EA4 00012C 000C+00 0/1 0/0 0/0 .rodata          @4797 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4797[12] = {
    0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B00E98, &lit_4797);
#pragma pop

/* 80B00EA4-80B00EAC 000138 0008+00 0/1 0/0 0/0 .rodata          @4798 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4798[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B00EA4, &lit_4798);
#pragma pop

/* 80B00EAC-80B00EB8 000140 000C+00 0/1 0/0 0/0 .rodata          @4799 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4799[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B00EAC, &lit_4799);
#pragma pop

/* 80B00EB8-80B00EBC 00014C 0004+00 0/1 0/0 0/0 .rodata          @4800 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4800[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B00EB8, &lit_4800);
#pragma pop

/* 80B00EBC-80B00ECC 000150 0010+00 0/1 0/0 0/0 .rodata          @4801 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4801[16] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B00EBC, &lit_4801);
#pragma pop

/* 80AFE574-80AFE704 001EF4 0190+00 1/1 0/0 0/0 .text            playExpression__11daNpcTheB_cFv */
void daNpcTheB_c::playExpression() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B00ECC-80B00ED8 000160 000C+00 0/1 0/0 0/0 .rodata          @4814 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4814[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B00ECC, &lit_4814);
#pragma pop

/* 80B00ED8-80B00EDC 00016C 0004+00 0/1 0/0 0/0 .rodata          @4815 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4815[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B00ED8, &lit_4815);
#pragma pop

/* 80B00EDC-80B00EE8 000170 000C+00 0/1 0/0 0/0 .rodata          @4816 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4816[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B00EDC, &lit_4816);
#pragma pop

/* 80B00EE8-80B00EEC 00017C 0004+00 0/1 0/0 0/0 .rodata          @4817 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4817[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B00EE8, &lit_4817);
#pragma pop

/* 80B00EEC-80B00EF8 000180 000C+00 0/1 0/0 0/0 .rodata          @4818 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4818[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B00EEC, &lit_4818);
#pragma pop

/* 80B00EF8-80B00EFC 00018C 0004+00 0/1 0/0 0/0 .rodata          @4819 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4819[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80B00EF8, &lit_4819);
#pragma pop

/* 80B00EFC-80B00F08 000190 000C+00 0/1 0/0 0/0 .rodata          @4820 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4820[12] = {
    0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B00EFC, &lit_4820);
#pragma pop

/* 80B00F08-80B00F14 00019C 000C+00 0/1 0/0 0/0 .rodata          @4821 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4821[12] = {
    0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B00F08, &lit_4821);
#pragma pop

/* 80B00F14-80B00F1C 0001A8 0008+00 0/1 0/0 0/0 .rodata          @4822 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4822[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B00F14, &lit_4822);
#pragma pop

/* 80B00F1C-80B00F28 0001B0 000C+00 0/1 0/0 0/0 .rodata          @4823 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4823[12] = {
    0x00, 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B00F1C, &lit_4823);
#pragma pop

/* 80B00F28-80B00F34 0001BC 000C+00 0/1 0/0 0/0 .rodata          @4824 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4824[12] = {
    0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B00F28, &lit_4824);
#pragma pop

/* 80B00F34-80B00F3C 0001C8 0008+00 0/1 0/0 0/0 .rodata          @4825 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4825[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B00F34, &lit_4825);
#pragma pop

/* 80B00F3C-80B00F48 0001D0 000C+00 0/1 0/0 0/0 .rodata          @4826 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4826[12] = {
    0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
};
COMPILER_STRIP_GATE(0x80B00F3C, &lit_4826);
#pragma pop

/* 80B00F48-80B00F54 0001DC 000C+00 0/1 0/0 0/0 .rodata          @4827 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4827[12] = {
    0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B00F48, &lit_4827);
#pragma pop

/* 80B00F54-80B00F5C 0001E8 0008+00 0/1 0/0 0/0 .rodata          @4828 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4828[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B00F54, &lit_4828);
#pragma pop

/* 80AFE704-80AFE920 002084 021C+00 1/1 0/0 0/0 .text            playMotion__11daNpcTheB_cFv */
void daNpcTheB_c::playMotion() {
    // NONMATCHING
}

/* 80AFE920-80AFEA14 0022A0 00F4+00 1/1 0/0 0/0 .text            doNormalAction__11daNpcTheB_cFv */
void daNpcTheB_c::doNormalAction() {
    // NONMATCHING
}

/* 80AFEA14-80AFED24 002394 0310+00 1/1 0/0 0/0 .text            doEvent__11daNpcTheB_cFv */
BOOL daNpcTheB_c::doEvent() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B00F5C-80B00F74 0001F0 0018+00 0/0 0/0 0/0 .rodata          @4829 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4829[24] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B00F5C, &lit_4829);
#pragma pop

/* 80B00F74-80B00F80 000208 000C+00 0/1 0/0 0/0 .rodata          @4932 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4932[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80B00F74, &lit_4932);
#pragma pop

/* 80B00F80-80B00F84 000214 0004+00 0/1 0/0 0/0 .rodata          @4972 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4972 = -80.0f;
COMPILER_STRIP_GATE(0x80B00F80, &lit_4972);
#pragma pop

/* 80B00F84-80B00F88 000218 0004+00 0/1 0/0 0/0 .rodata          @4973 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4973 = 80.0f;
COMPILER_STRIP_GATE(0x80B00F84, &lit_4973);
#pragma pop

/* 80AFED24-80AFEECC 0026A4 01A8+00 1/1 0/0 0/0 .text            lookat__11daNpcTheB_cFv */
void daNpcTheB_c::lookat() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B00F88-80B00F8C 00021C 0004+00 4/5 0/0 0/0 .rodata          @5126 */
SECTION_RODATA static f32 const lit_5126 = -1.0f;
COMPILER_STRIP_GATE(0x80B00F88, &lit_5126);

/* 80B00F8C-80B00F90 000220 0004+00 0/1 0/0 0/0 .rodata          @5127 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5127 = 3.0f;
COMPILER_STRIP_GATE(0x80B00F8C, &lit_5127);
#pragma pop

/* 80B00F90-80B00F94 000224 0004+00 0/2 0/0 0/0 .rodata          @5128 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5128 = 20.0f;
COMPILER_STRIP_GATE(0x80B00F90, &lit_5128);
#pragma pop

/* 80AFEECC-80AFF45C 00284C 0590+00 1/0 0/0 0/0 .text            wait__11daNpcTheB_cFPv */
void daNpcTheB_c::wait(void* param_0) {
    // NONMATCHING
}

/* 80AFF45C-80AFF4A0 002DDC 0044+00 1/0 0/0 0/0 .text            setMotion__11daNpcTheB_cFifi */
void daNpcTheB_c::setMotion(int param_0, f32 param_1, int param_2) {
    // NONMATCHING
}

/* 80AFF4A0-80AFF4CC 002E20 002C+00 1/0 0/0 0/0 .text            setExpression__11daNpcTheB_cFif */
void daNpcTheB_c::setExpression(int param_0, f32 param_1) {
    // NONMATCHING
}

/* 80AFF4CC-80AFF6AC 002E4C 01E0+00 2/0 0/0 0/0 .text            talk__11daNpcTheB_cFPv */
void daNpcTheB_c::talk(void* param_0) {
    // NONMATCHING
}

/* 80AFF6AC-80AFF888 00302C 01DC+00 1/0 0/0 0/0 .text EvCut_PersonalCombatIntro__11daNpcTheB_cFi
 */
int daNpcTheB_c::EvCut_PersonalCombatIntro(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B00FA0-80B00FA0 000234 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80B0101E = "pos";
SECTION_DEAD static char const* const stringBase_80B01022 = "angle";
#pragma pop

/* 80AFF888-80AFFBB4 003208 032C+00 1/0 0/0 0/0 .text EvCut_PersonalCombatRevenge__11daNpcTheB_cFi
 */
int daNpcTheB_c::EvCut_PersonalCombatRevenge(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B00F94-80B00F98 000228 0004+00 0/1 0/0 0/0 .rodata          @5332 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5332 = -230.0f;
COMPILER_STRIP_GATE(0x80B00F94, &lit_5332);
#pragma pop

/* 80B00F98-80B00F9C 00022C 0004+00 0/1 0/0 0/0 .rodata          @5333 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5333 = -1000.0f;
COMPILER_STRIP_GATE(0x80B00F98, &lit_5333);
#pragma pop

/* 80AFFBB4-80AFFEF4 003534 0340+00 2/1 0/0 0/0 .text EvCut_PersonalCombatAfter__11daNpcTheB_cFv
 */
int daNpcTheB_c::EvCut_PersonalCombatAfter() {
    // NONMATCHING
}

/* 80AFFEF4-80AFFFE0 003874 00EC+00 1/0 0/0 0/0 .text EvCut_AnnulationFieldRace__11daNpcTheB_cFi
 */
int daNpcTheB_c::EvCut_AnnulationFieldRace(int param_0) {
    // NONMATCHING
}

/* 80AFFFE0-80B00204 003960 0224+00 1/0 0/0 0/0 .text            EvCut_TheBHint__11daNpcTheB_cFi */
int daNpcTheB_c::EvCut_TheBHint(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B00F9C-80B00FA0 000230 0004+00 1/1 0/0 0/0 .rodata          @5423 */
SECTION_RODATA static f32 const lit_5423 = -30000.0f;
COMPILER_STRIP_GATE(0x80B00F9C, &lit_5423);

/* 80B00204-80B00374 003B84 0170+00 1/0 0/0 0/0 .text EvCut_CoachGuardGameOver__11daNpcTheB_cFi */
int daNpcTheB_c::EvCut_CoachGuardGameOver(int param_0) {
    // NONMATCHING
}

/* 80B00374-80B00394 003CF4 0020+00 1/0 0/0 0/0 .text            daNpcTheB_Create__FPv */
static void daNpcTheB_Create(void* param_0) {
    // NONMATCHING
}

/* 80B00394-80B003B4 003D14 0020+00 1/0 0/0 0/0 .text            daNpcTheB_Delete__FPv */
static void daNpcTheB_Delete(void* param_0) {
    // NONMATCHING
}

/* 80B003B4-80B003D4 003D34 0020+00 1/0 0/0 0/0 .text            daNpcTheB_Execute__FPv */
static void daNpcTheB_Execute(void* param_0) {
    // NONMATCHING
}

/* 80B003D4-80B003F4 003D54 0020+00 1/0 0/0 0/0 .text            daNpcTheB_Draw__FPv */
static void daNpcTheB_Draw(void* param_0) {
    // NONMATCHING
}

/* 80B003F4-80B003FC 003D74 0008+00 1/0 0/0 0/0 .text            daNpcTheB_IsDelete__FPv */
static bool daNpcTheB_IsDelete(void* param_0) {
    return true;
}

/* 80B003FC-80B0042C 003D7C 0030+00 1/0 0/0 0/0 .text            calc__11J3DTexNoAnmCFPUs */
// void J3DTexNoAnm::calc(u16* param_0) const {
extern "C" void calc__11J3DTexNoAnmCFPUs() {
    // NONMATCHING
}

/* 80B0042C-80B00474 003DAC 0048+00 5/4 0/0 0/0 .text            __dt__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::~daNpcF_ActorMngr_c() {
extern "C" void __dt__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B00474-80B004B0 003DF4 003C+00 2/2 0/0 0/0 .text            __ct__18daNpcF_ActorMngr_cFv */
// daNpcF_ActorMngr_c::daNpcF_ActorMngr_c() {
extern "C" void __ct__18daNpcF_ActorMngr_cFv() {
    // NONMATCHING
}

/* 80B004B0-80B00580 003E30 00D0+00 1/0 0/0 0/0 .text            __dt__15daNpcF_Lookat_cFv */
// daNpcF_Lookat_c::~daNpcF_Lookat_c() {
extern "C" void __dt__15daNpcF_Lookat_cFv() {
    // NONMATCHING
}

/* 80B00580-80B005BC 003F00 003C+00 5/5 0/0 0/0 .text            __dt__5csXyzFv */
// csXyz::~csXyz() {
extern "C" void __dt__5csXyzFv() {
    // NONMATCHING
}

/* 80B005BC-80B005C0 003F3C 0004+00 2/2 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 80B005C0-80B005FC 003F40 003C+00 5/5 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 80B005FC-80B00600 003F7C 0004+00 2/2 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80B00600-80B0084C 003F80 024C+00 1/1 0/0 0/0 .text            __dt__8daNpcF_cFv */
// daNpcF_c::~daNpcF_c() {
extern "C" void __dt__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80B0084C-80B00A3C 0041CC 01F0+00 1/1 0/0 0/0 .text            __ct__8daNpcF_cFv */
// daNpcF_c::daNpcF_c() {
extern "C" void __ct__8daNpcF_cFv() {
    // NONMATCHING
}

/* 80B00A3C-80B00AAC 0043BC 0070+00 1/0 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
// dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" void __dt__12dBgS_AcchCirFv() {
    // NONMATCHING
}

/* 80B00AAC-80B00B08 00442C 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80B00B08-80B00B78 004488 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80B00B78-80B00BC0 0044F8 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80B00BC0-80B00BC4 004540 0004+00 1/0 0/0 0/0 .text            adjustShapeAngle__8daNpcF_cFv */
// void daNpcF_c::adjustShapeAngle() {
extern "C" void adjustShapeAngle__8daNpcF_cFv() {
    /* empty function */
}

/* 80B00BC4-80B00BC8 004544 0004+00 1/0 0/0 0/0 .text            setCollisions__8daNpcF_cFv */
// void daNpcF_c::setCollisions() {
extern "C" void setCollisions__8daNpcF_cFv() {
    /* empty function */
}

/* 80B00BC8-80B00BCC 004548 0004+00 1/0 0/0 0/0 .text            drawOtherMdls__8daNpcF_cFv */
// void daNpcF_c::drawOtherMdls() {
extern "C" void drawOtherMdls__8daNpcF_cFv() {
    /* empty function */
}

/* 80B00BCC-80B00C14 00454C 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80B012FC-80B01308 0002D4 000C+00 2/2 0/0 0/0 .data            __vt__17daNpcTheB_Param_c */
SECTION_DATA extern void* __vt__17daNpcTheB_Param_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17daNpcTheB_Param_cFv,
};

/* 80B00C14-80B00D00 004594 00EC+00 0/0 1/0 0/0 .text            __sinit_d_a_npc_theB_cpp */
void __sinit_d_a_npc_theB_cpp() {
    // NONMATCHING
}

#pragma push
#pragma force_active on
REGISTER_CTORS(0x80B00C14, __sinit_d_a_npc_theB_cpp);
#pragma pop

/* 80B00D48-80B00D50 0046C8 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80B00D48() {
    // NONMATCHING
}

/* 80B00D50-80B00D58 0046D0 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80B00D50() {
    // NONMATCHING
}

/* 80B00FA0-80B00FA0 000234 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 80B011D4-80B011F4 -00001 0020+00 1/0 0/0 0/0 .data            daNpcTheB_MethodTable */
static actor_method_class daNpcTheB_MethodTable = {
    (process_method_func)daNpcTheB_Create,
    (process_method_func)daNpcTheB_Delete,
    (process_method_func)daNpcTheB_Execute,
    (process_method_func)daNpcTheB_IsDelete,
    (process_method_func)daNpcTheB_Draw,
};

/* 80B011F4-80B01224 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_THEB */
extern actor_process_profile_definition g_profile_NPC_THEB = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_NPC_THEB,          // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daNpcTheB_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  331,                    // mPriority
  &daNpcTheB_MethodTable, // sub_method
  0x00040108,             // mStatus
  fopAc_NPC_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
